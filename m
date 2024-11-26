Return-Path: <devicetree+bounces-124751-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 57D029D9CAB
	for <lists+devicetree@lfdr.de>; Tue, 26 Nov 2024 18:37:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 15E8AB25277
	for <lists+devicetree@lfdr.de>; Tue, 26 Nov 2024 17:33:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 37AF41DACB4;
	Tue, 26 Nov 2024 17:33:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=smile.fr header.i=@smile.fr header.b="JoinQbsy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BAD6A1CEE9B
	for <devicetree@vger.kernel.org>; Tue, 26 Nov 2024 17:33:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732642397; cv=none; b=j6Uw3p36+ycWwHQFxW4Vd9O6TfZiD0hTwcz4DM/jj3racrZVKDmgu3xFMxocrMYJ6JzL8lz1PL5hASByn1XaCs26Br4OXwuspKxqEYXpEtYXqGqS35QGVaaOiZyW8167N6E8E6XwPjKCCnmlzPtGZdhIqowZLFmotLrO2mPB3Vs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732642397; c=relaxed/simple;
	bh=eHuuzWF/RBD95AGh3ZSbBDHlU1JgErlDYZ2iVCVoQCk=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=eZwdUXoOz79VZPBHKZTsrCf2qFQTwcc3E35y2Ux+e/kXQ0T+QHbRhJs0BZwUeOyhU3qR4F/NcJgtiBJqWmYAFNaiQffbvTdBehl9qd/RSxd6hS8B2DrhnaVB8wmr9ObEhEIu4ejQQ1qY/U0wszy1MAaRKcvxGBemut7yK4TatGc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=smile.fr; spf=pass smtp.mailfrom=smile.fr; dkim=pass (1024-bit key) header.d=smile.fr header.i=@smile.fr header.b=JoinQbsy; arc=none smtp.client-ip=209.85.221.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=smile.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=smile.fr
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-3824a8a5c56so4028645f8f.3
        for <devicetree@vger.kernel.org>; Tue, 26 Nov 2024 09:33:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile.fr; s=google; t=1732642392; x=1733247192; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=9oOV6Xf/f1fBBujFiCnK10GJBxK35mB0wxBS2n5gZfU=;
        b=JoinQbsy8YTH9AIbeBWuvutA+CMsxhnroeRA3jbDy6959dJ+Kz9fsFJhk1kdDJrEvk
         NokJOCaIPl39cHr7zznmSEjqDLl3OUBw/cil01PUfCa0PBu2t662+SM4x1ii3ikPKAx+
         AnqkYZ5Qu6PoYEVSJiu7riooknill1bLqe1qU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732642392; x=1733247192;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9oOV6Xf/f1fBBujFiCnK10GJBxK35mB0wxBS2n5gZfU=;
        b=OPnmmQjJ8tg4vk9ODQ0GaPPEqFNtetWiod9xvEaOeFKzxeKVGdAJxQABq34Zs9q9jP
         4pGtTXVYU4u3SE4PRH7zz2lqQ6mVVlF1rpEuIFJ81BdkQCfEDAMoO2gU8KLTXIgLvDpk
         xkW+yAmx6NGH1l8vq6gibTyH4yHllHXi0cr3qodEiL2DEabyYoZml005ska05fpf0XHP
         uFQ8GjTE7xDxQUzkwVByFwnpjV7Bqh7+JnW1HsssRMr6M0fTKrFhq1Za733KbVE6TN25
         AASxJJxsprj3aNm7Dndw8jt0lc5qhAlHcj2o41GtyNccLc5bCs/38yLBxdbDdh17lIvo
         Kchg==
X-Gm-Message-State: AOJu0YwLOtwPXlPY9X+l2qKMTz/O/X6l0SPVzp6SDVzuVunWdKVbhbZY
	67/aNwzjRKvl8A/0nID24g8agxUtvTy1dkfJgJAgkjIyQr/ekGIuv3BYcbe6u2LroH8cfFO3cWM
	e
X-Gm-Gg: ASbGncudykbyG8y3SU5MO6zFWBLeiK5eA/3zTQS8I0022JsGOsosBWU8Y0qcCVZK11g
	llKChRpWD8VYO+7eTyr/QbZDuJkCZnD9N3JK8hNSPirSi/qh2jwK817i4huNfeDfYZ17ivp+DPL
	aeMly8CnBhOH3VpNIU9i4fMBUqxxEtst52wcVD/t74D0HT2ixpR1vcygtZerzMs9fNg+3DabKPD
	sfOtxnZT6FjEIP+kDaXuTgzhocK7oGnJ5uQvOMEkAT63EIVWjKx720jG6DFUY52Fumd+9ZVaR36
	OhA33VSyBMDxWPaJtTViqbm9mLBeBGuyNs611sqUE/HlQXM=
X-Google-Smtp-Source: AGHT+IH+jDs/Oi/Yj699wtUEbjT8GQBWJI0mOVavIZ5Y1ZVm3lZYt0A+bSeHwUyDg6sCEgug0Vl6Ag==
X-Received: by 2002:a05:6000:18ac:b0:382:4b43:c3a with SMTP id ffacd0b85a97d-38260b45e0cmr16212760f8f.2.1732642391966;
        Tue, 26 Nov 2024 09:33:11 -0800 (PST)
Received: from P-NTS-Evian.home (2a01cb05949d5800e3ef2d7a4131071f.ipv6.abo.wanadoo.fr. [2a01:cb05:949d:5800:e3ef:2d7a:4131:71f])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3825fbe901esm14043844f8f.87.2024.11.26.09.33.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Nov 2024 09:33:11 -0800 (PST)
From: Romain Naour <romain.naour@smile.fr>
To: devicetree@vger.kernel.org
Cc: linux-arm-kernel@lists.infradead.org,
	linux-omap@vger.kernel.org,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	kristo@kernel.org,
	vigneshr@ti.com,
	nm@ti.com,
	Romain Naour <romain.naour@skf.com>
Subject: [PATCH] arm64: dts: ti: k3-j721e-beagleboneai64: Enable ACSPCIE output for PCIe1
Date: Tue, 26 Nov 2024 18:33:07 +0100
Message-ID: <20241126173307.4054601-1-romain.naour@smile.fr>
X-Mailer: git-send-email 2.45.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Romain Naour <romain.naour@skf.com>

Unlike the SK-TDA4VM (k3-j721e-sk) board, there is no clock generator
(CDCI6214RGET) on the BeagleBone AI-64 (k3-j721e-beagleboneai64) to
provide PCIe refclk signal to PCIe Endponts. So the ACSPCIE module must
provide refclk through PCIe_REFCLK pins.

Use the new "ti,syscon-acspcie-proxy-ctrl" property to enable ACSPCIE
module's PAD IO Buffers.

Signed-off-by: Romain Naour <romain.naour@skf.com>
---
With this patch, we can remove "HACK: Sierra: Drive clock out" patch
applied on vendor kernel for BeagleBone AI-64:
https://openbeagle.org/beagleboard/linux/-/commit/ad65d7ef675966cdbc5d75f2bd545fad1914ba9b
---
 arch/arm64/boot/dts/ti/k3-j721e-beagleboneai64.dts |  4 ++++
 arch/arm64/boot/dts/ti/k3-j721e-main.dtsi          | 10 ++++++++--
 2 files changed, 12 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/ti/k3-j721e-beagleboneai64.dts b/arch/arm64/boot/dts/ti/k3-j721e-beagleboneai64.dts
index fb899c99753e..681e3af7ce6e 100644
--- a/arch/arm64/boot/dts/ti/k3-j721e-beagleboneai64.dts
+++ b/arch/arm64/boot/dts/ti/k3-j721e-beagleboneai64.dts
@@ -859,6 +859,10 @@ &pcie1_rc {
 	num-lanes = <2>;
 	max-link-speed = <3>;
 	reset-gpios = <&main_gpio0 22 GPIO_ACTIVE_HIGH>;
+	/* There is no on-board or external reference clock generators,
+	 * use refclk from the ACSPCIE module's PAD IO Buffers.
+	 */
+	ti,syscon-acspcie-proxy-ctrl = <&acspcie0_proxy_ctrl 0x3>;
 };
 
 &ufs_wrapper {
diff --git a/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi b/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi
index 0da785be80ff..9f47e7672922 100644
--- a/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi
@@ -5,6 +5,7 @@
  * Copyright (C) 2016-2024 Texas Instruments Incorporated - https://www.ti.com/
  */
 #include <dt-bindings/phy/phy.h>
+#include <dt-bindings/phy/phy-cadence.h>
 #include <dt-bindings/phy/phy-ti.h>
 #include <dt-bindings/mux/mux.h>
 
@@ -82,6 +83,11 @@ ehrpwm_tbclk: clock-controller@4140 {
 			reg = <0x4140 0x18>;
 			#clock-cells = <1>;
 		};
+
+		acspcie0_proxy_ctrl: acspcie0-ctrl@18090 {
+			compatible = "ti,j784s4-acspcie-proxy-ctrl", "syscon";
+			reg = <0x18090 0x4>;
+		};
 	};
 
 	main_ehrpwm0: pwm@3000000 {
@@ -978,8 +984,8 @@ pcie1_rc: pcie@2910000 {
 		max-link-speed = <3>;
 		num-lanes = <2>;
 		power-domains = <&k3_pds 240 TI_SCI_PD_EXCLUSIVE>;
-		clocks = <&k3_clks 240 1>;
-		clock-names = "fck";
+		clocks = <&k3_clks 240 1>, <&serdes1 CDNS_SIERRA_DERIVED_REFCLK>;
+		clock-names = "fck", "pcie_refclk";
 		#address-cells = <3>;
 		#size-cells = <2>;
 		bus-range = <0x0 0xff>;
-- 
2.45.0


