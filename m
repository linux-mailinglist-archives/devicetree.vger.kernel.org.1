Return-Path: <devicetree+bounces-236505-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F171C44F96
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 06:17:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 358F8188DFFF
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 05:18:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 70FB72D6E70;
	Mon, 10 Nov 2025 05:17:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b="mdfoj30o"
X-Original-To: devicetree@vger.kernel.org
Received: from mail1.manjaro.org (mail1.manjaro.org [142.132.176.110])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E6DA1B0437
	for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 05:17:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.176.110
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762751852; cv=none; b=ZOSMcMp1lxAMpreZR0WQ2BeScEER+V+rIlmttx46YnjOBC9YwQtMs4n2zvgwgR6EWzGkrRXlLBmwe2k4sxYxRO6lUQwjJXeQNK8WtuGer2GZiqTEbwE1ZeGeJLYJz35vMvqbDoMf0GXPhFbtulguc5eNBdYBx3gTvLIynKJ48qM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762751852; c=relaxed/simple;
	bh=0sBv9evGTEIpHDl65/zc7DNZnVueXLlzRGks83dVDUQ=;
	h=From:In-Reply-To:Content-Type:References:Date:Cc:To:MIME-Version:
	 Message-ID:Subject; b=nfj2FsbdjfwVEiz0RWwEs0MJgLNxfv7jqUysVy9LvqmRlfp+G6NZy0oiNbiFPczYyMCzEU8O/nJiiK5zH8zwsxEFzxjHULiVh7Hh4OznhcdetDLiY91o3gwZMFd2MuEEwaKzMJhgWrHglzN8i4gx9IHHCsEWk8bRWvLVahKB1MM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org; spf=pass smtp.mailfrom=manjaro.org; dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b=mdfoj30o; arc=none smtp.client-ip=142.132.176.110
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=manjaro.org
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPA id E55D940ED0;
	Mon, 10 Nov 2025 06:17:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=dkim;
	t=1762751847; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=cPcmnHCET+IM59wp4CqA8GWt4g4p7k4oj5TBdF6fF3w=;
	b=mdfoj30oqTMDyw7oUaRvbxJlgnDpF4EYkuqEUC/1X1Ra6skHOBRquxbzSGChg+npcKfDNB
	18V9qJicX6BLzZs+V0f3a+7fmC/xgO/kGj2xRZr6+CTPtNmKHQ73vgLUOStxUZI87z201J
	804QWUwx1Mm4zl6IBdS80BWp39P/7ILflPO4FtZMLjQcgRjBWDogiFfK3rXy+I4NBfV6+M
	m4QpJDp3PvvVlqE6eN0U7ybUv9MypZTR8GvxbZv5mqoeNag5r9P5kLnlwDVfodDvTxlD7N
	syNEy2dRJruyF9TDIz+s5i4LlHES+6cBCUNwLNkglyqGZ1ci7Qu6bqYu2t052w==
From: "Dragan Simic" <dsimic@manjaro.org>
In-Reply-To: <20251110035455.839863-2-naoki@radxa.com>
Content-Type: text/plain; charset="utf-8"
References: <20251110035455.839863-1-naoki@radxa.com> <20251110035455.839863-2-naoki@radxa.com>
Date: Mon, 10 Nov 2025 06:17:25 +0100
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, jbx6244@gmail.com, pbrobinson@gmail.com, kylepzak@projectinitiative.io, damon.ding@rock-chips.com, sebastian.reichel@collabora.com, amadeus@jmu.edu.cn, devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
To: "FUKAUMI Naoki" <naoki@radxa.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Message-ID: <36843804-433a-5c0c-4961-451b44d70bc4@manjaro.org>
Subject: =?utf-8?q?Re=3A?= [PATCH 2/2] =?utf-8?q?arm64=3A?==?utf-8?q?_dts=3A?=
 =?utf-8?q?_rockchip=3A?= Make eeprom read-only for Radxa ROCK 5A
User-Agent: SOGoMail 5.12.3
Content-Transfer-Encoding: quoted-printable
X-Last-TLS-Session-Version: None

Hello Naoki,

On Monday, November 10, 2025 04:54 CET, FUKAUMI Naoki <naoki@radxa.com>=
 wrote:
> Make EEPROM read-only as it may contain factory-programmed
> board-specific data.
>=20
> Fixes: 89c880808cff8 ("arm64: dts: rockchip: add I2C EEPROM to rock-5=
a")
> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
> ---
>  arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts | 1 +
>  1 file changed, 1 insertion(+)
>=20
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts b/arch/=
arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
> index 19a08f7794e67..ae7b03488c9e7 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
> @@ -254,6 +254,7 @@ eeprom: eeprom@50 {
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

Additionally, it would make sense to squash this patch and your
other patch that addresses the ROCK 5C together.  They're very
similar and having them together in a single commit might actually
help the people browsing the repository understand it better.


