Return-Path: <devicetree+bounces-180665-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 598B2AC473E
	for <lists+devicetree@lfdr.de>; Tue, 27 May 2025 06:36:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id EDD6D1887E0D
	for <lists+devicetree@lfdr.de>; Tue, 27 May 2025 04:37:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E4BC3158520;
	Tue, 27 May 2025 04:36:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="QU+GPxSv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E244317BA5
	for <devicetree@vger.kernel.org>; Tue, 27 May 2025 04:36:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748320606; cv=none; b=pIFXae30dhoCFN0iSsPgRcHxgd/15HRAM/onhy7w1arLpGx98BH5Mtx5X0d5OxDxT6EqOGke8s+PPZyH8kV6dNr/HYEpAJblBszxakRUQYyg2LcR89OufArROaFwgco+dBhigkfqejIrBLJBL9t1spDam8SnpvytTrbSYYpPJsU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748320606; c=relaxed/simple;
	bh=rvrIyHHXNp53veEtFKTuGweTwWvdMYYsxGORAMmxxLE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Xdg6CFKzZgHrqb6hypdLuCgJ5KZq7FQ0MBgZSQSVqGThs+oeLFkfbaJZCrbKI1BLig8duziI+b8EQIFQAtTBKw3nL3po3IddaNTSh2UIDpw8cd0yhXiK35NDU/J2r4TDo+u1TYk2D1+vnze36kRRJdbAKhNwlOONeMcPpK8275c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=QU+GPxSv; arc=none smtp.client-ip=209.85.218.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-ad88eb71eb5so30920366b.0
        for <devicetree@vger.kernel.org>; Mon, 26 May 2025 21:36:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1748320603; x=1748925403; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ff6UC8ZTNe+I+eItze3lLHep9njcdURbGAHAI1WTvXE=;
        b=QU+GPxSvV9flQQnqGnMe2uEczvj4zlUquFph7rLYHDSjQZ5XiW/+Jni2G3Mb/OZgV7
         h3TYG5lchNWQPknIEpL1jF+LFIjtp7SfbfRtZy0zqmPO1YHoS1Gci70VHQiLp7Y6C8ap
         pv+70fVR/UjfII8DCABBjrZcxVgb3E2BRg7AVCb4z8n9Vt5qUBIwyxK/iTfM6W+b67MQ
         Kzgk4m3xuHIgoL9Qc1sgz95XUtZzlp/FXvVkFSMHNgzGDA+FlrbAAFlG7nSLKJuTQStL
         AbO9vy+gUIBNOJmY9ylYDWfECcSBtBdKeBFKk4/0rn0krQGvmb1YkyJ7zUrFBXWzN3Ez
         1kmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748320603; x=1748925403;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ff6UC8ZTNe+I+eItze3lLHep9njcdURbGAHAI1WTvXE=;
        b=DwSG9Xu2UKqxLPmHELbKBm8ycMEwfeuNVKrXSUql/IxsCzQ6PYyldDUbfRPBtD0lxp
         Xk7gf/iSsdYUAGzsoU39wBbxQYnRqMlDY6kUglEpctN2gkBGBf8pCeWmq5psTgzpZvBm
         Z5CrwtPysKbT3gt/C3uZfY8TUyRWNnyVljlE0KDT8SMCSM+wK03d7Ep8JwdzDWoMV8lN
         W1ydNfg1Ew8jcwuVGzFQ98AhldS09KO4Wg0MGN1SH3H8uZ6Y1vhJeI/j1TNjWCeaFEgC
         bPKdS6lHzfwVtdY/nb+AcWgT/XBfGv4TIiPq4dOaQTNMmVC2puvSlER2B3lbHa1GAyv4
         leOw==
X-Forwarded-Encrypted: i=1; AJvYcCXFnEt9I2tjeA8RwmsmEvOZbOnKxIqKdJf++vzv7pwEEplAxACUKnVoFfMeJ8F1zJw7L6brgTy5S5NN@vger.kernel.org
X-Gm-Message-State: AOJu0Yw+mJTiFXQ8tc7eiDAfS1bafQ5mtPk5mB+fI7IicR5xzlbBc+8k
	w/yNHI5lemQ1qizgAJn9ZUD95akc6MFor0qqnvJ28P6TNIJ+9ckwzxEITxEwXZspH+IZzva4Eq1
	k+SBAE1225dhTD3ySqvAcaQlR2KcafLV0Jfy4Ru1udQ==
X-Gm-Gg: ASbGncsAqRsIPKZ267ijT2m/PJzQ0gs/DeGLJdv6289XLcx9JttEkQXgARA056WUbfp
	P+/f3MWoYTo8zC9XXc+o6oF3nnYPVNB+SIRWMx0tRKTpdKps9vOedh2M0VEHUVBJD+uu7G8LdPC
	SePur6mgbHURVga9Di6wYBfyZ7EZmFmoqbQA==
X-Google-Smtp-Source: AGHT+IGo6E8NJmIu7lDX7Br9+8Vm3DHhMozHXP52l3uoUCX6XeCyxyt49ZP4sGWmptiI89VtoPx732i1dLPzVdepgQc=
X-Received: by 2002:a17:907:7faa:b0:ad8:9084:4ec0 with SMTP id
 a640c23a62f3a-ad89084517emr53114066b.35.1748320602960; Mon, 26 May 2025
 21:36:42 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250429085048.1310409-1-guodong@riscstar.com>
 <20250429085048.1310409-5-guodong@riscstar.com> <paasmwjel652r25nxobidydtpxfjy7emerilmwqhvhtgrrtg6v@gowpzqdzvlfz>
 <20250526215243-GYA53128@gentoo> <CAH1PCMZhS4_u3nTdAQDfTTRVJ_61n-OYjmMuv2m4DHYDzGE0XA@mail.gmail.com>
 <20250527032701-GYA55693@gentoo>
In-Reply-To: <20250527032701-GYA55693@gentoo>
From: Guodong Xu <guodong@riscstar.com>
Date: Tue, 27 May 2025 12:36:31 +0800
X-Gm-Features: AX0GCFsJEcR3EmfV6Iyccb0DPbXPaPY_2_j3czeJ2Y8-ennyhBu-Ez1iIOffJ7g
Message-ID: <CAH1PCMatGM6y2AhQB5e=DMu9kD8nxJ3Xv9AYy7Y=E8JhMV=Z8Q@mail.gmail.com>
Subject: Re: [PATCH v3 4/6] riscv: dts: spacemit: add pwm14_1 pinctrl setting
To: Yixun Lan <dlan@gentoo.org>
Cc: =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <ukleinek@kernel.org>, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, paul.walmsley@sifive.com, 
	palmer@dabbelt.com, aou@eecs.berkeley.edu, alex@ghiti.fr, 
	p.zabel@pengutronix.de, drew@pdp7.com, inochiama@gmail.com, 
	geert+renesas@glider.be, heylenay@4d2.org, tglx@linutronix.de, 
	hal.feng@starfivetech.com, unicorn_wang@outlook.com, duje.mihanovic@skole.hr, 
	heikki.krogerus@linux.intel.com, elder@riscstar.com, 
	linux-pwm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org, 
	spacemit@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, May 27, 2025 at 11:27=E2=80=AFAM Yixun Lan <dlan@gentoo.org> wrote:
>
> Hi Guodong,
>
> On 10:48 Tue 27 May     , Guodong Xu wrote:
> > On Tue, May 27, 2025 at 5:52=E2=80=AFAM Yixun Lan <dlan@gentoo.org> wro=
te:
> > >
> > > Hi Guodong, Uwe,
> > >
> > > On 18:54 Mon 26 May     , Uwe Kleine-K=C3=B6nig wrote:
> > > > On Tue, Apr 29, 2025 at 04:50:46PM +0800, Guodong Xu wrote:
> > > > > diff --git a/arch/riscv/boot/dts/spacemit/k1-pinctrl.dtsi b/arch/=
riscv/boot/dts/spacemit/k1-pinctrl.dtsi
> > > > > index 283663647a86..195eb8874f3c 100644
> > > > > --- a/arch/riscv/boot/dts/spacemit/k1-pinctrl.dtsi
> > > > > +++ b/arch/riscv/boot/dts/spacemit/k1-pinctrl.dtsi
> > > > > @@ -20,4 +20,11 @@ uart0-2-pins {
> > > > >                     drive-strength =3D <32>;
> > > > >             };
> > > > >     };
> > > > > +   pwm14_1_cfg: pwm14-1-cfg {
> > > > > +           pwm14-1-pins {
> > > > > +                   pinmux =3D <K1_PADCONF(44, 4)>;
> > > > > +                   bias-pull-up =3D <0>;
> > > > > +                   drive-strength =3D <32>;
> > > > > +           };
> > > > > +   };
> > > >
> > > > There is a newline expected before the pwm14-1-cfg node, isn't ther=
e?
> > > >
> > > Right, I could amend this and fix it while applying this patch
> > > (so if there is no other serious issue, no need to resend)
> > >
> >
> > Thanks, Yixun.
> >
> > By the way, do you plan to take patches 3 and 4 of this series into
> > your tree? They only apply if the SpacemiT reset patchset is applied
> > first.
> >
> Yes, exactly. The dts patch will go through SpacemiT SoC tree, and we
> have to wait untill reset patch series applied.
>

Appreciate you taking care of this, and thanks for the update.

> --
> Yixun Lan (dlan)

