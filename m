Return-Path: <devicetree+bounces-7559-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 474DF7C4AAC
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 08:33:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 034B02820E1
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 06:33:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5A071D308;
	Wed, 11 Oct 2023 06:33:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=linumiz.com header.i=@linumiz.com header.b="Y5ySBPMv"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B2C51179BC
	for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 06:33:06 +0000 (UTC)
Received: from omta38.uswest2.a.cloudfilter.net (omta38.uswest2.a.cloudfilter.net [35.89.44.37])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 09093B6
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 23:33:02 -0700 (PDT)
Received: from eig-obgw-6008a.ext.cloudfilter.net ([10.0.30.227])
	by cmsmtp with ESMTP
	id qHWBqLMAtytxcqSmEqI5C0; Wed, 11 Oct 2023 06:33:02 +0000
Received: from md-in-79.webhostbox.net ([43.225.55.182])
	by cmsmtp with ESMTPS
	id qSmBqilBeCZgIqSmCqUY24; Wed, 11 Oct 2023 06:33:01 +0000
X-Authority-Analysis: v=2.4 cv=fLMqYLWe c=1 sm=1 tr=0 ts=6526419d
 a=LfuyaZh/8e9VOkaVZk0aRw==:117 a=J9R/PiKqv2o3jGxbVGXx4w==:17
 a=OWjo9vPv0XrRhIrVQ50Ab3nP57M=:19 a=dLZJa+xiwSxG16/P+YVxDGlgEgI=:19
 a=IkcTkHD0fZMA:10 a=bhdUkHdE2iEA:10 a=oz0wMknONp8A:10
 a=su0M68nG-EwQ1gf0PqMA:9 a=QEXdDO2ut3YA:10
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=linumiz.com
	; s=default; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
	References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=Al5/o99yN8BkQN7R5iE3F5t0YaiCundyUcTbHLg2cZI=; b=Y5ySBPMvxoIxB3HYjHjkxdqpU/
	RbZiUYvnw4AiKve4rXBBiOKP/WhwJdtQBd0CDoJ727igFZBb5pbDCwiokdE0sMaMn/tl7PMn2vjFM
	d/NfDRf88iVX8ygVT/7Ezcp6U6hMPM/pzgnMZ6lm4FsCwEAjHglWhvDY7r/6Nz7xe7mjbyHodtZmo
	LRvRX5+UWM8EyzcSt4b4c3dWKKOO3b789M0HsqMWs+yXaTQtUVUO2ycJ56OltHF4UQoC+v+kvs4p/
	9fFnF1ErGuaGDEj1TAb+Kgo+czP5RhwbkYz41EBQghbJvbw7NZDTdOVyN3jkN0F4D/j4QhwO1NGjT
	gwO2C3KQ==;
Received: from [103.186.120.251] (port=40770 helo=[192.168.1.103])
	by md-in-79.webhostbox.net with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96.1)
	(envelope-from <saravanan@linumiz.com>)
	id 1qqSm6-002H4p-39;
	Wed, 11 Oct 2023 12:02:55 +0530
Message-ID: <7a964442-80ca-f69a-f1ad-9296cc8f6839@linumiz.com>
Date: Wed, 11 Oct 2023 12:02:44 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH v3 2/3] regulator: dt-bindings: Add mps,mpq2286
 power-management IC
To: Guenter Roeck <linux@roeck-us.net>,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: sravanhome@gmail.com, lgirdwood@gmail.com, broonie@kernel.org,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 jdelvare@suse.com, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 linux-hwmon@vger.kernel.org
References: <20231007165803.239718-1-saravanan@linumiz.com>
 <20231007165803.239718-3-saravanan@linumiz.com>
 <84f4692c-5fee-4d00-b537-570f90191d6e@roeck-us.net>
 <1ce9d59e-0938-4448-8279-b8c6e522b26a@linaro.org>
 <154920ff-ad72-43fe-9631-e65ed918a9bb@roeck-us.net>
Content-Language: en-US
From: Saravanan Sekar <saravanan@linumiz.com>
In-Reply-To: <154920ff-ad72-43fe-9631-e65ed918a9bb@roeck-us.net>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - md-in-79.webhostbox.net
X-AntiAbuse: Original Domain - vger.kernel.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - linumiz.com
X-BWhitelist: no
X-Source-IP: 103.186.120.251
X-Source-L: No
X-Exim-ID: 1qqSm6-002H4p-39
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: ([192.168.1.103]) [103.186.120.251]:40770
X-Source-Auth: saravanan@linumiz.com
X-Email-Count: 3
X-Org: HG=dishared_whb_net_legacy;ORG=directi;
X-Source-Cap: bGludW1jbWM7aG9zdGdhdG9yO21kLWluLTc5LndlYmhvc3Rib3gubmV0
X-Local-Domain: yes
X-CMAE-Envelope: MS4xfDgymyCWT/rXx9HQDAyJIX6ZCirz8WX72sMJ+dUn63pyVRdGQ2Q/7wQQg2t2kZBYgIenDQcXj5C3YbIj3PFlBW136QfAyWW3audRHAISUrxUMxlSLXS/
 +C0jX+PyPEoo0iOOLW9367O8ehJqP4Xfyyt0XVaKF6OCPui6xU9zbipIDKO5IsDdoy1fU561G9apk3xBATtE2hW5fvLSotk6G3I=
X-Spam-Status: No, score=-5.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
	RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 08/10/23 19:22, Guenter Roeck wrote:
> On Sun, Oct 08, 2023 at 12:40:29PM +0200, Krzysztof Kozlowski wrote:
>> On 08/10/2023 03:20, Guenter Roeck wrote:
>>> On Sat, Oct 07, 2023 at 10:28:02PM +0530, Saravanan Sekar wrote:
>>>> Document mpq2286 power-management IC. Instead of simple 'buck', 'buck0' is
>>>> used to keep the driver common which handles multiple regulators.
>>>
>>> Sorry for the maybe dumb question, but where can I find the driver
>>> depencency on buck naming ?
>>
>> I guess it is because:
>> PMBUS_REGULATOR_STEP("buck", 0, MPQ7932_N_VOLTAGES,
>> creates regulator name as buck+id (so buck0).
>>
> 
> Ah, good point. Problem here is that this is already kind of common,
> even though the use of "buckX" isn't. Look for "vout0", or
> 'PMBUS_REGULATOR("vout", 0)'. Apparently so far no one took offence
> if a regulator was named "vout0" even if "vout1" didn't exist.
> 
> I don't really have a good solution right now, but I guess we'll need
> a second set of macros for the single-regulator case, or maybe generate
> struct regulator_desc arrays using a function. I'll have to explore
> options.
> 
> Please let me know how you want the subsystem to handle existing
> single-channel regulators with numbered regulator name.
> 
> Saravanan - for this driver please just declare a local driver-specific
> variant of the PMBUS_REGULATOR_STEP() macro which doesn't use indexing,
> use it to initialise a second regulators_desc array, and use that second
> array for mpq2286. That is a bit messy, but acceptable for now until
> there is a more generic solution (unless of course you have an idea for
> one and want to implement it, but that is not a requirement).
Hello Guenter,

Thanks for your proposal as intermediate fix local declaration of macro, 
could you please suggest whether below changes is acceptable as workaround?

+++ b/drivers/hwmon/pmbus/mpq7932.c
@@ -118,6 +118,12 @@ static int mpq7932_probe(struct i2c_client *client)
  #if IS_ENABLED(CONFIG_SENSORS_MPQ7932_REGULATOR)
         info->num_regulators = info->pages;
         info->reg_desc = mpq7932_regulators_desc;
+
+       if (info->num_regulators == 1) {
+               mpq7932_regulators_desc->name = "buck";
+               mpq7932_regulators_desc->of_match = of_match_ptr("buck");
+       }
+


> 
> Thanks,
> Guenter

Thanks,
Saravanan

