Return-Path: <devicetree+bounces-86101-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CD91932628
	for <lists+devicetree@lfdr.de>; Tue, 16 Jul 2024 14:06:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id DF7411F22B26
	for <lists+devicetree@lfdr.de>; Tue, 16 Jul 2024 12:06:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 24CF3199EBB;
	Tue, 16 Jul 2024 12:06:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="a2He631p"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f182.google.com (mail-lj1-f182.google.com [209.85.208.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EFE31CA9F
	for <devicetree@vger.kernel.org>; Tue, 16 Jul 2024 12:06:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721131578; cv=none; b=SpoEmkmEeoRO1c56J+SpcNnauNSsr5Ftga2zovOpDt1ho9gdLjMdK66kjpEuH8n9XIFvWfNeHS9cz40f6QkLsbw36VG1X1SBAE/+kGZDAhQ97ToRiLlUXUChCGz/hfKLq3/h2fa0OjElM6soL5lnPrvJiqiIGdYx0dpBsdD7Ewc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721131578; c=relaxed/simple;
	bh=n782T7h+02g1mc6ge/roaPDCLEZTPuQnrUqCVqCcf14=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=RPf/Kq02UaD1SIN12drHbbpBDpZcuHz4IwVAylaqqr9h+UoMrR0B/M3LjE/Fcuhqj1WNA3Tk7XWXVUFnDq2cgdIvVFQlIhyyBYYTSP1xZ4X6ab03IpKMj9z3T8grFs4JtSNIUbqwSlaRFXsr+US8Hc4KXP5RbE9aQbWr1JqsS80=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=a2He631p; arc=none smtp.client-ip=209.85.208.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-lj1-f182.google.com with SMTP id 38308e7fff4ca-2eeb1ba0481so74868571fa.2
        for <devicetree@vger.kernel.org>; Tue, 16 Jul 2024 05:06:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1721131574; x=1721736374; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ocsignr/nvawl0jQHFR0CEaSXqr4vVO85JAIikTyjZ0=;
        b=a2He631pcp4pzywKY9p4bTW4krrbal9MnkUpo/eF6/ExpggEkhaaItMvaAGhGltt6I
         0yKCHNSTiBc7sZ9ULoLeQDNV5o9Y5u7m3mjbDiO3gmJHbK7qdIPZqpLnJOO90JvHYpKZ
         HG7g7oTySKVm5PTbCmbW5ysfLNezyFnAdQVp8IEbETLj2mVF1CdPMFlA1ptdZ6/WyF/7
         MX67LPIgpGtSjOuNfKEqromEjpLZWT9HdUu2Ly6iC0RZgGOFYe+1bMxEkJBe5KIT+8L9
         GkkH8gvOReD1o4Y937F0FPtyz1WRPiUXuzADmBAy2IBlkfo6ayNvdEFPDmt+yfiv+NcY
         A1bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721131574; x=1721736374;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ocsignr/nvawl0jQHFR0CEaSXqr4vVO85JAIikTyjZ0=;
        b=kbHvL8Nvtk6C+Zr9KU0Rmmc9FrH4hQqT2FwBuE+ftwHo0yCfUBDJhqMP4czkUpRbRa
         E5TEa9jFmSo/iAfcsvEbpIXOFvoH930ogtyKDNh4fr7K9KsERYwpBHFnqcB4tbyCs9Vp
         4UNiiQbwY43mRi7a/r+UsvAfFxMy01CjpZiJWeRaHxQ3/fhnIg5abcoLeocbOIz5BqyN
         lYqlsZeIh8X5WetIdD8oOl73HxGB81bRh21yvddesbhwC3A2urGq4uBsADp72xndNSzW
         H+sfYLN5mOWFhoTiw7fY4G1YsBikvswsqsaqKy9er+s1G9W2yEwy1tzd2XvKLl2YGyvt
         brjw==
X-Forwarded-Encrypted: i=1; AJvYcCVuKJgh1reSV7yZWCZfL5oTEZEs4GsKIONBt9c45jnyyhh7D03z2eCIQLtZ4ea5ex0BCmYKIoegPXKPyP9NiUmvEfffnLHTaQyQ0A==
X-Gm-Message-State: AOJu0Yz8odOmH9em4zyc0lOxZedQqHVPaPmEQVwSS35izFjbfXE2y5NQ
	rbxGeB4ByxnOkKxF+W7beZ8ZLJDWiesP7mxx02m5HDvA7BlLvUYnrG0HRbytalJymTPxgDYYOHv
	2IEarjX4R7Ev81EzLv2drlrvgrz6mYXz94gAP/Q==
X-Google-Smtp-Source: AGHT+IHQkWukYzzeysse6GyDGTpm4Go8NkOdv1U0kWFvPW5EmkgZO13EEqDl/YlMIiN+HSC7RTkOxGEwEX9VG6reBiA=
X-Received: by 2002:a05:6512:3d15:b0:52c:850b:cfc6 with SMTP id
 2adb3069b0e04-52edf01caf1mr1503628e87.38.1721131574187; Tue, 16 Jul 2024
 05:06:14 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240716-topic-sm8x50-upstream-use-pmu-to-power-up-bt-v1-0-67b3755edf6a@linaro.org>
 <20240716-topic-sm8x50-upstream-use-pmu-to-power-up-bt-v1-2-67b3755edf6a@linaro.org>
In-Reply-To: <20240716-topic-sm8x50-upstream-use-pmu-to-power-up-bt-v1-2-67b3755edf6a@linaro.org>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Tue, 16 Jul 2024 14:06:02 +0200
Message-ID: <CAMRc=McjheYOKzp7fjqk8HXWMza2EsZkerkXCBV6d=PFgVbEPw@mail.gmail.com>
Subject: Re: [PATCH 2/2] arm64: dts: qcom: sm8550-qrd: use the PMU to power up bluetooth
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
> Change the HW model in sm8550-qrd.dts to a one closer to reality - where
> the WLAN and Bluetooth modules of the WCN7850 are powered by the PMU
> inside the package.
>
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/sm8550-qrd.dts | 26 +++++++++-----------------
>  1 file changed, 9 insertions(+), 17 deletions(-)
>
> diff --git a/arch/arm64/boot/dts/qcom/sm8550-qrd.dts b/arch/arm64/boot/dt=
s/qcom/sm8550-qrd.dts
> index 774bdfcffec3..6052dd922ec5 100644
> --- a/arch/arm64/boot/dts/qcom/sm8550-qrd.dts
> +++ b/arch/arm64/boot/dts/qcom/sm8550-qrd.dts
> @@ -219,13 +219,10 @@ wcn7850-pmu {
>                 compatible =3D "qcom,wcn7850-pmu";
>
>                 pinctrl-names =3D "default";
> -               pinctrl-0 =3D <&wlan_en>, <&pmk8550_sleep_clk>;
> +               pinctrl-0 =3D <&wlan_en>, <&bt_default>, <&pmk8550_sleep_=
clk>;
>
>                 wlan-enable-gpios =3D <&tlmm 80 GPIO_ACTIVE_HIGH>;
> -               /*
> -                * TODO Add bt-enable-gpios once the Bluetooth driver is
> -                * converted to using the power sequencer.
> -                */
> +               bt-enable-gpios =3D <&tlmm 81 GPIO_ACTIVE_HIGH>;
>
>                 vdd-supply =3D <&vreg_s5g_0p85>;
>                 vddio-supply =3D <&vreg_l15b_1p8>;
> @@ -1175,20 +1172,15 @@ &uart14 {
>         bluetooth {
>                 compatible =3D "qcom,wcn7850-bt";
>
> -               vddio-supply =3D <&vreg_l15b_1p8>;
> -               vddaon-supply =3D <&vreg_s4e_0p95>;
> -               vdddig-supply =3D <&vreg_s4e_0p95>;
> -               vddrfa0p8-supply =3D <&vreg_s4e_0p95>;
> -               vddrfa1p2-supply =3D <&vreg_s4g_1p25>;
> -               vddrfa1p9-supply =3D <&vreg_s6g_1p86>;
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
> -               enable-gpios =3D <&tlmm 81 GPIO_ACTIVE_HIGH>;
> -               swctrl-gpios =3D <&tlmm 82 GPIO_ACTIVE_HIGH>;
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

