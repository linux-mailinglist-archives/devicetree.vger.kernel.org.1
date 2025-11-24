Return-Path: <devicetree+bounces-241587-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 45311C80055
	for <lists+devicetree@lfdr.de>; Mon, 24 Nov 2025 11:56:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2FA1F3A8DFE
	for <lists+devicetree@lfdr.de>; Mon, 24 Nov 2025 10:54:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4C3982FA0DD;
	Mon, 24 Nov 2025 10:54:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=icenowy.me header.i=uwu@icenowy.me header.b="qdqnGkQI"
X-Original-To: devicetree@vger.kernel.org
Received: from sender3-op-o15.zoho.com (sender3-op-o15.zoho.com [136.143.184.15])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A039048CFC;
	Mon, 24 Nov 2025 10:54:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=136.143.184.15
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763981682; cv=pass; b=WDHlFNr87vn0O93FOV2NvBfpByUom7Zm75Pbq6t6DoZ1CM84Py4S50jmXFY/luABsunJotdArzTZ0dA1DrmIe6PPVazfMTnP7SVMELbi7HWSfUey3PU6yjKYSUaATxaydCDPZ8R483fPaQ1vRK96+ngDGmQhDkRzeGqtSeRGfX0=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763981682; c=relaxed/simple;
	bh=4z8lkEX3fHwBsgXn8atCy6Mx7yquFihrmPqkXFFvtL4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=uNrO8BZaz8ciVdJu7CI4GPBFBqlXk146Qk8bArt5DATYT/WeL1Ij86NgX/A254LOdi93khVoabakOstpJKSxvWFf/lQhwZNdrrHzt1dcy2Mow1xOGR4PlJOqgvZx1QbxUZXo/Nu78eOYiVfn1+aSLbRlijqo0dS39s2A9k9PzDY=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=icenowy.me; spf=pass smtp.mailfrom=icenowy.me; dkim=pass (2048-bit key) header.d=icenowy.me header.i=uwu@icenowy.me header.b=qdqnGkQI; arc=pass smtp.client-ip=136.143.184.15
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=icenowy.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=icenowy.me
ARC-Seal: i=1; a=rsa-sha256; t=1763981646; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=aBm/DY2wciLU1S6JRo4aL6Z/oon/PX3zfe4wFbLqYGCIqHmEEXQVgXOQumUp6+CbT3vyftRHtJsNlOdFD3SA33ToudRl6DG235JYJW7b03nL7rH+t4KPCbfZf9wiHVIH5G6oQHb/qqmhJlq7CCBplrVk2mrp0ZdnacUJPb+mViU=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1763981646; h=Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=ZJpqyYfhAERIsGWk+dSoA06vMJ9B8PJ3IpzupKAbgK0=; 
	b=JwhnijW+2F2Z9eN8HNW6TpYM4elkSs6/URFb15hAw+cA8e2Do/kqPfIjU6P6psgcVI5h6FbWBUdLOoV5SPItKua4jXinUUds7zdmqRjwsBROsWzKBoEeOIAdyGFpOy9TvKhDHJtPEB0TI14L7MjFvoFSWP58LL+iJILTO4vsrGQ=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=icenowy.me;
	spf=pass  smtp.mailfrom=uwu@icenowy.me;
	dmarc=pass header.from=<uwu@icenowy.me>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1763981646;
	s=zmail2; d=icenowy.me; i=uwu@icenowy.me;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=ZJpqyYfhAERIsGWk+dSoA06vMJ9B8PJ3IpzupKAbgK0=;
	b=qdqnGkQIZCxSG2SVuks7tf0dTRXOnwKL4TfM/ut8Rm+w1gl6Y4ayl8q3jyIokA/w
	VWn9D+k35tQYZ9pMcXRoxKDEvndTCju+HLoYaQXHYLTdNi+AGp2fwSxA5fQPBOnxe6l
	GJpB5MBnTQvjaR/S6QrLHhdRfTQ1pr4/OhQylYze5fIjf1rmzk5RqYsY2v1Ao2PG3fR
	1gUzJC8R7+uYxuCyNm3Q14+1II3bKjD5fuWMUVTL0h62QzY5EaZLwXOOoADrYamY63J
	POu3ViLpAT1dUQ/ZSrDBHvEo1GxaEcikGmLNrDiSIBJlyd1mcE65xr0RQn3vLnlk3ki
	qtz9vE+rJg==
Received: by mx.zohomail.com with SMTPS id 1763981645508600.9408522110368;
	Mon, 24 Nov 2025 02:54:05 -0800 (PST)
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
	Icenowy Zheng <uwu@icenowy.me>
Subject: [PATCH v3 7/9] riscv: dts: thead: lichee-pi-4a: enable HDMI
Date: Mon, 24 Nov 2025 18:52:24 +0800
Message-ID: <20251124105226.2860845-8-uwu@icenowy.me>
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

Lichee Pi 4A board features a HDMI Type-A connector connected to the
HDMI TX controller of TH1520 SoC.

Add a device tree node describing the connector, connect it to the HDMI
controller, and enable everything on this display pipeline.

Signed-off-by: Icenowy Zheng <uwu@icenowy.me>
---
No changes in v1, v2.

 .../boot/dts/thead/th1520-lichee-pi-4a.dts    | 25 +++++++++++++++++++
 1 file changed, 25 insertions(+)

diff --git a/arch/riscv/boot/dts/thead/th1520-lichee-pi-4a.dts b/arch/riscv/boot/dts/thead/th1520-lichee-pi-4a.dts
index 4020c727f09e8..3e99f905dc316 100644
--- a/arch/riscv/boot/dts/thead/th1520-lichee-pi-4a.dts
+++ b/arch/riscv/boot/dts/thead/th1520-lichee-pi-4a.dts
@@ -28,6 +28,17 @@ aliases {
 	chosen {
 		stdout-path = "serial0:115200n8";
 	};
+
+	hdmi-connector {
+		compatible = "hdmi-connector";
+		type = "a";
+
+		port {
+			hdmi_con_in: endpoint {
+				remote-endpoint = <&hdmi_out_con>;
+			};
+		};
+	};
 };
 
 &padctrl0_apsys {
@@ -54,6 +65,20 @@ rx-pins {
 	};
 };
 
+&dpu {
+	status = "okay";
+};
+
+&hdmi {
+	status = "okay";
+};
+
+&hdmi_out_port {
+	hdmi_out_con: endpoint {
+		remote-endpoint = <&hdmi_con_in>;
+	};
+};
+
 &uart0 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&uart0_pins>;
-- 
2.52.0


