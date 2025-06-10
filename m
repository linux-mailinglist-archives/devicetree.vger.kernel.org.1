Return-Path: <devicetree+bounces-184223-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C6EB9AD34B3
	for <lists+devicetree@lfdr.de>; Tue, 10 Jun 2025 13:15:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8A37A162C8F
	for <lists+devicetree@lfdr.de>; Tue, 10 Jun 2025 11:15:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 19718221279;
	Tue, 10 Jun 2025 11:15:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="tsBVOirO"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C2CA18CBFC
	for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 11:15:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749554132; cv=none; b=Y7pMC10XVJwLUtLxCWEUIJu1GV81HmmtZt9Knr7R/ELmsu6cgYBy2q+r+KNe5FPznyhFgAF58EZRu/3aaRQJJMMGaoHCHfEy0HTEJrM/pwlMGoW1zo24yDwxHOrKq7y8H3vNzRIFeuJ+xY2UFPAyRzRTe6d67eoDzzZo96eM6Tc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749554132; c=relaxed/simple;
	bh=pMn2nRk8RWXxNh93pibIwonhn/a2Vk+Qm8FPNIWwaWk=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=XcuGyYXKbYNUKMbBjXI5VwTS9d2JWk19e88vqVa0PLljReJFcGk8tq+AU8NhkpYsAdRm4wrWLqHE+d8vViXcWjM4oeno7DvASUTk/H+0Sdkn4MNfRaoqHsZuy6MwaQ261y43uDJqM9LUrewatMjfb1rTzNih3Njtjt/MeNTjNmk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=tsBVOirO; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID;
	bh=/85cBozlC2xgCBTAbhplu80kMsNDggD57qUAZNnBQxI=; b=tsBVOirOAvOm71dK34kUlVeUNi
	ouTxpOtMJtNNtzjjiUEZWob1gPEsFEEPEOqcSoM3KdScCZBo/7t+WyOcGCd2XMRbdY1ROI9/wzWBN
	IrOADU6laOx8+wUXbBcCZD80AN35RejZHuXm2s/ozUkfql+al0+JYH7sPfNgaSxItrTm9KzOOKEm4
	cxB7A8agEwhqAIL5dAPt3k6iOEIV0pRtKFkGYxnS+cZ2yFOIFZ8MA2LMf9wjET5/DDQMl7o4h0dFz
	hIkIEhaE7GXDXV6L4a/19zTHLwBBvfxmudLReOsyXQEYiMdIrYadRoijTI4tS1XIDp+pgYdMNw/xf
	6pdcmNtA==;
Received: from i53875b1c.versanet.de ([83.135.91.28] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uOwwq-0000iK-Fz; Tue, 10 Jun 2025 13:15:20 +0200
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Peter Robinson <pbrobinson@gmail.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, Peter Geis <pgwipeout@gmail.com>,
 Krzysztof Kozlowski <krzk@kernel.org>
Subject:
 Re: [PATCH 2/2] arm64: dts: rockchip: add overlay for RockPro64 screen
Date: Tue, 10 Jun 2025 13:15:19 +0200
Message-ID: <7187768.GXAFRqVoOG@diego>
In-Reply-To: <78773d27-d815-4fac-a131-275bde51788d@kernel.org>
References:
 <20250518215944.178582-1-pbrobinson@gmail.com>
 <62276efe-13ca-448c-ad1d-ec0a8657737f@kernel.org>
 <78773d27-d815-4fac-a131-275bde51788d@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"

Am Dienstag, 10. Juni 2025, 12:48:50 Mitteleurop=C3=A4ische Sommerzeit schr=
ieb Krzysztof Kozlowski:
> On 10/06/2025 12:44, Krzysztof Kozlowski wrote:
> > On 18/05/2025 23:59, Peter Robinson wrote:
> >> The Pine64 touch panel is a panel consisting of the Feiyang fy07024di2=
6a30d
> >> panel with a Goodix gt911 touch screen. Add a device tree overlay to
> >> allow the display to be easily used on the device.
> >>
> >> This was previously included in the main device tree but left disabled
> >> by default which still required rebuilding the DT to use the device, n=
ow
> >> overlays can go upstream the overlay is the best way to handle the
> >> add on devices.
> >>
> >> Signed-off-by: Peter Robinson <pbrobinson@gmail.com>
> >> ---
> >>  arch/arm64/boot/dts/rockchip/Makefile         |  9 ++
> >>  .../dts/rockchip/rk3399-rockpro64-screen.dtso | 89 +++++++++++++++++++
> >>  2 files changed, 98 insertions(+)
> >>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3399-rockpro64-scre=
en.dtso
> >>
> >> diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/d=
ts/rockchip/Makefile
> >> index 3e8771ef69ba1..c7b13bff3ac20 100644
> >> --- a/arch/arm64/boot/dts/rockchip/Makefile
> >> +++ b/arch/arm64/boot/dts/rockchip/Makefile
> >> @@ -77,6 +77,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3399-rock-pi-4c.d=
tb
> >>  dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3399-rock960.dtb
> >>  dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3399-rockpro64-v2.dtb
> >>  dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3399-rockpro64.dtb
> >> +dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3399-rockpro64-screen.dtso
> >=20
> >=20
> > This was absolutely never built as reported by Naresh. You should never
> > sent patches which are at least built tested... although they should be
> > actually tested as well, but if code does not build actual testing is
> > impossible.
>=20
> Huh, I was wrong - this actually builds, just cannot execute install targ=
et.

I did build it as well after applying - but still managed to overlook the d=
tso vs. dtbo
But I'm surprised that still built yesterday

I'll amend the commit for the dtso -> dtbo change.


Heiko



