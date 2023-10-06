Return-Path: <devicetree+bounces-6333-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 17F2C7BAFA0
	for <lists+devicetree@lfdr.de>; Fri,  6 Oct 2023 02:33:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 3B9CD2822DD
	for <lists+devicetree@lfdr.de>; Fri,  6 Oct 2023 00:33:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3B0D2139B;
	Fri,  6 Oct 2023 00:33:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=alliedtelesis.co.nz header.i=@alliedtelesis.co.nz header.b="hKPxUN2e"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D319EA2D
	for <devicetree@vger.kernel.org>; Fri,  6 Oct 2023 00:33:34 +0000 (UTC)
Received: from gate2.alliedtelesis.co.nz (gate2.alliedtelesis.co.nz [IPv6:2001:df5:b000:5::4])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CF3FDE9
	for <devicetree@vger.kernel.org>; Thu,  5 Oct 2023 17:33:31 -0700 (PDT)
Received: from svr-chch-seg1.atlnz.lc (mmarshal3.atlnz.lc [10.32.18.43])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	by gate2.alliedtelesis.co.nz (Postfix) with ESMTPS id 967B52C043C;
	Fri,  6 Oct 2023 13:33:28 +1300 (NZDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alliedtelesis.co.nz;
	s=mail181024; t=1696552408;
	bh=ttASz5PFIq45SB63T27urLBr0KsSG9UVkEiGsDKUa0w=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=hKPxUN2ex/Y4eOieQZTMuQHLBMXtMUO8ORdjwqwPX5BZbjKwjkKAMWLyOxj8AlJiH
	 RowRJanGmiQ4O/avQFu+UIdCAU8QPvTHARy7dnOwyX1mtTBvAPMNbNNO56swYbgVOy
	 G5+ZITtpK6ZJwxUggBoxzsIwYHpmraLLadyf085eKuCLXv2DFpJt7Ji34r8WOo+f3D
	 tyK8GYF8cfEt4EF5OsUe0eS2vkRvI/CWEpqSVaOSc7XeafYtxwP3tp4BpYOWQBIpZi
	 wjl20mN4ePNgxFUTL89Byqe9dh3Gc/7myij3YBT7cKLRqsEfaJCwHIj7gsjmNIhorm
	 MEN2qSV1lbrnw==
Received: from pat.atlnz.lc (Not Verified[10.32.16.33]) by svr-chch-seg1.atlnz.lc with Trustwave SEG (v8,2,6,11305)
	id <B651f55d80002>; Fri, 06 Oct 2023 13:33:28 +1300
Received: from chrisp-dl.ws.atlnz.lc (chrisp-dl.ws.atlnz.lc [10.33.22.30])
	by pat.atlnz.lc (Postfix) with ESMTP id 5A7BA13EE85;
	Fri,  6 Oct 2023 13:33:28 +1300 (NZDT)
Received: by chrisp-dl.ws.atlnz.lc (Postfix, from userid 1030)
	id 59C3028084D; Fri,  6 Oct 2023 13:33:28 +1300 (NZDT)
From: Chris Packham <chris.packham@alliedtelesis.co.nz>
To: gregory.clement@bootlin.com,
	andi.shyti@kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	pierre.gondois@arm.com
Cc: linux-i2c@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Chris Packham <chris.packham@alliedtelesis.co.nz>
Subject: [PATCH v2 2/3] arm64: dts: marvell: AC5: use I2C unstuck function
Date: Fri,  6 Oct 2023 13:33:20 +1300
Message-ID: <20231006003321.2100016-3-chris.packham@alliedtelesis.co.nz>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231006003321.2100016-1-chris.packham@alliedtelesis.co.nz>
References: <20231006003321.2100016-1-chris.packham@alliedtelesis.co.nz>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-SEG-SpamProfiler-Analysis: v=2.3 cv=Vf2Jw2h9 c=1 sm=1 tr=0 a=KLBiSEs5mFS1a/PbTCJxuA==:117 a=bhdUkHdE2iEA:10 a=Jm_8IDygZZvVWM1ZSnEA:9
X-SEG-SpamProfiler-Score: 0
x-atlnz-ls: pat
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_PASS,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

The AC5 SoC supports using a controller based I2C unstuck function for
recovery. Use this instead of the generic GPIO recovery.

Signed-off-by: Chris Packham <chris.packham@alliedtelesis.co.nz>
---
 arch/arm64/boot/dts/marvell/ac5-98dx25xx.dtsi | 14 ++++----------
 1 file changed, 4 insertions(+), 10 deletions(-)

diff --git a/arch/arm64/boot/dts/marvell/ac5-98dx25xx.dtsi b/arch/arm64/b=
oot/dts/marvell/ac5-98dx25xx.dtsi
index c9ce1010c415..e52d3c3496d5 100644
--- a/arch/arm64/boot/dts/marvell/ac5-98dx25xx.dtsi
+++ b/arch/arm64/boot/dts/marvell/ac5-98dx25xx.dtsi
@@ -137,7 +137,7 @@ mdio: mdio@22004 {
=20
 			i2c0: i2c@11000{
 				compatible =3D "marvell,mv78230-i2c";
-				reg =3D <0x11000 0x20>;
+				reg =3D <0x11000 0x20>, <0x110a0 0x4>;
 				#address-cells =3D <1>;
 				#size-cells =3D <0>;
=20
@@ -146,17 +146,14 @@ i2c0: i2c@11000{
 				interrupts =3D <GIC_SPI 87 IRQ_TYPE_LEVEL_HIGH>;
 				clock-frequency=3D<100000>;
=20
-				pinctrl-names =3D "default", "gpio";
+				pinctrl-names =3D "default";
 				pinctrl-0 =3D <&i2c0_pins>;
-				pinctrl-1 =3D <&i2c0_gpio>;
-				scl-gpios =3D <&gpio0 26 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
-				sda-gpios =3D <&gpio0 27 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
 				status =3D "disabled";
 			};
=20
 			i2c1: i2c@11100{
 				compatible =3D "marvell,mv78230-i2c";
-				reg =3D <0x11100 0x20>;
+				reg =3D <0x11100 0x20>, <0x110a4 0x4>;
 				#address-cells =3D <1>;
 				#size-cells =3D <0>;
=20
@@ -165,11 +162,8 @@ i2c1: i2c@11100{
 				interrupts =3D <GIC_SPI 88 IRQ_TYPE_LEVEL_HIGH>;
 				clock-frequency=3D<100000>;
=20
-				pinctrl-names =3D "default", "gpio";
+				pinctrl-names =3D "default";
 				pinctrl-0 =3D <&i2c1_pins>;
-				pinctrl-1 =3D <&i2c1_gpio>;
-				scl-gpios =3D <&gpio0 20 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
-				sda-gpios =3D <&gpio0 21 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
 				status =3D "disabled";
 			};
=20
--=20
2.42.0


