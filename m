Return-Path: <devicetree+bounces-25026-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AF3A6811F67
	for <lists+devicetree@lfdr.de>; Wed, 13 Dec 2023 20:51:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4FE4D2820E4
	for <lists+devicetree@lfdr.de>; Wed, 13 Dec 2023 19:51:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DF80477F2F;
	Wed, 13 Dec 2023 19:51:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Xny2VQsd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 11F839C;
	Wed, 13 Dec 2023 11:51:35 -0800 (PST)
Received: by mail-wm1-x32d.google.com with SMTP id 5b1f17b1804b1-40c19f5f822so41626955e9.1;
        Wed, 13 Dec 2023 11:51:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1702497093; x=1703101893; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+bG6mHprJzSYZBwi1h+X+EBITVK9IcgyHPusQHlrEts=;
        b=Xny2VQsd2zixTqJrmv+cDPD994iRyDXAVmDiba13+MHosa/IAUexKkxgYEFZYxGm7Q
         y3LseDTXVoPoQuKxqXo+PHAChAsQJqK7b6Jz2t9coW8IViO8/Fs+2f7kTi8IBA2u425u
         92i2QmSNKxX+B8yTZR9trtJITVnyqoDUEE3r/cFBdoUbWx9sK25p1RB35dB8yqcZTY2n
         O8AzTh/HQidtq2DKoMq/CgfF3RSxsp0eax6couuMRJg5y4sTl9a5eByLxVyPv6XzujAF
         arKqxaZNKkzqE6LMlZQT3+PhRukYTivB7sPa9DJ6tX0Sem32IrpqvS8yigSr0NsE4j9Q
         Qf9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702497093; x=1703101893;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+bG6mHprJzSYZBwi1h+X+EBITVK9IcgyHPusQHlrEts=;
        b=fORy3yM+1Lnj5em/sw4p2yOmAVW9s5MeBQZ1qX5bRgrh1AYo+jdN2Rh94wnZRU4JOi
         rnuqu/7gsn+FdBUg8jTar4JlRfbLqG8x0/91hKqSrzZje8IvpMhf9C+gowQT0xrOJ94D
         LJFKNdREmX3oN91l5jJO0ffz3/AqFVp2JAHxb3lddBXWkdTv1LziCxWHQMwZ16MJMRPN
         02I8hkOi8RzzIpwqS3+Hw7FSCdAwK53kenlcMNqex8/fO+fTyKCI+QxQCDDWpJSZMQxT
         7o/CQ9Ceu1qP19e5z9noqx8oXrjNwYZ4uXa1mJy1cbOlqyh7FfuhoZNh4VjIFOoqU8KR
         DkuQ==
X-Gm-Message-State: AOJu0YysnTNS2WD77BRTb8LK/6Tn3xN7g2XliEK4ss7ZoWtKtLbTFVwx
	OakYka2pd5quXEiKk+XtoQ==
X-Google-Smtp-Source: AGHT+IFRAbuvo+AB1xrGk5ZpZVLEeTXGFu7yh6ePcgyz+hlOtupWmzw76K4PJsqzujbcgJRctTp1qw==
X-Received: by 2002:a05:600c:3381:b0:40b:5e4a:2360 with SMTP id o1-20020a05600c338100b0040b5e4a2360mr4804554wmp.98.1702497093548;
        Wed, 13 Dec 2023 11:51:33 -0800 (PST)
Received: from U4.lan ([2a02:810b:f40:4300:92dc:8b1c:e01c:b93c])
        by smtp.gmail.com with ESMTPSA id fm14-20020a05600c0c0e00b00407b93d8085sm24050698wmb.27.2023.12.13.11.51.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Dec 2023 11:51:33 -0800 (PST)
From: Alex Bee <knaerzche@gmail.com>
To: Sandy Huang <hjc@rock-chips.com>,
	=?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
	Andy Yan <andyshrk@163.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>
Cc: David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Alex Bee <knaerzche@gmail.com>
Subject: [PATCH 10/11] ARM: dts rockchip: Add HDMI node for RK3128
Date: Wed, 13 Dec 2023 20:51:24 +0100
Message-ID: <20231213195125.212923-11-knaerzche@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231213195125.212923-1-knaerzche@gmail.com>
References: <20231213195125.212923-1-knaerzche@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

RK3128 has Innosilicon based HDMI TX controller similar to the one found in
RK3036.
Add it and the respective port nodes to the SoC device tree.

Signed-off-by: Alex Bee <knaerzche@gmail.com>
---
 arch/arm/boot/dts/rockchip/rk3128.dtsi | 33 ++++++++++++++++++++++++++
 1 file changed, 33 insertions(+)

diff --git a/arch/arm/boot/dts/rockchip/rk3128.dtsi b/arch/arm/boot/dts/rockchip/rk3128.dtsi
index 1a3bc8b2bc6e..fb98873fd94e 100644
--- a/arch/arm/boot/dts/rockchip/rk3128.dtsi
+++ b/arch/arm/boot/dts/rockchip/rk3128.dtsi
@@ -270,6 +270,11 @@ vop: vop@1010e000 {
 		vop_out: port {
 			#address-cells = <1>;
 			#size-cells = <0>;
+
+			vop_out_hdmi: endpoint@0 {
+				reg = <0>;
+				remote-endpoint = <&hdmi_in_vop>;
+			};
 		};
 	};
 
@@ -463,6 +468,34 @@ usb2phy_otg: otg-port {
 		};
 	};
 
+	hdmi: hdmi@20034000 {
+		compatible = "rockchip,rk3128-inno-hdmi";
+		reg = <0x20034000 0x4000>;
+		interrupts = <GIC_SPI 45 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru PCLK_HDMI>, <&cru DCLK_VOP>;
+		clock-names = "pclk", "ref";
+		pinctrl-names = "default";
+		pinctrl-0 = <&hdmii2c_xfer &hdmi_hpd &hdmi_cec>;
+		power-domains = <&power RK3128_PD_VIO>;
+		status = "disabled";
+
+		ports {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			hdmi_in: port@0 {
+				reg = <0>;
+				hdmi_in_vop: endpoint {
+					remote-endpoint = <&vop_out_hdmi>;
+				};
+			};
+
+			hdmi_out: port@1 {
+				reg = <1>;
+			};
+		};
+	};
+
 	timer0: timer@20044000 {
 		compatible = "rockchip,rk3128-timer", "rockchip,rk3288-timer";
 		reg = <0x20044000 0x20>;
-- 
2.43.0


