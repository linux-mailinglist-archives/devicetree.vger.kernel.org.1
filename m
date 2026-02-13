Return-Path: <devicetree+bounces-265271-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sHjQGhrVjmlFFQEAu9opvQ
	(envelope-from <devicetree+bounces-265271-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 08:39:06 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id D5D09133A4D
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 08:39:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 378DE307862D
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 07:38:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CA5D82FF672;
	Fri, 13 Feb 2026 07:38:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="XC2bXlXU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F3862FF677
	for <devicetree@vger.kernel.org>; Fri, 13 Feb 2026 07:38:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770968307; cv=none; b=MzU8E5Epy9mjZpUMtm/jxDp4C6q2c75EO8636lVplBCcdxQcF74oXXheucKa5KMUR4HASxAfRHt/r59NZ0FfCbcZXpnz7f0Z23WnBdgTcbottg1e1c1GBCRuFEigqSyeYPYhi05rCQn/suCOOocBI3x3Ioyc8kziIkkpr0OXzOE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770968307; c=relaxed/simple;
	bh=etZxLc8bfGO+Sqom4TAXQCrwABSWGNSsLo91VOMEWgw=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=qwhNjmVyAUIFGE8S5XHVC3pzfawWO0aegveCz+NuLM3V2o10tBmw868Nr550rpcRO9E34OmZgG9y/+bdKLkHkg6atttA2Ls2fVEJnwUnRyhKz18UvcxyvULdeblIJtZIrIhMr9cS5PfVRI/yei08EZUf32lap1XHj5z8FVlJ4CA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=XC2bXlXU; arc=none smtp.client-ip=209.85.221.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-43638a3330dso528503f8f.0
        for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 23:38:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770968304; x=1771573104; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=vWiuB+OJ5TMezpUq3g297LZQT9wOrkp2zD9EqhVqw8Q=;
        b=XC2bXlXUed4ORDQ2SBD0VnMu5diYBKm72iN32xxrkCa6xkqNzfIuFnh4XdILydtTTW
         /rV0x5CMbledY0Y57bjpYjoKEKOwwUUSRigXpEDH/nPxpuRSXRg2hiQZQBI33qGOQEhH
         2+o+fd/rTGhrtZFevH6tboJ48r3vkqaU204Zq2CGsRPvhtC+Wa2/cysLZNlq940jrvbf
         Z9047m8RRWM31rDpMnKHKCFfRu4ajVl5JrE0Iikx9DQ1+jZin/Ia9gfhsoBJmE9Q/ASY
         uc0PoDCNyW/9y9Klwd/anzAhs0KGuUqfW498qBf8qHSSxwUXtHb7v3XM6Ql6GKMqWyO4
         ZTdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770968304; x=1771573104;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vWiuB+OJ5TMezpUq3g297LZQT9wOrkp2zD9EqhVqw8Q=;
        b=p158hwJ0UwtDqDBFdnNcfCxXXDDAwXMmFwTm8FEA0Q/eQW4qr6gxnwi+8M9OPFGKSL
         U9qKdvveMGTRezysAVdrb4WCSjhifqWgGbl50UFaNiUJOSazY0HIAwBT3XYydD7mKcII
         /HPTCx8LxnDbUsaDw0zhZMFFoY2xYtFg387AdYzaiFeJ9Sg9aKKySljqJCWg2W9BXPsW
         8/AugYrIW8BlklNMgqZBcO0iu3VQOUDjjcyanTS6lR3k0ozxE2+poyh+cThYIfaFGrCN
         ZfZuzAwP+NqGz2y2UUvGJr9YeAlIclP1QgS49HHovRLXzYHEtl0M2NTbBFuUJ7Q2fxFh
         aMgw==
X-Gm-Message-State: AOJu0YwpJAlCcVuwUU+AQ15Lc4Dy0XvGKdLEyAeEYSdl72fzeZmGCEcd
	zu5PGoGS1R3wwJTMxztBXrim6IbU+JmtariGMPUfKaaw6ySYouQGiK+ZZ/75wghBy5yQrQ==
X-Gm-Gg: AZuq6aIC0edF6W0smtTQhsXSFCsTfdUGydzqzqBsATFCcJxsOdTTmaBb04gj8q0+1/w
	vsbKdADTo/nYMODzK1LmvIRxiSYQwA2rMoBdu6urOGkh4AjSsjzly0oOtLCzAV/e67IC2dWAgm9
	JQfnXi/3cUToa5y0L6LMU3W7ZOPTKngKBcPIM01luRvzR/P1rlPw0KSfyvp7Xyxj/+koyBT4/wK
	aBq5I5/+g5Poyim3CHOyGuPpGx+ULNh4rCkITrPnjAJWstt3e9pyOBXsPxeLapGL4tnV9dRJHle
	73KVKaPVDp3MGPcos7wK/sOO2C1OmBLiC2/NSlT3XvsSjSTr1ZynpC1wu6wOpjPmAR0casaVOzp
	SOo1ehUamTkD0W8NrGhKwFk6eIKLhdQxBpWDV23oTczD+jGPyyWvxOYOfLDMTRo1YWlBx7SPnNk
	7Ny6/j5oX/NjkeY43/Aa3E
X-Received: by 2002:a05:6000:22ca:b0:434:32cc:6c86 with SMTP id ffacd0b85a97d-437978cadc4mr1730591f8f.14.1770968304335;
        Thu, 12 Feb 2026 23:38:24 -0800 (PST)
Received: from arch.localdomain ([2409:8a28:a53:6b71::1002])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43796a6a5f0sm3622107f8f.11.2026.02.12.23.38.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Feb 2026 23:38:23 -0800 (PST)
From: Jun Yan <jerrysteve1101@gmail.com>
To: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-amlogic@lists.infradead.org
Cc: martin.blumenstingl@googlemail.com,
	jbrunet@baylibre.com,
	khilman@baylibre.com,
	neil.armstrong@linaro.org,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	yangxuan8282@gmail.com,
	Jun Yan <jerrysteve1101@gmail.com>
Subject: [PATCH] arm64: dts: amlogic: meson-gxl-s905d-phicomm-n1: add bluetooth node
Date: Fri, 13 Feb 2026 15:38:10 +0800
Message-ID: <20260213073810.552341-1-jerrysteve1101@gmail.com>
X-Mailer: git-send-email 2.53.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[googlemail.com,baylibre.com,linaro.org,kernel.org,gmail.com];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[12];
	TAGGED_FROM(0.00)[bounces-265271-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jerrysteve1101@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: D5D09133A4D
X-Rspamd-Action: no action

The Phicomm N1 uses a CY43455 (BCM43438) module with its Bluetooth
interface connected to uart_A.

Add the required device tree node to enable proper functionality.

Signed-off-by: Jun Yan <jerrysteve1101@gmail.com>
---
 .../dts/amlogic/meson-gxl-s905d-phicomm-n1.dts    | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-gxl-s905d-phicomm-n1.dts b/arch/arm64/boot/dts/amlogic/meson-gxl-s905d-phicomm-n1.dts
index 393d3cb33b9e..dea3a60e8527 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxl-s905d-phicomm-n1.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-gxl-s905d-phicomm-n1.dts
@@ -30,6 +30,21 @@ &cvbs_vdac_port {
 	status = "disabled";
 };
 
+&uart_A {
+	status = "okay";
+	pinctrl-0 = <&uart_a_pins>, <&uart_a_cts_rts_pins>;
+	pinctrl-names = "default";
+	uart-has-rtscts;
+
+	bluetooth {
+		compatible = "brcm,bcm43438-bt";
+		shutdown-gpios = <&gpio GPIOX_17 GPIO_ACTIVE_HIGH>;
+		max-speed = <2000000>;
+		clocks = <&wifi32k>;
+		clock-names = "lpo";
+	};
+};
+
 &usb {
 	dr_mode = "host";
 };
-- 
2.53.0


