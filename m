Return-Path: <devicetree+bounces-216137-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 4870CB53BCD
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 20:46:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 386C0169F38
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 18:46:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C4C0A223DD6;
	Thu, 11 Sep 2025 18:46:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="JGMd3GXK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8770257846
	for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 18:46:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757616368; cv=none; b=oWZ0zjcyUagiH+QRRKvxIEeVcQ130J0OIH7OryXsBGmCsugYFNV19WH0MhZ2PW2SIr+dGgUqfC6NwRAO4cp/VJwZ3Fd4uCyYsO0RghNiN1ROwuvhvA+56P+IPFhTqr0a1NwWn24+jZnvwM8XNAj4VaxOPuE0e10NkF1xEkZ8doE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757616368; c=relaxed/simple;
	bh=45rVoyKHZDL7i67H3mSqnI9i+I5wrDeHw68fg9kOaTI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=M2ELuMJm6gBLN59REjQRHlj2Xht8N3fnPtte9kGGxhJkFLE4rxjjcxXTEEoasVOl7A54TzM6NKZQSvVSMWnyS8JsMee/QJF6/ZJoteDMCGsAJY0O6z2xe+oXGXmMaE9J2Ut+pYZqgeU9xzOdfG95DHJ7/8q53lzYayLzJuZPUYE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=JGMd3GXK; arc=none smtp.client-ip=209.85.221.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-3e5190bca95so807795f8f.0
        for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 11:46:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757616365; x=1758221165; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iLnSFY5/QAndl78OHoWYd50tPooQqwlEKZC1g+O6M5s=;
        b=JGMd3GXKUcaQ6LOa3KHHAqOg8lciXpbjzpUpZCLPlJJOll0VItWNItYIA8OYY8J6ZF
         WOoXMhq5FIMC3Wa+ZSH1WeEfP1nBq9T49ts7RL630ydUBH/09xTi4K9/bisvdf7dRCNa
         v92VxhcWwqvz5MSnDETnUe1O8HAyu0JVQhkPUhTS5EsIxM5TzsHoUDRmGAuOwqOKCRZC
         YLMla4ggidFPxhEOtoVQzSCizQdkUFy3hdq1n0sV1SmwPr8gYTqDK4IRmsH3pmK1Bvr4
         tRr/rNDk8S6UjFT81q45VGHFYjC/sUwH3O4+RVgishi4e5XULWdr9VqJLeFoPkuYc3OQ
         dPyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757616365; x=1758221165;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iLnSFY5/QAndl78OHoWYd50tPooQqwlEKZC1g+O6M5s=;
        b=AVmSjA0wU1NKUNnnUn/AX2nb0jHVsqxdRmCbf9GyU0bFEFHuIpRmxkLEf9TGZg+f0P
         kBkCFbpjS/0wnyIMPI91sQmRP0D23js+MyHTAD5dPVOl+m8SaqsZRTK5IeypA3H+JInR
         qctmrRKwAxG3qX2nz+md0D/QkDsvfDpy+aUz67X0ljMGI3KU6YkXVwAZz42Vq97Pe1zq
         x/fiZf1WEWHwmdlWuHx6VzmmeKs3rEHkGtHJ6DU0HxSkmrIbXRop9dCJL7UbP385H/VE
         YySCi4Fv/CmLzB4jkaiR2IX17YvZPA+pyx8sQlod7udpr8EBChVpzAQkMVOaMt/zHCtE
         Dq6g==
X-Forwarded-Encrypted: i=1; AJvYcCWLxkSCMI6mGK/P7AkJBKnBRxPm0rkkUS0d0g64ySFLKw3+As8O9NKKiUatZTwJ7bSQZgjl4pY18Hdr@vger.kernel.org
X-Gm-Message-State: AOJu0Yx3Y+ubbBmljbLM5Clyz3p803UwqUqEin8ycV+Y3VY4BAubMmgW
	pevZkfnGLhF6fzkZDGc55Enk9Cg2HM7RBnSAzaMCZEI9JVzp4bmlLYMb
X-Gm-Gg: ASbGncs7oNGdVrvGQ/G8pBcJkhfBdxaR9BCSqUVZiDfqgjLwD9aUDIzKoAbxbA4Vv3r
	IXaaATY9TkyKM+G6Td4aKGKHcd2+OL1fPsBjMACTas7CzTvc594pXbzzZPQSV7Mp0UkS7gx1Wql
	c6gE7U4gkiM20tg6mZj6DHu8wY23tVgCw6C5tUJFOz0Ln3FqExfAYPP6fj1fWHg5rGIjw0gxKcl
	BWWablsC8cDmYd9hlDXH7fRyW9J7ZjTmTFJg1PtwcTktgHk6lirvmsN0L7FW9wB64Gd5RyeHir/
	BUXbR45X0863KoC+uE3FapCkKRAUw1zFnpEvIKVhyszcW244w++VHTEmGlQjWHbwUvTT76vPg3M
	kSb/qdVSSzGxckqdDhhFEBOdSIokWzH3hD4B8yz18kcVYkHcZ+aLop6DMLidS4XVCCEO8c/HfGC
	1AFd9fQ45O7Fes9uVC4BKBSzvRxtVzVA==
X-Google-Smtp-Source: AGHT+IH1eoAESwH3mOqBEu1EDRUwtU9bT+NVdrf9ZOgZBSqxSfPicQG9iVoecXpREjH59drqKdf77A==
X-Received: by 2002:a5d:5d89:0:b0:3df:c5e3:55f8 with SMTP id ffacd0b85a97d-3e765a12a7fmr375119f8f.54.1757616364866;
        Thu, 11 Sep 2025 11:46:04 -0700 (PDT)
Received: from jernej-laptop.localnet (86-58-6-171.dynamic.telemach.net. [86.58.6.171])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45e3a91504fsm20727255e9.13.2025.09.11.11.46.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Sep 2025 11:46:04 -0700 (PDT)
From: Jernej =?UTF-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To: Stephen Boyd <sboyd@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Jernej Skrabec <jernej@kernel.org>, Samuel Holland <samuel@sholland.org>,
 Chen-Yu Tsai <wens@kernel.org>
Cc: Andre Przywara <andre.przywara@arm.com>, linux-sunxi@lists.linux.dev,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 6/7] arm64: dts: allwinner: a523: Add MCU PRCM CCU node
Date: Thu, 11 Sep 2025 20:46:03 +0200
Message-ID: <2380002.ElGaqSPkdT@jernej-laptop>
In-Reply-To: <20250911174710.3149589-7-wens@kernel.org>
References:
 <20250911174710.3149589-1-wens@kernel.org>
 <20250911174710.3149589-7-wens@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"

Dne =C4=8Detrtek, 11. september 2025 ob 19:47:09 Srednjeevropski poletni =
=C4=8Das je Chen-Yu Tsai napisal(a):
> From: Chen-Yu Tsai <wens@csie.org>
>=20
> Add a device node for the third supported clock controller found in the
> A523 / T527 SoCs. This controller has clocks and resets for the RISC-V
> MCU, and others peripherals possibly meant to operate in low power mode
> driven by the MCU, such as audio interfaces, an audio DSP, and the NPU.
>=20
> Reviewed-by: Andre Przywara <andre.przywara@arm.com>
> Signed-off-by: Chen-Yu Tsai <wens@csie.org>

Reviewed-by: Jernej Skrabec <jernej.skrabec@gmail.com>

Best regards,
Jernej

> ---
> Changes since v1:
> - Enlarged MCU PRCM register range to 0x200
> - Moved "r-ahb" clock to the end of the list and added "r-apb0" clock
> ---
>  .../arm64/boot/dts/allwinner/sun55i-a523.dtsi | 27 +++++++++++++++++++
>  1 file changed, 27 insertions(+)
>=20
> diff --git a/arch/arm64/boot/dts/allwinner/sun55i-a523.dtsi b/arch/arm64/=
boot/dts/allwinner/sun55i-a523.dtsi
> index 79bd9ce08c7c..f93376372aba 100644
> --- a/arch/arm64/boot/dts/allwinner/sun55i-a523.dtsi
> +++ b/arch/arm64/boot/dts/allwinner/sun55i-a523.dtsi
> @@ -4,8 +4,10 @@
>  #include <dt-bindings/interrupt-controller/arm-gic.h>
>  #include <dt-bindings/clock/sun6i-rtc.h>
>  #include <dt-bindings/clock/sun55i-a523-ccu.h>
> +#include <dt-bindings/clock/sun55i-a523-mcu-ccu.h>
>  #include <dt-bindings/clock/sun55i-a523-r-ccu.h>
>  #include <dt-bindings/reset/sun55i-a523-ccu.h>
> +#include <dt-bindings/reset/sun55i-a523-mcu-ccu.h>
>  #include <dt-bindings/reset/sun55i-a523-r-ccu.h>
>  #include <dt-bindings/power/allwinner,sun55i-a523-ppu.h>
>  #include <dt-bindings/power/allwinner,sun55i-a523-pck-600.h>
> @@ -825,6 +827,31 @@ rtc: rtc@7090000 {
>  			clock-names =3D "bus", "hosc", "ahb";
>  			#clock-cells =3D <1>;
>  		};
> +
> +		mcu_ccu: clock-controller@7102000 {
> +			compatible =3D "allwinner,sun55i-a523-mcu-ccu";
> +			reg =3D <0x7102000 0x200>;
> +			clocks =3D <&osc24M>,
> +				 <&rtc CLK_OSC32K>,
> +				 <&rtc CLK_IOSC>,
> +				 <&ccu CLK_PLL_AUDIO0_4X>,
> +				 <&ccu CLK_PLL_PERIPH0_300M>,
> +				 <&ccu CLK_DSP>,
> +				 <&ccu CLK_MBUS>,
> +				 <&r_ccu CLK_R_AHB>,
> +				 <&r_ccu CLK_R_APB0>;
> +			clock-names =3D "hosc",
> +				      "losc",
> +				      "iosc",
> +				      "pll-audio0-4x",
> +				      "pll-periph0-300m",
> +				      "dsp",
> +				      "mbus",
> +				      "r-ahb",
> +				      "r-apb0";
> +			#clock-cells =3D <1>;
> +			#reset-cells =3D <1>;
> +		};
>  	};
> =20
>  	thermal-zones {
>=20





