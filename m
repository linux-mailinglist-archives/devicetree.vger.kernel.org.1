Return-Path: <devicetree+bounces-308397-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id b6+zMA7ZJmoVlwIAu9opvQ
	(envelope-from <devicetree+bounces-308397-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 08 Jun 2026 17:00:30 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id D4A31657C0D
	for <lists+devicetree@lfdr.de>; Mon, 08 Jun 2026 17:00:29 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b="qy/Yt8Jh";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-308397-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-308397-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 2E6C2305C189
	for <lists+devicetree@lfdr.de>; Mon,  8 Jun 2026 14:44:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D819F3DD537;
	Mon,  8 Jun 2026 14:41:38 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 170793DB655
	for <devicetree@vger.kernel.org>; Mon,  8 Jun 2026 14:41:37 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780929698; cv=none; b=FZaG7u+iTfwMxNBmBaDWNhX48q4fp7U3X69jpEmq/KKDpLiNgTTGQlxLZd5fxDUJMPpUDCPKQBWBXonsi5cmYYsQG748xl2qsfXQpMcPgA6pE7+u7EoRG7j23515lQo8COBlQSynrFGIE5Rho2atnVrokBsUHZhSM3HdGmCjEK8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780929698; c=relaxed/simple;
	bh=KLUkwej3UFTg+1N+K7eXfy+hjIqtltojznrXTKWXmKo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=qq8xfoNtPZgcoz8WJR/44wlGnLEMhmEAbSJEg5zUKJsrT59A9S0p0Pgg768IyXx/+NOriOuCpBhS2sXFEP/B0hnEp4HB45n+F0m8D8LUr1/hLr8I/N3ezb6i0P2iwwYqKnMxhGS4t3ve49rlMxKc1xceDpig8qj1Qyia6DzYYS8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=qy/Yt8Jh; arc=none smtp.client-ip=209.85.128.41
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-490cf3000f0so14037855e9.1
        for <devicetree@vger.kernel.org>; Mon, 08 Jun 2026 07:41:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780929695; x=1781534495; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=86A87/9ws/VtdQEI7PHXUYpQ1ohvjyghc4NfnHpdryg=;
        b=qy/Yt8Jh/pCPgawOAO0mRWNIQLIpP51H2H+qQQNm1xn4KhkUxLWkiTm1C+kHGBctXV
         vGf2zGSOIQJDrO+yzXbQD18pIBmNiKQLb6LXlxkQM8IQfFGkOQzcOxptztCBoJYZDiIa
         AMqNysBI/HTZlCyS5ZSa4beuOfe4EqwG0Z5n7OJuX5HoUR+U4zm39EhnxJm55FFvhZOB
         vDpB2NZG31411X1SydKZ8JlyCqkRgwhtE4G3glQ2wTWi+a/xtIgJXmRaSAQOqdFUd3KF
         2r1Zv/tgBQqZHjt+P3ES4oSjhEiYOAPgKkO6WuImmRf2TFg6B2a+PA9XDnfL9t8WcmzV
         fq+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780929695; x=1781534495;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=86A87/9ws/VtdQEI7PHXUYpQ1ohvjyghc4NfnHpdryg=;
        b=pQB3dAojwzw+NRXMfWDhOQpN6+Yc5ew2p9ome+8O/Ssf2vRema5mBFXM2E6K/0DWW3
         q8nbkVKbrPXlim9pEmeM5T2ceMzTgtkqUJCjdqc64/dlCos8L4eFcRfn0GJ3XrFbYMC+
         /Ttg6Vpu/Et0X0AIXCEUdrmBvM0tWMyv6C4Q++yDVO7GKbYLLPPxpkVLwj8WP2uRj0XI
         mTlmeLISEJfMZ9hjEbR8iJ4nEPK8wnQDce8NMWv9OU0cQKfwN5F5+CONeGOyx6Dr4y/4
         4Kwq7n3GnUzFF2BnFUow2ZuY0HDx3sQAvvrj2/JAlNQYPbfxshtF9lZB6K5MvN56xkOD
         8cgA==
X-Forwarded-Encrypted: i=1; AFNElJ9vqTrHV7oilg4jp1IFngCC5hvAFezGEOki1vipRfLNYBstmH+g2Omoqy279NQ4+Q/pca9+5nRwRI/g@vger.kernel.org
X-Gm-Message-State: AOJu0YwgnXAZm6DPifkJeYtKVklbJskxu8oLacwVzbc5rebTeyPZw9lr
	6IX3g2YtUMsf9i3JPoDPgj5oY8bvbLI0TBWVALb7iUQBB1xawbjvCyhTBGLlwg==
X-Gm-Gg: Acq92OHtFe180PeGN7/FAGbFmmfWA3cge7Jj4n3M8OLMoXRFqhgI3kEq2BhuzFw9XbG
	ba00z2/c9TgbZ1nq7vRJBORD6ITx2PEmdE4/fCL4mRCeY2G0jAGfc6OeQLcNnEgg4Dnb57m+3s7
	ByottsKfIbpy7neu8Zmkhpm5o4OHlGWMz1qouZZLSX6cUQaUKBSYdHAA4b8MxnnknCvOmhLNdBy
	ARptsa0eWBrCNng4fm0X79DkrnvJJJDD/+vSx009ZHKP4xUzVwEmGgZo4FHlZYlAbW0Vq/IWrBl
	MbMhixF3T/4egX0gvoOkLIlraCZFl3Gl6gm1fysIpR1ds6oo7v2us0+G0zKQ9sasEwhoSPCwcTc
	7g9t+YVc6WdZFOhrH5eGilkgHdyqisRSDnMd365zm6vGm7C1QSJ3OURBjz9eodhSV7SHPsAIcEl
	qR8iiSMwszlnkM07aKiu9OUNlZdNgCrc9OKD0XULInIe5XVw3Gz0LO0NSQWPUlU8BRsffpOU7Yu
	Af1IosJgaP2h7Fxig01Ef7vF7yHd/c5HLd1v54VmaJ9TVT/BWU1Egz6Y+M=
X-Received: by 2002:a05:600c:818c:b0:490:b0e1:2161 with SMTP id 5b1f17b1804b1-490c25b39fdmr290218685e9.2.1780929695456;
        Mon, 08 Jun 2026 07:41:35 -0700 (PDT)
Received: from Lord-Beerus.station (net-93-144-65-244.cust.vodafonedsl.it. [93.144.65.244])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4601f2dcad5sm58222519f8f.5.2026.06.08.07.41.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Jun 2026 07:41:35 -0700 (PDT)
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
Subject: [PATCH v5 12/14] arm64: dts: imx8mp-var-som-symphony: enable CAN
Date: Mon,  8 Jun 2026 16:41:13 +0200
Message-ID: <8447a8d766e54ce8daf108caa28cd3546e4f4729.1780929317.git.stefano.r@variscite.com>
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
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[13];
	TAGGED_FROM(0.00)[bounces-308397-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[variscite.com:mid,variscite.com:email,vger.kernel.org:from_smtp,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D4A31657C0D

From: Stefano Radaelli <stefano.r@variscite.com>

Enable the FlexCAN2 controller on the Symphony carrier board and add the
corresponding pinctrl configuration.

Signed-off-by: Stefano Radaelli <stefano.r@variscite.com>
---
v4->v5:
 - 

v3->v4:
 - 

v2->v3:
 - Add FlexCAN2 controller support

v1->v2:
 - 

 .../boot/dts/freescale/imx8mp-var-som-symphony.dts  | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp-var-som-symphony.dts b/arch/arm64/boot/dts/freescale/imx8mp-var-som-symphony.dts
index 54cb5725c4bf..93dee9ec0b9b 100644
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


