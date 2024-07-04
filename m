Return-Path: <devicetree+bounces-83103-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AF1F927330
	for <lists+devicetree@lfdr.de>; Thu,  4 Jul 2024 11:39:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 186A11F2348E
	for <lists+devicetree@lfdr.de>; Thu,  4 Jul 2024 09:39:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6DF5A1AAE0C;
	Thu,  4 Jul 2024 09:39:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=cknow.org header.i=@cknow.org header.b="toPUSqyT"
X-Original-To: devicetree@vger.kernel.org
Received: from out-174.mta1.migadu.com (out-174.mta1.migadu.com [95.215.58.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 363431A2555
	for <devicetree@vger.kernel.org>; Thu,  4 Jul 2024 09:39:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=95.215.58.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720085947; cv=none; b=ODtWlujWqyPL242U+ho+TvDuwHoxe+11OkWxdBBV4ITY4DNDvh9jdIYe4q9MKa+MZ4K70J5xHvpFyIJ2yWMh25brp7b6ElJrDMBgCc2r1lqWwfvke9+3c3msdOcu9dHXpqoJVySOl7HNQGbyxXsV2SNTZitl1V7ZRXTOfp95/Os=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720085947; c=relaxed/simple;
	bh=1id0SpFkgrDsTPAjmuU7RHogfbszgR+A3t102c2bvLQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=aBLkpynxprane5bOlGmmkrNJvSnqLroJOsC5pgL1iCOUKC8jKYAHt93M2gssCXRZ6IwZoSDFTtytfcwJcRi+BAMAyZyrbrxZMQisuM98BIJD7m+wI3cTL8uzvFyysPMxTpSSjG6EnwlIjpH6ok9HU6uyXrKs/ItXL8+W6zBF40c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow.org; spf=pass smtp.mailfrom=cknow.org; dkim=pass (2048-bit key) header.d=cknow.org header.i=@cknow.org header.b=toPUSqyT; arc=none smtp.client-ip=95.215.58.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cknow.org
X-Envelope-To: heiko@sntech.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1720085943;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=UZNJgxosyNiX9qzr7UAd3UGX4gQYJbfBUAOEaVCsycc=;
	b=toPUSqyTaxviu1wd/DydUpiw5NbI2i+Z+8iYr6E7THqkDPne/3+wn3cbC39DEOqVO/yl8u
	uy9P0BQegT8m1QaGHbYfasbtgKeMvCQi27ouoenBZrPu2AUiiRRmD09m+BmCBH7JLGo3Xe
	k31WqK2mX/Bdj8hcxbzWejYNPpX2Vv2JCwLeMXA2hrru95GkiT5SKVZqr/MSmGzBSNWp6e
	4E6Y/Dc9iMw+U1ritSCvTGlCalOohN82MFsQJIvG+4BSej2vQtFp96BYTsjtbAzYYBSyPj
	tgW8MkwSM5Z4n1jd+XA7aZX9LBEtH1ieYFBDor1Q1p8iIIQUbdAxuFCNz3df7w==
X-Envelope-To: linux-rockchip@lists.infradead.org
X-Envelope-To: robh@kernel.org
X-Envelope-To: krzk+dt@kernel.org
X-Envelope-To: conor+dt@kernel.org
X-Envelope-To: devicetree@vger.kernel.org
X-Envelope-To: linux-arm-kernel@lists.infradead.org
X-Envelope-To: linux-rockchip@lists.infradead.org
X-Envelope-To: linux-kernel@vger.kernel.org
X-Envelope-To: heiko@sntech.de
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Diederik de Haas <didi.debian@cknow.org>
To: heiko@sntech.de, linux-rockchip@lists.infradead.org
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: add rock5 itx board
Date: Thu, 04 Jul 2024 11:38:51 +0200
Message-ID: <2278169.QnsP76Vvrg@bagend>
Organization: Connecting Knowledge
In-Reply-To: <20240703210524.776455-3-heiko@sntech.de>
References:
 <20240703210524.776455-1-heiko@sntech.de>
 <20240703210524.776455-3-heiko@sntech.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart2395254.yhVh8MZHF5";
 micalg="pgp-sha256"; protocol="application/pgp-signature"
X-Migadu-Flow: FLOW_OUT

--nextPart2395254.yhVh8MZHF5
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"; protected-headers="v1"
From: Diederik de Haas <didi.debian@cknow.org>
To: heiko@sntech.de, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: add rock5 itx board
Date: Thu, 04 Jul 2024 11:38:51 +0200
Message-ID: <2278169.QnsP76Vvrg@bagend>
Organization: Connecting Knowledge
In-Reply-To: <20240703210524.776455-3-heiko@sntech.de>
MIME-Version: 1.0

Hi Heiko,

Thanks for submitting this. A quick scan indicates it should work with a 
(recent) Debian kernel OOTB :-)

On Wednesday, 3 July 2024 23:05:24 CEST Heiko Stuebner wrote:
> +&sdhci {
> +       bus-width = <8>;
> +       no-sdio;
> +       no-sd;
> +       non-removable;
> +       max-frequency = <200000000>;
> +       mmc-hs400-1_8v;
> +       mmc-hs400-enhanced-strobe;
> +       mmc-hs200-1_8v;
> +       status = "okay";
> +};
> +
> +&sdmmc {
> +       max-frequency = <200000000>;
> +       no-sdio;
> +       no-mmc;
> +       bus-width = <4>;
> +       cap-mmc-highspeed;
> +       cap-sd-highspeed;
> +       disable-wp;
> +       sd-uhs-sdr104;
> +       vmmc-supply = <&vcc_3v3_s3>;
> +       vqmmc-supply = <&vccio_sd_s0>;
> +       pinctrl-names = "default";
> +       pinctrl-0 = <&sdmmc_bus4 &sdmmc_clk &sdmmc_cmd &sdmmc_det>;
> +       status = "okay";
> +};
> +
> +/* M.2 E-KEY */
> +&sdio {
> +       broken-cd;
> +       bus-width = <4>;
> +       cap-sdio-irq;
> +       disable-wp;
> +       keep-power-in-suspend;
> +       max-frequency = <150000000>;
> +       mmc-pwrseq = <&sdio_pwrseq>;
> +       no-sd;
> +       no-mmc;
> +       non-removable;
> +       pinctrl-names = "default";
> +       pinctrl-0 = <&sdiom0_pins>;
> +       sd-uhs-sdr104;
> +       vmmc-supply = <&vcc3v3_ekey>;
> +       status = "okay";
> +};
> +
> +&sfc {
> +       pinctrl-names = "default";
> +       pinctrl-0 = <&fspim2_pins>;
> +       status = "okay";

Shouldn't those properties be sorted alphabetically? Or at least consistently?
Note that the same issue is present on other places too, but I believe the 
above quoted part shows the issue enough.

Cheers,
  Diederik
--nextPart2395254.yhVh8MZHF5
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCZoZtqwAKCRDXblvOeH7b
bnCgAP4zrwaK/BWbiaA7rwRd9f/pdJv8MIIlT6RlMaMJjpj3PgD9G3dQjI2QUesx
hlmHmGB3VmWGdOoIuqbJNtvDZ/bNtgs=
=ja2L
-----END PGP SIGNATURE-----

--nextPart2395254.yhVh8MZHF5--




