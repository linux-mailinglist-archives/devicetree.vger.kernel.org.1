Return-Path: <devicetree+bounces-236994-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id A964FC4B8D1
	for <lists+devicetree@lfdr.de>; Tue, 11 Nov 2025 06:37:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 5DA7C4E19D6
	for <lists+devicetree@lfdr.de>; Tue, 11 Nov 2025 05:37:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D761D28727F;
	Tue, 11 Nov 2025 05:37:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b="wm+ldcss"
X-Original-To: devicetree@vger.kernel.org
Received: from mail1.manjaro.org (mail1.manjaro.org [142.132.176.110])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34A222848B4
	for <devicetree@vger.kernel.org>; Tue, 11 Nov 2025 05:37:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.176.110
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762839438; cv=none; b=FrxId6Bdh67pWQF3ieR20VPGsI2VKdd0N9fvr1fPYmvGWm4ORv/jmxy77/5QFz9jAJ9oDvUiIuXzISrddH7nJL6P8kbtrvlisyA/WNWX05TREQ7N5A9QEjSvU+7u8tngHvLQD9uM386hNZnTYCDQwW7odfBcjKH+TaPpz2f/Sms=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762839438; c=relaxed/simple;
	bh=BsxjswhIQKnSwenB4R9PEAZkp9HaZDvfVz25YQZ3ajg=;
	h=From:In-Reply-To:Content-Type:References:Date:Cc:To:MIME-Version:
	 Message-ID:Subject; b=B6ws0iux/cmlrtT2pVULfg6GdT+CiuWl8TKkgMcmd95mZKysfwY3yoSIdZVe9w5zUXyxawhHplGt24NiQmxAOupCDBkfc9ZGiifUIH7+vZ5+ijy24fBr/HWBoUAXZHsNQ4XKBDHh+LqOblRVvRItahPgwA756nho8Z9smY7PW08=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org; spf=pass smtp.mailfrom=manjaro.org; dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b=wm+ldcss; arc=none smtp.client-ip=142.132.176.110
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=manjaro.org
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPA id C3525404BB;
	Tue, 11 Nov 2025 06:37:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=dkim;
	t=1762839434; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=qf/MrRR7g4WMSz/OzX2qYEW5Y+Z/pQl4c5xRFA4/jWM=;
	b=wm+ldcssn6BdC3o7VWqTpteTSLg3pUTz+WA1VWPjIjBKwyOcJcUd/6Mte2pDId1CFf3avd
	Z2DUuavT4b6dYUr5d8gEJNyjLzVOsat9JOmES/Ib+Xw+0H0Vbg5k12MHrExsrepjCQXDPk
	kMOCBPX8jHD8OJ9UWN1uP2kALFYtwJdRHomOxpkw5/aCIIM2gWQwM0IHD0/6zYnOrNWK54
	H3YsY2JiNwIQoAvB8Iwn1hlCM9H6cvIB+yfiVTIYC7k0X3BxzoqHj0Vlqi+LdMEbTG65k3
	uVTbdLkJPy5P5Kf6o4oZsyUenRKX9YQ24kAf9TQT82j//6KKVJNPI0aeDDgU0Q==
From: "Dragan Simic" <dsimic@manjaro.org>
In-Reply-To: <20251111050924.54880-4-naoki@radxa.com>
Content-Type: text/plain; charset="utf-8"
References: <20251111050924.54880-1-naoki@radxa.com> <20251111050924.54880-4-naoki@radxa.com>
Date: Tue, 11 Nov 2025 06:37:12 +0100
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, jbx6244@gmail.com, pbrobinson@gmail.com, damon.ding@rock-chips.com, sebastian.reichel@collabora.com, kylepzak@projectinitiative.io, alchark@gmail.com, amadeus@jmu.edu.cn, devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
To: "FUKAUMI Naoki" <naoki@radxa.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Message-ID: <46ca3fd6-4513-0a0a-41b6-8fffae9b3242@manjaro.org>
Subject: =?utf-8?q?Re=3A?= [PATCH 3/4] =?utf-8?q?arm64=3A?==?utf-8?q?_dts=3A?=
 =?utf-8?q?_rockchip=3A?= Add eeprom vcc-supply for Radxa ROCK 3C
User-Agent: SOGoMail 5.12.3
Content-Transfer-Encoding: quoted-printable
X-Last-TLS-Session-Version: None

Hello Naoki,

Thanks for this patch.  Please, see a couple of remarks below.

On Tuesday, November 11, 2025 06:09 CET, FUKAUMI Naoki <naoki@radxa.com=
> wrote:
> The VCC supply for the BL24C16 EEPROM chip found on Radxa ROCK 3C is
> vcca1v8=5Fpmu.

There's no need for a line break here.

> Describe this supply.
>=20
> Fixes: ee219017ddb50 ("arm64: dts: rockchip: Add Radxa ROCK 3C")
> Link: https://dl.radxa.com/rock3/docs/hw/3c/v1400/radxa=5Frock=5F3c=5F=
v1400=5Fschematic.pdf p.13

The same suggestion about using explicitly placed references, from
the patch 1/4 in this series, applies here as well.

> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
> ---
>  arch/arm64/boot/dts/rockchip/rk3566-rock-3c.dts | 1 +
>  1 file changed, 1 insertion(+)
>=20
> diff --git a/arch/arm64/boot/dts/rockchip/rk3566-rock-3c.dts b/arch/a=
rm64/boot/dts/rockchip/rk3566-rock-3c.dts
> index 6224d72813e59..80ac40555e023 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3566-rock-3c.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3566-rock-3c.dts
> @@ -466,6 +466,7 @@ eeprom: eeprom@50 {
>  		compatible =3D "belling,bl24c16a", "atmel,24c16";
>  		reg =3D <0x50>;
>  		pagesize =3D <16>;
> +		vcc-supply =3D <&vcca1v8=5Fpmu>;
>  	};
>  };


