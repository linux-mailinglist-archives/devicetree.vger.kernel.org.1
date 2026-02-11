Return-Path: <devicetree+bounces-264739-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aExcIWZfjGmWlwAAu9opvQ
	(envelope-from <devicetree+bounces-264739-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 11:52:22 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CB1E123A29
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 11:52:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A34E43014964
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 10:48:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 43BC436A01A;
	Wed, 11 Feb 2026 10:48:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="KRL4uY83"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3FFC36999F
	for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 10:48:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.221.44
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770806912; cv=pass; b=rZ+qDfiWhH5MkFJMgcQT1KHSJR3kpJMoT66wgH+CqI1oIWtpxw0qbcYsTpi5zLVapgrvKuEX2GYj83OFOtnECEyPakU0a01LuJY6sgFFyYb1f05RC3PCx2ed7NgnGD2bIjp0gqwN1xObOR15tnp9+ggyLjBIYlcBOpqA9zXYwLA=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770806912; c=relaxed/simple;
	bh=goC3mIbNohckiF5ZYjrfvjxXcyQ5EbfvCJ7/+85hUuY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=NV7n2Pxk8vVTtpqBhq0S8VGXNVUPlpiqMTi4ap8QROWfwZSVWV2oF/SfADWgltpGQVU8liCqqy00MrGk+1p3GQG59gbFf2P34CBv1oxbw7f/Zfc7zmUiyHgP7kGtX1+8IsqqUfsn1O1M40NDPCGzZUERu0/RDVffmAugGmjiJ2E=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=KRL4uY83; arc=pass smtp.client-ip=209.85.221.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-43767807da6so1315467f8f.2
        for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 02:48:30 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1770806909; cv=none;
        d=google.com; s=arc-20240605;
        b=K/km8EIIfpCANHiYLAqtklTqy9Hq7/+egacipsSLRQq+Us1XMkeSWXbWRkguDb7iNT
         OkDvGaOHpp7bHbcl+rDXvd76w3RSCkPw7d+9D5ToVQ2B9wgByn0tltyi7iJ42gQt6n++
         WGTfNPdHLmDgxSo9mCBVpyaIALrOSSiRqRd82963GMTpKbxZUrv1gnxs3EWt9RF0D92F
         3NyWYrJ6qdh4wH4ya49iLf9wQjqq9x60YA8FNlyJNv6xcicaz0+vSWE48qJTWkeHbwI4
         yieMI67ltW9HX1TWmxxh8UMAgjKrrJMjcYN6r1i1RD8+9OpnxeW8MLyZeMazc+S+8RVU
         jjGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=J2gBRwJor0x8FmOh8GyzyKNT5TNM+dtqzKR3kPMSD/A=;
        fh=yJ5J49qZL0OBg9xCYTI56S4JbMGE+1TJR1g2Bt1Hqqg=;
        b=YA/2lgiIKWY7mqX29bk9wPe5itNNiue4Vz9SwWBu0DhbOMmlBqOg6+WuM8XZuGbeMM
         45yv0m+dDwHJKiZlTxY9Ae6sWA+uL4uaPx44nZyf2IjvFqE5fzrQy97rQSmbttIjpwK5
         iQemrxDFofxclR8Qm0hBcD1/wSBMl77/oSwrTD9vKFe9fld8EZnIiJ5JCtwokQmNXc36
         OVztqtxBNFY5Gb7PomSqo5JYpDTJ9us/Hyr6LwJy9RZ8TCGVhVaOa0aKizq3/VTONLWL
         QgN3nw64AazCf8nF9s+fmGv9NONHWQh1AbVbmGREeSgPHH/rUSc82Uj/0nNcoFDWUJUl
         0GqQ==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770806909; x=1771411709; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=J2gBRwJor0x8FmOh8GyzyKNT5TNM+dtqzKR3kPMSD/A=;
        b=KRL4uY83VFKh79eYwywSsflLk7UhcCxSBevCn+ooQ3zf/ZOiVyAwA7LsGqN75vtnD9
         Gp/OaQuqqH2HwbQi28TheijoUEfT5V0YzhJJL8d/yffptZ0AxU2///H7bSEX+fW5EIy+
         7nspB6NMe1SU/uBs4oBctjJqQMHnoOEOEue1qVy5Ow2IhS9mz1FKMlKz4ZOCi+hajr4t
         B9t1FLLZNpM7rsGXKfOb292YixpPnQSEzjmc/zviMEO43BR/qr9iUzn9P687zMn04ik0
         UO+6EYGsTfkfC2TjDCaLk8qVPKIGM+6GayJarcsKBzjrBP7tvAgQsKK6so+/Op5f/WKC
         9WCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770806909; x=1771411709;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=J2gBRwJor0x8FmOh8GyzyKNT5TNM+dtqzKR3kPMSD/A=;
        b=klNWUad5xkH6e+onP+k7VZQclXzxj9aXQIR+ITW5XDv6raDoBtH2NsCKhnZgDlJPbh
         bUBRtj1abyfg6RdE0bfemlr5mkkQmpFw+/14m3sTYKHud+Bg2eUrgjN5Hpj1wZcUCFmA
         HnCSkixZRcPDr/4V3cZX+Yy9/lFnAXOP1xDvLP0C49cmSQioysOYerdaOO1+Tjrkqo3I
         /ksNUtn5I+vXEA2ZjBegzs938L2A8Tf0aYBaw9nFjGWzAKBR5PQc8PggaznHzRCy2tE9
         XMi95GSn/vHKkmVx5bVVpLJa3RJupuQOqd/r1gAnqWI9TL9sT0V+O/5Hc15fUB04RnRX
         bhqw==
X-Forwarded-Encrypted: i=1; AJvYcCV/E+xOHk+rG31DpZGFq7+JZc7ZcAMwwP6ipPfvwio52ZEsCIz/FN1afxwHD0No3jbS7EQ77HDUpXS+@vger.kernel.org
X-Gm-Message-State: AOJu0YwLyD1U3DyHIDYJx/S7Jvt2KAOglfSlh8A+sNeRIaI29OtOj6hI
	TBRpbQYFrA4PSzufoQYvHKsKU66hcpmK3HJh6NHhW7Dkk1K1/i+NJrSmtJM0/w3APu+kefAe1pb
	2vV5nz7tIAHk025zs3rXLOaTnnWsMLao=
X-Gm-Gg: AZuq6aJeASeZbpSBdYn3ElZtlmQwAV9nTD9KyRjtr7zJTS0BkDghp7XJH8jbs0z8OV+
	wCylIXZAF93JgZLeLhL5V1iOQaFjwlTHF7bLmM/8eDSFMxyVvzPp8/CCdI/zCrPtLLlQq8JQyle
	AZ3S64O6zOmLKGMyzfD8w44tEEKBfBve+B5Hw59MlQYHaGAQhsIuGusWTv+esZ0fhOyK8BHxgQO
	jlRyFot+6y5Ad6cClxBgyseKKkQ9JOab0pgM0pzFRJNb44wD9AOk45fHmmPv/4kG705GOZaIcow
	gLr23SnD
X-Received: by 2002:a05:6000:3107:b0:435:9770:9eb8 with SMTP id
 ffacd0b85a97d-4362923fc0emr28798812f8f.25.1770806909126; Wed, 11 Feb 2026
 02:48:29 -0800 (PST)
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
 <dc7acd1e-91e8-492c-8665-cb680c6164fd@kernel.org> <CAPVz0n0u_0ZukcKXt0QpiyCMhWsg2VE-dE19wDCbRQvBvVOf+A@mail.gmail.com>
 <ec3b39d6-51ec-429d-b083-e5af2b4a9c65@kernel.org> <9dcc308d-f87d-4706-90ae-df3669aea224@kernel.org>
In-Reply-To: <9dcc308d-f87d-4706-90ae-df3669aea224@kernel.org>
From: Svyatoslav Ryhel <clamor95@gmail.com>
Date: Wed, 11 Feb 2026 12:48:16 +0200
X-Gm-Features: AZwV_QiRfznTx26RtaNIi_FievzuOy5_SC6hUakUwNSsN_ybyyiwQRTPmonDjZ8
Message-ID: <CAPVz0n0ULXAWnK0cJcuK-k9jO9JdqHutZ84bsgSDwGJUshgS+Q@mail.gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-264739-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 1CB1E123A29
X-Rspamd-Action: no action

=D0=B2=D1=82, 10 =D0=BB=D1=8E=D1=82. 2026=E2=80=AF=D1=80. =D0=BE 14:48 Krzy=
sztof Kozlowski <krzk@kernel.org> =D0=BF=D0=B8=D1=88=D0=B5:
>
> On 10/02/2026 12:54, Krzysztof Kozlowski wrote:
> > On 10/02/2026 12:40, Svyatoslav Ryhel wrote:
> >>>>
> >>>> So you propose introduce a compatible for every single ec used in
> >>>> transformers instead of simply disable unpopulated functions? And ho=
w
> >>>> then battery and charger can reach monitored cell if they have no
> >>>> dedicated node?
> >>>
> >>> Just like for other bindings for nodes without resources, fold into
> >>> parent. This is already explained in writing bindings, so you could h=
ave
> >>> just read that. I will pass with answering more questions till you re=
ad
> >>> that doc.
> >>>
> >>
> >> Unfolding asus,ec-pad and asus,ec-dock will result in this list:
> >>
> >> asus,tf101-dock-ec
> >> asus,tf101g-dock-ec
> >> asus,sl101-pad-ec
> >> asus,tf201-pad-ec
> >> asus,tf201-dock-ec
> >> asus,tf300t-pad-ec
> >> asus,tf300t-dock-ec
> >> asus,tf300tg-pad-ec
> >> asus,tf300tg-dock-ec
> >> asus,tf300tl-pad-ec
> >> asus,tf300tl-dock-ec
> >> asus,tf600t-pad-ec
> >> asus,tf700t-pad-ec
> >> asus,tf700t-dock-ec
> >> asus,tf701t-pad-ec
> >> asus,p1801-t-pad-ec
> >>
> >> with minor variations in populated cells. Is this acceptible?
> >
> >
> > Yes, this looks correct.
>
> Update: with fallback-expressed compatibility when same interface and/or
> superset of features.
>

I am removing separate DockRAM and merging it into this schema hence,
it should look like this

  reg:
    description:
      The ASUS Transformer EC has a main I2C address and an associated
      DockRAM device, which provides power-related functions for the
      embedded controller. Both addresses are required for operation.
    minItems: 2

  reg-names:
    items:
      - const: ec
      - const: dockram

How should I organize amount of regs? Would this example be acceptable
with minItems: 2 since EC requires both to work or should I set is as
items list or minItems: 2 maxItems: 2? Thank you.

> Best regards,
> Krzysztof

