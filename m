Return-Path: <devicetree+bounces-136920-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CCC3DA06D70
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 06:17:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id D6CC17A29B3
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 05:16:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C7A50201249;
	Thu,  9 Jan 2025 05:16:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ljjax2Oe"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f41.google.com (mail-ot1-f41.google.com [209.85.210.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4079217C21E
	for <devicetree@vger.kernel.org>; Thu,  9 Jan 2025 05:16:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736399819; cv=none; b=N7AyPs5i8r6a4ZHq/abfOOOKaXbzJOqFifE2WqBo/kLoXDc+mMxNlWg7bg77pMHRwZ7tmNXKrRHANEjQlHHHC7MmB+k7mPBhP1rPHHkrCBcAN2aj1fzoltGFRmtAQ+Wn42MkJAIArGKnuKSXwXmqY9O1DINdm92RCcdhqYnmwsY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736399819; c=relaxed/simple;
	bh=yemAYE/O/0i8bawf74tTjL4IepEYb9tFhMFby2rOkaY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=I/MthEJZAstmmLYjU2Ck5k9xGl0GE0DMU1kw2btm45DULNx6vGVi+gqco+uQMS0axnflRG1zUbOV+/VN+flbpXrZoR14u6V/rW/zyCILvyfb/2ufjyPD3JsFOu/sOJSiwlnr1fjdOxJTIKy/ZQ/7e0XdEt8Gv8Og5HLhsNg0x2M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ljjax2Oe; arc=none smtp.client-ip=209.85.210.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ot1-f41.google.com with SMTP id 46e09a7af769-71e3167b90dso283424a34.0
        for <devicetree@vger.kernel.org>; Wed, 08 Jan 2025 21:16:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1736399817; x=1737004617; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xhbPOgs5hdCM6+iNzYizeI0jRjlgIwhloeZJA197DFE=;
        b=ljjax2OeIPmck/hEVBq1fwA/SVKcCAb8Q56pF8fAE2+JeHVt3QEdzuFO/2trXgrnVV
         uCS242HdZcR/TTgcGSh5OWIHeFOclxOlOJ5qOusw9oapLOvSHs2MSnz/JBX1XU0WEuwa
         QkNOtScsKvA6cyIRu0jbv/hOU7R2gm+khSRXcDrbqwLRPxRdpc3uZlTplLlGKdZuwLr+
         S5ndfAyjDyHRZPBONHQp1uOVhE1jQOv6nCvaXnknSOskHkaF+/8/+cIXMBFsEzQ6f+PH
         rTOaByGMlPUstApkAehJFZcFu4sFq2ky9RCI8deYjaWvw6DCx79jxew1erTj0tFincgX
         xKqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736399817; x=1737004617;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xhbPOgs5hdCM6+iNzYizeI0jRjlgIwhloeZJA197DFE=;
        b=nNlHy3yfKCYXzyI2PxXPI2sxMIn2Wva+AMo+ujgdjNOc0P/IKT7dc01w8I60SbMmjV
         MckpbOc/cFyPAHj6vvtFWUbfXCGcdRTHtbnj43iS+ITdMNxcCdOtDyw+YH7wiTAazlUa
         ooCz0hK+CHncRY2NrngtZ74bIxKCut9f2nVeHyYcuFWmg9uxRBz+1poqw8ICQ6H89lA4
         uxGJwc1ulrzS51mEktf6DDCP7OSP/J2AfmlXYgryyO5Mg54wCqUB2Z1XXaChS4lHqZfP
         u0r7bgbE2MVr1yR7UC0fuO7ur+40tuEA6ZWVFa3y0zHkcdnmJxeVzfptAQrijmrJwgFu
         h1rg==
X-Forwarded-Encrypted: i=1; AJvYcCWZObbWt7iAOEIXfiPirRHLny8kRWSWAOXslJvFhhOApgzoVxwBWISaOTG6klRdSVVrUPY+EUwjRtEP@vger.kernel.org
X-Gm-Message-State: AOJu0YxLCan7geaDDnx8TpXv0UzPDxw160ODqFjfFqUb74rLOn2sfWRQ
	WqxcAvlL8hJzYz5ZTqSm+tYR/vwcoxNN9V5+42z9NEunqAGILQAna82FjAEr
X-Gm-Gg: ASbGnct6/Sn+4kESZnUMP9BO4pfpwFeGrbRl0tMP07H68hOmvaNnPyMPjH/Wf/n3TTU
	EPEZaRiQyP4v/vt2yyiEdlDh+G0lcSOB24h0PItC/NRvo2ZIgo/85XAU5vmvWBMKN/bqDf7HxfT
	Ys/oatLVHf9Dw9mzO4K/RD75Jm1HD3/a+u0WReQZHW4UdnZ6S0nALLzyqh+2pHZdvq6LwQ38Bm3
	vAE7Qy/aUAKE6DX6hQyPyxaSAthE8JglyVCcfVevJwfS/UsQlh121v+64YhtAij+w==
X-Google-Smtp-Source: AGHT+IEpt0d5ijmwFkkrX4I7/Zuu+7GGnQCle9sRDy4Mh3arQmHmqyc3VJTxBx4Hrg0pJkqoZChGFg==
X-Received: by 2002:a05:6830:6213:b0:718:d31:feb8 with SMTP id 46e09a7af769-721e2e2ded2mr3597170a34.7.1736399817306;
        Wed, 08 Jan 2025 21:16:57 -0800 (PST)
Received: from tower.cjhon.com ([2603:8081:ad00:4a:f022:ffa3:5bc0:c1c3])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-723185481bcsm187612a34.21.2025.01.08.21.16.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Jan 2025 21:16:56 -0800 (PST)
From: Jimmy Hon <honyuenkwun@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Ondrej Jirman <megi@xff.cz>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Jimmy Hon <honyuenkwun@gmail.com>
Subject: [PATCH v8 4/4] arm64: dts: rockchip: Enable HDMI1 on Orange Pi 5 Max
Date: Wed,  8 Jan 2025 23:16:18 -0600
Message-ID: <20250109051619.1825-5-honyuenkwun@gmail.com>
X-Mailer: git-send-email 2.47.1
In-Reply-To: <20250109051619.1825-1-honyuenkwun@gmail.com>
References: <20250109051619.1825-1-honyuenkwun@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Enable the second HDMI output port on the Orange Pi 5 Max

Signed-off-by: Jimmy Hon <honyuenkwun@gmail.com>
---
 .../dts/rockchip/rk3588-orangepi-5-max.dts    | 41 +++++++++++++++++++
 1 file changed, 41 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-max.dts b/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-max.dts
index ce44549babf4..ecfbed2d0059 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-max.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-max.dts
@@ -21,6 +21,17 @@ hdmi0_con_in: endpoint {
 			};
 		};
 	};
+
+	hdmi1-con {
+		compatible = "hdmi-connector";
+		type = "a";
+
+		port {
+			hdmi1_con_in: endpoint {
+				remote-endpoint = <&hdmi1_out_con>;
+			};
+		};
+	};
 };
 
 &hdmi0 {
@@ -39,10 +50,33 @@ hdmi0_out_con: endpoint {
 	};
 };
 
+&hdmi1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&hdmim0_tx1_cec &hdmim0_tx1_hpd
+			     &hdmim1_tx1_scl &hdmim1_tx1_sda>;
+	status = "okay";
+};
+
+&hdmi1_in {
+	hdmi1_in_vp1: endpoint {
+		remote-endpoint = <&vp1_out_hdmi1>;
+	};
+};
+
+&hdmi1_out {
+	hdmi1_out_con: endpoint {
+		remote-endpoint = <&hdmi1_con_in>;
+	};
+};
+
 &hdptxphy_hdmi0 {
 	status = "okay";
 };
 
+&hdptxphy1 {
+	status = "okay";
+};
+
 &pinctrl {
 
 	usb {
@@ -58,3 +92,10 @@ vp0_out_hdmi0: endpoint@ROCKCHIP_VOP2_EP_HDMI0 {
 		remote-endpoint = <&hdmi0_in_vp0>;
 	};
 };
+
+&vp1 {
+	vp1_out_hdmi1: endpoint@ROCKCHIP_VOP2_EP_HDMI1 {
+		reg = <ROCKCHIP_VOP2_EP_HDMI1>;
+		remote-endpoint = <&hdmi1_in_vp1>;
+	};
+};
-- 
2.47.1


