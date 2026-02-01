Return-Path: <devicetree+bounces-261533-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id dgvTBq/7fmk3hwIAu9opvQ
	(envelope-from <devicetree+bounces-261533-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 01 Feb 2026 08:07:27 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 5343EC510E
	for <lists+devicetree@lfdr.de>; Sun, 01 Feb 2026 08:07:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id BB5B630115B9
	for <lists+devicetree@lfdr.de>; Sun,  1 Feb 2026 07:07:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AA5542E2DF2;
	Sun,  1 Feb 2026 07:07:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="jIY8ZJP3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B999E3EBF29
	for <devicetree@vger.kernel.org>; Sun,  1 Feb 2026 07:07:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.128.48
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769929642; cv=pass; b=P39O47uEsFOGAvR1D5OI/bi0yav3Rzjz6dHl+7tSt6iwMgZsTp2tErEtF1PoEyz4k4w1tzGwy+PHI+3dZL4nZo1djkpkUBXP+exB74RlFIgY+PRRXW8Pnp5bSqnKMQNQLT0DnJat5XHiW3d3dzruolOEf0hsHiPdJqsDOilT9ww=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769929642; c=relaxed/simple;
	bh=m43UbkmbLBc3R/MOJSbzoCwEFQ3lxNZqdfln+hRLhHI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=X9sXreIwsqCVSkzQ4oLR4JudSRiWaj3ZifwxzY6YE3DzguVFqSa7Bv+TSUbGJVkkq3N/6rw9GB6HO6SFZ5l3dMBR0vu9LZUnP5NZbgJajJVheibdzB27qtw3wS3HLj9DBDN3BdoDGPMZ8UESoMYzeTlRtK1BSYJ1gNlqtNn4b/I=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=jIY8ZJP3; arc=pass smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-4807068eacbso28369815e9.2
        for <devicetree@vger.kernel.org>; Sat, 31 Jan 2026 23:07:20 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1769929639; cv=none;
        d=google.com; s=arc-20240605;
        b=G2Uv0R/U1opv6XVBGmroEpjXe/2sWlkd70mAAx057de75yQR8+fTGmsLktp4NzOSEZ
         sIb2JJOXh2ytKgzKDo6ygON8HLSx5OsPaSWu57lDnMT6rZ8m9q7ALhpteUFBMB7MnAoo
         LV5fZyHjxDWkGp0hXhvdRG1X8VXB8QXKuuyaVGfYhEYWDeKgK1bdzdI1AH0Q6jShm/93
         vxkHhX8bkHLYpbT5zNFOsEIdZ+HTS1Gne9P1nEGX1aZ+0UMs8dsaxboVYRumhkTI09iB
         WLV9w3ad6Rr+UlMd1ncrOZdxPSM4XzyASknW1Q/l0pYRGPFOL4gtB3XJma3HgRmuFWwR
         WJJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=VgA1XtNopgDhPd28c1FlWpyjNQUNZlwtx4L9F82W03M=;
        fh=djdHRE183FqJFOZmt+7Izs91IBIP9LoHCI7N5aVdq8M=;
        b=SC7RK4/fqS1DG3jPLf98kTHT3Chjq1JivGyD6vI85CrwgFXEjfhCXtTfPF1p02IVzG
         8YBhQSh9xOGtyN5iwW/vFb8/HUJXKG3qOoLtZHkwkfjT5ZYt/yxXEW5xhm7QQHdh1Zse
         dknntsJ0ABk6sNIrn67ED3jTqkS9uRNQFm1K6ncPRioB9Ni/mLduBJHPzABPBKgeEsxt
         3wxst4cleBsQYqy1Uq4e3ivfT7yJeJJSfBD4RWsX97RW850v/MbPQ5JSdazIVxNBg4iG
         vIsZRMRvY7Yegh9JcWzGyvyokW5a9+cNQmVwl5et1YEjX4WlKBGZ/8Tdww1NFX6mtxO9
         sk0Q==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769929639; x=1770534439; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VgA1XtNopgDhPd28c1FlWpyjNQUNZlwtx4L9F82W03M=;
        b=jIY8ZJP3nRcpBxAvG6e4g5y/0jzG2yQja7zNQQwx0ztOh3n4P49jiYL9GbTx11wHjD
         hbS0CAjHHYArQfTGirQGaM1u6uNbwpcv7QK0M/Onoq7aQBcS01uHg46DLIVPiRd5oY8u
         1q1UPrgCB9TwrMJ12g73KCeA0d57kCCi6wVONFCAnkHGzYYWF11m8BogQDZGrj4Udn5P
         o9m8EY3WyadvMbmsRKnRC0X6VO72Es9JRQNIxim/MRb/3v91ZTssIO3WD2igXDg6sWP8
         sXGtjy+Oyx7SfzY+Q4pCHPjCqdHkmxBsJndOJQvTagzfa2DQwyBGxnr0eNVC/4UHXSJB
         s+Pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769929639; x=1770534439;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=VgA1XtNopgDhPd28c1FlWpyjNQUNZlwtx4L9F82W03M=;
        b=CPOTZxRGhvVrz9yCg0o9nxtkLXpUo0+VZ9OTLvr5B+YSafcwUXP3K8PvHtPTB+Uzep
         vUAWE3Rvw4DsJN0vcBIkgVXNBUYBRRPPRUwiN0Wua7MHWXcjy/3qiZ2d5+FMmOr/jwul
         ST328umvivzd+CWRqMoDahen6a2y4fZkWhQKjFqvWetj7bzf3a+WAqKLFDdl755gKBk9
         WfYRG/XUpmnFiKWRvzK1TadONEnBBg3sH956pYJ7gTpCvVZK/puW4lzckqh3I3DxbFyj
         jE4HbQUGEzm/pyvbAJA7fngYIORJZilWga4+F4q2IkFW/RJzw81R/8z0l/T4BcEjOMt3
         pqsw==
X-Forwarded-Encrypted: i=1; AJvYcCVk3FADBj1aTWZSbPsgvZPB8pi7zSjql1LqGnhXooQ+C+7Ptf00Q1N7RRo+r5iezF6Jt0+N2ZA8MSjv@vger.kernel.org
X-Gm-Message-State: AOJu0Ywc1fvtyV5vGJuFuQqXWjmN3O3LQFapgBwy9y84mefatF5SBCGP
	H3WVu3p5eXnn/S8g7v1WfJhSOAIQneQPLxBAmTpcDpnqk840EsfW7T1OozDCfVzwqdfdmb3zKhy
	huA3DsTa/1loGHiBEXe+Etglqr20IwWE=
X-Gm-Gg: AZuq6aLzLJCSPmKnN2fYFwqj8qiVdeZ7XxkcMUeZvQn5rKNgt9hf/v2myXuNc6qrtkd
	LMc0EMq7MhMMoaaZSW6mW9CkrejnCU4x9UVzZF4f78j8q2axWrEh0eK9QQ455C3xfSNx8eowEvw
	vjreuDkqd4lQB1CXT9/pjzC1PtBjIc+6ZoYYzEdJqN/xgqstNOkc++i7HtPovHziADfLRw6TguR
	a9fyhZgX7syt7dkbSb9bY134HGXXS/aGfyfX0BnpSzofuNtY0JDXE8Df3G4rDwNXBDLWMxZ
X-Received: by 2002:a05:600c:6092:b0:47a:7fdd:2906 with SMTP id
 5b1f17b1804b1-482db45441fmr96523965e9.12.1769929638889; Sat, 31 Jan 2026
 23:07:18 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260125134302.45958-1-clamor95@gmail.com> <20260125134302.45958-8-clamor95@gmail.com>
 <8bd89524-dfc3-43b0-b0f2-cdb1cd51e1ac@baylibre.com>
In-Reply-To: <8bd89524-dfc3-43b0-b0f2-cdb1cd51e1ac@baylibre.com>
From: Svyatoslav Ryhel <clamor95@gmail.com>
Date: Sun, 1 Feb 2026 09:07:07 +0200
X-Gm-Features: AZwV_QgiEH1CnR4Y5eJqYT3-6LdT1ghmK5ngGD3UdwSwjKt6ss6U4z-A2BxtD6Q
Message-ID: <CAPVz0n25ukBJ6=hmmR9nd4MBoPkHaHQ+ZHMXYxghYZdkB28_sg@mail.gmail.com>
Subject: Re: [PATCH v1 07/10] dt-bindings: input: cpcap-pwrbutton: convert to schema
To: David Lechner <dlechner@baylibre.com>
Cc: Jonathan Cameron <jic23@kernel.org>, =?UTF-8?B?TnVubyBTw6E=?= <nuno.sa@analog.com>, 
	Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Dmitry Torokhov <dmitry.torokhov@gmail.com>, Lee Jones <lee@kernel.org>, 
	Pavel Machek <pavel@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
	Alexandre Belloni <alexandre.belloni@bootlin.com>, Dixit Parmar <dixitparmar19@gmail.com>, 
	Tony Lindgren <tony@atomide.com>, linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-input@vger.kernel.org, 
	linux-leds@vger.kernel.org, linux-rtc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-261533-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[21];
	FREEMAIL_CC(0.00)[kernel.org,analog.com,gmail.com,bootlin.com,atomide.com,vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[clamor95@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[devicetree.org:url,mail.gmail.com:mid,baylibre.com:email]
X-Rspamd-Queue-Id: 5343EC510E
X-Rspamd-Action: no action

=D1=81=D0=B1, 31 =D1=81=D1=96=D1=87. 2026=E2=80=AF=D1=80. =D0=BE 22:02 Davi=
d Lechner <dlechner@baylibre.com> =D0=BF=D0=B8=D1=88=D0=B5:
>
> On 1/25/26 7:42 AM, Svyatoslav Ryhel wrote:
> > Convert power button devicetree bindings for the Motorola CPCAP MFD fro=
m
> > TXT to YAML format. This patch does not change any functionality; the
> > bindings remain the same.
> >
> > Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
> > ---
> >  .../bindings/input/cpcap-pwrbutton.txt        | 20 ------------
> >  .../input/motorola,cpcap-pwrbutton.yaml       | 32 +++++++++++++++++++
> >  2 files changed, 32 insertions(+), 20 deletions(-)
> >  delete mode 100644 Documentation/devicetree/bindings/input/cpcap-pwrbu=
tton.txt
> >  create mode 100644 Documentation/devicetree/bindings/input/motorola,cp=
cap-pwrbutton.yaml
> >
> > diff --git a/Documentation/devicetree/bindings/input/cpcap-pwrbutton.tx=
t b/Documentation/devicetree/bindings/input/cpcap-pwrbutton.txt
> > deleted file mode 100644
> > index 0dd0076daf71..000000000000
> > --- a/Documentation/devicetree/bindings/input/cpcap-pwrbutton.txt
> > +++ /dev/null
> > @@ -1,20 +0,0 @@
> > -Motorola CPCAP on key
> > -
> > -This module is part of the CPCAP. For more details about the whole
> > -chip see Documentation/devicetree/bindings/mfd/motorola-cpcap.txt.
> > -
> > -This module provides a simple power button event via an Interrupt.
> > -
> > -Required properties:
> > -- compatible: should be one of the following
> > -   - "motorola,cpcap-pwrbutton"
> > -- interrupts: irq specifier for CPCAP's ON IRQ
> > -
> > -Example:
> > -
> > -&cpcap {
> > -     cpcap_pwrbutton: pwrbutton {
> > -             compatible =3D "motorola,cpcap-pwrbutton";
> > -             interrupts =3D <23 IRQ_TYPE_NONE>;
> > -     };
> > -};
> > diff --git a/Documentation/devicetree/bindings/input/motorola,cpcap-pwr=
button.yaml b/Documentation/devicetree/bindings/input/motorola,cpcap-pwrbut=
ton.yaml
> > new file mode 100644
> > index 000000000000..643f6b2b1f13
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/input/motorola,cpcap-pwrbutton.=
yaml
> > @@ -0,0 +1,32 @@
> > +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/input/motorola,cpcap-pwrbutton.yaml=
#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Motorola CPCAP PMIC power key
> > +
> > +maintainers:
> > +  - Svyatoslav Ryhel <clamor95@gmail.com>
> > +
> > +description:
> > +  This module is part of the Motorola CPCAP MFD device. For more detai=
ls
> > +  see Documentation/devicetree/bindings/mfd/motorola,cpcap.yaml. The
> > +  power key is represented as a sub-node of the PMIC node on the devic=
e
> > +  tree.
> > +
> > +properties:
> > +  compatible:
> > +    const: motorola,cpcap-pwrbutton
> > +
> > +  interrupts:
> > +    minItems: 1
>
> Should this be maxItems: 1?
>
> > +    description: CPCAP's ON interrupt
>
> Or I suppose:
>
>   items:
>     - description: ...
>

Both options are perfectly fine for me, and I lean towards using
"items: desc" but I would like to hear what schema maintainers would
say, which layout is preferred in this case.

>
> > +
> > +required:
> > +  - compatible
> > +  - interrupts
> > +
> > +additionalProperties: false
> > +
>
> example: ...
>
> > +...
>

