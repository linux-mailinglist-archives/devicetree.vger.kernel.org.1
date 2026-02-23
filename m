Return-Path: <devicetree+bounces-267632-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OFzTBjmznGmxJwQAu9opvQ
	(envelope-from <devicetree+bounces-267632-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 21:06:17 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7214917CB72
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 21:06:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 653E53006951
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 20:02:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7085E37474C;
	Mon, 23 Feb 2026 20:02:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="AnbE91aJ"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BF622BE048;
	Mon, 23 Feb 2026 20:02:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771876953; cv=none; b=ADXyTUaKrfO8X4k2lvypG5aCPYhshxaLRKskw4VeEhQmx6+4hcTqnBKnP4oAnQVIDHq9KDADf9hVBtXYW2I2zDRtiE+N2KtL/xmr9I2TbQr4Ngji9dJY7W/gIezNi4aM7reBo5B0MmRrVsNPrXeljNQ38fMW8e8Z80nU4D0hW5M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771876953; c=relaxed/simple;
	bh=g5AaOwZ6430GnKveqeW2Yxjh239E7tqluKKLDlFqEyM=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:Cc:References:
	 In-Reply-To:Content-Type; b=OgLkivy3LR4n3l2rNdcaDsBdJUBr/Y5BxLiZ/iUzQOtBgd++3NL0CYePbE22X2wpvbBMQqKP4uJcBpyqSC9a53tx+An3NXsTO8lPCVZ5PeBt2RvNjkvUKJuj3BXVa/LqcuCOaPuKfLj9CqXKIswhqcY0BqD6EeMQs0WZ9C42QfE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=AnbE91aJ; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1771876950;
	bh=g5AaOwZ6430GnKveqeW2Yxjh239E7tqluKKLDlFqEyM=;
	h=Date:Subject:From:To:Cc:References:In-Reply-To:From;
	b=AnbE91aJ/Ot5On9xelhK2wPWwn6D9ZiG8NOs5dToMUwOqtFvNL0clajxOGHvpmvSZ
	 9ru2YSNil6K3oVuGfaf13MOtXIUPKMEgU3xooTLntyhBgjvCsqVJvAj7b1VcG/q9fm
	 DyjvbbHG1efuXQz+8Atdjz9ekqj9nt361iM/L52VlFe5o5OIRJPRz+4GfeLk9RBM6L
	 /0Vd/84QCR7dhhLVK8dyOgkm68t0ZKyD0h3lDu4u7JveFuUhHDgLIwkdBI7LPFpF4/
	 xdlIj6wHa+P2AlShoZaas/dePcsU4hI1EWkg9vKPMGYe9g2Nyb1IMY+8rFbIVzQbic
	 +/dkaHFeC4KYQ==
Received: from [192.168.1.90] (unknown [86.123.23.225])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 1CC2A17E05B5;
	Mon, 23 Feb 2026 21:02:30 +0100 (CET)
Message-ID: <c6078b0d-cd88-40a8-9cc7-2e7b135be980@collabora.com>
Date: Mon, 23 Feb 2026 22:02:29 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: rockchip: Fix vdec register blocks order on
 RK3576
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Diederik de Haas <diederik@cknow-tech.com>, Rob Herring
 <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Detlev Casanova <detlev.casanova@collabora.com>, kernel@collabora.com,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20260223-vdec-reg-order-rk3576-v1-1-560976566bd3@collabora.com>
 <aZxkDGzEQCCLKR-M@venus> <DGMF3IX3J3BP.1XT41P0G8P5OD@cknow-tech.com>
 <b4eb3031-69e8-4a73-b4f1-91dd4192bb21@collabora.com> <aZyaLG0lYao6_xxb@venus>
 <e0d7da4c-e779-43e9-bf0f-c2a0224114df@collabora.com>
Content-Language: en-US
In-Reply-To: <e0d7da4c-e779-43e9-bf0f-c2a0224114df@collabora.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[collabora.com,none];
	R_DKIM_ALLOW(-0.20)[collabora.com:s=mail];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-267632-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[cristian.ciocaltea@collabora.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[collabora.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[collabora.com:mid,collabora.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 7214917CB72
X-Rspamd-Action: no action

On 2/23/26 8:29 PM, Cristian Ciocaltea wrote:
> Hi Sebastian,
> 
> On 2/23/26 8:21 PM, Sebastian Reichel wrote:
>> Hi,
>>
>> On Mon, Feb 23, 2026 at 07:07:42PM +0200, Cristian Ciocaltea wrote:
>>> --- a/Documentation/devicetree/bindings/media/rockchip,vdec.yaml
>>> +++ b/Documentation/devicetree/bindings/media/rockchip,vdec.yaml
>>> @@ -34,10 +34,12 @@ properties:
>>>        - description: The cache configuration registers base
>>>
>>>    reg-names:
>>> -    items:
>>> +    oneOf:
>>>        - const: function
>>> -      - const: link
>>> -      - const: cache
>>> +      - items:
>>> +          - const: link
>>> +          - const: function
>>> +          - const: cache
>>>
>>>    interrupts:
>>>      maxItems: 1
>>>
>>
>> With that change the descriptions in the reg section are wrong.
> 
> Yeah, I assumed it'd be acceptable for the description to document just once all
> possible items, to avoid repeating this for all possible combinations.
> 
> E.g. this is from Documentation/devicetree/bindings/net/snps,dwmac.yaml:
> 
>   resets:
>     minItems: 1
>     items:
>       - description: GMAC stmmaceth reset
>       - description: AHB reset
> 
>   reset-names:
>     oneOf:
>       - items:
>           - enum: [stmmaceth, ahb]
>       - items:
>           - const: stmmaceth
>           - const: ahb

I dropped the descriptions in v2, as we discussed they don't provide much value
anyway:

https://lore.kernel.org/all/20260223-vdec-reg-order-rk3576-v2-0-daf4942dfc02@collabora.com/


