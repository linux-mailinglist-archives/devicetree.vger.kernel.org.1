Return-Path: <devicetree+bounces-134602-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 10EDE9FE03C
	for <lists+devicetree@lfdr.de>; Sun, 29 Dec 2024 19:46:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 71FF73A1A66
	for <lists+devicetree@lfdr.de>; Sun, 29 Dec 2024 18:46:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 938E1198845;
	Sun, 29 Dec 2024 18:46:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="eDlUtUTH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f172.google.com (mail-oi1-f172.google.com [209.85.167.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14FF7210FB
	for <devicetree@vger.kernel.org>; Sun, 29 Dec 2024 18:46:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735497991; cv=none; b=WFY/ylwchFeZT/FqLW4rqbkzcC2llV4BVYTBuT5TyfOkJpSFAGNiuNCOfB60/sP4oyxwYdvUSvWVuz60NZaApJ4oFdRad7jHql7pgKyZE9SRUoUrZMGGK4ZxjutwxVb4cOUWpMsXU1EDNI1uQ0E2qH3j5XdigzpcOKWzxkUYoSc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735497991; c=relaxed/simple;
	bh=jEIJpZbAGqtKaFM4SY5cxjM9ye6rI+K12+fAcXmd2B4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=bEL+dKjmjAeGazZvDDLOufg1s0y274Rx7ds1KT1EZnNMKt/OIJLBoHRy5uxPl9tHt1hqqd/lJJLtaXID4sdckyV/7Lf5WZ7RlpE7ZOfF+65abEI89OBAeg6c6J2YdUfEis2lg7MtYwGkw8+QZSge6h2+9/uJ/OkC2MwznA2n+js=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=eDlUtUTH; arc=none smtp.client-ip=209.85.167.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oi1-f172.google.com with SMTP id 5614622812f47-3eb98b3b63dso1707544b6e.1
        for <devicetree@vger.kernel.org>; Sun, 29 Dec 2024 10:46:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1735497989; x=1736102789; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LIzqFVb8VM/Dn21FDFP1KauNhPaiLjtJM9i6mgqafNM=;
        b=eDlUtUTHtvR9mWyJt3AiucKwoE1ER15jzBTNLrXdbxbxZBGD1hM+S+AaIeEWiCAKlW
         vQqIzUOL4G/velNLsXvejePWDmwXqj5V0yxcgku+KUcJ8Z3t2RMxcWbOhdgkTvEQN9bL
         dSEpUtYqqmejJtwbl0YaMUKsx4VOhrHMMy/5X3qhzEmde0CqvpYvQlGjx7EPILico+KJ
         r9cL1/yHD5cEHYBQsqfrlewERo/u2xsteCZ/pDb53lJWfIqUkqx96r3DRerhIM6uh8r+
         7S0nCc4qJ8wgi4dOlL1EsrDfQ2N2mnZRSeiSJn3Wra+hGSUKnXHb0eyg2n23fYzPSr0B
         0YZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735497989; x=1736102789;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LIzqFVb8VM/Dn21FDFP1KauNhPaiLjtJM9i6mgqafNM=;
        b=KX+PrjxxxrgJ+hO6YdzTj0/gxaQR4D/yDA99N71h42wf96TSS1bI8eZhb4KLX4d35t
         13OLPj8GuNvmDnXk6jWPC5l1NgIQmCL+EzTx5va5YwbEiPaWWtPncDvbUX8ObU6FBny7
         Ey+x93xNtO2U6obr3qRKIkvoEPnSj0VbqIIGxawEyUT8POB3Di3egx+OXhHaNLpj9PnH
         /ENEzcGYmsWhtzUOwV0RHKqxBzyGe/SIFLwrITj1wH6lQZm0V5kdQ/oNbd0iQ3swvoO5
         bgQHgYxUFm92GogoON+gZLR/uJWw0JgPk2N28GxE+iDraZupGeBxXNHpe31xE+l3kuvP
         3FzA==
X-Forwarded-Encrypted: i=1; AJvYcCWSKgStuLMfwHjMJAE9uvzMUp1bq5KF0KachRI6tuD6lpCRJf0Cg5oNyKTGazXLPVPSf1I/Ptq9g747@vger.kernel.org
X-Gm-Message-State: AOJu0YwlCc0dvWKr5vKK7L+PEODw+6fFdwiXvFOcpPsnJYfsISe9OYAe
	/AD1DEpB77iCjP2tp+LQg6AKhLR9zmw6sogDHcKGtGzLgBsHZiDc
X-Gm-Gg: ASbGncvA7pLMP6/8x53KSLEkjMbAd96Nb5mohFchoWEU+7Ggl68Uo8YV8NkFnlMYK4Z
	woCfHNBOMDe7pl1dCgu1ZroKpbx+eLuuVEfiRzOPnifvU6wfVf4pLJcYg5ZuSAF5mP5to0BkPPE
	6AinSzK+nWfYKzBqSYXqXrnh8rAL8jW2rTdZ1ZfLALH3EyS6Vimtt5ipGtiB5giFvX5d2jNp5Rj
	+Pot73+XQo/TqKoYXgelUttdGvXuUMoICgFq3acNqA1aiw9WEcyWL3OLcphRRIv
X-Google-Smtp-Source: AGHT+IG11WX7BWv9bA87ugTxsqNhxXvFWiqNeKDLE6ZeYckYBnSyMP/5ZZfpUnS6K2hcMLs+dnuaGw==
X-Received: by 2002:a05:6830:718c:b0:71e:223c:1789 with SMTP id 46e09a7af769-720ff894f99mr22569284a34.16.1735497989261;
        Sun, 29 Dec 2024 10:46:29 -0800 (PST)
Received: from tower.cjhon.com ([2603:8081:ad00:4a:e765:a49c:5c4:1103])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-71fc97d6fafsm5515645a34.31.2024.12.29.10.46.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 29 Dec 2024 10:46:28 -0800 (PST)
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
Subject: [PATCH UNTESTED 7/7] arm64: dts: rockchip: Enable HDMI1 on Orange Pi 5 Plus
Date: Sun, 29 Dec 2024 12:41:36 -0600
Message-ID: <20241229184256.1870-13-honyuenkwun@gmail.com>
X-Mailer: git-send-email 2.47.1
In-Reply-To: <20241229184256.1870-2-honyuenkwun@gmail.com>
References: <20241229184256.1870-2-honyuenkwun@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Enable the second HDMI output port on the Orange Pi 5 Plus

Signed-off-by: Jimmy Hon <honyuenkwun@gmail.com>
---
 .../dts/rockchip/rk3588-orangepi-5-plus.dts   | 38 +++++++++++++++++++
 1 file changed, 38 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-plus.dts b/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-plus.dts
index fd49a7c8a381..fd9252d32298 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-plus.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-plus.dts
@@ -26,6 +26,17 @@ hdmi0_con_in: endpoint {
 		};
 	};
 
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
+
 	ir-receiver {
 		compatible = "gpio-ir-receiver";
 		gpios = <&gpio4 RK_PB3 GPIO_ACTIVE_LOW>;
@@ -113,10 +124,30 @@ hdmi0_out_con: endpoint {
 	};
 };
 
+&hdmi1 {
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
 &hym8563 {
 	interrupt-parent = <&gpio0>;
 	interrupts = <RK_PB0 IRQ_TYPE_LEVEL_LOW>;
@@ -231,3 +262,10 @@ vp0_out_hdmi0: endpoint@ROCKCHIP_VOP2_EP_HDMI0 {
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


