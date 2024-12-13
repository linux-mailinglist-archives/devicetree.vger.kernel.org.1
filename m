Return-Path: <devicetree+bounces-130651-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 534D39F0942
	for <lists+devicetree@lfdr.de>; Fri, 13 Dec 2024 11:19:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 064BE284977
	for <lists+devicetree@lfdr.de>; Fri, 13 Dec 2024 10:19:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2354A1B395E;
	Fri, 13 Dec 2024 10:19:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="PxUjYaHS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f174.google.com (mail-yb1-f174.google.com [209.85.219.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 584A31A8F8D
	for <devicetree@vger.kernel.org>; Fri, 13 Dec 2024 10:19:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734085160; cv=none; b=n4zAn4Q2rr0JvH9yPkcd0rDFWFT9ASLz38c1fhOVEAtALL9QjwI8ZrY5/6qXrb1bhnhzgSIIJYHkSwwKiEcUZ7WDmfl030mZ2NOx7byMJxS7Jn3OcRmMKYPWq5Sb4K0Ph5U0U/z2U+aEguKg2mN2nKmBHgLGpt2b8PTQ64uyACI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734085160; c=relaxed/simple;
	bh=TaUoGs+F2ddGLGp0nhoiaf0yEcbeooEJX6cg/YCJu3o=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=WJJSaU9sxafkq2KKRm0IHzJd9U9y+M6LDysxot6qOe/AtfK0JcNzlyjKm7QKifmGUZ8ADWBN2/uvzlBiwzLDZgrqyY8gjz2ra88gHV6BUWZtMhYKNQypnN2PrB6AkKwPWVGdY2/x7sRZaK/pXqt8PnzyFLOvKRJuV2NEw+c7TNM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=PxUjYaHS; arc=none smtp.client-ip=209.85.219.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f174.google.com with SMTP id 3f1490d57ef6-e3978c00a5aso1144115276.1
        for <devicetree@vger.kernel.org>; Fri, 13 Dec 2024 02:19:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734085157; x=1734689957; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=JzubTKIrCCyJH0pfnEBHBmZCTtcP1wgY3Y2naNN0eVk=;
        b=PxUjYaHSiCNuuwdT/edTmGrQGw0WfbXhWDgvMDPsSGmVNl1z65MiB9JfDSM9bOprJZ
         RuLYjq4aub3FRQcVNBE6ymB6ARYyiY5QXW4beK5U/YJUh2/iTxqDqcTl+a828iklriMB
         H6WpmGLEE7eUd7dF+T4vuEK5BKb1nxBgFRFUGAxKO/gOaMgOevFRx0KrKHjj3cOuBjnC
         BjW/Rjlhsk51Cx/eAipnrUG6q+/TeLjWQsIaKoINKbto49O89jdaGERBzDxE7PwxisTf
         eViAcY8mSI2vpJIzkRtyeK8zdL8RNznlr3Ebof2s9M/kE7J/HkiC6GVgdZDBjqC/3p1b
         6khw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734085157; x=1734689957;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JzubTKIrCCyJH0pfnEBHBmZCTtcP1wgY3Y2naNN0eVk=;
        b=TOBK8gV+66Ustj4IX+7s1jNacHbSfQhVYMm6gD7+wewg7K+fsKfqI3ghO766fpi314
         Pd+UguJ3OVbM6dJ8C5m4sEckidneYc+hD96bs+V1Q/uQIzckGGHBY9Ww8SsgG+kmLGhy
         sCvYpF3RYo2od/u11N4fRv0+cYuGzUyWVpvMOheUTVKjiNMwXvu49AAnrC4QgT6avNMc
         o69lP0i3TvY2HbKaRC9l4CxMpbGGf4chwoXVuwqDd3G0+h4rs31bG2SQFJDSP+6jklMH
         W5MLBmqGdWQoHXoEpvyoLYn00OiDodZOEFZrM+dVdsX9ay2lEg4sXqNgM8SZt3/GI3Ap
         nf2Q==
X-Forwarded-Encrypted: i=1; AJvYcCXGranfs79Suo1NT7A7rl557DUbZLeWHWYrJ2X1kzNrMeZbRjggDcPill62+F1yAiNvs/BK1aQXmiqv@vger.kernel.org
X-Gm-Message-State: AOJu0YzGnxHtGf/4RRl0y3pDUKzfQfVcb8IALf9eT6P55oWtZXS48JNI
	HggVE8utxhtM5dhcG4AECLBsIFEqzeVYRjwX9IIVoSw3hzcsdqoLgWvfwqtlt6/gzZZshtHa0lp
	+BIWo9mvZcJbddcsrG8XejZIyU1ZbitGLAtWPAA==
X-Gm-Gg: ASbGncuHi18MOolWGE4T8xcXaIn5lc9brkA/tVhCSf4HYuP22w7GnKpNcY0QUipk2Bn
	bKQJR/+i5gD4g4ywOf2rVuvORBa+O5o4ItQHOSg==
X-Google-Smtp-Source: AGHT+IE+V0UDCOAU5QBdFhu4vGa18K/4xyOW5PpbJKOBiXTh72LOzIvfBG+05zrZNP3V7nBvigfrJ7wDyZaG9B3yK7Y=
X-Received: by 2002:a05:6902:2484:b0:e3a:3a3d:40c9 with SMTP id
 3f1490d57ef6-e4352f57b49mr1567063276.39.1734085157123; Fri, 13 Dec 2024
 02:19:17 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241210-add-display-support-for-qcs615-platform-v4-0-2d875a67602d@quicinc.com>
 <20241210-add-display-support-for-qcs615-platform-v4-9-2d875a67602d@quicinc.com>
 <cfdyvcxdkmf4sv5f75koflayyx74wd3tuscdl7byp5peaag5ty@yhr3275jhftn> <92b6335e-a303-49d3-9b77-f951663fc10c@quicinc.com>
In-Reply-To: <92b6335e-a303-49d3-9b77-f951663fc10c@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Fri, 13 Dec 2024 12:19:05 +0200
Message-ID: <CAA8EJpqyM-r3jvY7sTpG-KKRHP9K7c3q0xfoLb_f0th7vunPYw@mail.gmail.com>
Subject: Re: [PATCH v4 9/9] arm64: dts: qcom: Add display support for QCS615
 RIDE board
To: fange zhang <quic_fangez@quicinc.com>
Cc: Rob Clark <robdclark@gmail.com>, Abhinav Kumar <quic_abhinavk@quicinc.com>, 
	Sean Paul <sean@poorly.run>, Marijn Suijten <marijn.suijten@somainline.org>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Krishna Manikandan <quic_mkrishn@quicinc.com>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Liu Li <quic_lliu6@quicinc.com>, 
	Xiangxu Yin <quic_xiangxuy@quicinc.com>, linux-arm-msm@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Fri, 13 Dec 2024 at 11:21, fange zhang <quic_fangez@quicinc.com> wrote:
>
>
>
> On 2024/12/10 19:02, Dmitry Baryshkov wrote:
> > On Tue, Dec 10, 2024 at 02:54:00PM +0800, Fange Zhang wrote:
> >> From: Li Liu <quic_lliu6@quicinc.com>
> >>
> >> Add display MDSS and DSI configuration for QCS615 RIDE board.
> >> QCS615 has a DP port, and DP support will be added in a later patch.
> >>
> >> Signed-off-by: Li Liu <quic_lliu6@quicinc.com>
> >> Signed-off-by: Fange Zhang <quic_fangez@quicinc.com>
> >> ---
> >>   arch/arm64/boot/dts/qcom/qcs615-ride.dts | 89 ++++++++++++++++++++++++++++++++
> >>   1 file changed, 89 insertions(+)
> >>
> >> diff --git a/arch/arm64/boot/dts/qcom/qcs615-ride.dts b/arch/arm64/boot/dts/qcom/qcs615-ride.dts
> >> index a25928933e2b66241258e418c6e5bc36c306101e..694719a09ac46bfa2fe34f1883c0970b9d0902be 100644
> >> --- a/arch/arm64/boot/dts/qcom/qcs615-ride.dts
> >> +++ b/arch/arm64/boot/dts/qcom/qcs615-ride.dts
> >> @@ -32,6 +32,18 @@ xo_board_clk: xo-board-clk {
> >>                      #clock-cells = <0>;
> >>              };
> >>      };
> >> +
> >> +    dp-connector {
> >> +            compatible = "dp-connector";
> >> +            label = "DP";
> >> +            type = "mini";
> >> +
> >> +            port {
> >> +                    dp_connector_out: endpoint {
> >> +                            remote-endpoint = <&anx_7625_out>;
> >> +                    };
> >> +            };
> >> +    };
> >>   };
> >>
> >>   &apps_rsc {
> >> @@ -202,6 +214,83 @@ &gcc {
> >>               <&sleep_clk>;
> >>   };
> >>
> >> +&i2c2 {
> >> +    clock-frequency = <400000>;
> >> +    status = "okay";
> >> +
> >> +    ioexp: gpio@3e {
> >> +            compatible = "semtech,sx1509q";
> >> +            reg = <0x3e>;
> >> +            interrupt-parent = <&tlmm>;
> >> +            interrupts = <58 0>;
> >
> > Use IRQ flags instead of just 0 (here and further on). Also it might be
> > better to use interrupts-extended instead.
> Got it, will use interrupts-extended instead
> -               interrupt-parent = <&tlmm>;
> -               interrupts = <58 0>;
> +               interrupts-extended = <&tlmm 58 IRQ_TYPE_NONE>;
> >
> >> +            gpio-controller;
> >> +            #gpio-cells = <2>;
> >> +            interrupt-controller;
> >> +            #interrupt-cells = <2>;
> >> +            semtech,probe-reset;
> >> +    };
> >> +
> >> +    i2c-mux@77 {
> >> +            compatible = "nxp,pca9542";
> >> +            reg = <0x77>;
> >> +            #address-cells = <1>;
> >> +            #size-cells = <0>;
> >
> > Add empty line before device nodes (here and furher on).
> Sorry, will add it in next patch.
> >
> >> +            i2c@0 {
> >> +                    reg = <0>;
> >> +                    #address-cells = <1>;
> >> +                    #size-cells = <0>;
> >> +
> >> +                    anx7625@58 {
> >> +                            compatible = "analogix,anx7625";
> >> +                            reg = <0x58>;
> >> +                            interrupt-parent = <&ioexp>;
> >> +                            interrupts = <0 0>;
> will change it to interrupts-extended in next patch
> -               interrupt-parent = <&ioexp>;
> -               interrupts = <0 0>;
> +               interrupts-extended = <&ioexp 0 IRQ_TYPE_NONE>;

Yes, much better. BTW: are you sure that it's really IRQ_TYPE_NONE?

> >> +                            enable-gpios = <&tlmm 4 GPIO_ACTIVE_HIGH>;
> >> +                            reset-gpios = <&tlmm 5 GPIO_ACTIVE_HIGH>;
> >> +                            wakeup-source;
> >> +
> >> +                            ports {
> >> +                                    #address-cells = <1>;
> >> +                                    #size-cells = <0>;
> >> +
> >> +                                    port@0 {
> >> +                                            reg = <0>;
> >> +                                            anx_7625_in: endpoint {
> >> +                                                    remote-endpoint = <&mdss_dsi0_out>;
> >> +                                            };
> >> +                                    };
> >> +
> >> +                                    port@1 {
> >> +                                            reg = <1>;
> >> +                                            anx_7625_out: endpoint {
> >> +                                                    remote-endpoint = <&dp_connector_out>;
> >> +                                            };
> >> +                                    };
> >> +                            };
> >> +                    };
> >> +            };
> >> +    };
> >> +};
> >> +
> >> +&mdss {
> >> +    status = "okay";
> >> +};
> >> +
> >> +&mdss_dsi0 {
> >> +    vdda-supply = <&vreg_l11a>;
> >> +    status = "okay";
> >> +};
> >> +
> >> +&mdss_dsi0_out {
> >> +    remote-endpoint = <&anx_7625_in>;
> >> +    data-lanes = <0 1 2 3>;
> >> +};
> >> +
> >> +&mdss_dsi0_phy {
> >> +    vdds-supply = <&vreg_l5a>;
> >> +    status = "okay";
> >> +};
> >> +
> >>   &qupv3_id_0 {
> >>      status = "okay";
> >>   };
> >>
> >> --
> >> 2.34.1
> >>
> >
>


-- 
With best wishes
Dmitry

