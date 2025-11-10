Return-Path: <devicetree+bounces-236537-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id C599FC453C3
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 08:38:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 95DD9188179D
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 07:39:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CE0E82EBB8D;
	Mon, 10 Nov 2025 07:38:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b="wscAjVSL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail1.manjaro.org (mail1.manjaro.org [142.132.176.110])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 84DD62D73A9
	for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 07:38:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.176.110
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762760336; cv=none; b=O8xmCdJ/D3hgxHGATzbkCNykMxFeYtB2LcXKCC4yWQu2V1kQXNA7DdvkporRlLWKZuivfD1gfKfq9yr0q9XTIrFYE9y4TPZ6cPO5/gtYl4Q/mtN7WpMLn3rGlKdVhwFDhODO+F+N6QiZ/BQJP4fJucX2g3KR88ejtxU+MC1wAUQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762760336; c=relaxed/simple;
	bh=vBgazZsHhZs+ey/ouRWWbeiRZrzgtDEWDfWERy9b4/Y=;
	h=From:In-Reply-To:Content-Type:References:Date:Cc:To:MIME-Version:
	 Message-ID:Subject; b=H+/p/HdSHxNCTsJjCZfnDstllVSC5qAx0ro1iSu7JGV6pgKrCsXo+xEAc/RnW2u0EfQJEZtnwrvcUU9ddkat+o4iYp5VuYCFQnG10hLUlnGXY9C1teuOLndzmbMcdNUQIkXM9ZO1pIxdJUz6HR2J6h9PiiIGeKpi9YP7INt1Rqg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org; spf=pass smtp.mailfrom=manjaro.org; dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b=wscAjVSL; arc=none smtp.client-ip=142.132.176.110
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=manjaro.org
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPA id 81FF940ED0;
	Mon, 10 Nov 2025 08:38:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=dkim;
	t=1762760331; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=97BThzbzJ5g4tsS6IHLfH1gqfVXUwxAiYiBXaKPJD8w=;
	b=wscAjVSLeXmIx5vmNo+icIt215WkJWY7vNPs6aompATz9Ng1y9Tf+VmwJrnmqBu3wSSpz0
	9ziLsgF/X/piYUbwc0tteamYytKjZhyek9uaLxcHmu/QaxgURPvFvIvnHIR+wAIs31Cblu
	Ra6iCVT0Gt/N40agzmU7T/ODi0sIN59sGz8bchNx1vK8OxbB2xGPS2WdscC2lpVmpR653a
	DR4j0pa/zfaMsDpxF0pK+VaMCf3gbE+TlggM8NBlcjizDZKXcP3mG5m4uZwpz9h0sIz+St
	32vvM3ATwfBq2DqqBLLNhbLJ6rLlV8DbYMDoCmkWb9MIARhCdEX2RL0nJ96K3w==
From: "Dragan Simic" <dsimic@manjaro.org>
In-Reply-To: <38861A00B4F4BA62+e3221913-43e5-4335-9aaf-9b9eed5834ac@radxa.com>
Content-Type: text/plain; charset="utf-8"
References: <20251110035455.839863-1-naoki@radxa.com>
 <20251110035455.839863-2-naoki@radxa.com>
 <36843804-433a-5c0c-4961-451b44d70bc4@manjaro.org> <38861A00B4F4BA62+e3221913-43e5-4335-9aaf-9b9eed5834ac@radxa.com>
Date: Mon, 10 Nov 2025 08:38:46 +0100
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, jbx6244@gmail.com, pbrobinson@gmail.com, kylepzak@projectinitiative.io, damon.ding@rock-chips.com, sebastian.reichel@collabora.com, amadeus@jmu.edu.cn, devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
To: "FUKAUMI Naoki" <naoki@radxa.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Message-ID: <65f17890-c052-f303-4731-f882946df1f1@manjaro.org>
Subject: =?utf-8?q?Re=3A?= [PATCH 2/2] =?utf-8?q?arm64=3A?==?utf-8?q?_dts=3A?=
 =?utf-8?q?_rockchip=3A?= Make eeprom read-only for Radxa ROCK 5A
User-Agent: SOGoMail 5.12.3
Content-Transfer-Encoding: quoted-printable
X-Last-TLS-Session-Version: None

On Monday, November 10, 2025 08:05 CET, FUKAUMI Naoki <naoki@radxa.com>=
 wrote:
> On 11/10/25 14:17, Dragan Simic wrote:
> > On Monday, November 10, 2025 04:54 CET, FUKAUMI Naoki <naoki@radxa.=
com> wrote:
> >> Make EEPROM read-only as it may contain factory-programmed
> >> board-specific data.
> >>
> >> Fixes: 89c880808cff8 ("arm64: dts: rockchip: add I2C EEPROM to roc=
k-5a")
> >> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
> >> ---
> >>   arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts | 1 +
> >>   1 file changed, 1 insertion(+)
> >>
> >> diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts b/ar=
ch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
> >> index 19a08f7794e67..ae7b03488c9e7 100644
> >> --- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
> >> +++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
> >> @@ -254,6 +254,7 @@ eeprom: eeprom@50 {
> >>   		compatible =3D "belling,bl24c16a", "atmel,24c16";
> >>   		reg =3D <0x50>;
> >>   		pagesize =3D <16>;
> >> +		read-only;
> >>   	};
> >>   };
> >=20
> > I've checked the board schematic and making this BL24C16 chip
> > read-only makes sense to me.  However, I think that the patch
> > description should be expanded to contain a better description
> > of what might be found in the chip, such as a factory-programmed
> > MAC address.  Also, providing a link to the board schematic, as
> > a reference, would be a good idea.
>=20
> ----
> arm64: dts: rockchip: Make eeprom read-only for Radxa ROCK 3C/5A/5C
>=20
> Make the EEPROM[1][2][3] read-only. Board-specific data written to th=
e=20
> EEPROM at the factory includes, but is not limited to, the SKU (~=20
> product name), BOM version (~ board version), and MAC address.

Thanks for the improvements!  I'd just suggest that the opening
sentence above is rewritten like this:

  Make the BL24C16 EEPROM chips found on Radxa ROCK 3C, 5A and
  5C SBCs [1][2][3] read-only, because they contain factory-
  programmed data that isn't supposed to be modified by the end
  users.

This would also be perfect timing for Radxa to officially release
the layout of the board-specific data that goes into these EPROM
chips, so the data can actually be used.

> [1]=20
> https://dl.radxa.com/rock3/docs/hw/3c/v1400/radxa=5Frock=5F3c=5Fv1400=
=5Fschematic.pdf=20
> p.13
> [2] https://dl.radxa.com/rock5/5a/docs/hw/radxa=5Frock5a=5FV1.1=5Fsch=
.pdf p.19
> [3]=20
> https://dl.radxa.com/rock5/5c/docs/hw/v1100/radxa=5Frock=5F5c=5Fschem=
atic=5Fv1100.pdf=20
> p.18
> ----
>=20
> > With these remarks addressed in a v2, please feel free to include
> >=20
> > Reviewed-by: Dragan Simic <dsimic@manjaro.org>
> >=20
> > Additionally, it would make sense to squash this patch and your
> > other patch that addresses the ROCK 5C together.  They're very
> > similar and having them together in a single commit might actually
> > help the people browsing the repository understand it better.
>=20
> I'll drop eeprom patch from ROCK 5C v7 patch series, and squash eepro=
m=20
> patches for ROCK 3C/5A/5C.

Thanks!


