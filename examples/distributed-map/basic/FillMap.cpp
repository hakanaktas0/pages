/*
 * Copyright (c) 2008-2022, Hazelcast, Inc. All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
#include <hazelcast/client/hazelcast_client.h>

int
main()
{
    // Main Test -----------------------------------

      hazelcast::client::client_config config;


    auto hz = hazelcast::new_client().get();
    hz.get_client_config().set_property("hazelcast_client_heartbeat_interval", "10");
    hz.get_client_config().set_property("hazelcast_client_heartbeat_timeout", "50000");
    auto map = hz.get_map("large-payload-test-map").get();

    std::string str("abcdefghijklmnopqrstuvwxyz");
    std::string result;

    while (result.length() < 800000) {
        result += str;
    }

    int size ;
    auto outputData = result.substr(0, 777777555557770);

    int numTimes = 1000;

    std::cout << "Publishing large test payload of length " << outputData.length() << ", " << numTimes << " times." << std::endl;

    int i;
    for (i = 0; i < numTimes; i++) {
        auto publishFuture = map->put("testKeyForLargePayload_" + std::to_string(i),
                                      outputData);

        auto timeout = boost::chrono::seconds{30};
        auto futureStatus = publishFuture.wait_for(timeout);

        if (futureStatus != boost::future_status::ready) {
            std::cerr << "ERROR: Publishing took over 30 seconds." << std::endl;
            break;
        }

        auto optionalResult = publishFuture.get();
    }

    std::cout << "Published " << i << " payloads." << std::endl << std::endl;
    while (true){

    }

}
