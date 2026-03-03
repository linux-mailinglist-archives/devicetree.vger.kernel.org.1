Return-Path: <devicetree+bounces-270455-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2IvkJYjQpmmgWwAAu9opvQ
	(envelope-from <devicetree+bounces-270455-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 13:14:00 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3881B1EF21D
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 13:14:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id C46AB3030D85
	for <lists+devicetree@lfdr.de>; Tue,  3 Mar 2026 12:13:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 93DF033FE12;
	Tue,  3 Mar 2026 12:13:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="b+PkR2E/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 133DF33F8B8
	for <devicetree@vger.kernel.org>; Tue,  3 Mar 2026 12:13:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772540035; cv=none; b=G+fJiixwep3yk9+HJ5Ejq0IVQ/UASxmdv8oLL8I4CyD88xdGw8HHi7XTg2cZmRGbVpnMHCCSzGW0ClhqrHQ4SQaTAea7PXUSGxCklMixa2CU4hU6jpGEsT4pJsllwjitjFXyH0FAGfelsc/LMxOZA0tF7u9VQSF8dDIm+e4Gerc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772540035; c=relaxed/simple;
	bh=iaaMMI/k7WQJvHt1nbIJyR0XOGadyN9uqrto12B+tb8=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=i6vVwfgueKGVdAkLN2RrbP3IZwhAXIZHqGCIobCiaY0mSPk5I6UejUeNO7+UiZJ/NC77Sif0hAK13myT8PgS1uRsPCYQbtfcXonpbUEWnPhygX6qMrUqXn6HJqIWMcQ5qRBoqaB9Vn7IP+766HFLQr6R10IJwjGsh5INFF+U5o0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=b+PkR2E/; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-4836f4cbe0bso47822485e9.3
        for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 04:13:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772540031; x=1773144831; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=gqNb2+lvfz7Zcwb57rdSTxDdzqT6Z0aXOwyE7epiZnM=;
        b=b+PkR2E/yqp3sjeQEHG9fxnuYzEqG2kN0rb2b73pAQUG0wRwrJlviVsqMg1baunqoc
         fIKzcYxFIRaiUdFCE2/Ljcfu0i13QjMt/s4gfppDu/FTsaVeakFV1CyBUC3pEvgxoazS
         l088DpZsJleH1mKC2UTdMaBfIqBc70jc4+ipx3ZGFfF2zaJwB3vtEqHxujVDkC2xTFBB
         yb9qI72YTpLl01qz/Xcw2s4FpanVrcX6f9L1N5c4q+tXzQKih9fnlDpiJ0qf1lXeSNBR
         i/byKpn9H66Emw4G47wztKxq//Nn4RcS/3CdBec3qCaAbKko+jmydLQIuMPTej0rPGct
         oJ0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772540031; x=1773144831;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gqNb2+lvfz7Zcwb57rdSTxDdzqT6Z0aXOwyE7epiZnM=;
        b=eir+8ORkrgmG1pDi+I4AeqV2uxCImYkigkF5EW0eDrDMW4DEU7xhXVW3hRmMfH6+wu
         SVnistX/ssg0tdu2T8s5qz3B0dwxDwA+NFfhtlBvSrBuWB1UIdulU801J9AIcnnbCOq5
         7HV5u5xcf3JmHMPYquHQZAw4TQjOCYXcWGxoL3Y8KdtQnNpOfr/q0nr2EDygK0PWpdCH
         PWJQuWy2nTKf30q3aycxE0TMM4uRxSq/JIx4Z1mUjt7Ti8+c9Zl3NG50si2mNB4yDipD
         oFi9f5wG+axzgZdp5a2oQiQIG2sxqYtBrBAvhAjg98G1/KlIB9gQYhLN5wiE6+xXkzSM
         ybkQ==
X-Forwarded-Encrypted: i=1; AJvYcCXSu4jrKyk6NC0n3fAm0wCQJBwNKTFQIpcvK6xX2w0m2Bj2xCpWj8jAc2m0xh2v0QW2hWgBpc7SEmSu@vger.kernel.org
X-Gm-Message-State: AOJu0YzkvlyGOnejuGqyINqmAZJ9KFgiSlRsMA0G2p/vbLCQt98v7rCk
	wFzrd0ID06uY/y05YWpGV/hTRVLk/rs9qvc6cqGXNLdrikO/YHLj5Zil
X-Gm-Gg: ATEYQzwHU5J2bf6fX9jeJnSJ4NbnIUxwK3sUDZ/DL+iWAV1h4AZblUK2F0zpfPLCPNS
	8DAff7VeIeDOwzx1JV6lm28CDqUifHxfS93acDicvhRA2W40NKhmTRNEpSX9BhROyroI2Nm2fPv
	8xdmkU0WouwENIK0gngYZ5D0zM9VVce0QDt1CbSTdwTyijzL64uDmaMnSNfVFTzY33WImMn9HuA
	gKFlioIuN0g/y1no4dZZbWoy9U2iw8wuOil8Jod3W/AReYdDGvrsSmJfBN4P05EJYQQhYH5Kc0k
	W1tXq/r48JIVkmLqewI5UCF6Wd+bP8HyoDQ24oMLHOuwmh5mKyxdUm6Qinm6mqqF2YYAhFsF6JQ
	346YREGgHzDCRPAQ58g2LdQcbDDlEPk48jbNkMGH9NA+PhnDCOcYyAs5wUsJlTMeLkv5mm9yXo9
	e89pktuRG8S4P57d683GtiREKwRuZc505tS8KwlZiFZlgx9Lt1f7nFY9mrL+4ynSgi3vG93mNaI
	GfORJ6twDYAt9xl
X-Received: by 2002:a05:600c:4fc8:b0:47b:e2a9:2bd7 with SMTP id 5b1f17b1804b1-483c9beaca0mr330124105e9.19.1772540031180;
        Tue, 03 Mar 2026 04:13:51 -0800 (PST)
Received: from emanueleg-nb.corp.toradex.int (93-34-120-147.ip49.fastwebnet.it. [93.34.120.147])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4399c75b272sm33572593f8f.24.2026.03.03.04.13.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Mar 2026 04:13:50 -0800 (PST)
From: Emanuele Ghidoli <ghidoliemanuele@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Frank Li <Frank.Li@nxp.com>,
	Sascha Hauer <s.hauer@pengutronix.de>
Cc: Emanuele Ghidoli <emanuele.ghidoli@toradex.com>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v1] arm64: dts: freescale: imx95-toradex-smarc: Support Cortex M7
Date: Tue,  3 Mar 2026 13:13:06 +0100
Message-ID: <20260303121324.1576841-1-ghidoliemanuele@gmail.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 3881B1EF21D
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[toradex.com,pengutronix.de,gmail.com,vger.kernel.org,lists.linux.dev,lists.infradead.org];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[12];
	TAGGED_FROM(0.00)[bounces-270455-lists,devicetree=lfdr.de];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[ghidoliemanuele@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	DBL_PROHIBIT(0.00)[5.63.20.32:email,4.196.180.0:email,5.63.12.80:email,5.62.229.64:email];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,5.62.198.0:email,5.62.237.16:email,5.66.33.96:email]
X-Rspamd-Action: no action

From: Emanuele Ghidoli <emanuele.ghidoli@toradex.com>

Enable Cortex M7, the vring nodes, a mailbox and reserve DDR memory for
the M7. The remoteproc framework is so capable to load and run the M7
firmware.

Signed-off-by: Emanuele Ghidoli <emanuele.ghidoli@toradex.com>
---
 .../dts/freescale/imx95-toradex-smarc.dtsi    | 50 +++++++++++++++++++
 1 file changed, 50 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx95-toradex-smarc.dtsi b/arch/arm64/boot/dts/freescale/imx95-toradex-smarc.dtsi
index 5932ba238a8a..77c4a6dee098 100644
--- a/arch/arm64/boot/dts/freescale/imx95-toradex-smarc.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx95-toradex-smarc.dtsi
@@ -42,6 +42,16 @@ clk_serdes_eth_ref: clock-eth-ref {
 		enable-gpios = <&som_gpio_expander_1 13 GPIO_ACTIVE_HIGH>;
 	};
 
+	cm7: remoteproc-cm7 {
+		compatible = "fsl,imx95-cm7";
+		mbox-names = "tx", "rx", "rxdb";
+		mboxes = <&mu7 0 1
+			  &mu7 1 1
+			  &mu7 3 1>;
+		memory-region = <&vdevbuffer>, <&vdev0vring0>, <&vdev0vring1>,
+				<&vdev1vring0>, <&vdev1vring1>, <&rsc_table>, <&m7_reserved>;
+	};
+
 	connector {
 		compatible = "gpio-usb-b-connector", "usb-b-connector";
 		/* SMARC P64 - USB0_OTG_ID */
@@ -156,6 +166,42 @@ linux_cma: linux,cma {
 			alloc-ranges = <0 0x80000000 0 0x7f000000>;
 			linux,cma-default;
 		};
+
+		m7_reserved: memory@80000000 {
+			reg = <0 0x80000000 0 0x1000000>;
+			no-map;
+		};
+
+		rsc_table: memory@88220000 {
+			reg = <0 0x88220000 0 0x1000>;
+			no-map;
+		};
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
+		vdev1vring0: memory@88010000 {
+			reg = <0 0x88010000 0 0x8000>;
+			no-map;
+		};
+
+		vdev1vring1: memory@88018000 {
+			reg = <0 0x88018000 0 0x8000>;
+			no-map;
+		};
+
+		vdevbuffer: memory@88020000 {
+			compatible = "shared-dma-pool";
+			reg = <0 0x88020000 0 0x100000>;
+			no-map;
+		};
 	};
 };
 
@@ -572,6 +618,10 @@ &lpuart3 {
 	pinctrl-0 = <&pinctrl_uart3>;
 };
 
+&mu7 {
+	status = "okay";
+};
+
 /* SMARC MDIO, shared between all ethernet ports */
 &netc_emdio {
 	pinctrl-names = "default";
-- 
2.43.0


