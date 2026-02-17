Return-Path: <devicetree+bounces-266259-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wLtTNey2lGlMHQIAu9opvQ
	(envelope-from <devicetree+bounces-266259-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 19:43:56 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CABD14F499
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 19:43:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id A4F9D300699D
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 18:43:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 46D2037417C;
	Tue, 17 Feb 2026 18:43:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="CAkn0iYY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C3FF374745
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 18:43:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771353825; cv=none; b=TqtuOmPitk4aJG1uwArPTMMhg/4ITy0o05xrQL5lyJX8u1JFdJ5JxpPWAbXxTmcNbpPu0KjPby9QfZLWSS5OBY8+vnP9PeFmZ/Gykj7Jfyl0dlLc7HExD7lnrXn/be9k7jkmbLK8A/p6+3Px69Sn7jjBqJheaw84CUKgpxjUvAY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771353825; c=relaxed/simple;
	bh=k0TPNsCkcM/eeL4f90ns/+RRCekT2+wpnyTzz5zBV78=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=AZQKm+koXkg41w2XVpNcWXLUAbL74Qs4ouGkZZegN3aigMYDePj46sUoMtNcloYU2evFZii7s8zrLjVlUuVlfnSyZT/M3JQ0D3/xMuAL2KCab9woBI+4/CTL0UP1U/W3tTv65x0VzPQcObBJcJJ+7KnxX/pqQlA8EekMuAQgLpg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=CAkn0iYY; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-483770e0b25so40318045e9.0
        for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 10:43:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771353816; x=1771958616; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GZfvx2TSwnhF6sMsrr7tpSL8G7O+D4yIrBCpFk7zB/0=;
        b=CAkn0iYY2kmY1mzQN11hSNo5oxKUiLK6aNdvl69NIGfX1zd5JS7pTmtnKLZc2S5arN
         SdijU/BLckxKf1jbrgEY2rHpdmLky+5gyCvKnV/nD1r/vnwyomff+MTd94CnGDBhiLxe
         sTSAy1vF7L0Hte2DW2wE4LxzlhfuN+vcAt41Bnc2E66UmKYPV3bY6uVnQktLFcYYnkwa
         oz8xaZAmQmtkBcDKLwkiQvNtxP6NYTY34BT+BIGjlUPDzt9LZcy93Orgihsx+kniha6L
         nxys32UoZp9nlXbhEpcvUMKL8djOF4ud8K2UrVoWFa5YTksX4x3UVms5TeF80erDb6Fw
         IBtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771353816; x=1771958616;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=GZfvx2TSwnhF6sMsrr7tpSL8G7O+D4yIrBCpFk7zB/0=;
        b=ajNG57R1aLBFPJI305xFMnaJYfsy0XeVoQrQBsLCKGbX41eRq62coTBmm54UWuHY+r
         Dl2RuP6qVQTjEqc9vvg2z2r4gXdqhHgyrFYqDAITPC9zuFxwPWavcejpYV7MgBQfSyY6
         Z9Bfz0SaPSlZTmIklGpcfDAILYPcMQE26pc1qTYbmum5CGV7Ny72LJ2dhERIpkQbXI24
         oPOIWdtkJ51zr4MXEysFMmNnf8iSdtl1vELhuIZNGv3aZYdlUsF45wntKeX0GLWBM/tG
         DpDuKMvWBs3i0Hn5r/jbzojSc7PraFPWKSYKCEZTuwXSRtY326J+WkPbft2A5R4orLIZ
         tYpA==
X-Forwarded-Encrypted: i=1; AJvYcCUA1m3EpS8fjWgNCDy7yZ/77ot1Hm+77S+A8/YU8fBm9r7C9bklicJjyBxyy0vvRwmUEXmkMQhf3zPM@vger.kernel.org
X-Gm-Message-State: AOJu0YxrPdoq6GB2UnZg7YJE28pQt6MBcNLzyNJehLfX8XwruCFpKaOv
	nGXwyL+U2zOfX8luUGefA6kZ40QAOXEdAGrnJSVA8cTXIaSnLUgO47ZJ
X-Gm-Gg: AZuq6aIOamba+tkNgNCCxyqySq/E/A1pr60qFH2JAnFxlZKAI7+zNCl3WxkhfQylxHH
	o577GlAc/ci99L/Id7Gnkv9lRnrH5RV06GvoKHLtOIyWVerSgov93YtXf5azCwtOd0rUIJnUv60
	Pr9C6eTV90QZW3EbJfIzGvrpHEKnLGLV+ijCwq842K1DRAKxsvjKKeLUGNc80oYLmtgdpn4Fm0d
	SQrWjH1e/vJoT9AdRO5+Wi6THvbGSNnF80CrHLvvh0QBdhu4/p8g9llHLTlyLbACBcpN86nZbLa
	qUEVm7iLDmcbFug8dDtwhEXkjUeXZzjedZ0FgV9nkiEKX2j3R+NMJhPR0n/JtpL26jS9zNCz4C8
	jiMABjYV3kK5DEt2vK2NJ2Fg6L9AOKttj+X7uWMrghYLg/paSQ14B+xHC4dNF9tf73tSyPuvtDp
	R/JbK7GK6pBoPO3048WeJoobRk462APkCfCeZOzl4zjorrZr1wj4uLRTsonVNG7TpcphzWfCmU6
	LcE5OkDngRUIuYxs6+nmPcz/vqBx+Ye6agjW4eU
X-Received: by 2002:a05:600c:3b8b:b0:471:14af:c715 with SMTP id 5b1f17b1804b1-4837104307amr310912825e9.3.1771353816025;
        Tue, 17 Feb 2026 10:43:36 -0800 (PST)
Received: from Lord-Beerus.station (net-188-152-100-94.cust.vodafonedsl.it. [188.152.100.94])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4839731d7c3sm1096185e9.18.2026.02.17.10.43.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Feb 2026 10:43:35 -0800 (PST)
From: Stefano Radaelli <stefano.radaelli21@gmail.com>
X-Google-Original-From: Stefano Radaelli <stefano.r@variscite.com>
To: linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org
Cc: Stefano Radaelli <stefano.r@variscite.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Frank Li <Frank.Li@nxp.com>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>
Subject: [PATCH v1 09/11] arm64: dts: imx8mm-var-som-symphony: Add TPM2 support
Date: Tue, 17 Feb 2026 19:42:43 +0100
Message-ID: <c48ee9db2f8c98e0836e995577da8dbb4717d9c4.1771353301.git.stefano.r@variscite.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1771353301.git.stefano.r@variscite.com>
References: <cover.1771353301.git.stefano.r@variscite.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_FROM(0.00)[bounces-266259-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[variscite.com,kernel.org,nxp.com,pengutronix.de,gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[stefanoradaelli21@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_PROHIBIT(0.00)[0.0.0.21:email,0.0.0.38:email];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[variscite.com:mid,variscite.com:email,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,2e:email]
X-Rspamd-Queue-Id: 0CABD14F499
X-Rspamd-Action: no action

From: Stefano Radaelli <stefano.r@variscite.com>

Add support for the TPM2 device on the VAR-SOM Symphony carrier board.

The ST33K TPM2 is connected over I2C, and A PCA6408 GPIO expander is
used to control the reset signal required to release the TPM from reset.

This patch adds:
- The PCA6408 GPIO expander.
- The ST33K TPM2 device node.

Signed-off-by: Stefano Radaelli <stefano.r@variscite.com>
---
 .../boot/dts/freescale/imx8mm-var-som-symphony.dts | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm-var-som-symphony.dts b/arch/arm64/boot/dts/freescale/imx8mm-var-som-symphony.dts
index 40ffa1f36b2f..b4dba1961eee 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm-var-som-symphony.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mm-var-som-symphony.dts
@@ -137,6 +137,20 @@ typec1_dr_sw: endpoint {
 };
 
 &i2c3 {
+	pca6408: gpio@21 {
+		compatible = "nxp,pcal6408";
+		reg = <0x21>;
+		gpio-controller;
+		#gpio-cells = <2>;
+	};
+
+	st33ktpm2xi2c: tpm@2e {
+		compatible = "st,st33ktpm2xi2c", "tcg,tpm-tis-i2c";
+		reg = <0x2e>;
+		label = "tpm";
+		reset-gpios = <&pca6408 4 GPIO_ACTIVE_LOW>;
+	};
+
 	/* Capacitive touch controller */
 	ft5x06_ts: touchscreen@38 {
 		compatible = "edt,edt-ft5406";
-- 
2.47.3


