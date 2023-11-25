Return-Path: <devicetree+bounces-18811-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EE2C7F8BCA
	for <lists+devicetree@lfdr.de>; Sat, 25 Nov 2023 15:40:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D0E021C20A96
	for <lists+devicetree@lfdr.de>; Sat, 25 Nov 2023 14:40:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D23AA1F5E6;
	Sat, 25 Nov 2023 14:40:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=edgeble-ai.20230601.gappssmtp.com header.i=@edgeble-ai.20230601.gappssmtp.com header.b="kvcfFlzQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-x42f.google.com (mail-pf1-x42f.google.com [IPv6:2607:f8b0:4864:20::42f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 33813C6
	for <devicetree@vger.kernel.org>; Sat, 25 Nov 2023 06:40:48 -0800 (PST)
Received: by mail-pf1-x42f.google.com with SMTP id d2e1a72fcca58-6cbbfdf72ecso2732577b3a.2
        for <devicetree@vger.kernel.org>; Sat, 25 Nov 2023 06:40:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20230601.gappssmtp.com; s=20230601; t=1700923247; x=1701528047; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QKEDWMfBPp1WAclH7oSu3khFfXytAopfnUhO9Vj98KA=;
        b=kvcfFlzQ/Ulye+NglygVg9628vIDUtQz9iecX7/WbDukqqxAOApQm+sYcg3UUUn5Iw
         AB7R8ep3bfHi9aBDicX8nHaczZPBgBwX3LDI8q3Y5A1+K9Dq/v14WHeQxczj7vgmJ4YX
         QoxHmA8HoOk3OQdp6LUOj/6B01meT48ma9lLQ5E1x/N+EtF4oBmGihRiR5HBQG16d0e0
         JQn+tBRiLWl03LAjqVUL9l8ODfRrZNd7uwjkNQCR0y9OipyRL4lLQB8C46UgQZtarrjm
         QEWNaMRK0pq8wF0ykwXNgCrjd7y5yCfxa1l8kmFvTG4Fvdg3x9nZrzi7+skJ4TK7G0xR
         DFfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700923247; x=1701528047;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QKEDWMfBPp1WAclH7oSu3khFfXytAopfnUhO9Vj98KA=;
        b=N/3MW5Sr9Cm395sYvErnOgSQy+fsADxBRGn8Mt4fOD5zt+5iGHrwUOnqRKsRffPgzK
         qpoFCpo7FxlAKxpuovmx1vq38p4yn76SnfN02ugyjTjAQbWAGSpXO0lJeAvhshIJ3NPm
         QCOYlZq2I5tB8k6r66/Tw0AgzbBGJ4Qh5Jg3qXk6A4uHshOKabQ62Ffa1EidF3jmj2iy
         JYC+c9dObka68NXC43i3owlTZE7p6V9MxxUDHlfjOaWpwpZ22FbiyBq6n7G1Rc8ZrEvG
         0/J95zpFa9B/aDMzAZZYx8Q8RUWx9NK0OomQnuVew3Ob/h+jupDLrdPEyJfNPN4p7Hx1
         wr0w==
X-Gm-Message-State: AOJu0YzrujaWQZbqi8KPxX21eoLG6xXyHweU9exT0l1qGJ0Y73wYY1WU
	wgYN3gkn6L0mCaN4GglSFKlUtA==
X-Google-Smtp-Source: AGHT+IGeeISP31BsUmkQkCAVk/InoGbPydT1uclXvkkvD0g3FlWYJgcjv+QInsfQgcakeAIoBzq10w==
X-Received: by 2002:a05:6a21:33a4:b0:18c:726:920a with SMTP id yy36-20020a056a2133a400b0018c0726920amr6245375pzb.26.1700923247749;
        Sat, 25 Nov 2023 06:40:47 -0800 (PST)
Received: from localhost.localdomain ([2405:201:c00a:a208:d471:6d33:4b36:d85])
        by smtp.gmail.com with ESMTPSA id h15-20020a17090aea8f00b002802d264240sm4817998pjz.29.2023.11.25.06.40.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 25 Nov 2023 06:40:47 -0800 (PST)
From: Jagan Teki <jagan@edgeble.ai>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Jagan Teki <jagan@edgeble.ai>
Subject: [PATCH 07/10] arm64: dts: rockchip: Add Edgeble NCM6A-IO M.2 M-Key
Date: Sat, 25 Nov 2023 20:10:09 +0530
Message-Id: <20231125144012.58668-8-jagan@edgeble.ai>
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

Edgeble NCM6A-IO board has M.2 M-Key via PCI3x4.

Add support for it.

Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
 .../dts/rockchip/rk3588-edgeble-neu6a-io.dtsi | 36 +++++++++++++++++++
 1 file changed, 36 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-io.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-io.dtsi
index 7e838d76fa73..03a81f1dedf9 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-io.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-io.dtsi
@@ -22,6 +22,19 @@ vcc3v3_pcie2x1l0: vcc3v3-pcie2x1l0-regulator {
 		startup-delay-us = <5000>;
 		vin-supply = <&vcc_3v3_s3>;
 	};
+
+	vcc3v3_pcie3x4: vcc3v3-pcie30 {
+		compatible = "regulator-fixed";
+		enable-active-high;
+		gpios = <&gpio2 RK_PC5 GPIO_ACTIVE_HIGH>; /* PCIE30x4_PWREN_H */
+		pinctrl-names = "default";
+		pinctrl-0 = <&pcie3x4_vcc3v3_en>;
+		regulator-name = "vcc3v3_pcie3x4";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		startup-delay-us = <5000>;
+		vin-supply = <&vcc5v0_sys>;
+	};
 };
 
 &combphy0_ps {
@@ -57,6 +70,19 @@ &pcie2x1l0 {
 	status = "okay";
 };
 
+&pcie30phy {
+	status = "okay";
+};
+
+/* M-Key */
+&pcie3x4 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pcie3x4_rst>;
+	reset-gpios = <&gpio4 RK_PB0 GPIO_ACTIVE_HIGH>; /* PCIE30X2_PERSTn_M1_L */
+	vpcie3v3-supply = <&vcc3v3_pcie3x4>;
+	status = "okay";
+};
+
 &pinctrl {
 	pcie2 {
 		pcie2_0_rst: pcie2-0-rst {
@@ -64,6 +90,16 @@ pcie2_0_rst: pcie2-0-rst {
 		};
 	};
 
+	pcie3 {
+		pcie3x4_rst: pcie3x4-rst {
+			rockchip,pins = <4 RK_PB0 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
+		pcie3x4_vcc3v3_en: pcie3x4-vcc3v3-en {
+			rockchip,pins = <2 RK_PC5 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
 	hym8563 {
 		hym8563_int: hym8563-int {
 			rockchip,pins = <0 RK_PB0 RK_FUNC_GPIO &pcfg_pull_none>;
-- 
2.25.1


