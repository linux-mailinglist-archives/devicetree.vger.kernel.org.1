Return-Path: <devicetree+bounces-272341-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0GRcNy0yq2n2agEAu9opvQ
	(envelope-from <devicetree+bounces-272341-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 20:59:41 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BCBE22753E
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 20:59:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id DE6733075AB5
	for <lists+devicetree@lfdr.de>; Fri,  6 Mar 2026 19:59:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 744AF3128C9;
	Fri,  6 Mar 2026 19:58:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="WfZQtc6V"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8DEF44CF4F
	for <devicetree@vger.kernel.org>; Fri,  6 Mar 2026 19:58:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772827135; cv=none; b=LfdpX7fj1yGbAZFWfnED3rfmrlRKecXIVDBHC3fGe+xbzM6YdalGV3eOlgXPholOh3PTS527FCON/P4x+YUS/121EqCqCucTzO3HMknXTwvUhZDwR+a2b3yR3JJf8BCd6RqLW9Qj1M0KCwnmSW28oZcPqYQ0+qefo2p1x7YudWc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772827135; c=relaxed/simple;
	bh=3tics7Sp+ACzJ3fwwu/k4s5EkZCHDCq4yzTDw8EoxK4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=qrate9Gsw4giE9sIhoUoxF3Zs5blhV+sFEDnp/BRYS8acAYgrtggxt9csDY4ShnTLgxmbzCZcbm2hneEOAr5ktsedyEG054fZgVi7RxMSNnAd1RgaPAf/Js4SsXjl28CkepJhYi5g/IV/808jYHt2UTSBVV5E4+xOxuYJu8QYX8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=WfZQtc6V; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-4852e09e23dso115425e9.0
        for <devicetree@vger.kernel.org>; Fri, 06 Mar 2026 11:58:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772827131; x=1773431931; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TSGdR/fONreoDaJVUI/JFgQUgIkT771I117jJn+3wes=;
        b=WfZQtc6V3kxxEiiwEJpcBH/q4eCA9J5sXyXx/Lg33fhKKQeSFUbeBizIc9EF1KZ7Xb
         XQlB830WcEvhhjUHVJADIKlk/MhV7o30IkeGEMT+nfBmWgxoU813MroZmgC/rhq/BRlb
         sJKCF59U4v8gsf6k+Bugqc5PBmc2rpJkaUwENRYZkVqXfM6oT01vOexlcQ8FLD/zwGLU
         pGDok0Xyb1eEryJ25qQUe5uRfKysGNt+04TEhHgs9h+KBfpF9wNTlPHkmbzfuUjvGNB0
         y4dBBK7bTxUjHhdFO5HYh7TaTdpiSBq9m1eEUjOl4hQcPU0epZBMRBAPhKOUh04pd8sk
         aaRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772827131; x=1773431931;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=TSGdR/fONreoDaJVUI/JFgQUgIkT771I117jJn+3wes=;
        b=Kfxs0vZLD3NIAw79LnSLnZcYKglsAULIqE9zg9Jms1aBixH7MUGLqLG8Fayze/2ZWK
         wcLlAWb+IrGHV611wDTLPTgIoM3OvHESi/yRdUZwhGu7jJcZhMRAlJVg4XmcmUpleVoX
         y09npgZznlgCnY8YINQpOQD4RKLw3Ztar4pJ/jOpMrrwb+BDoDC4tcueuxgVOS+NvEG2
         rfDKRYGROJtiaLJ7soCpjqnWaxmb1/JXs9k6naMHXbMTExfefOru5R48bq8XpGGsfv3c
         qRNBPbagYWS0ww2i5fNZsn6EZOLJaUhIde56gxw7Su2hlr2DCS1peXV59U87xzRKXW7x
         XorA==
X-Forwarded-Encrypted: i=1; AJvYcCWRhWpjEFsvB9CwspMlMaPRMM0HAhUEZVm5NojK9Nm9cjRtnX54PXNhGDbN9l2WVI7UrQE4gp6R09x6@vger.kernel.org
X-Gm-Message-State: AOJu0YzbmKgljUBHJRXe543qMJJair/+3XU7iDp3NmeI2ZGBzXHvTyL6
	ltK5IBIeonkm9jllpfw3Zdqn8CIXe0uYs1W9JilCGJaj+k/vtCIP1LSG
X-Gm-Gg: ATEYQzwijmXpIiExt5gUUI6I/pQQyrzNTK/SU9UVkgYAnQ9VFCfRl5tNeUZonsAWKWN
	eJATG2kbE/ts8qpseoTzvhR/dKbI53PFQ2MpYUlzJnZ5pf1D8XxfmLgdujhaMSXGM+pQHPOp1l9
	BihR1th+u1t7T3Lib/dcsu9K3nEAWTQa0wjWeuM6gPX2kIZhxJsSI/8L7zXDRqGyFw21e0uWA8R
	TM4HOhEw/P4QYUiEDYMTb3f2QU7En/wyQcxCOX5p9qTRVZYlAXRAX8mgg88uRHlnzjx1O38aSsY
	riW3lOBoR0Or+GHPfuq2dPZquM167snmmZaCZ1hcEy78gZqdw2vVl1uIuXicr6J0gqKYSTAC48n
	TBmMgkF7HANDWbkgS7tai1O37U6Mjt6q2z2Gue5tSv3zy+RWj0kEkbyFWaPjBgXQ50B9CjG+9DL
	PL0Rn+X1EynpkbnWgQLnY+lS6RaoJHYr1oUbdu0A71RbNG8EJVHrFL0Ia9S7vfPJFbibnwGpgVH
	Pt4XS56X30he/jTRNXmoHKaDmwpfEnkU1kTqDA=
X-Received: by 2002:a05:600c:a12:b0:483:badb:618f with SMTP id 5b1f17b1804b1-48526966b07mr53084435e9.25.1772827131139;
        Fri, 06 Mar 2026 11:58:51 -0800 (PST)
Received: from Lord-Beerus.station (net-188-152-100-94.cust.dsl.teletu.it. [188.152.100.94])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48523803b5fsm25167265e9.7.2026.03.06.11.58.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Mar 2026 11:58:50 -0800 (PST)
From: Stefano Radaelli <stefano.radaelli21@gmail.com>
X-Google-Original-From: Stefano Radaelli <stefano.r@variscite.com>
To: linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org
Cc: pierluigi.p@variscite.com,
	Stefano Radaelli <stefano.r@variscite.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Frank Li <Frank.Li@nxp.com>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>
Subject: [PATCH v2 11/11] arm64: dts: imx8mm-var-som-symphony: Enable PCIe
Date: Fri,  6 Mar 2026 20:58:30 +0100
Message-ID: <a029d4f029274a368af0e9c58e9b41106857e436.1772826534.git.stefano.r@variscite.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1772826534.git.stefano.r@variscite.com>
References: <cover.1772826534.git.stefano.r@variscite.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 5BCBE22753E
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_FROM(0.00)[bounces-272341-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[variscite.com,kernel.org,nxp.com,pengutronix.de,gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[stefanoradaelli21@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.992];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,variscite.com:mid,variscite.com:email]
X-Rspamd-Action: no action

From: Stefano Radaelli <stefano.r@variscite.com>

Enable PCIe support on the VAR-SOM Symphony carrier board by adding the
external reference clock, configuring the PHY and providing the required
clock and reset properties.

Signed-off-by: Stefano Radaelli <stefano.r@variscite.com>
---
v1->v2:
 - 

 .../dts/freescale/imx8mm-var-som-symphony.dts | 28 +++++++++++++++++++
 1 file changed, 28 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm-var-som-symphony.dts b/arch/arm64/boot/dts/freescale/imx8mm-var-som-symphony.dts
index 9a29c81b06eb..0aa288af6c5e 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm-var-som-symphony.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mm-var-som-symphony.dts
@@ -6,6 +6,7 @@
 /dts-v1/;
 
 #include <dt-bindings/leds/common.h>
+#include <dt-bindings/phy/phy-imx8-pcie.h>
 #include "imx8mm-var-som.dtsi"
 #include "imx8mm-var-som-wifi-bt-iw61x.dtsi"
 
@@ -17,6 +18,12 @@ chosen {
 		stdout-path = &uart4;
 	};
 
+	pcie0_refclk: pcie0-refclk {
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+		clock-frequency = <100000000>;
+	};
+
 	reg_usdhc2_vmmc: regulator-usdhc2-vmmc {
 		compatible = "regulator-fixed";
 		pinctrl-names = "default";
@@ -205,6 +212,27 @@ &i2c4 {
 	status = "okay";
 };
 
+&pcie_phy {
+	fsl,refclk-pad-mode = <IMX8_PCIE_REFCLK_PAD_INPUT>;
+	fsl,tx-deemph-gen1 = <0x2d>;
+	fsl,tx-deemph-gen2 = <0xf>;
+	fsl,clkreq-unsupported;
+	clocks = <&pcie0_refclk>;
+	status = "okay";
+};
+
+&pcie0 {
+	reset-gpio = <&pca6408 1 GPIO_ACTIVE_LOW>;
+	clocks = <&clk IMX8MM_CLK_PCIE1_ROOT>, <&pcie0_refclk>,
+		 <&clk IMX8MM_CLK_PCIE1_AUX>;
+	assigned-clocks = <&clk IMX8MM_CLK_PCIE1_AUX>,
+			  <&clk IMX8MM_CLK_PCIE1_CTRL>;
+	assigned-clock-rates = <10000000>, <250000000>;
+	assigned-clock-parents = <&clk IMX8MM_SYS_PLL2_50M>,
+				 <&clk IMX8MM_SYS_PLL2_250M>;
+	status = "okay";
+};
+
 /* Header */
 &uart1 {
 	pinctrl-names = "default";
-- 
2.47.3


