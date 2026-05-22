Return-Path: <devicetree+bounces-301755-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kMn0Gm88EGrUVAYAu9opvQ
	(envelope-from <devicetree+bounces-301755-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 22 May 2026 13:22:23 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id DC5435B2EAB
	for <lists+devicetree@lfdr.de>; Fri, 22 May 2026 13:22:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id CA52D301916C
	for <lists+devicetree@lfdr.de>; Fri, 22 May 2026 11:20:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 547DB3D903C;
	Fri, 22 May 2026 11:20:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="PPwhFi6X"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F6443D9DA5
	for <devicetree@vger.kernel.org>; Fri, 22 May 2026 11:20:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779448846; cv=none; b=X5q3wHbdldrFdS6zcFWWLJOgHRba65mriXW4YwG5zFc72FzSccnJRfasZnwPPZTAH+/37YnnsHMJE84vfa75cQW7vkWD6T6vvALY+62NSQWUeMW8qRDvxdgryUqhEeKSoMua1IWTjBMto/siSvEv+G8xxxsNcRdyOhEX4lyaioM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779448846; c=relaxed/simple;
	bh=1b9vA5ArOQjt25Yusb6+c/gRU0czHvJheGDMdHPu6X4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ddymKZP4X0k4KE/OQ54JMejmEoP3yco/OuA92z0+RVDPNs58NPhsdaqGa41IUadxZOM2TkjDW7Is67VrVh4Em99SjCg7qRdEikWSlEK2yYU60S400aZuJDje7ZOWLB2471jFFBjgrDgJzHZdpupLyB2Zji8/V+Gpin4zhf3bzQc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=PPwhFi6X; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-48984d29fe3so75703755e9.0
        for <devicetree@vger.kernel.org>; Fri, 22 May 2026 04:20:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1779448843; x=1780053643; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hYSKle0N5gkhHFZVlrjMQ1yuCxunHMt9ZfrNwqt0f6k=;
        b=PPwhFi6XnprSq7BpBkR/bXgB+yOBaTfvhhSvEGeYbI2etU5I2dAGUrR8XXshm0ATCS
         bgkeGRInogYvYo+Xw73f/ms49GYT72TgDQt5Bor5Zrv29xy+tUfObiCuKeDNeNPg+tHF
         yecOXTtfPGQaxGHF4H4jRDFIBBp5D3Jz3zPYgZ7YpgSdUd+NdBQITbs3xyvRU2qsUBvm
         mDGMDGVoo3+40n4dlVKl8FnnTYSrq5gXk4xrjuwxF79QmyEnmalwkCGMyFOSu6JZ1b3F
         YxU07FL9w25hiIaLuHSSMUQtbnBY2gmGPbYL3/v2/V1Sg30yoji1Xzk0dm8ChnjtALKR
         VIhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779448843; x=1780053643;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=hYSKle0N5gkhHFZVlrjMQ1yuCxunHMt9ZfrNwqt0f6k=;
        b=Y4eiMnwZ+it2ikjVtqKGC4V4iOo2Hau5ZE7ZKhpLgV6f16WpWOwlsQrs2M2xbLpT2P
         4E3PJjhYWKzempZFrgzOnlAaGbYWPb47giBhHD33q17FaTgp7iBBEP0r+PS9dF4s8sFA
         ufTX7n6H36OASmQYk6q7suGu4n2Cp71uZWN1LZt7GLwYNSVYErq54Oq5eKNckEbTKSML
         puYnWIPKTKUTwDNoF9hkyAXc/A2O4tZPgaQVF2TjfUGpPIdw0q9BABMfU41sIUDnWPqJ
         wqPjDIihYWwfevY0RgwP/kLifeBnfbdDivbmZbipnkVdMpahJPLTvtP7p45zPEk304Rl
         MMWA==
X-Forwarded-Encrypted: i=1; AFNElJ+gp0G/tAUFsd+ViYZnFgxWKcikgOEP47yLS0NkFM8xbjJqo3iV1xzmf2x2QMn9uhYtgB5I3XOG2UtC@vger.kernel.org
X-Gm-Message-State: AOJu0Yw/NbphKpLn5gXuB+pDTCiru1yXGW8Y46eyAKyrk2VcjoE2r4fy
	9+VZYyApjPeY1Aw+mMu2h3yTNCChVSyEu5PTICh+W/4NfCIfLC89pyTV
X-Gm-Gg: Acq92OFhSlEaNhtPOJLhOjmRHOLY94t3Pqk6ohQKZVBu8ZTNleT/nT/Aobvm5NYa3tX
	GlvpJMivVHQRZh45kPX4gJhFxsEov0n5bs0DpX58q1yMO0bZKpGTbO8ZXZ3w5lrM+WaPhKQYxGt
	+RGlELbDXwjdqtP3UmNyd6sEB6VIbVFRzaHUFQv/iG9dJL2eqc2OF6IvAyYEXGCflnJwqOT1WJy
	PXrtE6KN9FeJiu7hSSgYP1x4hoWKGy4bd5yTlWIR+YauuJ7Sd/V8FYVOuXijXu9/Ub+iwI9AqJx
	gAXI4pxNXlrf08cp/vWIZ08SF+Stg8qcMAKgGrvUiM3uaQbquyvT/owXAbs0EpxeqJpEXV+YmV1
	JEJl9BU++oEJTWbHctrgQoJk41YXI8fCypPwM2/e5k7q3C6R8oAyje15/odihljP4li7jtu7LnO
	fHstc5QtWeguJpdC/2VpgiwwxS1iRFa4cD3wl9CwGkX1+3rhyPpyowrE/rSTAH
X-Received: by 2002:a05:600c:a402:b0:48a:f18:ece4 with SMTP id 5b1f17b1804b1-490426d3f95mr30812985e9.24.1779448842577;
        Fri, 22 May 2026 04:20:42 -0700 (PDT)
Received: from SMW024614.wbi.nxp.com ([128.77.115.157])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4904526ca21sm34388355e9.3.2026.05.22.04.20.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 May 2026 04:20:42 -0700 (PDT)
From: Laurentiu Mihalcea <laurentiumihalcea111@gmail.com>
To: Bjorn Andersson <andersson@kernel.org>,
	Mathieu Poirier <mathieu.poirier@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Frank Li <Frank.Li@nxp.com>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Peng Fan <peng.fan@nxp.com>,
	Fabio Estevam <festevam@gmail.com>
Cc: Pengutronix Kernel Team <kernel@pengutronix.de>,
	linux-remoteproc@vger.kernel.org,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 5/5] arm64: dts: freescale: add DT overlay for MX95-15x15-FRDM RPMSG usage
Date: Fri, 22 May 2026 04:18:49 -0700
Message-ID: <20260522111849.783-6-laurentiumihalcea111@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260522111849.783-1-laurentiumihalcea111@gmail.com>
References: <20260522111849.783-1-laurentiumihalcea111@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[15];
	FREEMAIL_TO(0.00)[kernel.org,linaro.org,nxp.com,pengutronix.de,gmail.com];
	TAGGED_FROM(0.00)[bounces-301755-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[laurentiumihalcea111@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	DBL_PROHIBIT(0.00)[5.66.33.96:email];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.969];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,5.62.229.64:email,nxp.com:email,5.63.20.32:email,5.62.198.0:email]
X-Rspamd-Queue-Id: DC5435B2EAB
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Laurentiu Mihalcea <laurentiu.mihalcea@nxp.com>

Add RPMSG DT overlay for the MX95-15x15-FRDM board. This overlay is meant
to be used with the mx95evkrpmsg system manager configuration for
remoteproc and audio over rpmsg-usecases.

Signed-off-by: Laurentiu Mihalcea <laurentiu.mihalcea@nxp.com>
---
 arch/arm64/boot/dts/freescale/Makefile        |  3 +
 .../dts/freescale/imx95-15x15-frdm-rpmsg.dtso | 65 +++++++++++++++++++
 2 files changed, 68 insertions(+)
 create mode 100644 arch/arm64/boot/dts/freescale/imx95-15x15-frdm-rpmsg.dtso

diff --git a/arch/arm64/boot/dts/freescale/Makefile b/arch/arm64/boot/dts/freescale/Makefile
index 513f61eb27b8..a30a99e42426 100644
--- a/arch/arm64/boot/dts/freescale/Makefile
+++ b/arch/arm64/boot/dts/freescale/Makefile
@@ -521,6 +521,7 @@ dtb-$(CONFIG_ARCH_MXC) += imx943-evk-pcie0-ep.dtb imx943-evk-pcie1-ep.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx95-15x15-ab2.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx95-15x15-evk.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx95-15x15-frdm.dtb
+dtb-$(CONFIG_ARCH_MXC) += imx95-15x15-frdm-rpmsg.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx95-19x19-evk.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx95-19x19-evk-sof.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx95-toradex-smarc-dev.dtb
@@ -539,6 +540,8 @@ dtb-$(CONFIG_ARCH_MXC) += imx95-verdin-wifi-mallow.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx95-verdin-wifi-yavia.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx95-verdin-wifi-zinnia.dtb
 
+imx95-15x15-frdm-rpmsg-dtbs = imx95-15x15-frdm.dtb imx95-15x15-frdm-rpmsg.dtbo
+
 imx95-15x15-evk-pcie-dtbs += imx95-15x15-evk.dtb imx-m2-pcie.dtbo
 dtb-$(CONFIG_ARCH_MXC) += imx95-15x15-evk-pcie.dtb
 
diff --git a/arch/arm64/boot/dts/freescale/imx95-15x15-frdm-rpmsg.dtso b/arch/arm64/boot/dts/freescale/imx95-15x15-frdm-rpmsg.dtso
new file mode 100644
index 000000000000..b39444dde66e
--- /dev/null
+++ b/arch/arm64/boot/dts/freescale/imx95-15x15-frdm-rpmsg.dtso
@@ -0,0 +1,65 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright 2026 NXP
+ *
+ * This DT overlay is meant to be used alongside the mx95evkrpmsg SM
+ * configuration for remoteproc and audio over rpmsg.
+ */
+
+/dts-v1/;
+/plugin/;
+
+&{/} {
+	reserved-memory {
+		#address-cells = <2>;
+		#size-cells = <2>;
+
+		vdev0vring0: memory@88000000 {
+			reg = <0 0x88000000 0 0x8000>;
+			no-map;
+		};
+
+		vdev0vring1: memory@88008000 {
+			reg = <0 0x88008000 0 0x8000>;
+			no-map;
+		};
+
+		vdev0buffer: memory@88020000 {
+			compatible = "shared-dma-pool";
+			reg = <0 0x88020000 0 0x100000>;
+			no-map;
+		};
+
+		rsc_table: memory@88220000 {
+			reg = <0 0x88220000 0 0x1000>;
+			no-map;
+		};
+	};
+
+	sound-micfil {
+		status = "disabled";
+	};
+};
+
+&cm7 {
+	memory-region = <&vdev0buffer>, <&vdev0vring0>,
+			<&vdev0vring1>, <&rsc_table>;
+	memory-region-names = "vdev0buffer", "vdev0vring0",
+			      "vdev0vring1", "rsc-table";
+	status = "okay";
+};
+
+&edma1 {
+	/* reserved for M7 */
+	dma-channel-mask = <0x40>;
+};
+
+&edma2 {
+	/* reserved for M7 and V2X */
+	dma-channel-mask = <0xf>;
+};
+
+&micfil {
+	/* reserved for M7 */
+	status = "disabled";
+};
-- 
2.43.0


