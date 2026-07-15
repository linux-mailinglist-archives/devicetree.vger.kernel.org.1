Return-Path: <devicetree+bounces-326950-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id qY9OD9h6V2rcOwEAu9opvQ
	(envelope-from <devicetree+bounces-326950-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 14:19:36 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C298475E053
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 14:19:35 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=collabora.com header.s=mail header.b="J5/9iFtZ";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-326950-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-326950-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=collabora.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id C938A3009F2C
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 12:19:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A15E7446853;
	Wed, 15 Jul 2026 12:19:32 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B53A4418DC
	for <devicetree@vger.kernel.org>; Wed, 15 Jul 2026 12:19:31 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784117972; cv=none; b=eZtJDl1PZNYXkZJf3X/KYo855eTJCf5z/1P5/UUFo8xCw0TIcjHOhuZTZsf7EOrMf5Fuu3GQ1wwNsooLaAU7k9uhGJGLM5V90SSTvu+E9L6ISAmx89ggFWBdEYucrGjUmkmdVl1SPf0lTF6Q8CUwVYeU6fiiZazAdmASrdyLgSA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784117972; c=relaxed/simple;
	bh=GwgR0uDlU7raDjnYwmqupcREvOTo+vbqF9PgmiaMa0o=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Xu42G2XJ4a3RjmY/an3hVAJebap0UMyWjuJLhMqX5pUQLuhLnMx/OjQfKC/DaiTPLXS6tO6GSSZTdMs3ec6ReHP0RJMf+X6g+jjidShlE1o859Xvijq8ezQHz1Zd6Dtxw+XpStowD/yZE7eBJnRUuQczY8k1Vr2WVsGGdf4uR+A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=J5/9iFtZ; arc=none smtp.client-ip=148.251.105.195
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1784117969;
	bh=GwgR0uDlU7raDjnYwmqupcREvOTo+vbqF9PgmiaMa0o=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=J5/9iFtZJFrG3V6FNALKifW13kVwgqclKBNmX1t3GsIbmfnf4tadH2GNOt38hBP++
	 SVA2LV1DwhZM0d3Mf/gnl0XOwXO4UeaqmCHHySMvG7EuMt7e45/Xd5uS1vluFs2XJQ
	 uYIsbJ5py8A8kvuQ/YZOVTIRA2UsBy/TyDCm7ysPU7BjatVL6fTmjAgnH5gYxcPSDE
	 IBTYsCG/nqFfqJKTlPKGGH/nxJ4VT2YlLTE76+l7oLJ3vawQow8OCpX2haxavPFBIq
	 XERR7+Ea1BOWxJMtECpaYieIQUFP5SlUETB2EFt+8te570G9gjObgsOm9thOrSni/D
	 LhZ0gxIfVIeZA==
Received: from [100.64.1.21] (unknown [100.64.1.21])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange x25519)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 2EC5517E07AA;
	Wed, 15 Jul 2026 14:19:29 +0200 (CEST)
Message-ID: <ab158fcd-5d6b-4b9f-9eb0-6b135ea7b1eb@collabora.com>
Date: Wed, 15 Jul 2026 14:19:28 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 10/11] dt-bindings: display: mediatek: wdma: Add
 compatibles for more SoCs
To: sashiko-reviews@lists.linux.dev
Cc: conor+dt@kernel.org, dri-devel@lists.freedesktop.org, robh@kernel.org,
 devicetree@vger.kernel.org
References: <20260715114916.19690-1-angelogioacchino.delregno@collabora.com>
 <20260715114916.19690-11-angelogioacchino.delregno@collabora.com>
 <20260715121553.103AE1F000E9@smtp.kernel.org>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <20260715121553.103AE1F000E9@smtp.kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[collabora.com,none];
	R_DKIM_ALLOW(-0.20)[collabora.com:s=mail];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-326950-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:sashiko-reviews@lists.linux.dev,m:conor+dt@kernel.org,m:dri-devel@lists.freedesktop.org,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[angelogioacchino.delregno@collabora.com,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[collabora.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCPT_COUNT_FIVE(0.00)[5];
	FORGED_SENDER_FORWARDING(0.00)[];
	TO_DN_NONE(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[angelogioacchino.delregno@collabora.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,collabora.com:from_mime,collabora.com:mid,collabora.com:email,collabora.com:dkim]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: C298475E053

On 7/15/26 14:15, sashiko-bot@kernel.org wrote:
> Thank you for your contribution! Sashiko AI review found 1 potential issue(s) to consider:
> - [Medium] Inconsistent compatibility fallback for 64-bit SoCs (MT8192/MT8195) violating hardware constraints described in the commit.
> --
> 
> --- Patch [10]: [PATCH v5 10/11] dt-bindings: display: mediatek: wdma: Add compatibles for more SoCs ---
> commit ffb6d1b73de2ee2d9fba381dca064a6d8fef7acf
> Author: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
> 
> dt-bindings: display: mediatek: wdma: Add compatibles for more SoCs
> 
> This commit adds missing compatibles for the Write DMA hardware in the
> Display Controller for Dimensity 1200 (MT6893) and Kompanio
> 500/520/820/1200 (MT8183/MT8186/MT8192/MT8195).
> 
>> diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,wdma.yaml b/Documentation/devicetree/bindings/display/mediatek/mediatek,wdma.yaml
>> --- a/Documentation/devicetree/bindings/display/mediatek/mediatek,wdma.yaml
>> +++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,wdma.yaml
>> @@ -22,11 +22,16 @@ properties:
>>     compatible:
>>       oneOf:
>>         - enum:
>> +          - mediatek,mt6893-disp-wdma
>>             - mediatek,mt8173-disp-wdma
>>         - items:
>>             - enum:
>>                 - mediatek,mt6795-disp-wdma
>>                 - mediatek,mt8167-disp-wdma
>> +              - mediatek,mt8183-disp-wdma
>> +              - mediatek,mt8186-disp-wdma
>> +              - mediatek,mt8192-disp-wdma
>> +              - mediatek,mt8195-disp-wdma
>>             - const: mediatek,mt8173-disp-wdma
> 
> [Severity: Medium]
> The commit message explicitly excludes MT6893 from falling back to
> MT8173 because it introduces support for destination addresses larger
> than 32 bits. Should this same rule apply to MT8192 and MT8195?
> 
> Since MT8195 (Kompanio 1200) and MT6893 (Dimensity 1200) are the same
> generation of SoCs sharing the same IP, grouping MT8192 and MT8195 here
> implies they can safely fall back to the legacy 32-bit driver.

What?! No!! They're not the same SoC generation, and THAT is also why they
are not compatible with each other?!?!?!?!?!?! :-)))))

Cheers!

> 
> If an OS binds a legacy 32-bit driver to the MT8195 WDMA using this
> fallback, won't it misprogram the DMA addresses by truncating them to 32
> bits when attempting a DMA operation above 4GB?
> 

