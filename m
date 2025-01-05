Return-Path: <devicetree+bounces-135705-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C062A01C23
	for <lists+devicetree@lfdr.de>; Sun,  5 Jan 2025 23:27:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id BCA2418838FF
	for <lists+devicetree@lfdr.de>; Sun,  5 Jan 2025 22:27:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 077BF1CF5C6;
	Sun,  5 Jan 2025 22:26:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Zo2+CRb8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f51.google.com (mail-ot1-f51.google.com [209.85.210.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 766091CBA02
	for <devicetree@vger.kernel.org>; Sun,  5 Jan 2025 22:26:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736116016; cv=none; b=KkRNQVtclMpbGcdPtwyZFmkcJCCuW6W82OkwFJxfi3dvylHDW5aZEhzttKDZcnFwTqbwGDctNnQXFYTkrmh6EGaJUeeziVgdtfS+wH0TO/1EUOHS8jOAImGblTxLXt9g9ASJFpQiqSVwyHdMmSxdDsoltJmGTTqqAxwa82hHc08=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736116016; c=relaxed/simple;
	bh=yemAYE/O/0i8bawf74tTjL4IepEYb9tFhMFby2rOkaY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Nkp8uySBrrpPOCz8+3qHeKtaYSFQBY0i/5zX5jeOEBsNwWFVf5YMur/LYHtQa7rC5q5N+I3l7JmKC01Wl2IP3nlDpUN41ERqSLFyqEQ1D5WDGTHiqaiPdqO5HmKb6ynxsjkAXcVYgUdyd1aMcjK9Pd/L+C7LJVy+AzpzrYzp2GU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Zo2+CRb8; arc=none smtp.client-ip=209.85.210.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ot1-f51.google.com with SMTP id 46e09a7af769-71e3284f963so7558450a34.1
        for <devicetree@vger.kernel.org>; Sun, 05 Jan 2025 14:26:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1736116014; x=1736720814; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xhbPOgs5hdCM6+iNzYizeI0jRjlgIwhloeZJA197DFE=;
        b=Zo2+CRb8/AmTyZOnM3npNPFbS++zZ32VYzH6uzMQn664M4lB1R7D7g6B95gYTW8yMp
         7YxvkSB+1IeLqCiotEsuoGE3eCmy4NHdKPl5MGFNUPo2bFksWS6BjMM0ap4cXTiQLidT
         O33Gd6G3YNpGEl2yKUjtbiP6yPUPidRHUQkF9F6vyghJ3j7YFq7Frs7l4bnhWhUqB2tE
         BD1QgzEdDspBRrgqs0P0yUflnN8d+VuWl2TE1R8WsWMQNgJcX8268kmcKK4cs9Qf4Z3S
         QJX0Od4TBCqEqE2kOCjYlAJLwxmQ05FlwiNmmAK7nLxLaUEFhBU62Zvv389Ht7WFxY29
         qB8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736116014; x=1736720814;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xhbPOgs5hdCM6+iNzYizeI0jRjlgIwhloeZJA197DFE=;
        b=iAtQ5ik13rGi9G4YtHeRPZ8RhNi6pMVWMWOCd6gTCe/uVGZlSp9sJDVGS3imoX6jeF
         CJSb6vqn8kjiRbo/8e4oIMp2QALcCP+diXhgl+iwvC8jASrh8j9SE7FEfyl664rOBIZZ
         QauSC9AtNq7hrj5WFkSa7GiBoDVLggDS/uz067wpWfmAskPh51ACOiKHkFCvvwsPi0lv
         JyBIkUlbmxK2U9wkKFRssxC8atlRHaHkbtEIEIAzyGB3ghJEdqs7Z3YPL0yxI5rTYBpz
         sCSVXSzVmlE26wkoq6vxJJw6kA7QbgQ1dUsDlKEJl0oomjYS31JWNJe9Ei5NehfHJ9c9
         uhNg==
X-Forwarded-Encrypted: i=1; AJvYcCXLaRaabZadozuKzD9X/6XLaevEW1MN2ks88J/AdoS93hrn2UVDSVmN4CDFAaoPSUWboaa4Zlshezqu@vger.kernel.org
X-Gm-Message-State: AOJu0YwDbSV9JeEASnb2Dil8nw0yMpVOrA2mffp9GonmwI/04el6ntTF
	qhQ9xgQEFREREfGzQTj1BJ0BDUsG2GgRYtl3fyCTN0tS5VWkVZjN
X-Gm-Gg: ASbGncvV4Y5+4A9x4fafXHyVEn8lZD4lwhXYwW3dM2Cl3pSERjDEb01uJlIWPc2avoF
	9C/WY3Uai0oqKaMDw0IFjsmw9yRT6RgcbmclM81y33+OcQjT6mFJh5mAXMqWMFvsuOqqqfCuAGr
	S+SnCvFNqM2BZx+I2t/vH/lwA8XjTnipTca4DsoVl9J7LC7YJjApbu7T7LjP0Y7rIiNqybMlKG2
	A2fY7aHVm/ZVEipqGjRXoPlTw1y5Mia/NHrxdouLrKb/c0tK1YsVPWIlLqrhS6uFw==
X-Google-Smtp-Source: AGHT+IF4vEVHzh5/AimguGUuOryLcd5I5gDSJ8ysFfJWBp1omx9gXOcL0Usi0by3qaFodgPsGc+NoA==
X-Received: by 2002:a05:6830:d86:b0:71d:5bfd:8537 with SMTP id 46e09a7af769-720ff867237mr35722481a34.14.1736116014552;
        Sun, 05 Jan 2025 14:26:54 -0800 (PST)
Received: from tower.cjhon.com ([2603:8081:ad00:4a:b377:72ce:54b5:bddf])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-71fc980a9e8sm9555227a34.43.2025.01.05.14.26.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 05 Jan 2025 14:26:54 -0800 (PST)
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
Subject: [PATCH v7 4/4] arm64: dts: rockchip: Enable HDMI1 on Orange Pi 5 Max
Date: Sun,  5 Jan 2025 16:26:13 -0600
Message-ID: <20250105222614.2359-5-honyuenkwun@gmail.com>
X-Mailer: git-send-email 2.47.1
In-Reply-To: <20250105222614.2359-1-honyuenkwun@gmail.com>
References: <20250105222614.2359-1-honyuenkwun@gmail.com>
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


