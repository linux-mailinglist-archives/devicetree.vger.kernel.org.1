Return-Path: <devicetree+bounces-321827-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 6K2QNli5TGr8ogEAu9opvQ
	(envelope-from <devicetree+bounces-321827-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 10:31:20 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3402C71920B
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 10:31:20 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=U8r3YcN+;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-321827-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-321827-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 61B003073F4C
	for <lists+devicetree@lfdr.de>; Tue,  7 Jul 2026 08:25:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 316E62DD5E2;
	Tue,  7 Jul 2026 08:25:23 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B4582C237C;
	Tue,  7 Jul 2026 08:25:21 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783412723; cv=none; b=DpPWNO2ko28yaSXTt1NgFRTLoq1a8ATM0iFWulzS8kimSng4rurQ4odcLpsRBhPrJI7dYs0yEAJFzBBPR7c3fGlPT3xSR7xOp7iHofScil/SsBCLFt5ZdPBj4WQeaNgZhe42w1sP7HXpljwMEgc2QzPiIjBH6UQOC5R/9WxPuQE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783412723; c=relaxed/simple;
	bh=Yg+h9kTGDNO5a191DtEEE8PkUwnTD4hNDnvQdQPFp58=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=HPHXG56VKjLwvTKGKBmkZxJRk+tL/3hf0bjgJzCxTgn78WdQfORUHjuKU86lj0LBOpD4/u5tOBmcP6APKyvaJic7fFcsxAA+A99ZLfc2mr79wL5ySYq+Q7MKxDZnwSjgXhqIxEh2eEXMCGvxqrmxW5OR48JuNFF9bw1QCE9zQic=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U8r3YcN+; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A33351F00A3D;
	Tue,  7 Jul 2026 08:25:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783412721;
	bh=9c2IjnIcsPoIQ39x1qyNs21os+YybrVjKXd3BrfpEXg=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To;
	b=U8r3YcN+cu9WN+k0ztSRlxtsQs8TSBvAac988uS40s/75E06vxa+O+FISFS+f4jLg
	 b6gQXCCFxLW4BbbTU18XvWRU14lrKRMKvhzB6jiUbEuRGEREjWyXAFDERbjsrS+c0T
	 E66ChLNkkSCE/duPyZKF05SLwII6Ds1UdBO9G9D7EpNnqWRjO4AGACrQ8EaxGFMeNJ
	 ssIY7Sl6v8i901GAnFg/WYJOsrmI15geZ9Ym/s1zw1hL8NKVnZuEh+lnjIxCQGpdim
	 GRrAPzJC9Q52sRLFsJfY8OZZ4CHixUMhV/B4w4PtuFbbwBepZW5Pct9T+vgI7XhoiY
	 cAhaxpY9pCL6g==
Message-ID: <5c50fa19-de1a-4863-ab7c-f6c688260359@kernel.org>
Date: Tue, 7 Jul 2026 10:25:16 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [External] Re: [PATCH 2/2] arm64: tegra: Add Lenovo ThinkEdge
 SE70 device tree
To: Jiqi JQ9 Li <lijq9@lenovo.com>,
 "linux-tegra@vger.kernel.org" <linux-tegra@vger.kernel.org>
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "krzk+dt@kernel.org" <krzk+dt@kernel.org>,
 "conor+dt@kernel.org" <conor+dt@kernel.org>,
 "mperttunen@nvidia.com" <mperttunen@nvidia.com>,
 "jonathanh@nvidia.com" <jonathanh@nvidia.com>,
 "thierry.reding@gmail.com" <thierry.reding@gmail.com>,
 "mpearson-lenovo@squebb.ca" <mpearson-lenovo@squebb.ca>
References: <20260630091743.657388-1-lijq9@lenovo.com>
 <20260630091743.657388-3-lijq9@lenovo.com>
 <d7bc7c0a-9f36-4440-b6d0-2e23667659c4@kernel.org>
 <JH0PR03MB8637692033F3AC7486EB397B83F72@JH0PR03MB8637.apcprd03.prod.outlook.com>
 <09d16eec-dc61-4576-b9c0-3471802a584f@kernel.org>
 <JH0PR03MB863781340E5314E374FB486C83F02@JH0PR03MB8637.apcprd03.prod.outlook.com>
 <e4a6d372-20cc-43f2-9299-14099af41181@kernel.org>
 <JH0PR03MB863740C0D777A6A97F479F1A83F02@JH0PR03MB8637.apcprd03.prod.outlook.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Content-Language: en-US
Autocrypt: addr=krzk@kernel.org; keydata=
 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
In-Reply-To: <JH0PR03MB863740C0D777A6A97F479F1A83F02@JH0PR03MB8637.apcprd03.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-321827-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:lijq9@lenovo.com,m:linux-tegra@vger.kernel.org,m:devicetree@vger.kernel.org,m:robh+dt@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:mperttunen@nvidia.com,m:jonathanh@nvidia.com,m:thierry.reding@gmail.com,m:mpearson-lenovo@squebb.ca,m:robh@kernel.org,m:krzk@kernel.org,m:conor@kernel.org,m:thierryreding@gmail.com,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_CC(0.00)[vger.kernel.org,kernel.org,nvidia.com,gmail.com,squebb.ca];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[10];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,vger.kernel.org:from_smtp,ozlabs.org:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 3402C71920B

On 07/07/2026 10:21, Jiqi JQ9 Li wrote:
>>>>>>
>>>>>> Why do you need bootargs? stdout property does not work?
>>>>>>
>>>>>> Best regards,
>>>>>> Krzysztof
>>>>>
>>>>> Regarding bootargs – I checked tegra194-p3668.dtsi (which
>>>>> is included by tegra194-p3668-0001.dtsi) and it already
>>>>> defines the chosen node. Following the NVIDIA reference
>>>>> (e.g., tegra194-p2888.dtsi), I'll define it in the main DTS:
>>>>>
>>>>> chosen {
>>>>>     bootargs = "console=ttyTCU0,115200";
>>>>>     stdout-path = "serial0:115200n8";
>>>>
>>>> No, you only need stdout-path. Drop the bootargs.
>>>>
>>>>> };
>>>>>
>>>>> This ensures compatibility while aligning with the existing
>>>>> Tegra device tree convention.
>>>>
>>>> There is no such thing as compatibility with convention.
>>>>
>>>> Every modern upstream DTS uses stdout-path, not bootargs.
>>>>
>>>> Best regards,
>>>> Krzysztof
>>>
>>> Hi Krzysztof,
>>>
>>> Just a gentle ping on this series. The v3 patches were applied to the
>>> CI baseline last week and have been waiting for review.
>>>
>>
>> You received comments here, implement them please.
>>
>> Best regards,
>> Krzysztof
> 
> Hi Krzysztof,
> 
> Thank you for your quick reply.
> 
> I just wanted to follow up and confirm that the v3 series is now
> available on Patchwork and has passed the automated Sashiko AI review.
> 
> You can see the series here:
> https://patchwork.ozlabs.org/project/linux-tegra/list/?series=511518
> 
> As requested, the key changes from v2 version you reviewed are:
> 1. The baseboard DTSI content has been merged into the main DTS file.
> 2. The bootargs property has been removed from the chosen node; only
>    stdout-path is used.
> 
> Could you please take another look when you have a moment? 

I don't use that Patchwork and maybe you mistaken my role here. So to
clarify: you got everything needed from DT maintainers, so I do not need
to do the same work. You also ping me 6 days after posting, which is
pretty non acceptable ping time. For example my patches for Tegra:
https://lore.kernel.org/all/20260406064935.27968-4-krzysztof.kozlowski@oss.qualcomm.com/
https://lore.kernel.org/all/20260429165626.243471-4-krzysztof.kozlowski@oss.qualcomm.com/
are unanswered for 3 months...

Best regards,
Krzysztof

