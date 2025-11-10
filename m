Return-Path: <devicetree+bounces-236503-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 90CFDC44F74
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 06:12:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 0CBD24E15AB
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 05:12:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EBFE7243376;
	Mon, 10 Nov 2025 05:12:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b="yKPXgGLl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail1.manjaro.org (mail1.manjaro.org [142.132.176.110])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D5881F5847
	for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 05:12:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.176.110
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762751565; cv=none; b=SkxVKLALVaE86mAyb6GYAmBYF5jT6jwMgTvnEJoSFGVsbbaxXM/OFqeZuAhuUGG4wYakiCEH7UdBdoL47r9cZ9JUQRyI8kAtBI7g/IardTtho9PezYaKYWS8cRyoww5kkIjH13eqen6XQYW1eXYYdTbv2CQs5MWztBHNAQ9orNU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762751565; c=relaxed/simple;
	bh=qcnlOwuB2V+AnI38xtOYcnoXiVW8Z2mX+faOqjd0L4E=;
	h=From:In-Reply-To:Content-Type:References:Date:Cc:To:MIME-Version:
	 Message-ID:Subject; b=ki9B+VQmW039wtZa2vIGKPs5J/sQRcO6q4RZLbYvyXVoLjcHuEqTNFJzCbNThQ+dyirG6rgIejEd99BoIioCN1NQjtbtNe0EnUNmHjmJ/6Do+9CEXRCue9UpZDCPXjryPRppwZJgLpIJ7EN/QqkcEnhYv1oeI6d/1SPPzSyHrps=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org; spf=pass smtp.mailfrom=manjaro.org; dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b=yKPXgGLl; arc=none smtp.client-ip=142.132.176.110
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=manjaro.org
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPA id D9C7A40ED0;
	Mon, 10 Nov 2025 06:12:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=dkim;
	t=1762751560; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=+cC4go0i+GZT4Rc+DfBwiJjjNODEGM8Ek5O4OECV4s4=;
	b=yKPXgGLlbi9l3Jpsq56JfFwR9pkUr+CwgkbzTXL8jXmGtbYXTmiPGzX+8VbPZ6wkuCaeds
	7pRMM/g6TghJhy/9FLgGq0XhntHoEbIGyFNF1CrC4XtfA9fkext9HQGGE4oB9jlQBIPoov
	n50IPhL5RuGqRSoiWOAGyU6pp6J14iDUbEfepN02EIzh57FRsdsrbCAjOLDdtwBHONKlYU
	v61AJeSp7FqypDn8nGi7iqNbLOH09cyrJyMsySBVQ9Ki5eCNMQ94gmLIi84A8Oc12oZi9g
	Uhl7CD1CvouCDGyUgMtJtR4JfXsc2IZqy8eXQD70BEBZZBwpMgSH9h5pHatWwg==
From: "Dragan Simic" <dsimic@manjaro.org>
In-Reply-To: <20251110035455.839863-1-naoki@radxa.com>
Content-Type: text/plain; charset="utf-8"
References: <20251110035455.839863-1-naoki@radxa.com>
Date: Mon, 10 Nov 2025 06:12:31 +0100
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, jbx6244@gmail.com, pbrobinson@gmail.com, kylepzak@projectinitiative.io, damon.ding@rock-chips.com, sebastian.reichel@collabora.com, amadeus@jmu.edu.cn, devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
To: "FUKAUMI Naoki" <naoki@radxa.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Message-ID: <4a4961af-8648-9c0c-5ddf-82ec156354c1@manjaro.org>
Subject: =?utf-8?q?Re=3A?= [PATCH 1/2] =?utf-8?q?arm64=3A?==?utf-8?q?_dts=3A?=
 =?utf-8?q?_rockchip=3A?= Make eeprom read-only for Radxa ROCK 3C
User-Agent: SOGoMail 5.12.3
Content-Transfer-Encoding: quoted-printable
X-Last-TLS-Session-Version: None

Hello Naoki,

On Monday, November 10, 2025 04:54 CET, FUKAUMI Naoki <naoki@radxa.com>=
 wrote:
> Make EEPROM read-only as it may contain factory-programmed
> board-specific data.
>=20
> Fixes: ee219017ddb50 ("arm64: dts: rockchip: Add Radxa ROCK 3C")
> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
> ---
>  arch/arm64/boot/dts/rockchip/rk3566-rock-3c.dts | 1 +
>  1 file changed, 1 insertion(+)
>=20
> diff --git a/arch/arm64/boot/dts/rockchip/rk3566-rock-3c.dts b/arch/a=
rm64/boot/dts/rockchip/rk3566-rock-3c.dts
> index 6224d72813e59..f92f6374c6255 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3566-rock-3c.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3566-rock-3c.dts
> @@ -466,6 +466,7 @@ eeprom: eeprom@50 {
>  		compatible =3D "belling,bl24c16a", "atmel,24c16";
>  		reg =3D <0x50>;
>  		pagesize =3D <16>;
> +		read-only;
>  	};
>  };

I've checked the board schematic and making this BL24C16 chip
read-only makes sense to me.  However, I think that the patch
description should be expanded to contain a better description
of what might be found in the chip, such as a factory-programmed
MAC address.  Also, providing a link to the board schematic, as
a reference, would be a good idea.

With these remarks addressed in a v2, please feel free to include

Reviewed-by: Dragan Simic <dsimic@manjaro.org>


