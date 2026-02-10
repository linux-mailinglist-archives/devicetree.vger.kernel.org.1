Return-Path: <devicetree+bounces-264380-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MNOKF1YZi2ljPgAAu9opvQ
	(envelope-from <devicetree+bounces-264380-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 12:41:10 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D6DD511A583
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 12:41:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 346D3303749D
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 11:40:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2FCBE31B110;
	Tue, 10 Feb 2026 11:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="bFK1gLAO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AFF0231A576
	for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 11:40:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.221.51
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770723633; cv=pass; b=rVRuTaRK6WOI+emoJPv4rTq+s54erWbhHvXkzUQdm6/1KekIaH1tD0bpKqQ/G/XUoJgwhhWtIN2nR5coCmYLJraH83klGf4rbeIKe0EB4S0GsFcnTb9ksrUcFVfdUxN8jUMR7DD0erpuMF59QA7BUv1EXAUe1u2O59+jGB8zajs=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770723633; c=relaxed/simple;
	bh=6/FnaCDrg0Je5LmR0DbI9pHLZ0ePao0o0SrXDi9lfBk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=eChJZVsJPHFMQxqOT5RyCYIezOqEKeqi57DNvCMlURd+FFmYL1xkaY2BIZCY/WYf0m2TFz4WYftIZ1S8hrrLUTbXRaCrXRYVaVO6xRRvrAMCm/fALi72QQ22PiAQY0iFLuKMoexF8PG6TgzmQRfn+M8yvCV+qp5XaQpNGFGrE24=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=bFK1gLAO; arc=pass smtp.client-ip=209.85.221.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-4362c635319so722090f8f.2
        for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 03:40:31 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1770723630; cv=none;
        d=google.com; s=arc-20240605;
        b=c9hiU62Ew5n4jbfCsgBNb/K39/sGmwdUk0c9vKAaCGXE9cV/bkPD49a8Y33IElI1UV
         AJqGL56YzvBrfKGJ1aLbORu1yH0+ATmsud7LuvhMrc/ll8mF/U4F+h0p/7Nljr5ErAjU
         GPY1xVQsLb2P1F2jRUGzlM6VYUKuDOLFMMnqErCwLBHCaLJwtVaPhkApFHfI7x6WTxxA
         m86aXpOWq152gcokLMWcLs/cVQiMg5r/iUTud87u0l8WnaRrQyHVFAjbCRwqHpKkEdse
         d7BOBxo2Wd9OWcPNJb2nxp4ZhVCD15dNk69RsQPRf4eVlhuiZWJLVuZsYt6TNh/QgNcU
         iiXQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=6R3QvEhmtCk9xuXNSfNCHPXokJj1HMXLUrDoDJsbjjM=;
        fh=oQ/W8ezVtKCc9bUq5TS8aiNVPHSPmUAlgYAbfj0SLUk=;
        b=lJLlsvIZihQfY0EVbp0KVMvhNYpiIbfL1TItMk1IuJ3qlJjb7d546o9DiaJndIfBkp
         Ips1crSzaDiQJwRWMVvu7JI7XwdRejicF6Hi1VI/eHllnU9EKDRSBO1OpAjV+MRK4UVL
         7ME2sLTMfqHP10KqIDowxYdi+6KZz/DmLd0hN/drhpIzJd9oROLHSs+gaXUT5TO9C3jG
         mJkJ8I7aHcAwrCqQk4kBNAZVKvV+K+9TI2ilIq+gxAIIdRdzbs0I5GxeIDEITZ4iksIx
         cmYjMRc0629or81O+G7Am1llPazkENGU9KBCsJPI5JJlMjs0TMRCRL9nmXm0v3wX/qsA
         Sdog==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770723630; x=1771328430; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6R3QvEhmtCk9xuXNSfNCHPXokJj1HMXLUrDoDJsbjjM=;
        b=bFK1gLAORXD86WhbOvJtdsyqyLiPceDOd8Xzaj1QbHwim3MON6hwIEZADsC8rb0b6+
         tpYqfPJBhB/xTXqXRK8YhV2macbt7xQiGhkRJU9TvQ8Uw7fYvdMqL3w0ktdKN+dI82D8
         Gw0bGj4rgBMs3CmpgiTnXc+0UjmlQ2e4O7wXW5PgqIKs3YoiX8Z1KZW2EvmVUp1q/h/+
         Y29WNpMgZKDBbP5uAezhqvqS8EUuUMy0vkqsI15Ws/LWtNuKBPA9hnpcSX8H7nZtXHDK
         WhdbuP9qEg1WgY7ssOfcMEoCDcQ5pkPxpXDdv+PHaU6ZQz/6XhU9NJXH09NXweYpO0mH
         5r0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770723630; x=1771328430;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=6R3QvEhmtCk9xuXNSfNCHPXokJj1HMXLUrDoDJsbjjM=;
        b=tDNo8V1IRuOmEnYXdtGQbz0YetcMGVuvz55HgWGLVQXT2/BguOmsqxJIRVxl6t1Mtr
         tuY14Jnj5FfbgEF7HZv9sq4nvh9OIh6l80ZbvFsGV6nZe7Tiyw3LcGOPSWBc+Dwvc6S+
         Cmv23uhOLR9s2QhEaDWFkKKGWSMPxnYAibzMqCs0OkcYG1hZ43gRdq2Lu0yG6Iw1F9S4
         YPP4e9/t4sNl+1Lessw12RTCKxBhOm5VsN7d7vii2Q6wMAB8n1pXpiG9hebGH9KyJKfb
         Uwu4eFt0a/W1KG5Ir3TxBgckYg/qzoYoBYUrMuMfLKdhLu9kFpaphMUjAi/N/5yvJBvN
         L6Bg==
X-Forwarded-Encrypted: i=1; AJvYcCWIVeQ5Dsijimj2ZRX1JBcRfFzLRaisZDJR9WHAZLbeAsN1KFdK8ygSaBTfZ3fvPR8rSfdKV+fgGHLm@vger.kernel.org
X-Gm-Message-State: AOJu0YyD7rszCqKuhZ5L4xuI8CCGjL4Gyqo5FfqAYd68que4QTRBRMRj
	A+/T68FTTKsZ5J7h+MSsiBL9HtM6mPAH2oygFpoA95YiyCgnZzzXqIO/teRJZU7xhmdHTepq/xC
	tXERPYyP1YGPlfqYeLQRwAZXqGYap7s0=
X-Gm-Gg: AZuq6aI26M0l3e99Jzq9//4U7lfjAzkmuL7a7rQYF/3N/qGpAkDorkYybTNuIcAj8/8
	NS2/ZCXOIQA43I3TwOe2pkugmbjD9HwLrwON+BZKl/MTRJCeYMsAHUTYCRVxg4GQPoKj8eL2aDc
	S1Tcm6Ghtgh0Hiai0YDdNf+H0h72sVQAYOiSmqsWBFcNzUEeM5ZePIZkjYp2sRgCmTuYgoGEgNW
	T7jP1fvDz8pfr0pNHVXK7i5iyJHPtUWRv5Y/+Jo7DaCc/Gd7TUuBr+jNA1AtolBcsdCrY6uaogO
	8cVjxCpg
X-Received: by 2002:a5d:5690:0:b0:436:3563:499c with SMTP id
 ffacd0b85a97d-43635634ba8mr10638942f8f.8.1770723629941; Tue, 10 Feb 2026
 03:40:29 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260209104407.116426-1-clamor95@gmail.com> <20260209104407.116426-4-clamor95@gmail.com>
 <20260210-sexy-grumpy-sambar-44edd2@quoll> <CAPVz0n3fizf=r58Fr4YQ6pnjHq5p-7yFz95obss6w6x0bfgnDg@mail.gmail.com>
 <d1973810-d3f5-4ed7-ba0f-6bf93c1c7f3d@kernel.org> <CAPVz0n1foyy9g7MAurSAyLCUHTzrPPu0ceqy9YpcDA9uzgjGng@mail.gmail.com>
 <cb91898e-10f1-4d64-bace-41bbed08179b@kernel.org> <CAPVz0n0O_uSAPYFtg8s+Ni0buyGJys6d0jEMob6SNWx-aeKUEw@mail.gmail.com>
 <dc7acd1e-91e8-492c-8665-cb680c6164fd@kernel.org>
In-Reply-To: <dc7acd1e-91e8-492c-8665-cb680c6164fd@kernel.org>
From: Svyatoslav Ryhel <clamor95@gmail.com>
Date: Tue, 10 Feb 2026 13:40:18 +0200
X-Gm-Features: AZwV_Qj_PU3fakrGR59GUwZHjil71UqQv1RxthP-ur70Fb66TccCFSfBCI4qmfU
Message-ID: <CAPVz0n0u_0ZukcKXt0QpiyCMhWsg2VE-dE19wDCbRQvBvVOf+A@mail.gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-264380-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: D6DD511A583
X-Rspamd-Action: no action

=D0=B2=D1=82, 10 =D0=BB=D1=8E=D1=82. 2026=E2=80=AF=D1=80. =D0=BE 13:24 Krzy=
sztof Kozlowski <krzk@kernel.org> =D0=BF=D0=B8=D1=88=D0=B5:
>
> On 10/02/2026 12:14, Svyatoslav Ryhel wrote:
> > =D0=B2=D1=82, 10 =D0=BB=D1=8E=D1=82. 2026=E2=80=AF=D1=80. =D0=BE 13:04 =
Krzysztof Kozlowski <krzk@kernel.org> =D0=BF=D0=B8=D1=88=D0=B5:
> >>
> >> On 10/02/2026 11:59, Svyatoslav Ryhel wrote:
> >>>>>>> +  asus,clear-factory-mode:
> >>>>>>> +    type: boolean
> >>>>>>> +    description: clear Factory Mode bit in EC control register
> >>>>>>
> >>>>>> Why would this be a static/fixed property over lifecycle of all de=
vices?
> >>>>>>
> >>>>>
> >>>>> Specify pls.
> >>>>
> >>>> Provide rationale why we need to clear it every time, not once. Or a=
ny
> >>>> other rationale why we would accept that property.
> >>>>
> >>>
> >>> Cause it is done by original Asus code and Asus did not provide
> >>> schematic or any data apart from downstream source regarding this EC.
> >>
> >> So that's a no. downstream code which is poor quality, not following D=
T
> >> rules at all, is never an argument for a DT property.
> >>
> >
> > This property indicates that this controller on every reset restores
>
> Implied by compatible then and you can drop the property.
>
> > factory bit hence it must be cleared. Bit is write only and cannot be
> > detected. EC remains in factory mode which blocks its functions.
> >
> >>>
> >>>>>
> >>>>>>> +
> >>>>>>> +  battery:
> >>>>>>> +    type: object
> >>>>>>> +    $ref: /schemas/power/supply/power-supply.yaml
> >>>>>>> +    unevaluatedProperties: false
> >>>>>>> +
> >>>>>>> +    properties:
> >>>>>>> +      compatible:
> >>>>>>> +        const: asus,ec-battery
> >>>>>>> +
> >>>>>>> +    required:
> >>>>>>> +      - compatible
> >>>>>>> +
> >>>>>>> +  charger:
> >>>>>>> +    type: object
> >>>>>>> +    $ref: /schemas/power/supply/power-supply.yaml
> >>>>>>> +    additionalProperties: false
> >>>>>>> +
> >>>>>>> +    properties:
> >>>>>>> +      compatible:
> >>>>>>> +        const: asus,ec-charger
> >>>>>>> +
> >>>>>>> +      monitored-battery: true
> >>>>>>> +
> >>>>>>> +    required:
> >>>>>>> +      - compatible
> >>>>>>> +
> >>>>>>> +  keyboard-ext:
> >>>>>>> +    type: object
> >>>>>>> +    description: top row of multimedia keys
> >>>>>>> +    additionalProperties: false
> >>>>>>> +
> >>>>>>> +    properties:
> >>>>>>> +      compatible:
> >>>>>>> +        const: asus,ec-keys
> >>>>>>> +
> >>>>>>> +    required:
> >>>>>>> +      - compatible
> >>>>>>> +
> >>>>>>> +  led:
> >>>>>>> +    type: object
> >>>>>>> +    additionalProperties: false
> >>>>>>> +
> >>>>>>> +    properties:
> >>>>>>> +      compatible:
> >>>>>>> +        const: asus,ec-led
> >>>>>>> +
> >>>>>>> +    required:
> >>>>>>> +      - compatible
> >>>>>>> +
> >>>>>>> +  serio:
> >>>>>>
> >>>>>> All of these children are pointless - no resources. Drop all of th=
em,
> >>>>>> it's btw explicitly documented rule in writing bindings.
> >>>>>>
> >>>>>
> >>>>> They are all needed to be able to disable them individually from th=
e
> >>>>> device tree if needed.
> >>>>
> >>>> They should not be disabled from DT, so they are not valid here. The
> >>>> given EC for given device is fixed/static. Does not change.
> >>>>
> >>>
> >>> Have you considered a possibility that function may be
> >>> disabled/unrouted within the controller. By the vendor.
> >>
> >> And then it is implied by the compatible, so no need for any of that.
> >> Otherwise, if it is not specific per device, then specifying it for DT=
S
> >> for all devices would make no sense.
> >>
> >
> > So you propose introduce a compatible for every single ec used in
> > transformers instead of simply disable unpopulated functions? And how
> > then battery and charger can reach monitored cell if they have no
> > dedicated node?
>
> Just like for other bindings for nodes without resources, fold into
> parent. This is already explained in writing bindings, so you could have
> just read that. I will pass with answering more questions till you read
> that doc.
>

Unfolding asus,ec-pad and asus,ec-dock will result in this list:

asus,tf101-dock-ec
asus,tf101g-dock-ec
asus,sl101-pad-ec
asus,tf201-pad-ec
asus,tf201-dock-ec
asus,tf300t-pad-ec
asus,tf300t-dock-ec
asus,tf300tg-pad-ec
asus,tf300tg-dock-ec
asus,tf300tl-pad-ec
asus,tf300tl-dock-ec
asus,tf600t-pad-ec
asus,tf700t-pad-ec
asus,tf700t-dock-ec
asus,tf701t-pad-ec
asus,p1801-t-pad-ec

with minor variations in populated cells. Is this acceptible?

>
> Best regards,
> Krzysztof

