Return-Path: <devicetree+bounces-308392-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id RuEfJQXYJmqYlgIAu9opvQ
	(envelope-from <devicetree+bounces-308392-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 08 Jun 2026 16:56:05 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 92DE6657A64
	for <lists+devicetree@lfdr.de>; Mon, 08 Jun 2026 16:56:04 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=CBYfU3SB;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-308392-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-308392-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 878BE3055E66
	for <lists+devicetree@lfdr.de>; Mon,  8 Jun 2026 14:43:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 40F443D891F;
	Mon,  8 Jun 2026 14:41:34 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85F0F3D6CA6
	for <devicetree@vger.kernel.org>; Mon,  8 Jun 2026 14:41:32 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780929694; cv=none; b=UeNJpYZds8lg4tda8+1VI9JJmJigvcRriJNIAHgkMMInhlIZlekOAVKgSyW4r2fyeftf+RHwd4oePyTAP0U5Fz6eQtocmXRv6ZLiib1z2vMRdjrZM6MLG5uzJWqSsYB1pSuns4N1PEinl6ZgKExbLwpGNaV//y6kHDPLCxf34Y4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780929694; c=relaxed/simple;
	bh=JgfDiFgKLf+4MiKTXk6cHADRjszHUEvVwoMpC6ok5NI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=QGwoIJ7CB3/E7o0l7g9CrZT7lyDw7z1tDnO86ispOuBPdwqQLBHQgd8yIJEJvPcUGr+l8TvDLSzYNlAN1TGXDzj7BTpEBkL398vKFbY06W0YlJmGq/35IwErrbUyg/VTcxTgG5ml/kX6bPwWKvSnATRx47WIdukWsQFUsc05WpA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=CBYfU3SB; arc=none smtp.client-ip=209.85.221.45
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-45efb698ef2so2023294f8f.3
        for <devicetree@vger.kernel.org>; Mon, 08 Jun 2026 07:41:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780929691; x=1781534491; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jGTKa5ZDbrqE8PBt++HRT37Y2HMbYqrX7rou7DzMfEk=;
        b=CBYfU3SBJaQeVtr/+5xREg5mPGFp7+vz+ETn/jTz4PJXfRIXoUmOTmMH+BCTRfIKV9
         VbJpOHNxjKIoOWHa+vBYpClmzLJOTdkPRS9ih9/2ULGe4eIlRgGJqWmGN3QYBhy/WY2m
         h+r4vSJCbwXAOaEbPbp5xv7dDCZYslonKyeCgv/MvLrcjYK/dRCL2Gm+C6pguzsCj7IP
         DeGmqc8gErA5ZgrgarkluexqCfs7UoXZz+kGqiikhTQdAS4sUliU0hKiay/486tKLmrP
         nrNjDdLN5rP8BtEeQlsQiVoSibRmMsOjqJ8+lZVQj6PZ9yDNxCCu7uPwzmpQdxLMiuxu
         mdkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780929691; x=1781534491;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=jGTKa5ZDbrqE8PBt++HRT37Y2HMbYqrX7rou7DzMfEk=;
        b=VYMJnRgW3BF2qBnlEoX0e7fofF6Q03KGHqQ/TNlmzMcHIstw7q6A2IGMab3Spa2aWN
         y1LDx1tldGsC4blO6LrheJF81KvuC4L/9u2NBjzspAHiqmWk2Cq3U0/0wR2iinPKFga2
         8Jcx6yTccpYbcqs0UcCZzsNDzgHpOBjYaEIF5DPK4i3qINrC3Xy4lw6+26VnOsQB+sTR
         hgm8T3SNR0AFEsUUi1Nx3JG6YREAGSAHWiWwvB/CecTLpJBXrnu4egD6K2H9gycVfmx6
         sJLZvNNihOXiRuJqxNnv826yLmmoS0ICAnjvpx82R9HlCwtuvKLIFBRVD39FZBAOdKok
         76gg==
X-Forwarded-Encrypted: i=1; AFNElJ+QJXHV6IIph7mIluh2thA3ehNfmcMnP6Ni/EhLFnctqvZex8CLyMeMfp4ImgwG7oFczGFAEnhOv9L6@vger.kernel.org
X-Gm-Message-State: AOJu0YyGV5Aiwdwprd/XCAo/iBNQv7wGGRrZYrMrHSW0Y0BHsDo2Fw0B
	YmcHAOgnJKp5PPz255zxzsALVS5ydgRNHHm4tsOxrC710YMzwiEg5Frh
X-Gm-Gg: Acq92OGg8H/OTQ43rOCbzmstki5hQT7MUcaQUik9wLeE9t0Fx4I2PVaajd3jwrBPTDo
	KnLSZPjmOqS0kf67UxRiL6IUDy1skMTBDx+4cQiaVV3K8SUHV8nwF1vckGg6P9QDtMxHqRSEgbf
	o4DyEth8ZJ27W2SBoF7yeySiXDhmT9QMR732QPJS0h/F4tS4G7BSEdCOZ0LShdg9i7QrvdKP6Jn
	uRFrFRH7RdckWhHiMn+dtN+4TE2VWwS3wLVxAvKEMpTyD67it2X58VYArzPT5/C5s+F3Hk4dPt5
	v2AJSLAG0tOACKgOIeCCUfen6Kp3SlTs71g69sY+jWkVQCZL95lPZemexuIcRsaL/LnziGR8FH8
	9/5cHsS4XIoPSxfWbpYULPuAWktf8SoHwuBx1MPkJpGRi+qXfw1H0JRykWvqdYRYC50Smec/EMR
	zIuw5EChWRWWc+I7KeHZQ55ZzVNVf+EOQrmBISqKWJfW6G7itLw9vgtTaFrTEzVXbOsBpi+04JY
	40F447FBQnFtQigZ1ERfLeQhfrCI3141rxHm/yvg9PNUkyC
X-Received: by 2002:adf:fcc6:0:b0:45e:8866:e58d with SMTP id ffacd0b85a97d-460302ed4c7mr17961168f8f.11.1780929690742;
        Mon, 08 Jun 2026 07:41:30 -0700 (PDT)
Received: from Lord-Beerus.station (net-93-144-65-244.cust.vodafonedsl.it. [93.144.65.244])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4601f2dcad5sm58222519f8f.5.2026.06.08.07.41.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Jun 2026 07:41:30 -0700 (PDT)
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
Subject: [PATCH v5 07/14] arm64: dts: imx8mp-var-som-symphony: add HDMI support
Date: Mon,  8 Jun 2026 16:41:08 +0200
Message-ID: <173d32d3a4e28fa3c7678b1e2566d9da3a477488.1780929317.git.stefano.r@variscite.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1780929317.git.stefano.r@variscite.com>
References: <cover.1780929317.git.stefano.r@variscite.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-308392-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[stefanoradaelli21@gmail.com,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_RECIPIENTS(0.00)[m:linux-kernel@vger.kernel.org,m:devicetree@vger.kernel.org,m:imx@lists.linux.dev,m:linux-arm-kernel@lists.infradead.org,m:pierluigi.p@variscite.com,m:stefano.r@variscite.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:Frank.Li@nxp.com,m:s.hauer@pengutronix.de,m:kernel@pengutronix.de,m:festevam@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[variscite.com,kernel.org,nxp.com,pengutronix.de,gmail.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[stefanoradaelli21@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 92DE6657A64

From: Stefano Radaelli <stefano.r@variscite.com>

Enable the HDMI display pipeline and HDMI audio support on the Symphony
carrier board.

Signed-off-by: Stefano Radaelli <stefano.r@variscite.com>
---
v4->v5:
 - 

v3->v4:
 - Add HDMI HPD support

v2->v3:
 - 

v1->v2:
 - Add missing HDMI pinctrl configuration
 - Enable LCDIF3 for the HDMI display pipeline

 .../dts/freescale/imx8mp-var-som-symphony.dts | 62 +++++++++++++++++++
 1 file changed, 62 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp-var-som-symphony.dts b/arch/arm64/boot/dts/freescale/imx8mp-var-som-symphony.dts
index 698f02fc39a5..0beaee5f81c9 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp-var-som-symphony.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mp-var-som-symphony.dts
@@ -48,6 +48,18 @@ led-0 {
 		};
 	};
 
+	native-hdmi-connector {
+		compatible = "hdmi-connector";
+		label = "HDMI OUT";
+		type = "a";
+
+		port {
+			hdmi_in: endpoint {
+				remote-endpoint = <&hdmi_tx_out>;
+			};
+		};
+	};
+
 	pcie0_refclk: pcie0-refclk {
 		compatible = "fixed-clock";
 		#clock-cells = <0>;
@@ -74,6 +86,43 @@ reg_usdhc2_vqmmc: regulator-usdhc2-vqmmc {
 		states = <3300000 0x0 1800000 0x1>;
 		vin-supply = <&ldo5>;
 	};
+
+	sound-hdmi {
+		compatible = "fsl,imx-audio-hdmi";
+		model = "audio-hdmi";
+		audio-cpu = <&aud2htx>;
+		hdmi-out;
+	};
+};
+
+&aud2htx {
+	status = "okay";
+};
+
+&hdmi_pai {
+	status = "okay";
+};
+
+&hdmi_pvi {
+	status = "okay";
+};
+
+&hdmi_tx {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_hdmi>;
+	status = "okay";
+
+	ports {
+		port@1 {
+			hdmi_tx_out: endpoint {
+				remote-endpoint = <&hdmi_in>;
+			};
+		};
+	};
+};
+
+&hdmi_tx_phy {
+	status = "okay";
 };
 
 &i2c3 {
@@ -152,6 +201,10 @@ rtc@68 {
 	};
 };
 
+&lcdif3 {
+	status = "okay";
+};
+
 &pcie {
 	reset-gpios = <&pcal6408 1 GPIO_ACTIVE_LOW>;
 	status = "okay";
@@ -253,6 +306,15 @@ &usdhc2 {
 };
 
 &iomuxc {
+	pinctrl_hdmi: hdmigrp {
+		fsl,pins = <
+			MX8MP_IOMUXC_HDMI_DDC_SCL__HDMIMIX_HDMI_SCL			0x1c2
+			MX8MP_IOMUXC_HDMI_DDC_SDA__HDMIMIX_HDMI_SDA			0x1c2
+			MX8MP_IOMUXC_HDMI_CEC__HDMIMIX_HDMI_CEC				0x10
+			MX8MP_IOMUXC_HDMI_HPD__HDMIMIX_HDMI_HPD				0x10
+		>;
+	};
+
 	pinctrl_i2c3: i2c3grp {
 		fsl,pins = <
 			MX8MP_IOMUXC_I2C3_SCL__I2C3_SCL                                 0x400001c2
-- 
2.47.3


