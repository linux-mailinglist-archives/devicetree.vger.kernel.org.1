Return-Path: <devicetree+bounces-225584-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 57753BCF3A7
	for <lists+devicetree@lfdr.de>; Sat, 11 Oct 2025 12:34:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6DF6719A0DCF
	for <lists+devicetree@lfdr.de>; Sat, 11 Oct 2025 10:34:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 24342223DFD;
	Sat, 11 Oct 2025 10:34:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="H23lmt7v"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3690825A2B4
	for <devicetree@vger.kernel.org>; Sat, 11 Oct 2025 10:34:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760178848; cv=none; b=EjVpxhINXNGOAWjFzakTBz77r/I+K2JrHD/zM0ftQg1UDI87LBrS7J+jNAmrXp35ny6huX5GFtbXh7ISiMSEsRAi5aSmo8MI5nUZScZpqivO31LSKqHv46vTldmok5tzdvdD8hw+ra0EhfxgvELHy+bY7qEQ+ysko8bY2OQvKHA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760178848; c=relaxed/simple;
	bh=/RHuJN8mBmn1rPV1anCMzCvuwIBWUCVFFlaXjDz3/8Y=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=HvF98hdvTkdMfI5FdInx8HiuG7l/UGfhZpeOLkW/rhqGM+8j93X2CTwZhl+nRpc0GB5Ne2gQ3AcLmGDbOJ6cjTvKmbItDV0Rin8BQWZO1wo+3gpVHYWCdZpl4PGFSBxIp0/BGxmTaZnL+uariZSfmF99QVgGpUevlwpBKHx9Q2c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=H23lmt7v; arc=none smtp.client-ip=209.85.218.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f45.google.com with SMTP id a640c23a62f3a-b4c89df6145so464675566b.3
        for <devicetree@vger.kernel.org>; Sat, 11 Oct 2025 03:34:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760178840; x=1760783640; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HYAPdYV4D3yX5RzlvX7A+6gcHuPHfoEYTyIdk9OJfZs=;
        b=H23lmt7vPaMBrmmhxmfu7aO3Pf6xce8xW0JdzLYcsp1FkYYOQdFUe9PaVJFnqxhtgO
         0UzcLp0KBBlXKsHXsAzDHQh500IapVlOeHH/XcQliJPkduuefld2T2OOAj38frn7sWaQ
         TgihW9plxBbQxKXJCqK/NM4cmIWmcyiTVX8RbdvKpiWWTSox0enTpJGjAfz1n7TZN5eq
         7TIJVybPpjgTpSbNxezxox07LqA9rM4SClRDCbJsE0lo+XIcJbKsjlPT47BZB5cTymUv
         VXsO1XaQ7YDwqUaxaFyxFk+U20gGjEdeqkxXK8xokfoRGJl5G25JwgOQFFCD7hZ0tHfG
         JGCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760178840; x=1760783640;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HYAPdYV4D3yX5RzlvX7A+6gcHuPHfoEYTyIdk9OJfZs=;
        b=GP21lrFzMzPrSSi6yz2tQCdYGGHd/ykcgPkxRD+exBAXL48PjZkqRb7c5pyNbDlGs/
         SAfIDDcPrFzzA4ue4QUTekZycRRaRhBRFbG+vqGONZC/ItfFuew6fNZNj/9vEMV+Zs1f
         1ne+MWyRlM4FSljYpNIwKAcABOAR/0XUwEe6+Ivye7mr2xELl8xGTGVnxTZd1fR+P6wy
         3cIdz4WC5rQ07WwpjqHOtyiTGmv8QulhPwVshFX1BbmRl9dxEBU02BuPL37v7QVs+y5F
         uHMq6mVBFwsRa1jloMpgpFHOMfeKM7bmFjjK/nRc2yg5L6ta4zN0QZyki0VO2u3q5XLi
         5tJQ==
X-Forwarded-Encrypted: i=1; AJvYcCVQajlxQBYWlZZ2bwWEzOsfc+o0QIYI8iOX7ZdJ7LTpIXw7B72Zl9ojGxQB1INCwQRSoGn0cfz+3WZh@vger.kernel.org
X-Gm-Message-State: AOJu0YwqWA42P5ZQycraWjE/U1vqEEqk+84Fdny54J7+1ENopoxJjxlP
	r3V4uQ6AMOPDsJf6wuamrQXfm5M0q6UAurQ1lrzKd9hSaxgqFRugytmF
X-Gm-Gg: ASbGncsF3ifcqzyF3dGJi+q3A7lvq42Zc2Vmi7Dy0RKDoBIt36OJunUV3mbkuONwb63
	rgQQ/Eo/+Q/kvGWqdzTk14sZ7QhYK0Sr/04TNl6hv8FBHbwaXnw5Pb13f4dXYM5PyuXF2eKhwxU
	a4gjQSnBH5EVRtLZ64geEzDkDoO6juq7eKkLXzmczSbl607tlYbh0MEoAee1Z8UsQWvbcOvuzxl
	eSoMu8ujzwc+gHbkeLr2Rg5TOnsg8e/xtyLmyd5EJb3MDAt7ggYtnSg6cvVM41+zKs0nVcPWSdn
	I6SSKa6pMMer1LcgvSJNsKJxU38tNBIORtI5IIq2eHmiGOS97TO0/BVTQDZFmRGEAAM9iWNnZNC
	/1HrEcCttHQh6YklRNc5YYMVBOwBr6+aqgsmjXZoUo+7Zshz6t7KQNDeXpnbDbf3WCjSNX7oJGQ
	==
X-Google-Smtp-Source: AGHT+IFFycSQY4Q0kx0MQ3fB8e1/4xrhlffbTRZSX2gxi2804bwlqcuj20iB5WX1bDTyi44c3l+bjA==
X-Received: by 2002:a17:907:6d07:b0:b41:79ff:250c with SMTP id a640c23a62f3a-b50aaa96ba5mr1457625766b.23.1760178840185;
        Sat, 11 Oct 2025 03:34:00 -0700 (PDT)
Received: from jernej-laptop.localnet ([188.159.248.16])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b55d8c124a8sm454690166b.51.2025.10.11.03.33.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 11 Oct 2025 03:33:59 -0700 (PDT)
From: Jernej =?UTF-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>,
 Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Samuel Holland <samuel@sholland.org>,
 Richard Genoud <richard.genoud@bootlin.com>
Cc: Wentao Liang <vulab@iscas.ac.cn>,
 Uwe =?UTF-8?B?S2xlaW5lLUvDtm5pZw==?= <u.kleine-koenig@baylibre.com>,
 Maxime Ripard <mripard@kernel.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 linux-mtd@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
 linux-kernel@vger.kernel.org, Richard Genoud <richard.genoud@bootlin.com>
Subject: Re: [PATCH 03/15] arm64: dts: allwinner: h616: add NAND controller
Date: Sat, 11 Oct 2025 12:33:58 +0200
Message-ID: <4682810.LvFx2qVVIh@jernej-laptop>
In-Reply-To: <20251010084042.341224-4-richard.genoud@bootlin.com>
References:
 <20251010084042.341224-1-richard.genoud@bootlin.com>
 <20251010084042.341224-4-richard.genoud@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"

Dne petek, 10. oktober 2025 ob 10:40:30 Srednjeevropski poletni =C4=8Das je=
 Richard Genoud napisal(a):
> The H616 has a NAND controller quite similar to the A10/A23 ones, but
> with some register differences, more clocks (for ECC and MBUS), more ECC
> strengths, so this requires a new compatible string.
>=20
> This patch adds the NAND controller node and pins in the device tree.
>=20
> Signed-off-by: Richard Genoud <richard.genoud@bootlin.com>
> ---
>  .../arm64/boot/dts/allwinner/sun50i-h616.dtsi | 50 +++++++++++++++++++
>  1 file changed, 50 insertions(+)
>=20
> diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h616.dtsi b/arch/arm64/=
boot/dts/allwinner/sun50i-h616.dtsi
> index ceedae9e399b..60626eba7f7c 100644
> --- a/arch/arm64/boot/dts/allwinner/sun50i-h616.dtsi
> +++ b/arch/arm64/boot/dts/allwinner/sun50i-h616.dtsi
> @@ -278,6 +278,37 @@ ir_rx_pin: ir-rx-pin {
>  				function =3D "ir_rx";
>  			};
> =20
> +			nand_pins: nand-pins {
> +				pins =3D "PC0", "PC1", "PC2", "PC5", "PC8", "PC9",
> +				       "PC10", "PC11", "PC12", "PC13", "PC14",
> +				       "PC15", "PC16";
> +				function =3D "nand0";
> +			};
> +
> +			nand_cs0_pin: nand-cs0-pin {
> +				pins =3D "PC4";
> +				function =3D "nand0";
> +				bias-pull-up;
> +			};
> +
> +			nand_cs1_pin: nand-cs1-pin {
> +				pins =3D "PC3";
> +				function =3D "nand0";
> +				bias-pull-up;
> +			};
> +
> +			nand_rb0_pin: nand-rb0-pin {
> +				pins =3D "PC6";
> +				function =3D "nand0";
> +				bias-pull-up;
> +			};
> +
> +			nand_rb1_pin: nand-rb1-pin {
> +				pins =3D "PC7";
> +				function =3D "nand0";
> +				bias-pull-up;
> +			};
> +
>  			mmc0_pins: mmc0-pins {
>  				pins =3D "PF0", "PF1", "PF2", "PF3",
>  				       "PF4", "PF5";
> @@ -440,6 +471,25 @@ mmc2: mmc@4022000 {
>  			#size-cells =3D <0>;
>  		};
> =20
> +		nfc: nand-controller@4011000 {

Nodes are sorted by memory address. So this one should be moved before
mmc2 and possibly others.

> +			compatible =3D "allwinner,sun50i-h616-nand-controller";
> +			reg =3D <0x04011000 0x1000>;
> +			interrupts =3D <GIC_SPI 34 IRQ_TYPE_LEVEL_HIGH>;
> +			clocks =3D <&ccu CLK_BUS_NAND>, <&ccu CLK_NAND0>,
> +				<&ccu CLK_NAND1>, <&ccu CLK_MBUS_NAND>;
> +			clock-names =3D "ahb", "mod", "ecc", "mbus";
> +			resets =3D <&ccu RST_BUS_NAND>;
> +			reset-names =3D "ahb";
> +			dmas =3D <&dma 10>;
> +			dma-names =3D "rxtx";
> +			pinctrl-names =3D "default";
> +			pinctrl-0 =3D <&nand_pins>, <&nand_cs0_pin>,
> +				<&nand_cs1_pin>, <&nand_rb0_pin>,
> +				<&nand_rb1_pin>;

Are you sure that each nand device will use exactly this pin configuration?
IIUC, not all chips will have two CS and two RB pins. If so, pinctrl nodes
should be moved to device DT and pins subnodes should be marked with
/omit-if-no-ref/.

Best regards,
Jernej

> +			#address-cells =3D <1>;
> +			#size-cells =3D <0>;
> +		};
> +
>  		uart0: serial@5000000 {
>  			compatible =3D "snps,dw-apb-uart";
>  			reg =3D <0x05000000 0x400>;
>=20





