Return-Path: <devicetree+bounces-149892-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id BFFF3A40B76
	for <lists+devicetree@lfdr.de>; Sat, 22 Feb 2025 20:35:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7951F18971D8
	for <lists+devicetree@lfdr.de>; Sat, 22 Feb 2025 19:34:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 053872010F5;
	Sat, 22 Feb 2025 19:34:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Jl3vjEBk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f49.google.com (mail-oo1-f49.google.com [209.85.161.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76292201026
	for <devicetree@vger.kernel.org>; Sat, 22 Feb 2025 19:34:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740252861; cv=none; b=BOMhaQulRtPKe1wvF+akfuJiMMkSrnOSy9jr5hRakhlic9yNc8J3Bm+1UGlv69GPq9NOey3NpHlm8o2I/xs4bPuM7FXVxCOE8sO7inUV+khUQOnr54LxCZ3RWGuvF01dyG2k8/SXg4ldvd0VOa94dwgInfP/pvBUfBGKZXybRJc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740252861; c=relaxed/simple;
	bh=ccVUhtOpqnErHakoT1zqMjUV84xMU42ugvKLERpcpqE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=iKXVBFVYPbIsnQcXrdn4nlIlzKNNHWLRrDozcW98EJY2ZjZPCFwa4blC0fpKkJW0YJDCoBEYC4gw7xKoGoX3bqjpHPmsrsR2sbhhOuhEzyRSCHaSLqoewWHEH/qbtqs8VUFLTKsV/uUxp86pIksR7ve5Ym6gi7VOfzQLr/curJM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Jl3vjEBk; arc=none smtp.client-ip=209.85.161.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oo1-f49.google.com with SMTP id 006d021491bc7-5f89aa7a101so1208985eaf.2
        for <devicetree@vger.kernel.org>; Sat, 22 Feb 2025 11:34:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1740252858; x=1740857658; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vZJfOLRNyb+7MiF0dDETPj7ISQ89kkt4dtcttV2i3h8=;
        b=Jl3vjEBk6X5xB92JfwOCcFFZkG5knVCQuR8qYV7uETf7lCYW830+rgK6dQT1Vr7U6t
         YBBNpYGAHjj+a2vSrncXOUGYET13JG/dS7Ccb7ZND4yD/RssoHMerM7h1jHvanLBVu4e
         xSPzF2vx4EAPvdxxgIfoNQTwuyjM/8mBQmsVaHU+4EswTmR9h6IMUcpVfa/GIZCnohRl
         NAzJCXTCqzbnudhgPNLBUSf13bjJXJhHhmdhga5vqlrtkUAygjPqZVuWNTrA3sG7S2QJ
         SApzIkieTUiQi11j8JPDnN4WvEsYbGcJ5xmaZeiJxfeU4PjbhRUXMVlDNE7PjAHQWwoe
         R8+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740252858; x=1740857658;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vZJfOLRNyb+7MiF0dDETPj7ISQ89kkt4dtcttV2i3h8=;
        b=sLbqcOLusMk1cIE5XuBo9TEqGdr651gueFiFu+jRq4HPvXgNLQGh/dR1gbSwKQMi+F
         RExTNMylUPC9aY1JjorWvapd07nUqK26j4TkVpMZUk0BXIlytPWEWNNpy5QdsZ3rbHQ1
         q7cQ6sHp4oKS99Q5LgGBsy49eq1embxcqaQqnKCLKdspqrWE/ZK4Y7OnmE7tGYodjBZl
         NooLwWb4Kwq3yTfLcVv2JXxZzYMJApw0GYyJpOU3ZqwxOENg/DQZOxo/AIDOIjVQSnZi
         iaCLZlL0zSa3yejwezjS1+MuZ1xyL1E51jV2RKdWfvWV71RlnfZP8KWGw3v7ATwa6U/B
         jNOQ==
X-Forwarded-Encrypted: i=1; AJvYcCVYbgQEdVEsY+3VldD09PWeoNNA+reKE5MsKJdRnEGvtm+oxCbvZXI/rkr72qOLbwo9KnNNdMs8LyDE@vger.kernel.org
X-Gm-Message-State: AOJu0YzmhsEfcDA8cguOrVZ83sNeGgXG4IbTiMBl1cS/75+eVJlNHYKS
	oZdSaGADsBGP9xg4G0N1EzQ6gvr7AsZoN0X6hmREGUam6bfovXY8
X-Gm-Gg: ASbGncv0a5OaJ9iS6YAKZLiNHjcmTkyzUOh/iFhCwX1U3Fp0lWe9K0p0EQZGwjqmKwn
	XP8AMdVQepLZL/EGezGghCoeQ+uH11shA+FXq7wd2Xr+7DjWddSfgLXGVqUVALki9v1JbjuaMyl
	0t3QhfRJ8CISZhiBYk8kSdI9ZXJPRS2xGZOJ1c+4QVLrTznFjPQ2PAe8xEQqZX9YO0McXtIEF6A
	AMJzGhKAkjHHjIgooIL0uaxSsPcHC7ix0ZInGfwX7RkPrTSQdODiFwAEcjOp+Z3Vy7dnln9YKEc
	+sEsRERIpZozwoOetuuBfww60tGskFJULg==
X-Google-Smtp-Source: AGHT+IEFP0r53ZXTgL60gIHSGqk9U5lQ72WxXnfCIJYXnmeTVZ9xDCe1lgDArb2xx+SVoq705EIvkg==
X-Received: by 2002:a05:6820:310b:b0:5fc:dd26:a087 with SMTP id 006d021491bc7-5fd19625a36mr5464393eaf.5.1740252858231;
        Sat, 22 Feb 2025 11:34:18 -0800 (PST)
Received: from tower.cjhon.com ([2603:8081:ad00:4a:b69:ffa3:9d4e:2cd7])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-5fce7afabd8sm2724012eaf.34.2025.02.22.11.34.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 22 Feb 2025 11:34:17 -0800 (PST)
From: Jimmy Hon <honyuenkwun@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Johannes Erdfelt <johannes@erdfelt.com>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Jimmy Hon <honyuenkwun@gmail.com>
Subject: [PATCH v7 4/5] arm64: dts: rockchip: Enable HDMI1 on Orange Pi 5 Ultra
Date: Sat, 22 Feb 2025 13:33:31 -0600
Message-ID: <20250222193332.1761-5-honyuenkwun@gmail.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250222193332.1761-1-honyuenkwun@gmail.com>
References: <20250222193332.1761-1-honyuenkwun@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Enable the only HDMI output port on the Orange Pi 5 Ultra

Signed-off-by: Jimmy Hon <honyuenkwun@gmail.com>
---
 .../dts/rockchip/rk3588-orangepi-5-ultra.dts  | 42 +++++++++++++++++++
 1 file changed, 42 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-ultra.dts b/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-ultra.dts
index 06800733d11e..a4db0839bcfd 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-ultra.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-ultra.dts
@@ -5,11 +5,46 @@
 #include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/pinctrl/rockchip.h>
 #include <dt-bindings/pwm/pwm.h>
+#include <dt-bindings/soc/rockchip,vop2.h>
 #include "rk3588-orangepi-5-compact.dtsi"
 
 / {
 	model = "Xunlong Orange Pi 5 Ultra";
 	compatible = "xunlong,orangepi-5-ultra", "rockchip,rk3588";
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
+};
+
+&hdmi1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&hdmim0_tx1_cec &hdmim0_tx1_hpd
+			     &hdmim1_tx1_scl &hdmim1_tx1_sda>;
+	status = "okay";
+};
+
+&hdmi1_in {
+	hdmi1_in_vp0: endpoint {
+		remote-endpoint = <&vp0_out_hdmi1>;
+	};
+};
+
+&hdmi1_out {
+	hdmi1_out_con: endpoint {
+		remote-endpoint = <&hdmi1_con_in>;
+	};
+};
+
+&hdptxphy1 {
+	status = "okay";
 };
 
 &led_blue_pwm {
@@ -32,3 +67,10 @@ usb_otg_pwren: usb-otg-pwren {
 &vcc5v0_usb30_otg {
 	gpios = <&gpio4 RK_PB1 GPIO_ACTIVE_HIGH>;
 };
+
+&vp0 {
+	vp0_out_hdmi1: endpoint@ROCKCHIP_VOP2_EP_HDMI1 {
+		reg = <ROCKCHIP_VOP2_EP_HDMI1>;
+		remote-endpoint = <&hdmi1_in_vp0>;
+	};
+};
-- 
2.48.1


