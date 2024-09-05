Return-Path: <devicetree+bounces-100411-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 84D2496D86B
	for <lists+devicetree@lfdr.de>; Thu,  5 Sep 2024 14:26:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 312971F260C4
	for <lists+devicetree@lfdr.de>; Thu,  5 Sep 2024 12:26:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 44ED419AD9B;
	Thu,  5 Sep 2024 12:21:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="sjnpjkLu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com [209.85.167.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A858019B3D7
	for <devicetree@vger.kernel.org>; Thu,  5 Sep 2024 12:21:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725538906; cv=none; b=EPpA8sK6v3X48yBrJE3PYK9dSufQscZ/31awar72J8U6oRVizNk4aWCXyuIbzD2gpitZmIGhF3Dig4V7D9/QfDTE4Ta1HKrxU9kdzjRUKucBOezqU0XqPqsjQ6J4vTmQXtnE1zmEVrVcUFjYZnfILgPTThCoUNHqbbrVWJ9Us+E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725538906; c=relaxed/simple;
	bh=F01XbYYcnFz3IrGJAZEt/h6KlLzKcoJy+krrnv7pnJo=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=UPbtfnR9tn8+/ZpIEAPMpw6dv1qdYjzQGsY/4I/ZjmlpDT/tqU2mzpyqezzNh4mnVAfrixzrvq0s5IYlrBveVn1tKJ4R/8APsncZdPIXqPgU/W/kYYsOrwfOYefR6pXikafqbtPSD9o9kyWefOq6wwXG6vPQuFQ+7F1mOzDBHk4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=sjnpjkLu; arc=none smtp.client-ip=209.85.167.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-lf1-f41.google.com with SMTP id 2adb3069b0e04-5343e75c642so802748e87.2
        for <devicetree@vger.kernel.org>; Thu, 05 Sep 2024 05:21:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1725538903; x=1726143703; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TACxCNrG/DopYef41PGhbtqig8LKMsOnKp3kgyqsYHs=;
        b=sjnpjkLuw1INmoHTo4VwdOPWr86OrPYTHyFc/HZSTGlqSL6+lE7mj9xYlg75bPN8HZ
         kzEjJLRDJiWSdnIN1+h+vysHjaN0eg5g+8sesDdqTd/0SCR2K8aCH0mCk++/fKkYUlvK
         Kn3QfRNFsEpaMbjYffJiYlj/lCGEZ2wrhRMOeVV/oduW6/CQozNRJmqwitRz/1FF/JZ8
         NoH7rVr1owoHGNkcpNCl2fSlAmznjPLahN+AK70aQCYIzrM/V4E7Yw6OmgzKejP5ahIx
         TnrL547DbyQFevjgVs4vF/oPJObQD2oKnGr9Gyd8XWe1t2kcYzq4FT12R9hYGL70Rw0Z
         zo1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725538903; x=1726143703;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TACxCNrG/DopYef41PGhbtqig8LKMsOnKp3kgyqsYHs=;
        b=n2PfyljGJC3NnaF8XnMiDRUqY05E+094jTexfdI74fG4mi1Aik6BUN9Sagh6mjQ6Hb
         UM9zEHh68N5qK5d9YXHxp3w89XccNwKqkLyEhFqdxXt8U9lsP5pv3wAKIhcdPFqQHGxM
         w+1XIAoY8s+3Z2BMGQPpmzS3KTRHv7rrZ03A2JqFFT2o2UB+SAmzbWiYt17JE83zm6iz
         i+qi0vE+FhXc/VkbSC9jjhZjZeTzrPMuoE10pOX3I7SW5itvRaXvHeuV1zqyk2VlCayN
         hj57xIJe1lDtWmvLQxP8acNI/hZIHQB7CDuJTmN3zZILUkp0Fv28AAOxQLsrykenzZzw
         xGDQ==
X-Forwarded-Encrypted: i=1; AJvYcCUhpKeshToIoQ4Km8d9WoE4CxA6QbV2isg1GKHqpC/l0JyeXLx4OIkQ1IjXhJArt/Ki1grvaR+NvG+O@vger.kernel.org
X-Gm-Message-State: AOJu0YwDKBoHiSL1OJdZk7qV33q8EDgMfDEOqY1sUJoYzAwUJrwWnD2t
	o+pUD3K8haF8uWnEEkfzw1GBoO+oPmW+eCvKVeWb2KA0pCy0wYV7kc69WVZU01Kl7G9bMPE/0jo
	J7tCFegd8gq5u+nBPXXiyznoBGqenfDwlngGJxw==
X-Google-Smtp-Source: AGHT+IFcMMTAuv+S+5/9hcRxIAh41Pmij3mBunr6XibOfsaQXElI+A3yPmhY2q3bx6emgGpGca4XjRlTGGn+3XPVLNc=
X-Received: by 2002:a05:6512:3e06:b0:52c:dfa0:dca0 with SMTP id
 2adb3069b0e04-53546ba0eabmr12703593e87.43.1725538901776; Thu, 05 Sep 2024
 05:21:41 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240903093629.16242-1-brgl@bgdev.pl> <20240903093629.16242-4-brgl@bgdev.pl>
 <lpjfpgnbhrp3u4rqczoouf2kvktdigisi3sjhfstanw4t5g2sc@fvqana5gftds>
In-Reply-To: <lpjfpgnbhrp3u4rqczoouf2kvktdigisi3sjhfstanw4t5g2sc@fvqana5gftds>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Thu, 5 Sep 2024 14:21:30 +0200
Message-ID: <CAMRc=McmnXe83bsRf+uivV05Z_dv8V9ox5Rx3kGH9O1eDpka1A@mail.gmail.com>
Subject: Re: [PATCH v2 3/3] arm64: dts: qcom: sc8280xp-x13s: model the PMU of
 the on-board wcn6855
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, 
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>, Steev Klimaszewski <steev@kali.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Sep 3, 2024 at 4:18=E2=80=AFPM Dmitry Baryshkov
<dmitry.baryshkov@linaro.org> wrote:
>
> On Tue, Sep 03, 2024 at 11:36:28AM GMT, Bartosz Golaszewski wrote:
> > From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> >
> > Add a node for the PMU of the WCN6855 and rework the inputs of the wifi
> > and bluetooth nodes to consume the PMU's outputs.
> >
> > Tested-by: Steev Klimaszewski <steev@kali.org> # Thinkpad X13s
> > Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> > ---
> >  .../qcom/sc8280xp-lenovo-thinkpad-x13s.dts    | 98 ++++++++++++++++---
> >  1 file changed, 86 insertions(+), 12 deletions(-)
> >
> > diff --git a/arch/arm64/boot/dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts=
 b/arch/arm64/boot/dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts
> > index 6a28cab97189..88b31550f9df 100644
> > --- a/arch/arm64/boot/dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts
> > +++ b/arch/arm64/boot/dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts
> > @@ -400,6 +400,67 @@ usb1_sbu_mux: endpoint {
> >                       };
> >               };
> >       };
> > +
> > +     wcn6855-pmu {
> > +             compatible =3D "qcom,wcn6855-pmu";
> > +
> > +             pinctrl-0 =3D <&wlan_en>;
> > +             pinctrl-names =3D "default";
> > +
> > +             wlan-enable-gpios =3D <&tlmm 134 GPIO_ACTIVE_HIGH>;
> > +             bt-enable-gpios =3D <&tlmm 133 GPIO_ACTIVE_HIGH>;
> > +
> > +             vddio-supply =3D <&vreg_s10b>;
> > +             vddaon-supply =3D <&vreg_s12b>;
> > +             vddpmu-supply =3D <&vreg_s12b>;
> > +             vddrfa0p95-supply =3D <&vreg_s12b>;
> > +             vddrfa1p3-supply =3D <&vreg_s11b>;
> > +             vddrfa1p9-supply =3D <&vreg_s1c>;
> > +             vddpcie1p3-supply =3D <&vreg_s11b>;
> > +             vddpcie1p9-supply =3D <&vreg_s1c>;
>
> As the WiFi is now properly using the PMU, should we also remove some of
> the regulator-always-on properties?
>

I added a separate patch that doesn't seem to impact anything with the
PMU changes applied but will be easy to revert if something does
break.

Bart

> > +
>
> --
> With best wishes
> Dmitry

