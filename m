Return-Path: <devicetree+bounces-38799-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C01684A209
	for <lists+devicetree@lfdr.de>; Mon,  5 Feb 2024 19:23:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 217811F2388D
	for <lists+devicetree@lfdr.de>; Mon,  5 Feb 2024 18:23:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 60DE245961;
	Mon,  5 Feb 2024 18:23:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="RsSrEn9X"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 93DA347F72
	for <devicetree@vger.kernel.org>; Mon,  5 Feb 2024 18:23:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707157416; cv=none; b=Aztku5W1jBLZ0tdRaJSgKPaDDqlzx5aUHN2fUARtGkScrZvLkCO87OrZI5GuGOLoiR8/GUgHpmhCCOA9hwgliFb1S8sQ8XqOW41psSVkT4pB+ndS3Korc9oVMkfTxuX30i0dMMAb4mp30crLYyeY9lehxkJDTJ8EWuvbgTTjODg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707157416; c=relaxed/simple;
	bh=Vtb/mOeHAse8yaMORtCdfIl8sKi0fRGFhD1NJ+u7Ftw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=u4ptpfKum9m/0Gxe5kAWlfWiyekXmI/5/ksWdntqZav54s5U6Lx90tKb9dRYJ2H94EhtUaeKbfbp1mVTQ1JsYhG4gjoUdbrkKUuQdzBZEKVzw73fTShxyvdrMezrHWeBPFbpzduw4y7JQ/nMI2yURioRU/xyHoYO98tc7+l6ecc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=RsSrEn9X; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-40fccd09082so23246055e9.2
        for <devicetree@vger.kernel.org>; Mon, 05 Feb 2024 10:23:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1707157413; x=1707762213; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=llwmL9ShaEp//MaiML1a5WGyBP2svlmp4kDFM1egn8Q=;
        b=RsSrEn9X+Omf1ddsEFxIPe9UI2QzsMSg6cmWhmRjycSiTvyf6Kk+aD/h+S308nqBLP
         gp/PqlP25t0YErflJ5TU0/9q+bPEacB9qvLC19wO08idpNq7QWPPGXKSGl8U3tgHb46N
         Fj9ERLRPrin6l6Sc3fL+NguZGzOp5vUU0/vs7VnR7dcEVM6CPBuG774uogvfTkm2I2K+
         Ol56u4eP4utrqOBMaIiJMNIZw3COd6pjQ8V58JrjaJvB7EDQcyqeglQFv9VPNRWn8/V+
         WV0SmqAfY5PlNUFPRaJcBIQJTNyjy1r1yBLlI6dGoQQKxjHcXOQM+D3YRZtzOkf5V+zF
         cNOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707157413; x=1707762213;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=llwmL9ShaEp//MaiML1a5WGyBP2svlmp4kDFM1egn8Q=;
        b=oGss6FkEsZhFsfxj25vMjLsx7pu57/3VEr62t6azhpGNZ3qIdDcgTGlp2blUU3IVMk
         ZsENvDfb8D8uOcWOEtKfNTVMycK6Li8oZk/wuebMIgBA1XawNeu212T80Kvg3tl2NNOs
         Nucvh3dYbj2hBqMFKvT9W5c1QOCIr6E1MxDuzIADnoWtHRvw3frt/evjtBMpLsUtHfMs
         /tA8xCM9PHnxz3WjAjNwQ+kCcahcX3HTKPvkyS9S5ctG3fbSVoqFaDmYYrbQN7k4S2an
         dKhx3VoKiXUtl+lFCtBfcSzEO4/HVGN92Y7HVFuwWKahDfy4ypC2BoNzDfFEcL1bJctc
         ZHQQ==
X-Gm-Message-State: AOJu0Yxr86GmZfa7LL79p6q2iisq0GVsZBjyRBdjWr9O/ixxe7s3t4nl
	GGrTtpcF2n+ixAxGH9cWqG3b8r4PQ3c96a4+LULLPRFHcnQNA+5s
X-Google-Smtp-Source: AGHT+IF+PRrZ+wNF0mdYihXzAakKUW/t1o6iXTNrX2i9w22geW2gA879qLYEWTo72IZb+gzNd85HOg==
X-Received: by 2002:a05:600c:4fcd:b0:40e:d2da:fc6b with SMTP id o13-20020a05600c4fcd00b0040ed2dafc6bmr423873wmq.38.1707157412692;
        Mon, 05 Feb 2024 10:23:32 -0800 (PST)
X-Forwarded-Encrypted: i=0; AJvYcCXEXjKAWo4Sfp0o4IVMebdxdm/yOr/7WYPc8ZWNcsq2Q5uopoSqL/PW9++OiPhiTEvlBFfp2+LP5i9JIePAWDh8RwsRBQAO8XyuxSsKZly+LivVuiOl2gm1DkxniWkwPWDVtYxJwvj1z1ypBXYhW64/nAGuBet0P92JOlpM5zopEXZO2lCK4ylAtEjpCgBoejvk2c0abLcWjFf10MxxocBn+DvbOeKYcZ0AYNlBk7Cyhc7ifXPVe/+MriY8V+n4FSz4Sq6ICWZtE4hfYGbFzZQ2J5jHJqc+CJIxLCdT8/dCVqtmQCtAq7npKqkm4wBATDYcqQakQOQ4798ZKYtQrS6Rsw==
Received: from jernej-laptop.localnet (82-149-13-182.dynamic.telemach.net. [82.149.13.182])
        by smtp.gmail.com with ESMTPSA id n17-20020a5d4211000000b0033940016d6esm174561wrq.93.2024.02.05.10.23.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Feb 2024 10:23:32 -0800 (PST)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To: Chen-Yu Tsai <wens@csie.org>, Samuel Holland <samuel@sholland.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Andre Przywara <andre.przywara@arm.com>
Cc: linux-sunxi@lists.linux.dev, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Nick Alilovic <nickalilovic@gmail.com>
Subject: Re: [PATCH 1/2] arm64: dts: allwinner: h616: Add 32K fanout pin
Date: Mon, 05 Feb 2024 19:23:31 +0100
Message-ID: <3206408.5fSG56mABF@jernej-laptop>
In-Reply-To: <20240204093255.148972-2-andre.przywara@arm.com>
References:
 <20240204093255.148972-1-andre.przywara@arm.com>
 <20240204093255.148972-2-andre.przywara@arm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Dne nedelja, 04. februar 2024 ob 10:32:54 CET je Andre Przywara napisal(a):
> On some boards the designers saved on a 32KHz crystal for some external
> chips, so the SoC has to help out, with providing a 32 KHz clock signal.
> 
> Add a pinctrl group node to allow DT nodes to reference this fanout signal.
> 
> Signed-off-by: Andre Przywara <andre.przywara@arm.com>
> ---
>  arch/arm64/boot/dts/allwinner/sun50i-h616.dtsi | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h616.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-h616.dtsi
> index d549d277d972..107256eeedc3 100644
> --- a/arch/arm64/boot/dts/allwinner/sun50i-h616.dtsi
> +++ b/arch/arm64/boot/dts/allwinner/sun50i-h616.dtsi
> @@ -256,6 +256,11 @@ uart1_rts_cts_pins: uart1-rts-cts-pins {
>  				pins = "PG8", "PG9";
>  				function = "uart1";
>  			};
> +
> +			x32clk_fanout_pin: x32clk-fanout-pin {
> +				pins = "PG10";
> +				function = "clock";
> +			};

Please add /omit-if-no-ref/

Best regards,
Jernej

>  		};
>  
>  		gic: interrupt-controller@3021000 {
> 





