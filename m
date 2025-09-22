Return-Path: <devicetree+bounces-220086-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EB47B91CB3
	for <lists+devicetree@lfdr.de>; Mon, 22 Sep 2025 16:49:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9FA1D1896DDA
	for <lists+devicetree@lfdr.de>; Mon, 22 Sep 2025 14:49:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4CE4526C3B6;
	Mon, 22 Sep 2025 14:49:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="o40c9433"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f176.google.com (mail-lj1-f176.google.com [209.85.208.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A38B526B96A
	for <devicetree@vger.kernel.org>; Mon, 22 Sep 2025 14:49:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758552562; cv=none; b=RjBUC0Veg3DntWnpdSVxVUAXoXxXgjGwtjEbWKwnk17PMYuCx6LzrY095lNIevncJPUPNmYP9xrm+5Qqm2ohg4OPEze9WKfTdZQzNjxjmQEQDYIrBXxI8r3lBDcRVAq+97HNwcGiJHkMlV3Adwi4s+pBRWx41HIsrO1dJVNRpOI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758552562; c=relaxed/simple;
	bh=bykbtif9awIBKm3O/qk/D6C7L3MfL80Kt+n3asECuK0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=afXcXm5+/p3UMPfV8/19shIOFU0Tous+cPk1G7LcCCTfQAY/ZyAEjax/N7l8F3IbblAUFcn2gVYNG/mdBIaR7pZHuGyXcEVpMVYZNxk6oWMmIaAwUls1f2loBEzoS4Ebukr/0kBTFX55aas1SU4os1Sty+TRO9uKgvBPfbV9Hv8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=o40c9433; arc=none smtp.client-ip=209.85.208.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-lj1-f176.google.com with SMTP id 38308e7fff4ca-365df96398bso12675871fa.0
        for <devicetree@vger.kernel.org>; Mon, 22 Sep 2025 07:49:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1758552559; x=1759157359; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bykbtif9awIBKm3O/qk/D6C7L3MfL80Kt+n3asECuK0=;
        b=o40c9433dR/xQzpeVjrcG4c0BaQiB8LpWdJjlPQG90a0wouQ1RjeOcCvubVAzMXatL
         wRMgUTyA1CtxTLg6erioE4TMR2vr132QeJk0ijBH11wTgCS9co6UV4rPXcw7SZ6WUG4G
         9+Nsa7ThgV9P66WlKnSabDfMvhDVlnHwIOe9i6FizIX4qM+W0Jnb8/On59x/0HZatagx
         qgx3ctl3zmp/I3sJHtBPpBag7nkpDj3GgPTxWlXPmSwdSfHkk5ZnaFID/l3+5OezrFOL
         2uanblri6FuNSAdm9Bk4HJhue0RKFIT2MqattmDcFKm4CjCEw5H4XFBVLowaWOLdmMkw
         sgLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758552559; x=1759157359;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bykbtif9awIBKm3O/qk/D6C7L3MfL80Kt+n3asECuK0=;
        b=E9rYvMn1JNtmZz3rrwTAObJOB/LPbi2jCdYKb1/9tv5fJvZwEAnT5mPYa73NHPCKjN
         qQzF6LDh98q45uO2uBmOV+k7pBXFvaSQLylKLWY1JgAecamAiEIGX/rvqSxfWitpjjJ8
         xDKZVlnZj0zKxp0q2rx5uYSaCU87u36YvPrmi8HTxCLj604kqSyVa2npCsLnODnM01r+
         HO05TxVmuvU8BjnBTtOG8R/i9dtOdKctctJjjXBFguQ6Xlt/WV6UzcJW+ZUQg1R1NwIJ
         /DsHU06q5fX77uCglf74jn/gWBBedQ0zcOO3nd6X7iGzQ6g8ZWvk0vu3XurMVaTsNbnv
         O/ng==
X-Forwarded-Encrypted: i=1; AJvYcCXuv/pnKWiYG45MGzsgVXVeiKGy38efz9e1dDvlDT/P3dW6EwAyBQrufRKwROocycXmeI5FsZzzpaDn@vger.kernel.org
X-Gm-Message-State: AOJu0YwvcMUbF23uKdnF+vSeJxZHbaDXChAwpaQCHXq4CkbzmcVxWm/s
	jXO3Zh7mNINpR09ujLJ4BPIh2ejO81+FysPOPngwlKOxhjkggYuFwkzTSmybGvjgFJdq8k8VfSA
	/JrOLqoCzCgoVagKE1PC1GIR/1BbD4CYhrumLElRL7w==
X-Gm-Gg: ASbGnctJ9dLtG9/pv8MmFNXx4ehREj9QwehDZV3lfRMKOmbf1q5HC2dd20gfA11Sy2X
	5kwUM3NMVvZB1nEquzQpk1h/AnLRCa9wJtPsSow0BlRcimC3zo+CLmwtf8sDXmFyEGrNpyQ3JPc
	TnOsVuxTlDhRjFDbQmVHf7LbGucgrYwJFlWg0t6dNr2iF2BKvkElx+6e6KFYf3nbqaYpe6+MCu+
	+bOVeCqIikCH9dUdGexGZWEKSYdmwBixeSuJA==
X-Google-Smtp-Source: AGHT+IGlnNt+fhE5MrqIpFvliSxDtGX2XB40jaaM5K7wfFAvtAE4jBlrlXKvYjLZOIykgctVeiSEZTwWunX74S3veto=
X-Received: by 2002:a05:651c:2109:b0:36b:8874:cdae with SMTP id
 38308e7fff4ca-36b8874d0ebmr12204601fa.15.1758552558756; Mon, 22 Sep 2025
 07:49:18 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250918064903.241372-1-viken.dadhaniya@oss.qualcomm.com>
 <20250918064903.241372-6-viken.dadhaniya@oss.qualcomm.com>
 <CAMRc=Mf2ycyKbL35bdy5m1WBEap7Bu8OO2Q9AdZYgc04Uynf8g@mail.gmail.com>
 <20250918-daffy-steady-griffin-5299ac-mkl@pengutronix.de> <CAMRc=Mfypwopu6daCBzg90i98dbO-7rwAehkiNkA-tF074fO5w@mail.gmail.com>
 <20250922-magnetic-dashing-piculet-97f38d-mkl@pengutronix.de>
In-Reply-To: <20250922-magnetic-dashing-piculet-97f38d-mkl@pengutronix.de>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Mon, 22 Sep 2025 16:49:07 +0200
X-Gm-Features: AS18NWBlKhLUvAddoj2mOzUueezFqF7tTTLWH1tXphnQJ1z6UNVeCHLT2id_PP4
Message-ID: <CAMRc=MdEkp6Mztoe44Nv0orX+f4ops7nh8XS7hbJS2KvQFc3Fg@mail.gmail.com>
Subject: Re: [PATCH v4 5/6] can: mcp251xfd: add gpio functionality
To: Marc Kleine-Budde <mkl@pengutronix.de>
Cc: Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>, mukesh.savaliya@oss.qualcomm.com, 
	anup.kulkarni@oss.qualcomm.com, 
	Gregor Herburger <gregor.herburger@ew.tq-group.com>, mani@kernel.org, 
	thomas.kopp@microchip.com, mailhol.vincent@wanadoo.fr, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, linus.walleij@linaro.org, 
	linux-can@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Sep 22, 2025 at 4:43=E2=80=AFPM Marc Kleine-Budde <mkl@pengutronix.=
de> wrote:
>
> On 22.09.2025 16:28:53, Bartosz Golaszewski wrote:
> > > > You must be rebased on pre v6.17 code, this will not compile with c=
urrent
> > > > mainline.
> > >
> > > You mean "post" v6.17? Best rebase to latest net-next/main, which
> > > already contains the new signatures for the GPIO callbacks.
> >
> > No, you read that right. The signature of the set() and set_multiple()
> > callbacks changed in v6.17-rc1 so Viken must have rebased his changes
> > on v6.16 or earlier.
>
> I'm not sure if I understand you correctly. This series must apply on
> current net-next/main, which is v6.17-rc6.
>

The GPIO driver interface changed between v6.16 and v6.17-rc1. This
series uses the old interface. It will not apply on top of v6.17-rc6.

Bartosz

