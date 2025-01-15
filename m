Return-Path: <devicetree+bounces-138622-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 81D00A1168C
	for <lists+devicetree@lfdr.de>; Wed, 15 Jan 2025 02:27:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 569E53A72E0
	for <lists+devicetree@lfdr.de>; Wed, 15 Jan 2025 01:27:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7B65086332;
	Wed, 15 Jan 2025 01:26:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="hxntcDLz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f174.google.com (mail-qt1-f174.google.com [209.85.160.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1A1C84D29;
	Wed, 15 Jan 2025 01:26:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736904411; cv=none; b=L82s22WnUxf++JY2pGtZO6jVY6XRvfRtMQUpqNFM3f3pJZQWaERDEWO18zRx25N6t1B5jQshxe6IgHSsFDczqia2r7su5loGgID0vq8OhJEO/bx7unbepiWKfiVn/7AMag4g3DZHskKSs7eoSF/GtbC0hz86EPRu9EsXZEH7bpc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736904411; c=relaxed/simple;
	bh=UprjdVHx1LkxBMjXINeLhJqTQcjHtxQd0WJx6sHcEHY=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=mELczLdgUxyQdYCIR0LOJsC2/GVhTp+nDDwq7d6hFO1hWIKL1MWKVSF3VQgID0rhyGQl6kGX9TofELFczg7hKv03o1Cn60yW74g64nG9YLKDTP6T7psZw2g5qxH4S67KyjkhOdnqxxI6yt4O8nkk/FLpuOuzy01TUE7XMZHMjx0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=hxntcDLz; arc=none smtp.client-ip=209.85.160.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qt1-f174.google.com with SMTP id d75a77b69052e-467a3c85e11so41339141cf.2;
        Tue, 14 Jan 2025 17:26:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1736904409; x=1737509209; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yyuiOWHUod2sqfzhej2zdZRrKrw1CUBKcQwVtOUV0E8=;
        b=hxntcDLzNELHiB6VrR9JMomvlhryoJqMkT6iTjiGmuXx1nM0eliZPdz5j+IYou7zkR
         1WF3A/QUX1IQTgAYfyBZ/r9+Xm8HuZzZc1I03auzJqX2nRrjKTlB1Ldrax2gSiGRQZjD
         NlMzEjet0vB9olT/qbyaxrCa+MGyR6jO38lX4oUepUN/rgJiXBjqovQbQfRH6qQR68di
         aOhIdV3Ysxmdg02xbIrMWkEY/vj1ydY6SUjN0wz6ZfMm0jVvzBpV0LTyrwzbRQtsjYGa
         TMGpDduCjA5DUT3rGQh6hRb7ANDU4VzWPev0mhRsQP315sBXChQXPIIV/1FrYxbr6L7d
         8aaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736904409; x=1737509209;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yyuiOWHUod2sqfzhej2zdZRrKrw1CUBKcQwVtOUV0E8=;
        b=OGJk8S5gXXPcwjNlX9WlGaw6S0j+hfqlSLDzONFCjyuDVm0gYmsBt8iu9TmHWjC/Ej
         VwApQLQ+Y7LycqoUrXZ4UjLXwgrBCjMqVtsxNSZfpq/6Lvx1mIytIj7JyIde4z2TMEwt
         nw4ye6wdwGpBmXPgbzMtjcwLHHiax6FmHfD/V6gzrlpdmcW5S35k84XcP8NiMGk3ax90
         6jYjJ0sI3EwhBrThaciI4jNWgIJ1fLQ0vZFQoaOat/6dZI7ULaGvMUBIvhYUza4BiEMK
         k69L9GmBLgyUWEJsly0nFT4Vl/pQvHEV00ytzXnGOW2P2Qbd8wwCl8Cj6Ltf8c7vPlRP
         ZCbw==
X-Forwarded-Encrypted: i=1; AJvYcCWvi4YZkfV2X2wpC8EJsk5s+nqG7CCO9InTzrOl30Vb0NEewlYNZVNcqJTScdxrKtuP+agpm47RCZ8ZSrjr@vger.kernel.org, AJvYcCXDmcprdgG+r8kUzNc+w5ykoRv2TnePR47cXhVV5DYgQvlld30NMJL3ZtDdMO3rcwoh3oVpaR2Beif+@vger.kernel.org
X-Gm-Message-State: AOJu0YzybCE5tzS3ZhvrIBaZn37z6QqgjyKgPrEoWkSE4ug0N2jIPDP3
	wMEyT1YpEWdyZgH9K6lat50tAVHQ0gyaTvKnG02Kktooc8qrX20K
X-Gm-Gg: ASbGncuTWQIF56QZW2qcneO4wLkNzWvCNNUFjF2atvqYdhewcJsAIMxp4jmPS3VB+vt
	3ByvMJ+dARC1ItwUwaX/lJGCPKYQzbhT+VX7ee7DyZxrjh9BydHygAF6FAkpaYzhZYfYFKWHCEY
	pQ6YnL/kMHs3w4KDDHhuSpUNmvC1sQNkl1F/QnuoV/GEiIEkp9UmYI3ijAKTHjXHhJ50oDqtATM
	IAHajTvD8SXkMykhHJav3H0W7U13nIQBfpVXEl9Eexoun/zlCno1CNQOktyJdx8yOBs
X-Google-Smtp-Source: AGHT+IGVwN2rLclQGuxl2u8LG0fj7kqMeY5ZEai4kqHocjNfKR80vQhAtoz97g9hIjYX7GdkJYOSuQ==
X-Received: by 2002:ac8:5916:0:b0:467:706f:14b7 with SMTP id d75a77b69052e-46c710a98ebmr466909541cf.30.1736904408728;
        Tue, 14 Jan 2025 17:26:48 -0800 (PST)
Received: from master-x64.sparksnet ([204.111.227.95])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-46c8733130dsm59933881cf.25.2025.01.14.17.26.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Jan 2025 17:26:47 -0800 (PST)
From: Peter Geis <pgwipeout@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: zyw@rock-chips.com,
	kever.yang@rock-chips.com,
	frank.wang@rock-chips.com,
	william.wu@rock-chips.com,
	wulf@rock-chips.com,
	linux-rockchip@lists.infradead.org,
	Peter Geis <pgwipeout@gmail.com>,
	Alex Bee <knaerzche@gmail.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Diederik de Haas <didi.debian@cknow.org>,
	Dragan Simic <dsimic@manjaro.org>,
	Johan Jonker <jbx6244@gmail.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [RFC PATCH v1 4/6] arm64: dts: rockchip: add rk3328 usb3 phy node
Date: Wed, 15 Jan 2025 01:26:25 +0000
Message-Id: <20250115012628.1035928-5-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250115012628.1035928-1-pgwipeout@gmail.com>
References: <20250115012628.1035928-1-pgwipeout@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add the node for the rk3328 usb3 phy. This node provides a combined usb2
and usb3 phy which are permenantly tied to the dwc3 usb3 controller.

Signed-off-by: Peter Geis <pgwipeout@gmail.com>
---

 arch/arm64/boot/dts/rockchip/rk3328.dtsi | 39 ++++++++++++++++++++++++
 1 file changed, 39 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3328.dtsi b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
index 7d992c3c01ce..181a900d41f9 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
@@ -903,6 +903,43 @@ u2phy_host: host-port {
 		};
 	};
 
+	usb3phy: usb3-phy@ff460000 {
+		compatible = "rockchip,rk3328-usb3phy";
+		reg = <0x0 0xff460000 0x0 0x10000>;
+		clocks = <&cru SCLK_REF_USB3OTG>, <&cru PCLK_USB3PHY_OTG>, <&cru PCLK_USB3PHY_PIPE>;
+		clock-names = "refclk-usb3otg", "usb3phy-otg", "usb3phy-pipe";
+		interrupts = <GIC_SPI 75 IRQ_TYPE_LEVEL_HIGH>, <GIC_SPI 76 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 77 IRQ_TYPE_LEVEL_HIGH>, <GIC_SPI 78 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-names = "bvalid", "id", "linestate", "rxdet";
+		resets = <&cru SRST_USB3PHY_U2>,
+			 <&cru SRST_USB3PHY_U3>,
+			 <&cru SRST_USB3PHY_PIPE>,
+			 <&cru SRST_USB3OTG_UTMI>,
+			 <&cru SRST_USB3PHY_OTG_P>,
+			 <&cru SRST_USB3PHY_PIPE_P>;
+		reset-names = "usb3phy-u2-por", "usb3phy-u3-por",
+			      "usb3phy-pipe-mac", "usb3phy-utmi-mac",
+			      "usb3phy-utmi-apb", "usb3phy-pipe-apb";
+		#address-cells = <2>;
+		#size-cells = <2>;
+		ranges;
+		status = "disabled";
+
+		usb3phy_utmi: utmi-port@ff470000 {
+			compatible = "rockchip,rk3328-usb3phy-utmi";
+			reg = <0x0 0xff470000 0x0 0x8000>;
+			#phy-cells = <0>;
+			status = "disabled";
+		};
+
+		usb3phy_pipe: pipe-port@ff478000 {
+			compatible = "rockchip,rk3328-usb3phy-pipe";
+			reg = <0x0 0xff478000 0x0 0x8000>;
+			#phy-cells = <0>;
+			status = "disabled";
+		};
+	};
+
 	sdmmc: mmc@ff500000 {
 		compatible = "rockchip,rk3328-dw-mshc", "rockchip,rk3288-dw-mshc";
 		reg = <0x0 0xff500000 0x0 0x4000>;
@@ -1067,6 +1104,8 @@ usbdrd3: usb@ff600000 {
 		clock-names = "ref_clk", "suspend_clk",
 			      "bus_clk";
 		dr_mode = "otg";
+		phys = <&usb3phy_utmi>, <&usb3phy_pipe>;
+		phy-names = "usb2-phy", "usb3-phy";
 		phy_type = "utmi_wide";
 		snps,dis-del-phy-power-chg-quirk;
 		snps,dis_enblslpm_quirk;
-- 
2.39.5


