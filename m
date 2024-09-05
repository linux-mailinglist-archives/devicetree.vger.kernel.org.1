Return-Path: <devicetree+bounces-100433-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2212E96D96A
	for <lists+devicetree@lfdr.de>; Thu,  5 Sep 2024 14:54:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4DEC21C20974
	for <lists+devicetree@lfdr.de>; Thu,  5 Sep 2024 12:54:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4E0A719B3EE;
	Thu,  5 Sep 2024 12:53:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="GE67oCRL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C74A919AD6C
	for <devicetree@vger.kernel.org>; Thu,  5 Sep 2024 12:53:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725540839; cv=none; b=e8B2uc/xsGkNZblbxrkc+eVZIuGqIuzoot4yy6fF1d6GsPMAuDb6ph43slJUhBqPJGtqjjlqYMGiafH61Qiza1C/nlStSfJ9KIuDntydWAGR5tDl/I4mhZlNwJxtIJPLO5Vnqqe5UZbyaImnG5xt810AlWjv2dZ5B0BdNWnkvZw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725540839; c=relaxed/simple;
	bh=aDZsr/Y1D+xKY6Gl2Al8WqEYdfMldE4A2S5qHXZN8dQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=gVZdQoHtgo8h1nST6LHAcdKzFdXV+35BWNhbopv3D9cfZmEZ8+u4Ij6z+q425KhTXcdJg5ZPbbKdkNkiSvrGzYrhk2rjJyN6TcqfIJKMpjdUrsjdfMGNyCmInZu7Zac8eNpiG4WpJQIT9Y9UvHHm91JK6cMgZ4VcvP4m+ZwOJmc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=GE67oCRL; arc=none smtp.client-ip=209.85.167.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-lf1-f54.google.com with SMTP id 2adb3069b0e04-535dc4ec181so689265e87.3
        for <devicetree@vger.kernel.org>; Thu, 05 Sep 2024 05:53:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1725540836; x=1726145636; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gdg+QHv9R/TUmVX0H+TatmC5CikkhaYU5tOli/7qzCQ=;
        b=GE67oCRLI+5N7YYeDFi2ASb5GK9uUdOnV4W9HXbymmK4MR0W1XBJN7u2HY+D2utB+2
         cF4GDAKa2yXkb4oNVh+SE/m1itWNqnPWjxNaaHM9jM+5rMYEY3nunAF/75TrwkoWaZF0
         x9+/nCrd+lTJbmu2fpQjyaJjI6/H8yUKAsnTW0elkT8D7OrUvSeSGy0a7eb0H2Ik3Smk
         Ds11Ib689xxI+cHXtPK3u8L2cPgjQowdAurHnlgV/Rs1sf9aoX7rWs3tDVqJ7uzJz5mF
         ej126k5eQfK/m5Dc5VPRkC/g5zNHY87q/eV3/C7WOgea0HXcJZ6KlG+2fuSEiM+BWP6N
         Mh3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725540836; x=1726145636;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gdg+QHv9R/TUmVX0H+TatmC5CikkhaYU5tOli/7qzCQ=;
        b=KeCLUzW0Qy12dMWanZLJw6NDTabA8Yvi+lOmLr9zUxGLcDsDje3OI+0YqCE5/s/bf6
         e5YPJ2DLZKOiUw5QrwZ5Nr3XdgupTpLkF3G/c3YrmTSCi2ZMTKhY2Ml3xS2f/lDPzDqC
         KheotdZud3pyTI0aob+beNG4xuzOIQma80lviQgbGbggahlAYoRPeNn/K3k8KmNH7+ah
         S08pgg7hnEo6qXqRn9rNkAuc+oAi5NdrMCN3WVgG9JRAe0L8tygC4RvDHOzryIKQ/UbA
         M40QbiWAw9nzIq1/3GUw2HKI6iRt/pB6Dyn6vFr3x8Hrs1sXZ6Q/9slGVIRIlNKgLwHR
         Z0IQ==
X-Forwarded-Encrypted: i=1; AJvYcCVLszRtwNPVxpbMF0eyYJ2jDGldWGqqsDZlGiUg6QZMkyW72MuD++g1IhIAKm/ZUL5s9UrOaBI9ZS6r@vger.kernel.org
X-Gm-Message-State: AOJu0YwdhN0ZNJU/5ZL22H+Pe8sepO59oTvsjYtp1xbGyy02CuEOQjAM
	XMq1qroFUhyHqfK35On2C08B5pC1vA/4ofcetZCa6O0ADAM2jMUGzkIheqvSl9XXN0HwA44Pr4v
	tZunuAPrfhs8MAqcn+qBWlKS3VJVKd+VdwIiCQxzux/Cnkljb
X-Google-Smtp-Source: AGHT+IF7/4pTziBVraOrP4XpxQHqioKEvy9gFKlI8OsVjPnPkX4HNCnRXbRZ1jTFRtTiIloqNisUZmSD6HRBd7yhHrc=
X-Received: by 2002:a05:6512:318f:b0:52e:ff2a:217 with SMTP id
 2adb3069b0e04-53546bc3690mr11828231e87.50.1725540835674; Thu, 05 Sep 2024
 05:53:55 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240905122023.47251-1-brgl@bgdev.pl> <20240905122023.47251-2-brgl@bgdev.pl>
 <6vikrqhdnkefzpahhhtz2hpi62jvcwnzclm7touwtnpxdzvgrf@uc7r6a7bbjek>
In-Reply-To: <6vikrqhdnkefzpahhhtz2hpi62jvcwnzclm7touwtnpxdzvgrf@uc7r6a7bbjek>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Thu, 5 Sep 2024 14:53:44 +0200
Message-ID: <CAMRc=MeijX2by+MS_vq_OVx25JO6z=zNfymta35h11mbm=vmtQ@mail.gmail.com>
Subject: Re: [PATCH v3 1/4] arm64: dts: qcom: sc8280xp-crd: model the PMU of
 the on-board wcn6855
To: Dmitry Baryshkov <dbaryshkov@gmail.com>
Cc: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Sep 5, 2024 at 2:50=E2=80=AFPM Dmitry Baryshkov <dbaryshkov@gmail.c=
om> wrote:
>
> On Thu, Sep 05, 2024 at 02:20:19PM GMT, Bartosz Golaszewski wrote:
> > From: Konrad Dybcio <konradybcio@kernel.org>
> >
> > Add nodes for the WCN6855 PMU, the WLAN module and relevant regulators
> > and pin functions to fully describe how the wifi is actually wired on
> > this platform.
> >
> > Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> > Signed-off-by: Konrad Dybcio <konradybcio@kernel.org>
> > [Bartosz:
> >   - write the commit message,
> >   - rebase Konrad's commit,
> >   - fix one of the supplies' name]
> > Co-developed-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> > Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> > ---
> >  arch/arm64/boot/dts/qcom/sc8280xp-crd.dts | 108 ++++++++++++++++++++++
> >  1 file changed, 108 insertions(+)
> >
> > @@ -583,6 +668,23 @@ &pcie4_phy {
> >       status =3D "okay";
> >  };
> >
> > +&pcie4_port0 {
> > +     wifi@0 {
> > +             compatible =3D "pci17cb,1103";
> > +             reg =3D <0x10000 0x0 0x0 0x0 0x0>;
> > +
> > +             vddrfacmn-supply =3D <&vreg_pmu_rfa_cmn_0p8>;
> > +             vddaon-supply =3D <&vreg_pmu_aon_0p8>;
> > +             vddwlcx-supply =3D <&vreg_pmu_wlcx_0p8>;
> > +             vddwlmx-supply =3D <&vreg_pmu_wlmx_0p8>;
> > +             vddpcie1p8-supply =3D <&vreg_pmu_pcie_1p8>;
> > +             vddpcie0p9-supply =3D <&vreg_pmu_pcie_0p9>;
> > +             vddrfa0p8-supply =3D <&vreg_pmu_rfa_0p8>;
> > +             vddrfa1p2-supply =3D <&vreg_pmu_rfa_1p2>;
> > +             vddrfa1p8-supply =3D <&vreg_pmu_rfa_1p7>;
>
> As you are going to post another revision, please also add
>
> qcom,ath11k-calibration-variant
>

I had it in earlier revisions. The only one we could add here would be
the one from X13s as QCom has not yet released the data for the CRD.
Johan and Konrad were against adding this here if it doesn't refer to
the correct one so I dropped it.

Bart

> > +     };
> > +};
> > +
> >  &pmc8280c_lpg {
> >       status =3D "okay";
> >  };
>
> --
> With best wishes
> Dmitry

