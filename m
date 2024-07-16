Return-Path: <devicetree+bounces-86102-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 923A593262D
	for <lists+devicetree@lfdr.de>; Tue, 16 Jul 2024 14:06:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 47DDB284AC4
	for <lists+devicetree@lfdr.de>; Tue, 16 Jul 2024 12:06:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4CD2019A29C;
	Tue, 16 Jul 2024 12:06:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="qtMJBo3I"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D50071990DE
	for <devicetree@vger.kernel.org>; Tue, 16 Jul 2024 12:06:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721131589; cv=none; b=s0yZZov3gpdV8S2L8Up4y7WuOYfNtzrLcW0TFKEl1hf1k89u7bl/x6F7uRe0vDO2kEoavvSfM1L4LewJTxUL46jFUxXAZBtQeWWYBFN5PYZLfcPvg3Aiy1kXN/9QBHeUhac2z6UnXq0jdiUdADe7uYesnYq6UAxg/fJET8ZpPuo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721131589; c=relaxed/simple;
	bh=fZB/o9fey1OkcGdyvcVyQc6WuzfKiPhR73UO1We0Gw4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=PdCHwDtCNVi/uxfzUs/1mVd1da9sG66qolOO16Umz9EgdacHIOnbH2MoCgj46s3dv1mquOOOw0Mmgb0P9wBb5ESaZSis6pJ8KSn1+jzlTnAtGxFb2o8V8FB6JFL3uWjqZ7PbVX2tbMr/046D11nn4CFEz9GBhMeZzDbuQ4aznVY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=qtMJBo3I; arc=none smtp.client-ip=209.85.167.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-52e991fb456so5205219e87.0
        for <devicetree@vger.kernel.org>; Tue, 16 Jul 2024 05:06:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1721131585; x=1721736385; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PANpOZCtC/S3RuQRpGBmUzHiFvkfnUX+SSb+gcxuQmY=;
        b=qtMJBo3IThTwy/2qwH8yfGYJVXR2OC1z2pkfoOjY/pbCkW86v8vD/p8R9zI+I+bZjl
         Rg2Fx9ukadG2qkz2pEKoJxAU9jC0poia+wDBgpcpy5QWH2f25Yfs8BR8VmGr9k+DDu2W
         f5RoLpDObrvef4McdD9TtDoPUKit2EZ1jb6uX43JbOfiQN2Sy0IymUEUSy8BZ06Ri13i
         7z/YdT6iA4eFWJDYyY61D1H0JvBoHgFSJMyO2zvHt7HIxwg/8c119d+4lEtZgunW+h9A
         we7805IfNtCxfC+4g+sS22yozzUGtti8ylfskfcjgViZXE/rRtEDH17pojLkhBzpiecW
         B8+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721131585; x=1721736385;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PANpOZCtC/S3RuQRpGBmUzHiFvkfnUX+SSb+gcxuQmY=;
        b=fHfrVFWs03aVZT5wCMbuSBd/s7oGG4p5xeTs64zZqaMXR3aFV5wO0b6x796wsKir86
         EJ4GBmtS59omKAlzpQVK8i1I5dfaqJrzqzcScS4P1JZ9jCtddDmwcUSQPF/DeR4dDuuk
         OItw8U4Ed73dht1Dhc6howcQGipUIpUqgRBiobLjBgJdpE7rSjevn7+P/xYv4HVmkhD9
         fOIDmPDxZySxILwGzQsd8cSkTqwa1FhI26F4kv/iWdjkL7JSFiqAhRGMMcbzzk0ozXX8
         o1lQy31Sve+NQsic79+A5PpqfwQ/KA5OpHx6c6ziqMkuFX6JXHhC81j0o1fvb9ZgBGk0
         8eMw==
X-Forwarded-Encrypted: i=1; AJvYcCVusZIEvkc/V+LmAwFO5iik/e2cUWNE2k7Td7+MsYEr39ob7ev02ARS0gFvcv+TC47BfTIb9yMlEzoDyWHc4vvbNIMIW0SpSPqYbQ==
X-Gm-Message-State: AOJu0YxqE70rCZbP9B7xwTPcXi2+y0l5Ml+9F++1Caw/jWtvQVS+BBjx
	ukOYrK7sOVT2RJD0KNlZ/JkU++jznE2ctPFcSUERbI7/cJN2cXyWoA0NVD0xERBMutcK1Msj58v
	NQ9varh9tsDOd/EBYiilkA4+EG0b6z6x+/4INSA==
X-Google-Smtp-Source: AGHT+IHOnUXPCh+PKl1pK0miFg5Jtz96gU+HYIaycGLq4zeuPikJ+JB2GgARk25MFtD335Ee/a4MA1uQSgKotXYDPB4=
X-Received: by 2002:a05:6512:2810:b0:52c:ebf6:9a87 with SMTP id
 2adb3069b0e04-52edf8d4567mr567447e87.26.1721131584915; Tue, 16 Jul 2024
 05:06:24 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240716-topic-sm8x50-upstream-use-pmu-to-power-up-bt-v1-0-67b3755edf6a@linaro.org>
 <20240716-topic-sm8x50-upstream-use-pmu-to-power-up-bt-v1-1-67b3755edf6a@linaro.org>
In-Reply-To: <20240716-topic-sm8x50-upstream-use-pmu-to-power-up-bt-v1-1-67b3755edf6a@linaro.org>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Tue, 16 Jul 2024 14:06:14 +0200
Message-ID: <CAMRc=MdaTpCShA2_1m0Gy+OxhHvYd-hNXOZwHgpVAZMT9Yk=kA@mail.gmail.com>
Subject: Re: [PATCH 1/2] arm64: dts: qcom: sm8650-hdk: use the PMU to power up bluetooth
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Jul 16, 2024 at 11:45=E2=80=AFAM Neil Armstrong
<neil.armstrong@linaro.org> wrote:
>
> Change the HW model in sm8650-hdk.dts to a one closer to reality - where
> the WLAN and Bluetooth modules of the WCN7850 are powered by the PMU
> inside the package.
>
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/sm8650-hdk.dts | 26 +++++++++-----------------
>  1 file changed, 9 insertions(+), 17 deletions(-)
>
> diff --git a/arch/arm64/boot/dts/qcom/sm8650-hdk.dts b/arch/arm64/boot/dt=
s/qcom/sm8650-hdk.dts
> index 591e6ab9bf5b..127c7aacd4fc 100644
> --- a/arch/arm64/boot/dts/qcom/sm8650-hdk.dts
> +++ b/arch/arm64/boot/dts/qcom/sm8650-hdk.dts
> @@ -271,13 +271,10 @@ wcn7850-pmu {
>                 compatible =3D "qcom,wcn7850-pmu";
>
>                 pinctrl-names =3D "default";
> -               pinctrl-0 =3D <&wlan_en>;
> +               pinctrl-0 =3D <&wlan_en>, <&bt_default>;
>
>                 wlan-enable-gpios =3D <&tlmm 16 GPIO_ACTIVE_HIGH>;
> -               /*
> -                * TODO Add bt-enable-gpios once the Bluetooth driver is
> -                * converted to using the power sequencer.
> -                */
> +               bt-enable-gpios =3D <&tlmm 17 GPIO_ACTIVE_HIGH>;
>
>                 vdd-supply =3D <&vreg_s4i_0p85>;
>                 vddio-supply =3D <&vreg_l15b_1p8>;
> @@ -1272,20 +1269,15 @@ &uart14 {
>         bluetooth {
>                 compatible =3D "qcom,wcn7850-bt";
>
> -               vddio-supply =3D <&vreg_l3c_1p2>;
> -               vddaon-supply =3D <&vreg_l15b_1p8>;
> -               vdddig-supply =3D <&vreg_s3c_0p9>;
> -               vddrfa0p8-supply =3D <&vreg_s3c_0p9>;
> -               vddrfa1p2-supply =3D <&vreg_s1c_1p2>;
> -               vddrfa1p9-supply =3D <&vreg_s6c_1p8>;
> +               vddrfacmn-supply =3D <&vreg_pmu_rfa_cmn>;
> +               vddaon-supply =3D <&vreg_pmu_aon_0p59>;
> +               vddwlcx-supply =3D <&vreg_pmu_wlcx_0p8>;
> +               vddwlmx-supply =3D <&vreg_pmu_wlmx_0p85>;
> +               vddrfa0p8-supply =3D <&vreg_pmu_rfa_0p8>;
> +               vddrfa1p2-supply =3D <&vreg_pmu_rfa_1p2>;
> +               vddrfa1p8-supply =3D <&vreg_pmu_rfa_1p8>;
>
>                 max-speed =3D <3200000>;
> -
> -               enable-gpios =3D <&tlmm 17 GPIO_ACTIVE_HIGH>;
> -               swctrl-gpios =3D <&tlmm 18 GPIO_ACTIVE_HIGH>;
> -
> -               pinctrl-0 =3D <&bt_default>;
> -               pinctrl-names =3D "default";
>         };
>  };
>
>
> --
> 2.34.1
>

Reviewed-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

