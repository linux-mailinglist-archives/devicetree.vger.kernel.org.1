Return-Path: <devicetree+bounces-134131-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5250F9FCC7D
	for <lists+devicetree@lfdr.de>; Thu, 26 Dec 2024 18:35:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E1A6316251B
	for <lists+devicetree@lfdr.de>; Thu, 26 Dec 2024 17:35:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C9F4213DBBE;
	Thu, 26 Dec 2024 17:35:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=edgeble-ai.20230601.gappssmtp.com header.i=@edgeble-ai.20230601.gappssmtp.com header.b="C96YjZsm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f45.google.com (mail-pj1-f45.google.com [209.85.216.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B9A0182CD
	for <devicetree@vger.kernel.org>; Thu, 26 Dec 2024 17:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735234554; cv=none; b=OOteS4m2stAYIjaiC3JLAMWX4QRGBsxH1pzmB54Aq33fOTIviPqpvYBlyo/8HR/SSwMBiNPrdRreGhp8WeMfjISQ4LqNC+EJrwa0f81aIUTaseCt2UGmGVdXMH3nYuvvmiko3VHoPVb3apgIp6uHuOW6tWrkCc4g0TkGBLI7eCU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735234554; c=relaxed/simple;
	bh=fQISsrbQuu+YvYCZOl1qGFY3NC+UYKOUTTOLOv+/akQ=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=gAg125vTN/1W0H+r+urqFFOxHdZjjc1FGo3ddCJdbIISTRem5ih6f1YRz0k3Pp1SCV27GpLOaz6lYQ1v6XMjUXxK30CDep/FJexjXpKqwyUzjzEZRzJYXo+TxnmL+BQx2JswmYkVrDjgUwmLyfpGN3VEkv3zuRlLPFH6ndf8iF4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=edgeble.ai; spf=none smtp.mailfrom=edgeble.ai; dkim=pass (2048-bit key) header.d=edgeble-ai.20230601.gappssmtp.com header.i=@edgeble-ai.20230601.gappssmtp.com header.b=C96YjZsm; arc=none smtp.client-ip=209.85.216.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=edgeble.ai
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=edgeble.ai
Received: by mail-pj1-f45.google.com with SMTP id 98e67ed59e1d1-2ee8e8e29f6so6573278a91.0
        for <devicetree@vger.kernel.org>; Thu, 26 Dec 2024 09:35:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20230601.gappssmtp.com; s=20230601; t=1735234552; x=1735839352; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=E9Hxi9sszYSp2cS3KRHvqcLvWwaE0E5fecrWh0T8tms=;
        b=C96YjZsmVGYsah8guYcfd63isMTMrkgqkZGMCpj9miW0VptPgRDi0OxmG6Wm8cUjBt
         pK/YrKhjaLUFQAOuWQY5ayHhgSDcXp2TYr4n95aU5zEpE7ilOZ/1JInU76wIXjEOtL8o
         Q5vd+hW/+MPf8pUe9NzDrp1sD1cHYGhY8Umn49dzKuYVp+FcU8MQeqcuB5vU3R3VcDmv
         liD/s4mP74Y1wzsixGv+h+S53YtNYadOXAPQvwSKfn+Rb+O/oZlS01VtCuWeYirDL51I
         wgfUO662f4C3Dl4ZEVo0wOh6h9kR+AiqDIwd7mucCHqwGrnjdEmoK3kBueXZW4D2nMUE
         4TOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735234552; x=1735839352;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=E9Hxi9sszYSp2cS3KRHvqcLvWwaE0E5fecrWh0T8tms=;
        b=MFg9NbGZYTDhc2cHtE6HL9p6icIORkzrjfRJtkXZB4xj3haX724tOBNlO0LYu/G9ls
         mHLr4c2Ga8A7Vz00QilpPK65PsVkbqvU642QTPpGdewF4oSIRiGmh5tOlxWoq4KJP1mI
         pss4hOxdJAveLlOwZR+fWvbXFWWLulXl1wP53a2pvPh1vr+EOPmZPsEs2DEnwRTqimdS
         iMhux54AoJgWAidgKMH+ZvkEedDZqRf2xtXjLKpWm4PIdboAf/FS1LXjI/a/pVdgBSX/
         +s5XJ5RVEii9O2bcbSHRgVGAuWePy6O91f9pBSo//nxczHRGj3kL/pUNNSn+GmxkT2e8
         2vpg==
X-Forwarded-Encrypted: i=1; AJvYcCVFXss8agvDnYh3QFa+ATTvGcERpKuGh93hOVpTNXWLe1urMOsF4vkTRgFoGEDK9s2s4suQ1xw55wJq@vger.kernel.org
X-Gm-Message-State: AOJu0YzlGiwV6UDAUX3Wa6SANSpGHj+P31zzTpozzGdv2tQA2xpNjig4
	lBpOPb0GG9iKo38L3iuSEx5Vh6z5ah/UGStBflbA9NzQWD8iVPoErZQnRiHYls95hqaQLbUFoMK
	poXY=
X-Gm-Gg: ASbGncvvUiZr2T3oUSOQ0EsTe7kGp+SfKyh7aNIeJMsvWUO1s4nBZGd2jUli0aQSruX
	hHZMM+puGwR+zTCDIMpVCFGNxrnP83DpmbsjmDVGFjo/Ue8V0U/usu3ugyh3bJfm7eYqeogYhHe
	quiLgzqvjb81zwJMtuLKkNXMiiklszlVOyUYTn6fVNGANqaJE3G73xcahUyLmtyRISM80LG3xyV
	U7ieZ9e/mk1Qs5xIuiG7p25wPu7diDrNZTqbikveZsLFaT9X8VND/8pazmHTtB+qcXOkpCk
X-Google-Smtp-Source: AGHT+IGR8b1qFS8O/216LzEHsL2snOtTt/JUhfXE7hEdBOQDqshwj0GgvqkF0MIY6yWqZ4cmqEhOag==
X-Received: by 2002:a17:90b:514d:b0:2ee:889b:b11e with SMTP id 98e67ed59e1d1-2f452ec3775mr36227157a91.30.1735234552633;
        Thu, 26 Dec 2024 09:35:52 -0800 (PST)
Received: from tops-ThinkPad-E14-Gen-5.. ([2405:201:c00a:a918:ba33:f9a0:ac68:19f])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2f4477c8461sm14281147a91.13.2024.12.26.09.35.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Dec 2024 09:35:52 -0800 (PST)
From: Jagan Teki <jagan@edgeble.ai>
To: Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Jagan Teki <jagan@edgeble.ai>
Subject: [PATCH 2/2] arm64: dts: rockchip: Enable HDMI1 out for Edgeble-6TOPS Modules
Date: Thu, 26 Dec 2024 23:05:30 +0530
Message-Id: <20241226173530.37037-2-jagan@edgeble.ai>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241226173530.37037-1-jagan@edgeble.ai>
References: <20241226173530.37037-1-jagan@edgeble.ai>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Edgeble-6TOPS modules configure HDMI1 for HDMI Out from RK3588.

Enable it on Edgeble-6TOPS IO Board dtsi.

Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
 .../dts/rockchip/rk3588-edgeble-neu6a-io.dtsi | 47 +++++++++++++++++++
 1 file changed, 47 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-io.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-io.dtsi
index 7125790bbed2..4883b31ddeaf 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-io.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-io.dtsi
@@ -4,12 +4,24 @@
  */
 
 #include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/soc/rockchip,vop2.h>
 
 / {
 	chosen {
 		stdout-path = "serial2:1500000n8";
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
 	/* Unnamed gated oscillator: 100MHz,3.3V,3225 */
 	pcie30_port0_refclk: pcie30_port1_refclk: pcie-oscillator {
 		compatible = "gated-fixed-clock";
@@ -81,6 +93,26 @@ &combphy2_psu {
 	status = "okay";
 };
 
+&hdmi1 {
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
+&hdptxphy_hdmi1 {
+	status = "okay";
+};
+
 &i2c6 {
 	status = "okay";
 
@@ -275,3 +307,18 @@ &usb_host1_ohci {
 &usb_host2_xhci {
 	status = "okay";
 };
+
+&vop_mmu {
+	status = "okay";
+};
+
+&vop {
+	status = "okay";
+};
+
+&vp0 {
+	vp0_out_hdmi1: endpoint@ROCKCHIP_VOP2_EP_HDMI1 {
+		reg = <ROCKCHIP_VOP2_EP_HDMI1>;
+		remote-endpoint = <&hdmi1_in_vp0>;
+	};
+};
-- 
2.34.1


