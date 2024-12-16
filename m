Return-Path: <devicetree+bounces-131213-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EC749F28A7
	for <lists+devicetree@lfdr.de>; Mon, 16 Dec 2024 04:13:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1E319163CED
	for <lists+devicetree@lfdr.de>; Mon, 16 Dec 2024 03:13:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5589C155C82;
	Mon, 16 Dec 2024 03:13:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=alliedtelesis.co.nz header.i=@alliedtelesis.co.nz header.b="z+OsNIwG"
X-Original-To: devicetree@vger.kernel.org
Received: from gate2.alliedtelesis.co.nz (gate2.alliedtelesis.co.nz [202.36.163.20])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 86C0F1531F9
	for <devicetree@vger.kernel.org>; Mon, 16 Dec 2024 03:13:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=202.36.163.20
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734318833; cv=none; b=ar8S3q1fXEPpfYwv1FuA/lu1voMjr+xTIG4zO6otW5EeSdAlrJwFO6hE6/jMKhuamawIRvDkupNKYi4XZ13skiOjmKQFMV1TF3dYIGoSS+naVGX/nzv8ufsCnVFIv6ZqmZP6/5o8ZzZEXhSccJoNZGzH1+DEauDF4aRU3rb8b+A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734318833; c=relaxed/simple;
	bh=FCd107vWOy+zGlJRUr84iUnvQdQf7LF0R7f86jKDBN8=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=Couh/bVdD8TkGqSdXWtHuYu1ehnyC502epebEsXLLBbLMtJBFy3izo/enyDo9NWEWddRs14EVGbwu/9KaKeSnoRKNZ/5AwE/qrVlQ8Budny7l9CGn7/fqeE0PKQWD8S49o2EsMT0Xm5loQqgf8Qxue8yCBaO0uYvwezw8QRppJM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=alliedtelesis.co.nz; spf=pass smtp.mailfrom=alliedtelesis.co.nz; dkim=pass (2048-bit key) header.d=alliedtelesis.co.nz header.i=@alliedtelesis.co.nz header.b=z+OsNIwG; arc=none smtp.client-ip=202.36.163.20
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=alliedtelesis.co.nz
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=alliedtelesis.co.nz
Received: from svr-chch-seg1.atlnz.lc (mmarshal3.atlnz.lc [10.32.18.43])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	by gate2.alliedtelesis.co.nz (Postfix) with ESMTPS id 6547F2C04F5;
	Mon, 16 Dec 2024 16:13:49 +1300 (NZDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alliedtelesis.co.nz;
	s=mail181024; t=1734318829;
	bh=SaoF13OYaWGdqlmCUJlIxQ1BMneVUQITdEw6PirLsCE=;
	h=From:To:Cc:Subject:Date:From;
	b=z+OsNIwGO5rUP/uROI9/OKvO/URyXPwX/+qYyhhGjYWjkLlHC3SBEe50Xzvjpcmwh
	 YDhVJIKhmOdD2Pp4vHVK82bgQUjYGIGOGRXLqDUrSM4WlNqJ6z8/upOvCW+1hyelIZ
	 dT+j7oDv3BpKjZpchupUGmCbOmsUzlZxD8Y7yGp0ij1F5Xb7nqgIuBXMsuEQkNEj4r
	 VR709zoXWQMlIjJTKNShdMyDcfViXXoMc7BIuIEN4ioaNaQ+PyB3RsKnlHHiGm+WNS
	 IOmjorIlZt0PFhUzRyZwat5/p6BT2FmTZYui0Me1ygM7o8fO6kamDOt0wpoq7xl6Ol
	 7xuVuzJ9INSBA==
Received: from pat.atlnz.lc (Not Verified[10.32.16.33]) by svr-chch-seg1.atlnz.lc with Trustwave SEG (v8,2,6,11305)
	id <B675f9aec0000>; Mon, 16 Dec 2024 16:13:48 +1300
Received: from chrisp-dl.ws.atlnz.lc (chrisp-dl.ws.atlnz.lc [10.33.22.30])
	by pat.atlnz.lc (Postfix) with ESMTP id E36F513EE00;
	Mon, 16 Dec 2024 16:13:48 +1300 (NZDT)
Received: by chrisp-dl.ws.atlnz.lc (Postfix, from userid 1030)
	id DAEA1280A7B; Mon, 16 Dec 2024 16:13:48 +1300 (NZDT)
From: Chris Packham <chris.packham@alliedtelesis.co.nz>
To: lee@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	andrew+netdev@lunn.ch,
	davem@davemloft.net,
	edumazet@google.com,
	kuba@kernel.org,
	pabeni@redhat.com,
	tsbogend@alpha.franken.de,
	hkallweit1@gmail.com,
	linux@armlinux.org.uk,
	markus.stockhausen@gmx.de
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	netdev@vger.kernel.org,
	linux-mips@vger.kernel.org,
	Chris Packham <chris.packham@alliedtelesis.co.nz>
Subject: [PATCH v2 0/4] RTL9300 MDIO driver
Date: Mon, 16 Dec 2024 16:13:42 +1300
Message-ID: <20241216031346.2626805-1-chris.packham@alliedtelesis.co.nz>
X-Mailer: git-send-email 2.47.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-SEG-SpamProfiler-Analysis: v=2.4 cv=BNQQr0QG c=1 sm=1 tr=0 ts=675f9aec a=KLBiSEs5mFS1a/PbTCJxuA==:117 a=RZcAm9yDv7YA:10 a=_n84Z-pW24laMXaj73kA:9 a=3ZKOabzyN94A:10
X-SEG-SpamProfiler-Score: 0
x-atlnz-ls: pat

This series adds a driver for the MDIO controller on the RTL9300 family
of devices. The controller is a little unique in that we can't access
the SMI interfaces directly. Instead we associate the SMI interface with
a switch port and use the port number to address the SMI bus in
software.

Chris Packham (4):
  dt-bindings: net: Add Realtek MDIO controller
  dt-bindings: mfd: Add MDIO interface to rtl9301-switch
  mips: dts: realtek: Add MDIO controller
  net: mdio: Add RTL9300 MDIO driver

 .../bindings/mfd/realtek,rtl9301-switch.yaml  |  15 +
 .../bindings/net/realtek,rtl9301-mdio.yaml    |  82 +++++
 arch/mips/boot/dts/realtek/rtl930x.dtsi       |   8 +
 drivers/net/mdio/Kconfig                      |   7 +
 drivers/net/mdio/Makefile                     |   1 +
 drivers/net/mdio/mdio-realtek-rtl.c           | 341 ++++++++++++++++++
 6 files changed, 454 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/net/realtek,rtl9301=
-mdio.yaml
 create mode 100644 drivers/net/mdio/mdio-realtek-rtl.c

--=20
2.47.1


