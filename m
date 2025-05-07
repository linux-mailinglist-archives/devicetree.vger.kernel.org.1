Return-Path: <devicetree+bounces-174831-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 098C3AAECF9
	for <lists+devicetree@lfdr.de>; Wed,  7 May 2025 22:23:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0D1691C44A7A
	for <lists+devicetree@lfdr.de>; Wed,  7 May 2025 20:23:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4734628ECFC;
	Wed,  7 May 2025 20:22:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="SzW4Kbo/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f42.google.com (mail-ot1-f42.google.com [209.85.210.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8204128ECD4
	for <devicetree@vger.kernel.org>; Wed,  7 May 2025 20:22:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746649366; cv=none; b=HFVywXc/7TtT4Rsj1tRbj2brwLIbOq1J0AGodNskgDcqaKIYPwOwInZ/NPHrlBU7C9a6TjBg5tDktRbuopinSqseNP3pnTNKKQ+2QbvxfWJV6KZJSej7ZH0uH1cRTCF4gQ6hoDzuFxc8m1D0r/ETKUqtFpqVvezuUUW28VXgVeY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746649366; c=relaxed/simple;
	bh=IAr6kTxXJCgUz2ugWDrBl/lZUdq4SDIyDLw5leirmvg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=lqV4LhKXwHGPUcXDBTNULCb/aLxsuhAZIm5NiAjk8pXZu/SEM6YJV4j61broOwUtmQdjU4MJtNHe4tGGwGpcXI0mSBEae9d4fZVS1Y35NyoAFZxz6tykURQ5qEbBXz5CnFO264Ysxy73z7RQvVGeuBMrCViG5MS3YX3BqluQezs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=SzW4Kbo/; arc=none smtp.client-ip=209.85.210.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ot1-f42.google.com with SMTP id 46e09a7af769-72b7a53ceb6so197515a34.0
        for <devicetree@vger.kernel.org>; Wed, 07 May 2025 13:22:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1746649362; x=1747254162; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=f9qj4UpUWDjLwg05OrZxsWUBu7HdjL4SGnQbRsqq/XY=;
        b=SzW4Kbo/sHXxPmeyisjfMwqOMTV6C8tuO7wOQftc0jrF3p5tJqs1a2oUymcb6axvzD
         uh4m8MecTnT5m2tHOTCuVrs5ASX4i1USTSiVIwxAEyYa9/qRpXPUt/ccsv//yfNfIT/+
         44RyUK0ZGiJ0T4pBnv+Vw0sj9/r4ht8Jnhzwsh+SB/SgQ3FtcJeem53/vbqgYx3vlkut
         GbUnyVpEEFTSgl8pGen9ShliuzHRCor2rlJ1onsOaPheBHAF1cH9LpeLe7UZKw1O3EdF
         iBRNq9IxoAveLOg20ZubFSecmky9nC9bIVgWPQMLwZ7HUh8RJfZgYm4OJPJk0nlFomXd
         XL9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746649362; x=1747254162;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=f9qj4UpUWDjLwg05OrZxsWUBu7HdjL4SGnQbRsqq/XY=;
        b=rTwPSVlb1AOqTkwBHpFL1sTO7lOL6qa4yu1iJAQHKVtv6E9ygmC702SphvAzAdZO34
         cseVl8hEuwhHfbKLCcprR21/q2QdL9obX/NJLmxf79E0UY9kjpnujvlC91nFh61sb8fy
         S1FPmhOtK/4dHiUTeeZf75mhr1GqXJkl8FY/7dPbAL/2dkSBQfa04sumIRF1iNGH4+6f
         lwEefJYf7rSGgqCJgRAyr53xtZKxDWNaidKcy7lV5SyB8J0pR/cvOJsNGa9URkCkZpNM
         W4nkLDJi+2kJ4+uduBERkQQ8TYRJOwxq3fHqq+5340KRZqK8E5OVtesD4PkkZUAPRNi+
         3PKw==
X-Gm-Message-State: AOJu0Yy/txQZX5NvkFRigjmtzWWXY4/KxHWQzaVLLKFrUnHK5mBSpSig
	cdDLSR2qYL0uFp2H6Uw4BbuVQtsEnZW6Fi/AoDLi7tona4WmkjUd
X-Gm-Gg: ASbGnctwRENHfn/iIZFq6hSm190aWDy95lQ0SNpb24JSK5XbBnm8rVc7jfQld326i8i
	hds7tMsJzgAKdCIGj9/C9wrzFL7qX5Ru4G/SG1Z7eZz87ii0sodCdj/qj7UPVsC1KemYwFe0cgo
	j4LGRaGFCeJgCEiScKPhhoLOdxCsKKCKZJcOS/8RUNECFFhXrUJJ5DTyGSniI1vLovT6rrGohU2
	ToaLCW4VTFASDmu7CotLzBKt/MJprrRaI/8gD1kLTo3WgVDubFxxEsWqdlGPPGBEfYaIb+S+Yhp
	SxSMYJoQfcLbbAdHOyEnJZx0JDnvac6RK4vP6yQqKK2eFX2W9nCcoZdxvMgpavzuuwYaDhM=
X-Google-Smtp-Source: AGHT+IH2oJBKfv/nX9XV+zQRIfTXfUhPN5oWVBe/V5dWv4ffki8mMMLkvqKCrOJpZoakFoKnhSq/+g==
X-Received: by 2002:a05:6830:46:b0:72c:4023:aa19 with SMTP id 46e09a7af769-7321b400a55mr605713a34.7.1746649362625;
        Wed, 07 May 2025 13:22:42 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bcf:e46c:46ba:cecd:a52c])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-732109df2dcsm725945a34.9.2025.05.07.13.22.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 May 2025 13:22:42 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-sunxi@lists.linux.dev
Cc: devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	ryan@testtoast.com,
	macromorgan@hotmail.com,
	p.zabel@pengutronix.de,
	tzimmermann@suse.de,
	maarten.lankhorst@linux.intel.com,
	simona@ffwll.ch,
	airlied@gmail.com,
	mripard@kernel.org,
	samuel@sholland.org,
	jernej.skrabec@gmail.com,
	wens@csie.org,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org
Subject: [PATCH V9 20/24] arm64: dts: allwinner: h616: add display engine, bus and mixer nodes
Date: Wed,  7 May 2025 15:19:39 -0500
Message-ID: <20250507201943.330111-21-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250507201943.330111-1-macroalpha82@gmail.com>
References: <20250507201943.330111-1-macroalpha82@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Chris Morgan <macromorgan@hotmail.com>

The Allwinner H616 and variants (H618, H700 and T507) have a new display
engine variant (DE33). Support has been added to the existing DE2/DE3
sun4i driver in a previous patch series (x). The variant is selected via
the appropriate mixer device tree compatible string.

Add the respective device-tree nodes for the DE, bus, clock and mixer to
the H616 DTSI, and the matching SRAM section for the DE.

Signed-off-by: Jernej Skrabec <jernej.skrabec@gmail.com>
Signed-off-by: Ryan Walklin <ryan@testtoast.com>
Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 .../arm64/boot/dts/allwinner/sun50i-h616.dtsi | 59 +++++++++++++++++++
 1 file changed, 59 insertions(+)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h616.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-h616.dtsi
index cdce3dcb8ec0..542d129da9c3 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-h616.dtsi
+++ b/arch/arm64/boot/dts/allwinner/sun50i-h616.dtsi
@@ -94,6 +94,13 @@ l2_cache: l2-cache {
 		};
 	};
 
+	de: display-engine {
+		compatible = "allwinner,sun50i-h616-display-engine",
+			     "allwinner,sun50i-h6-display-engine";
+		allwinner,pipelines = <&mixer0>;
+		status = "disabled";
+	};
+
 	reserved-memory {
 		#address-cells = <2>;
 		#size-cells = <2>;
@@ -150,6 +157,52 @@ soc {
 		#size-cells = <1>;
 		ranges = <0x0 0x0 0x0 0x40000000>;
 
+		bus: bus@1000000 {
+			compatible = "allwinner,sun50i-h616-de33",
+				     "allwinner,sun50i-a64-de2";
+			reg = <0x1000000 0x400000>;
+			allwinner,sram = <&de33_sram 1>;
+			#address-cells = <1>;
+			#size-cells = <1>;
+			ranges = <0 0x1000000 0x400000>;
+
+			display_clocks: clock@8000 {
+				compatible = "allwinner,sun50i-h616-de33-clk";
+				reg = <0x8000 0x100>;
+				clocks = <&ccu CLK_BUS_DE>, <&ccu CLK_DE>;
+				clock-names = "bus", "mod";
+				resets = <&ccu RST_BUS_DE>;
+				#clock-cells = <1>;
+				#reset-cells = <1>;
+			};
+
+			mixer0: mixer@100000 {
+				compatible = "allwinner,sun50i-h616-de33-mixer-0";
+				reg = <0x100000 0x100000>,
+				      <0x8100 0x40>,
+				      <0x280000 0x20000>;
+				reg-names = "layers", "top", "display";
+				clocks = <&display_clocks CLK_BUS_MIXER0>,
+					 <&display_clocks CLK_MIXER0>;
+				clock-names = "bus", "mod";
+				resets = <&display_clocks RST_MIXER0>;
+				iommus = <&iommu 0>;
+
+				ports {
+					#address-cells = <1>;
+					#size-cells = <0>;
+
+					mixer0_out: port@1 {
+						reg = <1>;
+
+						mixer0_out_tcon_top_mixer0: endpoint {
+							remote-endpoint = <&tcon_top_mixer0_in_mixer0>;
+						};
+					};
+				};
+			};
+		};
+
 		crypto: crypto@1904000 {
 			compatible = "allwinner,sun50i-h616-crypto";
 			reg = <0x01904000 0x800>;
@@ -173,6 +226,12 @@ sram_c: sram@28000 {
 				#address-cells = <1>;
 				#size-cells = <1>;
 				ranges = <0 0x00028000 0x30000>;
+
+				de33_sram: sram-section@0 {
+					compatible = "allwinner,sun50i-h616-sram-c",
+						     "allwinner,sun50i-a64-sram-c";
+					reg = <0x0000 0x1e000>;
+				};
 			};
 		};
 
-- 
2.43.0


