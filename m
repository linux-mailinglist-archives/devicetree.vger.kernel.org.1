Return-Path: <devicetree+bounces-30638-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F8CB82872E
	for <lists+devicetree@lfdr.de>; Tue,  9 Jan 2024 14:36:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 54F0C1C23A42
	for <lists+devicetree@lfdr.de>; Tue,  9 Jan 2024 13:36:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BFAA938F9E;
	Tue,  9 Jan 2024 13:36:02 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-190f.mail.infomaniak.ch (smtp-190f.mail.infomaniak.ch [185.125.25.15])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD4B32206B
	for <devicetree@vger.kernel.org>; Tue,  9 Jan 2024 13:35:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=0leil.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=0leil.net
Received: from smtp-2-0000.mail.infomaniak.ch (unknown [10.5.36.107])
	by smtp-2-3000.mail.infomaniak.ch (Postfix) with ESMTPS id 4T8X4s3hdRzMqB7W;
	Tue,  9 Jan 2024 13:35:57 +0000 (UTC)
Received: from unknown by smtp-2-0000.mail.infomaniak.ch (Postfix) with ESMTPA id 4T8X4r6qsSzMpnPh;
	Tue,  9 Jan 2024 14:35:56 +0100 (CET)
From: Quentin Schulz <foss+kernel@0leil.net>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Quentin Schulz <foss+kernel@0leil.net>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Quentin Schulz <quentin.schulz@theobroma-systems.com>
Subject: [PATCH 2/2] arm64: dts: rockchip: remove duplicate SPI aliases for helios64
Date: Tue,  9 Jan 2024 14:35:44 +0100
Message-ID: <20240109-rk3399-spi-aliases-v1-2-2009e44e734a@theobroma-systems.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240109-rk3399-spi-aliases-v1-0-2009e44e734a@theobroma-systems.com>
References: <20240109-rk3399-spi-aliases-v1-0-2009e44e734a@theobroma-systems.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
X-Mailer: b4 0.12.4
Content-Transfer-Encoding: quoted-printable
X-Infomaniak-Routing: alpha

From: Quentin Schulz <quentin.schulz@theobroma-systems.com>=0D
=0D
An earlier commit defined an alias for all SPI controllers found on the=0D
RK3399, so there's no need to duplicate the aliases in helios64's device=0D
tree.=0D
=0D
Cc: Quentin Schulz <foss+kernel@0leil.net>=0D
Signed-off-by: Quentin Schulz <quentin.schulz@theobroma-systems.com>=0D
---=0D
 arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts | 3 ---=0D
 1 file changed, 3 deletions(-)=0D
=0D
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts b/arch/=
arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts=0D
index 1eb287a3f8c03..d664ac18a941e 100644=0D
--- a/arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts=0D
+++ b/arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts=0D
@@ -21,9 +21,6 @@ / {=0D
 	aliases {=0D
 		mmc0 =3D &sdmmc;=0D
 		mmc1 =3D &sdhci;=0D
-		spi1 =3D &spi1;=0D
-		spi2 =3D &spi2;=0D
-		spi5 =3D &spi5;=0D
 	};=0D
 =0D
 	avdd_0v9_s0: avdd-0v9-s0 {=0D
=0D
-- =0D
2.43.0=0D
=0D

