Return-Path: <devicetree+bounces-241586-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 4369AC8003A
	for <lists+devicetree@lfdr.de>; Mon, 24 Nov 2025 11:55:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 7C44C4E4943
	for <lists+devicetree@lfdr.de>; Mon, 24 Nov 2025 10:54:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DF3222FAC16;
	Mon, 24 Nov 2025 10:54:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=icenowy.me header.i=uwu@icenowy.me header.b="VE/psbDu"
X-Original-To: devicetree@vger.kernel.org
Received: from sender3-op-o15.zoho.com (sender3-op-o15.zoho.com [136.143.184.15])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FA2A2F9DBC;
	Mon, 24 Nov 2025 10:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=136.143.184.15
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763981665; cv=pass; b=Yxkz0ARmUT3fxXMhDAjuRPX7Ycra7JUzA6T6mcZfeu64+iPGiqKU6n83OWiMD0P4xQ+gssCj2BCEgM6/2AFfUtwACvzjVcEch0SSynAMTapZuoSvn/g06jNxP7t94ZaWgdwpFOGpZKUMAwvUnSDJwJk7tqLbHcIWOyQrz6QJDI0=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763981665; c=relaxed/simple;
	bh=LVSsx9i+gMQNni4kKjpA8CQ5hM3gGNFF3vGdz3NLExk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=QemOiGquhdUXJbTjLBYd/eM7O0LCwzP29TPkNR6VO5fyxCrzNM9u3gVdLg+6N1CTj6c7qvJ7auX7SW8nnPFqjjPs3joAgAIQXbziOReksP4j/T68SSfiuTyhVfyXctxQpZfyU/ABQqe+vQca4+oQxI3M66Btqr9YHnx21WcKVqE=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=icenowy.me; spf=pass smtp.mailfrom=icenowy.me; dkim=pass (2048-bit key) header.d=icenowy.me header.i=uwu@icenowy.me header.b=VE/psbDu; arc=pass smtp.client-ip=136.143.184.15
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=icenowy.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=icenowy.me
ARC-Seal: i=1; a=rsa-sha256; t=1763981634; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=J+dQSpLf1tCQCH/hnwGoDengIT8z8WHQl0RD+3JrOyHGuC8IQeh4wKTt2EkuARfJCBT0SPXzRp0FQLWmhyV447+NR15BK7PEezQZxPGZYcAjjXCPYlh2bWUr0JmPjMsrRni/ZAo4ZAzQjmJrQJfddH9IaLU/4mEAQId0cOdiFbM=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1763981634; h=Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=AbtvVxeT5KIAkWKQlzdMn2trt33dbUvUYKJcQiCQ0Vs=; 
	b=ZExr8cm+P060mUxgkUOXxSzFN8WqwhmvnJCnl1WKDkRGuIiS7Gc7DSyEgmUMruOwoBLzxG4vHtX2TZRH+6UI2oqezU7S8oc8iMdzBuTXFEHlv8eLXnlOoberR3bm45rRMesUR7vXieNeiR0r1cGqRb3vYFbvahJopX2ihFlEdkg=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=icenowy.me;
	spf=pass  smtp.mailfrom=uwu@icenowy.me;
	dmarc=pass header.from=<uwu@icenowy.me>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1763981634;
	s=zmail2; d=icenowy.me; i=uwu@icenowy.me;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=AbtvVxeT5KIAkWKQlzdMn2trt33dbUvUYKJcQiCQ0Vs=;
	b=VE/psbDuLiAqvZw5+xhe75ims4qi9toOcowFJjK43alWqe/xtvm8VhC/zLIrG9Gl
	T68NO/znhJWOxLjt1wHOzwPiXENGih8FC/4FPqMtAazVxAyUOakRDw6fejsoTSgqFzH
	fx7VKbqYD+2hkSvaNNjSmVfIqkwI6p5MRuw3kKeaM7HV6e/vOEUblKIhF3UtcwJ7SCm
	ylznElHLun0+AL1/DJBt7idX8FPoEboR+mwpPvCutzjl6JYsXQr57pyA6eW9GhLUQSt
	efIjtVYpOg4c9u8o/G/Pa2ixZormtOb/BQTsChRuhHP3Ko63YuUmRUT4/FcN5EyA5b2
	UQ4lVG371w==
Received: by mx.zohomail.com with SMTPS id 176398163278473.11165427844367;
	Mon, 24 Nov 2025 02:53:52 -0800 (PST)
From: Icenowy Zheng <uwu@icenowy.me>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Drew Fustini <fustini@kernel.org>,
	Guo Ren <guoren@kernel.org>,
	Fu Wei <wefu@redhat.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Heiko Stuebner <heiko@sntech.de>,
	Andrzej Hajda <andrzej.hajda@intel.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Robert Foss <rfoss@kernel.org>,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Michal Wilczynski <m.wilczynski@samsung.com>
Cc: Han Gao <rabenda.cn@gmail.com>,
	Yao Zi <ziyao@disroot.org>,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	Icenowy Zheng <uwu@icenowy.me>,
	Icenowy Zheng <zhengxingda@iscas.ac.cn>
Subject: [PATCH v3 6/9] riscv: dts: thead: add DPU and HDMI device tree nodes
Date: Mon, 24 Nov 2025 18:52:23 +0800
Message-ID: <20251124105226.2860845-7-uwu@icenowy.me>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20251124105226.2860845-1-uwu@icenowy.me>
References: <20251124105226.2860845-1-uwu@icenowy.me>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-ZohoMailClient: External

T-Head TH1520 SoC contains a Verisilicon DC8200 display controller
(called DPU in manual) and a Synopsys DesignWare HDMI TX controller.

Add device tree nodes to them.

Signed-off-by: Icenowy Zheng <uwu@icenowy.me>
Signed-off-by: Icenowy Zheng <zhengxingda@iscas.ac.cn>
---
Changes in v3:
- Adapting to the changed binding.

No changes in v2.

 arch/riscv/boot/dts/thead/th1520.dtsi | 70 +++++++++++++++++++++++++++
 1 file changed, 70 insertions(+)

diff --git a/arch/riscv/boot/dts/thead/th1520.dtsi b/arch/riscv/boot/dts/thead/th1520.dtsi
index e680d1a7c821f..1dcb52b78bc69 100644
--- a/arch/riscv/boot/dts/thead/th1520.dtsi
+++ b/arch/riscv/boot/dts/thead/th1520.dtsi
@@ -536,6 +536,76 @@ clk_vo: clock-controller@ffef528050 {
 			#clock-cells = <1>;
 		};
 
+		hdmi: hdmi@ffef540000 {
+			compatible = "thead,th1520-dw-hdmi";
+			reg = <0xff 0xef540000 0x0 0x40000>;
+			reg-io-width = <4>;
+			interrupts = <111 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&clk_vo CLK_HDMI_PCLK>,
+				 <&clk_vo CLK_HDMI_SFR>,
+				 <&clk_vo CLK_HDMI_CEC>,
+				 <&clk_vo CLK_HDMI_PIXCLK>;
+			clock-names = "iahb", "isfr", "cec", "pix";
+			resets = <&rst TH1520_RESET_ID_HDMI>,
+				 <&rst TH1520_RESET_ID_HDMI_APB>;
+			reset-names = "main", "apb";
+			status = "disabled";
+
+			ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				port@0 {
+					reg = <0>;
+
+					hdmi_in: endpoint {
+						remote-endpoint = <&dpu_out_dp1>;
+					};
+				};
+
+				hdmi_out_port: port@1 {
+					reg = <1>;
+				};
+			};
+		};
+
+		dpu: display@ffef600000 {
+			compatible = "thead,th1520-dc8200", "verisilicon,dc";
+			reg = <0xff 0xef600000 0x0 0x100000>;
+			interrupts = <93 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&clk_vo CLK_DPU_CCLK>,
+				 <&clk_vo CLK_DPU_ACLK>,
+				 <&clk_vo CLK_DPU_HCLK>,
+				 <&clk_vo CLK_DPU_PIXELCLK0>,
+				 <&clk_vo CLK_DPU_PIXELCLK1>;
+			clock-names = "core", "axi", "ahb", "pix0", "pix1";
+			resets = <&rst TH1520_RESET_ID_DPU_CORE>,
+				 <&rst TH1520_RESET_ID_DPU_AXI>,
+				 <&rst TH1520_RESET_ID_DPU_AHB>;
+			reset-names = "core", "axi", "ahb";
+			status = "disabled";
+
+			ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				dpu_port0: port@0 {
+					reg = <0>;
+				};
+
+				dpu_port1: port@1 {
+					reg = <1>;
+					#address-cells = <1>;
+					#size-cells = <0>;
+
+					dpu_out_dp1: endpoint@1 {
+						reg = <1>;
+						remote-endpoint = <&hdmi_in>;
+					};
+				};
+			};
+		};
+
 		dmac0: dma-controller@ffefc00000 {
 			compatible = "snps,axi-dma-1.01a";
 			reg = <0xff 0xefc00000 0x0 0x1000>;
-- 
2.52.0


