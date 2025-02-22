Return-Path: <devicetree+bounces-149877-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 58C29A40AAD
	for <lists+devicetree@lfdr.de>; Sat, 22 Feb 2025 18:29:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 768653B1D5E
	for <lists+devicetree@lfdr.de>; Sat, 22 Feb 2025 17:28:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 21D1820125D;
	Sat, 22 Feb 2025 17:28:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="O52/9yzl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f52.google.com (mail-oa1-f52.google.com [209.85.160.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C0551F1506
	for <devicetree@vger.kernel.org>; Sat, 22 Feb 2025 17:28:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740245336; cv=none; b=DhWEqu2U8Jpct2gAWFbdPBMh+jStPR0jKUkhPkixoVGHBR2f6dRzPPwC3/A3i7/ha9SlfN4kaS5dIlhEpK++n3f+VU8bzqRR2nvW+rQZ1EtFLkLKfSAQxStucOvMVXsf31b2n8RzvQ0r/K/8XZNr6h7S66mfTVWsS03seMleXik=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740245336; c=relaxed/simple;
	bh=+lYoXgEE8ARexOExruXFC9YnNNF7AecdXXtiXV5K52E=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=O+KQm6/cTiixq0dk16Ol+/aJ8LCpI88gdNnwQ1onB6FF6ZZRqfaNpJrCH1WhxnzRg/Xv/JijtsDE42s8vOTzi7qRoMrzAI8wavHPj3s54gcAJb2t3WqpoZbo4qdRCjmxssdXxGkH84LkOyvkq6Z9hrYI5p1Koz8BluJa14nZ5ZU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=O52/9yzl; arc=none smtp.client-ip=209.85.160.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oa1-f52.google.com with SMTP id 586e51a60fabf-2bca6017608so2306678fac.0
        for <devicetree@vger.kernel.org>; Sat, 22 Feb 2025 09:28:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1740245333; x=1740850133; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LdfjMTseKRLHd2G7cfjnBpOTHSEyRnqoawGfi07bMWI=;
        b=O52/9yzl22psU+CLqvVZJbmIa5jid/YZwG4xEJ2BFHj8yZQ8fbXe7MuIuCp1LQvqmh
         DOGZ+coVCt4azuHLkC5ZmauT6dJTgB7LfqIN/joIvH49W8KdbS9mvxPP6ZaCnaV3Brv7
         z3FmJAls0fZV9giB9loRwyBh6B2Im/a6wGPLG1InfrA1BPTyjJESTSwcml5Lb/IMOppz
         cwljIQK+AEs46Y17L/tyOR5qS7uq54K8feqdSjWeGj2/qSURDHwKh+tOflXNifhocBOU
         9GEQACnp59yazCnQJ1WtwpdhY4xAzpmqY25G+vtPseTL/5qf1HpV+TRZu05dZD5rD+/q
         vk7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740245333; x=1740850133;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LdfjMTseKRLHd2G7cfjnBpOTHSEyRnqoawGfi07bMWI=;
        b=KkNwvlwREYX7Ryu2I+Pwg0aw7ZQGa8tSHLsW6+Fso1xtUYpfZPrq0JsFY1OCoCObnW
         Zzo9Q1VbVTXzfYxzMYtEUDPDMHhBJ4OqvfgvTEKq4YwQpw7Lr0G+KAFqwLAkhGmKQuEk
         5DRImOJ43EvmZgB1Zxm0w7AFqExFTR9a0Hy9xVTVBSGO+S+IF7IuQ8DvKsiZmmcISaJG
         bGjTkraDwQ8DCuDiKhbj/6IWfqN2UnGPnSg9EYVUnPIE3nioSBG8IVx44L5YQMT8Trn/
         M64jtVRttzBP1lHh6T1hUNp3CYabRfiGGaojPIJi/zLLlAQM8a6WUCg2KFZe9Lmqih3O
         KAxg==
X-Forwarded-Encrypted: i=1; AJvYcCVpMTqR5SnAHUULoggagv54+hPp8oehBor22Og/gz1iDVFSRSYle7/oPYQqRqcDHaSFdj17EL0ocZ9M@vger.kernel.org
X-Gm-Message-State: AOJu0Yw+ircWLdxWTUco1Jgm3TH68byOOW9tAzffZX/ArNihESKQtBbE
	vYdl6yAaIm3KK4wtb8wUN7wcrE09Kp4UF+Y30bmkHz9abl3VZ4+5
X-Gm-Gg: ASbGncseE9UocfX4BTHcdOFJb4f6KIe5Z6nE3dFp5s0Rd91e0F68KiNkIovc/Kl7XNP
	+TVnx4tpbxLYl7i0O/HSaJAQV5ZirAmVsIhkzhzKvRkrcjCjFjO0Ucmk23nONNlPnP//yFfEnIy
	bVMv9CEO++xYZejIja+oS6dQCs+qg267QC4dADYQPAJtx8BLZAuGgzE+yP4upggS60b3budRaa7
	TO18ctxILMrij/qWH2IJORS9X/fRnGiznSJAFQMw8+H6N7/3PEVoJaQ+jYNsn1bpAvqVhox8ket
	HCQfDVfhakvhsuiQK43+9JjmduUTpuo36U4=
X-Google-Smtp-Source: AGHT+IHL+cfwNw54b6gC29UuxrpU5tB+fQvWP3jfylDbrcuOrZOvpNnigixv+P5O0T95vWiZeX7ggQ==
X-Received: by 2002:a05:6870:212:b0:2bc:66cc:1507 with SMTP id 586e51a60fabf-2bd50d01bb7mr5721852fac.12.1740245333600;
        Sat, 22 Feb 2025 09:28:53 -0800 (PST)
Received: from tower.cjhon.com ([2603:8081:ad00:4a:996a:132b:43a2:f7b0])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-2b963a0ac4bsm7244238fac.47.2025.02.22.09.28.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 22 Feb 2025 09:28:52 -0800 (PST)
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
Subject: [PATCH v6 4/5] arm64: dts: rockchip: Enable HDMI1 on Orange Pi 5 Ultra
Date: Sat, 22 Feb 2025 11:27:51 -0600
Message-ID: <20250222172752.6254-5-honyuenkwun@gmail.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250222172752.6254-1-honyuenkwun@gmail.com>
References: <20250222172752.6254-1-honyuenkwun@gmail.com>
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
index fa975c5db0ae..571a7f61bfd5 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-ultra.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-ultra.dts
@@ -4,11 +4,46 @@
 
 #include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/pinctrl/rockchip.h>
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
@@ -31,3 +66,10 @@ usb_otg_pwren: usb-otg-pwren {
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


