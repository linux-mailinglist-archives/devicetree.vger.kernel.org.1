Return-Path: <devicetree+bounces-260402-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kNe2HUcIemn11wEAu9opvQ
	(envelope-from <devicetree+bounces-260402-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 13:59:51 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id E2789A1B7D
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 13:59:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 09C543046DA7
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 12:59:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2012E352FB1;
	Wed, 28 Jan 2026 12:59:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="W3mA5XCh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A9B70352C41
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 12:59:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769605144; cv=none; b=c66qM2v6LNYDz344aMku+Y7oL+09GgfHZQUO856wxWCJOaJfL5cRNMEZ4pL8ZN+Lp189lZ1qllnEJPQoCe/h9edYLAvnmwOnTwgNlDd5Hat9j6KLD5sq2rMcFNk5i1m27IWjIYbazwJpfmEKXAkZi8tqz1iyBV5VwQYuAwfeujw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769605144; c=relaxed/simple;
	bh=q+nYWFHjqgJsmMuPHwyP/4yPIYoBxVg5Gr+o814mM80=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=j4TQwElO5Dth9gp5nJwmQRENRbyNhiHoSmELtLB7Cdc0N8ZaUGLr9juuHzz88/K/L0DY0iUFA3oogmfcD3QWUr1uRJRce3E/C2N9OF4yc+feZlscOGstAsnbPPvJNKWqoYITVJ3KZ5C65XwsfR7O8HaOxxauaQxG/rCo8IxLryk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=W3mA5XCh; arc=none smtp.client-ip=209.85.218.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f51.google.com with SMTP id a640c23a62f3a-b8863db032dso868553866b.0
        for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 04:59:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769605140; x=1770209940; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=X+uBA1NMfAjzmPZ5hrTvFBltOdnqtENQi+wu8sk3HBs=;
        b=W3mA5XChNZ+HIIxTX232StIX3UBIMXeVH7MkwBcyiv4Bp3/CnDDOUyKhclcSae/8Fj
         nWwN8rC6HiU+L+MW0abZbNNM1l7ltc2t+XesLZOI5KVjBak/dJbmT6xAnovWCr9tjT5p
         Fc0r+2gfesXjQr4doTOtuXvxkdzdIg78oFh2zXoRHZ9FbqrAKUB7mB/D3eq2PSCEBYXY
         u9+bwSS9b1K28tUrgmXtfeUci9MTxtTXTJ3KblYDAXcuN5TChSaaP6d5nFLgpDU4E+5h
         lJMJJ1nvgrixEucpY15j05ZTbWeBIaqzfM6LsPIcOObIhCCwdBA5aWnQqG8D5FiyYveH
         kDLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769605140; x=1770209940;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=X+uBA1NMfAjzmPZ5hrTvFBltOdnqtENQi+wu8sk3HBs=;
        b=IknFZ6mDr0skiBLX0vAOr3DOdwncoaKEgwwZ7L7ArTj47e9X2hVIAepmKg461h/qbo
         kPcH4ZffAZ9u4bIta6fQ5Y/vC9brRCVTlw8IB12iHL7v/HaeBQmwSeMxHhq+xq2POjPJ
         SZ6WIr5z1f+bJZhj09w/zTMj99Qd8nAfrchj1viGlz9Pe74aWoNe6HXrGvY3AI3nFPT0
         iug+rjyaMvOyrmRphh+5nzto5M8DopKNDrOooollZ9YNSbrkATLJjVP3Joq23HxzgkXN
         MaI7RbGL8teLy7ceCe+8Y1XtTwYOWpk7MjyzcmujHWtOPZSksV56Hb3FK0TmWDGgCeiN
         hnOQ==
X-Forwarded-Encrypted: i=1; AJvYcCWhmgF7rtsv2Cp+Zy14CxYR6s5jyNttOzPxpkk6KInjOKYT3A3GdVKT+XnmKQMmFP/po3xAnk1w+sI1@vger.kernel.org
X-Gm-Message-State: AOJu0YypsqEE71xASRknf5ARAviNxf+P7t8rqaeHTYoHwu84OwgXRc0c
	Cx0vgsJQZaRpu1AP7CBnroF5LxmF6lFnajbf4wxRDw2VFEwXcu0t69BG
X-Gm-Gg: AZuq6aIkJOwYK7CKO2dVUinsO/54TOBljV+sUhsigeibuEdQrMGm247OJAtg1upgoFQ
	PEEDAScorvgWCxZZjETp41De9eYXgQy8+exYEZHw8BoXOaGgE6lCbHFV0f5+QoT0YMq01EB2hwI
	0XRf9Trvu1eSFTncdc9FlVCmQEJrVo2peYle4t4ktk8Q5pBhjfEhOSSQsKG/NZdaeswsDPwL7Sx
	lMqOgcT3nYU7jXZfNIv0OcQ8wKIddqzWAxuTyo33Tz7Cf7iXtXlI5hiWIiYy/ZAqJPVA+EnK5CB
	YWUDEVSOheq+8+XtsYiP5oQ5W7jIZyIeXaQDuvJwGG527LeFjq8ULjPe1Knfdvqc2oL190MGLBX
	L1uAvSGO/MAjNeCLEVdtfxJYpoygPhPv3bG8Y3CGguzN9v5to+FFqjAOnbNsKxo9+4MuDpjgnbm
	QTiEQLVCVNfvFI3pKDY6+cU1YsrZZ2HH92ty0=
X-Received: by 2002:a17:907:9714:b0:b87:63a8:880c with SMTP id a640c23a62f3a-b8dab1b52fcmr350317466b.19.1769605139558;
        Wed, 28 Jan 2026 04:58:59 -0800 (PST)
Received: from localhost.localdomain ([2a00:23c4:a758:8a01:e29d:6e0e:72c1:d15d])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8dbf2f3e26sm123344966b.67.2026.01.28.04.58.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Jan 2026 04:58:59 -0800 (PST)
From: Biju <biju.das.au@gmail.com>
X-Google-Original-From: Biju <biju.das.jz@bp.renesas.com>
To: Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Richard Cochran <richardcochran@gmail.com>
Cc: Biju Das <biju.das.jz@bp.renesas.com>,
	linux-renesas-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	netdev@vger.kernel.org,
	Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	Biju Das <biju.das.au@gmail.com>
Subject: [PATCH net-next 7/8] arm64: dts: renesas: r9a08g046: Add GBETH nodes
Date: Wed, 28 Jan 2026 12:58:44 +0000
Message-ID: <20260128125850.425264-8-biju.das.jz@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260128125850.425264-1-biju.das.jz@bp.renesas.com>
References: <20260128125850.425264-1-biju.das.jz@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_TO(0.00)[glider.be,gmail.com,kernel.org];
	RCVD_TLS_LAST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-260402-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[13];
	FREEMAIL_CC(0.00)[bp.renesas.com,vger.kernel.org,gmail.com];
	DKIM_TRACE(0.00)[gmail.com:+];
	FROM_NEQ_ENVFROM(0.00)[bijudasau@gmail.com,devicetree@vger.kernel.org];
	NEURAL_HAM(-0.00)[-1.000];
	DBL_PROHIBIT(0.00)[0.189.53.128:email];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[bp.renesas.com:mid,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,11c30000:email,11c40000:email,renesas.com:email,11c10000:email]
X-Rspamd-Queue-Id: E2789A1B7D
X-Rspamd-Action: no action

From: Biju Das <biju.das.jz@bp.renesas.com>

Renesas RZ/G3L SoC is equipped with 2x Synopsys DesignWare Ethernet
(10/100/1000 BASE) with TSN, IP block version 5.30. Add GBETH nodes
to R9A08G046 RZ/G3L SoC DTSI.

Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
---
 arch/arm64/boot/dts/renesas/r9a08g046.dtsi | 237 +++++++++++++++++++++
 1 file changed, 237 insertions(+)

diff --git a/arch/arm64/boot/dts/renesas/r9a08g046.dtsi b/arch/arm64/boot/dts/renesas/r9a08g046.dtsi
index 0922ad642c67..231b118ecc62 100644
--- a/arch/arm64/boot/dts/renesas/r9a08g046.dtsi
+++ b/arch/arm64/boot/dts/renesas/r9a08g046.dtsi
@@ -228,6 +228,236 @@ sdhi1: mmc@11c10000 {
 			/* placeholder */
 		};
 
+		eth0: ethernet@11c30000 {
+			compatible = "renesas,r9a08g046-gbeth", "snps,dwmac-5.30a";
+			reg = <0 0x11c30000 0 0x10000>;
+			interrupts = <GIC_SPI 78 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 80 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 79 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 85 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 86 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 87 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 88 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 81 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 82 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 83 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 84 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 89 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 90 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 91 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 92 IRQ_TYPE_EDGE_RISING>;
+			interrupt-names = "macirq", "eth_wake_irq", "eth_lpi",
+					  "rx-queue-0", "rx-queue-1", "rx-queue-2",
+					  "rx-queue-3", "tx-queue-0", "tx-queue-1",
+					  "tx-queue-2", "tx-queue-3", "ptp-pps-0",
+					  "ptp-pps-1", "ptp-pps-2", "ptp-pps-3";
+			clocks =  <&cpg CPG_MOD R9A08G046_ETH0_CLK_AXI>,
+				  <&cpg CPG_MOD R9A08G046_ETH0_CLK_CHI>,
+				  <&cpg CPG_MOD R9A08G046_ETH0_CLK_PTP_REF_I>,
+				  <&cpg CPG_MOD R9A08G046_ETH0_CLK_TX_I>,
+				  <&cpg CPG_MOD R9A08G046_ETH0_CLK_RX_I>,
+				  <&cpg CPG_MOD R9A08G046_ETH0_CLK_TX_180_I>,
+				  <&cpg CPG_MOD R9A08G046_ETH0_CLK_RX_180_I>,
+				  <&cpg CPG_MOD R9A08G046_ETH0_CLK_RMII_I>;
+			clock-names = "stmmaceth", "pclk", "ptp_ref",
+				      "tx", "rx", "tx-180", "rx-180",
+				      "rmii";
+			resets = <&cpg R9A08G046_ETH0_ARESET_N>;
+			power-domains = <&cpg>;
+			snps,multicast-filter-bins = <256>;
+			snps,perfect-filter-entries = <128>;
+			rx-fifo-depth = <8192>;
+			tx-fifo-depth = <8192>;
+			snps,fixed-burst;
+			snps,no-pbl-x8;
+			snps,force_thresh_dma_mode;
+			snps,axi-config = <&stmmac_axi_setup>;
+			snps,mtl-rx-config = <&mtl_rx_setup0>;
+			snps,mtl-tx-config = <&mtl_tx_setup0>;
+			snps,txpbl = <32>;
+			snps,rxpbl = <32>;
+			status = "disabled";
+
+			mdio0: mdio {
+				compatible = "snps,dwmac-mdio";
+				#address-cells = <1>;
+				#size-cells = <0>;
+			};
+
+			mtl_rx_setup0: rx-queues-config {
+				snps,rx-queues-to-use = <4>;
+				snps,rx-sched-sp;
+
+				queue0 {
+					snps,dcb-algorithm;
+					snps,priority = <0x1>;
+					snps,map-to-dma-channel = <0>;
+				};
+
+				queue1 {
+					snps,dcb-algorithm;
+					snps,priority = <0x2>;
+					snps,map-to-dma-channel = <1>;
+				};
+
+				queue2 {
+					snps,dcb-algorithm;
+					snps,priority = <0x4>;
+					snps,map-to-dma-channel = <2>;
+				};
+
+				queue3 {
+					snps,dcb-algorithm;
+					snps,priority = <0x8>;
+					snps,map-to-dma-channel = <3>;
+				};
+			};
+
+			mtl_tx_setup0: tx-queues-config {
+				snps,tx-queues-to-use = <4>;
+				snps,tx-sched-wrr;
+
+				queue0 {
+					snps,weight = <0x10>;
+					snps,dcb-algorithm;
+					snps,priority = <0x1>;
+				};
+
+				queue1 {
+					snps,weight = <0x12>;
+					snps,dcb-algorithm;
+					snps,priority = <0x2>;
+				};
+
+				queue2 {
+					snps,weight = <0x14>;
+					snps,dcb-algorithm;
+					snps,priority = <0x4>;
+				};
+
+				queue3 {
+					snps,weight = <0x18>;
+					snps,dcb-algorithm;
+					snps,priority = <0x8>;
+				};
+			};
+		};
+
+		eth1: ethernet@11c40000 {
+			compatible = "renesas,r9a08g046-gbeth", "snps,dwmac-5.30a";
+			reg = <0 0x11c40000 0 0x10000>;
+			interrupts = <GIC_SPI 93 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 95 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 94 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 100 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 101 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 102 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 103 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 96 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 97 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 98 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 99 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 104 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 105 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 106 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 107 IRQ_TYPE_EDGE_RISING>;
+			interrupt-names = "macirq", "eth_wake_irq", "eth_lpi",
+					  "rx-queue-0", "rx-queue-1", "rx-queue-2",
+					  "rx-queue-3", "tx-queue-0", "tx-queue-1",
+					  "tx-queue-2", "tx-queue-3", "ptp-pps-0",
+					  "ptp-pps-1", "ptp-pps-2", "ptp-pps-3";
+			clocks = <&cpg CPG_MOD R9A08G046_ETH1_CLK_AXI>,
+				 <&cpg CPG_MOD R9A08G046_ETH1_CLK_CHI>,
+				 <&cpg CPG_MOD R9A08G046_ETH1_CLK_PTP_REF_I>,
+				 <&cpg CPG_MOD R9A08G046_ETH1_CLK_TX_I>,
+				 <&cpg CPG_MOD R9A08G046_ETH1_CLK_RX_I>,
+				 <&cpg CPG_MOD R9A08G046_ETH1_CLK_TX_180_I>,
+				 <&cpg CPG_MOD R9A08G046_ETH1_CLK_RX_180_I>,
+				 <&cpg CPG_MOD R9A08G046_ETH1_CLK_RMII_I>;
+			clock-names = "stmmaceth", "pclk", "ptp_ref",
+				      "tx", "rx", "tx-180", "rx-180",
+				      "rmii";
+			resets = <&cpg R9A08G046_ETH1_ARESET_N>;
+			power-domains = <&cpg>;
+			snps,multicast-filter-bins = <256>;
+			snps,perfect-filter-entries = <128>;
+			rx-fifo-depth = <8192>;
+			tx-fifo-depth = <8192>;
+			snps,fixed-burst;
+			snps,no-pbl-x8;
+			snps,force_thresh_dma_mode;
+			snps,axi-config = <&stmmac_axi_setup>;
+			snps,mtl-rx-config = <&mtl_rx_setup1>;
+			snps,mtl-tx-config = <&mtl_tx_setup1>;
+			snps,txpbl = <32>;
+			snps,rxpbl = <32>;
+			status = "disabled";
+
+			mdio1: mdio {
+				compatible = "snps,dwmac-mdio";
+				#address-cells = <1>;
+				#size-cells = <0>;
+			};
+
+			mtl_rx_setup1: rx-queues-config {
+				snps,rx-queues-to-use = <4>;
+				snps,rx-sched-sp;
+
+				queue0 {
+					snps,dcb-algorithm;
+					snps,priority = <0x1>;
+					snps,map-to-dma-channel = <0>;
+				};
+
+				queue1 {
+					snps,dcb-algorithm;
+					snps,priority = <0x2>;
+					snps,map-to-dma-channel = <1>;
+				};
+
+				queue2 {
+					snps,dcb-algorithm;
+					snps,priority = <0x4>;
+					snps,map-to-dma-channel = <2>;
+				};
+
+				queue3 {
+					snps,dcb-algorithm;
+					snps,priority = <0x8>;
+					snps,map-to-dma-channel = <3>;
+				};
+			};
+
+			mtl_tx_setup1: tx-queues-config {
+				snps,tx-queues-to-use = <4>;
+				snps,tx-sched-wrr;
+
+				queue0 {
+					snps,weight = <0x10>;
+					snps,dcb-algorithm;
+					snps,priority = <0x1>;
+				};
+
+				queue1 {
+					snps,weight = <0x12>;
+					snps,dcb-algorithm;
+					snps,priority = <0x2>;
+				};
+
+				queue2 {
+					snps,weight = <0x14>;
+					snps,dcb-algorithm;
+					snps,priority = <0x4>;
+				};
+
+				queue3 {
+					snps,weight = <0x18>;
+					snps,dcb-algorithm;
+					snps,priority = <0x8>;
+				};
+			};
+		};
+
 		gic: interrupt-controller@12400000 {
 			compatible = "arm,gic-v3";
 			reg = <0x0 0x12400000 0 0x20000>,
@@ -239,6 +469,13 @@ gic: interrupt-controller@12400000 {
 		};
 	};
 
+	stmmac_axi_setup: stmmac-axi-config {
+		snps,lpi_en;
+		snps,wr_osr_lmt = <0xf>;
+		snps,rd_osr_lmt = <0xf>;
+		snps,blen = <16 8 4 0 0 0 0>;
+	};
+
 	timer {
 		compatible = "arm,armv8-timer";
 		interrupts = <GIC_PPI 13 IRQ_TYPE_LEVEL_LOW>,
-- 
2.43.0


