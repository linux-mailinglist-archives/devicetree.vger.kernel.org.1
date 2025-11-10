Return-Path: <devicetree+bounces-236769-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 65A75C47373
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 15:32:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 23EC54EE764
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 14:30:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E518F313E2A;
	Mon, 10 Nov 2025 14:29:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b="oH0TcgFA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail1.manjaro.org (mail1.manjaro.org [142.132.176.110])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63E0B312838
	for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 14:29:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.176.110
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762784965; cv=none; b=TYd7esSuz1Cue+Jtv9TlSnAG/KuTB9aN+llsfzDS56ZFtC09Y2VJkAYmqxGP59R9LJunaP/VQyFIEDUdGcBZha9Sozbfxk41N2MqYl8onvSsiwTEbsGkqxb5dd6F9y23qVHDcNuNxdH1xfXA2A3MSwcpzJNbR19fku3cDAqktzM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762784965; c=relaxed/simple;
	bh=ePItEhdKiNwLJRb9X82g5Tl3hyocoyvMs/hjyKOPm0o=;
	h=From:In-Reply-To:Content-Type:References:Date:Cc:To:MIME-Version:
	 Message-ID:Subject; b=VL5TzkRmJatmZXNWJF6laHwpC2DeWwiwJ2I5tnU5p7FgLzN0Jklmk7pNqMX8SR1PC+97mVdLWY5ZtMFLORDc/kARO8sIQHhWRtMLgaMQNhQCUqCidu0BTfE8Un6LglwPWclKqTdmR6oZ9JICI6woVMgY5cNU3LWm8gvvsr3s8bw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org; spf=pass smtp.mailfrom=manjaro.org; dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b=oH0TcgFA; arc=none smtp.client-ip=142.132.176.110
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=manjaro.org
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPA id 91B0640ECE;
	Mon, 10 Nov 2025 15:29:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=dkim;
	t=1762784960; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=8IJ+GdjgSUS9M7XEGST99otZUUAl1fQhD66tQyW2u/M=;
	b=oH0TcgFApjfrGxk36DlqTitgnrFS9B0uDtTY9l/5GJ40IXcHdTK5Is/YGLc9NWOu8nQwwU
	s7SkmOUCGMdQWPSOfmz84dgsQtbEQ8+uaADlSyeOTsv375OBu1OXvcpbh/MjfpB7EFBBvz
	45lAR68YBO7gJzqzOmZK+ZlPFAqlOgypKcoXow2UDQYcm1l7ksFrVKNIQmfcPHkqZeMFN9
	RrgLVwHhuOD/t7u0ZDvbyfxciF8/9Ve6DcLCTbdysyuCzHVusXTYDUVJVxPxD0rBERSTcw
	XQURLQ7HYRuAXacp6wet9/Yl4qj5CIa6Ov1rTFBNCtSiGUhRt8bW6hbFvPD0PA==
From: "Dragan Simic" <dsimic@manjaro.org>
In-Reply-To: <51135107D357A73A+50c2300d-7cc0-4f0d-99e7-8b67c0e43dff@radxa.com>
Content-Type: text/plain; charset="utf-8"
References: <20251110035455.839863-1-naoki@radxa.com>
 <20251110035455.839863-2-naoki@radxa.com>
 <36843804-433a-5c0c-4961-451b44d70bc4@manjaro.org>
 <38861A00B4F4BA62+e3221913-43e5-4335-9aaf-9b9eed5834ac@radxa.com>
 <65f17890-c052-f303-4731-f882946df1f1@manjaro.org> <51135107D357A73A+50c2300d-7cc0-4f0d-99e7-8b67c0e43dff@radxa.com>
Date: Mon, 10 Nov 2025 15:29:15 +0100
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, jbx6244@gmail.com, pbrobinson@gmail.com, kylepzak@projectinitiative.io, damon.ding@rock-chips.com, sebastian.reichel@collabora.com, amadeus@jmu.edu.cn, devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
To: "FUKAUMI Naoki" <naoki@radxa.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Message-ID: <4135cb30-25f0-b202-765c-7343e38e10ac@manjaro.org>
Subject: =?utf-8?q?Re=3A?= [PATCH 2/2] =?utf-8?q?arm64=3A?==?utf-8?q?_dts=3A?=
 =?utf-8?q?_rockchip=3A?= Make eeprom read-only for Radxa ROCK 5A
User-Agent: SOGoMail 5.12.3
Content-Transfer-Encoding: quoted-printable
X-Last-TLS-Session-Version: None

Hello Naoki,

On Monday, November 10, 2025 09:03 CET, FUKAUMI Naoki <naoki@radxa.com>=
 wrote:
> On 11/10/25 16:38, Dragan Simic wrote:
> > On Monday, November 10, 2025 08:05 CET, FUKAUMI Naoki <naoki@radxa.=
com> wrote:
> >> arm64: dts: rockchip: Make eeprom read-only for Radxa ROCK 3C/5A/5=
C
> >>
> >> Make the EEPROM[1][2][3] read-only. Board-specific data written to=
 the
> >> EEPROM at the factory includes, but is not limited to, the SKU (~
> >> product name), BOM version (~ board version), and MAC address.
> >=20
> > Thanks for the improvements!  I'd just suggest that the opening
> > sentence above is rewritten like this:
> >=20
> >    Make the BL24C16 EEPROM chips found on Radxa ROCK 3C, 5A and
> >    5C SBCs [1][2][3] read-only, because they contain factory-
> >    programmed data that isn't supposed to be modified by the end
> >    users.
> >=20
> > This would also be perfect timing for Radxa to officially release
> > the layout of the board-specific data that goes into these EPROM
> > chips, so the data can actually be used.
>=20
>   https://github.com/radxa/u-boot/blob/next-dev-v2024.10/drivers/misc=
/radxa-i2c-eeprom.c
>=20
> The actual data in the EEPROMs of my boards has some content=20
> inconsistencies with the code descriptions, but the format is=20
> consistent. The SKU, BOM, and MAC mentioned previously should be avai=
lable.

I see, thanks.  I'm wondering could U-Boot's drivers/misc/nvmem.c be
used instead.  It seems like the driver linked above includes quite
a lot of code that's already present elsewhere in U-Boot.


