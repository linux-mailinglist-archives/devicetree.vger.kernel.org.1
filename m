Return-Path: <devicetree+bounces-272483-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OEUzCQlLrGn+oQEAu9opvQ
	(envelope-from <devicetree+bounces-272483-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 07 Mar 2026 16:58:01 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 784AA22C989
	for <lists+devicetree@lfdr.de>; Sat, 07 Mar 2026 16:58:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 040743075949
	for <lists+devicetree@lfdr.de>; Sat,  7 Mar 2026 15:55:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3EE1C3A63F6;
	Sat,  7 Mar 2026 15:55:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="lFCEWC7M"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 209E43290B8
	for <devicetree@vger.kernel.org>; Sat,  7 Mar 2026 15:55:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772898927; cv=none; b=ADiMZODL2ZpRNh+mFvofMbN4HBDb67aKTpeaaVV4/SXzCbofAR3CGV0NxZbVa1rnz+gUSkKUKUCMfD1WNO8hvMr7XnqiyC2NNqoGXOBO/yPMEHs40Bu/m/YxcS3MAPoLVfylmrnmrq0EzycjZRsUxxRt6CEcqxljMVBpjMTk+SU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772898927; c=relaxed/simple;
	bh=YTAQHlqjkAxn4El3X7x1Lp3Qz9qsIbPFg5XrrhvDXwY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Xqr+XuqV/gvEBS4FaP8ZwuEHuI1DQeCqGgksdJ7IxcAZdgBT+KDcdTjdfr+i4bG2zANektLHyTJnhAvEz0IDhc2Q4oM7N9sNh61yxqzi6weMojbXr2LeoniTTVem7pme1BMak8vNO0/aBjlnRQjLXfPMiJ/YgDmUDoWs/FkiOlE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=lFCEWC7M; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-48371bb515eso151886355e9.1
        for <devicetree@vger.kernel.org>; Sat, 07 Mar 2026 07:55:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772898921; x=1773503721; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=U5K4jcVb2WAVGgJfdO+e2rSdDaBiiC4SvELyV5iW+ww=;
        b=lFCEWC7MAj2ERUp/wP/BWGjO0WtwtXrKPLS1B3Y/2+cnPMb8nxgbQO7VNW0FitrSuU
         6eEOTL/6UKcnQYqFG8WNhTTKDa4avVOerLfcKBfWQ/A5bs4i1gblPnQI1R4IzNWGVl2E
         vELskQcIN+yEsHkuElsaqgEVesF2CRMDrGTqBqHtQa54t4kHWdlvnz/BpZDDHEMmccgF
         HXeQGpHTPOSVjoEtSJ0nzf9yuuLh/ELBZ6ydHjX1UOrNf1TvMrmVO3Ytrgm5pfwcTO19
         hVjCoAbLpT7UY9NWyaj01lGEOkdUnj6gHxDZRyfOrw7YDKTr/bhkZyo//EqJTEEMbcSz
         6eZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772898921; x=1773503721;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=U5K4jcVb2WAVGgJfdO+e2rSdDaBiiC4SvELyV5iW+ww=;
        b=PQcBaXKLGGqdqe050KmZLg9ZAZ+JHuhwVEfTDxrEnCq4LmB8Kvkjnxa4jjKPZldDvb
         VGwrYZnf9xaywTF8MxSgZiGrqrDDAmxw53r5UM5dU4EF+sgyISLF2tHnWgYzKOqvN4lv
         tZyNwDEHPyWlO8sbC2eWExkNulv5J7WFifmnE28KQmiONly3Iil1SbKNY76wdqbcD1jH
         dMXSul/OFi5zrl7fpthKeQ5EM9fziiAxRgWhJv9yzp2E+p5KqhPaxXWVy1jwGFqLUi1M
         Nh/Yy17GJ+vemCyetshhPjOKCHH/g99R20YRFb6ICMCpM2yY+r6Q+O/NnzBP6jG9BUpK
         DUAQ==
X-Gm-Message-State: AOJu0YyC3LWQUIKRBRQWDUT2iiRJOBIACS1jtEDt0L+LJTcXAH0HJ+9Y
	q+VgPLI7RRpgOgvOxcCCDriFgKD/qa8M2qbnVSIEaiS4Aic8KgfaP3EmblD+jQ==
X-Gm-Gg: ATEYQzylyAIp7kdij+97UmGZCm4F0FxwnOlIFkm+fzuRxfCsxYARZLhKhwlMTgT7Toh
	Q8y2RVo5v4tb3cxI7uykmRnnibA3C24vztKg3eqoyx0AW+UF2pOSg2ns6Sd4/ssN+rmE+6lzbDp
	3ySKRbZewBlDkeahLS3usunnSCkLREYclPXbNAwJHK1PFN91d2BaIxZUiE7npXIffKPlg/HdDk2
	WxPPCegt4P6Bmrz9klerHfkz0dOVb5b/aRYorplFcLhxg0B5Cp+K0zr8LKsIzqamNR24LGI4/75
	8Q9weeBxlJ6URrRnrwQdGNA4kpG+DsAnCUrSA0Ftf3jtHmtQEJ6FHYqAdmkyVhA64QyBLPf1ODy
	KU9ieoYQbig8AtX6T0FiYALR/VMZrUZXRBtxRwi3U8KlHN9sDvBdFx5E7rhiqj/R8AJ4Mj+5KWu
	PRudVmJL1inI8RxYARczocepoB36gBn2FZaxk7u0vZ+3PhrXWkwHIPREhNqcNzEaKT3hgpsNZqW
	5Nfn5zYLasy/iBcp4i6i7q7jQ==
X-Received: by 2002:a05:600c:3b0c:b0:477:5b0a:e616 with SMTP id 5b1f17b1804b1-485269188admr96312265e9.5.1772898921081;
        Sat, 07 Mar 2026 07:55:21 -0800 (PST)
Received: from GLaDOS.lan (93-35-179-236.ip56.fastwebnet.it. [93.35.179.236])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48527681a3esm261097785e9.4.2026.03.07.07.55.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 07 Mar 2026 07:55:20 -0800 (PST)
From: Stefano Radaelli <stefano.radaelli21@gmail.com>
To: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
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
Subject: [PATCH v3 09/11] arm64: dts: imx8mm-var-som-symphony: Add TPM2 support
Date: Sat,  7 Mar 2026 16:54:45 +0100
Message-ID: <72e21074031d16153460e128f8f37b8c942aaf30.1772898346.git.stefano.radaelli21@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1772898346.git.stefano.radaelli21@gmail.com>
References: <cover.1772898346.git.stefano.radaelli21@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 784AA22C989
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-272483-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[variscite.com,kernel.org,nxp.com,pengutronix.de,gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[13];
	FROM_NEQ_ENVFROM(0.00)[stefanoradaelli21@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.992];
	DBL_PROHIBIT(0.00)[0.0.0.21:email,0.0.0.38:email];
	DKIM_TRACE(0.00)[gmail.com:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,variscite.com:email]
X-Rspamd-Action: no action

From: Stefano Radaelli <stefano.r@variscite.com>

From: Stefano Radaelli <stefano.r@variscite.com>

Add support for the TPM2 device on the VAR-SOM Symphony carrier board.

The ST33K TPM2 is connected over I2C, and A PCA6408 GPIO expander is
used to control the reset signal required to release the TPM from reset.

This patch adds:
- The PCA6408 GPIO expander.
- The ST33K TPM2 device node.

Signed-off-by: Stefano Radaelli <stefano.r@variscite.com>
---
v2->v3:
 - 

v1->v2:
 - 

 .../boot/dts/freescale/imx8mm-var-som-symphony.dts | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm-var-som-symphony.dts b/arch/arm64/boot/dts/freescale/imx8mm-var-som-symphony.dts
index 66c306f755af..a77085b264e5 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm-var-som-symphony.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mm-var-som-symphony.dts
@@ -160,6 +160,20 @@ typec1_dr_sw: endpoint {
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


