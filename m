Return-Path: <devicetree+bounces-19138-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C1FBE7F9D0B
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 11:02:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7CECD28120A
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 10:02:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E6A1B17990;
	Mon, 27 Nov 2023 10:02:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="Ytama7R1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com [IPv6:2a00:1450:4864:20::12e])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 82C1A182
	for <devicetree@vger.kernel.org>; Mon, 27 Nov 2023 02:02:19 -0800 (PST)
Received: by mail-lf1-x12e.google.com with SMTP id 2adb3069b0e04-507cd62472dso5106752e87.0
        for <devicetree@vger.kernel.org>; Mon, 27 Nov 2023 02:02:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1701079338; x=1701684138; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XAjnvuy3bIc5fGjb9nb5ctNWWJSrBAlAyEp3sSpRk/w=;
        b=Ytama7R1uYLBvEJNurbzev+vvVDDdL0TEBv7tUgpCt4yPk3D7sTx9D4AmvlUgs3CHd
         NsNzGAop4H29rQbLTJWOzKkqt0lhwNsoqSJzDa51iqjd6ZHEYnqfGY/OSx6oTWeaufnO
         0nFRvWw/5/xiWHzob3WpYAU1xIWgSWVXSRLcY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701079338; x=1701684138;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XAjnvuy3bIc5fGjb9nb5ctNWWJSrBAlAyEp3sSpRk/w=;
        b=YIELJIUYMlXIUmuHxj1HZ+GxVqwq6X9RwRCXpQ2y2IRxYOqjRCyjhLMjiMEL8owIzM
         /aesKdmnVMzhWHQbgU4NHaJekOL8wsIZYHdQTSkAKXxQsjZQUu2hvZErkfwCqVbLiGMA
         uoT+oHwOl/1zv8nhPhEzim3DkgXsC+kEJSk5bORO0SoFdXzOY2/sE51b5jgK8mxZquVZ
         1ZBzQP6HyWJerxOLXG6RByZ5sy/oRqEAQ9jLh27aDj0TeDL3skfHmy2V1rvb188nneVr
         0dyWDnHi1pZGPuVmRfFpT0e12fc/VaLYrutItkSr5EFVD3x8gyIHKGvi1SDQdkhOusZ+
         Yr3Q==
X-Gm-Message-State: AOJu0Yw+rvYF/jThH5ulFVQ7gAsGwB7LprB0BFI6Egshs+VeuW2o7yAN
	OE3wROoOg2rJAVw4UfkNXdBGi/UUtoh7BDu2HxaISw==
X-Google-Smtp-Source: AGHT+IF0wnC4g6yMuKCAZGpA/zZCG8U/CbU78D4eogjx5O8ynkFaH3hUcJ5lQcoAWF8HMw6ivUX1mBRPScw1wHlbvCM=
X-Received: by 2002:ac2:532d:0:b0:509:366b:a01c with SMTP id
 f13-20020ac2532d000000b00509366ba01cmr2846168lfh.14.1701079337688; Mon, 27
 Nov 2023 02:02:17 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231127081511.1911706-1-lukasz.luba@arm.com>
In-Reply-To: <20231127081511.1911706-1-lukasz.luba@arm.com>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Mon, 27 Nov 2023 18:02:06 +0800
Message-ID: <CAGXv+5EgDk2B_FYo9hNiLVogq+mww1j140W4hsDhywExzgpf2g@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Add dynamic-power-coefficient to
 rk3399 GPU
To: Lukasz Luba <lukasz.luba@arm.com>
Cc: linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, heiko@sntech.de, 
	conor+dt@kernel.org, daniel.lezcano@linaro.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Nov 27, 2023 at 4:14=E2=80=AFPM Lukasz Luba <lukasz.luba@arm.com> w=
rote:
>
> Add dynamic-power-coefficient to the GPU node. That will create Energy
> Model for the GPU based on the coefficient and OPP table information.
> It will enable mechanism such as DTMP or IPA to work with the GPU DVFS.
> In similar way the Energy Model for CPUs in rk3399 is created, so both
> are aligned in power scale. The maximum power used from this coefficient
> is 1.5W at 600MHz.
>
> Signed-off-by: Lukasz Luba <lukasz.luba@arm.com>
> ---
>  arch/arm64/boot/dts/rockchip/rk3399.dtsi | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/d=
ts/rockchip/rk3399.dtsi
> index 9da0b6d77c8d..87cfdf570b19 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> @@ -2113,6 +2113,7 @@ gpu: gpu@ff9a0000 {
>                 interrupt-names =3D "job", "mmu", "gpu";
>                 clocks =3D <&cru ACLK_GPU>;
>                 #cooling-cells =3D <2>;
> +               dynamic-power-coefficient =3D <2640>;

For reference, in the ChromeOS downstrean v5.10 kernel we have:

gpu_power_model: power_model {
        compatible =3D "arm,mali-simple-power-model";
        static-coefficient =3D <411522>;
        dynamic-coefficient =3D <977>;
        ts =3D <32000 4700 (-80) 2>;
        thermal-zone =3D "gpu";
};

This is for the Mali kbase.

ChenYu

>                 power-domains =3D <&power RK3399_PD_GPU>;
>                 status =3D "disabled";
>         };
> --
> 2.25.1
>
>
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

