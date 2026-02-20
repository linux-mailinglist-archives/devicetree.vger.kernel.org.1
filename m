Return-Path: <devicetree+bounces-266866-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yOJjN2AmmGlcBwMAu9opvQ
	(envelope-from <devicetree+bounces-266866-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 10:16:16 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 8206D16611A
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 10:16:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id BB4F53000FF4
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 09:16:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8CE99313E1B;
	Fri, 20 Feb 2026 09:16:14 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f175.google.com (mail-vk1-f175.google.com [209.85.221.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02CBA223328
	for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 09:16:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771578974; cv=none; b=KD0FzttAS4CvE8o/8VEDZW3NP8qbvTqOpb3YUsnWREyxoPk/OggX3zY0cOJlcWHLd/NONFocFLzhNPKgXJFAw9GZsFxYLWEHkTT3gq/zgMJarWhwrVoYHZNKj1ObxlPpln31DAoMFXNZn5ZINhsTyh/KQzKYa4PQ/b2JIu7NIbY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771578974; c=relaxed/simple;
	bh=wVPy7MKtK7TfY6ZJQ986gXJWDyYRO7pR/I9/6fZh0z0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=n1bq0TKBmHYynVZJEVbaO60kjiMHVcv7XQOuma6uBeXf2CQzy1hD9e1erCxyCOweDIYBi1StgfXJcdvSdousrZNp6o+kxSM4TkoM0YL9J/3tn34Gk6DQSaYo7a6619fVn8YrXnwAIke7U6pkqzYwVCZGaP7iFapu6B1KKH8LsmI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f175.google.com with SMTP id 71dfb90a1353d-5688c221fd3so804435e0c.2
        for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 01:16:12 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771578972; x=1772183772;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=UklHwruov2HcfxX9FBO2d6nnZFtMa4z3XO7xdbP+T4M=;
        b=wWZozeY7/1sMM3PMnNxIRDObSi+Kf4SjmhOE/lwXsFobsIsA9d09c8RoWjxmilxBmL
         Rm+oLwsLh3RzUnaIFXzvUJgZPsGSWBCtVxBdKusShZHc7PKiAiCiYSs9gBTWAw0s3SJo
         f3hpyt7E4T7iHAzkH2GkO+Jh4Qkp6w+vbKWTPvGxIQ1k7ho0L+TRP0UpNV0dUknJ6XeJ
         93GiCxwLWiNrsMjrOj+cuBpkwxxxjDrvOnAGBx8Er3SKYMhM94eFVZh/V2WKh/MHlOIw
         NgPCVVgftTIeyxStpwEVkve+4qPpuAmjz54P8C6jFnHXTCY3eMVXY5uCMrBjfhtA0lO9
         TV3w==
X-Forwarded-Encrypted: i=1; AJvYcCXv1BPgW4jcTmaZsWZcJihYvq5IVW2JHvJEX4JwicXLK+AbT5+tIiejpU3DoXsz5RIn6BT6l0L95dDY@vger.kernel.org
X-Gm-Message-State: AOJu0YxrqolDMm5gcmpxrr/+CaWWTM8rDTFhXH8/Ych9GZ+BrgCbRjFO
	W5KPaPjK8lMA9cikrSk14uXxB7sivz3AuqUUjDXNFximcujrT1Fm9peQqdXr/jPh
X-Gm-Gg: AZuq6aJHVn4Ns4GLHakDfoBBUyOc+yq3evIif1W8B+CpWARImyuPHmobQThWgZvtql0
	RJrZ6s7459v2ZVypgKTIopFzU8u2wFZq4wctou6omm7RAg6Dz0v3wNIi8Yp6EFNjSJflrO3aDBc
	Q81YZH6Egifzth+299pNGLWJO/SfH86C5RUp73YGXvwiWd2gbKQ3GmsS84ReyEXPup5X44tek1M
	M68qkqfXfz29+LNyAGuAOsKPkIVccIcH2OZvoelolhTXC+b7z/DflCSZzCO/YAlmQVSbj/QBEa3
	5Fb2WZvSsgYc6b+IzU+YioitArk0ZQbrIIfgg5Ie4vR3UcLOB/UBlyN5vWmydNxLZVxoYUvx/Fq
	xdq/mWRPqxF5m2wNEJ8K/YGGYN/rJ7XzXyYMNpWxmS3ouBIr2ZltLqcTxfiBq1W95ajBC5qAk25
	2mHBTcdKwkQg9GmQUx6vktJf/WOZaxCW0BCKiyIzrvEYtyrHM1oolva1l2rE+2Ao2u
X-Received: by 2002:a05:6122:1d4c:b0:566:453e:37ae with SMTP id 71dfb90a1353d-568bf5c440bmr2844564e0c.13.1771578971764;
        Fri, 20 Feb 2026 01:16:11 -0800 (PST)
Received: from mail-vk1-f171.google.com (mail-vk1-f171.google.com. [209.85.221.171])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-5674c22b64dsm16803979e0c.15.2026.02.20.01.16.11
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 Feb 2026 01:16:11 -0800 (PST)
Received: by mail-vk1-f171.google.com with SMTP id 71dfb90a1353d-5674d8be45eso715522e0c.1
        for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 01:16:11 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVB/JfUiCm7KA2oWq1GswFX4OQelzfNIFJhRmbnpsOQaheTDJ8y30Ag7b/Aai14g1ryqMfwzyzyjrQx@vger.kernel.org
X-Received: by 2002:a05:6122:6608:b0:567:516f:256c with SMTP id
 71dfb90a1353d-568bf5f028cmr3644386e0c.16.1771578970867; Fri, 20 Feb 2026
 01:16:10 -0800 (PST)
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
 <CAL_Jsq+Fb0vOggHWkNGusCBcwTQubD1Lc+0=U4+MpZacXqc_ag@mail.gmail.com>
 <CAD++jLn9KJ2sfMtAxVGbcmWQW=1vxdiMNCDLNg-XV3hJDz=O9w@mail.gmail.com>
 <20260220091727.5330accd@bootlin.com> <CAD++jLmwAb35RW1fh3ONc-R4ca_NeWPWhWag-c-xv0oACNAG9Q@mail.gmail.com>
In-Reply-To: <CAD++jLmwAb35RW1fh3ONc-R4ca_NeWPWhWag-c-xv0oACNAG9Q@mail.gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 20 Feb 2026 10:15:59 +0100
X-Gmail-Original-Message-ID: <CAMuHMdUkdF1X7xZvu9uhNPJBnq6grq-BvBk-598f=h7uTbYbVA@mail.gmail.com>
X-Gm-Features: AaiRm52vKhTtpZ8KXd47pui1u5eVV_Ef9bTKfDzA-BudgYrfNKFwnFeOWRbCRSI
Message-ID: <CAMuHMdUkdF1X7xZvu9uhNPJBnq6grq-BvBk-598f=h7uTbYbVA@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] dt-bindings: gpio: add gpio-aggregator binding
To: Linus Walleij <linusw@kernel.org>
Cc: Herve Codina <herve.codina@bootlin.com>, Rob Herring <robh@kernel.org>, 
	James Hilliard <james.hilliard1@gmail.com>, Krzysztof Kozlowski <krzk@kernel.org>, linux-gpio@vger.kernel.org, 
	Bartosz Golaszewski <brgl@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Alexander Stein <linux@ew.tq-group.com>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[bootlin.com,kernel.org,gmail.com,vger.kernel.org,ew.tq-group.com];
	TAGGED_FROM(0.00)[bounces-266866-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[linux-m68k.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	MISSING_XM_UA(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[geert@linux-m68k.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	NEURAL_HAM(-0.00)[-0.976];
	TAGGED_RCPT(0.00)[devicetree,dt];
	R_DKIM_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,mail.gmail.com:mid,linux-m68k.org:email,4c:email,bootlin.com:email]
X-Rspamd-Queue-Id: 8206D16611A
X-Rspamd-Action: no action

Hi Linus,

On Fri, 20 Feb 2026 at 09:35, Linus Walleij <linusw@kernel.org> wrote:
> On Fri, Feb 20, 2026 at 9:17=E2=80=AFAM Herve Codina <herve.codina@bootli=
n.com> wrote:
> > With nexus, you cannot translate &spi0.
> >
> > Also nexus works well when an index is involved. In other word, it work=
s
> > well with phandle with args.
> >
> > i2c-bus =3D <&i2c0>;
> >
> > In this kind of of definition, no index are present. With nexus node, t=
his
> > looks like
> >
> > i2c-bus =3D <&nexus>;
> >
> > How to handle multiple i2c busses with nexus node?
>
> Can't you just use the foo-n suffix trick from the pinctrl etc?
>
> my_nexus: nexus {
>    gpio-map =3D <...>;
>    interrupt-map =3D <...>;
>    nexus_i2c0: i2c-bus-0 =3D <&i2c4>;
>    nexus_i2c1: i2c-bus-1 =3D <&i2c6>;
>    nexus_i2c2: i2c-bus-3 =3D <&i2c8>;
> };
>
> &nexus_i2c1 {
>      sensor@4c {
>           ....
>      };
> };
>
> Maybe it's not as elegant but I think it could work?

Wasn't that already solved using i2c-parent, cfr. the connectors
discussion at last ELC-E?

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

