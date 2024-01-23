Return-Path: <devicetree+bounces-34106-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DEEF3838A56
	for <lists+devicetree@lfdr.de>; Tue, 23 Jan 2024 10:29:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0F7111C25A76
	for <lists+devicetree@lfdr.de>; Tue, 23 Jan 2024 09:29:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9D71858ACD;
	Tue, 23 Jan 2024 09:28:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="M3CUlTi3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f44.google.com (mail-ua1-f44.google.com [209.85.222.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B1C75A0E1
	for <devicetree@vger.kernel.org>; Tue, 23 Jan 2024 09:28:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706002137; cv=none; b=IVDli+cZy0TKnA4DWvfQOFq2ghrz2LegSi4UDXc/fk3jkapVDeiSIWVl8lATsOl7OEW3xakWNnPmFYL35q46KgAq2H66YnzCU110AhuWZL+ToLS0+oP3QLqNIXU0auiMqWep3fu2h6/Ta/2hvmRZFkZcM7WS5Hm9inolqcAs08U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706002137; c=relaxed/simple;
	bh=6lLhD6Ou8v8X9OhipbrM+HkIk2vyyy6/FHAjHd/tYgk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=MsAirMfFYdz7mPMnNGE+usnZMdcuU8Utf/D7tjMxgdoMJqeb+lZbw3mA6IQCeT33vzCd1TrZDqVBaJqya5TUrxGZ5eHl8Qa24Itq+SM1uHr3wnI4IaUpDNedHfXbXaOEtz3rbYIjAhkIJVXuO6c9/0vJ431+twqTckkHshgxXoo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=M3CUlTi3; arc=none smtp.client-ip=209.85.222.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-ua1-f44.google.com with SMTP id a1e0cc1a2514c-7d2e1b94f91so1078603241.3
        for <devicetree@vger.kernel.org>; Tue, 23 Jan 2024 01:28:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1706002135; x=1706606935; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oWoXPJ4PQlvmmz3cFANOqRDdLm6hLsEi8tDxwbdYEkg=;
        b=M3CUlTi3AZl5tQIMbxqVFLy3Tgi5EF8ZE8bP+Wg2bBgov+Klpb/Im0G7QnsoSgDXIy
         62O+joq7fg7KXfVcuUKVIVzBNfukZSo8R+a/Wy6ZoqhnGAMZv7ZyIjr4OQzUoDfujTyN
         kvLiZ7SYBUBtqFzYFKCAZd5GjIaP/g04n6TGnH6OhIBHChKWKa3+FlCEjhDC+gPTy3E3
         zSOpIO+/K33mcpDoWuRZlk/XbBWM3WOO3sG+zGHkY5ixF7n6mVyYfbbVf//AVBReMPPb
         qKIle9tN3VrMei/MZQ7NQoqLmkZhpvWYodG3yUkEUXvZHW5QKjKoUF2SBP1gyLPXEEg4
         n13g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706002135; x=1706606935;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=oWoXPJ4PQlvmmz3cFANOqRDdLm6hLsEi8tDxwbdYEkg=;
        b=NP71phRJVwodPoYSVWJZbiqtC6UzPj4Psi8b+6D5AjxLmrZ2YxzpWlGlDRutdEOFGC
         Gz8b6v+hCshjKbTh3PPLlbKed0ZomKHxrfGuyAVR2HU+j6X5/m00V9xDxtK6YCw1V6Q/
         9csRZLHqVo4pLptKR5yKFPodxlxyRs8V722dJy24F4zRBgT7FIxVecaYaHbg+ePkPQT5
         ouA6I/pX7TAF6Phmvnk3vkQqacaafBOC+Jy3j8nEpLcu9mSrblZl7J2kPgKsIEooN++L
         ZPc6IiyaczUbmpgH4/ep94zRPGdXI/4VYE6WyWVCKn1mNTgNf75aCFFrAd72oeZ7YTrl
         ZzAA==
X-Gm-Message-State: AOJu0YyGNpnXACMARep+4RB78REEpiKvBezNuBtc9/7Xbl05cBOgbLKB
	U4J60iE+QlvuKobKZdDKODlkQIotCzDdtrWumJbUlH5JTBE5UAMg3RU37ODhv/QDdZ1/KRGbYX/
	EvXx1htAEiRorob9L0UHPthApUJOK7uN2Pi8xvg==
X-Google-Smtp-Source: AGHT+IE6tOoVX4H2ydA2JWMrPnKov2bAQLC/xKMHC/aZHlJrBhefIWfkyZptba0P66ZjnByBY2KBgljIzXEACl3D9Og=
X-Received: by 2002:a05:6122:12f9:b0:4b6:e39a:527f with SMTP id
 k25-20020a05612212f900b004b6e39a527fmr2040825vkp.29.1706002135051; Tue, 23
 Jan 2024 01:28:55 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240122182158.69183-1-brgl@bgdev.pl> <CAA8EJprWddrEH+Wmh4SExPygSVz6+WpSX-MDQ+hev1gov74rng@mail.gmail.com>
In-Reply-To: <CAA8EJprWddrEH+Wmh4SExPygSVz6+WpSX-MDQ+hev1gov74rng@mail.gmail.com>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Tue, 23 Jan 2024 10:28:44 +0100
Message-ID: <CAMRc=MfsDTfhg2BO6DFWVRwUY8OYayW9XneHCvpqVYezRQ3Mjg@mail.gmail.com>
Subject: Re: [RFC] arm64: dts: qcom: qrb5165-rb5: model the PMU of the QCA6391
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Abel Vesa <abel.vesa@linaro.org>, Alex Elder <elder@linaro.org>, 
	Srini Kandagatla <srinivas.kandagatla@linaro.org>, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, 
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Jan 23, 2024 at 6:54=E2=80=AFAM Dmitry Baryshkov
<dmitry.baryshkov@linaro.org> wrote:
>
> On Mon, 22 Jan 2024 at 20:22, Bartosz Golaszewski <brgl@bgdev.pl> wrote:
> >
> > From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> >
> > I'm limiting the audience of this compared to the PCI power sequencing
> > series as I wanted to run the DT part by the maintainers before I commi=
t
> > to a doomed effort.
> >
> > Here is the DT representation of the QCA6390's PMU with its inputs and
> > outputs. If I were to implement the pwrseq framework that would be able
> > to assign the relevant pwrseq data to the consumer based on the actual
> > regulators and not abstract bt-pwrseq or wlan-pwrseq properties - would
> > that fly with you?
> >
> > We'd need to deprecate the existing BT bindings but unfortunately they
> > are already described as consuming the host PMIC regulators in bindings=
.
> >
> > Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
>
> My main concern is whether this is going to pass the regulator
> subsystem locking. Basically you have a driver for regulators, which
> will itself call into the regulator subsytem. It might be reentrant.
> Or it might not.
>

This is irrelevant for the HW representation though - which is what
I'm trying to figure out first.

As I said under the previous discussion: I don't plan to use the
regulator framework here. Instead, the regulator phandles will be used
by the new pwrseq subsystem to retrieve the handle to the correct
pwrseq context structure.

But even so: I doubt this is the first time something like this is
used: PMICs take supplies all the time and expose their own
regulators. I wouldn't stress about it.

[snip]

> > +
> >         thermal-zones {
> >                 conn-thermal {
> >                         polling-delay-passive =3D <0>;
> > @@ -734,6 +816,24 @@ &pcie0_phy {
> >         vdda-pll-supply =3D <&vreg_l9a_1p2>;
> >  };
> >
> > +&pcieport0 {
> > +       wifi@0 {
> > +               compatible =3D "pci17cb,1101";
> > +               reg =3D <0x10000 0x0 0x0 0x0 0x0>;
> > +
> > +               vddrfacmn-supply =3D <&vreg_pmu_rfa_cmn>;
> > +               vddaon-supply =3D <&vreg_pmu_aon_0p59>;
> > +               vddwlcx-supply =3D <&vreg_pmu_wlcx_0p8>;
> > +               vddwlmx-supply =3D <&vreg_pmu_wlmx_0p85>;
> > +               vddbtcmx-supply =3D <&vreg_pmu_btcmx_0p85>;
> > +               vddrfa0-supply =3D <&vreg_pmu_rfa_0p8>;
> > +               vddrfa1-supply =3D <&vreg_pmu_rfa_1p2>;
> > +               vddrfa2-supply =3D <&vreg_pmu_rfa_1p7>;
> > +               vddpcie0-supply =3D <&vreg_pmu_pcie_0p9>;
> > +               vddpcie1-supply =3D <&vreg_pmu_pcie_1p8>;
>
> This really feels like an overkill, All those voltages are handled by
> the PMU itself, rather than being requested by the WiFi or BT drivers.
>

What alternative do you propose?

Bart

> > +       };
> > +};
> > +
> >  &pcie1 {
> >         status =3D "okay";
> >  };
>
> --
> With best wishes
> Dmitry

