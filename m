Return-Path: <devicetree+bounces-20953-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A4568801CAE
	for <lists+devicetree@lfdr.de>; Sat,  2 Dec 2023 13:42:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5FEB228195C
	for <lists+devicetree@lfdr.de>; Sat,  2 Dec 2023 12:42:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B38AF14F72;
	Sat,  2 Dec 2023 12:42:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="EO950SZ2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com [IPv6:2a00:1450:4864:20::62e])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EE8FB9C;
	Sat,  2 Dec 2023 04:42:08 -0800 (PST)
Received: by mail-ej1-x62e.google.com with SMTP id a640c23a62f3a-a00f67f120aso426280866b.2;
        Sat, 02 Dec 2023 04:42:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1701520927; x=1702125727; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GT6U/Jm1kE8iHTek1ibUnucOypK2mgUYlFeO1cXQKVs=;
        b=EO950SZ2s/lqNo/xU/+CSxh6JQGuLv3OZWhMbKH9/Z9Qt96Y5QOzvW6q3uzUB8ThBj
         +geKpl+k3wROoMXUvf31yD4mEHnsh0hyo7gql7H+GcNmxOoVuec6XAA9HRHn7o86JqhR
         /XW3NTMX/vYovCC/yYiyn3ruP+hgrb/NmeeZXVHPzdLeshHHexGvOMqMH/YgfRKd5cj/
         xNMIvdk3ORRhzr0uUxdykehG07Cx2LWfXTwnPEBr+kNhwHRotRJ1LUHqplwcNHgncHXN
         mDdMJZ33CUAOQe3H2VVrhIkBzxwZCKmsLlEJUhHXAwxGwjyRSh/hvEgb7J80I1+EnFn4
         cVaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701520927; x=1702125727;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GT6U/Jm1kE8iHTek1ibUnucOypK2mgUYlFeO1cXQKVs=;
        b=JpGJ9CHQfmdNnaLOEQdpBjPW2Wa7b1ivuguBQZ/VGUgI0GDcLdgWONMpsHMjA3/0th
         iJBvSwqsRLMclveKYbi9jP2xFyBDR+Z04YhQUsmNa2EKx6wpOHnqEalb4lUMAOnklOnm
         Ha8wbTOwViYSwWnisRI7dnqjKC7vyH+eXFNDS7Eyb6aHzp/BYfr9Z1zKKO9qw0uIHXsM
         7j0Xxd/bprMxClNFctWr0dJS0LwQGJDGqJeZfE2cORS11YkXquh7PXGuo1uVNwy+lgkk
         WQtuVxUwYEfADjoWRHuMmhX+/XvAkZbN4vzn5A/gevmVX4NA4WAFUR9wnk7f1fWPP24e
         zFqA==
X-Gm-Message-State: AOJu0YxwSkSjr3rOrIQZgWHUl0YQH4plOLH80MeV99p46VdjWrypz9DF
	TXbWcAh9mO8r8sbG/kV+AQ==
X-Google-Smtp-Source: AGHT+IFChGLYoqEgdEQJLZDJTHMTrQhqKoKtU5gV9YLdkn2cOl7wagJhu5UWTR7yjlabiTPJeZkH9w==
X-Received: by 2002:a17:906:24e:b0:a19:a19b:55d9 with SMTP id 14-20020a170906024e00b00a19a19b55d9mr2085815ejl.105.1701520927185;
        Sat, 02 Dec 2023 04:42:07 -0800 (PST)
Received: from U4.lan ([2a02:810b:f40:4300:908e:b829:354b:f8ee])
        by smtp.gmail.com with ESMTPSA id q19-20020a1709060e5300b009a19701e7b5sm3009602eji.96.2023.12.02.04.42.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 02 Dec 2023 04:42:06 -0800 (PST)
From: Alex Bee <knaerzche@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Alex Bee <knaerzche@gmail.com>
Subject: [PATCH v2 1/2] ARM: dts: rockchip: Add gmac node for RK3128
Date: Sat,  2 Dec 2023 13:41:58 +0100
Message-ID: <20231202124158.65615-3-knaerzche@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231202124158.65615-2-knaerzche@gmail.com>
References: <20231202124158.65615-2-knaerzche@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

RK3128's gmac is based on Synopsys Ethernet GMAC IP core.
Add it to the devicetree.

Signed-off-by: Alex Bee <knaerzche@gmail.com>
---
 arch/arm/boot/dts/rockchip/rk3128.dtsi | 28 ++++++++++++++++++++++++++
 1 file changed, 28 insertions(+)

diff --git a/arch/arm/boot/dts/rockchip/rk3128.dtsi b/arch/arm/boot/dts/rockchip/rk3128.dtsi
index 4e8b38604ecd..c0c9f0eaffa3 100644
--- a/arch/arm/boot/dts/rockchip/rk3128.dtsi
+++ b/arch/arm/boot/dts/rockchip/rk3128.dtsi
@@ -525,6 +525,34 @@ pdma: dma-controller@20078000 {
 		#dma-cells = <1>;
 	};
 
+	gmac: ethernet@2008c000 {
+		compatible = "rockchip,rk3128-gmac";
+		reg = <0x2008c000 0x4000>;
+		interrupts = <GIC_SPI 56 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 57 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-names = "macirq", "eth_wake_irq";
+		clocks = <&cru SCLK_MAC>,
+			 <&cru SCLK_MAC_RX>, <&cru SCLK_MAC_TX>,
+			 <&cru SCLK_MAC_REF>, <&cru SCLK_MAC_REFOUT>,
+			 <&cru ACLK_GMAC>, <&cru PCLK_GMAC>;
+		clock-names = "stmmaceth",
+			      "mac_clk_rx", "mac_clk_tx",
+			      "clk_mac_ref", "clk_mac_refout",
+			      "aclk_mac", "pclk_mac";
+		resets = <&cru SRST_GMAC>;
+		reset-names = "stmmaceth";
+		rockchip,grf = <&grf>;
+		rx-fifo-depth = <4096>;
+		tx-fifo-depth = <2048>;
+		status = "disabled";
+
+		mdio: mdio {
+			compatible = "snps,dwmac-mdio";
+			#address-cells = <0x1>;
+			#size-cells = <0x0>;
+		};
+	};
+
 	pinctrl: pinctrl {
 		compatible = "rockchip,rk3128-pinctrl";
 		rockchip,grf = <&grf>;
-- 
2.43.0


