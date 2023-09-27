Return-Path: <devicetree+bounces-3710-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 845DF7AFEFA
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 10:51:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sy.mirrors.kernel.org (Postfix) with ESMTP id D55B3B20A67
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 08:51:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6D1351C6BB;
	Wed, 27 Sep 2023 08:51:31 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DA03111A1
	for <devicetree@vger.kernel.org>; Wed, 27 Sep 2023 08:51:29 +0000 (UTC)
Received: from omta034.useast.a.cloudfilter.net (omta034.useast.a.cloudfilter.net [44.202.169.33])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0DDFB199
	for <devicetree@vger.kernel.org>; Wed, 27 Sep 2023 01:51:26 -0700 (PDT)
Received: from eig-obgw-5007a.ext.cloudfilter.net ([10.0.29.141])
	by cmsmtp with ESMTP
	id lElpqVKCoez0ClQG4qgJwb; Wed, 27 Sep 2023 08:51:00 +0000
Received: from md-in-79.webhostbox.net ([43.225.55.182])
	by cmsmtp with ESMTPS
	id lQGQq55v09sZrlQGSqCHMA; Wed, 27 Sep 2023 08:51:24 +0000
X-Authority-Analysis: v=2.4 cv=IMsRtyjG c=1 sm=1 tr=0 ts=6513ed0c
 a=LfuyaZh/8e9VOkaVZk0aRw==:117 a=CKMxHAookNUaJbGn3r6bzg==:17
 a=OWjo9vPv0XrRhIrVQ50Ab3nP57M=:19 a=dLZJa+xiwSxG16/P+YVxDGlgEgI=:19
 a=IkcTkHD0fZMA:10 a=zNV7Rl7Rt7sA:10 a=oz0wMknONp8A:10 a=vU9dKmh3AAAA:8
 a=gEfo2CItAAAA:8 a=KKAkSRfTAAAA:8 a=yavEzJRY2FWF_nJvOSQA:9 a=QEXdDO2ut3YA:10
 a=rsP06fVo5MYu2ilr0aT5:22 a=sptkURWiP4Gy88Gu7hUp:22 a=cvBusfyB2V15izCimMoJ:22
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=linumiz.com
	; s=default; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
	References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=M9VEvHlh/5eXS2fMMAkgKAXat1fK2p6GGIa7Kd/YbXc=; b=m4T2V4oeTdcLV47JDy/L13rjtb
	Jd/JJwEom5sT729peMDrBxgYeCKdIDmjDqZobfXlhKfOKRUq0dj6gz7lxqIIs4+0FMosW4QI6qU+M
	RUXvWFHn3572K2Tb5/PdrQeyLHwa2us06LVAmJcEqZUI4Zbr7LEYHIjCPBd5hk5bjspWs07Rl59TM
	vNd+1cyF6oyvBYNyg7VpI0CuXPbAKX5tKC8BNwpKmeHf8uUnLrIzzKcgowOmO4d4qy1xahd5F3F1h
	R2frv3Xbm69MG81ny4uxEv3A1JkEKmRfWRw3o7GsGZYSa/07bHMi4AQXmmUoVT0q/qktHT3Sfctxs
	HTNyTIIw==;
Received: from [103.163.95.214] (port=59794 helo=[192.168.1.101])
	by md-in-79.webhostbox.net with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <saravanan@linumiz.com>)
	id 1qlQGO-001Mr8-2z;
	Wed, 27 Sep 2023 14:21:20 +0530
Message-ID: <358f7d3c-42d1-6405-0013-997deb974ce3@linumiz.com>
Date: Wed, 27 Sep 2023 14:21:18 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH v2 2/3] regulator: dt-bindings: Add mps,mpq2286
 power-management IC
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 krzysztof.kozlowski+dt@linaro.org
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 lgirdwood@gmail.com, conor+dt@kernel.org, linux@roeck-us.net,
 linux-hwmon@vger.kernel.org, broonie@kernel.org, sravanhome@gmail.com,
 robh+dt@kernel.org, jdelvare@suse.com
References: <20230927033953.1503440-1-saravanan@linumiz.com>
 <20230927033953.1503440-3-saravanan@linumiz.com>
 <a1a50fb2-ddc6-4f85-9369-19b4c6c3bcd6@linaro.org>
Content-Language: en-US
From: Saravanan Sekar <saravanan@linumiz.com>
In-Reply-To: <a1a50fb2-ddc6-4f85-9369-19b4c6c3bcd6@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - md-in-79.webhostbox.net
X-AntiAbuse: Original Domain - vger.kernel.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - linumiz.com
X-BWhitelist: no
X-Source-IP: 103.163.95.214
X-Source-L: No
X-Exim-ID: 1qlQGO-001Mr8-2z
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: ([192.168.1.101]) [103.163.95.214]:59794
X-Source-Auth: saravanan@linumiz.com
X-Email-Count: 9
X-Org: HG=dishared_whb_net_legacy;ORG=directi;
X-Source-Cap: bGludW1jbWM7aG9zdGdhdG9yO21kLWluLTc5LndlYmhvc3Rib3gubmV0
X-Local-Domain: yes
X-CMAE-Envelope: MS4xfM896TKOu6GRS8DYYTdN896yCZqpAZsSXfYui+KBBEHrIHsZOHGYKeg+6ge2XPvYGuvO5UWWF5GUL5bszeSRl2Z1n5EdNlEkzOWU4b+WO+WQgU9miIDX
 PF9I+ldMHnuR6q/2DoStDOVxHyt59yGl8fYnMIXO45xjgEiypHH30dFhHm6GHAtXb398MASv48sgEIPqUDIH7QMCdewEDQVMpbw=
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
	RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 27/09/23 13:36, Krzysztof Kozlowski wrote:
> On 27/09/2023 05:39, Saravanan Sekar wrote:
>> Document mpq2286 power-management IC
>>
>> Signed-off-by: Saravanan Sekar <saravanan@linumiz.com>
>> ---
>>   .../bindings/regulator/mps,mpq2286.yaml       | 59 +++++++++++++++++++
>>   1 file changed, 59 insertions(+)
>>   create mode 100644 Documentation/devicetree/bindings/regulator/mps,mpq2286.yaml
>>
>> diff --git a/Documentation/devicetree/bindings/regulator/mps,mpq2286.yaml b/Documentation/devicetree/bindings/regulator/mps,mpq2286.yaml
>> new file mode 100644
>> index 000000000000..594b929fe4b8
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/regulator/mps,mpq2286.yaml
>> @@ -0,0 +1,59 @@
>> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
>> +%YAML 1.2
>> +---
>> +$id: http://devicetree.org/schemas/regulator/mps,mpq2286.yaml#
>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>> +
>> +title: Monolithic Power System MPQ2286 PMIC
>> +
>> +maintainers:
>> +  - Saravanan Sekar <saravanan@linumiz.com>
>> +
>> +properties:
>> +  compatible:
>> +    enum:
>> +      - mps,mpq2286
>> +
>> +  reg:
>> +    maxItems: 1
>> +
>> +  regulators:
>> +    type: object
>> +
>> +    properties:
>> +      buck0:
> 
> If you have just one buck, it should be "buck".
> 

As replied in v1 review comments, other chipset has multiple regulator 
so buck0 used to keep the driver common

> 
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> 
> Best regards,
> Krzysztof
> 

Thanks,
Saravanan

