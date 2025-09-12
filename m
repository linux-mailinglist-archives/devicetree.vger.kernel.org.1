Return-Path: <devicetree+bounces-216334-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 09D67B5461D
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 10:57:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C51DC1645B2
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 08:57:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 37CA82727F4;
	Fri, 12 Sep 2025 08:56:56 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE752273809
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 08:56:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757667416; cv=none; b=UBpUylFXXRbVLY/QDaCOyStujEE2bU5nWS/4DMD/Yv1ittC9RavACqbnTkqgyrnhwU11Lo+pYKaqdOgNyzu66SkTSvhdggwStSqrEMNGEtA3H5fDsa6NxwZ4+h6BMJx3Kb8T1byB9iLaDdcrd2Mg89RkhDB1YwYCcoS4TbJOyFs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757667416; c=relaxed/simple;
	bh=y4x97uGJUM5QsqfWMCvRjzay1EV09kP3vQXEnBF3d2k=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=WPDhaTsBDd95u4hWEY+b9Djq4XcCTFuPHSeb2U5P6ScDlyuzG/RY0V+mK6zeV0UGmG18JySzDA9A8Vup3fzDAUDCV8Rsav96rkHfDH56hHvhCmEoe/pN7mZXDZEiO8yk6dSZJud8xxQl2+J0HCrxprpwjd16qMoLo6YV7D0v5Tg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=csie.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.167.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=csie.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-5608b619cd8so2025230e87.2
        for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 01:56:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757667409; x=1758272209;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=74tRC2VlzLxPkuO20P1RbEt4g142PM6DdcNwZMtwWfs=;
        b=r06+trMy6YIofOv4lOfUnGHjHvFz9bLvPJMeKZNqsKE1vNYKaoqySRsyQPehUG6waH
         sPTTpbwRON5xyCZnsZkHKIKt861GgrKt3XNMbCNBhpYKz2keh2ZSrpAC1AaBaEMBOfrX
         2M1VdPu9SUas0xdpdSzdL5+bYNTzqOBDvHaAsQ4JVfHBvNkoefJZ9FoaFClfdKnZVKzZ
         tgwSB0z6m+FlgKF++DEScVA8fyrEfMXpSOfBA+Lp0uRrLBuFm067t6eC/Ji8i7A4c0Or
         51d5YGQvmxQ12ebNMItMCuaqea5QWvU5U/AHJIN90/9KjaFRWkr9BoJi8/aXZKKnORGr
         VO/g==
X-Forwarded-Encrypted: i=1; AJvYcCW+WVnWPd3Knj1A9zBc1JxBT6gmqgwb2FoZcVIET49rHl2dxEDEgAi+1n2T6fdnUHygpnuqWDuFCd0t@vger.kernel.org
X-Gm-Message-State: AOJu0YyGak5/xs/2UQ4TUOI0qexEDJjHpM5a/CmKlGwAv9TfYeItJr0M
	1QTnl2EtdLhGiPO4OI/JYSxv2OXy3Oit3fMrHp8vS/LB01PQZeHY36NaaX/rMJ/Z
X-Gm-Gg: ASbGncsUNvyti5OhuuPVnfn7pMIED9oblCDS8+PuEXay6x/Z3VpLqf533dk75qj7+l4
	ndk7ZD71WDi9yc13kT6L3SDWrygJcwj3v+oQ6E49Ot+W2X0NGHq0W3Ol1u0rcr7XLTzM5Seeos4
	iXidBId812PpDxg1pDtiHdmIXRynmcgstYAHaQA7rCxjOdQDJuB98bTZE2Gz/XsHqZwSs+Z96ph
	rAHvWHiLn8fA3+LDTaW3tuJ0JNFZXlZvhkE1RvhkuKMxBTi1EzkiNevnqZg3qiUOng/sR8EcMa8
	8ifEX7jHUJWbh/dsoXe9SP5YbSzejTVXdoh3bHXVlxwklBpyHmGrExx8QIfZLUQu3HclH7BTYGR
	QwXNTHUG6jxo5CN34sEK+x15S40bof/W5ioU0MJGONhvS5WrGQP8swm+zCBxy5hwC7w==
X-Google-Smtp-Source: AGHT+IFdcWk9+A8QrAJAF+jBF0QCJtavyUL4VIEE5lC8ikTpVx4JOcopR/x4C+nYdR7OyokUw0P1vg==
X-Received: by 2002:a05:6512:1194:b0:55f:3e8f:abe9 with SMTP id 2adb3069b0e04-57050df77edmr776839e87.45.1757667409299;
        Fri, 12 Sep 2025 01:56:49 -0700 (PDT)
Received: from mail-lj1-f182.google.com (mail-lj1-f182.google.com. [209.85.208.182])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-56e63c63f4asm1000912e87.82.2025.09.12.01.56.48
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 12 Sep 2025 01:56:48 -0700 (PDT)
Received: by mail-lj1-f182.google.com with SMTP id 38308e7fff4ca-336d3e4df3eso12211141fa.0
        for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 01:56:48 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCWMp1timQjv99Qjj9ssaA8Y1JMmK56W2HC7qmDAnfzxl1ybfIKSjl4S/3Px2zQUDfLqEAAu25TfjovF@vger.kernel.org
X-Received: by 2002:a05:651c:1118:10b0:338:d42:2a73 with SMTP id
 38308e7fff4ca-351409b51d3mr4673771fa.45.1757667408335; Fri, 12 Sep 2025
 01:56:48 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250912-x96q-v1-0-8471daaf39db@posteo.net> <20250912-x96q-v1-2-8471daaf39db@posteo.net>
 <aMPftsaf4x61-bGY@probook>
In-Reply-To: <aMPftsaf4x61-bGY@probook>
Reply-To: wens@csie.org
From: Chen-Yu Tsai <wens@csie.org>
Date: Fri, 12 Sep 2025 16:56:36 +0800
X-Gmail-Original-Message-ID: <CAGb2v66khAeP5pCq6RCrPUwQr=tDqJ6O6cs0gokbMNjpTejuvw@mail.gmail.com>
X-Gm-Features: Ac12FXw60L74DnVtPN3yLU-Dvc0n827phLti7Hql_EebywNU_R9Et1E7UON_xe0
Message-ID: <CAGb2v66khAeP5pCq6RCrPUwQr=tDqJ6O6cs0gokbMNjpTejuvw@mail.gmail.com>
Subject: Re: [PATCH 2/2] arm64: dts: allwinner: h313: Add Amediatech X96Q
To: =?UTF-8?B?Si4gTmV1c2Now6RmZXI=?= <j.ne@posteo.net>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
	Samuel Holland <samuel@sholland.org>, Maxime Ripard <mripard@kernel.org>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Sep 12, 2025 at 4:54=E2=80=AFPM J. Neusch=C3=A4fer <j.ne@posteo.net=
> wrote:
>
> On Fri, Sep 12, 2025 at 01:52:10AM +0200, J. Neusch=C3=A4fer via B4 Relay=
 wrote:
> > From: "J. Neusch=C3=A4fer" <j.ne@posteo.net>
> >
> > The X96Q is a set-top box with an H313 SoC, AXP305 PMIC, 1 or 2 GiB RAM=
,
> > 8 or 16 GiB eMMC flash, 2x USB A, Micro-SD, HDMI, Ethernet, audio/video
> > output, and infrared input.
> >
> >   https://x96mini.com/products/x96q-tv-box-android-10-set-top-box
> [...]
> > +&gpu {
> > +     mali-supply =3D <&reg_dcdcc>;
> > +     status =3D "okay";
> > +};
>
> Note for v2: The GPU gets stuck in probe deferral, and I forgot to
> investigate why.

You are probably missing the GPU power domain driver?

ChenYu

