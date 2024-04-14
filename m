Return-Path: <devicetree+bounces-59050-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B8B2D8A4189
	for <lists+devicetree@lfdr.de>; Sun, 14 Apr 2024 11:31:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E97161C20CED
	for <lists+devicetree@lfdr.de>; Sun, 14 Apr 2024 09:31:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7D42422EF0;
	Sun, 14 Apr 2024 09:31:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="WAhaTkaa"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EAB712C694
	for <devicetree@vger.kernel.org>; Sun, 14 Apr 2024 09:31:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713087094; cv=none; b=mzAPYQ6rbICHXdtnKp6wg90bcME6ekgUab17XDMHLfHJrHPix5+d/PKfB2adxE8imy8nyr6emmlpnNsRTn2RbbsMdVI9KUHzy/u5CQT3i+TN+ecV/hheiRzZFvl6WwX5+IT+XcSNOuI41xUNNHhOjUPka/BFXAPGR+LrbP6SGHI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713087094; c=relaxed/simple;
	bh=ufm/NSKPgn9w0SSRoPasgwxiVmCSJi2egeet0Am2uYQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=ByxxchNHSAwwQ9o+YQ8xqBRN6ybMldkZGDH1Yg6I85zzDvqOIPIlmZCTmm0+XVXkAHazwldqOFlQoLlyEiQmExnGulawjgiieo0bzuxEF8bXVGitEVQs7+kGpOyqWxFM3eRbOe1VCEbkDbmF4aN6eOxTuwS239LwlG0Cr+csGhI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=WAhaTkaa; arc=none smtp.client-ip=209.85.218.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-a52582ecde4so56737266b.0
        for <devicetree@vger.kernel.org>; Sun, 14 Apr 2024 02:31:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1713087091; x=1713691891; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eoaklZTZ9NCwiKbFyGM6/ChMIATe9pluxxswHyZAh4Y=;
        b=WAhaTkaaYo0TytO+WiJx269OfdYMDIc54hIWO7+gDasUOW19Fm1w/VwNvc+7x75Vkh
         6wKP3iZ+NhvFfuXj2k2pmAM+9WPMdVWa3n8AKpMSOB6ekyl47KmnIF1O7LBkDVEILMbd
         hGjxpvd3/R84MFmT4RITbWiKKy6MPFU96r2/sff/LKWcud+NlNPBnJVIa7O1p6oQv0s2
         MvakB+zMyAwF1SZaeTExS9CJcpsecoEOcnjgzBnE2XnljIgvoY8TtoGbrMZCigAAuguK
         0WWot/cM6UaB8d4kpikjnMe/HthLmMHp4Qs09VMQux2sCrhJEl2UxxjrvuUct4Nk5YFM
         6d+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713087091; x=1713691891;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=eoaklZTZ9NCwiKbFyGM6/ChMIATe9pluxxswHyZAh4Y=;
        b=sEUn2ayI+JFcFtQoDcTglIvC6E2VkuuL7dHmV07gPDYY8AeJuXLmrpK3VYRiOKSfhe
         rPxtJzqM9zT0gNfnTzGJk/Ul+gY1XcKaB0fYbZx0CiGGpkoqqGAMC0/nC/pDlQSeUFZH
         +RGmgg0KOrM+v7+Jsv41aAz7WhnsgdP+8LU4HHy2H6tI4wQg4MZsMCj18hmeDYJ3GgQN
         AGEZ8zT5BJ+r9wZX9rBVwPgbNt3E7CVifg5bSvfKvSuai15IfZ0sumjPSQi3mRzFl5AN
         4gYJ8B3UG5DnHbnu2ZlCoSc6M2YnEkdi7rklB6vKMTKTLoDC0ztJvyMTYoD+pmzArkHW
         m10g==
X-Gm-Message-State: AOJu0YyvkRBJvx8zy8xqAsy90COPd89CsXKUwhuZq7IGGNR8jgJLS03y
	j3hXOCDlHzs4nvr3vhBS8Ccalz4DiqMFh4/M+76u/sW9m0WDJJQ2kcSkXw==
X-Google-Smtp-Source: AGHT+IGTTePPgNtVQqkXtvZkliB5JtDw0VtMTdsNejV7BqRipW9b1m8MMjjtVi+b+r3S/s4mKHeCJw==
X-Received: by 2002:a17:906:f598:b0:a52:4394:888b with SMTP id cm24-20020a170906f59800b00a524394888bmr3416247ejd.65.1713087091124;
        Sun, 14 Apr 2024 02:31:31 -0700 (PDT)
Received: from jernej-laptop.localnet (APN-123-252-50-gprs.simobil.net. [46.123.252.50])
        by smtp.gmail.com with ESMTPSA id el16-20020a170907285000b00a5254ec731esm1295058ejc.176.2024.04.14.02.31.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 14 Apr 2024 02:31:30 -0700 (PDT)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To: Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Samuel Holland <samuel@sholland.org>, Andre Przywara <andre.przywara@arm.com>
Cc: devicetree@vger.kernel.org, linux-sunxi@lists.linux.dev
Subject: Re: [PATCH] arm64: dts: allwinner: h616: Fix I2C0 pins
Date: Sun, 14 Apr 2024 11:31:29 +0200
Message-ID: <4909821.31r3eYUQgx@jernej-laptop>
In-Reply-To: <20240329103825.25463-1-andre.przywara@arm.com>
References: <20240329103825.25463-1-andre.przywara@arm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"

Dne petek, 29. marec 2024 ob 11:38:25 CEST je Andre Przywara napisal(a):
> Currently we specify the pins for the I2C0 function as PI6 and PI7, even
> though they are actually PI5 and PI6. Linux' pinctrl driver and the H616
> user manual confirm this.
> 
> Fix the pin names in the pins property. None of the existing DTs in the
> tree seems to use I2C0, which explains why this went unnoticed.
> 
> Fixes: 0d17c8651188 ("arm64: dts: allwinner: Add Allwinner H616 .dtsi file")
> Signed-off-by: Andre Przywara <andre.przywara@arm.com>

Acked-by: Jernej Skrabec <jernej.skrabec@gmail.com>

Best regards,
Jernej

> ---
>  arch/arm64/boot/dts/allwinner/sun50i-h616.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h616.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-h616.dtsi
> index f756a396ea3da..95f09204337f0 100644
> --- a/arch/arm64/boot/dts/allwinner/sun50i-h616.dtsi
> +++ b/arch/arm64/boot/dts/allwinner/sun50i-h616.dtsi
> @@ -227,7 +227,7 @@ ext_rgmii_pins: rgmii-pins {
>  			};
>  
>  			i2c0_pins: i2c0-pins {
> -				pins = "PI6", "PI7";
> +				pins = "PI5", "PI6";
>  				function = "i2c0";
>  			};
>  
> 





