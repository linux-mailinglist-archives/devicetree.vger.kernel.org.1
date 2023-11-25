Return-Path: <devicetree+bounces-18812-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 077647F8BCD
	for <lists+devicetree@lfdr.de>; Sat, 25 Nov 2023 15:41:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 83081B21038
	for <lists+devicetree@lfdr.de>; Sat, 25 Nov 2023 14:40:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A2D641EB56;
	Sat, 25 Nov 2023 14:40:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=edgeble-ai.20230601.gappssmtp.com header.i=@edgeble-ai.20230601.gappssmtp.com header.b="3BXkPpJT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-x102a.google.com (mail-pj1-x102a.google.com [IPv6:2607:f8b0:4864:20::102a])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1BC0BC6
	for <devicetree@vger.kernel.org>; Sat, 25 Nov 2023 06:40:51 -0800 (PST)
Received: by mail-pj1-x102a.google.com with SMTP id 98e67ed59e1d1-2855b3d9a9bso1948108a91.2
        for <devicetree@vger.kernel.org>; Sat, 25 Nov 2023 06:40:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20230601.gappssmtp.com; s=20230601; t=1700923250; x=1701528050; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kNBeKi0rAQB1+toxqqlE2nYrDGFed7KQnf2/b2wSloo=;
        b=3BXkPpJThtwAY5uyqDKOdPQEkMl6Qt6inX0Hj6Zz6uzcnFpz5KIPTcO3LEfrQBWpyf
         v7hpyz0vUl2nxGgT4wsYlMJggYY7+oPX+2l2B+Smbh2F1w9ogSPBlHSjsPvUQu3mMEOC
         0nxjS50Dpiw6L+eVUi9GYzvFOw7yif2u6mOnh/DPHNgkAIH5bC0ACEvNWjYfh2Sv1gjM
         XbabmDisyfsKcqKeDGgMgXDgwei/AQ7s9OvxJoznvdtEMLPWwznjevMFfVeX9oOeC6Gt
         6Y9KndIstfc+lmRIw3jtVNIA0U3W/piCVcgsAncFilfE3JNoYENi9Ypzi56IevOjU5sJ
         k2Pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700923250; x=1701528050;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kNBeKi0rAQB1+toxqqlE2nYrDGFed7KQnf2/b2wSloo=;
        b=dXMrxEiFlDnH2Bn/hsSTcD+8zPikJvKAJeU7KTlJmWTOwU71i00dRD0gWnEZgmDcb0
         dGpvWkB9I4DrbGZGUJXKNDlCRqY6DmkkZJeYTM5Tkhy/ULCc8q5cMdcWJlj1IUN2k4iz
         BWbrur9DzUkrVCPMMN3v8n8waHHaLqNNtj37CPXnPntCp/IAkBoxfCFGC2EFlqZx9GMC
         K98XroZuC3BrNjPWUFPAq7RFRr/6MvOoXi6H8vMta16IhBxxpcuzBbEd4Zl/E1Robpa/
         A5vp0O74b+kvtCUaS0U2rU+JCMzZLRCpOzTgOyuZzN/nEvozvsa4zjv8AY1RG7xSEoes
         BAgQ==
X-Gm-Message-State: AOJu0Yy+gJHahnkDHscbNT6ijBsX3b4K8YF4g4tWqOryv4L6zYpvGSMv
	AsIz64+MYspveNWKnuL2KLP9XGWj8DtXlki00cw0pw==
X-Google-Smtp-Source: AGHT+IGgrQuoXz9aS84oakVKvlIXt016m8KWKC6TXzUrZ9EvF6saHWaaHxHERtYqyDBBSLnEetkBeg==
X-Received: by 2002:a17:90b:3852:b0:281:3a2:80ee with SMTP id nl18-20020a17090b385200b0028103a280eemr5538394pjb.14.1700923250627;
        Sat, 25 Nov 2023 06:40:50 -0800 (PST)
Received: from localhost.localdomain ([2405:201:c00a:a208:d471:6d33:4b36:d85])
        by smtp.gmail.com with ESMTPSA id h15-20020a17090aea8f00b002802d264240sm4817998pjz.29.2023.11.25.06.40.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 25 Nov 2023 06:40:50 -0800 (PST)
From: Jagan Teki <jagan@edgeble.ai>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Jagan Teki <jagan@edgeble.ai>
Subject: [PATCH 08/10] arm64: dts: rockchip: Add Edgeble NCM6A-IO M.2 M-Key
Date: Sat, 25 Nov 2023 20:10:10 +0530
Message-Id: <20231125144012.58668-9-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231125144012.58668-1-jagan@edgeble.ai>
References: <20231125144012.58668-1-jagan@edgeble.ai>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Edgeble NCM6A-IO board has M.2 B-Key, E-Key via PCI3x2.

Add support for it.

Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
 .../dts/rockchip/rk3588-edgeble-neu6a-io.dtsi | 30 +++++++++++++++++++
 1 file changed, 30 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-io.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-io.dtsi
index 03a81f1dedf9..77fafcdc6fdf 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-io.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-io.dtsi
@@ -23,6 +23,19 @@ vcc3v3_pcie2x1l0: vcc3v3-pcie2x1l0-regulator {
 		vin-supply = <&vcc_3v3_s3>;
 	};
 
+	vcc3v3_pcie3x2: vcc3v3-minipcie {
+		compatible = "regulator-fixed";
+		enable-active-high;
+		gpios = <&gpio2 RK_PC4 GPIO_ACTIVE_HIGH>; /* PCIE_4G_PWEN */
+		pinctrl-names = "default";
+		pinctrl-0 = <&pcie3x2_vcc3v3_en>;
+		regulator-name = "vcc3v3_pcie3x2";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		startup-delay-us = <5000>;
+		vin-supply = <&vcc5v0_sys>;
+	};
+
 	vcc3v3_pcie3x4: vcc3v3-pcie30 {
 		compatible = "regulator-fixed";
 		enable-active-high;
@@ -74,6 +87,15 @@ &pcie30phy {
 	status = "okay";
 };
 
+/* B-Key, E-Key */
+&pcie3x2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pcie3x2_rst>;
+	reset-gpios = <&gpio4 RK_PB6 GPIO_ACTIVE_HIGH>; /* PCIE30X4_PERSTn_M1_L */
+	vpcie3v3-supply = <&vcc3v3_pcie3x2>;
+	status = "okay";
+};
+
 /* M-Key */
 &pcie3x4 {
 	pinctrl-names = "default";
@@ -91,6 +113,14 @@ pcie2_0_rst: pcie2-0-rst {
 	};
 
 	pcie3 {
+		pcie3x2_rst: pcie3x2-rst {
+			rockchip,pins = <4 RK_PB6 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
+		pcie3x2_vcc3v3_en: pcie3x2-vcc3v3-en {
+			rockchip,pins = <2 RK_PC4 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
 		pcie3x4_rst: pcie3x4-rst {
 			rockchip,pins = <4 RK_PB0 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
-- 
2.25.1


