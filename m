Return-Path: <devicetree+bounces-132072-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id A29C79F59CC
	for <lists+devicetree@lfdr.de>; Tue, 17 Dec 2024 23:47:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6A49B189211D
	for <lists+devicetree@lfdr.de>; Tue, 17 Dec 2024 22:45:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 63BA91FAC34;
	Tue, 17 Dec 2024 22:45:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=alliedtelesis.co.nz header.i=@alliedtelesis.co.nz header.b="obeNKy80"
X-Original-To: devicetree@vger.kernel.org
Received: from gate2.alliedtelesis.co.nz (gate2.alliedtelesis.co.nz [202.36.163.20])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8ECA51FA145
	for <devicetree@vger.kernel.org>; Tue, 17 Dec 2024 22:45:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=202.36.163.20
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734475510; cv=none; b=YOyxwS4GJdde92/jF85chCKnv6xCrcM5ZzWv927fHo5HLqMID7oLq9dK0g7sTlBNcI3J+VDBRcgSF8wufR+9jyQEKfmbndgCv7u1nG240RoOBEcfw1WdHtkb+VfCp6S9juljJcxLOYz6CvimdyYbz5UFjeM7PZ0BDQKFhHLzfMc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734475510; c=relaxed/simple;
	bh=L2zNWXxJ5UxK6fgydo86+GbBNyq6p2zYWOTn3TzzAas=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=SZ2ybMblmjfmaDCr/u5cUmrxUiu/67LUESJLA5EH3QrlSCka0tpHnSwGB5LKjz14H25rNkjiU8iM3IMUmyuhyY8jBxlNL7jPAkLprTNkPPrMDOg04P7rZFhZv6vDiGJZrJnyebbZXva9Q3AK2NySJQ/3u7/7RabR/LQ7KvS12e8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=alliedtelesis.co.nz; spf=pass smtp.mailfrom=alliedtelesis.co.nz; dkim=pass (2048-bit key) header.d=alliedtelesis.co.nz header.i=@alliedtelesis.co.nz header.b=obeNKy80; arc=none smtp.client-ip=202.36.163.20
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=alliedtelesis.co.nz
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=alliedtelesis.co.nz
Received: from svr-chch-seg1.atlnz.lc (mmarshal3.atlnz.lc [10.32.18.43])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	by gate2.alliedtelesis.co.nz (Postfix) with ESMTPS id 740A82C0C2E;
	Wed, 18 Dec 2024 11:45:03 +1300 (NZDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alliedtelesis.co.nz;
	s=mail181024; t=1734475503;
	bh=EIPwlfXRlaNYaXnu7Vurx8xTCXNMz21zUxxNVkjv+hQ=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=obeNKy80iMnYM63b1tfxp1RtVkiOyJ4fgI6dTUbfvOpj4fWBaoJKsdWADpeqnFZsd
	 XOLoGoU1CnyJ6VDierlpRRpcrZe4QUMfOMAM3DqorJOVQEtGfsJMom6A4mO47S8SUX
	 Mw6dsRwzYUParhZ+Z/Zn5qGIlViMRAgXe1M2sAqbdbEHBgiCGobBFw9BAXFri5rUYr
	 Ljv/6MxfPiKubgSnf+lAByrWunj28Ru7GnUrVIYi1+228ILv9f/HzTA80jguwX6Czv
	 b/vX9yTC5smFxclWcUkIxIbqc/h7/3PEVsEsEd3CngNpLsXlf3QRWZVfVl2fj8ed/u
	 w9D1ptfeF070Q==
Received: from pat.atlnz.lc (Not Verified[10.32.16.33]) by svr-chch-seg1.atlnz.lc with Trustwave SEG (v8,2,6,11305)
	id <B6761feef0002>; Wed, 18 Dec 2024 11:45:03 +1300
Received: from chrisp-dl.ws.atlnz.lc (chrisp-dl.ws.atlnz.lc [10.33.22.30])
	by pat.atlnz.lc (Postfix) with ESMTP id 0CCE913EE8E;
	Wed, 18 Dec 2024 11:45:03 +1300 (NZDT)
Received: by chrisp-dl.ws.atlnz.lc (Postfix, from userid 1030)
	id 078F528093B; Wed, 18 Dec 2024 11:45:03 +1300 (NZDT)
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
Subject: [PATCH v3 2/3] mips: dts: realtek: Add MDIO controller
Date: Wed, 18 Dec 2024 11:45:00 +1300
Message-ID: <20241217224501.398039-3-chris.packham@alliedtelesis.co.nz>
X-Mailer: git-send-email 2.47.1
In-Reply-To: <20241217224501.398039-1-chris.packham@alliedtelesis.co.nz>
References: <20241217224501.398039-1-chris.packham@alliedtelesis.co.nz>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-SEG-SpamProfiler-Analysis: v=2.4 cv=BNQQr0QG c=1 sm=1 tr=0 ts=6761feef a=KLBiSEs5mFS1a/PbTCJxuA==:117 a=RZcAm9yDv7YA:10 a=k4-7ynMye8UXlDNHH0IA:9 a=3ZKOabzyN94A:10
X-SEG-SpamProfiler-Score: 0
x-atlnz-ls: pat

Add a device tree node for the MDIO controller on the RTL9300 chips.

Signed-off-by: Chris Packham <chris.packham@alliedtelesis.co.nz>
---

Notes:
    Changes in v3:
    - None
    Changes in v2:
    - None

 arch/mips/boot/dts/realtek/rtl930x.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/mips/boot/dts/realtek/rtl930x.dtsi b/arch/mips/boot/dts=
/realtek/rtl930x.dtsi
index 17577457d159..5f74d121ce84 100644
--- a/arch/mips/boot/dts/realtek/rtl930x.dtsi
+++ b/arch/mips/boot/dts/realtek/rtl930x.dtsi
@@ -57,6 +57,14 @@ i2c1: i2c@388 {
 			#size-cells =3D <0>;
 			status =3D "disabled";
 		};
+
+		mdio0: mdio@ca00 {
+			compatible =3D "realtek,rtl9301-mdio";
+			reg =3D <0xca00 0x200>;
+			#address-cells =3D <1>;
+			#size-cells =3D <0>;
+			status =3D "disabled";
+		};
 	};
 };
=20
--=20
2.47.1


