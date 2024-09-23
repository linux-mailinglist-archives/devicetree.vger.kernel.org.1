Return-Path: <devicetree+bounces-104642-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 565209839D9
	for <lists+devicetree@lfdr.de>; Tue, 24 Sep 2024 01:04:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D02A71F22577
	for <lists+devicetree@lfdr.de>; Mon, 23 Sep 2024 22:57:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2C05D12F375;
	Mon, 23 Sep 2024 22:57:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=alliedtelesis.co.nz header.i=@alliedtelesis.co.nz header.b="jRRDLwoI"
X-Original-To: devicetree@vger.kernel.org
Received: from gate2.alliedtelesis.co.nz (gate2.alliedtelesis.co.nz [202.36.163.20])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A43CE126BF0
	for <devicetree@vger.kernel.org>; Mon, 23 Sep 2024 22:57:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=202.36.163.20
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727132250; cv=none; b=jA6fs9ABabBK/IHK5uowYHIAXlnBc+1xRVEtd5SzHZ5ZcbtPt0oIAgvKFwtcohJZAA66OTRNQlF4tLwcGT63cxGIjmMMHpoZbW1iloZh88jSlOFOayRdLcham3HZY0T8xazyrH2mkhMIkUKb2Rv6p56oNMZQEZZQGocvQ95No94=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727132250; c=relaxed/simple;
	bh=kiaUERNi7FEMa0DTaZm84QrpQQft/7yi3856MUwyh6M=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=A1BvtoNwSARXRi9VOPi4XPXZb+MqSg/+68N9rsblGaAKsRMkN/ZxjrY9TayNEkPI6a4aXQa0SPX8bj9S8NvpuWd43YIJSYoSzQQ3mHRJfYatFZ6G9plzR0O+2KO6zlxd2AKrksWnyV+x7JkfccmhbwmD7wvy+jbjk3ivtd3Ucwg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=alliedtelesis.co.nz; spf=pass smtp.mailfrom=alliedtelesis.co.nz; dkim=pass (2048-bit key) header.d=alliedtelesis.co.nz header.i=@alliedtelesis.co.nz header.b=jRRDLwoI; arc=none smtp.client-ip=202.36.163.20
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=alliedtelesis.co.nz
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=alliedtelesis.co.nz
Received: from svr-chch-seg1.atlnz.lc (mmarshal3.atlnz.lc [10.32.18.43])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	by gate2.alliedtelesis.co.nz (Postfix) with ESMTPS id 5279F2C062F;
	Tue, 24 Sep 2024 10:57:23 +1200 (NZST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alliedtelesis.co.nz;
	s=mail181024; t=1727132243;
	bh=6JCffrXjBW+Wl+ZcE0nsaWc7MZMZ3P1777f6qTIS7V8=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=jRRDLwoITz+WYD58Fo8eefrcGxFJF08BZWHVXj0FKpJG3bbE8bBmvgYGKdCtNu2bl
	 Y+3o2fjhKoU6xFzu00mIAKvm03I9jaaUQhJWdbFdIbrsfrHngE9MmMVJhpJ39dNbJm
	 PCbE0ULunCDXYDvRQYIwpaNby32I4EBcstIuVvz1u0UVJiza46jo1jPbSLgHMvCKCE
	 lp8Avq9QtuOXuQ9ti978V8fxwIpjJf9j7M0rIPe2f/APGRiMAQVU25Z6PCIMXzcSxO
	 R0tnEAnfbCzD9WR8oBWdMR+A7hFUXAAARmku48+b9wX5XdlVfvdx+gxsp5WHKo32xr
	 Ezs5MRTeohVPg==
Received: from pat.atlnz.lc (Not Verified[10.32.16.33]) by svr-chch-seg1.atlnz.lc with Trustwave SEG (v8,2,6,11305)
	id <B66f1f2530000>; Tue, 24 Sep 2024 10:57:23 +1200
Received: from chrisp-dl.ws.atlnz.lc (chrisp-dl.ws.atlnz.lc [10.33.22.30])
	by pat.atlnz.lc (Postfix) with ESMTP id 0501713EE36;
	Tue, 24 Sep 2024 10:57:23 +1200 (NZST)
Received: by chrisp-dl.ws.atlnz.lc (Postfix, from userid 1030)
	id F38A3280960; Tue, 24 Sep 2024 10:57:22 +1200 (NZST)
From: Chris Packham <chris.packham@alliedtelesis.co.nz>
To: lee@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	tsbogend@alpha.franken.de
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-mips@vger.kernel.org,
	Chris Packham <chris.packham@alliedtelesis.co.nz>
Subject: [PATCH v4 2/3] mips: dts: realtek: Add syscon-reboot node
Date: Tue, 24 Sep 2024 10:57:18 +1200
Message-ID: <20240923225719.2999821-3-chris.packham@alliedtelesis.co.nz>
X-Mailer: git-send-email 2.46.1
In-Reply-To: <20240923225719.2999821-1-chris.packham@alliedtelesis.co.nz>
References: <20240923225719.2999821-1-chris.packham@alliedtelesis.co.nz>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-SEG-SpamProfiler-Analysis: v=2.4 cv=Id0kWnqa c=1 sm=1 tr=0 ts=66f1f253 a=KLBiSEs5mFS1a/PbTCJxuA==:117 a=EaEq8P2WXUwA:10 a=dg6lvUh7t3K6jr6pP5MA:9 a=3ZKOabzyN94A:10
X-SEG-SpamProfiler-Score: 0
x-atlnz-ls: pat

The board level reset on systems using the RTL9302 can be driven via the
switch. Use a syscon-reboot node to represent this.

Signed-off-by: Chris Packham <chris.packham@alliedtelesis.co.nz>
---

Notes:
    Changes in v3:
    - None
    Changes in v2:
    - drop redundant status =3D "okay"

 arch/mips/boot/dts/realtek/rtl930x.dtsi | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/arch/mips/boot/dts/realtek/rtl930x.dtsi b/arch/mips/boot/dts=
/realtek/rtl930x.dtsi
index f271940f82be..cf1b38b6c353 100644
--- a/arch/mips/boot/dts/realtek/rtl930x.dtsi
+++ b/arch/mips/boot/dts/realtek/rtl930x.dtsi
@@ -29,6 +29,17 @@ lx_clk: clock-175mhz {
 		#clock-cells =3D <0>;
 		clock-frequency  =3D <175000000>;
 	};
+
+	switch0: switch@1b000000 {
+		compatible =3D "realtek,rtl9302c-switch", "syscon", "simple-mfd";
+		reg =3D <0x1b000000 0x10000>;
+
+		reboot {
+			compatible =3D "syscon-reboot";
+			offset =3D <0x0c>;
+			value =3D <0x01>;
+		};
+	};
 };
=20
 &soc {
--=20
2.46.1


