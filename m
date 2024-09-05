Return-Path: <devicetree+bounces-100556-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C86296E1F2
	for <lists+devicetree@lfdr.de>; Thu,  5 Sep 2024 20:24:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 270B3B20FDE
	for <lists+devicetree@lfdr.de>; Thu,  5 Sep 2024 18:23:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CEAAE17BEC1;
	Thu,  5 Sep 2024 18:23:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="z/aWqasn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 551881C2E
	for <devicetree@vger.kernel.org>; Thu,  5 Sep 2024 18:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725560634; cv=none; b=czT37snYfv/bg1sPJjjSSiiSyRXsmwjF8iKq0Ns8PmoB2Dsm6nwp92Tql3TiE0y4xdF8LbH2lpJxJv+5jWOEFhr33Kjl8lkslbN0kb7Y9Kh/UgT6n1RWNw2hRBXUh7pk0RdaLCGRmWWWXfC4SpLEWGwVZ03RnzNI4F6m+RmDXDI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725560634; c=relaxed/simple;
	bh=f/31/t5k3O6xvGerABCcvxRjUn1id1UbVA9kPbTFwyo=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=PdrYnqhVQAZuTqFT4d2rZ7ChENWqI+3DYyw3yJ2rq1ed/7bYlo36lPhbK4vEl7TQQ/phrEEOZCvN14kUr7zHayPhHvYqA6yrI9HAoeu+Sf40YXEs5G4fIAojoH467n7LXDUCt8uK6TG51603kccJDD7it4PBc8BOUoHmSSPKfWk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=z/aWqasn; arc=none smtp.client-ip=209.85.167.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-53655b9bbcdso595776e87.2
        for <devicetree@vger.kernel.org>; Thu, 05 Sep 2024 11:23:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1725560631; x=1726165431; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PTXrlwhXw1zt8lQFSd42ZTE/ToLKGShHg8+BHiGWWNs=;
        b=z/aWqasn+NCHxj5X5U2zyA2hTNr3BP23iecYQMuHzGueVPAf7IKUgI6F3pQ4sFR3+O
         Cf09wFpVg7dwxX4x93okeTq6OwQHPdmGCozwuwwI1XkCcloUDUnjeclsUyF/uNvbb5rL
         Hcq5eJuYxe27zA83sF1KldvDQHnOySgQW7BYuIWUrWsQ6v9dD+hCtUikjGXNpdsoRk9T
         OcMhVoZFIPTgUqOWxYajDFuGvrrWjHypgmOj+5JdXjU1tec4oWQqOiQeRQ59Y6qU/GUT
         O0botCUy9+c5ef0Y0+DkdWZAwCq54Q2+vo9efUPDZ1Sw9QWSsDiKt4GbUryvhxQoqbGp
         NpbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725560631; x=1726165431;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PTXrlwhXw1zt8lQFSd42ZTE/ToLKGShHg8+BHiGWWNs=;
        b=ok1OZT9Q+HM0koQS8kJxfK3luGMTkHCehR+HU/ddEm56AnQGSb+bqeqlK3KfXXUu6l
         sVb+R3MNuWolgJLgvIcyBt9RwCSw8choWqyGeyPb5OWsmkMs41EVtnlO2eSE6urZX/A/
         8jziSCcxs0xCG4eunbFNAwfJGnayI9iVd3Cu90wAfKI4k5Q2FuKvCLO3AkmSiONv/3Do
         bGinW/vVWCQuQaYK7NiVWnuYmWTE9OAi5060LwKOmwvtsKs+Y2IJzUr/GWsju9ER/P8o
         7+53LPej7fL8DUtgRQJG74VIZO7dVH1y4tFIR+WEYpWMgOYRGTzGKza8xUlIJYZuMIG5
         pc8g==
X-Forwarded-Encrypted: i=1; AJvYcCW2JGbivORTukkwhMku7/lQpY8JttTogSPnzVbYm5NlhG8cE95/xORbiz1uM6YVJBV1QGRRrU/g7MPY@vger.kernel.org
X-Gm-Message-State: AOJu0Yy6yRn/Eu4Jd7P+cRFVfa/DMTdeRxvmxEN4Nc7HRcqrFxW3sKJp
	+DG752rdsxi7Quu1Z9v167igzDCqA9o55zCx2Zsve9pW+Y9syTs/LJ/EQL6QxY1NqKqdFKWKWCr
	9JilGx3geagK1Z4W7N1lUHYjR9Zw0kcojTTRTQA==
X-Google-Smtp-Source: AGHT+IHiDLQvaJ4IVXwK2VyRvlFAAcwq5bTMEw79jXXUoeb0Z+oAV0I9OTCJQoWIe7envtsIcNDLvCxL0Z8pFxQr6X0=
X-Received: by 2002:a05:6512:3f26:b0:52c:d84b:eee6 with SMTP id
 2adb3069b0e04-53546baac97mr15674180e87.38.1725560630677; Thu, 05 Sep 2024
 11:23:50 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240905122023.47251-1-brgl@bgdev.pl> <20240905122023.47251-5-brgl@bgdev.pl>
 <Ztm6fzmoeWcCpqvi@hovoldconsulting.com>
In-Reply-To: <Ztm6fzmoeWcCpqvi@hovoldconsulting.com>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Thu, 5 Sep 2024 20:23:39 +0200
Message-ID: <CAMRc=McDHi5EVpBjsuFE+JHgBhh84tsT6xr5PWO5yeU8zbS99Q@mail.gmail.com>
Subject: Re: [PATCH v3 4/4] arm64: dts: qcom: sc8280xp-x13s: keep less
 regulators always-on
To: Johan Hovold <johan@kernel.org>
Cc: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Sep 5, 2024 at 4:04=E2=80=AFPM Johan Hovold <johan@kernel.org> wrot=
e:
>
> On Thu, Sep 05, 2024 at 02:20:22PM +0200, Bartosz Golaszewski wrote:
> > From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> >
> > Remove the regulator-always-on property from the ones that used to be
> > implicitly needed by the on-board WCN6855 now that its PMU is modeled i=
n
> > device-tree.
> >
> > Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> > ---
> >  arch/arm64/boot/dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts | 4 ----
> >  1 file changed, 4 deletions(-)
> >
> > diff --git a/arch/arm64/boot/dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts=
 b/arch/arm64/boot/dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts
> > index 88b31550f9df..1a9dac16c952 100644
> > --- a/arch/arm64/boot/dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts
> > +++ b/arch/arm64/boot/dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts
> > @@ -479,7 +479,6 @@ vreg_s10b: smps10 {
> >                       regulator-min-microvolt =3D <1800000>;
> >                       regulator-max-microvolt =3D <1800000>;
> >                       regulator-initial-mode =3D <RPMH_REGULATOR_MODE_H=
PM>;
> > -                     regulator-always-on;
> >               };
>
> What makes you think s10b is only used by wcn6855?
>

I didn't say that. It's used by many components but they seem to be
all described in DT. But I get it, the schematics show it in so many
places, it would be risky to not keep it on.

> You clearly did not check the schematics so make sure you verify the
> rest as well before resending.
>
> And if any of these are valid, I think this should be part of the
> previous patch.
>

At least vreg_s11b and vreg_s12b should be fine. I'm not sure when
I'll respin the series though, we need to first figure out whether to
upstream the calibration variant property and what its name should be.

Bart

