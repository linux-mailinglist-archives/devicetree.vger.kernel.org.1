Return-Path: <devicetree+bounces-247690-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 58CB7CCA74C
	for <lists+devicetree@lfdr.de>; Thu, 18 Dec 2025 07:28:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id AE1AB300B90A
	for <lists+devicetree@lfdr.de>; Thu, 18 Dec 2025 06:27:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C7F10230264;
	Thu, 18 Dec 2025 06:27:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=probably.group header.i=@probably.group header.b="lwKEqJFj"
X-Original-To: devicetree@vger.kernel.org
Received: from m1-out-mua-15.websupport.sk (m1-out-mua-15.websupport.sk [45.13.137.24])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B4901DDA24;
	Thu, 18 Dec 2025 06:27:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=45.13.137.24
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766039245; cv=none; b=NMpA+dXWlKg2x7dWogx69Ds9C65gncI0CBBJSZ0UF1RtktT3l9yW1SjOXAnvYtRa4q2UcKGR8GewaTI1FtToCAizTzVtAeHC9EeHcGWUCPf1Jsy6UEQH0qTclrSof7hjq9d0d+diL8W5I/zH9+Cx2dUz5uzGnkshzzDXTjrFqv8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766039245; c=relaxed/simple;
	bh=7lp9hgn3MkAs3Whjp4Cpen+FLv1OKJQyW8M/9KBaFJA=;
	h=Content-Type:Mime-Version:Subject:From:In-Reply-To:Date:Cc:
	 Message-Id:References:To; b=nVb2ndif92kGID23Ifabw7PrfxWkJ5vuvLj78EvL27MTI5oRn0fxY1U393F5pfrxs6fJA5KJbn9DrturNI/Wit64ni/MypPVqcvlU1DlEL8BhuY69VBuykT5R/SF7pp+z71qX5dKB1npnsznLL03pmx1iLSdbMWKP/UZoIfn9VM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=probably.group; spf=pass smtp.mailfrom=probably.group; dkim=pass (2048-bit key) header.d=probably.group header.i=@probably.group header.b=lwKEqJFj; arc=none smtp.client-ip=45.13.137.24
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=probably.group
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=probably.group
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=probably.group;
	s=mail; t=1766039238;
	bh=0K5thqygFNUnlh3TDoVpOgAhWKXcZiSM57Y+EGgftQo=;
	h=Subject:From:In-Reply-To:Date:Cc:References:To:From;
	b=lwKEqJFjIZmIbk37J8NRtyUTxGYvi9cCJ+ynGX+KsVZRlaLp/H3qDSwRdlmXxWSui
	 Z8pj+SlI8SswrvXLaoiY8HPurPphwKISYoddSBiQ2exsmZyziOD0NkfSrYCG1AhTPd
	 LkJULwH/z+9UghQ2oy2kiW9lG5VADkJX/h/SIli/wgNyvvDS7HXDcfcbB9cAJ7reTh
	 /yCr6rk/KqTa+SnuEm6I2K1TQNJ2Tb6ttuE1vgsHuMCSpbqj7pvxjylvvAzldAg79M
	 urkKW1e1TFl3biaPPE6ugZPeLaeGS/0fxbzuMabNqlknZtn+TNSm02EiOJEeTOv1HO
	 /VMTs9UJSUSDQ==
Received: from m1-u5-ing.websupport.sk (unknown [10.30.5.2])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	by m1-out-mua-15.websupport.sk (Postfix) with ESMTPS id 4dX1125dHhz1hcs;
	Thu, 18 Dec 2025 07:27:18 +0100 (CET)
X-Authenticated-Sender: mh@probably.group
Authentication-Results: m1-u5-ing.websupport.sk;
	auth=pass smtp.auth=mh@probably.group smtp.mailfrom=mh@probably.group
Received: from smtpclient.apple (unknown [109.164.127.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: mh@probably.group)
	by m1-u5-ing.websupport.sk (Postfix) with ESMTPSA id 4dX11105CKzX0gf;
	Thu, 18 Dec 2025 07:27:16 +0100 (CET)
Content-Type: text/plain;
	charset=us-ascii
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3864.300.41.1.7\))
Subject: [PATCH v2] arm64: dts: rockchip: enable both 2.5GbE ports on Rock 5T
From: =?utf-8?B?Ik1hcnRpbiBIb2xvdnNrw70gKFByb2JhYmx5IE5vdGhpbmcgcy5yLm8u?=
 =?utf-8?B?KSI=?= <mh@probably.group>
In-Reply-To: <96516D1F-9787-47FE-A67E-4745D11D9207@probably.group>
Date: Thu, 18 Dec 2025 07:27:06 +0100
Cc: Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Transfer-Encoding: quoted-printable
Message-Id: <034BDB37-34FB-441F-B79E-1631CA501576@probably.group>
References: <96516D1F-9787-47FE-A67E-4745D11D9207@probably.group>
To: Heiko Stuebner <heiko@sntech.de>
X-Mailer: Apple Mail (2.3864.300.41.1.7)
X-Out-Rspamd-Queue-Id: 4dX11105CKzX0gf
X-Out-Rspamd-Server: m1-rspamd-out-4
X-Rspamd-Action: no action
X-Out-Spamd-Result: default: False [0.40 / 1000.00];
	MV_CASE(0.50)[];
	MIME_GOOD(-0.10)[text/plain];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[dt];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:44489, ipnet:109.164.0.0/17, country:CZ];
	ARC_NA(0.00)[];
	RCVD_COUNT_ZERO(0.00)[0];
	RCPT_COUNT_SEVEN(0.00)[8];
	HAS_X_AS(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	TO_MATCH_ENVRCPT_ALL(0.00)[];
	MIME_TRACE(0.00)[0:+]
X-purgate-type: clean
X-purgate-Ad: Categorized by eleven eXpurgate (R) https://www.eleven.de
X-purgate: This mail is considered clean (visit https://www.eleven.de for further information)
X-purgate: clean
X-purgate-size: 2447
X-purgate-ID: 155908::1766039238-C07E5043-356BB542/0/0

The Radxa Rock 5T board features two RTL8125B 2.5GbE Ethernet =
controllers
connected via PCIe lanes pcie2x1l0 (fe170000) and pcie2x1l2 (fe190000).
Currently only one interface is functional because the PCIe controller
nodes lack the necessary reset GPIO configuration.

Without the reset-gpios property, the RTL8125B PHYs remain in reset =
state
and are not enumerated by the PCIe bus. This results in only one =
Ethernet
interface being detected, or none at all depending on U-Boot =
initialization.

This patch adds the missing configuration for both PCIe controllers:
- Enables both pcie2x1l0 and pcie2x1l2 nodes (status =3D "okay")
- Configures reset GPIOs (GPIO4_PA5 and GPIO3_PB0 respectively)
- Adds corresponding pinctrl definitions

With this change, both 2.5GbE interfaces are properly detected and
functional on the Rock 5T.

Tested on Radxa Rock 5T v1.2 running Linux 6.12.

Signed-off-by: Martin Holovsky <mh@probably.group>
---
Changes in v2:
- Sorted pcie nodes alphanumerically
- Sorted pinctrl nodes alphanumerically
- Added Signed-off-by line

 .../boot/dts/rockchip/rk3588-rock-5t.dts      | 28 +++++++++++++++++++
 1 file changed, 28 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5t.dts =
b/arch/arm64/boot/dts/rockchip/rk3588-rock-5t.dts
index 0dd90c744380..aeb8e0d42f09 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5t.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5t.dts
@@ -68,10 +68,24 @@ &pcie2x1l1 {
 	reset-gpios =3D <&gpio4 RK_PA2 GPIO_ACTIVE_HIGH>;
 	status =3D "okay";
 };
=20
+&pcie2x1l0 {
+	pinctrl-names =3D "default";
+	pinctrl-0 =3D <&pcie2_0_rst>;
+	reset-gpios =3D <&gpio4 RK_PA5 GPIO_ACTIVE_HIGH>;
+	status =3D "okay";
+};
+
+&pcie2x1l2 {
+	pinctrl-names =3D "default";
+	pinctrl-0 =3D <&pcie2_2_rst>;
+	reset-gpios =3D <&gpio3 RK_PB0 GPIO_ACTIVE_HIGH>;
+	status =3D "okay";
+};
+
 &pcie30phy {
 	data-lanes =3D <1 1 2 2>;
 };
@@ -101,6 +115,14 @@ pcie2 {
+		pcie2_0_rst: pcie2-0-rst {
+			rockchip,pins =3D <4 RK_PA5 RK_FUNC_GPIO =
&pcfg_pull_none>;
+		};
+
 		pcie2_1_rst: pcie2-1-rst {
 			rockchip,pins =3D <4 RK_PA2 RK_FUNC_GPIO =
&pcfg_pull_none>;
 		};
+
+		pcie2_2_rst: pcie2-2-rst {
+			rockchip,pins =3D <3 RK_PB0 RK_FUNC_GPIO =
&pcfg_pull_none>;
+		};
+
 		pcie2_0_vcc3v3_en: pcie2-0-vcc-en {
 			rockchip,pins =3D <2 RK_PC0 RK_FUNC_GPIO =
&pcfg_pull_none>;
 		};
--=20
2.52.0=

