Return-Path: <devicetree+bounces-208097-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CAE2B3190B
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 15:16:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 74FB6A03783
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 13:11:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B4E1C2FD1BE;
	Fri, 22 Aug 2025 13:11:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="PC3Si3dL"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-02.galae.net (smtpout-02.galae.net [185.246.84.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F4362FD7AA
	for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 13:11:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.246.84.56
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755868296; cv=none; b=IfAxdAbFoy8XVBJetcDkkOIpp5D2m6BTBECBp4oyBisJ+4TQB56l4l/yQ9BXQCikqh8JdOFDtK32PJG1Q1BqfZ8Oh4xTdsbN277LZIlhiKqsbLDNOKK1/YKAQYbSKcgNPIn3UY0iYChreZAMXGBv9QeHkKrBcfFCqnp+3X7SvUY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755868296; c=relaxed/simple;
	bh=JJF+a5fQ86AE00MztsykhjvHTWdeKpLGVhBGUioLYrU=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=jCSaHG8zkMEeXPi8dFfqmNs4efC9Dhp7TOHiPQY1h1tuPn7xuorWTnq//9LFO6ePnzt4vOr3VSAkC79UZzSpXxjSfoKRJ4dqjsk5J/0psqH6nm4qchlPrT4bpJAwvorTEvBqMp4TPdhsVdun/tBQNui2tQoFXtT/D5Zrqzfu7Xo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=PC3Si3dL; arc=none smtp.client-ip=185.246.84.56
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-02.galae.net (Postfix) with ESMTPS id 1183F1A0D24;
	Fri, 22 Aug 2025 13:11:33 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id CADDA604AD;
	Fri, 22 Aug 2025 13:11:32 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 65ED51C22A1CE;
	Fri, 22 Aug 2025 15:11:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1755868291; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=+TB1L+FQUyzl0MZXwgPCTGStPNNRpx5XfsGy8ZsCSSo=;
	b=PC3Si3dL073tGT7/St5ggmnQp5llUhCaOW88SWlw/wJdhJK0qLNY3/bfS3+VOR63HOCzw6
	ZTfzYrzxkZV2ekIAovNo0pwhw6oHhsqzyRFSq5iLv/TuJO2I47JXntjDUZ4Onmw11r1dTw
	a5/fp10LoYpW+SLzGb40Qx0TrK2gjNIqfZf149Ec4SpwA9OBvKQpwbfTwZ4mXcR8kkFOU9
	3+E0HoDcAZZYVI5MS6YRCH64k/zyiQZd4w8quC8xy4VWvyFYZG8XQWjVb/AYe8+xigGbwE
	oxC2CovGbpXqY2x+6iaVBsOhleAS45dqt9yta+uiE+atcB694BA+4esUs6+dYw==
From: Gregory CLEMENT <gregory.clement@bootlin.com>
To: "Russell King (Oracle)" <rmk+kernel@armlinux.org.uk>, Frank Wunderlich
 <frank-w@public-files.de>
Cc: Andrew Lunn <andrew@lunn.ch>, Conor Dooley <conor+dt@kernel.org>,
 devicetree@vger.kernel.org, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org, Rob Herring <robh@kernel.org>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Subject: Re: [PATCH v2] ARM64: dts: mcbin: fix SATA ports on Macchiatobin
In-Reply-To: <E1up9Jw-00BbOE-VC@rmk-PC.armlinux.org.uk>
References: <E1up9Jw-00BbOE-VC@rmk-PC.armlinux.org.uk>
Date: Fri, 22 Aug 2025 15:11:26 +0200
Message-ID: <87sehj5wn5.fsf@BLaptop.bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Last-TLS-Session-Version: TLSv1.3

"Russell King (Oracle)" <rmk+kernel@armlinux.org.uk> writes:

> Booting 6.16 on the Macchiatobin, I discover that I can no longer
> access my disks, and thus the userspace boot fails. The cause appears
> to be that one of the SATA controllers doesn't have any ports:
>
> [    1.190312] ahci f4540000.sata: supply ahci not found, using dummy reg=
ulator
> [    1.196255] ahci f4540000.sata: supply phy not found, using dummy regu=
lator
> [    1.202026] ahci f4540000.sata: No port enabled
>
> This is as a result of the blamed commit below which added a default
> disabled status to the .dtsi, but didn't properly update the mcbin
> dtsi file. Fix this regression.
>
> Fixes: 30023876aef4 ("arm64: dts: marvell: only enable complete sata node=
s")
> Signed-off-by: Russell King (Oracle) <rmk+kernel@armlinux.org.uk>

Applied on mvebu/fixes

Thanks,

Gregory

> ---
>  arch/arm64/boot/dts/marvell/armada-8040-mcbin.dtsi | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/marvell/armada-8040-mcbin.dtsi b/arch/ar=
m64/boot/dts/marvell/armada-8040-mcbin.dtsi
> index 6170ca8f908f..8c7db2e87e30 100644
> --- a/arch/arm64/boot/dts/marvell/armada-8040-mcbin.dtsi
> +++ b/arch/arm64/boot/dts/marvell/armada-8040-mcbin.dtsi
> @@ -388,11 +388,13 @@ &cp1_sata0 {
>  	/* CPS Lane 1 - U32 */
>  	sata-port@0 {
>  		phys =3D <&cp1_comphy1 0>;
> +		status =3D "okay";
>  	};
>=20=20
>  	/* CPS Lane 3 - U31 */
>  	sata-port@1 {
>  		phys =3D <&cp1_comphy3 1>;
> +		status =3D "okay";
>  	};
>  };
>=20=20
> --=20
> 2.30.2
>

--=20
Gr=C3=A9gory CLEMENT, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

