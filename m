Return-Path: <devicetree+bounces-6506-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A6C47BB9B2
	for <lists+devicetree@lfdr.de>; Fri,  6 Oct 2023 15:47:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B3E191C209B1
	for <lists+devicetree@lfdr.de>; Fri,  6 Oct 2023 13:47:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9CB312374D;
	Fri,  6 Oct 2023 13:47:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 464521F959
	for <devicetree@vger.kernel.org>; Fri,  6 Oct 2023 13:47:44 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by lindbergh.monkeyblade.net (Postfix) with ESMTP id 673751BCC;
	Fri,  6 Oct 2023 06:47:32 -0700 (PDT)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 178B711FB;
	Fri,  6 Oct 2023 06:48:11 -0700 (PDT)
Received: from [10.57.94.224] (unknown [10.57.94.224])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id EDDAD3F641;
	Fri,  6 Oct 2023 06:47:29 -0700 (PDT)
Message-ID: <908fc8d6-10d2-51f9-fd70-171522c7e67d@arm.com>
Date: Fri, 6 Oct 2023 14:48:12 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH v1] thermal: Remove Amit Kucheria from MAINTAINERS
Content-Language: en-US
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, Linux PM
 <linux-pm@vger.kernel.org>, Daniel Lezcano <daniel.lezcano@linaro.org>
Cc: "Rafael J. Wysocki" <rafael@kernel.org>,
 Srinivas Pandruvada <srinivas.pandruvada@linux.intel.com>,
 Zhang Rui <rui.zhang@intel.com>, LKML <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 devicetree@vger.kernel.org, Amit Kucheria <amitk@kernel.org>
References: <5716404.DvuYhMxLoT@kreacher>
 <f0daa859-f9eb-4631-b2f9-6ee3ce5b691f@linaro.org>
 <9833cebf-e951-47c6-97b7-458ae1a5b747@linaro.org>
From: Lukasz Luba <lukasz.luba@arm.com>
In-Reply-To: <9833cebf-e951-47c6-97b7-458ae1a5b747@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.7 required=5.0 tests=BAYES_00,NICE_REPLY_A,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_NONE autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net



On 10/6/23 14:43, Krzysztof Kozlowski wrote:
> On 06/10/2023 15:43, Krzysztof Kozlowski wrote:
>> On 06/10/2023 13:21, Rafael J. Wysocki wrote:
>>> From: Rafael J. Wysocki <rafael.j.wysocki@intel.com>
>>>
>>> Amit Kucheria has not been participating in kernel development in any
>>> way or form for quite some time, so it is not useful to list him as a
>>> designated reviewer for the thermal subsystem or as the maintainer of
>>> the thermal zone device bindings.
>>>
>>> Remove him from those two places accordingly.
>>>
>>> Signed-off-by: Rafael J. Wysocki <rafael.j.wysocki@intel.com>
>>> ---
>>>   Documentation/devicetree/bindings/thermal/thermal-zones.yaml |    3 ---
>>
>> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> 
> and unAcked. We need a maintainer for the bindings. Someone else from
> thermal?
> 

I'm going to handle the review in thermal subsystem. Although,
I forgot about this 'binding' thing...

Daniel, what do you think?

