Return-Path: <devicetree+bounces-320641-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id tPugJ+ZdSmqNBwEAu9opvQ
	(envelope-from <devicetree+bounces-320641-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 05 Jul 2026 15:36:38 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id EE2DE70A1FF
	for <lists+devicetree@lfdr.de>; Sun, 05 Jul 2026 15:36:37 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=cyberchaos.dev header.s=mail header.b=N1nQ+mrX;
	dmarc=pass (policy=reject) header.from=cyberchaos.dev;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-320641-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-320641-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 522A230097FF
	for <lists+devicetree@lfdr.de>; Sun,  5 Jul 2026 13:36:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ED04E370D79;
	Sun,  5 Jul 2026 13:36:31 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.cyberchaos.dev (mail.cyberchaos.dev [195.39.247.168])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71F3737DAB3;
	Sun,  5 Jul 2026 13:36:30 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783258591; cv=none; b=Px9mdMcerZVwg3q0RLnk8URE+cjw2ZxFdO1InArNhzPFq1th6M1AlnbjY3a2nLfxgObn9XoWjs2VfRTvdRd3MTheHJz6xILrozu/iZ+8RW9PkQqhGILS0P4nrCY5au9l6zECsACSQ7CWJJT9HB8Va4YtVOqMAQtHXirqS1wHNcI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783258591; c=relaxed/simple;
	bh=BmnSn+qzIiGLN2r2xvxgAs0h7J3ibxtj0+VEynPdkn0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=fMgaG6fsnGIgdgkxkFeWRqHIdTVeJ6w82in9xF4BCGbn+Zr2tZ/JSJh6VdcYA+3KRduKhGUVY+4mcR39xE/SLRnaEm9X+cRdCzXSDUVXDDlocxC6HO6G+UqFvJTvnLCcmVMJv8bke+6nbEISoYTtp9p+KWUPtzOmqcO8e9rrTko=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=cyberchaos.dev; spf=pass smtp.mailfrom=cyberchaos.dev; dkim=pass (1024-bit key) header.d=cyberchaos.dev header.i=@cyberchaos.dev header.b=N1nQ+mrX; arc=none smtp.client-ip=195.39.247.168
Message-ID: <4fd62657-ed86-46f4-9072-c9f2176cef33@cyberchaos.dev>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cyberchaos.dev;
	s=mail; t=1783258588;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=3V6zrYdlVqLq5+r0Kxpgn+SmXEsMABrtz3NxgxsAstw=;
	b=N1nQ+mrX6AtVCkUv0oD3JrvFtYh5pqLcX41aCxDLx8jVla7vZqiRI5RCh11mlz2yD1En+f
	xej1nMAU4BqNgK6hBibyH8uXmZAbtQ3LveGlem1jsEnLr72GiVJ6HdisKRmWD9CJEcZG5H
	hFPh9spgqpY/ubKBO1U2MnBOCwZxkOk=
Date: Sun, 5 Jul 2026 15:36:27 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Subject: Re: [PATCH 02/10] dt-bindings: interrupt-controller: apple,aic2: Add
 apple,t8132 compatible
To: sashiko-reviews@lists.linux.dev, Yureka Lilian <yureka@cyberchaos.dev>
Cc: robh@kernel.org, linux-watchdog@vger.kernel.org,
 devicetree@vger.kernel.org, conor+dt@kernel.org
References: <20260705-apple-m4-initial-devicetrees-v1-0-e5655ee56523@cyberchaos.dev>
 <20260705-apple-m4-initial-devicetrees-v1-2-e5655ee56523@cyberchaos.dev>
 <20260705132421.233081F000E9@smtp.kernel.org>
Content-Language: en-US
From: Yureka Lilian <yureka@cyberchaos.dev>
In-Reply-To: <20260705132421.233081F000E9@smtp.kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[cyberchaos.dev,reject];
	R_DKIM_ALLOW(-0.20)[cyberchaos.dev:s=mail];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-320641-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:sashiko-reviews@lists.linux.dev,m:yureka@cyberchaos.dev,m:robh@kernel.org,m:linux-watchdog@vger.kernel.org,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[yureka@cyberchaos.dev,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[yureka@cyberchaos.dev,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[cyberchaos.dev:+];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,cyberchaos.dev:from_mime,cyberchaos.dev:email,cyberchaos.dev:mid,cyberchaos.dev:dkim,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: EE2DE70A1FF


On 7/5/26 15:24, sashiko-bot@kernel.org wrote:
> Thank you for your contribution! Sashiko AI review found 1 potential issue(s) to consider:
> - [Low] The newly added compatible string 'apple,t8132-aic3' (and the pre-existing 'apple,t6030-aic3') are missing from the `if:properties:compatible:contains:enum:` conditional block that enforces `#interrupt-cells` constraints.
> --
>
> commit 4be0e67c14a594eec020638f7ba5290c4bf05496
> Author: Yureka Lilian <yureka@cyberchaos.dev>
>
> dt-bindings: interrupt-controller: apple,aic2: Add apple,t8132 compatible
>
> The Apple t8132 (M4) SoC uses an AIC3 as interrupt controller, same as
> the M3 predecessor.
>
>> diff --git a/Documentation/devicetree/bindings/interrupt-controller/apple,aic2.yaml b/Documentation/devicetree/bindings/interrupt-controller/apple,aic2.yaml
>> index d0d9a90e96e7b..7171c8c09feaf 100644
>> --- a/Documentation/devicetree/bindings/interrupt-controller/apple,aic2.yaml
>> +++ b/Documentation/devicetree/bindings/interrupt-controller/apple,aic2.yaml
>> @@ -44,6 +44,7 @@ properties:
>>         - items:
>>             - enum:
>>                 - apple,t6030-aic3
>> +              - apple,t8132-aic3
> [Severity: Low]
> Does this new compatible string also need to be added to the allOf conditional
> block further down in the schema?

No, this is correct, as t8132 is merely another alias always to be used 
in combination with the existing apple,t8122-aic3 base compatible which 
is already in the list.

>
> Looking at the conditional block that enforces the constraints later in this
> file:
>
> allOf:
>    - $ref: /schemas/interrupt-controller.yaml#
>    - if:
>        properties:
>          compatible:
>            contains:
>              enum:
>                - apple,t8112-aic
>                - apple,t8122-aic3
>      then:
>
> It appears "apple,t8132-aic3" is omitted from this enum list.
>
> If a device tree node is written with compatible = "apple,t8132-aic3" and omits
> the fallback string, the top-level schema will flag the missing fallback, but
> this conditional block will silently fall through to the else branch and
> incorrectly permit #interrupt-cells: 4 instead of enforcing the strict
> #interrupt-cells: 3 constraint.
>
> This is a pre-existing issue, but it looks like the "apple,t6030-aic3" string
> is also missing from this conditional block.
>
>>             - const: apple,t8122-aic3
>>         - const: apple,t8122-aic3
>>

