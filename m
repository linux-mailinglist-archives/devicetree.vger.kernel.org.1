Return-Path: <devicetree+bounces-223424-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 16907BB488C
	for <lists+devicetree@lfdr.de>; Thu, 02 Oct 2025 18:28:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id BC41319E2054
	for <lists+devicetree@lfdr.de>; Thu,  2 Oct 2025 16:28:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 55464258CFF;
	Thu,  2 Oct 2025 16:27:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="B5j44dFY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f177.google.com (mail-pl1-f177.google.com [209.85.214.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D887117A586
	for <devicetree@vger.kernel.org>; Thu,  2 Oct 2025 16:27:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759422476; cv=none; b=OBkY27KmB3Db1n1wuQmd3dGGIYXMB/paBTj+DoXwSV10vSIMOoDTUZIMEkjkjQkbBjikqHDs4HGgZ/2mSAkwMsXR82sux++pz6sKfhLpPZIHaHo1Gb9ZdRxbpwwPuNSvshqzNGEgF4f7A02vZCUecR8s3nZylEqk9twqT33vLhw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759422476; c=relaxed/simple;
	bh=6P8PdpETu4JNDLuK6zlPSVTpwWgTkevlM36iYzRTPwU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=OtpRZa+IqRntbJya4zu7VxT0OBHhsovpECybaqASJ+j0neYIEos9JIr7s4KVNGe21arLGRgMC+mhIrn1OuS/kUB8Yxl+utbb5NT60VuCzvH64x6u6Hi263i0GNXtbRle6TonH6uQqiKWPTSeciCwOQdDE/GjU7OuIx9eDwRrfYI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=B5j44dFY; arc=none smtp.client-ip=209.85.214.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f177.google.com with SMTP id d9443c01a7336-269af38418aso13383475ad.1
        for <devicetree@vger.kernel.org>; Thu, 02 Oct 2025 09:27:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759422474; x=1760027274; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8MIx1cgazS4vSFCcdU3NLCPECgs+mJUW/PomE8mLbHI=;
        b=B5j44dFYWUOlHCn/pCvYEdl74C3TgzANfjcctywXm7qJCtjGENvdQ2+k7HFTtFfjxy
         hyHuiYguqujKmN8OBQU0ISjPnii3SNHnFzwk7t+kwrIHv0okFylgjjwVm9RWlPNPYfJM
         5iYqFcvvz5QZuniwyP2echa82fSwjtzqeDdINbSf3CxFWfl9wxQzZlt8Xz1CkXN3alcn
         Gso7/SHGvP19TN54axD3Way9tZv+muvdDdsxUdIL+2+qREldeilLw6NioTEyuFYhlkMz
         FllXGWQCCZPVEDJi7CA9/zeofB858kSq690ZroBxPHL/EgeOAJm0q+uC7jrLsIbXYNO+
         HYJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759422474; x=1760027274;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8MIx1cgazS4vSFCcdU3NLCPECgs+mJUW/PomE8mLbHI=;
        b=WYxw39N5/3foUe9uo4TUCrORHqvw6eGlj+0ogEBesECZl6gVv+n8kDF60gdggMHClS
         wTYDc1vwYs0+B4tUTMIBmiNLFpxCb7xjJw3ffC8SlMroEjpl4PW63cDGkfbgEnlC9iHy
         lXO2f2j+K+DcPqedYGhjrbTcINiOHVLaCgaA0gqHSEh093aGEzcmPI2g71tcHhcMzsbp
         YI3RYGC6PL6lEgYQ0XPfZ8IAlORl75eqPZBRmDrtPbjvZndLv+I5qf3861roqV4fZ0wD
         vk7a26bCr9MPQ+Fdxn4L0cftSFSGvQcPVUtDcCt7nUkpaDqntG3kxqLk8pLAFB1syuJC
         fO8w==
X-Forwarded-Encrypted: i=1; AJvYcCWSoODjrl7N8SfxP66PGXEJgAvUcv+LYrjmizGqFkl6u6I9G7Uy+g72uzbrVLMTTfcP4nd9fOa1z7Fy@vger.kernel.org
X-Gm-Message-State: AOJu0Yx5eVoE4kvuTGZKlwNj+x7YmO9CztTpS/NP0nrrTqqjWiSjoo9H
	GVaVXeWmW0Uf55N02E/2hHqEbaioXYJk8Z4wBdiyCDFKXBuprypxpt04Dc/rEeXk/IUtNpkRzMF
	kiC+37VsfpGpuwHMU7y9L/GEOedNw3aI=
X-Gm-Gg: ASbGncvxF6dNL11MAoPLkLOJfbgIG49kysPUbIGckWZ8Po5pRXDSXH9yeIFQLPLF7Ys
	svwHfBZ4DrnFfmQuGq+FHGeLUt7RoDXCSjKZdBFH1j6OxEGlLdFEGbhWFOP0TH1A8LrhA1Yo3F4
	Cm10jLUTRGhoWvM2szB3R2ERyXYgY2YNHam83brfzp37lDrRsRhV1Ji3F5xKov1iGBMy6UA3vXp
	Bolo9VApUXKW9sgzH7h3HC8z2MFp1k=
X-Google-Smtp-Source: AGHT+IE264pwEl1Py+B5Xh9WvrM0/n0gzZfa2yw7thnQZLAo0gAAHCDysz98mjnnKEJ1frpS6mNIZHS1sZMZP+3Dyfg=
X-Received: by 2002:a17:902:f54f:b0:278:bfae:3244 with SMTP id
 d9443c01a7336-28e7f31f073mr119647195ad.54.1759422474219; Thu, 02 Oct 2025
 09:27:54 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250729141142.13907-1-e@freeshell.de> <20250819-sushi-change-1254c2d2a08d@spud>
In-Reply-To: <20250819-sushi-change-1254c2d2a08d@spud>
From: ChaosEsque Team <chaosesqueteam@gmail.com>
Date: Thu, 2 Oct 2025 12:32:49 -0400
X-Gm-Features: AS18NWBxdQwDblikz4B95tTiZeIyNZADBMQZlumlTwR7d0S68rpJfqzNjYf7xEo
Message-ID: <CALC8CXcAGobb__cs65bPT-vL-YVbpG-4f0j6FuiTgANFY7uw=w@mail.gmail.com>
Subject: Re: [PATCH v2] riscv: dts: starfive: jh7110-common: drop no-sdio
 property from mmc1
To: Conor Dooley <conor@kernel.org>
Cc: E Shattow <e@freeshell.de>, Emil Renner Berthing <kernel@esmil.dk>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Paul Walmsley <paul.walmsley@sifive.com>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
	Alexandre Ghiti <alex@ghiti.fr>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Hal Feng <hal.feng@starfivetech.com>, Minda Chen <minda.chen@starfivetech.com>, 
	linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

E, Conor.
That white boy you used to play paintball with.

On Tue, Aug 19, 2025 at 2:13=E2=80=AFPM Conor Dooley <conor@kernel.org> wro=
te:
>
> On Tue, Jul 29, 2025 at 07:11:35AM -0700, E Shattow wrote:
> > Relax no-sdio restriction on mmc1 for jh7110 boards. Property was
> > introduced for StarFive VisionFive2 dts to configure mmc1 for SD Card
> > but this is not necessary, the restriction is only needed to block use =
of
> > commands that would cause a device to malfunction.
> >
> > Signed-off-by: E Shattow <e@freeshell.de>
>
> I'm going to apply this one to for-next, to give it more of a chance to
> soak.
>
> > ---
> >  arch/riscv/boot/dts/starfive/jh7110-common.dtsi | 1 -
> >  1 file changed, 1 deletion(-)
> >
> > diff --git a/arch/riscv/boot/dts/starfive/jh7110-common.dtsi b/arch/ris=
cv/boot/dts/starfive/jh7110-common.dtsi
> > index 4baeb981d4df..b156f8703016 100644
> > --- a/arch/riscv/boot/dts/starfive/jh7110-common.dtsi
> > +++ b/arch/riscv/boot/dts/starfive/jh7110-common.dtsi
> > @@ -290,7 +290,6 @@ &mmc1 {
> >       assigned-clock-rates =3D <50000000>;
> >       bus-width =3D <4>;
> >       bootph-pre-ram;
> > -     no-sdio;
> >       no-mmc;
> >       cd-gpios =3D <&sysgpio 41 GPIO_ACTIVE_LOW>;
> >       disable-wp;
> >
> > base-commit: 038d61fd642278bab63ee8ef722c50d10ab01e8f
> > --
> > 2.50.0
> >

