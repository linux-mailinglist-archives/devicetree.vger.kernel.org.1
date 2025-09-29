Return-Path: <devicetree+bounces-222526-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id ED449BAA004
	for <lists+devicetree@lfdr.de>; Mon, 29 Sep 2025 18:18:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AF8FB3A8EDB
	for <lists+devicetree@lfdr.de>; Mon, 29 Sep 2025 16:18:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 50A563081DB;
	Mon, 29 Sep 2025 16:18:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cnTq070u"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AD091FC0ED
	for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 16:18:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759162729; cv=none; b=GfZX8/SliTy2jfWWzrSe4Q570FR5QXM2nwYW68mD6gjhpaP35o52BVFg3DO0eiUE3+jqMBXpN3RlVNXu/ZFvoH5OCWmbHg0hYWs4U6opkIOCWmFCilPiosMv5WLWZiBFoBwN7ZTGF7RV+jAuvfLYdYN06JoSfxD5EeqxVwBEtPI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759162729; c=relaxed/simple;
	bh=y1PFlnpoS8HMdd5eV23Hi5stegF7R3xRHDYNVRVCELc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=hq0oE83A4ylQDGPEi2eKB4wEgNRNjqKQtnHel4g8CP9b5qqdrpk0FmHuShtAwKazOLY84e+qsAaUcNybZX0BauVZvdMRBa2Ga+eCHGkIOr0qCcY6TsutFtMJOzlWoXx6ZK69yG/3fhLst92sTzcg5FfiVZZYyh5vDEv3+Ay+PSU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cnTq070u; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CEA5BC116C6
	for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 16:18:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759162728;
	bh=y1PFlnpoS8HMdd5eV23Hi5stegF7R3xRHDYNVRVCELc=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=cnTq070u68mayMVva5/URhtj0CzJoNBR8wl+UpUAivTgjFR6TukurKQzrsCY1HiwA
	 PmqMMW0IFapZoMa9IcGueprjukyJE3aNcHFGaWd1o3+cp2NxICIpmZ3jBwpujflZGt
	 amrO6KTTgDyRTcowIqHCfgPsS7rHAoGE2d53R/ZQ2uq8tumW3DR2Z5YxKOiDbYcVnf
	 C6KbQoubSSr8flfQc2b56uuxKTERwC7UFYlLQ1684XV/5IVCvsC4C2KSpMh2X0djUD
	 ZH7XLS0E63GqH/QQvJXvbIuUt6hQ3t1cpztVNCdXfIuTnnl1AoMXvbMYHimp/jZ1bM
	 lBwOEG256kBHQ==
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-b3b3a6f4dd4so379190066b.0
        for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 09:18:48 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCXWYPunmlIQmAFvFflesnpj8StYhgHLdkbVBhI75WJwNM64HhNRgljdrL5DtwZHdkXC8kqFtHJBmr9k@vger.kernel.org
X-Gm-Message-State: AOJu0YwvB/Fksus5mFh6iQg2Kg7/0hSNB0guC+n1tk0BbtA/UlK5WEr8
	hme9ieXvIGVQoXdh7te0MabCNaoWHjsncX36MlKieObOumzRtBAyiJnLuhJesBvbdpFZ9BiO0Vq
	DghY2inxKrfgIP57r4h58qVQWJ9SlBw==
X-Google-Smtp-Source: AGHT+IH4EdiPSx3uPpATy9sxikDxD325g38BsI88DHXzrLYBuhBcFvhw+KtcPr01sEC29n+VOeQjzjGDu5gZtwRkopk=
X-Received: by 2002:a17:907:6d29:b0:b40:52:19c2 with SMTP id
 a640c23a62f3a-b4000521c0fmr289546766b.20.1759162727425; Mon, 29 Sep 2025
 09:18:47 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250904160530.66178-1-macroalpha82@gmail.com> <175760259503.1582479.14013409824773713781.b4-ty@kernel.org>
In-Reply-To: <175760259503.1582479.14013409824773713781.b4-ty@kernel.org>
From: Rob Herring <robh@kernel.org>
Date: Mon, 29 Sep 2025 11:18:36 -0500
X-Gmail-Original-Message-ID: <CAL_JsqJy9XwNrcwgk4Dhf40ajn8WwD47v2YqZ3iYZz+CjEdv5g@mail.gmail.com>
X-Gm-Features: AS18NWD2pj_ibwVEK2mhOAIR-S-PjwlDtBsaiw-02MgcMYvm1KmFWHuD6-1e7ks
Message-ID: <CAL_JsqJy9XwNrcwgk4Dhf40ajn8WwD47v2YqZ3iYZz+CjEdv5g@mail.gmail.com>
Subject: Re: (subset) [PATCH v8 0/5] Add Texas Instruments BQ25703A Charger
To: Lee Jones <lee@kernel.org>
Cc: linux-rockchip@lists.infradead.org, Chris Morgan <macroalpha82@gmail.com>, 
	linux-pm@vger.kernel.org, devicetree@vger.kernel.org, broonie@kernel.org, 
	lgirdwood@gmail.com, sre@kernel.org, heiko@sntech.de, conor+dt@kernel.org, 
	krzk+dt@kernel.org, Chris Morgan <macromorgan@hotmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Sep 11, 2025 at 9:56=E2=80=AFAM Lee Jones <lee@kernel.org> wrote:
>
> On Thu, 04 Sep 2025 11:05:25 -0500, Chris Morgan wrote:
> > From: Chris Morgan <macromorgan@hotmail.com>
> >
> > Add support for the Texas Instruments BQ25703A charger manager. The
> > device integrates a boost converter with the charger manager. This
> > series adds the device as an MFD with separate regulator and power
> > supply drivers. This allows us to manage a circular dependency with
> > a type-c port manager which depends on the regulator for usb-otg
> > but supplies power to the BQ25703A charger.
> >
> > [...]
>
> Applied, thanks!
>
> [1/5] dt-bindings: mfd: ti,bq25703a: Add TI BQ25703A Charger
>       commit: 76bc2203a46ef704a4cd8003986f6bd74139a367

It seems this is still not in linux-next?

> [2/5] mfd: bq257xx: Add support for BQ25703A core driver
>       commit: 3b1bbfb5fce3ca9fffc92ac1b053b0cfbb1f322b
> [3/5] power: supply: bq257xx: Add support for BQ257XX charger
>       commit: 1cc017b7f9c7b7cd86fdda4aee36b92d91cc2ad2
> [4/5] regulator: bq257xx: Add bq257xx boost regulator driver
>       commit: 981dd162b63578aee34b5c68795e246734b76d70
>
> --
> Lee Jones [=E6=9D=8E=E7=90=BC=E6=96=AF]
>

