Return-Path: <devicetree+bounces-93775-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A81069524FB
	for <lists+devicetree@lfdr.de>; Wed, 14 Aug 2024 23:53:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 63A3F283B93
	for <lists+devicetree@lfdr.de>; Wed, 14 Aug 2024 21:53:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3B0BF1C7B9F;
	Wed, 14 Aug 2024 21:53:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="niQyKgx7"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A0507346D
	for <devicetree@vger.kernel.org>; Wed, 14 Aug 2024 21:53:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723672405; cv=none; b=mN2V/axgeXLJGLpsrIpIxnHUeXXDEE19BPs4e0ZEQZhOJVF5pGSONUgr53f3pJt6qZ9WQnRkCzCI4QI85IzMff3dee6KtTdDOWQpOVeiKwp9j8nfrn0aAfpD6XsonjXZIFhElmE41ArtYFkWSG3ks0FtJOrU8RTa6GPWZucQlRE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723672405; c=relaxed/simple;
	bh=DSs96YkR8o6jNA+MUIQjDdKtlg4UkjZnjM3inZe2oBc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=Q5cpidiNXNgSv6lxXAUJwUOOy8Uu7Hv4YqLmzm3U1zPwGsMHif28yDPYB9xCz2ZT3bCJqhpu53Ve38z7gf8J7hgPUdJ8qmZRRF/HwFQJVUfUu44GIs7+QAkdFac7FXXUHvQbcDn6e2DjSEPHRDMTHyF5FPSe/a23mzqqjRhbJ1o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=niQyKgx7; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=hCElnUP5OM4oZWFtkQ09mnjhrNyXiNJ1Et4ltpy9AKI=; b=niQyKgx7qSIgChRUhrA1B2Vt6J
	6tX+AXD4NXTc337XVeUk64/Dlo4IA2jyt8XK3zzwxalcmMCb66f4y29zMvunNULB8LAYlkHiPyc1G
	3XCRDZ7Gk6+82mIeB2uTPByHRD8iej0eJD4VHLfMuym3QUtnmKYvT4hUTDU0AA+3LZ5anItNnoQ6r
	VXgpwLl7wf/EAj7pAvSiaKFpp7Uia919PARZ37GdJ7YHoUe5tV//AZlrI24HldxUxg0gwaD8SKtIX
	ducdtRd5hK6MjLT4IS9jzsIuxlXFx1PtSQC1V/Zszf2jL7PHe38PoV4I2VjYyMo+Kb4s4TfkWMZrF
	FJyraslw==;
Received: from i53875a9f.versanet.de ([83.135.90.159] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1seLve-0000iu-NN; Wed, 14 Aug 2024 23:53:14 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject:
 Re: [PATCH v4 1/2] dt-bindings: arm: rockchip: add support for Radxa ROCK Pi
 E v3.0
Date: Wed, 14 Aug 2024 23:53:13 +0200
Message-ID: <3456551.yMk1gmxOD6@diego>
In-Reply-To: <4F2DC0BFBC9A7038+cd76538a-6a56-44a1-9ae6-f81e9088ff48@radxa.com>
References:
 <20240814095727.1662908-1-naoki@radxa.com> <9908246.lRi8OiJO2u@diego>
 <4F2DC0BFBC9A7038+cd76538a-6a56-44a1-9ae6-f81e9088ff48@radxa.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

Am Mittwoch, 14. August 2024, 22:04:51 CEST schrieb FUKAUMI Naoki:
> Hi,
>=20
> thanks for the review!
>=20
> On 8/14/24 20:30, Heiko St=FCbner wrote:
> > Am Mittwoch, 14. August 2024, 11:57:26 CEST schrieb FUKAUMI Naoki:
> >> Radxa ROCK Pi E v3.0 is a compact networking SBC[1] using the Rockchip
> >> RK3328 chip.
> >>
> >> [1] https://radxa.com/products/rockpi/pie
> >>
> >> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
> >> ---
> >> Changes in v4:
> >> - update compatible string for OpenWrt
> >> - drop A-b tag
> >> Changes in v3:
> >> - collect A-b tag
> >> Changes in v2:
> >> - fix typo in commit message
> >> - add missing --- in commit message
> >> - add new section instead of new item in rockchip.yaml
> >> ---
> >>   Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
> >>   1 file changed, 5 insertions(+)
> >>
> >> diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Doc=
umentation/devicetree/bindings/arm/rockchip.yaml
> >> index 2ad835f4068e..1d426d4e1928 100644
> >> --- a/Documentation/devicetree/bindings/arm/rockchip.yaml
> >> +++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
> >> @@ -790,6 +790,11 @@ properties:
> >>             - const: radxa,rockpi-e
> >>             - const: rockchip,rk3328
> >>  =20
> >> +      - description: Radxa ROCK Pi E v3.0
> >> +        items:
> >> +          - const: radxa,rock-pi-e-v3
> >> +          - const: rockchip,rk3328
> >> +
> >=20
> > Please don't add a separate entry for the simple updated version.
> > Instead group it with the original Rock Pi e above.
> >=20
> > For how to do it, look at the Radxa Zero 3w/3e .
>=20
> https://patchwork.kernel.org/project/linux-rockchip/patch/20240711210526.=
40448-1-naoki@radxa.com/
>=20
> is this right way?

Nope. You need an enum. That's the reason I pointed to the Radxa Zero as
an example [0]

So your entry should look something like:

       - description: Radxa ROCK Pi E
        items:
          - enum:
              - radxa,rockpi-e
              - radxa,rockpi-e-v3
          - const: rockchip,rk3328


that way the binding matches against both:
	compatible =3D "radxa,rockpi-e", "rockchip,rk3328"
as well as
	compatible =3D "radxa,rockpi-e-v3", "rockchip,rk3328"


Hope that helps a bit
Heiko


[0] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree=
/Documentation/devicetree/bindings/arm/rockchip.yaml#n844



