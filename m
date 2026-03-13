Return-Path: <devicetree+bounces-275538-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sMgvAn9mtGm4nQAAu9opvQ
	(envelope-from <devicetree+bounces-275538-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 20:33:19 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 0448D28950D
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 20:33:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 058B6301731A
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 19:33:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B3B063CCFD1;
	Fri, 13 Mar 2026 19:33:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="fJTnOia1"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 702CB36308A;
	Fri, 13 Mar 2026 19:33:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773430391; cv=none; b=Ye1uON8wCuarn+nPqRtVHSu8yXdM+m0hZ8Uy4Zo9lKsND4aqSSOmytZd/EaX30iyhRYlVYUUFAQiKQY4ignT/xu+K+8FlyGF2SmU5Xsdz6jDMQpSTekNvvzTlWBRTwyfm+T6yDd/KBPp4h0pqb5BfctPtO+e7AmUHu90WrM854g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773430391; c=relaxed/simple;
	bh=ojwFUsM/iT2lF91PBJe00tHmWNmES2FQ7zwsljgOW0c=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Ajd4TXm0nLJZwZKwEtEEYoenfhyf1eMrIQa4GI0r7niEykMI3yagtN+UAdPE6QSvgH+50MYvdbZ4VXUq8VUe1xy7ewwrYYN+brrVsreEO5hmB8pJ7XpPWYzLK7tjqcxY0jgrj21R7WTf6nrLjfvxO4+XfHXY7+fzlsRPc3nfx0k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=fJTnOia1; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1773430388;
	bh=ojwFUsM/iT2lF91PBJe00tHmWNmES2FQ7zwsljgOW0c=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=fJTnOia1iWfEb5R5IrGx6ImRr+cbw44K2coEHIRJfQJVVCEG/9dTLaulsPB3ySHrd
	 OaqAye+2edYmHwHzbrsk2DtjHYriPjSPliLolsWEwMqwDWeKGoUg0szX2NacwxZ6mQ
	 qshwzzUipEZ+T8itCDjAwcw8d13z/EseNbsMaUV0NlyW8o2m8ds3la5Bu4RavQygCq
	 1VTj1Ey/RqBnfZAVcDDfpRSLBOFHbCTywurcZX1giroewPM6FlW3987mLvKdVgeLl/
	 C4HluG8U5XizyTTgX2G9arOACRTrP89M037pn2hPY0RH6BIop7SXhiM7iaqyeFtUPY
	 18LBNEYlawiFQ==
Received: from [10.40.0.100] (185-67-175-126.lampert.tv [185.67.175.126])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: mriesch)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 1E40217E0222;
	Fri, 13 Mar 2026 20:33:08 +0100 (CET)
Message-ID: <1f9942a5-e63b-4f44-87b6-5153f7ed72b7@collabora.com>
Date: Fri, 13 Mar 2026 20:33:07 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: rockchip: enable vicap dvp on wolfvision pf5
 io expander
To: Heiko Stuebner <heiko@sntech.de>,
 Gerald Loacker <gerald.loacker@wolfvision.net>, Rob Herring
 <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>
References: <20260313-wv-io-expander-vicap-v1-1-11001fb3b744@collabora.com>
 <6246776.lOV4Wx5bFT@phil>
Content-Language: en-US
From: Michael Riesch <michael.riesch@collabora.com>
In-Reply-To: <6246776.lOV4Wx5bFT@phil>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[collabora.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[collabora.com:s=mail];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-275538-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[collabora.com:+];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[michael.riesch@collabora.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[collabora.com:dkim,collabora.com:email,collabora.com:mid,linaro.org:email,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,wolfvision.net:email]
X-Rspamd-Queue-Id: 0448D28950D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Heiko,

On 3/13/26 19:19, Heiko Stuebner wrote:
> Am Freitag, 13. März 2026, 16:53:29 Mitteleuropäische Normalzeit schrieb Michael Riesch via B4 Relay:
>> From: Michael Riesch <michael.riesch@collabora.com>
>>
>> The Digital Video Port (DVP, the 16-bit variant) of the RK3568 VICAP
>> is broken out to the PF5 mainboard expansion header.
>> Enable it in the device tree overlay for the WolfVision PF5 IO
>> Expander board.
>>
>> Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>
> 
> The From should match the first Signed-off-by line.

Hmm... First of all, the Signed-off-by line is correct, this patch stems
from my WolfVision era. But then with the .mailmap entry I created when
the era ended, I cannot set the patch author (and thus the From line)
correctly.

Let me try again without this entry...

> 
> All later Signed-off-bys are from "other" people handling the patch,
> i.e. that other Michael Riesch ;-)

Yeah that guy's pretty weird!

> 
>> Reviewed-by: Gerald Loacker <gerald.loacker@wolfvision.net>
>> Tested-by: Gerald Loacker <gerald.loacker@wolfvision.net>
>> Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
>> Signed-off-by: Michael Riesch <michael.riesch@collabora.com>
> 
> 
> Heiko
> 
> 

Best regards,
Michael


