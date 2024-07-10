Return-Path: <devicetree+bounces-84612-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CCE1292CEC3
	for <lists+devicetree@lfdr.de>; Wed, 10 Jul 2024 12:02:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8212628A381
	for <lists+devicetree@lfdr.de>; Wed, 10 Jul 2024 10:02:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 53A7617BB31;
	Wed, 10 Jul 2024 10:02:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=cknow.org header.i=@cknow.org header.b="uT3hvtKA"
X-Original-To: devicetree@vger.kernel.org
Received: from out-180.mta1.migadu.com (out-180.mta1.migadu.com [95.215.58.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50C4C1B86F3
	for <devicetree@vger.kernel.org>; Wed, 10 Jul 2024 10:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=95.215.58.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720605749; cv=none; b=iydniMXBFSeVQ091ujwNAfE4bOxtjX25UhJiue+4Slh8t8upZo4v4uPIUzzUVSruQJgxsvOooZXv6yJWj//GFCdSW2s+o3wFoqiHd2ev/iN4W70GLCbormtSkezC3qKbC1TTkg5CMttID5sl9G4zr8IasSx2fU1qnyxxchbtPhs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720605749; c=relaxed/simple;
	bh=QeCOm8HEg5Y4+iYtW6nhI7mE9h/vrFyYGuEzqhjPunA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=D7lq305Fna5Rgsb9UOKJPU3NDVE2rMml33D6mD0+l8w9DZz57RSt56jPFkuOEHppGzUWQWG1WJVSYfcI7N15UTBE8olhEnYhs0a7LxY5SdENa3oN3xL6QvhC0cQlruDq9FCS0t5JSQZVOc3PuNTanlEOVn10JAud4EXwI8tliDw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow.org; spf=pass smtp.mailfrom=cknow.org; dkim=pass (2048-bit key) header.d=cknow.org header.i=@cknow.org header.b=uT3hvtKA; arc=none smtp.client-ip=95.215.58.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cknow.org
X-Envelope-To: linux-rockchip@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1720605742;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=NJJ/PSTQTb3tpev2BiBmkCTWQ+ec4m22cqLbanWHxvA=;
	b=uT3hvtKAgzY/2ioKZDXPhajbmNsXISurOLmNL5g2lU4xhAdAu5hukNSIOEXMJSrGNRRkeq
	1bTPNKbDXbjsBBn6rnByRdvqZsP7qlRx8+1fol1sLcluA1FcqziBJJbn+riR9/mgMeATc5
	8uspKRWTosYc965LyPcYNwOD4mrEqZJ6TX2z1tAwPV16oz+lqWLb84dYT/kBwESfOhNTNe
	OtdgczFHK0h0qDPpg3IB1QhIwJW8F2qsB19+rWCzXIsOVYjlrTFKp6QTjGHNShJlUw1+pY
	BMN6IvwIF67W3b/PSd+lrVFEEPEdj1YEykQn8O3imZJAkqvB2k7OfFC+arEAAQ==
X-Envelope-To: p.puschmann@pironex.com
X-Envelope-To: robh@kernel.org
X-Envelope-To: krzk+dt@kernel.org
X-Envelope-To: p.puschmann@pironex.com
X-Envelope-To: devicetree@vger.kernel.org
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Diederik de Haas <didi.debian@cknow.org>
To: linux-rockchip@lists.infradead.org,
 Philipp Puschmann <p.puschmann@pironex.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, p.puschmann@pironex.com,
 devicetree@vger.kernel.org
Subject:
 Re: [PATCH] arm64: dts: rockchip: Add uart dma names to the SoC dtsi for
 RK356x
Date: Wed, 10 Jul 2024 12:02:07 +0200
Message-ID: <5414331.Y6POrrGVKo@bagend>
Organization: Connecting Knowledge
In-Reply-To: <20240710093356.3344056-1-p.puschmann@pironex.com>
References: <20240710093356.3344056-1-p.puschmann@pironex.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart2472209.eE7AJ3UNXe";
 micalg="pgp-sha256"; protocol="application/pgp-signature"
X-Migadu-Flow: FLOW_OUT

--nextPart2472209.eE7AJ3UNXe
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"; protected-headers="v1"
From: Diederik de Haas <didi.debian@cknow.org>
Date: Wed, 10 Jul 2024 12:02:07 +0200
Message-ID: <5414331.Y6POrrGVKo@bagend>
Organization: Connecting Knowledge
In-Reply-To: <20240710093356.3344056-1-p.puschmann@pironex.com>
References: <20240710093356.3344056-1-p.puschmann@pironex.com>
MIME-Version: 1.0

On Wednesday, 10 July 2024 11:33:56 CEST Philipp Puschmann wrote:
> DMA names are required by of_dma_request_slave_channel function that is
> called during uart probe. So to enable DMA for uarts add the names as in
> the RK3568 TRM.

Setting it on channels without flow control apparently causes issues. See

https://lore.kernel.org/linux-rockchip/20240628120130.24076-1-didi.debian@cknow.org/

> Signed-off-by: Philipp Puschmann <p.puschmann@pironex.com>
> ---
>  arch/arm64/boot/dts/rockchip/rk356x.dtsi | 10 ++++++++++
>  1 file changed, 10 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> b/arch/arm64/boot/dts/rockchip/rk356x.dtsi index d8543b5557ee..4ae40661ca6a
> 100644
> --- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> @@ -489,6 +489,7 @@ uart0: serial@fdd50000 {
>  		clocks = <&pmucru SCLK_UART0>, <&pmucru PCLK_UART0>;
>  		clock-names = "baudclk", "apb_pclk";
>  		dmas = <&dmac0 0>, <&dmac0 1>;
> +		dma-names = "tx", "rx";
>  		pinctrl-0 = <&uart0_xfer>;
>  		pinctrl-names = "default";
>  		reg-io-width = <4>;
> @@ -1389,6 +1390,7 @@ uart1: serial@fe650000 {
>  		clocks = <&cru SCLK_UART1>, <&cru PCLK_UART1>;
>  		clock-names = "baudclk", "apb_pclk";
>  		dmas = <&dmac0 2>, <&dmac0 3>;
> +		dma-names = "tx", "rx";
>  		pinctrl-0 = <&uart1m0_xfer>;
>  		pinctrl-names = "default";
>  		reg-io-width = <4>;
> ...
--nextPart2472209.eE7AJ3UNXe
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCZo5cHwAKCRDXblvOeH7b
bouTAQDB9gDa4u0c0OxsnNTQjkvPClfMbVNKdre+EbNLhZVp3AD/daehVUuO5Yc0
iI+Tdb5gNHR3VR2aBz+Sx97qu1gPVgA=
=v8JT
-----END PGP SIGNATURE-----

--nextPart2472209.eE7AJ3UNXe--




