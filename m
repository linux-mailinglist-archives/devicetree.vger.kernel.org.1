Return-Path: <devicetree+bounces-103607-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id E78D297B88B
	for <lists+devicetree@lfdr.de>; Wed, 18 Sep 2024 09:29:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8B35D1F235E6
	for <lists+devicetree@lfdr.de>; Wed, 18 Sep 2024 07:29:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6443D16DC15;
	Wed, 18 Sep 2024 07:29:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=linumiz.com header.i=@linumiz.com header.b="M1RuQaED"
X-Original-To: devicetree@vger.kernel.org
Received: from omta38.uswest2.a.cloudfilter.net (omta38.uswest2.a.cloudfilter.net [35.89.44.37])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E419816A940
	for <devicetree@vger.kernel.org>; Wed, 18 Sep 2024 07:29:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=35.89.44.37
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726644585; cv=none; b=Lj31hJQEytfbLF6Sf0rbb5LMeYILLZpTF6BuNa7/ZBRTQESCGrQf2g6S3QJbgsYORUWcE79jbO0OpTsZDQ9Ne4NS27LrevEPGQvq39EpmT96VoOFBDiptISPbuqJKEHhHlejJ4tWBrFtOq3iIlx8VPc6FP/STMJp0WeduS9jCfs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726644585; c=relaxed/simple;
	bh=yP0aZDcQLjQJHAwqB/Fw8rs6y8tndFngO8tTKM8vLdU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=T9EKNGrHdhNQUb9H7XseDIN8wghSodgOf1WpTrIMJTFdnglPu/nl+kEkWGEQ6K9yjieC0mag7lIKJefC1df9ioLd+hABBVGPWNtSd+FcKC5Xhf32AZ2RHkTp7ZlBbWLHit8gxiBQw7AU0aWlATM+dsUw+YkoiLAbSIrkaUS24+Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linumiz.com; spf=pass smtp.mailfrom=linumiz.com; dkim=pass (2048-bit key) header.d=linumiz.com header.i=@linumiz.com header.b=M1RuQaED; arc=none smtp.client-ip=35.89.44.37
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linumiz.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linumiz.com
Received: from eig-obgw-5006a.ext.cloudfilter.net ([10.0.29.179])
	by cmsmtp with ESMTPS
	id qgYJsY7dvumtXqp85s8S7t; Wed, 18 Sep 2024 07:29:37 +0000
Received: from md-in-79.webhostbox.net ([43.225.55.182])
	by cmsmtp with ESMTPS
	id qp82sLGiHuVcZqp83skWLx; Wed, 18 Sep 2024 07:29:36 +0000
X-Authority-Analysis: v=2.4 cv=EpfUrzcA c=1 sm=1 tr=0 ts=66ea8160
 a=LfuyaZh/8e9VOkaVZk0aRw==:117 a=kofhyyBXuK/oEhdxNjf66Q==:17
 a=IkcTkHD0fZMA:10 a=EaEq8P2WXUwA:10 a=-pn6D5nKLtMA:10 a=vU9dKmh3AAAA:8
 a=EfumUPoKJa0OZNXMQWIA:9 a=QEXdDO2ut3YA:10 a=rsP06fVo5MYu2ilr0aT5:22
 a=ZCPYImcxYIQFgLOT52_G:22
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=linumiz.com
	; s=default; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
	References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=Bsh0+YTIBF2g9B4a29qrB1FFLWx62R+OsNpok7/VG0c=; b=M1RuQaED7/rSKCPTvoomTTe3wM
	0SbdHGTITSV/ErpEZsSl0iLV0Bxw1WXMQyEAqxMQbzDJ6j8dryEQOirTTkBgI/iDXn0YxHpRSUo2V
	41Jii4EIjhpW+xZOkEGb23l8aUnlGP3iCCnnaIZ0eeVI9VA1rxs8WpT1VeFtx0v4gA3TKybazWz0S
	TI/4PkOcsTfY5TjQ8s/8hDcYCwLKdACetM7I0iM/64KH+QQiEresGITqiEd7NPhkNMPppXNuV78Qs
	Q/Ug9bMheh0ZexztgAIed/Jv84tsqKgY68PURgvsFlyvS0CmjJlUePqb7NTGA3mzgTR+6+TLlWRPT
	s/BA7krg==;
Received: from [122.165.245.213] (port=51864 helo=[192.168.1.106])
	by md-in-79.webhostbox.net with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96.2)
	(envelope-from <karthikeyan@linumiz.com>)
	id 1sqp80-0028P1-1L;
	Wed, 18 Sep 2024 12:59:32 +0530
Message-ID: <ddca4051-0e83-4d39-8654-12210ffa5685@linumiz.com>
Date: Wed, 18 Sep 2024 12:59:28 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/6] dt-bindings: watchdog: rockchip: Add
 rockchip,rv1126-wdt string
To: Heiko Stuebner <heiko@sntech.de>, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, alexandre.belloni@bootlin.com, wim@linux-watchdog.org,
 linux@roeck-us.net
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-rtc@vger.kernel.org, linux-watchdog@vger.kernel.org
References: <20240912142451.2952633-1-karthikeyan@linumiz.com>
 <20240912142451.2952633-2-karthikeyan@linumiz.com> <2206048.Mh6RI2rZIc@phil>
Content-Language: en-US
From: karthikeyan <karthikeyan@linumiz.com>
In-Reply-To: <2206048.Mh6RI2rZIc@phil>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - md-in-79.webhostbox.net
X-AntiAbuse: Original Domain - vger.kernel.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - linumiz.com
X-BWhitelist: no
X-Source-IP: 122.165.245.213
X-Source-L: No
X-Exim-ID: 1sqp80-0028P1-1L
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: ([192.168.1.106]) [122.165.245.213]:51864
X-Source-Auth: karthikeyan@linumiz.com
X-Email-Count: 6
X-Org: HG=dishared_whb_net_legacy;ORG=directi;
X-Source-Cap: bGludW1jbWM7aG9zdGdhdG9yO21kLWluLTc5LndlYmhvc3Rib3gubmV0
X-Local-Domain: yes
X-CMAE-Envelope: MS4xfGmX/NRZmFbMnNOYo+Eq09Iuh8Xl5HbEdqgLT7bMegcQbK998s7LIPwvmzRlBkoa2o3JeDDNm2g77ykgRb9FAw0GwIrsVCjfmo3RKEMCrMQ4+D0OKunW
 RHEMO7RrH+wqZWF6/FHe1MCusGk0wSIrid0wAN/spaqFLm11o6ejJtO2oQIau99VaS/IDrCxo34KRbxI+oeGGluW2sFwdH8ZLxI=



On 9/18/24 04:46, Heiko Stuebner wrote:
> Hey,
> 
> Am Donnerstag, 12. September 2024, 16:24:46 CEST schrieb Karthikeyan Krishnasamy:
>> Add rockchip,rv1126-wdt compatible string.
>>
>> Signed-off-by: Karthikeyan Krishnasamy <karthikeyan@linumiz.com>
> 
> I think this patch misses some recipients because neither
> the watchdog maintainers nor the watchdog list is included.
> 
> We'll need for them to at least Ack this patch, so they'll
> need to be included. Please check your scripts/get_maintainer.pl
> call
> 
> 
> Thanks
> Heiko
> 
Apologies for missing them. Adding them in this reply mail.
>> ---
>>
>> Notes:
>>      v3:
>>      - add watchdog compatible string
>>
>>   Documentation/devicetree/bindings/watchdog/snps,dw-wdt.yaml | 1 +
>>   1 file changed, 1 insertion(+)
>>
>> diff --git a/Documentation/devicetree/bindings/watchdog/snps,dw-wdt.yaml b/Documentation/devicetree/bindings/watchdog/snps,dw-wdt.yaml
>> index c7aab0418a32..bccd27a1e470 100644
>> --- a/Documentation/devicetree/bindings/watchdog/snps,dw-wdt.yaml
>> +++ b/Documentation/devicetree/bindings/watchdog/snps,dw-wdt.yaml
>> @@ -31,6 +31,7 @@ properties:
>>                 - rockchip,rk3568-wdt
>>                 - rockchip,rk3588-wdt
>>                 - rockchip,rv1108-wdt
>> +              - rockchip,rv1126-wdt
>>             - const: snps,dw-wdt
>>   
>>     reg:
>>
> 
> 
> 
> 

Best Regards,
Karthikeyan

