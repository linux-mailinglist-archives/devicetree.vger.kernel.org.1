Return-Path: <devicetree+bounces-131217-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D7849F28B0
	for <lists+devicetree@lfdr.de>; Mon, 16 Dec 2024 04:14:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id EB6E41653A1
	for <lists+devicetree@lfdr.de>; Mon, 16 Dec 2024 03:14:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 73D371BC063;
	Mon, 16 Dec 2024 03:13:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=alliedtelesis.co.nz header.i=@alliedtelesis.co.nz header.b="zH79mazP"
X-Original-To: devicetree@vger.kernel.org
Received: from gate2.alliedtelesis.co.nz (gate2.alliedtelesis.co.nz [202.36.163.20])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B9B815383C
	for <devicetree@vger.kernel.org>; Mon, 16 Dec 2024 03:13:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=202.36.163.20
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734318836; cv=none; b=TiGl3Rc/zucsLffYW5ErYczx3UmMy8XDC+51SBZGpx+6uqFqlGQeFmVrHSuLAdzTMwdexMaOlSWT79BffTUBT4Xn7ATsMJypOwQdigaRIi1wVP5FRy4JPSq8HHgMY7tErhP8rR6je0wYD+v+VYFJdOji7TtLMBZAU9CLOGAAacc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734318836; c=relaxed/simple;
	bh=4YuwduCfBsNI/ZZRIrKfSByqrHYRKxO8YlQow50f150=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=DTkxU//fPoOhhAdNS26XojlzwW5IqCRFmsCKIsRYSYU0+O5BJpSDJHQx8LgiKkj2NWfNVFabIVEQcCkZV7zJMwNyg0UWOfSJ/QUKCXxPpqsAcihDSwGJKPTkEMVcKZLqiFMQznfwkjH/VCmWsKy7tMGXQYKhkIWF0bUFjht4uj4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=alliedtelesis.co.nz; spf=pass smtp.mailfrom=alliedtelesis.co.nz; dkim=pass (2048-bit key) header.d=alliedtelesis.co.nz header.i=@alliedtelesis.co.nz header.b=zH79mazP; arc=none smtp.client-ip=202.36.163.20
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=alliedtelesis.co.nz
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=alliedtelesis.co.nz
Received: from svr-chch-seg1.atlnz.lc (mmarshal3.atlnz.lc [10.32.18.43])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	by gate2.alliedtelesis.co.nz (Postfix) with ESMTPS id 538262C03C9;
	Mon, 16 Dec 2024 16:13:49 +1300 (NZDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alliedtelesis.co.nz;
	s=mail181024; t=1734318829;
	bh=xtR+AxlzuLdejKgbyVaUoBSVjOifbyU2B/fA9f1XLhU=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=zH79mazPK6IxSi0zOeiJNDHH2AYo9ZsR5SPirLAoqE6qJY+UV4M181q8K48rRUvuG
	 ITskolipC4ZlDlMmU590a9xw0Ioi3/KxnXwDdqH4Shw8tDFNlEX6i0XGkfPnTrCKF7
	 S+dPMSdUjX+VPHDeBh3m/YyJ1fgzyNQ1Ja3LuWNx95ZpRlSb2pzgyr0UkcSUyc5rsd
	 z5iTgBghTZLlxpACzC2Erb6Z5zYbcNYlhvt9gWG9IRZLQtNDKi1D5d5UtqmqJ+86tH
	 4R5sBsuJY8txGDNbUrj5U+OShjr2FyNjnr6YblarnNuWtHQUY1W2F1uzzXzs8JT6Wx
	 TI+9xuXu2FEoA==
Received: from pat.atlnz.lc (Not Verified[10.32.16.33]) by svr-chch-seg1.atlnz.lc with Trustwave SEG (v8,2,6,11305)
	id <B675f9aec0004>; Mon, 16 Dec 2024 16:13:49 +1300
Received: from chrisp-dl.ws.atlnz.lc (chrisp-dl.ws.atlnz.lc [10.33.22.30])
	by pat.atlnz.lc (Postfix) with ESMTP id EA5F213EE9B;
	Mon, 16 Dec 2024 16:13:48 +1300 (NZDT)
Received: by chrisp-dl.ws.atlnz.lc (Postfix, from userid 1030)
	id E72302803EA; Mon, 16 Dec 2024 16:13:48 +1300 (NZDT)
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
Subject: [PATCH v2 3/4] mips: dts: realtek: Add MDIO controller
Date: Mon, 16 Dec 2024 16:13:45 +1300
Message-ID: <20241216031346.2626805-4-chris.packham@alliedtelesis.co.nz>
X-Mailer: git-send-email 2.47.1
In-Reply-To: <20241216031346.2626805-1-chris.packham@alliedtelesis.co.nz>
References: <20241216031346.2626805-1-chris.packham@alliedtelesis.co.nz>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-SEG-SpamProfiler-Analysis: v=2.4 cv=BNQQr0QG c=1 sm=1 tr=0 ts=675f9aed a=KLBiSEs5mFS1a/PbTCJxuA==:117 a=RZcAm9yDv7YA:10 a=k4-7ynMye8UXlDNHH0IA:9 a=3ZKOabzyN94A:10
X-SEG-SpamProfiler-Score: 0
x-atlnz-ls: pat

Add a device tree node for the MDIO controller on the RTL9300 chips.

Signed-off-by: Chris Packham <chris.packham@alliedtelesis.co.nz>
---

Notes:
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


