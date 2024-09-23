Return-Path: <devicetree+bounces-104646-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E189983A0C
	for <lists+devicetree@lfdr.de>; Tue, 24 Sep 2024 01:10:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DFF7228323A
	for <lists+devicetree@lfdr.de>; Mon, 23 Sep 2024 23:02:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BB4C01272A6;
	Mon, 23 Sep 2024 23:02:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=alliedtelesis.co.nz header.i=@alliedtelesis.co.nz header.b="k2xTNCz1"
X-Original-To: devicetree@vger.kernel.org
Received: from gate2.alliedtelesis.co.nz (gate2.alliedtelesis.co.nz [202.36.163.20])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB19C49631
	for <devicetree@vger.kernel.org>; Mon, 23 Sep 2024 23:02:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=202.36.163.20
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727132559; cv=none; b=D/aooRe/ByERYf+VZyeeL5OV/kt4OchWszWUaSx9LPNxz403cHGlGmS9w7IU4G9TI0eqL0e7Xl/g+kpn2nw1cV22toRQeJlry+i7dyA6xGle/fxSK+9GIQ0Lkyr4eF8FwhP9FxnqEly6sQzD53atmYK4o7j7QpBGBTMj1HCx10s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727132559; c=relaxed/simple;
	bh=EtvZ2/FIj91BtqNsPW+BbUSCeSfD1EK6dXE+ctUGpTA=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=h2gjmbeJS/GQ3o8d542r57dOR62RrR/fe68YayenDwp08+z1VcridcnWPoQBCpRzZ7rZUjxH41Sqz42sPrtNuiKftm6OnMtRHR7uUdl+22yHWsbT/IbRdCj+9JnWAAAwvq7O4zS9DRL1VxhmZHVbW/fptRdPbwmvbEsgr4xIGsY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=alliedtelesis.co.nz; spf=pass smtp.mailfrom=alliedtelesis.co.nz; dkim=pass (2048-bit key) header.d=alliedtelesis.co.nz header.i=@alliedtelesis.co.nz header.b=k2xTNCz1; arc=none smtp.client-ip=202.36.163.20
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=alliedtelesis.co.nz
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=alliedtelesis.co.nz
Received: from svr-chch-seg1.atlnz.lc (mmarshal3.atlnz.lc [10.32.18.43])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	by gate2.alliedtelesis.co.nz (Postfix) with ESMTPS id C84BC2C05DB;
	Tue, 24 Sep 2024 11:02:34 +1200 (NZST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alliedtelesis.co.nz;
	s=mail181024; t=1727132554;
	bh=eeB5wlIbYdG9n441CEASGtLws6g9ULvG6TerzZC70FM=;
	h=From:To:Cc:Subject:Date:From;
	b=k2xTNCz1+7L1SzdfwQs6REjV5P4Zitu9VzSf9hFx2OjpZjtocjSE8kilvEvysGZWS
	 vZNXlZ59/cVbRyAuMpM/sC08t9ehbuq+h7j1w6GaszTOrSHaHKwgR475nxVKFkG4qf
	 pdSoIXkIG13+i6apiCCXo2qxOkeE/mDWd+I6RlaoBwCBxX2jdrYsXUqW3dJsuHGh6h
	 5yIrZb+h/AI33WTOqy+bBCJlfg3ruXFAMXVcACPpS3/VX3dunSyyTozgmPAeTQAzLy
	 rEWE8ANFXTiejUOiSCmmTxVQUbAGOGxgbYm977JRAPI8CJ7QmIcR4/IJ619+MLODeQ
	 9Z/79Vdhyy5Cg==
Received: from pat.atlnz.lc (Not Verified[10.32.16.33]) by svr-chch-seg1.atlnz.lc with Trustwave SEG (v8,2,6,11305)
	id <B66f1f38a0000>; Tue, 24 Sep 2024 11:02:34 +1200
Received: from chrisp-dl.ws.atlnz.lc (chrisp-dl.ws.atlnz.lc [10.33.22.30])
	by pat.atlnz.lc (Postfix) with ESMTP id 93C8C13EE36;
	Tue, 24 Sep 2024 11:02:34 +1200 (NZST)
Received: by chrisp-dl.ws.atlnz.lc (Postfix, from userid 1030)
	id 8DBCF280A3C; Tue, 24 Sep 2024 11:02:34 +1200 (NZST)
From: Chris Packham <chris.packham@alliedtelesis.co.nz>
To: andi.shyti@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	tsbogend@alpha.franken.de
Cc: linux-i2c@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-mips@vger.kernel.org,
	Chris Packham <chris.packham@alliedtelesis.co.nz>
Subject: [PATCH v3 0/3] i2c: RTL9300 support
Date: Tue, 24 Sep 2024 11:02:27 +1200
Message-ID: <20240923230230.3001657-1-chris.packham@alliedtelesis.co.nz>
X-Mailer: git-send-email 2.46.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-SEG-SpamProfiler-Analysis: v=2.4 cv=Id0kWnqa c=1 sm=1 tr=0 ts=66f1f38a a=KLBiSEs5mFS1a/PbTCJxuA==:117 a=EaEq8P2WXUwA:10 a=VwQbUJbxAAAA:8 a=NLm23PoBcGNys7Jou4AA:9 a=3ZKOabzyN94A:10
X-SEG-SpamProfiler-Score: 0
x-atlnz-ls: pat

This builds on top of my in-flight series that adds the syscon node for t=
he
switch block[1]. The I2C controllers are part of that block of registers.=
 The
controller driver is adapted from openwrt. From v2 of this series I've ta=
ken
the approach suggested by Rob and represented the SDA lines as child node=
s. I
expect there will be a bit of discussion around the naming of the control=
ler
nodes (in the Realtek documentation they are referred to as I2C_MST1 and
I2C_MST2).

[1] - https://lore.kernel.org/lkml/20240923225719.2999821-1-chris.packham=
@alliedtelesis.co.nz/

--
2.46.1

Chris Packham (3):
  dt-bindings: i2c: Add RTL9300 I2C controller
  i2c: Add driver for the RTL9300 I2C controller
  mips: dts: realtek: Add I2C controllers

 .../bindings/i2c/realtek,rtl9300-i2c.yaml     |  80 ++++
 MAINTAINERS                                   |   7 +
 arch/mips/boot/dts/realtek/rtl930x.dtsi       |  18 +
 drivers/i2c/busses/Kconfig                    |  10 +
 drivers/i2c/busses/Makefile                   |   1 +
 drivers/i2c/busses/i2c-rtl9300.c              | 421 ++++++++++++++++++
 6 files changed, 537 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/i2c/realtek,rtl9300=
-i2c.yaml
 create mode 100644 drivers/i2c/busses/i2c-rtl9300.c

--=20
2.46.1


