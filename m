Return-Path: <devicetree+bounces-136300-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E6AD7A04A11
	for <lists+devicetree@lfdr.de>; Tue,  7 Jan 2025 20:22:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9530F18883E8
	for <lists+devicetree@lfdr.de>; Tue,  7 Jan 2025 19:22:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A75311F4272;
	Tue,  7 Jan 2025 19:22:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=netcube.li header.i=@netcube.li header.b="vsuKM/tq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.netcube.li (mail.netcube.li [173.249.15.149])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07D6D2C187;
	Tue,  7 Jan 2025 19:22:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=173.249.15.149
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736277760; cv=none; b=F2S9+cGAlK+FNJ3CP30YOK4X6hhN4Vfpdg43hexCI06TS1tkSt5v8OQScNu9l9LHjp3fQYHWDzcqvy0n/qkjn32NTOSmfWzH8cMZAQOxHWx3f4bbew12+vtYZLxVvL73OCoCXIvSkcOMxwvU2FI71zpbksTi3YgGxHNKVl2Ozr8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736277760; c=relaxed/simple;
	bh=pl9ygqJR4JSvEKW2oEuirGebTOJK7iFbCuT5qmbdJPE=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=mUgrklhHCU+pHUxIpYYx4x5vKzpxiWZQwJt1aLrvEIFeopekRFeeEukCBmh/EKmsG7hwoq/Wf/WUU8pZUZKFt1cuTQ6xkxvDow5TwyQI16lkQWv1MCPcT+4DaA8Uzxt5Jjbs3ycli2/WxjMoIbQd8KOo1ulrr85oWzDEFSnHf7o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=netcube.li; spf=pass smtp.mailfrom=netcube.li; dkim=pass (1024-bit key) header.d=netcube.li header.i=@netcube.li header.b=vsuKM/tq; arc=none smtp.client-ip=173.249.15.149
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=netcube.li
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=netcube.li
dkim-signature: v=1; a=rsa-sha256; d=netcube.li; s=s1;
	c=relaxed/relaxed; q=dns/txt; h=From:Subject:Date:Message-ID:To:CC:MIME-Version:Content-Transfer-Encoding:In-Reply-To:References;
	bh=mUaOJdlvF3UtlVjv2dtx6mt6dyDnML8GE0nto6UoBsk=;
	b=vsuKM/tqQjeZpsIch4ugTLrrzZ2zrDpCFxr33JCVlSv3SfR392bxfMvoeVUUf43vUrOqeFH52N0hhzNjYegcUhty/k/PfYwvS31BlAPT1Mhmd7rEUEJl3T2YJFsWqeTUBuxPPb3TKsuYetTkwtK8JalV+reiWgDz36kYG5r3d30=
Received: from 854af3ed5e24.lan.sk100508.local (cm70-231.liwest.at [212.241.70.231])
	by mail.netcube.li with ESMTPA
	; Tue, 7 Jan 2025 20:22:18 +0100
From: Lukas Schmid <lukas.schmid@netcube.li>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Chen-Yu Tsai <wens@csie.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>,
	Maxime Ripard <mripard@kernel.org>
Cc: Lukas Schmid <lukas.schmid@netcube.li>,
	Andre Przywara <andre.przywara@arm.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-sunxi@lists.linux.dev,
	linux-kernel@vger.kernel.org
Subject: [PATCH v6 3/4] ARM: dts: sunxi: add uart1_pe pinctrl for sun8i-v3s
Date: Tue,  7 Jan 2025 19:18:41 +0000
Message-Id: <20250107191844.4151-4-lukas.schmid@netcube.li>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250107191844.4151-1-lukas.schmid@netcube.li>
References: <20250107191844.4151-1-lukas.schmid@netcube.li>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Added the uart1_pe_pins pinctrl for use by the NetCube
Systems Kumquat board

Signed-off-by: Lukas Schmid <lukas.schmid@netcube.li>
Reviewed-by: Andre Przywara <andre.przywara@arm.com>
---
 arch/arm/boot/dts/allwinner/sun8i-v3s.dtsi | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm/boot/dts/allwinner/sun8i-v3s.dtsi b/arch/arm/boot/dts/allwinner/sun8i-v3s.dtsi
index 9e13c2aa8911..f909b1d4dbca 100644
--- a/arch/arm/boot/dts/allwinner/sun8i-v3s.dtsi
+++ b/arch/arm/boot/dts/allwinner/sun8i-v3s.dtsi
@@ -416,6 +416,12 @@ uart0_pb_pins: uart0-pb-pins {
 				function = "uart0";
 			};
 
+			/omit-if-no-ref/
+			uart1_pe_pins: uart1-pe-pins {
+				pins = "PE21", "PE22";
+				function = "uart1";
+			};
+
 			uart2_pins: uart2-pins {
 				pins = "PB0", "PB1";
 				function = "uart2";
-- 
2.47.1



