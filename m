Return-Path: <devicetree+bounces-99482-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D3F9969F08
	for <lists+devicetree@lfdr.de>; Tue,  3 Sep 2024 15:29:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 053221F250CE
	for <lists+devicetree@lfdr.de>; Tue,  3 Sep 2024 13:29:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 748C81B12DA;
	Tue,  3 Sep 2024 13:29:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=linumiz.com header.i=@linumiz.com header.b="OpBi4fYX"
X-Original-To: devicetree@vger.kernel.org
Received: from omta036.useast.a.cloudfilter.net (omta036.useast.a.cloudfilter.net [44.202.169.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A6DF61A726A
	for <devicetree@vger.kernel.org>; Tue,  3 Sep 2024 13:29:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=44.202.169.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725370182; cv=none; b=Asoiu9tdQ58uwQann6BpG2XVOvXqrExIpj/ORsmY1waRHqOfbNdF7LXonhkGEebTHt+A+rZ/hlHNnG4VcwDMZfwu6vOGDklopeDNY9QBMMEZGshGnLgc97G10t0etH2EZL6yGkFtNMx8bzDs865YLJf1QUJXKc/o6b2x3kK34H4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725370182; c=relaxed/simple;
	bh=sUFoHKHsNtlpiEkAg1QiZApjgXML3bAHfXiEy3+lhsE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=NtgdXqC0oleTPcu+B/VACouEMcRs522ThBaJZmtXrbiSZEKyLbwD2ChSJWpzC1eYi+SK9b7//Fo4nqToDdppZ8Goo/OkcTNyVhBMWGRT61VmmEL6uXxhetl3C46NDGbl1A8RXrqldblelHAKhSbrGdI/sAkLhvNSWMJhRmDdLSo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linumiz.com; spf=pass smtp.mailfrom=linumiz.com; dkim=pass (2048-bit key) header.d=linumiz.com header.i=@linumiz.com header.b=OpBi4fYX; arc=none smtp.client-ip=44.202.169.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linumiz.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linumiz.com
Received: from eig-obgw-6001a.ext.cloudfilter.net ([10.0.30.140])
	by cmsmtp with ESMTPS
	id lRGXsK0bFiA19lTbHsJ19h; Tue, 03 Sep 2024 13:29:39 +0000
Received: from md-in-79.webhostbox.net ([43.225.55.182])
	by cmsmtp with ESMTPS
	id lTbDsGxqdZlJQlTbFsc59h; Tue, 03 Sep 2024 13:29:38 +0000
X-Authority-Analysis: v=2.4 cv=DMBE4DNb c=1 sm=1 tr=0 ts=66d70f42
 a=LfuyaZh/8e9VOkaVZk0aRw==:117 a=kofhyyBXuK/oEhdxNjf66Q==:17
 a=IkcTkHD0fZMA:10 a=EaEq8P2WXUwA:10 a=-pn6D5nKLtMA:10 a=vU9dKmh3AAAA:8
 a=P-IC7800AAAA:8 a=HSDmG33uGC2uzMr5-wEA:9 a=QEXdDO2ut3YA:10
 a=rsP06fVo5MYu2ilr0aT5:22 a=d3PnA9EDa4IxuAV0gXij:22 a=ZCPYImcxYIQFgLOT52_G:22
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=linumiz.com
	; s=default; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
	References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=EjfaqFqF+XmogTpsGQkFuU8JUSJBnI7pUXSKmfynpwM=; b=OpBi4fYXDVLm0dvEsGWGdc3T6p
	hRQh5liMUUNo5hOBsz/2Cj7JJMDgYTsRrMRkgSOUP+w3K6p3iedTqLQ38rHqyUbEfsy96WGpNsiYr
	jrXPATJ+oOwe45v6GvbdC5pu8f/Fik3npp3nXw0CsZ4iqt7vl4LCtVxcWLxhHfnatvls21gIjV77h
	qju6o2emyvn5z6lULd9qvk1G5liL3Ogu/9Hu47fWCzltVpQAmdPGqu6dC+uLPfSMfOecTnydLOUjn
	OvrcUnSbO6VYA04LwEvN8zlFEqi9/xkd+HFocDdu2B3uOtsJY4Q5VO/6MWuH9eW/HjuJTA6zBxA0X
	37ZE9kjg==;
Received: from [122.165.245.213] (port=37192 helo=[192.168.1.106])
	by md-in-79.webhostbox.net with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96.2)
	(envelope-from <karthikeyan@linumiz.com>)
	id 1slTbC-00282Z-1y;
	Tue, 03 Sep 2024 18:59:34 +0530
Message-ID: <2374e41a-0ba2-4a99-906d-8c165baa6344@linumiz.com>
Date: Tue, 3 Sep 2024 18:59:31 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 5/8] dt-bindings: rtc: microcrystal,rv3028: add
 clock-cells property
To: Krzysztof Kozlowski <krzk@kernel.org>, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, heiko@sntech.de,
 alexandre.belloni@bootlin.com
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-rtc@vger.kernel.org
References: <20240903105245.715899-1-karthikeyan@linumiz.com>
 <20240903105245.715899-6-karthikeyan@linumiz.com>
 <e1513eb7-4ac5-4703-b4ff-2791908f1ec8@kernel.org>
Content-Language: en-US
From: karthikeyan <karthikeyan@linumiz.com>
In-Reply-To: <e1513eb7-4ac5-4703-b4ff-2791908f1ec8@kernel.org>
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
X-Exim-ID: 1slTbC-00282Z-1y
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: ([192.168.1.106]) [122.165.245.213]:37192
X-Source-Auth: karthikeyan@linumiz.com
X-Email-Count: 5
X-Org: HG=dishared_whb_net_legacy;ORG=directi;
X-Source-Cap: bGludW1jbWM7aG9zdGdhdG9yO21kLWluLTc5LndlYmhvc3Rib3gubmV0
X-Local-Domain: yes
X-CMAE-Envelope: MS4xfI00wfNypjJFXEzNjr3LlRaTOKI3r+KBpE1fFh+h+TXZ0Vyil722JZW5FvZNKbIpoRPD+/4SaKnMV2qO4c1FqcYSbjTJdLe+rYF/CNLGs9Wd8rSmPcod
 sHoK7w5Um+Sftrr/cIfII5XGA346uQlOYOMBK78NVETZjUa/uSolGjTKSTiCNYqPR/nHdSk8fRJaDWa7bwNmPBJRru1Z4sN5etg=



On 9/3/24 18:21, Krzysztof Kozlowski wrote:
> On 03/09/2024 12:52, Karthikeyan Krishnasamy wrote:
>> consume clkout from rv3028 rtc which is able to provide
>> different clock frequency upon configuration
>>
>> Signed-off-by: Karthikeyan Krishnasamy <karthikeyan@linumiz.com>
>> ---
>>
>> Notes:
>>      v2:
>>      - fix commit message subject
> 
> <form letter>
> This is a friendly reminder during the review process.
> 
> It looks like you received a tag and forgot to add it.
> 
> If you do not know the process, here is a short explanation:
> Please add Acked-by/Reviewed-by/Tested-by tags when posting new
> versions, under or above your Signed-off-by tag. Tag is "received", when
> provided in a message replied to you on the mailing list. Tools like b4
> can help here. However, there's no need to repost patches *only* to add
> the tags. The upstream maintainer will do that for tags received on the
> version they apply.
> 
> https://elixir.bootlin.com/linux/v6.5-rc3/source/Documentation/process/submitting-patches.rst#L577
> 
> If a tag was not added on purpose, please state why and what changed.
> </form letter>
> 
> Best regards,
> Krzysztof
> 

Apologies. I'm new to the process, somewhat i'm missing this 
information. I will change it in the future patches.

Thanks for suggesting b4, i will look into it.

Best regards,
Karthikeyan

