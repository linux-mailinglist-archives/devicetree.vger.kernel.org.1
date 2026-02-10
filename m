Return-Path: <devicetree+bounces-264355-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id xv46JT8Ti2npPQAAu9opvQ
	(envelope-from <devicetree+bounces-264355-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 12:15:11 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 0614611A062
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 12:15:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A3E1730252BC
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 11:15:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EA64E363C7C;
	Tue, 10 Feb 2026 11:15:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="e65AQGhn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F2783624C4
	for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 11:15:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.221.44
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770722108; cv=pass; b=WQ1gjhYAKUEsVW9pWi5H40ModkDwUw9u+Xg4oR99ZE2I1M47ElVU2rzfHJ8BA4A5qP4WZD2/39mUX65p79R+JB7rPjQu/JRUCZqh+iz+L3YDLRFzkzcADjJe5/GHF0+JW64cO2TsrrEjreKnkoyUkqm4WrHL9KEaNIpgf85JOPw=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770722108; c=relaxed/simple;
	bh=9RwOH4R4QH3gaTZuNlGDQPuuOYTY4NM/rcBF3DQRpJk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=duXWRSdjyO62KyIbcdLIJ+bEVc11kI6Bzp8J6BXmtQGJurCFWnW1ISckoo0ZDbiDxL9LcGXvncqWp+0S9tsrGMMgCWTGci92acrfkBYy+ntCDEhsawUSOvDiLAhrW4pN9DUr/QcWZgy/RzG9MqpBhqIlVlJ9RBfxE/lUMcnjdfg=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=e65AQGhn; arc=pass smtp.client-ip=209.85.221.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-4362507f0bcso3386472f8f.0
        for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 03:15:07 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1770722106; cv=none;
        d=google.com; s=arc-20240605;
        b=P3SW/DL06PpLKwWZ5v2b1f4KQzxnRR2nV7YsGygv2NQ9wTS3aC3vAkzPM3Ueiyh+B7
         ZcPKm+z2rKVcD/P+osvICEoS8/7+XgqET9H+AkYzEJwOrOHi6YSxGgpoIICoCev7A9MR
         nSiU2qzYNQRIdtn27ndAzGMN9S6fhr/bsZ1KwrdMhqnlgt6XhbIgQ1M8S458SAXHUDXI
         VhPTRbiWYc87DE1MV1xQEigSwVHAtY145ny84tw197Qz0G1RLWrl3BNfPNWQ6Yzcb/Mp
         LGYrOHPX0/SFz543tmpJEE8SwUI013fRD2hcPwoSyWTirGTsDtqTx7tqNjJPoZIbEPcJ
         6a+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=ZSAYORMyK0PsRntDbPFNKD2d4UOZsLZplo2+nFOE3f0=;
        fh=BVIsChdIw0uuu+FX/0JcmV0k5iRkS2O08oo70+QsGZc=;
        b=PxUFiCV0FmHagwS6CGff2krNcFGPjhVzqqPW4srLSsjBCy9DAwLVBu2kwhRuLt9Rbk
         G2zppJAB4lJHz+6O/jJwxzyM3bf/Xv6GCqG0Lyqga+UNUqJ/rToHUCyeRNEoQWilq0Bd
         pBObxkuZLDdvLQGGpUIG6gTtq9jC1vzM4A7S+7V+N2VXAZstpUkww3WwnF0J8S/za0I5
         oo3eszvMVlR6prqKgPMxvWFccRdihBi2cLKoYjLT5xIbwxWhKZ+2x7TziXK3fYJMgwi3
         aGMMRRAGp6lYI+7wjyujLRpEeb/x5DcHdC579dTRpQUbfk82vsfBMbZ/mrbTe9ya4IMl
         wchw==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770722106; x=1771326906; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZSAYORMyK0PsRntDbPFNKD2d4UOZsLZplo2+nFOE3f0=;
        b=e65AQGhnvdaLKgQEePASEnn1uArSYPcLLtNE/LagVjnVXxWPQE0M5Z+STwJUYnDuxh
         VkCO0K9HHao6r1CR8g1Wv4+Sk6RjSmCFjjdyR7cPmqtCA30gJnQl5LA7iJ8ZeQMsFUrQ
         6G60TqXAEDOo1YNK5mNsToHVJqTxjqpdjtDf+RimrkyI4/cw5av0OjHxpkHQTMLkJAK1
         R2q6G5wd/a/xaU8HosV2er5VumaFi9KzcSVJIxR4FbI+dPMbKqYCEz6D9fHuL+Dkgf16
         A0h+lo939gv0Dm+VXZT91NDaHxX5nYfQLJWR6mkUN/U67u/e7SlVauf1tzkDeE5QJ+Mc
         4nvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770722106; x=1771326906;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=ZSAYORMyK0PsRntDbPFNKD2d4UOZsLZplo2+nFOE3f0=;
        b=Jt6FPyCRdyp/kkr31kNxFBm1QRwWquNc6gEoAEZqgRoPelKFz/eH5M3sUOaAaKmtLj
         3vluvpvYN9b9DuSsBdwW/PImxmMvo7Q5p3cA3b2OQASPzuAfN8cR4njA0X2/w3kt56CD
         47fOlqzLwvQcgtBs4c9Vcg4qQFoIY6bD3es007mWWPbpNG0hXYR5toFkAKalx8aKk/IR
         7/ZqdmAhLi4WMt3ZRIw68qSluZECvq/JAHNSdP+VgYxRfSME+svWug2aj27yNGTkZPfh
         SS2wPwlyaEGpRi4Y+XAjfgLO4yKAihh8QEFg6TeyY02CrPHF9uP8DrvIW/um7JxlbIES
         AlgQ==
X-Forwarded-Encrypted: i=1; AJvYcCWhUECgqfUKWk2UA9q0IOiAyeYPlYAN+obRvw2M6wV2ulanHnXDH/cU36dCbdzBPrsR02ATAT9J3TAL@vger.kernel.org
X-Gm-Message-State: AOJu0Yy7yyAAoajPmAOwsO5K3TH4QZWcH6VJ1XAEbjT7EV+BFA9W+JRA
	hM4lVGzn6q1/nEL8MUAzZR0Sabx1mXrYJ76aJNF1LSccbMX2/3+M5Qss3FB8XrIrhvyqRtiMuQF
	C8DjMhL0qdjlYGZGVtAhzpDbN3nSbab0=
X-Gm-Gg: AZuq6aKBRNZ/CJB+wgkwVz0APgg28hA0wlA9dul6CdRDDgLMfGhpY/BFy+RyIb3OTcs
	85nQTHXnkZ6Fra73LOFI9WvRhul1RhlTKyIAj1kLIA1pGdrItCOth5+PFS2owc2ORZOWT3Qoa1O
	W3BtJkn5TVNHjlIqRd/UV3DPYTu3cHvEpUe7o5Bwh4Vu7hTH0Zuf4ZCEyS1mFhNMZ9W106ZBt6L
	20RB8Xpg0TlvLCtSgC3/WLDcQVnIzfolf+H+ThbN73Cw3xWwVBVspEwwDDX+9Y3pJDjdXcvSVwI
	xJ+VIOYHRhCO48sZp1E=
X-Received: by 2002:a05:6000:613:b0:437:678b:83cd with SMTP id
 ffacd0b85a97d-43779ead3ecmr3197089f8f.15.1770722105549; Tue, 10 Feb 2026
 03:15:05 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260209104407.116426-1-clamor95@gmail.com> <20260209104407.116426-4-clamor95@gmail.com>
 <20260210-sexy-grumpy-sambar-44edd2@quoll> <CAPVz0n3fizf=r58Fr4YQ6pnjHq5p-7yFz95obss6w6x0bfgnDg@mail.gmail.com>
 <d1973810-d3f5-4ed7-ba0f-6bf93c1c7f3d@kernel.org> <CAPVz0n1foyy9g7MAurSAyLCUHTzrPPu0ceqy9YpcDA9uzgjGng@mail.gmail.com>
 <cb91898e-10f1-4d64-bace-41bbed08179b@kernel.org>
In-Reply-To: <cb91898e-10f1-4d64-bace-41bbed08179b@kernel.org>
From: Svyatoslav Ryhel <clamor95@gmail.com>
Date: Tue, 10 Feb 2026 13:14:54 +0200
X-Gm-Features: AZwV_QjE-AzqhPkZWgl4Q7_crb7bzCw5fMSH51bvzWcCqyTypBK83ZwA3GpjXGc
Message-ID: <CAPVz0n0O_uSAPYFtg8s+Ni0buyGJys6d0jEMob6SNWx-aeKUEw@mail.gmail.com>
Subject: Re: [PATCH v2 3/9] dt-bindings: mfd: document ASUS Transformer EC
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Dmitry Torokhov <dmitry.torokhov@gmail.com>, Pavel Machek <pavel@kernel.org>, 
	Arnd Bergmann <arnd@arndb.de>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Sebastian Reichel <sre@kernel.org>, =?UTF-8?B?TWljaGHFgiBNaXJvc8WCYXc=?= <mirq-linux@rere.qmqm.pl>, 
	Ion Agorria <ion@agorria.com>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-input@vger.kernel.org, linux-leds@vger.kernel.org, 
	linux-pm@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-264355-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_FROM(0.00)[gmail.com];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[clamor95@gmail.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,arndb.de,linuxfoundation.org,rere.qmqm.pl,agorria.com,vger.kernel.org];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,mail.gmail.com:mid]
X-Rspamd-Queue-Id: 0614611A062
X-Rspamd-Action: no action

=D0=B2=D1=82, 10 =D0=BB=D1=8E=D1=82. 2026=E2=80=AF=D1=80. =D0=BE 13:04 Krzy=
sztof Kozlowski <krzk@kernel.org> =D0=BF=D0=B8=D1=88=D0=B5:
>
> On 10/02/2026 11:59, Svyatoslav Ryhel wrote:
> >>>>> +  asus,clear-factory-mode:
> >>>>> +    type: boolean
> >>>>> +    description: clear Factory Mode bit in EC control register
> >>>>
> >>>> Why would this be a static/fixed property over lifecycle of all devi=
ces?
> >>>>
> >>>
> >>> Specify pls.
> >>
> >> Provide rationale why we need to clear it every time, not once. Or any
> >> other rationale why we would accept that property.
> >>
> >
> > Cause it is done by original Asus code and Asus did not provide
> > schematic or any data apart from downstream source regarding this EC.
>
> So that's a no. downstream code which is poor quality, not following DT
> rules at all, is never an argument for a DT property.
>

This property indicates that this controller on every reset restores
factory bit hence it must be cleared. Bit is write only and cannot be
detected. EC remains in factory mode which blocks its functions.

> >
> >>>
> >>>>> +
> >>>>> +  battery:
> >>>>> +    type: object
> >>>>> +    $ref: /schemas/power/supply/power-supply.yaml
> >>>>> +    unevaluatedProperties: false
> >>>>> +
> >>>>> +    properties:
> >>>>> +      compatible:
> >>>>> +        const: asus,ec-battery
> >>>>> +
> >>>>> +    required:
> >>>>> +      - compatible
> >>>>> +
> >>>>> +  charger:
> >>>>> +    type: object
> >>>>> +    $ref: /schemas/power/supply/power-supply.yaml
> >>>>> +    additionalProperties: false
> >>>>> +
> >>>>> +    properties:
> >>>>> +      compatible:
> >>>>> +        const: asus,ec-charger
> >>>>> +
> >>>>> +      monitored-battery: true
> >>>>> +
> >>>>> +    required:
> >>>>> +      - compatible
> >>>>> +
> >>>>> +  keyboard-ext:
> >>>>> +    type: object
> >>>>> +    description: top row of multimedia keys
> >>>>> +    additionalProperties: false
> >>>>> +
> >>>>> +    properties:
> >>>>> +      compatible:
> >>>>> +        const: asus,ec-keys
> >>>>> +
> >>>>> +    required:
> >>>>> +      - compatible
> >>>>> +
> >>>>> +  led:
> >>>>> +    type: object
> >>>>> +    additionalProperties: false
> >>>>> +
> >>>>> +    properties:
> >>>>> +      compatible:
> >>>>> +        const: asus,ec-led
> >>>>> +
> >>>>> +    required:
> >>>>> +      - compatible
> >>>>> +
> >>>>> +  serio:
> >>>>
> >>>> All of these children are pointless - no resources. Drop all of them=
,
> >>>> it's btw explicitly documented rule in writing bindings.
> >>>>
> >>>
> >>> They are all needed to be able to disable them individually from the
> >>> device tree if needed.
> >>
> >> They should not be disabled from DT, so they are not valid here. The
> >> given EC for given device is fixed/static. Does not change.
> >>
> >
> > Have you considered a possibility that function may be
> > disabled/unrouted within the controller. By the vendor.
>
> And then it is implied by the compatible, so no need for any of that.
> Otherwise, if it is not specific per device, then specifying it for DTS
> for all devices would make no sense.
>

So you propose introduce a compatible for every single ec used in
transformers instead of simply disable unpopulated functions? And how
then battery and charger can reach monitored cell if they have no
dedicated node?

> Best regards,
> Krzysztof

