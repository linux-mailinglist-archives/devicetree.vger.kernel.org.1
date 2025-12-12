Return-Path: <devicetree+bounces-246159-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A6FCCB9438
	for <lists+devicetree@lfdr.de>; Fri, 12 Dec 2025 17:32:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1854A3009A97
	for <lists+devicetree@lfdr.de>; Fri, 12 Dec 2025 16:30:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EA2B52BE02C;
	Fri, 12 Dec 2025 16:30:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=probably.group header.i=@probably.group header.b="B+IKY976"
X-Original-To: devicetree@vger.kernel.org
Received: from m1-out-mua-15.websupport.sk (m1-out-mua-15.websupport.sk [45.13.137.24])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C465B29BDBF;
	Fri, 12 Dec 2025 16:30:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=45.13.137.24
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765557018; cv=none; b=UuUGxtDGSey3eRNhE5Dgtn8Z6+qhCuWjB51p3cZ16TjJJZM/t7KuIz7/IPZvj2GR90ER0kNOIFUcJDTOHsUjyDqFGBUWlLyFe2ZFh8iEdpylAwMA2UMhzwUbBrBrkYRJX/RjVwbuwPji4j2b15Uo70xIt6fbnEgYuYvWMOrxrfY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765557018; c=relaxed/simple;
	bh=TrCdtX5y8/aG9+FjbComU0WuILS9P+D9rKrhj1SXgko=;
	h=From:Content-Type:Mime-Version:Subject:Message-Id:Date:Cc:To; b=Swz421/56DN5HE6yQ835epzcSHrwKZg17J8R+umngPoVS8b2vY9gwwNwZbjURHqqdy92jANOgyMqER09oaLex5gxAv+x0UsOAOh906aSqCgXeF0DMugU8U57tW0sSGhrmlJBXU1GGPGgueziqh3h2S9LsLYmb/Ff7SoauHiHVjk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=probably.group; spf=pass smtp.mailfrom=probably.group; dkim=pass (2048-bit key) header.d=probably.group header.i=@probably.group header.b=B+IKY976; arc=none smtp.client-ip=45.13.137.24
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=probably.group
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=probably.group
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=probably.group;
	s=mail; t=1765556627;
	bh=+nONJqjep5LEd4f09CvcjseCMGXyI1xL6ZMFEmMKLaw=;
	h=From:Subject:Date:Cc:To:From;
	b=B+IKY976kgdpzNFohYgSqkuTAHhovcbQRC12kMyzNpArJuTWkROGd1dFBsplmqoo3
	 BWnZlQfF6SvoZQJwDcdkODjA30KTWi1/YMIMABYKovtOXfa7WW59uM5OwjfNDe9l62
	 TpJgEE14ceCNbqt8A+OjVbiPwIB+T4uAW45K0K/+OtP1iTFF6UDygBlzcHB4CrffDr
	 65rl3ukvcLvtvA8rGj7dJB3/8aM3wNI7XqRCG72GAWULzHd1q0HgGhDFLB5EjVH6kv
	 dOO7rTI8gzbhrPZdbbVUvJgpCkXZOFWpW93RMPBr/G5JUa+GlWgGgEdcXXq6wPYG16
	 1b1x5llcZE+Dw==
Received: from m1-u5-ing.websupport.sk (unknown [10.30.5.2])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	by m1-out-mua-15.websupport.sk (Postfix) with ESMTPS id 4dSZX30SCHz1N1L;
	Fri, 12 Dec 2025 17:23:47 +0100 (CET)
X-Authenticated-Sender: mh@probably.group
Authentication-Results: m1-u5-ing.websupport.sk;
	auth=pass smtp.auth=mh@probably.group smtp.mailfrom=mh@probably.group
Received: from smtpclient.apple (unknown [109.164.127.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: mh@probably.group)
	by m1-u5-ing.websupport.sk (Postfix) with ESMTPSA id 4dSZX21BWdzGMVD;
	Fri, 12 Dec 2025 17:23:45 +0100 (CET)
From: =?utf-8?B?Ik1hcnRpbiBIb2xvdnNrw70gKFByb2JhYmx5IE5vdGhpbmcgcy5yLm8u?=
 =?utf-8?B?KSI=?= <mh@probably.group>
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3864.200.81.1.6\))
Subject: [PATCH] arm64: dts: rockchip: enable dual 2.5GbE on Rock 5T
Message-Id: <96516D1F-9787-47FE-A67E-4745D11D9207@probably.group>
Date: Fri, 12 Dec 2025 17:23:35 +0100
Cc: Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
To: Heiko Stuebner <heiko@sntech.de>
X-Mailer: Apple Mail (2.3864.200.81.1.6)
X-Out-Spamd-Result: default: False [0.40 / 1000.00];
	MV_CASE(0.50)[];
	MIME_GOOD(-0.10)[text/plain];
	TAGGED_RCPT(0.00)[dt];
	RCVD_COUNT_ZERO(0.00)[0];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:44489, ipnet:109.164.0.0/17, country:CZ];
	ARC_NA(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	HAS_X_AS(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	TO_MATCH_ENVRCPT_ALL(0.00)[];
	MIME_TRACE(0.00)[0:+]
X-Out-Rspamd-Queue-Id: 4dSZX21BWdzGMVD
X-Rspamd-Action: no action
X-Out-Rspamd-Server: m1-rspamd-out-5
X-purgate-type: clean
X-purgate-Ad: Categorized by eleven eXpurgate (R) https://www.eleven.de
X-purgate: This mail is considered clean (visit https://www.eleven.de for further information)
X-purgate: clean
X-purgate-size: 2219
X-purgate-ID: 155908::1765556627-C232F043-832C1352/0/0

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


---
 .../boot/dts/rockchip/rk3588-rock-5t.dts      | 23 +++++++++++++++++++
 1 file changed, 23 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5t.dts =
b/arch/arm64/boot/dts/rockchip/rk3588-rock-5t.dts
index 0dd90c744380..aeb8e0d42f09 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5t.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5t.dts
@@ -68,6 +68,20 @@ &pcie2x1l1 {
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
@@ -101,6 +115,15 @@ pcie2 {
 		pcie2_1_rst: pcie2-1-rst {
 			rockchip,pins =3D <4 RK_PA2 RK_FUNC_GPIO =
&pcfg_pull_none>;
 		};
+
+		pcie2_0_rst: pcie2-0-rst {
+			rockchip,pins =3D <4 RK_PA5 RK_FUNC_GPIO =
&pcfg_pull_none>;
+		};
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
2.52.0


