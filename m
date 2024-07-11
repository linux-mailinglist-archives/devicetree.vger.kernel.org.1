Return-Path: <devicetree+bounces-85184-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id B551F92F26F
	for <lists+devicetree@lfdr.de>; Fri, 12 Jul 2024 01:02:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E6CE21C226E1
	for <lists+devicetree@lfdr.de>; Thu, 11 Jul 2024 23:02:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 63C371A00E7;
	Thu, 11 Jul 2024 23:02:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=cknow.org header.i=@cknow.org header.b="ZF83q74Q"
X-Original-To: devicetree@vger.kernel.org
Received: from out-188.mta0.migadu.com (out-188.mta0.migadu.com [91.218.175.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8CAF616D320
	for <devicetree@vger.kernel.org>; Thu, 11 Jul 2024 23:02:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.218.175.188
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720738974; cv=none; b=VWrfyWX1m0uhXmPcWVkl08c5YhuopVmLzHlys0pkUuWEt+JQmYrPMPPT5bxxlKgl6GpwZqu429nme3cJuEnkbnh8oZOvn4JR9p2AxLcZ/N75Y53ZbH0rGpXMOmYdfMuEa1ERrvJDhdK2Y9y1dNcF1SqPGclREe9owKe28qSfAl4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720738974; c=relaxed/simple;
	bh=Hi6sDWfL77UISF5dZMFpWs5a8OFVpMHj13fMcsrf2zc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=HlNzNTzdLd2g2y0YE1SVkKTZtkZXL0ZpeP0VIBR42PjLNlzehzT5GA6WCUw7lLrRnNpP/MeIcFbSG8hDWNUkC591rR9zBj6MX6ec96iDBRVEjgBKVNWoibD8A0wp8vjWqf2rDBhhYwNgfluHGUTBYnx/J7AyXsfKnGaXxXs/Wtw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow.org; spf=pass smtp.mailfrom=cknow.org; dkim=pass (2048-bit key) header.d=cknow.org header.i=@cknow.org header.b=ZF83q74Q; arc=none smtp.client-ip=91.218.175.188
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cknow.org
X-Envelope-To: heiko@sntech.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1720738970;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=NiLtTDTHrNzm8gSdaBX/PEdoDsncwdr7j0vTiYzaAVs=;
	b=ZF83q74Q8s72dDtDcirU1bCtacOR86kyKboGCUIGJPo6Mmg9L75J++cfw5frf24JEhsBK8
	+2/7lGckKzL4pZbyoScV9Hhgl4A69yXLhqFYZE38JeKvd98BAoq5xyziF2xAJbnHMhSF93
	pPXL8gWeysWvrT3W2U98qIuNhorMu8CQtznnhvO2oD12o77Fslc8cYYitzbmN8uea/zS6h
	NZndOAqDCZX4q95gtXq1FR80QxD7redwz2AEbYjNWd56jj91bGLn51uf3w3aomiNTE0d4m
	WftyDntygUlHToMzyKCjYVdhBFY2W0vCugdD26RIH3Qx/NECROhbGwHxPJEBYw==
X-Envelope-To: linux-rockchip@lists.infradead.org
X-Envelope-To: robh@kernel.org
X-Envelope-To: krzk+dt@kernel.org
X-Envelope-To: conor+dt@kernel.org
X-Envelope-To: devicetree@vger.kernel.org
X-Envelope-To: linux-rockchip@lists.infradead.org
X-Envelope-To: naoki@radxa.com
X-Envelope-To: naoki@radxa.com
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Diederik de Haas <didi.debian@cknow.org>
To: heiko@sntech.de, linux-rockchip@lists.infradead.org
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
 FUKAUMI Naoki <naoki@radxa.com>, FUKAUMI Naoki <naoki@radxa.com>
Subject:
 Re: [PATCH 1/2] arm64: dts: rockchip: add support for Radxa ROCK Pi E v3.0
Date: Fri, 12 Jul 2024 01:02:41 +0200
Message-ID: <8266220.dYGNU97SPr@bagend>
Organization: Connecting Knowledge
In-Reply-To: <20240711210526.40448-1-naoki@radxa.com>
References: <20240711210526.40448-1-naoki@radxa.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart2024616.8Ad8S3gpjg";
 micalg="pgp-sha256"; protocol="application/pgp-signature"
X-Migadu-Flow: FLOW_OUT

--nextPart2024616.8Ad8S3gpjg
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"; protected-headers="v1"
From: Diederik de Haas <didi.debian@cknow.org>
To: heiko@sntech.de, linux-rockchip@lists.infradead.org
Date: Fri, 12 Jul 2024 01:02:41 +0200
Message-ID: <8266220.dYGNU97SPr@bagend>
Organization: Connecting Knowledge
In-Reply-To: <20240711210526.40448-1-naoki@radxa.com>
References: <20240711210526.40448-1-naoki@radxa.com>
MIME-Version: 1.0

On Thursday, 11 July 2024 23:05:25 CEST FUKAUMI Naoki wrote:
> Radxa Pi E v3.0 is a compact networking SBC[1] using the Rockchip
> RK3288 chip.
> 
> [1] https://radxa.com/products/rockpi/pie
> 
> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
> ---
>  Documentation/devicetree/bindings/arm/rockchip.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml
> b/Documentation/devicetree/bindings/arm/rockchip.yaml index
> 1ef09fbfdfaf..3caa4e6428be 100644
> --- a/Documentation/devicetree/bindings/arm/rockchip.yaml
> +++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
> @@ -782,6 +782,7 @@ properties:
>        - description: Radxa ROCK Pi E
>          items:
>            - const: radxa,rockpi-e
> +          - const: radxa,rockpi-e-v3
>            - const: rockchip,rk3328
> 
>        - description: Radxa ROCK Pi N8

This is about modifying the binding, but the patch subject indicates something 
else (and is the same as patch 2).
--nextPart2024616.8Ad8S3gpjg
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCZpBkkQAKCRDXblvOeH7b
bo51AQCnC5r0Z/22sAL1B9sPYqeh2eYv9QpFuD8JQ6GQvRgeLQEA3FDVEjYMFDAe
Q2mWHo02pxFbZhuvdfpfWykdvAZvOgQ=
=xuiP
-----END PGP SIGNATURE-----

--nextPart2024616.8Ad8S3gpjg--




