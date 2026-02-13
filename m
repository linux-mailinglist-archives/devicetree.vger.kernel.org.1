Return-Path: <devicetree+bounces-265291-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QBbfJOXfjmluFgEAu9opvQ
	(envelope-from <devicetree+bounces-265291-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 09:25:09 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id EC588133FC8
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 09:25:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id DFB723011A75
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 08:25:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B374A325484;
	Fri, 13 Feb 2026 08:25:05 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f179.google.com (mail-vk1-f179.google.com [209.85.221.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32811324718
	for <devicetree@vger.kernel.org>; Fri, 13 Feb 2026 08:25:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770971105; cv=none; b=ZAZAJxAxiNd6XrlrQsg/Z2Uek9EE0h4WQr5rNgaPi8KN6uSW6A3IQ/D9DjJfWtRoXSifapr7l9C+GZekxPmr5RMnFIbPAmMUEZmusICsMG8rbYin/iUVnbU8H79itjTuePiI7jRYfkWSegL1gxM9lEZHXkK5eIWjcyCUSW/JuPg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770971105; c=relaxed/simple;
	bh=mVhhZ2s7kYJsSiv0eIBW+57cX6b0j781fbzS5qZx6XM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ThKbTmf38fxCna0VrgCLjqZnVNa4nmBvTxuhNL/q/nN+SOzQQcrjkCWGHcukS7soiqdLgBtcct9JMIH2KHg4DS579g2+ztMYvUXebN5ZLGoFZvBmIQxPgAUxuRljau5QgGreB+ytpQYj8rphHsSKq7hfP+Lib8AS9EaztSbdqaE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f179.google.com with SMTP id 71dfb90a1353d-567606e16e7so534903e0c.3
        for <devicetree@vger.kernel.org>; Fri, 13 Feb 2026 00:25:03 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770971103; x=1771575903;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=+kTjtkfSYQOjDBBpn/jYinopU/8qU/hKdS39gFwz0kg=;
        b=DqizPcoQRnTFPrYj6EoFaW91OSHTSH8tiBKFnlCIv8T3EGUgq7oOh5PbsvyTSUPbYQ
         rcSBKsKK0karjX3plMY9OhAbd/dUBiS7I1SfoFN376jwjsUlP07KXc+iivumIM6epX1r
         KHIsA5UZRLSloyDycJYx2e829ju/jUC2XWw5OebspsTDb16RCanqDmCpEbaJdZAWuy1m
         EQFiH7YP71m+YyuPtRba97f9Mdt30DD7tstLORrYmzyj4/+ekn1vEsGJPdCKJXd65ZI+
         1ar4kaBTMhoofKU8Ckjldf17Mb8UYT+UoO2yqjhD1qlVuz0Fp2JejxKTVWVVXN6c3IST
         SeTA==
X-Forwarded-Encrypted: i=1; AJvYcCU0cNwgiJwxhBbdU6iSJyV3hEyCunmWsHd9c3p8u16u6y4kdgpOUYeJR3zicKicc4Flw1b3ya/rCE0H@vger.kernel.org
X-Gm-Message-State: AOJu0YwH76+mJ1P/xBExDgkYZYthwuvZNSwbANhxLa8BNNmj1020q7h0
	WyI23IxUj1yeHOLxBC/lJCnRagevQI6lbVpCiVLRK7D9ehNuVjqUy42HmVceo4KI
X-Gm-Gg: AZuq6aLTzx8q80I5gwVbY2nqL7iufJQlgFGhN5PQ924mxMWEf1XjKhTlDFun4H9MXH6
	qapSIyysJ2CXLjQUNCyvDHMrowu4w0mUwAy1eHJ6CrA03bE49QyNdGrKlG4EYk1pu6TT6q1agBQ
	w6x/qgnu4pI6GGelZra6CcTkYo7BTCxgRlC/0OOKx1NqjUQxBOX1y9Oms63C95is+rM3ytlyWST
	GFJUd2TDF/o+nlITOa+7uGx4oIZdFdA9susxeNeI9BrB3ojjMHxKfPQBHEJ9qmeXQWdcx3bHLv0
	PVvAKDJ0bxz13OugAXDlnPBGLitz0LAb65VRTiNByAWgKToFLwW4F3Gz30jwx5irmUcQHG53/LE
	bKiCNPHTtFtUZt/0OI9LeHQ7cDng1oZ+qOlzEZ4XrzVzKxAbzv5NJbZeSCCWRqd5zyRSxE1CEEV
	X6pv4GvxqCya7rQHbDXfZuoNsyKbZuikWXiffdD+6t3My9Bg7Resnb8Q8FDSfo
X-Received: by 2002:a05:6122:889:b0:567:4616:1ddf with SMTP id 71dfb90a1353d-5676aa7acd3mr259291e0c.12.1770971103122;
        Fri, 13 Feb 2026 00:25:03 -0800 (PST)
Received: from mail-vs1-f41.google.com (mail-vs1-f41.google.com. [209.85.217.41])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-5674c20a659sm2929721e0c.11.2026.02.13.00.25.02
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Feb 2026 00:25:02 -0800 (PST)
Received: by mail-vs1-f41.google.com with SMTP id ada2fe7eead31-5fe086fb0baso513690137.3
        for <devicetree@vger.kernel.org>; Fri, 13 Feb 2026 00:25:02 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCXPEqFQ7LeQu8Gfd40lFvp5eWdDNkCqzMy+tFxZyvr2M9pspRRa9t51rI6UlnpxJQYNdzGmpObFOxFg@vger.kernel.org
X-Received: by 2002:a05:6102:e0b:b0:5fd:a537:a777 with SMTP id
 ada2fe7eead31-5fe1acd55a1mr304471137.10.1770971101799; Fri, 13 Feb 2026
 00:25:01 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260211081355.3028947-1-james.hilliard1@gmail.com>
 <338e6575-ec44-4179-94af-9086a7ca79ac@kernel.org> <92359c6d-06ac-4f8d-baa5-6fa45a536455@kernel.org>
 <CADvTj4q74H__JZftOiXkdsY3+E_Xmcx6Y6i70RQDJ0K09=XOHQ@mail.gmail.com>
 <30026ed7-cd19-4be2-adbb-e8bb155a75b8@kernel.org> <CADvTj4oBtO0Yhib1rE8QQwgtJvy-x_hK46C63mjVAydtxHOV8g@mail.gmail.com>
 <20260212195423.GA787785-robh@kernel.org> <CADvTj4rPq8D5piqEijCdAjkWmZtq3Bi_Kxv-4F0aU4xi_O5WKg@mail.gmail.com>
In-Reply-To: <CADvTj4rPq8D5piqEijCdAjkWmZtq3Bi_Kxv-4F0aU4xi_O5WKg@mail.gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 13 Feb 2026 09:24:50 +0100
X-Gmail-Original-Message-ID: <CAMuHMdXmMVgPJv=HhkfttiRnSwFC6c2PnFjYwmL2hu3ikv+t3g@mail.gmail.com>
X-Gm-Features: AZwV_Qjoxr9Az1zq4BpOrNfOl9VLUp7v3Npa9ywvF4dfcw-40OWhLtOEdmQ9eKI
Message-ID: <CAMuHMdXmMVgPJv=HhkfttiRnSwFC6c2PnFjYwmL2hu3ikv+t3g@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] dt-bindings: gpio: add gpio-aggregator binding
To: James Hilliard <james.hilliard1@gmail.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>, linux-gpio@vger.kernel.org, 
	Linus Walleij <linusw@kernel.org>, Bartosz Golaszewski <brgl@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Alexander Stein <linux@ew.tq-group.com>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Herve Codina <herve.codina@bootlin.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-265291-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[linux-m68k.org];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[geert@linux-m68k.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_COUNT_FIVE(0.00)[6];
	TAGGED_RCPT(0.00)[devicetree,dt];
	R_DKIM_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: EC588133FC8
X-Rspamd-Action: no action

Hi James,

On Thu, 12 Feb 2026 at 22:22, James Hilliard <james.hilliard1@gmail.com> wr=
ote:
> On Thu, Feb 12, 2026 at 12:54=E2=80=AFPM Rob Herring <robh@kernel.org> wr=
ote:
> > Humm, peripheral boards! So there's a connector. You need a connector
> > binding. And the one solved binding for such a thing is GPIO! The
> > gpio-map property lets you remap GPIOs from one provider (the connector=
)
> > to a parent provider (soc_gpio). It would look something like this:
>
> Well...some GPIOs are wired to peripheral board connectors...but
> some are wired to things like built in LEDs and a few different
> on-controller components as well which vary by controller hardware
> revisions.

Different controller hardware revisions with different wiring mean
different DTS/DTB files anyway, right?

> This gpio-map feature doesn't exist in the mainline kernel does it?

Yes it is.

> In my device everything I'm wanting to name is off the same gpiochip.

That would depend on the SoC: some SoCs have a single bank,
others have multiple banks. The more generic is supported, the better.

> > conn_gpio: connector {
> >         #gpio-cells =3D <1>;
> >         gpio-map =3D <0 &soc_gpio 3>,
> >                    <1 &soc_gpio 123>;
> >         gpio-line-names =3D "GPIO0", "GPIO1";
> >
> >         /* in an overlay */
> >         device {
> >                 foo-gpios =3D <&conn_gpio 1>; /* soc_gpio 123 */
> > };
>
> I think in my case the entire connector would be in the overlay, as
> the connector GPIO lines vary by control board hardware revisions.
> Would that still work?

Why in the overlay? If the controller hardware differs in wiring,
it needs a different DTS/DTB.

Gr{oetje,eeting}s,

                        Geert

--=20
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k=
.org

In personal conversations with technical people, I call myself a hacker. Bu=
t
when I'm talking to journalists I just say "programmer" or something like t=
hat.
                                -- Linus Torvalds

