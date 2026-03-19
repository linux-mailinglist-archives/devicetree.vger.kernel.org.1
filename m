Return-Path: <devicetree+bounces-277983-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4JOkD1JEvGmAwAIAu9opvQ
	(envelope-from <devicetree+bounces-277983-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 19:45:38 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id D7EBE2D13C8
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 19:45:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id ACC733228C1E
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 18:41:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4B56337E300;
	Thu, 19 Mar 2026 18:41:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="XhAURv+v"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC9CE3148DC
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 18:41:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773945715; cv=none; b=Hzm+vZjQboOcnfR5rqyr/TrTahZmuQbQVIIU0cX9fCcjTnatz6cc3DhkABX5qLQgSERjfQ8AJXdNffCfIWx338ucUohdcTUh8ZOfRJuGqebMMlOMPxlokTPTxWW34ZEK0fJrIKZEyGU/aZJz3ADS26fdj/O+hMrJLi16Xn80Mw8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773945715; c=relaxed/simple;
	bh=3jne8HIksbKA7WNAVpfua4BMiAl+n2r+dvdWoOSNPI4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=SmG5GYgpqZViAyG4kB/cACKCFyMrrIo4mtr3p+H4VSyfV2IhjYrvihgnPiow4pL6uyngP3Cc5AJrzHJzO18zI+8R5fRDmh0N8d4TIKdoyeldSxTDP1AmBhKl3Klw7Zkbnp52MI5XdpAx1PfaalgwrQVJhQDWNlOuc8yx1LZZwhM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=XhAURv+v; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-4856cd3f1ffso13343735e9.3
        for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 11:41:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773945711; x=1774550511; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Kt+R8rdhnMH0JxLkvpX/7AhCeFXaCuhgwgruVNrcyX4=;
        b=XhAURv+vtHtoX93HTKG7dchlohjqxfPxCsD95N1TZVuEUepXaIGqu9h8oEEhLkGYRW
         T1Vd1O5n+zO4cgkCj4Ei8GwWhxv0rRis9SzPo5G3JtHaS3MztNziwS5y8qOWNAe/aRZf
         6YdTCY4BvtESPFTpjqdRRK/Gi+16NoGPQFjUr9wBSiAldg7FiyY1tstnUA+PgC86RY7V
         slTCkEYZKJe9zbSni50oKeTq1eoC7C93yl+HLO3P4IOPQ+ZjY1qD3KeO07gOwP0lYrMU
         0Ipoco4FRdpH9wsVZv2/fPAbhYtDTPbDEkD5nXvYnHzQLaRAFVIxt5wOZXHq74ujZJxV
         G6iA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773945711; x=1774550511;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Kt+R8rdhnMH0JxLkvpX/7AhCeFXaCuhgwgruVNrcyX4=;
        b=cpD713ESLhj2pPF5rj0Yq4QJgY7TjRqvZZC0nVs+7BlT8kMU8pIxJPAd8Mj5o5870F
         iZ7NwcKJ3ytE+pHV6Nzc8fgkRZkUSg1PnKBToVEWC0DDMcb0Vlmn5QBJTuaLHF9OvCYP
         +funa9UbZCNzPKVl7xRSFEVRfDd7jHeIltpRAlpvZAFeQ9O2chhsLHcvo20vcn3ZvVoz
         GmUJMS5fzQHLIncVzZlkesyYs32AaDToAG9D/++CfuTeXfH1ymDIDPP3pGMkD5HUdRP9
         Zi59r60Ti66J6QEtGitnkYfH5G00Eir/hvvv2xSnFuDAK6DMovztL3/EN4kLY1sG94iP
         aWrA==
X-Forwarded-Encrypted: i=1; AJvYcCURTn2PAN3oGHxMHHM8Eso4vV/dO6gvzPlZ72oRBnSCA0m9nBx+uMpaSnD3Vs5YmpT1OKSDDNPUW9CO@vger.kernel.org
X-Gm-Message-State: AOJu0YxdP5raWf4nRUcfwtfWE9SjziNVIRuG4hikKfnxu5Me5J3jyv6y
	DUgA1zyqVuBOix3ySoqxl/626StjJP0xRjFbXnMtlGAezP5YVFquU5ju
X-Gm-Gg: ATEYQzxD3bj8/eIVkstg+WSSAuZFfdIXaKv+vSgm9/QF7zG3sI4FzrIibiH6VDVu2W9
	oxgfeFmP/QfiSvok/3+68zagL6lv43mwoW2eI+5rjUU1wzAId1dizjgS9yqvimUhUI/FJBygGh5
	pFt0Bvti9pPElDQRKy/3vofdsCKdiueAeI7adazqGMmT3eggYs7I/q4ckhsKTQqXa2xsDqzJYiw
	bZB2ZaEp8zUbNdmJ3eYVyvyedX2FwcSBGfqw5Bp0OvXEsXKXaAq4agD8lu2awFDNc8oEAxX1CTH
	URkHwFbBSjz3J2+K15j65LaN6Z7aEwstUy5q2xfyRJGfgNXH1uzKKXYGhfL05nY/JE1Os9IF+oa
	/kKjbvk4PA0yMFKOcboRModEdZ1bo8QcKUKYAT365eYI/t2O+7rh7qf+5JnUBgsNoJg9NgrmLqt
	CSH5/vF7Kllj0/04wqQaPh/QMS09wzixcJDtJKEEscQB4hXGl6JmU8dSpV8EAMHAIOD0eB8ntZm
	4CHGgbu00Bu+Fn/FSIWYPWLJ2Ci4kEncINOluY6elbQEX8B8g==
X-Received: by 2002:a05:600c:3b07:b0:47e:e2eb:bc22 with SMTP id 5b1f17b1804b1-486febb59acmr2852815e9.5.1773945710872;
        Thu, 19 Mar 2026 11:41:50 -0700 (PDT)
Received: from Lord-Beerus.station (net-188-152-100-94.cust.dsl.teletu.it. [188.152.100.94])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-486f8b1fe65sm77289195e9.5.2026.03.19.11.41.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Mar 2026 11:41:50 -0700 (PDT)
From: Stefano Radaelli <stefano.radaelli21@gmail.com>
X-Google-Original-From: Stefano Radaelli <stefano.r@variscite.com>
To: linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org
Cc: pierluigi.p@variscite.com,
	Stefano Radaelli <stefano.r@variscite.com>,
	Frank Li <Frank.Li@nxp.com>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Subject: [PATCH v4 01/11] arm64: dts: freescale: imx8mm-var-som: Move UART4 description to Symphony
Date: Thu, 19 Mar 2026 19:40:21 +0100
Message-ID: <d3fbc6a0d5782e86a2294f28786b415a7b072d19.1773944896.git.stefano.r@variscite.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1773944896.git.stefano.r@variscite.com>
References: <cover.1773944896.git.stefano.r@variscite.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_FROM(0.00)[bounces-277983-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[variscite.com,nxp.com,pengutronix.de,gmail.com,kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[stefanoradaelli21@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.739];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[2.98.90.0:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,variscite.com:email,variscite.com:mid]
X-Rspamd-Queue-Id: D7EBE2D13C8
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Stefano Radaelli <stefano.r@variscite.com>

The VAR-SOM-MX8MM module does not provide an onboard debug console.
UART4 is routed and exposed only on the Symphony carrier board, while
custom carrier designs may choose to expose a different UART.

Move the UART4 node from the SOM device tree to the
imx8mm-var-som-symphony.dts, keeping the SOM dtsi limited to hardware
present on the module itself.

Signed-off-by: Stefano Radaelli <stefano.r@variscite.com>
---
v3->v4:
 - 

v2->v3:
 - 

v1->v2:
 - 

 .../dts/freescale/imx8mm-var-som-symphony.dts  | 18 ++++++++++++++++++
 .../boot/dts/freescale/imx8mm-var-som.dtsi     | 18 ------------------
 2 files changed, 18 insertions(+), 18 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm-var-som-symphony.dts b/arch/arm64/boot/dts/freescale/imx8mm-var-som-symphony.dts
index affbc67c2ef6..819707e6f3bf 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm-var-som-symphony.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mm-var-som-symphony.dts
@@ -11,6 +11,10 @@ / {
 	model = "Variscite VAR-SOM-MX8MM Symphony evaluation board";
 	compatible = "variscite,var-som-mx8mm-symphony", "variscite,var-som-mx8mm", "fsl,imx8mm";
 
+	chosen {
+		stdout-path = &uart4;
+	};
+
 	reg_usdhc2_vmmc: regulator-usdhc2-vmmc {
 		compatible = "regulator-fixed";
 		pinctrl-names = "default";
@@ -156,6 +160,13 @@ &uart3 {
 	status = "okay";
 };
 
+/* Console */
+&uart4 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart4>;
+	status = "okay";
+};
+
 &usbotg1 {
 	disable-over-current;
 	extcon = <&extcon_usbotg1>, <&extcon_usbotg1>;
@@ -251,4 +262,11 @@ MX8MM_IOMUXC_UART3_RXD_UART3_DCE_RX	0x140
 			MX8MM_IOMUXC_UART3_TXD_UART3_DCE_TX	0x140
 		>;
 	};
+
+	pinctrl_uart4: uart4grp {
+		fsl,pins = <
+			MX8MM_IOMUXC_UART4_RXD_UART4_DCE_RX	0x140
+			MX8MM_IOMUXC_UART4_TXD_UART4_DCE_TX	0x140
+		>;
+	};
 };
diff --git a/arch/arm64/boot/dts/freescale/imx8mm-var-som.dtsi b/arch/arm64/boot/dts/freescale/imx8mm-var-som.dtsi
index 190bde4edcd7..b6560c03639e 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm-var-som.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm-var-som.dtsi
@@ -9,10 +9,6 @@
 / {
 	model = "Variscite VAR-SOM-MX8MM module";
 
-	chosen {
-		stdout-path = &uart4;
-	};
-
 	memory@40000000 {
 		device_type = "memory";
 		reg = <0x0 0x40000000 0 0x80000000>;
@@ -274,13 +270,6 @@ &uart2 {
 	status = "okay";
 };
 
-/* Console */
-&uart4 {
-	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_uart4>;
-	status = "okay";
-};
-
 &usbotg1 {
 	dr_mode = "otg";
 	usb-role-switch;
@@ -418,13 +407,6 @@ MX8MM_IOMUXC_SAI3_RXD_UART2_DCE_RTS_B	0x140
 		>;
 	};
 
-	pinctrl_uart4: uart4grp {
-		fsl,pins = <
-			MX8MM_IOMUXC_UART4_RXD_UART4_DCE_RX	0x140
-			MX8MM_IOMUXC_UART4_TXD_UART4_DCE_TX	0x140
-		>;
-	};
-
 	pinctrl_usdhc1: usdhc1grp {
 		fsl,pins = <
 			MX8MM_IOMUXC_SD1_CLK_USDHC1_CLK		0x190
-- 
2.47.3


