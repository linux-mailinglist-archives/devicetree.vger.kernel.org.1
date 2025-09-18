Return-Path: <devicetree+bounces-218631-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FEAAB828B5
	for <lists+devicetree@lfdr.de>; Thu, 18 Sep 2025 03:45:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A75FF1893C0C
	for <lists+devicetree@lfdr.de>; Thu, 18 Sep 2025 01:45:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 63CB0239E6F;
	Thu, 18 Sep 2025 01:44:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="CYjQJf2w"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com [209.85.167.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 823BB238149
	for <devicetree@vger.kernel.org>; Thu, 18 Sep 2025 01:44:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758159895; cv=none; b=tWeFZcqZJrwUpK7SF0S1ZQoLykxJ+dglA/XkdfW/Cc44IS8QB4Fu+31EXN5JIL7jInNWBbOeW5BPI2Pj4nMy5Uh77Ai8wkqH6qDo3uR1HoH6o/o1K95cvV15kpYSz7LV+mUud9Rt+vSyFJReNNvwExBgTu3hLHNbmLWwQpKD/eg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758159895; c=relaxed/simple;
	bh=ckofcSJyVceBJiaHInKCfYw0lV6zDNQ56NxqvQs/lmk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=lMka8LM4qwUF8147XsO8Vf5PoS9td2vvpZVZFsCYbJKi69Ft3mwb/508EhissD5K+Iqo4vVTZ/H7Du40W6kOFU0EssGgBiD/eNDbnbOcSWFnPLZRHuKQj6LPQGAAtVsryaYaoGMoJcnGpKQ5wHrAFDtQrNDX01tYdEcK4NIJ1yQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=CYjQJf2w; arc=none smtp.client-ip=209.85.167.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f51.google.com with SMTP id 2adb3069b0e04-57263febd12so1815038e87.1
        for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 18:44:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758159891; x=1758764691; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Dz7+GW3tG6h1ZR0T3uG4mrds5eW7kOQK7SR5mlNPDFE=;
        b=CYjQJf2w5nSfPM3bFzl03AJKDG3PD3aFvkZz3cMhcWVngb6mkKPbe/Psb9n1/PmYrv
         SX9ruzNoXVTGja3upaudGFDknoS2APk0uBw9DRq+nNFRjLraiwiVGCjnUfpv9Nr5KLXM
         dKeENMTLAEet3G14HsX2+/I8cTVJc6I0RJ7xqJ0UgLmo1vO+SrxETz6YAdpFp966qFzz
         Dc4KpzI6g0hUmYIblQk46V0jJtJ+oG3QS0k9bFO2i7jn/oeuLQN2Qb5xPmHvnKsbRrhn
         hEjjSidHeoW3UKbfZDcuYfBbtmUqCQw/dohG0A0J8LuSy4iDyYtzOs01PsOQ9E0PvYRh
         n2Vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758159891; x=1758764691;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Dz7+GW3tG6h1ZR0T3uG4mrds5eW7kOQK7SR5mlNPDFE=;
        b=nBL3YCtlH5TyopzvoCwHT4qFbHsMV+EAkBDJvcCT00+DhRmiQXvJUXE9/TpSaftdzq
         X60xJdvdgHvPunMvLo8MYXnQo2f2MvRmmfH56MiW6b3rGh1yagmcQOQoOszGbVsI7kCR
         OQEDme1OVDCd9VrcXd7Z5I5zsyS+MzJx0Pc4eI/OxMtB1FZNw4PM2ZAUtnO/SksP5ckn
         LovWKW6qddUhYAs+Cw5HRaR2tRFnfm7wHn5yuRgTXLNF1uymmowMUlKFZWWgI/7JpP3D
         SgbqL/+QuDImwHvroz6895XlTtcfxcWiOHMQZ8Hg8AAUnjIgq+lxYivkdONMGvD4EmA4
         timQ==
X-Forwarded-Encrypted: i=1; AJvYcCUEOPmTGnW2KAaNwqGXWqCtTBToKo2W+Tevoig0YaLux4xsbYxtxT4Ek4tshco846v5k+wDL0T/kK1Q@vger.kernel.org
X-Gm-Message-State: AOJu0YyC1j+fX/6vJR00tF3zvzYtCAjA0JUHaEBw18IihKomyOpHglrj
	G+wow9ZDX1B0wD4xzKnEjxU6VdAWbHiJR49gaSA+KL5w/BwjdXoo2hh1AHpOUdYV4uSRYBgC/eL
	zIT5y4AMQ8vydRsx0SljU2oq6oSCEqGM=
X-Gm-Gg: ASbGncuFCTgcCRRC6QRuaWRlKu0MKIsN4hlMOuX5xm2t60Bg0IliyBvibj8hsvaR+x7
	FxIT3btnyZU9gwUYfIiZkNuoDT9O8SS6LsLu3nvhtzjopebI6D9BZH4nWJjs3HUQRQCDBNaguPK
	8M10fsV4LurUADDRMf7rg8JOaR13GAYDETyA/dpWoYw3Mi5BxO6BPZ1tKVKz+hI1eiP/GQZts/S
	23ss6EKWVPasWgTXDSY75NFhoXjZAChCBeF0BwkbQiH3MMmDRvN5LkWyqu2mUHPk2h/lt5YnO63
	8jSbaigComPZtVm7Bm2SacD7Eh3ZHqSHQ2vT5pVBycYITCKL5DZq7/kJrnbtmHAkIcI=
X-Google-Smtp-Source: AGHT+IGKY+1+g/lwbiYKvlfzeD60pboVHy/VushKXhZ9OREfWE89ojCi15z0JD4b0huoAPEOkCpfqDMpDym4MFAiCK8=
X-Received: by 2002:a05:651c:31ca:10b0:336:e22d:804a with SMTP id
 38308e7fff4ca-3617d39f44cmr3083251fa.17.1758159890386; Wed, 17 Sep 2025
 18:44:50 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250916-judyln-dts-v2-0-5e16e60263af@postmarketos.org>
 <20250916-judyln-dts-v2-3-5e16e60263af@postmarketos.org> <772be3c8-751b-4f96-8ed1-fc8033babe74@oss.qualcomm.com>
In-Reply-To: <772be3c8-751b-4f96-8ed1-fc8033babe74@oss.qualcomm.com>
From: Chris Brown <crispybrown@gmail.com>
Date: Wed, 17 Sep 2025 21:44:38 -0400
X-Gm-Features: AS18NWAao7zpfSXjjoiJ5q_TqFb4cFreK3KCd3ZLhmeDLmO-Gp6sqoEX-RaJuZg
Message-ID: <CABN5=wHEGyCOc5XoON=oVFUJUPaAn3B1QQDvP+ZZPYi+ULitpg@mail.gmail.com>
Subject: Re: [PATCH v2 03/13] arm64: dts: qcom: sdm845-lg-judyln: Add battery
 and charger
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Paul Sajna <sajattack@postmarketos.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	David Heidelberg <david@ixit.cz>, linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, phone-devel@vger.kernel.org, 
	Amir Dahan <system64fumo@protonmail.com>
Content-Type: text/plain; charset="UTF-8"

Source https://github.com/EmanuelCN/android_kernel_lge_sdm845/blob/U/arch/arm64/boot/dts/lge/sdm845-battery/LGE_BLT39_LGC_3000mAh.dtsi
Small assumption on my part that "fg-cutoff-voltage" has the same
meaning as "voltage-min-design-microvolt"

On Wed, 17 Sept 2025 at 09:47, Konrad Dybcio
<konrad.dybcio@oss.qualcomm.com> wrote:
>
> On 9/17/25 3:09 AM, Paul Sajna wrote:
> > From: Christopher Brown <crispybrown@gmail.com>
> >
> > Values based on lineageos kernel
>
> A link for reference would be nice to see
>
> >
> > Signed-off-by: Christopher Brown <crispybrown@gmail.com>
> > ---
> >  arch/arm64/boot/dts/qcom/sdm845-lg-judyln.dts | 13 +++++++++++++
> >  1 file changed, 13 insertions(+)
> >
> > diff --git a/arch/arm64/boot/dts/qcom/sdm845-lg-judyln.dts b/arch/arm64/boot/dts/qcom/sdm845-lg-judyln.dts
> > index 49225e4fa80e5f45a36964d5d733dc238e4413f8..be488891d0ab01c5bfd3762514fbf1c3bbf6845a 100644
> > --- a/arch/arm64/boot/dts/qcom/sdm845-lg-judyln.dts
> > +++ b/arch/arm64/boot/dts/qcom/sdm845-lg-judyln.dts
> > @@ -37,6 +37,14 @@ key-thinq {
> >                       interrupts = <89 IRQ_TYPE_LEVEL_LOW>;
> >               };
> >       };
> > +
> > +     battery: battery {
> > +             compatible = "simple-battery";
> > +
> > +             charge-full-design-microamp-hours = <3000000>;
> > +             voltage-min-design-microvolt = <3200000>;
>
> 3.2 is rather low.. are you sure?
>
> Konrad

