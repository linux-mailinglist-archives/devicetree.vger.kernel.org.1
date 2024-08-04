Return-Path: <devicetree+bounces-90836-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id BD89B946E67
	for <lists+devicetree@lfdr.de>; Sun,  4 Aug 2024 13:27:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 5AC20B2179D
	for <lists+devicetree@lfdr.de>; Sun,  4 Aug 2024 11:27:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BE5222E3EB;
	Sun,  4 Aug 2024 11:27:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=cknow.org header.i=@cknow.org header.b="QrLFVnQ9"
X-Original-To: devicetree@vger.kernel.org
Received: from out-171.mta1.migadu.com (out-171.mta1.migadu.com [95.215.58.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A0F0BB641
	for <devicetree@vger.kernel.org>; Sun,  4 Aug 2024 11:27:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=95.215.58.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722770870; cv=none; b=X88yFqfDv9Ziw6xjm8/1QVBj+ECL44z3RG8NlVtksvKPYju7QI34Lk6XihpqzSYLAtBYvWKOIbhuxxOxcwGbWtnMwrBSxq30dHoXX5IfO7iazitQOO3SjWs6M7sVn9CWsb2BSLIHGzjF1CbYsVlAmghXyy4S2M+H/BaJyIK/lBY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722770870; c=relaxed/simple;
	bh=6WTWTv7xN+Wsf3mjUSvFKRctXZL7CXQtw0vVYnbC+eE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=Opmrsl6tI7uSwR5wS2O8P3q39Vc+Q/wCR125c4GdBvOllf0cN1B6W8LcqnPDpV1IBtF1bk2PDgpOksPRC7+VBJvdDjz3lTH/yhatVlHLHY+ymOWyUdyVbF5529uzernkPndNaRXuE7FL8m85eu1GCMeB2gATHxthMfZXKB9Rf5s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow.org; spf=pass smtp.mailfrom=cknow.org; dkim=pass (2048-bit key) header.d=cknow.org header.i=@cknow.org header.b=QrLFVnQ9; arc=none smtp.client-ip=95.215.58.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cknow.org
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1722770866;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=MJQz41jQBJqqx/MG8xPjrVEqBddVWd1a3QNgEsqP5KI=;
	b=QrLFVnQ9nxrML1Lv2rIBRIKWhtHtacXtXTTu6r401eRGTwSFkmtvi1WZkXyvqUy3YYVurY
	TMnZeqPcvh2RegkaD01er2QqM7NCixV6KdIkkN/HdA6eB2tpIRxQtED7B9GL6Lv8Q1K3Jv
	b9L4maSPSPQexki+f+3kaxqEe3ts6I0ohxGRHx2S/qhINivyTDkUPqFQCCUj8G6Uzh1Fi6
	4TDZ6J08vBithTygoIsY0NabC1NxVfcJVAGbs3wO6Z/wKctIdza7DNDN9ZulzsgToIdjOn
	M+8r8+ymfgEQGwyRmeVW7D6+k3HA3ll5UJNyuw+c0+KR25xkIvpOjDwEOGB6yA==
From: Diederik de Haas <didi.debian@cknow.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jiri Slaby <jirislaby@kernel.org>, Chris Morgan <macromorgan@hotmail.com>,
 Jonas Karlman <jonas@kwiboo.se>, Tim Lunn <tim@feathertop.org>,
 Andy Yan <andyshrk@163.com>, Muhammed Efe Cetin <efectn@protonmail.com>,
 Jagan Teki <jagan@edgeble.ai>, Dragan Simic <dsimic@manjaro.org>,
 Ondrej Jirman <megi@xff.cz>, linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-serial@vger.kernel.org, Yao Zi <ziyao@disroot.org>,
 Yao Zi <ziyao@disroot.org>
Subject: Re: [PATCH 3/4] arm64: dts: rockchip: Add base DT for rk3528 SoC
Date: Sun, 04 Aug 2024 13:27:35 +0200
Message-ID: <3483951.iGylCHCCq3@bagend>
Organization: Connecting Knowledge
In-Reply-To: <20240803125510.4699-5-ziyao@disroot.org>
References:
 <20240803125510.4699-2-ziyao@disroot.org>
 <20240803125510.4699-5-ziyao@disroot.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart2013840.3XhD2mlfif";
 micalg="pgp-sha256"; protocol="application/pgp-signature"
X-Migadu-Flow: FLOW_OUT

--nextPart2013840.3XhD2mlfif
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"; protected-headers="v1"
From: Diederik de Haas <didi.debian@cknow.org>
Date: Sun, 04 Aug 2024 13:27:35 +0200
Message-ID: <3483951.iGylCHCCq3@bagend>
Organization: Connecting Knowledge
In-Reply-To: <20240803125510.4699-5-ziyao@disroot.org>
MIME-Version: 1.0

On Saturday, 3 August 2024 14:55:10 CEST Yao Zi wrote:
> +       gic: interrupt-controller@fed01000 {
> +               compatible = "arm,gic-400";
> +               #interrupt-cells = <3>;
> +               #address-cells = <0>;
> +               interrupt-controller;
> +               reg = <0x0 0xfed01000 0 0x1000>,
> +                     <0x0 0xfed02000 0 0x2000>,
> +                     <0x0 0xfed04000 0 0x2000>,
> +                     <0x0 0xfed06000 0 0x2000>;
> +               interrupts = <GIC_PPI 9
> +                       (GIC_CPU_MASK_SIMPLE(4) | IRQ_TYPE_LEVEL_LOW)>;
> +       };
> +
> +       uart0: serial@ff9f0000 {
> +               compatible = "rockchip,rk3528-uart", "snps,dw-apb-uart";
> +               reg = <0x0 0xff9f0000 0x0 0x100>;
> +               interrupts = <GIC_SPI 40 IRQ_TYPE_LEVEL_HIGH>;
> +               reg-shift = <2>;
> +               reg-io-width = <4>;
> +               clock-frequency = <24000000>;
> +               status = "disabled";
> +       };

The properties should be sorted as follows:
- compatible
- reg
- <other properties sorted alphabetically>
- status

This also applies to the other blocks which I didn't quote.

Cheers,
  Diederik
--nextPart2013840.3XhD2mlfif
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCZq9lpwAKCRDXblvOeH7b
bnHyAQD8wsAMQjsb0Ikzu8H5TXIwKe/0e07lJCrzJlvovJaVzgD/WZBgbVZnTLND
Y3HfPGfi3UhbL+6yrSDh/M0Qok4/9QU=
=1NSP
-----END PGP SIGNATURE-----

--nextPart2013840.3XhD2mlfif--




