Return-Path: <devicetree+bounces-308193-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id gYc/IHKXJmowZQIAu9opvQ
	(envelope-from <devicetree+bounces-308193-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 08 Jun 2026 12:20:34 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id EBF73654FCF
	for <lists+devicetree@lfdr.de>; Mon, 08 Jun 2026 12:20:33 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=lTD0C2Jc;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-308193-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-308193-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 318E330D0F24
	for <lists+devicetree@lfdr.de>; Mon,  8 Jun 2026 10:12:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 51F863D0910;
	Mon,  8 Jun 2026 10:09:55 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B71BD3CC7CD
	for <devicetree@vger.kernel.org>; Mon,  8 Jun 2026 10:09:52 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780913395; cv=none; b=sU7Gut3Av0//Tp3MLJvUmt6t8K3DJ7vwAG6Sxzb8A0K8GEZ36HIJfFVrd+KzMhgTllGuG+yFoKuUeJzolhTYqpHD2Q1LprktiHc9cD2Egzu0rkkv5BjgNNVtUFS39ft4+DoFkbVZqZWrkhf9ewJzFjWdnaDCpokipEImffqBSx0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780913395; c=relaxed/simple;
	bh=Lg2+v69DI9Kp2ph6ue3jXWaExpaKxXY++sEeHMlzTG4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=nQlZAbfjdPGcucUtbngBb/VVyfgnPsWYYUXtkC6ok/Bkl5ou5zDL8OlHwoSz2UtIyZSJKL2aaXKf7EQR1Xo1y6MmNv/lpxLBEz1eaNWNifHtQGQ5LJ78TjvueOSznymINF1Ff1+scopS/tvU5eLHLWeHAHXkGO8FCNsYiQaohuY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=lTD0C2Jc; arc=none smtp.client-ip=209.85.128.44
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-490b4a8e28bso33203385e9.1
        for <devicetree@vger.kernel.org>; Mon, 08 Jun 2026 03:09:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780913391; x=1781518191; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TUVpVy5XUta9JdZvVzQyX6tIcChkXtYHbn7XRIvfDZE=;
        b=lTD0C2JcxQHgwXRiEUqd0nR/jx2I7iJeQ2VskZt8uQAmjUtavCPLzegQ2QJxBpZqMJ
         aKMWyg8jRRQB48ha+yDxsXHO1kMTAhoU5e3ffhSGZ/qI2e9IbFxb5zI3CIQQPlGFz+lE
         ZCT/MaeU4/MZmq2jmwTY/Lw9UNJSIRr7KinigoqnZDDIGapWPIvqDgRdJ4/4nqNJHjyp
         iRxw9cbV1GsUIP13MKOnXRxQm7FrFVeL8wjXOehgSiLKMtQbctgLQxmq9amFt3prFOA/
         1JlhKQdD7xlkDDcYbwR74a1UC+l2VnEaYa76bjQCAsBY6VfEuRlxChSyz40N0hWhQsDz
         X0Cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780913391; x=1781518191;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=TUVpVy5XUta9JdZvVzQyX6tIcChkXtYHbn7XRIvfDZE=;
        b=KML1jddPYx+mtsLpoX4MX+Ox2A2CZ0wlvx9bS4G03TWoT9Fpzk+CtMbdfsfZcY30al
         15TjjL4FEPBohELkUNVOnSKNtUgO2D1bOv5iga8uNj+/tILZR0xLIIDv2neLjpiQVMNz
         QdPo84eMzo4ecjKPp9trMfbEfhjmojaL9JNuQPhMwg3xb6C7qME0flF+Z4qZkexWx1bP
         /UxxORNXFgWoCihvreSElzzeZ/MN1I3n7Zz5YJGu7fAZ3wCqVsfZe5hSVAu+lHzChtdQ
         mqZdlNmjDuKegutN9/O7iOnQkxJdtjRCV+kLYykzBhuOM4+AHcZuMZqoyeMi0jKvfft7
         MUcw==
X-Forwarded-Encrypted: i=1; AFNElJ/RVta08qEqfGazTTm3bNrrB1PsnVQEsR0xbuOoPCl1GFa0UfkLKRgTgcmLeKlskSkmQRIPkSTA+rX6@vger.kernel.org
X-Gm-Message-State: AOJu0YyuKKiQaIgTucyhbsPUukqre667So6+Vg1f/P8WxRzgVHIzain7
	QWDjsHd0keGr07y7/QCO3fyPHYpKMP8b1D/jJOn+F2H47yZwTewYwyvb
X-Gm-Gg: Acq92OEJDshK5rn7MvMCLYyY8DGE0LCdWn49PxNt1PtCDoTMYgzbjrbkMsObmjw+PMZ
	21CgYyCAN6RdIoRzBh0czILwci62uc5lY2V9XOFBNKDvpFPquHaEBsiq/5b8SoawHwD+8iQNwUD
	fo9o2klgIxv0podosLqTmoqBSsa9uqIiyFn8mCRoV4y5sX9jX6Zb8/CXO9bbH01Rn7QlVrMjtiK
	wV8TBFdzGUD0Is/YnvuLTAhVurOWLkL9cfWc9YeO9T6jSf9kw0QATpT6X2UN4gDEAgq55PY/fl/
	b/vryrOm0FloFLw5dmxd3Gy6ZPiJDghA9/EjOvx4dIp+qT+KYSTzIsHOZ5RnaCw23biwuwuZATq
	XNNBweO1j410gDhf4wVYFMxWgImE88GTemkqTT6OEd42Exk5rg4puGrm5f6narKc0iSmKaWLDJy
	FCD3nGC3IGbtjG5h4ThKJOvWlZce8Sj5kaQ+xkMhtsGYHTMbfRP/YFibn4DE/fgbJP0Oy2hloxd
	/vtu9AArOlEdtHORbhRL0iWDgJfhSinv7Ba/Tcb4xmCZ7Va
X-Received: by 2002:a05:600c:8b68:b0:490:bad7:3634 with SMTP id 5b1f17b1804b1-490c25e1104mr257657185e9.19.1780913390925;
        Mon, 08 Jun 2026 03:09:50 -0700 (PDT)
Received: from Lord-Beerus.station (net-93-144-65-244.cust.vodafonedsl.it. [93.144.65.244])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4602cda3651sm39503219f8f.32.2026.06.08.03.09.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Jun 2026 03:09:50 -0700 (PDT)
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
Subject: [PATCH v4 12/14] arm64: dts: imx8mp-var-som-symphony: enable CAN
Date: Mon,  8 Jun 2026 12:09:30 +0200
Message-ID: <1a5c91460de799f89a4f18547b044e0257035fd1.1780912893.git.stefano.r@variscite.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1780912893.git.stefano.r@variscite.com>
References: <cover.1780912893.git.stefano.r@variscite.com>
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
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[13];
	TAGGED_FROM(0.00)[bounces-308193-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:linux-kernel@vger.kernel.org,m:devicetree@vger.kernel.org,m:imx@lists.linux.dev,m:linux-arm-kernel@lists.infradead.org,m:pierluigi.p@variscite.com,m:stefano.r@variscite.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:Frank.Li@nxp.com,m:s.hauer@pengutronix.de,m:kernel@pengutronix.de,m:festevam@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[stefanoradaelli21@gmail.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[variscite.com,kernel.org,nxp.com,pengutronix.de,gmail.com];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[stefanoradaelli21@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[variscite.com:mid,variscite.com:email,vger.kernel.org:from_smtp,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: EBF73654FCF

From: Stefano Radaelli <stefano.r@variscite.com>

Enable the FlexCAN2 controller on the Symphony carrier board and add the
corresponding pinctrl configuration.

Signed-off-by: Stefano Radaelli <stefano.r@variscite.com>
---
v3->v4:
 - 

v2->v3:
 - Add FlexCAN2 controller support

v1->v2:
 - 

 .../boot/dts/freescale/imx8mp-var-som-symphony.dts  | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp-var-som-symphony.dts b/arch/arm64/boot/dts/freescale/imx8mp-var-som-symphony.dts
index e1b78ed167b4..7ad57caa0f1c 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp-var-som-symphony.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mp-var-som-symphony.dts
@@ -106,6 +106,12 @@ &ecspi2 {
 	status = "okay";
 };
 
+&flexcan2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_flexcan2>;
+	status = "okay";
+};
+
 &hdmi_pai {
 	status = "okay";
 };
@@ -357,6 +363,13 @@ MX8MP_IOMUXC_ECSPI2_SS0__GPIO5_IO13				0x12
 		>;
 	};
 
+	pinctrl_flexcan2: flexcan2grp {
+		fsl,pins = <
+			MX8MP_IOMUXC_UART3_RXD__CAN2_TX					0x154
+			MX8MP_IOMUXC_UART3_TXD__CAN2_RX					0x154
+		>;
+	};
+
 	pinctrl_hdmi: hdmigrp {
 		fsl,pins = <
 			MX8MP_IOMUXC_HDMI_DDC_SCL__HDMIMIX_HDMI_SCL			0x1c2
-- 
2.47.3


