Return-Path: <devicetree+bounces-195820-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 89571B032AD
	for <lists+devicetree@lfdr.de>; Sun, 13 Jul 2025 20:57:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id B35557AD1EC
	for <lists+devicetree@lfdr.de>; Sun, 13 Jul 2025 18:56:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4447069D2B;
	Sun, 13 Jul 2025 18:57:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="ygWEkd0r"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E4A626AD9
	for <devicetree@vger.kernel.org>; Sun, 13 Jul 2025 18:57:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752433047; cv=none; b=EtLzTIQOIYSutxvQn8qbbK9QGoF2vv+pXYbZ5PyWSKMaKOMZjU3C2ZABI9s0GlxD71UQvWHyDvOojJqvfqnUImGhiaWgSoDNmhJge1tkIqJgITPXOumAVqZnEzE7isG5CJzLYX7uyte021qhDPZB5A8gc9B+WDMakyJM6xkVuoA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752433047; c=relaxed/simple;
	bh=Z4sRh/nv7aMDvsEu8n6tnVBqyCgWEO5IUevF16XTzgI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=FniUvJni0r/NvYXwJsC4pRWwvoHnNeR5/07Jt1BmDSIB8oC9MAgNL0TXJEx19di80YYZbf3JyIkj+jbgpIcs34LxqZ8bnyC6Lhy5RJwnnXcZd+qm4fJ2z7Kh/mogmEGq+OmSed8tj6Tlpf49OYZA4gIQMepUZR2RiQmmUGezwkw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=ygWEkd0r; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=pyweeKyT9s5/PpwNqIa2ri7jL7PGqvs1hJzN9Csu3F8=; b=ygWEkd0rt530a80fVyY4JBGjfq
	wEg1cfvHUY79TYH8myZs57Zej6WOk0MiOsRI+aCGcgkhg+8qPIumSmyx90TC0ECZTtzA6dxgkdSYq
	d0lPkbn+Fs6iLAr4/jwIq0k7wQMI6Hxa1ZKvvNv2kDUonWA89qhGQUCb+xJ358OZXWaDKLxNoLs93
	J/w8UZAHhSBKGC4BpGPmDuGhsTWaJaK53C3ntHS++lw7aYON25R0rD2zpmW5zuuQYD5WCWjtWjS5P
	NChiv7AAcFHOYpYGPQH6XSlQIN6d68zZjB8c/inMNXkIcUDFd+KYCQms7YaHS7VHDUXB25mEBDeqi
	Cr5bL0Iw==;
Received: from i53875bea.versanet.de ([83.135.91.234] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1ub1si-0001Dc-Tj; Sun, 13 Jul 2025 20:57:00 +0200
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 quentin.schulz@cherry.de, dsimic@manjaro.org, naoki@radxa.com,
 Jun Yan <jerrysteve1101@gmail.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, Jun Yan <jerrysteve1101@gmail.com>
Subject:
 Re: [PATCH 1/3] dt-bindings: vendor-prefixes: Add Shenzhen OneThing
 Technologies Co., Ltd.
Date: Sun, 13 Jul 2025 20:57:00 +0200
Message-ID: <5772394.qSoW2BAyJ8@diego>
In-Reply-To: <20250713163255.163669-2-jerrysteve1101@gmail.com>
References:
 <20250713163255.163669-1-jerrysteve1101@gmail.com>
 <20250713163255.163669-2-jerrysteve1101@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"

Am Sonntag, 13. Juli 2025, 18:32:53 Mitteleurop=C3=A4ische Sommerzeit schri=
eb Jun Yan:
> OneThing is a company engaged in edge computing.
>=20
> Signed-off-by: Jun Yan <jerrysteve1101@gmail.com>
> ---
>  Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
>  1 file changed, 2 insertions(+)
>=20
> diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Doc=
umentation/devicetree/bindings/vendor-prefixes.yaml
> index 5d2a7a8d3ac6..77fbbe040706 100644
> --- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
> +++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
> @@ -1108,6 +1108,8 @@ patternProperties:
>      description: OLIMEX Ltd.
>    "^olpc,.*":
>      description: One Laptop Per Child
> +  "^onething,.*":
> +    descriotion: Shenzhen OneThing Technologies Co., Ltd.

as Rob's bot pointed out, there is a typo in "description".

Also please make sure to sort entries alphabetically, "T" comes after "P"
(=3D onething after oneplus)

>    "^oneplus,.*":
>      description: OnePlus Technology (Shenzhen) Co., Ltd.
>    "^onie,.*":
>=20





