Return-Path: <devicetree+bounces-267599-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +L4VKQSdnGmyJgQAu9opvQ
	(envelope-from <devicetree+bounces-267599-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 19:31:32 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 24EAF17B84F
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 19:31:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3AC4A3063774
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 18:29:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A081C340A46;
	Mon, 23 Feb 2026 18:29:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="D+ZEZns8"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63E25330D23;
	Mon, 23 Feb 2026 18:29:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771871367; cv=none; b=Zfmkf6WOdtaXjJ5G0wXQE/670TTqqS2w5MZeY2udFA0AYbGpc/RnGYKIuj40Qa7MvLQPQ6GC7jyiWGQK4h1+ooqidq4WXL1zcoBh2gF5OtMlvF0g6xbpr108Id6KXrkDqZBBg4nA00ASZubksSgGYnblI3948iF2RkozG9AuU2g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771871367; c=relaxed/simple;
	bh=f8Y9T7jUIRJHt52mwSlo+OZGMV3OmtVt1CFMimMKfhk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=uCXNbuNDhjGxVFqbjeyUNtAFL3xJsRssQF+TVFzqFY0WmmRbf6F9MmTThRjXYt8l7BIgPPK9wbqrRmN9w7MZ07A422efH8Uh+kPGhSzgwMYxejpuQGpMixKzLibmS2jIo6jn3c6rAovk/YMAJdFyb0YYMQi4yVPR6goRhNO9iFQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=D+ZEZns8; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1771871364;
	bh=f8Y9T7jUIRJHt52mwSlo+OZGMV3OmtVt1CFMimMKfhk=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=D+ZEZns8k6dR0nXRDqaipPSO0rIkEfbGuUR4zYwNKoBDA2u71/+fwR0FcCn6cZBR0
	 G+NiNTIP+KZvtw+frCTb2F4TRxkJ7FYobhJalUWzUPrh/l7x3tlt2ZF9XlHK+glzAN
	 fsyBke84OLf5/KutIll9hq6Q89kpj/xenVBre5nnYx6QkeKKCTD0myMMP2fAxn11N3
	 +XhDfmf14+T84ZN2FRn1cB5cVFpygQyGRPKJMxx34y2+BOItmho/C/yzzgJMZ5n82W
	 7abWKLVv2LHgGKT8VXiD2GpPhWUkDwme217BFdcPd+OT6gVPeGMJLmcsK9TejLOqir
	 3r8fNnypcMfFw==
Received: from [192.168.1.90] (unknown [86.123.23.225])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 48DE117E003F;
	Mon, 23 Feb 2026 19:29:24 +0100 (CET)
Message-ID: <e0d7da4c-e779-43e9-bf0f-c2a0224114df@collabora.com>
Date: Mon, 23 Feb 2026 20:29:23 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: rockchip: Fix vdec register blocks order on
 RK3576
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
Content-Language: en-US
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
In-Reply-To: <aZyaLG0lYao6_xxb@venus>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[collabora.com,none];
	R_DKIM_ALLOW(-0.20)[collabora.com:s=mail];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-267599-lists,devicetree=lfdr.de];
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
X-Rspamd-Queue-Id: 24EAF17B84F
X-Rspamd-Action: no action

Hi Sebastian,

On 2/23/26 8:21 PM, Sebastian Reichel wrote:
> Hi,
> 
> On Mon, Feb 23, 2026 at 07:07:42PM +0200, Cristian Ciocaltea wrote:
>> --- a/Documentation/devicetree/bindings/media/rockchip,vdec.yaml
>> +++ b/Documentation/devicetree/bindings/media/rockchip,vdec.yaml
>> @@ -34,10 +34,12 @@ properties:
>>        - description: The cache configuration registers base
>>
>>    reg-names:
>> -    items:
>> +    oneOf:
>>        - const: function
>> -      - const: link
>> -      - const: cache
>> +      - items:
>> +          - const: link
>> +          - const: function
>> +          - const: cache
>>
>>    interrupts:
>>      maxItems: 1
>>
> 
> With that change the descriptions in the reg section are wrong.

Yeah, I assumed it'd be acceptable for the description to document just once all
possible items, to avoid repeating this for all possible combinations.

E.g. this is from Documentation/devicetree/bindings/net/snps,dwmac.yaml:

  resets:
    minItems: 1
    items:
      - description: GMAC stmmaceth reset
      - description: AHB reset

  reset-names:
    oneOf:
      - items:
          - enum: [stmmaceth, ahb]
      - items:
          - const: stmmaceth
          - const: ahb

Thanks,
Cristian


