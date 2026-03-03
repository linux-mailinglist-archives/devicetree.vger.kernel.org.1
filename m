Return-Path: <devicetree+bounces-270762-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cK+wFkBMp2l2ggAAu9opvQ
	(envelope-from <devicetree+bounces-270762-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 22:01:52 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 59AFC1F70DB
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 22:01:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 40FC630299D8
	for <lists+devicetree@lfdr.de>; Tue,  3 Mar 2026 21:01:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F171333D507;
	Tue,  3 Mar 2026 21:01:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="aeumkXwO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A8B9225F994
	for <devicetree@vger.kernel.org>; Tue,  3 Mar 2026 21:01:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772571704; cv=none; b=TCzUcHqYc7gDDO28CzNZVoFvPqafYe857p2zlRc/ST5bpbub7KQ1y5mysmWLlFqYfEVV5SolpyLuFIckxSsPBnNLMLkhZ1uhKwVkdGbrTeBSSMd6gG2jfl2j+ddQvczv9ROPPoFQ1iFFRFudgSpmo41ggp/HDpp3XoorDyrOjKE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772571704; c=relaxed/simple;
	bh=IHXryiY++BfevlVsxT0ECg25Q+P4Vt/4UqfIqA0MORY=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=YuzJH78zGBtCFKmJtd5NfD3MzaXTXrCOC3ab+ARjB7tvdeKortyWa8khOHr3PGbpNqXzSRo6QXksY5LAarvUZLNVa86NxxhLEp1eNeTRVP9CL5H4lOIMpneIrSdfiIUJ0iRZIi6VQf5JPtQG8bjGOzQeQUNBNFzhysbTX+bCNWk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=aeumkXwO; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-48371bb515eso92322595e9.1
        for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 13:01:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772571702; x=1773176502; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=RUhLRAvy5gTHbtCFY778UgEyKl5bwdCfMR/gJ9Hus64=;
        b=aeumkXwO1M93d2Rwlfbz/eBXbxxYSEEa6C4uvjVjz1ZIV42ytmVRaCyLuUaeLFnOFm
         tg9AmkdlUlRjk+oAmH5aeN5CCcd3KIGLiy0YHDCTkxkNaWIEEC2RVjvnS/RufHhzBAGT
         /ajqbF6hthjS5e12lJ6eO8ZC5EkbJaFL2iF17+36XLtzoBRcD2FDJrFG3JCwY9DwmKE+
         5TnGV7DBpQ1plq7cxfpYXR5ybWg35HjUPnohunn88dv3Tiz98BhyLiOM+Zy+MZD02BM0
         wh031vm4/li9pTEgxwlWWtISP7EQgxA4SF26vEFjK59ZflNGo9AcEz24VAFtsS92TvN3
         KWdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772571702; x=1773176502;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RUhLRAvy5gTHbtCFY778UgEyKl5bwdCfMR/gJ9Hus64=;
        b=Y4Fy6p4+ymiRDsLjKxLjV//aVAEWsAs6wgyE/VL+CRA/BPZASR+/18dSDbAPKIsldi
         Xdb4bjK04D6MSEilzdbRS1U3on1jxtDmfV/Uhz2yHS4aQ74TLHBSRu3XdiqnrA9UjeND
         hY+qS/Jwh+5SjcKUKvSkuWDELUeUsbZC6/vx6wf6IbXzUqLwaRwTScddTBHWJXA5ZbgH
         UAXLhJKRmKC87QVGMBj2E0L42kpykE2K2vn8FbCbdA+QUFje3P3bWdijBlcDWsO8bvy1
         OJKg7DW8FkSO2ObJKb+VIq3h15iETTFN+Ig5fyd6wU+eEGKWe0r/SEtH7RGWaaN3jTtq
         C9bw==
X-Forwarded-Encrypted: i=1; AJvYcCVXmgctYbCsVBL3tnyV29GPdkvmEdzflMc4g06u4KRkrHvho9FnfVHCYJ1DjAm4fsSkEvLBHQt8j5tr@vger.kernel.org
X-Gm-Message-State: AOJu0YxzELjnp7QyGnzb2gb7uN1lyGFApQVAJZNbSEGnSgy8BX3zC7vC
	1hki/hf4nSW+y0EYksw8j+TGXyjjtMERb+XH8p/X86qLc6HKU9UN4J9S
X-Gm-Gg: ATEYQzxL/+mU3r3SxV6TZSXRtOTJi8dMfQRhv86TPiBe6Hndra+/7qAxVNL+rzqXI2P
	NKfGHlvfPxgruxPjFB+JvTaXDtfGnSeaYRyMcb9B9D1+l2mKgz8SzTODAfC3txJxBUK9YtvwoXp
	Rzra5D+D7qZRCwhQI/Dir0HSbxK1Gf/EvnuGTeYBfiWgtqMC7SvzsSIKJjLZJ1ac/ICtNRYJN2r
	Ne3WHS73oBn5TU9hN1DuFMh2vHPdk8DlnwltCN/6xrmx9o0ulupLcd9UnHMq+yo/CLbIMys65uR
	lVWZ7yY/cg6IxOUd5p5xscSq4piFO7/CrnYFPvOzl1wYRAEdVkJqAkZKSEy2cRtQkH/TV/kKn1H
	pro4DfGA7fBRW20YI6sm/fFyMP9JlwBHNGXnG4DJOL600FEh6n9Bym6seyHKxlTc11aF1kfPXNx
	88Z05OZ2fMyWB5pWAQQ81IP3BZAlZgQbFc5y0NMq/zKQhCGzh6B7JAiwt3+MI/dakDqdcdIB4bM
	3pDKMPw6RIzZgKDGasXql41MSM=
X-Received: by 2002:a05:600c:4f8b:b0:477:af8d:203a with SMTP id 5b1f17b1804b1-483c9c205a6mr306337205e9.27.1772571701881;
        Tue, 03 Mar 2026 13:01:41 -0800 (PST)
Received: from emanueleg-nb.corp.toradex.int (93-34-120-147.ip49.fastwebnet.it. [93.34.120.147])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4851884224fsm3155035e9.4.2026.03.03.13.01.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Mar 2026 13:01:41 -0800 (PST)
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
Subject: [PATCH v2] arm64: dts: freescale: imx95-toradex-smarc: Support Cortex M7
Date: Tue,  3 Mar 2026 22:01:07 +0100
Message-ID: <20260303210125.1781197-1-ghidoliemanuele@gmail.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 59AFC1F70DB
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
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
	TAGGED_FROM(0.00)[bounces-270762-lists,devicetree=lfdr.de];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[ghidoliemanuele@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	DBL_PROHIBIT(0.00)[5.62.198.0:email,4.196.180.0:email,5.62.229.64:email,5.63.20.32:email,5.63.12.80:email,5.62.237.16:email];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[5.66.33.96:email]
X-Rspamd-Action: no action

From: Emanuele Ghidoli <emanuele.ghidoli@toradex.com>

Enable Cortex M7, the vring nodes, a mailbox and reserve DDR memory for
the M7. The remoteproc framework is so capable to load and run the M7
firmware.

Signed-off-by: Emanuele Ghidoli <emanuele.ghidoli@toradex.com>
---
Changes in v2:
- Use necessary node names (rsc-table, vdev*)

v1: https://lore.kernel.org/lkml/20260303121324.1576841-1-ghidoliemanuele@gmail.com/

 .../dts/freescale/imx95-toradex-smarc.dtsi    | 50 +++++++++++++++++++
 1 file changed, 50 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx95-toradex-smarc.dtsi b/arch/arm64/boot/dts/freescale/imx95-toradex-smarc.dtsi
index 5932ba238a8a..748fd7d9e7e0 100644
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
+		rsc_table: rsc-table@88220000 {
+			reg = <0 0x88220000 0 0x1000>;
+			no-map;
+		};
+
+		vdev0vring0: vdev0vring0@88000000 {
+			reg = <0 0x88000000 0 0x8000>;
+			no-map;
+		};
+
+		vdev0vring1: vdev0vring1@88008000 {
+			reg = <0 0x88008000 0 0x8000>;
+			no-map;
+		};
+
+		vdev1vring0: vdev1vring0@88010000 {
+			reg = <0 0x88010000 0 0x8000>;
+			no-map;
+		};
+
+		vdev1vring1: vdev1vring1@88018000 {
+			reg = <0 0x88018000 0 0x8000>;
+			no-map;
+		};
+
+		vdevbuffer: vdevbuffer@88020000 {
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


