Return-Path: <devicetree+bounces-2848-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id A54D97ACBA5
	for <lists+devicetree@lfdr.de>; Sun, 24 Sep 2023 21:30:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 616A51C20753
	for <lists+devicetree@lfdr.de>; Sun, 24 Sep 2023 19:30:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 13818DDDE;
	Sun, 24 Sep 2023 19:30:12 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCD88D29E
	for <devicetree@vger.kernel.org>; Sun, 24 Sep 2023 19:30:10 +0000 (UTC)
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com [IPv6:2a00:1450:4864:20::629])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C1676F1
	for <devicetree@vger.kernel.org>; Sun, 24 Sep 2023 12:30:07 -0700 (PDT)
Received: by mail-ej1-x629.google.com with SMTP id a640c23a62f3a-9a64619d8fbso638293966b.0
        for <devicetree@vger.kernel.org>; Sun, 24 Sep 2023 12:30:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1695583806; x=1696188606; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uegV/6/zQE8HABESltJplBPPeOrCrEYD8pBkTSK6Xc8=;
        b=CtgqL34nfFNkqcVLTI3azBkjAdGvICHQDFpfTN41wBWwFJPvnNLSpRkaAEmGlB8afS
         VpA8PFfavik1xTqkH3DJrGz9e+2lnliS/gPXFmtHXecAPcqt6+zqBVqYDhfgVSUpWfEO
         ULZJrqQGdfnQOGUx/Rd+YckVX4JVlrXj6jypy/no0SVGwI2BGrT+cnuM85FIgxU1asJS
         PwxfT+5/NOcJhOUsec7PQD/26CxAk+RHMbW+h5tpri+ate2kdXgJVTtZUZFQ80xuZmG9
         Q9X8v6/5+58f0JZBC9bTBa71GA63O5ISlCuz430H6G1FdICjVxC7nkFq1GPxGpmKBb29
         eZxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695583806; x=1696188606;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=uegV/6/zQE8HABESltJplBPPeOrCrEYD8pBkTSK6Xc8=;
        b=dOtOqTpYdx2HgZ/mM/JG/hmolQ+I4P31EpaFhhdWrrZ62LcZgnmgYCgv2h/L7JhVdL
         if+rLrLkPN+7JCTKDEc1NraK6tEZ972BR4a4ZUgb8bZICgmIKrWBq2jkZOQHnaPm+avu
         SaxWkmZByVr7296XTDnbxdUPeJrJfTaIV335WBc1/OVMWPH+g8kPVvW6HyvXLkEYq0ak
         yVpFckiO3hiEjr5AHE59sl5FkgC8tXfkI5djpf4XWNEaP4daQWJABxIr43KqFqRV+rjs
         opKcjw3LTkUwrBg8cpx4hZ8Ng4qectRp2cszlccmG5WM3QBeMuH8Y+kUo0gY8hAGRgWi
         fGDg==
X-Gm-Message-State: AOJu0YyNbQC0iRuTnWMWqEV7cTiLBwftxoyms4WhNXGPPP3TIdFXQ8dX
	18Epe1Ljvsokeo2Y1gyY25vYxYNU4HHo+g==
X-Google-Smtp-Source: AGHT+IH/R2d9hfkFWuD+vF1uvLthvReN7rN3+88k2WDRPwF9nKHjqkihElcmj4QlDO26v7lW1IpP/w==
X-Received: by 2002:a17:906:20d4:b0:9a2:86b:bb18 with SMTP id c20-20020a17090620d400b009a2086bbb18mr3813711ejc.26.1695583806172;
        Sun, 24 Sep 2023 12:30:06 -0700 (PDT)
Received: from jernej-laptop.localnet (82-149-12-148.dynamic.telemach.net. [82.149.12.148])
        by smtp.gmail.com with ESMTPSA id e10-20020a1709061e8a00b009adc5802d08sm5289132ejj.190.2023.09.24.12.30.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 24 Sep 2023 12:30:05 -0700 (PDT)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To: linux-sunxi@lists.linux.dev, Chris Morgan <macroalpha82@gmail.com>
Cc: devicetree@vger.kernel.org, mripard@kernel.org, uwu@icenowy.me,
 samuel@sholland.org, wens@csie.org, conor+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
 andre.przywara@arm.com, Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH V5 1/4] arm: dts: sun8i: V3s: Add pinctrl for pwm
Date: Sun, 24 Sep 2023 21:30:04 +0200
Message-ID: <2697958.mvXUDI8C0e@jernej-laptop>
In-Reply-To: <20230921135136.97491-2-macroalpha82@gmail.com>
References:
 <20230921135136.97491-1-macroalpha82@gmail.com>
 <20230921135136.97491-2-macroalpha82@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Dne =C4=8Detrtek, 21. september 2023 ob 15:51:33 CEST je Chris Morgan napis=
al(a):
> From: Chris Morgan <macromorgan@hotmail.com>
>=20
> Add pinctrl nodes for pwm0 and pwm1.
>=20
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> Reviewed-by: Andre Przywara <andre.przywara@arm.com>

Acked-by: Jernej Skrabec <jernej.skrabec@gmail.com>

Best regards,
Jernej

> ---
>  arch/arm/boot/dts/allwinner/sun8i-v3s.dtsi | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
>=20
> diff --git a/arch/arm/boot/dts/allwinner/sun8i-v3s.dtsi b/arch/arm/boot/d=
ts/allwinner/sun8i-v3s.dtsi
> index 3b9a282c2746..c87476ea31e2 100644
> --- a/arch/arm/boot/dts/allwinner/sun8i-v3s.dtsi
> +++ b/arch/arm/boot/dts/allwinner/sun8i-v3s.dtsi
> @@ -414,6 +414,18 @@ mmc1_pins: mmc1-pins {
>  				bias-pull-up;
>  			};
> =20
> +			/omit-if-no-ref/
> +			pwm0_pin: pwm0-pin {
> +				pins =3D "PB4";
> +				function =3D "pwm0";
> +			};
> +
> +			/omit-if-no-ref/
> +			pwm1_pin: pwm1-pin {
> +				pins =3D "PB5";
> +				function =3D "pwm1";
> +			};
> +
>  			spi0_pins: spi0-pins {
>  				pins =3D "PC0", "PC1", "PC2", "PC3";
>  				function =3D "spi0";
>=20





