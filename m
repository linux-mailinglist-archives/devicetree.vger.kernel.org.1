Return-Path: <devicetree+bounces-100055-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EB7896C041
	for <lists+devicetree@lfdr.de>; Wed,  4 Sep 2024 16:24:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C06801C250FD
	for <lists+devicetree@lfdr.de>; Wed,  4 Sep 2024 14:24:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D78A4144316;
	Wed,  4 Sep 2024 14:21:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=linumiz.com header.i=@linumiz.com header.b="K+lEcxMG"
X-Original-To: devicetree@vger.kernel.org
Received: from omta40.uswest2.a.cloudfilter.net (omta40.uswest2.a.cloudfilter.net [35.89.44.39])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50DB31DC181
	for <devicetree@vger.kernel.org>; Wed,  4 Sep 2024 14:21:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=35.89.44.39
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725459714; cv=none; b=o8CnPkUN7RiSGLoHu5xUTPLVjxWoIvYvX4lW5/dMkquMzOnbpyQfuW5EYl4hLI3QlpjacFU2yL8uj7wi5J+wg63qmap6tnre5WGbZKIBh5qLaLm68QOsiBzdYslh6ws3uPBdAQ2Y17KfeKllbb5QhoWkHJZmp1/9Dfh523oScig=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725459714; c=relaxed/simple;
	bh=9Dajyz1uc3fIw7Uk2UpNROwl2ybAcZT3AYqsL32BjSY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=sKV+BR/bBG+ZhskASpe4ocSIHUzOpah4i1Rqi3+gYSdYmrskjCoZbC8X4eaefkgJRoHA10Dtj1k3sE690GZKIuWXuaxYU+pTuErQ15/dS/foKgQjw+clMdfsJghcFie+sO+4mgcmOd05OpgjoV6K+Fk1gdSHuf100f89HbCREQA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linumiz.com; spf=pass smtp.mailfrom=linumiz.com; dkim=pass (2048-bit key) header.d=linumiz.com header.i=@linumiz.com header.b=K+lEcxMG; arc=none smtp.client-ip=35.89.44.39
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linumiz.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linumiz.com
Received: from eig-obgw-5007a.ext.cloudfilter.net ([10.0.29.141])
	by cmsmtp with ESMTPS
	id lo66sf1FKvH7llqtHslswO; Wed, 04 Sep 2024 14:21:47 +0000
Received: from md-in-79.webhostbox.net ([43.225.55.182])
	by cmsmtp with ESMTPS
	id lqtDsUMKfLxPQlqtFsmd63; Wed, 04 Sep 2024 14:21:46 +0000
X-Authority-Analysis: v=2.4 cv=Fq4D/Xrq c=1 sm=1 tr=0 ts=66d86cfa
 a=LfuyaZh/8e9VOkaVZk0aRw==:117 a=kofhyyBXuK/oEhdxNjf66Q==:17
 a=IkcTkHD0fZMA:10 a=EaEq8P2WXUwA:10 a=-pn6D5nKLtMA:10 a=vU9dKmh3AAAA:8
 a=VwQbUJbxAAAA:8 a=5z-885-_BntmAJspvxsA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=rsP06fVo5MYu2ilr0aT5:22 a=ZCPYImcxYIQFgLOT52_G:22
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=linumiz.com
	; s=default; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
	References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=Vc5HhuzT3Av9fGfJ5nOnIXbI/0nWjEfr5GgHCVIutXM=; b=K+lEcxMGxC2la7g5JCvwz9aAEI
	oapjg5BiLwwfPyGKs4lnKYoL5hTVfVhEvaI9kaQiUJIDGcLnUlzpGlU0VfVQ26ndkdBEzayjf32hh
	VmnOPuHK/efoBgIB/tnyCTY5hNTsrHLavYEYkJz+KIJpcmlcNGJLrALMSBIbCgoclQ10rtmQKoz6T
	u6086Q/lQMV25D+BATv7E/F707FtNwBFhzfDJWN+ztfT9t/gTr+eRIEnrWHCvvmnwebIrCPHkJKvB
	W/MvVD/TEPhUWC+83ANQ1n7l2gkQ8AyC5EVNQexAKgbWfBcmAL0buVk0Js83VgYUhc+/edD4/LRHx
	Gqy+7aCQ==;
Received: from [122.165.245.213] (port=53678 helo=[192.168.1.106])
	by md-in-79.webhostbox.net with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96.2)
	(envelope-from <karthikeyan@linumiz.com>)
	id 1slqtB-003lg7-2A;
	Wed, 04 Sep 2024 19:51:41 +0530
Message-ID: <c387b2df-4a49-434f-b660-765599f9ec0d@linumiz.com>
Date: Wed, 4 Sep 2024 19:51:38 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 4/8] ARM: dts: rockchip: Add watchdog node for RV1126
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, alexandre.belloni@bootlin.com
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-rtc@vger.kernel.org
References: <20240903105245.715899-1-karthikeyan@linumiz.com>
 <20240903105245.715899-5-karthikeyan@linumiz.com> <6440792.jCCqRG4XHG@diego>
Content-Language: en-US
From: karthikeyan <karthikeyan@linumiz.com>
In-Reply-To: <6440792.jCCqRG4XHG@diego>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - md-in-79.webhostbox.net
X-AntiAbuse: Original Domain - vger.kernel.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - linumiz.com
X-BWhitelist: no
X-Source-IP: 122.165.245.213
X-Source-L: No
X-Exim-ID: 1slqtB-003lg7-2A
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: ([192.168.1.106]) [122.165.245.213]:53678
X-Source-Auth: karthikeyan@linumiz.com
X-Email-Count: 15
X-Org: HG=dishared_whb_net_legacy;ORG=directi;
X-Source-Cap: bGludW1jbWM7aG9zdGdhdG9yO21kLWluLTc5LndlYmhvc3Rib3gubmV0
X-Local-Domain: yes
X-CMAE-Envelope: MS4xfJHEaiWDKQua2bTCVhrSF6ImsM0j4foWxJKigQU2bmTqR7zZD45Qmzvh7iHBh/MuKyh8Aoal8rPHQxhHQ18SGGucZPlkGYnFCm98gxIDY8KlAMJMqxeH
 3MORc42UVKbsXIbUdeR6f2RrjfQuRbjilmDzwWjNWfZE8khB3T8h81I6PMcmE2W5wtlEA2MCpPA3JXqk+ogWvsOsi+agAEXPdS8=



On 9/4/24 14:41, Heiko Stübner wrote:
> Am Dienstag, 3. September 2024, 12:52:41 CEST schrieb Karthikeyan Krishnasamy:
>> Add watchdog node for Rockchip RV1126
>>
>> Signed-off-by: Karthikeyan Krishnasamy <karthikeyan@linumiz.com>
> 
> this needs a separate patch for adding a watchdog compatible to
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/Documentation/devicetree/bindings/watchdog/snps,dw-wdt.yaml#n33
> 
> see for example
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=dcd615ee6fd3651ab0357364c4cf65b1148a40be
> 
> Thanks
> Heiko
> 
Additional patch for compatible string, Got it. I will added in the next 
version. Thanks.
>> ---
>>
>> Notes:
>>      v2:
>>      - No change
>>
>>   arch/arm/boot/dts/rockchip/rv1126.dtsi | 8 ++++++++
>>   1 file changed, 8 insertions(+)
>>
>> diff --git a/arch/arm/boot/dts/rockchip/rv1126.dtsi b/arch/arm/boot/dts/rockchip/rv1126.dtsi
>> index abf442804d27..283985608428 100644
>> --- a/arch/arm/boot/dts/rockchip/rv1126.dtsi
>> +++ b/arch/arm/boot/dts/rockchip/rv1126.dtsi
>> @@ -544,6 +544,14 @@ timer0: timer@ff660000 {
>>   		clock-names = "pclk", "timer";
>>   	};
>>   
>> +	wdt: watchdog@ff680000 {
>> +		compatible = "snps,dw-wdt";
>> +		reg = <0xff680000 0x100>;
>> +		clocks = <&cru PCLK_WDT>;
>> +		interrupts = <GIC_SPI 32 IRQ_TYPE_LEVEL_HIGH>;
>> +		status = "disabled";
>> +	};
>> +
>>   	i2s0: i2s@ff800000 {
>>   		compatible = "rockchip,rv1126-i2s-tdm";
>>   		reg = <0xff800000 0x1000>;
>>
> 
> 
> 
> 

Best Regards,
Karthikeyan

