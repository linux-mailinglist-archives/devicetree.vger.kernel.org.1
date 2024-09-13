Return-Path: <devicetree+bounces-102549-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C18D97770E
	for <lists+devicetree@lfdr.de>; Fri, 13 Sep 2024 04:50:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 315A21F248FF
	for <lists+devicetree@lfdr.de>; Fri, 13 Sep 2024 02:50:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 346C31D2F58;
	Fri, 13 Sep 2024 02:50:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=alliedtelesis.co.nz header.i=@alliedtelesis.co.nz header.b="ZIqrI21A"
X-Original-To: devicetree@vger.kernel.org
Received: from gate2.alliedtelesis.co.nz (gate2.alliedtelesis.co.nz [202.36.163.20])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 900521B12E5
	for <devicetree@vger.kernel.org>; Fri, 13 Sep 2024 02:50:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=202.36.163.20
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726195804; cv=none; b=dNMR5P1Qkar4AJ92X9d6/q5nh7lgxGTosqmMROpTeHK8ZDQqN45AFMGtcaSSXdA+A3ILqe8p9FnH6uRi2HTuogUYm4P/9C3PchfX7U9vXf34SSsAzpAofotZ3unINEYb3Jl0M0Dlb8UaHfHP9HQXTaccZglDKxAgbbSrlNZKYVU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726195804; c=relaxed/simple;
	bh=zxAGP0nGwpvAe/oKuo3aO27lPwz/RconSVoN+0j4rOk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=JNogO2VtX1K5k8M+N8HTEwvcQF1BOZaCAOkOjFwKju7WxWVc/F6brDNocp3GHbhKoPnQ14TcZdB311uYotS6ZufYSY41HdvSr9sGpiiB5hZsK/Jl1YoP8Ih10ytFhDCIGUwfbrrCQFx1yAaAWTjdkbE4NTwyradDjQipDX6F34s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=alliedtelesis.co.nz; spf=pass smtp.mailfrom=alliedtelesis.co.nz; dkim=pass (2048-bit key) header.d=alliedtelesis.co.nz header.i=@alliedtelesis.co.nz header.b=ZIqrI21A; arc=none smtp.client-ip=202.36.163.20
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=alliedtelesis.co.nz
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=alliedtelesis.co.nz
Received: from svr-chch-seg1.atlnz.lc (mmarshal3.atlnz.lc [10.32.18.43])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	by gate2.alliedtelesis.co.nz (Postfix) with ESMTPS id CD39F2C0580;
	Fri, 13 Sep 2024 14:49:51 +1200 (NZST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alliedtelesis.co.nz;
	s=mail181024; t=1726195791;
	bh=Nwmoc/h3LWIabsHzpSe8h7CrMoLz9NKH+OXeEqazJkE=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=ZIqrI21A4yit86sGv+eRtzUcVVccxlp0xzXQ1eFKZyqv62ktZFZ65ozJsGEIYh0fR
	 CzuOBfIzfeSKZrdLvOjH3dRJ8a23dg6Ex5SlYOSafG8E2iNgfLxXLKwSNYxoSrpaEq
	 b/GLe2nYUIrbRu0pDwbXaN2awJ/O5BgOdGrpQQ6Yk1gaq0irDYlKNUBE2i+f5tXqmi
	 ejxY+aGH0yDT8+gYfdtInP9rcN7vVmx3jmBpfNvmu1egVkePzJ8gWDrCxwUB4Eqm/5
	 4/tY+VNUX9BEY51heE+mN5iWX8E5BmifxGwQJbe099XWpL/ubv7iyAX9uQAkfzkDYY
	 muVR/CvI+NjTA==
Received: from pat.atlnz.lc (Not Verified[10.32.16.33]) by svr-chch-seg1.atlnz.lc with Trustwave SEG (v8,2,6,11305)
	id <B66e3a84f0002>; Fri, 13 Sep 2024 14:49:51 +1200
Received: from chrisp-dl.ws.atlnz.lc (chrisp-dl.ws.atlnz.lc [10.33.22.30])
	by pat.atlnz.lc (Postfix) with ESMTP id 9731F13ED8D;
	Fri, 13 Sep 2024 14:49:51 +1200 (NZST)
Received: by chrisp-dl.ws.atlnz.lc (Postfix, from userid 1030)
	id 96D4428005C; Fri, 13 Sep 2024 14:49:51 +1200 (NZST)
From: Chris Packham <chris.packham@alliedtelesis.co.nz>
To: lee@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	tsbogend@alpha.franken.de,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-mips@vger.kernel.org
Cc: Chris Packham <chris.packham@alliedtelesis.co.nz>
Subject: [PATCH v2 2/2] mips: dts: realtek: Add syscon-reboot node
Date: Fri, 13 Sep 2024 14:49:48 +1200
Message-ID: <20240913024948.1317786-3-chris.packham@alliedtelesis.co.nz>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20240913024948.1317786-1-chris.packham@alliedtelesis.co.nz>
References: <20240913024948.1317786-1-chris.packham@alliedtelesis.co.nz>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-SEG-SpamProfiler-Analysis: v=2.4 cv=Id0kWnqa c=1 sm=1 tr=0 ts=66e3a84f a=KLBiSEs5mFS1a/PbTCJxuA==:117 a=EaEq8P2WXUwA:10 a=dg6lvUh7t3K6jr6pP5MA:9 a=3ZKOabzyN94A:10
X-SEG-SpamProfiler-Score: 0
x-atlnz-ls: pat

The board level reset on systems using the RTL9302 can be driven via the
switch. Use a syscon-reboot node to represent this.

Signed-off-by: Chris Packham <chris.packham@alliedtelesis.co.nz>
---

Notes:
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
2.46.0


