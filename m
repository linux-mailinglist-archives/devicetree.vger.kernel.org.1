Return-Path: <devicetree+bounces-32310-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 150B082EED5
	for <lists+devicetree@lfdr.de>; Tue, 16 Jan 2024 13:19:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 181DF1C231DF
	for <lists+devicetree@lfdr.de>; Tue, 16 Jan 2024 12:19:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 808481BC36;
	Tue, 16 Jan 2024 12:19:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="p7ANgLiq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f43.google.com (mail-ua1-f43.google.com [209.85.222.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B11B1BC2B
	for <devicetree@vger.kernel.org>; Tue, 16 Jan 2024 12:19:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ua1-f43.google.com with SMTP id a1e0cc1a2514c-7d264264567so285062241.0
        for <devicetree@vger.kernel.org>; Tue, 16 Jan 2024 04:19:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1705407550; x=1706012350; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=f7xwB7+3NO8r1ve0OVLvJGeYywpZTiqzVu1EKcXkfmY=;
        b=p7ANgLiql7PV35tggmUJGqDXyFcsQY64qS4kfCq2cln/+5JTOXCnnbFL8x76hmUfgG
         cSJbEAPqV/CvnpOo8g27B+FrlhsG1U4B4Zkd1iSlwyjnUhoHoLVIsdYE8bFsk5/Ancum
         a9L1Wg5fvtr22wykGfN+KmXDNK/UPxxsQbKnm3UVahxwk6DP9LeMJmkNzobUpEhzb2EH
         xqIeTybfcf7zYSl7N8HYiDKjBPUsnRamjY0vXOzWSJsx2/vOUqQ5v1iUYbllBZz3qLzr
         yTAKolQ3NY5WRwJaWLNKncp1XnyQbTzmiqarZeKCqEAdpw1NzhH88GCfrunfVPyAhhaM
         +vpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705407550; x=1706012350;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=f7xwB7+3NO8r1ve0OVLvJGeYywpZTiqzVu1EKcXkfmY=;
        b=hf3Lb/OBOcS2QZPnJp4PEvC9U+SRdjF5aLX0KW3okRebL3nWEgmGLf5gw7xpQScKT2
         ZH+sNO7x0rnOGke3V9gDZjFAV2DIm0kJB2ywxenn5hwSNaGjo9PjVB+VBIzVEm2EOkVI
         6wzENSX10pa91zeh9LriLRbd+8RRVUaowpg77nbqyNmVVNSYu25x+RtANs+4wWhkTHyg
         zccTYbupV37lj4qLM99LCoeW377SUOaaT4xY2Dgk23AWvNEZw1Q3oSndjaWZ1mVd462s
         0kvcw5D/hiafcCd3lDSQ0RfwscNQuV0u8NLHrMuXncAjxkQUqMdWSpiW7hpCwQoMNx1+
         l7gw==
X-Gm-Message-State: AOJu0YwRr24ThbDVPUMZ4E29CKLuOXpZZr7iu5GDjFzrAZkEfoAExfog
	iLKhnNi6Wn1Yc1hWAWcVKwh9jlmSVU6cSY5TbjU4MKvn6zbp0w==
X-Google-Smtp-Source: AGHT+IECdJxtD41MxOBJdVSlG1QTQQtK9JTZe0HTEHNVuUXYi1ZlurvdxkmbxagQDhN+Q3J0bLfNjB/5IDbOU7jLgWA=
X-Received: by 2002:a67:edc3:0:b0:467:bf69:eac9 with SMTP id
 e3-20020a67edc3000000b00467bf69eac9mr4819406vsp.19.1705407549921; Tue, 16 Jan
 2024 04:19:09 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240116115921.804185-1-daniel.lezcano@linaro.org>
In-Reply-To: <20240116115921.804185-1-daniel.lezcano@linaro.org>
From: Amit Pundir <amit.pundir@linaro.org>
Date: Tue, 16 Jan 2024 17:48:33 +0530
Message-ID: <CAMi1Hd1Y88gGy+vVhYmfB+hN9vuNWy6UnGh-vQSGLVo8953gJA@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: qcom: sdm845: Fix wild reboot during Antutu test
To: Daniel Lezcano <daniel.lezcano@linaro.org>
Cc: andersson@kernel.org, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	"open list:ARM/QUALCOMM SUPPORT" <linux-arm-msm@vger.kernel.org>, 
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, 16 Jan 2024 at 17:29, Daniel Lezcano <daniel.lezcano@linaro.org> wr=
ote:
>
> Running an Antutu benchmark makes the board to do a hard reboot.
>
> Cause: it appears the gpu-bottom and gpu-top temperature sensors are show=
ing
> too high temperatures, above 115=C2=B0C.
>
> Out of tree configuratons show the gpu thermal zone is configured to
> be mitigated at 85=C2=B0C with devfreq.
>
> Add the DT snippet to enable the thermal mitigation on the sdm845
> based board.

Smoke tested on Dragonboard 845c running AOSP with a custom/generic thermal=
 HAL.

Tested-by: Amit Pundir <amit.pundir@linaro.org>

PS: Probably good to mention the OS (AOSP) and board (DB845c), on
which the Antutu crash was reported, in the commit message as well .

>
> Fixes: c79800103eb18 ("arm64: dts: sdm845: Add gpu and gmu device nodes")
> Cc: Amit Pundir <amit.pundir@linaro.org>
> Signed-off-by: Daniel Lezcano <daniel.lezcano@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/sdm845.dtsi | 32 ++++++++++++++++++++++++++--
>  1 file changed, 30 insertions(+), 2 deletions(-)
>
> diff --git a/arch/arm64/boot/dts/qcom/sdm845.dtsi b/arch/arm64/boot/dts/q=
com/sdm845.dtsi
> index c2244824355a..20fefd6af0f8 100644
> --- a/arch/arm64/boot/dts/qcom/sdm845.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sdm845.dtsi
> @@ -4764,6 +4764,8 @@ gpu: gpu@5000000 {
>                         interconnects =3D <&mem_noc MASTER_GFX3D 0 &mem_n=
oc SLAVE_EBI1 0>;
>                         interconnect-names =3D "gfx-mem";
>
> +                       #cooling-cells =3D <2>;
> +
>                         status =3D "disabled";
>
>                         gpu_opp_table: opp-table {
> @@ -5603,12 +5605,25 @@ gpu-top-thermal {
>                         thermal-sensors =3D <&tsens0 11>;
>
>                         trips {
> -                               gpu1_alert0: trip-point0 {
> +                                gpu1_alert0: trip-point0 {
> +                                        temperature =3D <85000>;
> +                                        hysteresis =3D <2000>;
> +                                        type =3D "passive";
> +                                };
> +
> +                               gpu1_alert1: trip-point1 {
>                                         temperature =3D <90000>;
>                                         hysteresis =3D <2000>;
>                                         type =3D "hot";
>                                 };
>                         };
> +
> +                       cooling-maps {
> +                               map0 {
> +                                       trip =3D <&gpu1_alert0>;
> +                                       cooling-device =3D <&gpu THERMAL_=
NO_LIMIT THERMAL_NO_LIMIT>;
> +                               };
> +                       };
>                 };
>
>                 gpu-bottom-thermal {
> @@ -5618,12 +5633,25 @@ gpu-bottom-thermal {
>                         thermal-sensors =3D <&tsens0 12>;
>
>                         trips {
> -                               gpu2_alert0: trip-point0 {
> +                                gpu2_alert0: trip-point0 {
> +                                        temperature =3D <85000>;
> +                                        hysteresis =3D <2000>;
> +                                        type =3D "passive";
> +                                };
> +
> +                               gpu2_alert1: trip-point1 {
>                                         temperature =3D <90000>;
>                                         hysteresis =3D <2000>;
>                                         type =3D "hot";
>                                 };
>                         };
> +
> +                       cooling-maps {
> +                               map0 {
> +                                       trip =3D <&gpu2_alert0>;
> +                                       cooling-device =3D <&gpu THERMAL_=
NO_LIMIT THERMAL_NO_LIMIT>;
> +                                };
> +                        };
>                 };
>
>                 aoss1-thermal {
> --
> 2.34.1
>

