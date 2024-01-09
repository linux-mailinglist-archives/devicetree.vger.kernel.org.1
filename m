Return-Path: <devicetree+bounces-30649-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 61926828873
	for <lists+devicetree@lfdr.de>; Tue,  9 Jan 2024 15:47:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0025D1F254C7
	for <lists+devicetree@lfdr.de>; Tue,  9 Jan 2024 14:47:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6122539ACD;
	Tue,  9 Jan 2024 14:47:34 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-190c.mail.infomaniak.ch (smtp-190c.mail.infomaniak.ch [185.125.25.12])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA4C939FCF
	for <devicetree@vger.kernel.org>; Tue,  9 Jan 2024 14:47:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=0leil.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=0leil.net
Received: from smtp-2-0000.mail.infomaniak.ch (unknown [10.5.36.107])
	by smtp-3-3000.mail.infomaniak.ch (Postfix) with ESMTPS id 4T8X4r6stQzMqKGF;
	Tue,  9 Jan 2024 13:35:56 +0000 (UTC)
Received: from unknown by smtp-2-0000.mail.infomaniak.ch (Postfix) with ESMTPA id 4T8X4r2wzbzMppDb;
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
Subject: [PATCH 1/2] arm64: dts: rockchip: add spi controller aliases on rk3399
Date: Tue,  9 Jan 2024 14:35:43 +0100
Message-ID: <20240109-rk3399-spi-aliases-v1-1-2009e44e734a@theobroma-systems.com>
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
There are 6 SPI controllers on RK3399 and they are all numbered in the=0D
TRM, so let's add the appropriate aliases to the main DTSI so that any=0D
RK3399-based board doesn't need to define the aliases themselves to=0D
benefit from stable SPI indices in userspace.=0D
=0D
Cc: Quentin Schulz <foss+kernel@0leil.net>=0D
Signed-off-by: Quentin Schulz <quentin.schulz@theobroma-systems.com>=0D
---=0D
 arch/arm64/boot/dts/rockchip/rk3399.dtsi | 6 ++++++=0D
 1 file changed, 6 insertions(+)=0D
=0D
diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts=
/rockchip/rk3399.dtsi=0D
index da0dfb237f853..7b04ba526fd59 100644=0D
--- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi=0D
+++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi=0D
@@ -34,6 +34,12 @@ aliases {=0D
 		serial2 =3D &uart2;=0D
 		serial3 =3D &uart3;=0D
 		serial4 =3D &uart4;=0D
+		spi0 =3D &spi0;=0D
+		spi1 =3D &spi1;=0D
+		spi2 =3D &spi2;=0D
+		spi3 =3D &spi3;=0D
+		spi4 =3D &spi4;=0D
+		spi5 =3D &spi5;=0D
 	};=0D
 =0D
 	cpus {=0D
=0D
-- =0D
2.43.0=0D
=0D

