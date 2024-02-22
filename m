Return-Path: <devicetree+bounces-44692-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D58CB85F4AA
	for <lists+devicetree@lfdr.de>; Thu, 22 Feb 2024 10:41:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BD2991C236E8
	for <lists+devicetree@lfdr.de>; Thu, 22 Feb 2024 09:41:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EE568381B8;
	Thu, 22 Feb 2024 09:40:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="B5zhm8MY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56BF13BB26
	for <devicetree@vger.kernel.org>; Thu, 22 Feb 2024 09:40:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708594851; cv=none; b=R2yuIvQesw1h75bZvOpfaCE7U0ym6T1yhDMjKHuKWNmKGUgE8JDwzMHOOw/fE66CyOgwv2qIPBo4zMWt/a5uqCox51mKTUItLKwap8PRiLHNTae8aU/YVHzwy0WJBXX5b3lIrCVfdFaedxivMNIIZww0jIrXTQA8fA5ynjGJqCQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708594851; c=relaxed/simple;
	bh=U5A3cMOJuT9FC8OcV7iHHe6jSA8P8czbVBAGeCesJBQ=;
	h=References:From:To:Cc:Subject:Date:In-reply-to:Message-ID:
	 MIME-Version:Content-Type; b=E0UL2Zf4erhCnfBaD9mOESLmzRAkrChUZFQtojY+Q9bC36SxG6u62pr/6g1KswMWHcJgrlivsOovvcjDHX2tTBvNaXDtvm374IFc08rJV1rHcJVvJqaTHoSVDRi8Dvzuuei2lbgp0Rqr8uJANvAvgQExuP0KkES0cQR0LhMDaos=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=B5zhm8MY; arc=none smtp.client-ip=209.85.221.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wr1-f48.google.com with SMTP id ffacd0b85a97d-33d146737e6so5024084f8f.0
        for <devicetree@vger.kernel.org>; Thu, 22 Feb 2024 01:40:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1708594846; x=1709199646; darn=vger.kernel.org;
        h=mime-version:message-id:in-reply-to:date:subject:cc:to:from
         :user-agent:references:from:to:cc:subject:date:message-id:reply-to;
        bh=eDfk374ak2aj4U9CiiV0QysDtfpirDyDxvL4BxqbaqM=;
        b=B5zhm8MYoBAp/zYDtkOcy24LUVGREDYQrybwvlvBfOPOZZzQGP2pR2gDzfAHmdTzcI
         nMyB/v6bx8Cq/7ET4TPotLa/QaEVwBB5YMgwv+szO65jVe89qtK19LHYmFA29THKsKFy
         x8xCgLKemNErPKUtfP8EKASz1J6FU9lPrtanW2rfkQZpzohginanjwv1r7/3kx902a7L
         yQJl/5mIIVAOsksfet48EpRopJBda/OkmORJExeuNRRAQn71GUolQkDs03EZ2oVGqnTN
         +93gfQJ86e41+Aqb3wKLsIiZzK7zSfXYRR/g5eV/ExcO1ZJJH7P5gGHyPhtCjTcqMcKJ
         2TlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708594846; x=1709199646;
        h=mime-version:message-id:in-reply-to:date:subject:cc:to:from
         :user-agent:references:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eDfk374ak2aj4U9CiiV0QysDtfpirDyDxvL4BxqbaqM=;
        b=C8MsnswsZ2z5oXnD4nLvOcnBsg21cVBpPquXCrBzeosLmDYLVB20z49jOvdsOJAQly
         FMjTgjrpuyymU54gqdpyJZeLScwPzm2QtoXSmbgrR/DHP7kLM2kRp2CGCtpB+s3B9qqk
         OF7pA+NvjdgFMmFWaD+T8Q14TsRgB17ehuJncprhil88JWqG7OPykf8gguAxcsenWnly
         /MTyuFGvn1NhLPInSrw5y+n8OoXtGNLXDz8gPwqlTygpSnv/KoLD2017FhKVBVBgvJQa
         VGfGWTBb6Os3yRkZtOHlQ4q6y9RQaIUR6ks07Nsk3AIvo9CIWtF2YhRQtS7gi7MBGcQ8
         L6Gw==
X-Forwarded-Encrypted: i=1; AJvYcCXvkTZT/ywoC1a9GxRukmDyWpglnfpLSSm3W6/TLBwqf1J1YJaIuUDO+SQVvG+nZICuahjCPhXZuiOpX1eWrRP+nFuUAHEppMMvSw==
X-Gm-Message-State: AOJu0YyYkVLAAL5CuxrW9n00h1E5ek+3dEANtAK0cksmC509vY/v6rKI
	Zvh7kHzWjZD30JwGM0uGK3IXVX1pDtTk5xnWxjX7PFjJYboaqj8hwz+YO3awOUM=
X-Google-Smtp-Source: AGHT+IG5rkzGOGgFCat5JaFS4ufYwwZ9KH5dC97ai2bBbn/Ybhk9OGrUNxlKouDoMUdjhRCttgQ9Lg==
X-Received: by 2002:adf:fec7:0:b0:33d:6cc0:b884 with SMTP id q7-20020adffec7000000b0033d6cc0b884mr5221035wrs.10.1708594846378;
        Thu, 22 Feb 2024 01:40:46 -0800 (PST)
Received: from localhost ([2a01:e0a:3c5:5fb1:e0f9:f458:9920:7af9])
        by smtp.gmail.com with ESMTPSA id bk30-20020a0560001d9e00b0033cddadde6esm20291902wrb.80.2024.02.22.01.40.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Feb 2024 01:40:45 -0800 (PST)
References: <20240222082523.1812-1-greena88@gmail.com>
User-agent: mu4e 1.10.8; emacs 29.1
From: Jerome Brunet <jbrunet@baylibre.com>
To: Adam Green <greena88@gmail.com>
Cc: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>, Kevin Hilman
 <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>, Martin
 Blumenstingl <martin.blumenstingl@googlemail.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: meson-g12b-odroid-n2*: Add support for
 overclocking Hardkernel ODROID-N2 boards.
Date: Thu, 22 Feb 2024 10:37:28 +0100
In-reply-to: <20240222082523.1812-1-greena88@gmail.com>
Message-ID: <1j8r3cet0i.fsf@starbuckisacylon.baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain


On Thu 22 Feb 2024 at 08:25, Adam Green <greena88@gmail.com> wrote:

> Hardkernel actively supports overclocking these boards in their own
> documentation. (https://wiki.odroid.com/odroid-n2/hardware/overclocking)
>
> This aligns the SoC opps with those in the board vendors bsp source.

Patch title is too long - checkpatch.pl should have given a you warning
for this.

Not sure it is wise support overclocking directly in mainline, not by
default at least. Maybe as an overlay ? even this I'm not too sure.

>
> Signed-off-by: Adam Green <greena88@gmail.com>
> ---
>  .../dts/amlogic/meson-g12b-odroid-n2-plus.dts | 25 +++++++++++++++++++
>  .../boot/dts/amlogic/meson-g12b-odroid-n2.dts | 17 +++++++++++++
>  .../dts/amlogic/meson-g12b-odroid-n2l.dts     | 25 +++++++++++++++++++
>  3 files changed, 67 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2-plus.dts b/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2-plus.dts
> index ce1198ad34e4..1731d542a00c 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2-plus.dts
> +++ b/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2-plus.dts
> @@ -15,6 +15,31 @@ / {
>  	model = "Hardkernel ODROID-N2Plus";
>  };
>  
> +&cpu_opp_table_0 {
> +	opp-1908000000 {
> +		opp-hz = /bits/ 64 <1908000000>;
> +		opp-microvolt = <1030000>;
> +	};
> +	opp-2016000000 {
> +		opp-hz = /bits/ 64 <2016000000>;
> +		opp-microvolt = <1040000>;
> +		turbo-mode;
> +	};
> +};
> +
> +&cpub_opp_table_1 {
> +	opp-2304000000 {
> +		opp-hz = /bits/ 64 <2304000000>;
> +		opp-microvolt = <1030000>;
> +		turbo-mode;
> +	};
> +	opp-2400000000 {
> +		opp-hz = /bits/ 64 <2400000000>;
> +		opp-microvolt = <1040000>;
> +		turbo-mode;
> +	};
> +};
> +
>  &vddcpu_a {
>  	regulator-min-microvolt = <680000>;
>  	regulator-max-microvolt = <1040000>;
> diff --git a/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts b/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts
> index a198a91259ec..0c71e8bc0124 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts
> +++ b/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts
> @@ -13,3 +13,20 @@ / {
>  	compatible = "hardkernel,odroid-n2", "amlogic,s922x", "amlogic,g12b";
>  	model = "Hardkernel ODROID-N2";
>  };
> +
> +&cpu_opp_table_0 {
> +	opp-1992000000 {
> +		turbo-mode;
> +	};
> +};
> +
> +&cpub_opp_table_1 {
> +	opp-1908000000 {
> +		turbo-mode;
> +	};
> +	opp-2004000000 {
> +		opp-hz = /bits/ 64 <2004000000>;
> +		opp-microvolt = <1022000>;
> +		turbo-mode;
> +	};
> +};
> diff --git a/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2l.dts b/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2l.dts
> index e26f3e3258e1..b16a69d0cad6 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2l.dts
> +++ b/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2l.dts
> @@ -97,6 +97,31 @@ codec {
>  	};
>  };
>  
> +&cpu_opp_table_0 {
> +	opp-1908000000 {
> +		opp-hz = /bits/ 64 <1908000000>;
> +		opp-microvolt = <1030000>;
> +	};
> +	opp-2016000000 {
> +		opp-hz = /bits/ 64 <2016000000>;
> +		opp-microvolt = <1040000>;
> +		turbo-mode;
> +	};
> +};
> +
> +&cpub_opp_table_1 {
> +	opp-2304000000 {
> +		opp-hz = /bits/ 64 <2304000000>;
> +		opp-microvolt = <1030000>;
> +		turbo-mode;
> +	};
> +	opp-2400000000 {
> +		opp-hz = /bits/ 64 <2400000000>;
> +		opp-microvolt = <1040000>;
> +		turbo-mode;
> +	};
> +};
> +
>  &eth_phy {
>  	status = "disabled";
>  };


-- 
Jerome

