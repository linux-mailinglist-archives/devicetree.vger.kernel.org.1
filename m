Return-Path: <devicetree+bounces-238421-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id B547BC5AF81
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 03:01:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 1263E351AF0
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 02:01:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8954126463A;
	Fri, 14 Nov 2025 02:01:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b="NIGAVFUk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail1.manjaro.org (mail1.manjaro.org [142.132.176.110])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A20724E4C4;
	Fri, 14 Nov 2025 02:01:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.176.110
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763085668; cv=none; b=GQUiWRai/tA4vFoklkxT27HgD237PzwWYo/L2JKLv7q/8B2BxxLNuNGBdRqKE9L7rvbmknc1lBjHeFHTyw+5Wgo1+oy2zmbDYkNpm8iQpuFbNYLakdazT144Qeut2fT8FF73oeKKBCPzJ0vgYtWG0p1w065xZEjkYRQe+RLMTOs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763085668; c=relaxed/simple;
	bh=QsgI7XtwnbFzcmqcpVG5VODRp6ErQhOvk/Hxu5c4ksQ=;
	h=From:In-Reply-To:Content-Type:References:Date:Cc:To:MIME-Version:
	 Message-ID:Subject; b=eHr0prNFL0K3bEW5zMdCPNzK4oV93O5CGoTQSByjkmkqWnxwLGV1ZB2YP0I/Ixj8LX+dyB/g23bK3nP5kvZE7A6m/qBiAfKzp+iEvLhOwuOOYTfSuBzZ4Elz/xMnqsCtrBsDrGfCckgY3Ttwj0ndYFF871NAwTAN4jqMaD3IAho=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org; spf=pass smtp.mailfrom=manjaro.org; dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b=NIGAVFUk; arc=none smtp.client-ip=142.132.176.110
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=manjaro.org
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPA id 2B94340FDC;
	Fri, 14 Nov 2025 03:00:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=dkim;
	t=1763085657; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=kq+Oc886/LrLDNK1/htEPP+A49jj0wEsAdsPts936pM=;
	b=NIGAVFUkmzy+jNAIJciKEgw5Ep3TqVeem7Td/7j/6XgIC+oFFnoTVeRPCv7Ylil+cysVHI
	QceK/Td99BFv9Sbl8spI+HJk6baFEyh0flBqoIWFw03f/kTsFzWEDwLsVrYKFIx/i2V8Qz
	V/+zfbsGDPE1lhVHoNWXu52nRhH/acAZ/c14/9+gECBnV+FfTOCtSb4ZWYV2qmVW8/XP0A
	1vEU6xXNlVDrAqdZRIdc2tyzYTTt0dZ7FBw5kzqgdJG/PvibL3xkvLg5tKNvkQJMI0CBx2
	UnQYz6RvuEKIiavrWwby7nyk1SaLgNnx/ZFQwnrEOqNulKrPv/To7cCL3m2Khw==
From: "Dragan Simic" <dsimic@manjaro.org>
In-Reply-To: <20251111172003.2324525-2-michael.opdenacker@rootcommit.com>
Content-Type: text/plain; charset="utf-8"
References: <20251111172003.2324525-1-michael.opdenacker@rootcommit.com> <20251111172003.2324525-2-michael.opdenacker@rootcommit.com>
Date: Fri, 14 Nov 2025 03:00:54 +0100
Cc: "Rob Herring" <robh@kernel.org>, "Krzysztof Kozlowski" <krzk+dt@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>, "Heiko Stuebner" <heiko@sntech.de>, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
To: michael.opdenacker@rootcommit.com
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Message-ID: <e8235ec5-d857-1a0a-7108-3c2b8a5dbed9@manjaro.org>
Subject: =?utf-8?q?Re=3A?= [PATCH 1/2] =?utf-8?q?dt-bindings=3A?==?utf-8?q?_arm=3A?=
 =?utf-8?q?_rockchip=3A?= Asus Tinkerboard 3 and 3S
User-Agent: SOGoMail 5.12.3
Content-Transfer-Encoding: quoted-printable
X-Last-TLS-Session-Version: None

Hello Michael,

Thanks for this patch!  Please, see some comments below.

On Tuesday, November 11, 2025 18:20 CET, michael.opdenacker@rootcommit.=
com wrote:
> From: Michael Opdenacker <michael.opdenacker@rootcommit.com>
>=20
> Document the compatible strings for Asus Tinkerboard 3 [1] and 3S [2]=
,
> which are SBCs based on the Rockchip 3566 SoC.

For consistency, this should be s/Tinkerboard/Tinker Board/.

> The "3S" version ("S" for "storage") just adds a 16 GB eMMC
> and a "mask ROM" DIP switch to the "3" version.
>=20
> Link: https://tinker-board.asus.com/series/tinker-board-3.html [1]
> Link: https://tinker-board.asus.com/series/tinker-board-3s.html [2]

These two lines should read like this, to serve as references, with
an empty line afterwards, of course:

  [1] https://tinker-board.asus.com/series/tinker-board-3.html
  [2] https://tinker-board.asus.com/series/tinker-board-3s.html

> Signed-off-by: Michael Opdenacker <michael.opdenacker@rootcommit.com>
> ---
>  Documentation/devicetree/bindings/arm/rockchip.yaml | 11 +++++++++++
>  1 file changed, 11 insertions(+)
>=20
> diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Do=
cumentation/devicetree/bindings/arm/rockchip.yaml
> index 6aceaa8acbb2..451597a6cffb 100644
> --- a/Documentation/devicetree/bindings/arm/rockchip.yaml
> +++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
> @@ -86,6 +86,17 @@ properties:
>            - const: asus,rk3288-tinker-s
>            - const: rockchip,rk3288
> =20
> +      - description: Asus Tinker board 3

This should be s/Tinker board/Tinker Board/, because it's actually
a proper noun/name.

> +        items:
> +          - const: asus,rk3566-tinker-3
> +          - const: rockchip,rk3566
> +
> +      - description: Asus Tinker board 3S

The same as above.

> +        items:
> +          - const: asus,rk3566-tinker-3s
> +          - const: asus,rk3566-tinker-3
> +          - const: rockchip,rk3566
> +
>        - description: Beelink A1
>          items:
>            - const: azw,beelink-a1


