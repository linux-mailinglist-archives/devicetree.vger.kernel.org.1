Return-Path: <devicetree+bounces-3472-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 62E877AEF3D
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 17:14:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 0868428115F
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 15:14:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AD37930CE1;
	Tue, 26 Sep 2023 15:14:27 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 395A330CE0
	for <devicetree@vger.kernel.org>; Tue, 26 Sep 2023 15:14:23 +0000 (UTC)
Received: from omta38.uswest2.a.cloudfilter.net (omta38.uswest2.a.cloudfilter.net [35.89.44.37])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 267AA11F
	for <devicetree@vger.kernel.org>; Tue, 26 Sep 2023 08:14:22 -0700 (PDT)
Received: from eig-obgw-5001a.ext.cloudfilter.net ([10.0.29.139])
	by cmsmtp with ESMTP
	id klwnqR4BNQFHRl9lVqIlOU; Tue, 26 Sep 2023 15:14:21 +0000
Received: from md-in-79.webhostbox.net ([43.225.55.182])
	by cmsmtp with ESMTPS
	id l9lSqowloQeRXl9lTqEycG; Tue, 26 Sep 2023 15:14:20 +0000
X-Authority-Analysis: v=2.4 cv=S9rKfagP c=1 sm=1 tr=0 ts=6512f54c
 a=LfuyaZh/8e9VOkaVZk0aRw==:117 a=CKMxHAookNUaJbGn3r6bzg==:17
 a=OWjo9vPv0XrRhIrVQ50Ab3nP57M=:19 a=dLZJa+xiwSxG16/P+YVxDGlgEgI=:19
 a=IkcTkHD0fZMA:10 a=zNV7Rl7Rt7sA:10 a=oz0wMknONp8A:10 a=vU9dKmh3AAAA:8
 a=2s8rLCK1qyt2EROP6YQA:9 a=QEXdDO2ut3YA:10 a=rsP06fVo5MYu2ilr0aT5:22
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=linumiz.com
	; s=default; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
	References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=tFehZFUz2mgeuaZcpcNi7NzcZi1PkHLpBmLwRVsFYbI=; b=eHisMWLMLzfIReZUFGxm1ohNEK
	uyo3pMfKDA98Oge0kHc8Tjn5Mw5C1od5yOK2DU7hH9fhjLWHmgjpoYCLSnnfrcZZ+PQGkU/TpwzbF
	kviXHhIOOY3z0xN8Fja9h80hz/Fzi+jpnNWSDFfm5vJb+bD+WFLneUGFKK/dEL3tkS1CI3GVvcnY6
	0jCHsORlX6b2t72zRQrmG1f6Rrky+vP45ySrpcxC/C50DkuN2AydC0sHVHg212mfmUL0i5uM3/BMm
	QpMcmgBz33pO9EQQmRK08+LIZRIRYAV1LVHQr6YLl3Pvk2mK/3/mHnxpSJGjpzaiiS17ruTtrO0cM
	4OanJQnA==;
Received: from [103.163.95.214] (port=36664 helo=[192.168.1.101])
	by md-in-79.webhostbox.net with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <saravanan@linumiz.com>)
	id 1ql9lR-004OcK-2J;
	Tue, 26 Sep 2023 20:44:17 +0530
Message-ID: <45bc18bf-eb2c-4dab-d610-6ce787694fe7@linumiz.com>
Date: Tue, 26 Sep 2023 20:44:15 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH 3/3] hwmon: (pmbus/mpq2286) Add a support for mpq2286
 Power Management IC
To: Guenter Roeck <linux@roeck-us.net>, sravanhome@gmail.com,
 lgirdwood@gmail.com, broonie@kernel.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, jdelvare@suse.com
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 linux-hwmon@vger.kernel.org
References: <20230911034150.181880-1-saravanan@linumiz.com>
 <20230911034150.181880-4-saravanan@linumiz.com>
 <5acb9307-2be1-dcd2-fdb7-b2842c7ff24d@roeck-us.net>
Content-Language: en-US
From: Saravanan Sekar <saravanan@linumiz.com>
In-Reply-To: <5acb9307-2be1-dcd2-fdb7-b2842c7ff24d@roeck-us.net>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - md-in-79.webhostbox.net
X-AntiAbuse: Original Domain - vger.kernel.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - linumiz.com
X-BWhitelist: no
X-Source-IP: 103.163.95.214
X-Source-L: No
X-Exim-ID: 1ql9lR-004OcK-2J
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: ([192.168.1.101]) [103.163.95.214]:36664
X-Source-Auth: saravanan@linumiz.com
X-Email-Count: 2
X-Org: HG=dishared_whb_net_legacy;ORG=directi;
X-Source-Cap: bGludW1jbWM7aG9zdGdhdG9yO21kLWluLTc5LndlYmhvc3Rib3gubmV0
X-Local-Domain: yes
X-CMAE-Envelope: MS4xfEshzxp+H5SRTD19jeIYuYmknLTOAwmhzPcmcCQ63a8iH1XcggQcAYdXXB2EqO61lO51z54FpnOsKHKGRiDgUsUTxw2WXgGJuJZdCaIm6fg0yP5/kb+8
 XkiyULlA7AtvIiFpN1J4iWHXeTdR7glTJg0amHHNNcpkx7WM15dweVoY4Ps6EzAgD6FKOtR/eAq8OLwK6rBkoXP1eOCQdttjZrA=
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
	RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 11/09/23 09:53, Guenter Roeck wrote:
> On 9/10/23 20:41, Saravanan Sekar wrote:
>> The MPQ2286 is a programmable, high frequency synchronous buck regulator
>> designed to power a variety of Automotive system peripherals. Single buck
>> converters with hardware monitoring capability is configurable over PMBus
>> interface.
>>
>> Signed-off-by: Saravanan Sekar <saravanan@linumiz.com>
>> ---
>>   drivers/hwmon/pmbus/mpq7932.c | 3 +++
>>   1 file changed, 3 insertions(+)
>>
>> diff --git a/drivers/hwmon/pmbus/mpq7932.c 
>> b/drivers/hwmon/pmbus/mpq7932.c
>> index af3e5e9590c8..3ffeece28e2d 100644
>> --- a/drivers/hwmon/pmbus/mpq7932.c
>> +++ b/drivers/hwmon/pmbus/mpq7932.c
>> @@ -21,6 +21,7 @@
>>   #define MPQ7932_N_VOLTAGES        256
>>   #define MPQ7932_VOUT_MAX        0xFF
>>   #define MPQ7932_NUM_PAGES        6
>> +#define MPQ2286_NUM_PAGES        1
>>   #define MPQ7932_TON_DELAY        0x60
>>   #define MPQ7932_VOUT_STARTUP_SLEW    0xA3
>> @@ -130,12 +131,14 @@ static int mpq7932_probe(struct i2c_client *client)
>>   static const struct of_device_id mpq7932_of_match[] = {
>>       { .compatible = "mps,mpq7932", .data = (void *)MPQ7932_NUM_PAGES },
>> +    { .compatible = "mps,mpq2286", .data = (void *)MPQ2286_NUM_PAGES },
>>       {},
>>   };
>>   MODULE_DEVICE_TABLE(of, mpq7932_of_match);
>>   static const struct i2c_device_id mpq7932_id[] = {
>>       { "mpq7932", },
>> +    { "mpq2286", },
> 
> Please keep alphabetic order.

agree, will change in v2

> 
>>       { },
>>   };
>>   MODULE_DEVICE_TABLE(i2c, mpq7932_id);
> 
> This is one of those super-secret automotive chips where almost no 
> information
> is available to the public. I'll need authoritative confirmation that 
> all the
> various parameters (b. m, output voltage format, minimum and maximum output
> voltage, step size) match mpq7932 exactly. That is rarely the case, so 
> consider
> me skeptic.

Thanks for your time for review. yes, datasheet is not available in 
public but Monolithic shall share on request. I confirm all the 
parameters are match with mpq7932 datasheet and I have tested the device.

> 
> Guenter
> 

Thanks,
Saravanan

