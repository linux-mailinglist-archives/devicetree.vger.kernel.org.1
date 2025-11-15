Return-Path: <devicetree+bounces-238923-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id D87EEC5FC76
	for <lists+devicetree@lfdr.de>; Sat, 15 Nov 2025 01:55:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id A367B4EBACD
	for <lists+devicetree@lfdr.de>; Sat, 15 Nov 2025 00:53:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4A4E117C220;
	Sat, 15 Nov 2025 00:53:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b="j7pniwSX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail1.manjaro.org (mail1.manjaro.org [142.132.176.110])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A54E4A21;
	Sat, 15 Nov 2025 00:53:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.176.110
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763168004; cv=none; b=U60Pk3mLOY5GcMPFstXo4ThtT+eGshjkgeg5WeYmG0Orto+mYZPnnhtwpfCicTC1xWZLkpcFdK4ohYSIi9lqK9DYDnXFNaJCTT4DF82IJCtJZ6aacF6Y2YA1Beq8SqHkxvIKeIe3nwYcD2axvZseqM0CDdtmJIJrjjSo8xowCNo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763168004; c=relaxed/simple;
	bh=+7D4sdt2lDy9PSQIs9ayqJ+DcknK+Esru/4HkDRh7g0=;
	h=From:Content-Type:Date:Cc:To:MIME-Version:Message-ID:Subject; b=cpptemibbVRYZOyMPNnjZyNJxbtQ9YszL4ylvmqbuO0RvjMIwkPXMpToXu9DHTA2JoEUeEJ3baKBwEMtUdsewuKffSEwt6MgNdUSZ++xEXmoHo19RNXqJnIYFwS0pZVZzJczmI5rnXJ4IMzE1XlDCnOR53xzuhrOpLi4SIWGx0g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org; spf=pass smtp.mailfrom=manjaro.org; dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b=j7pniwSX; arc=none smtp.client-ip=142.132.176.110
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=manjaro.org
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPA id B458140CFC;
	Sat, 15 Nov 2025 01:53:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=dkim;
	t=1763168000; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding; bh=pTTod1rI5CQ232hgj1u76/djAv0gQLeHyDWpYjiwYwQ=;
	b=j7pniwSXR9lWzrkFPcwtfogT3myBfqLs8ynj6vtBu4Kd1BqmyzzR7oK+zIfpaUwoHlriXI
	mPLUQHqNQWLolAVph5bkDqnkLDusZ5vdu1tBdv3+6NNloQZcsm15sSOXXrSIa0yLtFNyu7
	N3RHOkgf7onfhsApLSMDCloBbvcUFmjqqWf8vlZn+BLNJhIJWNjMMqsnKnBt/fAWk9C8DR
	Kw1la4bjOmcutP9FH4wwT9ETrXGGkarhRxGEmSw6F9TIMeGev02FbtVOb19Ad7QyPxY6Ms
	OxLsaungRSe3sdBvuegxvw+dleDe24MzISvMJUs6Sraqeq3SAb3X0USVTph3Iw==
From: "Dragan Simic" <dsimic@manjaro.org>
Content-Type: text/plain; charset="utf-8"
Date: Sat, 15 Nov 2025 01:53:19 +0100
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, heiko@sntech.de, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
To: michael.opdenacker@rootcommit.com
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Message-ID: <12d6e151-dfa0-ca0a-5888-ddffb2dbdec7@manjaro.org>
Subject: =?utf-8?q?Re=3A?= [PATCH v2 2/2] =?utf-8?q?arm64=3A?==?utf-8?q?_dts=3A?=
 =?utf-8?q?_rockchip=3A?= Add Asus Tinker Board 3 and 3S device tree
User-Agent: SOGoMail 5.12.3
Content-Transfer-Encoding: quoted-printable
X-Last-TLS-Session-Version: None

Hello Michael,

Thanks for the v2!  Please, see one nitpick below.

On Friday, November 14, 2025 16:46 CET, michael.opdenacker@rootcommit.c=
om wrote:
> From: Michael Opdenacker <michael.opdenacker@rootcommit.com>

I'm sorry for not mentioning it in my earlier responses, but this
line is redundant, because it duplicates the From value found in
the actual email message.

> Add initial device tree support for Asus Tinker Board 3 [1] and 3S [2=
],
> which are SBCs based on the Rockchip 3566 SoC.
>=20
> The "3S" version ("S" for "storage") just adds a 16 GB eMMC
> and a "mask ROM" DIP switch (to mask the eMMC and enter "Mask ROM"
> mode for recovery) to the "3" version.
>=20
> This adds support for:
> - Debug UART (/dev/ttyS2)
> - SD card (/dev/mmcblk1)
> - eMMC (/dev/mmcblk0, only on Tinker Board 3S)
> - I2C:
>   - i2c0 (internal bus with a PMIC and regulators)
>   - i2c2 (internal bus with an at24 eeprom and an RTC device)
> - USB 2.0 ports
> - 2 GPIO LEDS
>=20
> [1] https://tinker-board.asus.com/series/tinker-board-3.html
> [2] https://tinker-board.asus.com/series/tinker-board-3s.html
>=20
> Signed-off-by: Michael Opdenacker <michael.opdenacker@rootcommit.com>
> ---
>  arch/arm64/boot/dts/rockchip/Makefile         |   2 +
>  .../dts/rockchip/rk3566-tinker-board-3.dts    |  14 +
>  .../dts/rockchip/rk3566-tinker-board-3.dtsi   | 280 ++++++++++++++++=
++
>  .../dts/rockchip/rk3566-tinker-board-3s.dts   |  30 ++
>  4 files changed, 326 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-tinker-board-=
3.dts
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-tinker-board-=
3.dtsi
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-tinker-board-=
3s.dts

[snip]



