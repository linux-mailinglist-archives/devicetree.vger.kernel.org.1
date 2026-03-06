Return-Path: <devicetree+bounces-272336-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oHbZFD8yq2n2agEAu9opvQ
	(envelope-from <devicetree+bounces-272336-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 20:59:59 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id DB37C227555
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 20:59:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3B89130FC93E
	for <lists+devicetree@lfdr.de>; Fri,  6 Mar 2026 19:58:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 73C6243E9C2;
	Fri,  6 Mar 2026 19:58:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="naPU6MYd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0C2743DA5C
	for <devicetree@vger.kernel.org>; Fri,  6 Mar 2026 19:58:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772827127; cv=none; b=ES/OW1Wzs8wj/YGJTND+pcMik1C7u1ho2VeSFPs1rmIzqfI04vMWI24p9xQ4ZMA6A1cZPP9YT3+44t1GP5EbVqboH34k05AsGOs+Jze7V50uZ6B3Qylm4EXvoq1ANfMdOhYcrk1LHzC1FXgVr7QUQt9M5+wvgDgO/dK0fk2ACLw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772827127; c=relaxed/simple;
	bh=zlCzFQV4Y1ccEM4u67hbvrmKWgTrQCbHVkFvjqcghM0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=WuwP1nr2D3ua68EJAbmQfT8ZZB3QbBYnfH/+HdSmsDRiDStwS2Ru5Z3c6AZGohhqudZNUUhx4uCwyt9QVA5RBUY/0Hgq8K5OWMnykINQ0PhaYMq/K3Lqf6qEfV6tNvEpiHl1FofRj0Dnd3EJ63xsnFPy42Ulsm3mHJ+nEARu5NM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=naPU6MYd; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-4836f4cbe0bso83838895e9.3
        for <devicetree@vger.kernel.org>; Fri, 06 Mar 2026 11:58:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772827124; x=1773431924; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nQRz3vom4i98v5hOr3xa41qzBpQfTuX5yERFzQc6reQ=;
        b=naPU6MYdAAeXVToHshy9nB8MLstPUPLrVNnHVeQC/QvugJi8hXt0bFpYGV01IXEAXf
         hwsL4IUQ/+9gaYqflFsbO0woJeuwKzdJu/C/ygZXgsk23JVB00sxgQv+hQEqc0lzTPCs
         R3K9awtrvEaQDcRiYMpKM9U3d8XR1rXTX6+dulTmH8pJfJelQQSA7CFSeBidpFAfqOvY
         mz7QLSz6GrSu8GIn5wgOMh59VjJJyZi+csN92DRqCQ4Rxtj5lwUhRa3tZCDL3K/8SDBj
         SMYmPxVk8A/K91RSeCa+ucMkcmbAWJQ4w23QstsgMsD8OpFhRYr5Dv3qTLt6l/LCkzsb
         TAPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772827124; x=1773431924;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=nQRz3vom4i98v5hOr3xa41qzBpQfTuX5yERFzQc6reQ=;
        b=TN8m+8XzX9oMeFy8LhWrtDU8VaH2qN9l2vyfGsnWLjwHn/bWJacAGqd9ctpibe2Bf8
         Y+JNsflxeXFTCYPmn3dOgXG5AqU5z6XGeEj9aX4N48IG4xiD8m4Oq0sUp5667ujBYboN
         T1j+3CgeROOumkPPDfAXtCJn9j6nT2XVokr1RYz04FX9I3a8pdnPfTzny0uHhkUVAixl
         CSAwJRnQz0exKLlSznCLUF9NkkSiFTmwTlEHfqIv5xeeXEZmz3tePXYo8F1e5biYNwi8
         vgugg09g7qjOas3cVIDtnjhSBFsJ/paev9tQ3sSxU6yz/Q07s6mq7nt5OCaedqiwF+dp
         7mHQ==
X-Forwarded-Encrypted: i=1; AJvYcCVNm5pFQTIzHnp7d2v7QBrirxwt81u3le/rjlcZ2/HBAKNHJQRn9q4Z14+Q3+vDeOu+I6j02kp0gO/L@vger.kernel.org
X-Gm-Message-State: AOJu0YwTsGzp6uLPOTUg3/pGTWH6sk/+F3gyZbXJPntm+VD7oJ6Nwq2X
	BGEo/AmoMk8MUQxrzH7VYJShpXOiZ04q+FvE9QhrEitLJxz/c6JHbhOl
X-Gm-Gg: ATEYQzwembSzNDs88+1vX+bPMSdo2y8XvPRF6P1LEScd1DQrBGw1SsWS7RIfxuBUX/Y
	mqfbWnoYddCz/itNh8LklRUwiWc/h9tNsrxExJqtWi1s2rKEeEQ7yMyWMVK8FHtBrcs/m7RhEnW
	g770OMkQWjMngP6PrOXvIhsAHljmy2SI9/C/dYzA9UCX4J2Y9zP2TQeigNMfMLtSHXjP828tD7o
	1mV3fcdXokAOOwXtIgqD1Dvt3aBfmHdQQhOceFPw0KFC+AGH4mPOOGHuDhQIafkZGMEBbkq5ane
	kuBYPNEsvte9A014E71BUQHe+HU9A6Q9Ph6AyxyohiWBE72IpdIa8lRoSM7c8DPi8TY4Pv9CVfN
	ic2/1yHHJRgWbNwtKF5xSaWr7q7WkLYkEmpnEkXTjOXG262wLsYn5V6gIhaawabm/jJlEP5GiYk
	Y7eDq5V2EyRgGiNC6FKAYizf4VEU8MHzvfGcrGPtpAfAa9rhAaL7NRRTYpAZ22VELTebr1SAnBh
	vLvklQR48Ln2U0lHlTYlzx5WInQ6m4gBXEuQPY=
X-Received: by 2002:a05:600c:3b17:b0:483:64b4:79da with SMTP id 5b1f17b1804b1-4852695d236mr59709085e9.26.1772827124293;
        Fri, 06 Mar 2026 11:58:44 -0800 (PST)
Received: from Lord-Beerus.station (net-188-152-100-94.cust.dsl.teletu.it. [188.152.100.94])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48523803b5fsm25167265e9.7.2026.03.06.11.58.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Mar 2026 11:58:43 -0800 (PST)
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
Subject: [PATCH v2 05/11] arm64: dts: freescale: imx8mm-var-som: Add MCP251xFD CAN controller
Date: Fri,  6 Mar 2026 20:58:24 +0100
Message-ID: <d007d05d5927820aa06389c07dad55357d5f8d4e.1772826534.git.stefano.r@variscite.com>
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
X-Rspamd-Queue-Id: DB37C227555
X-Rspamd-Server: lfdr
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
	TAGGED_FROM(0.00)[bounces-272336-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[variscite.com,kernel.org,nxp.com,pengutronix.de,gmail.com];
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
	NEURAL_HAM(-0.00)[-0.993];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.0:email,2.98.90.0:email,variscite.com:mid,variscite.com:email,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,0.0.0.1:email]
X-Rspamd-Action: no action

From: Stefano Radaelli <stefano.r@variscite.com>

Add support for the Microchip MCP251xFD CAN-FD controller connected
to the SPI bus on the i.MX8MM VAR-SOM.

The controller uses a 40 MHz external oscillator and requires an
interrupt line and a dedicated RX interrupt GPIO.

This patch adds the fixed clock, the MCP251xFD device node with the
required properties, and the corresponding pinctrl configuration.

Signed-off-by: Stefano Radaelli <stefano.r@variscite.com>
---
v1->v2:
 - 

 .../boot/dts/freescale/imx8mm-var-som.dtsi    | 27 +++++++++++++++++++
 1 file changed, 27 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm-var-som.dtsi b/arch/arm64/boot/dts/freescale/imx8mm-var-som.dtsi
index 7cedef8add32..21a4d87c0e26 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm-var-som.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm-var-som.dtsi
@@ -14,6 +14,13 @@ memory@40000000 {
 		reg = <0x0 0x40000000 0 0x80000000>;
 	};
 
+	clk40m: oscillator {
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+		clock-frequency = <40000000>;
+		clock-output-names = "can_osc";
+	};
+
 	reg_audio_supply: regulator-3p3v {
 		compatible = "regulator-fixed";
 		regulator-name = "wm8904-supply";
@@ -139,6 +146,19 @@ touchscreen@0 {
 		ti,keep-vref-on;
 		wakeup-source;
 	};
+
+	/* CAN controller */
+	can0: can@1 {
+		compatible = "microchip,mcp251xfd";
+		reg = <1>;
+		clocks = <&clk40m>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_can>;
+		interrupt-parent = <&gpio1>;
+		interrupts = <5 IRQ_TYPE_LEVEL_LOW>;
+		microchip,rx-int-gpios = <&gpio2 12 GPIO_ACTIVE_LOW>;
+		spi-max-frequency = <20000000>;
+	};
 };
 
 &fec1 {
@@ -424,6 +444,13 @@ &wdog1 {
 };
 
 &iomuxc {
+	pinctrl_can: cangrp {
+		fsl,pins = <
+			MX8MM_IOMUXC_GPIO1_IO05_GPIO1_IO5		0x16
+			MX8MM_IOMUXC_SD2_CD_B_GPIO2_IO12		0x16
+		>;
+	};
+
 	pinctrl_ecspi1: ecspi1grp {
 		fsl,pins = <
 			MX8MM_IOMUXC_ECSPI1_SCLK_ECSPI1_SCLK		0x13
-- 
2.47.3


