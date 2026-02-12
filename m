Return-Path: <devicetree+bounces-264921-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oBo7I4ODjWlb3gAAu9opvQ
	(envelope-from <devicetree+bounces-264921-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 08:38:43 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2138612AFB2
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 08:38:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C403A312C0D8
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 07:38:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 409282C026A;
	Thu, 12 Feb 2026 07:38:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="UjqkT1ES"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f181.google.com (mail-pf1-f181.google.com [209.85.210.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27A3129DB6A
	for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 07:38:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770881918; cv=none; b=oUsvAfmxcY9+iXPeJWg7Kn1E11JERbB6BQ7QnrJW3xY8c9FN83+LfjuflQQtCdYf9A4EL65xZDFp9xjHCTkDtQbaTBghlnj48t7UbIhBkz9Xs31dl1YTuvA58Rn7cUxpOy5xRKbK5UO+Hh3CKjaZarYoOq9xsl1Wvsj++oD/uuI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770881918; c=relaxed/simple;
	bh=NVIm1DndWJJJCTPF40Fql6DiXdWdfVFwl6oMJzoeDCQ=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=XzRY/vHw59dWlPIGqpmztxDsEac2okDZ+SBSuqaaYORwoJ6c07emQjCey8g8EuQZFzFoniguOyNWaWSrJEMzJ9jHvdjK3o0Bi4GrrA5wfesjYF6B47kbG9ZoYec25fdcUokYOlDXhN0x3A+CD/Sgf20yA1jEFq1bzdv1u1awjhE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=UjqkT1ES; arc=none smtp.client-ip=209.85.210.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f181.google.com with SMTP id d2e1a72fcca58-8230f8f27cfso3726229b3a.0
        for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 23:38:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770881916; x=1771486716; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=X6yU/33Y2AIUO+BWTC38ZPK5L+/ZL/PnX+vS1d7hlyo=;
        b=UjqkT1ESRlpIqhYG+mUDiJdwWhsfIuMTmXGfz0KeYBOjRQppyyCUpW2ArseOMX9rUR
         4AxRjckgdE+MkEvCnzf+3qZVDKUxnF9P4ZoxHkB7T+z0FL8m3SygEQTbVdwvrdc39DNi
         yMBJXs+bVBG3ncAalSlnFOKKHz2AVU1z+2o0RZ11wkOVzFzjyySRLJ8BLkQfwAfxQmtY
         FZANR+PefNwgcJrYxQ3KBM2EP2AVryEaqqjjYm0WwsRHdM3IGmuZPUtbiGrddNlc2wYs
         cqVjnvq/bwH8uU04hhQrDFXJnTLoCMXCBMnkXZNkqPqnYvV1n7KmdsZbxN9y8klkf2Yz
         w9KA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770881916; x=1771486716;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=X6yU/33Y2AIUO+BWTC38ZPK5L+/ZL/PnX+vS1d7hlyo=;
        b=uAp0Qaw7nls1fSlWembqU2dwZRPGoD4FYYerZTm0f5zVFu1HuHLjRrKEBbmMHCAjMQ
         gK4t5SsDq93/eM5U15XmKGZbl9VOgmY+HG1yWwUz/8QQmZxlFbXesnFsO9ZD8Gbpdfgd
         ggKUvpnkcpfV7lmtN/AOr9FX5wzJtMg5c2TRVdgedddaJVrRzEJLfDi78CZg92VGwMye
         a9RIEk/+YLpw8qdd3rgC1bZl3NfD6wQMJL/dAFKP6ECjDQgybxz2vMXItiMPt5GsYy9O
         fNC5eaU9nO88x9mPaCZFTMkkPSuEhD++ikxEFqLJ8xyExGPQS6chTt4AqVgpqcCr2tsM
         bjIg==
X-Forwarded-Encrypted: i=1; AJvYcCUtTu7ZZ+fUp63JVnSLkCYd5WwMw7GxVkB7jz1lAxniNxmxwlXj8FscIF9+gyEzTkbYkUOft2tG0Dx1@vger.kernel.org
X-Gm-Message-State: AOJu0YwCqLyOvPUyC0LBYLIVLIV8bOxGjxofLlAeG0lNs80klX2AFhu0
	SQHvtIwNAz2Ty07VUjHnYJlDZY6igsOFkOpR9wedzfzOU21I9wgZB1FY
X-Gm-Gg: AZuq6aL0ulTQUwmDJZPU6G5Lw+1/X+9byclnKWlE1wb8NDLuejxxx7S67vP9qZlwlPO
	Zta29f4U+RC+FMVvP4pWr3uXSr5Y4CcXcbZCTCQVRD89ZV7C0gIwB0G482DBAuBg5CsKiI1+Ru5
	d3q4QtUOmoxsokMsXo6dvC1awU59mkkJFAW4EZPmTxtUoRYloWNQYwp7T57pvXi5VUA/mAxWOMr
	zaBkjUtlyog/xBeb/gML9lYNSp7y6nUOfGvebPW8OOinPX5q9XrcQxhtzTwAfkkvmbQZ7QSwynL
	amDQo+e+OZMCAmRNlZ6We4D6tr+3fxnVPXBgULnFdq3f4IwaisZZWN7H6g8fB2E003ZxPkCiu+3
	ab3si7EWkM43j0FEso2Hno6gQ2UpkFY0v0VP+GDu032XuAyKtbTxliqQEhOVQHFuPqaAhAbhxWx
	cunG562Q6CnJfV7OxXc5DCcYbpHg==
X-Received: by 2002:a05:6a00:a24b:b0:824:a0b3:775e with SMTP id d2e1a72fcca58-824b05ac3d8mr1782553b3a.68.1770881916526;
        Wed, 11 Feb 2026 23:38:36 -0800 (PST)
Received: from phuc-desktop.. ([183.91.15.56])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-8249e8473fasm4295470b3a.55.2026.02.11.23.38.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Feb 2026 23:38:35 -0800 (PST)
From: phucduc.bui@gmail.com
To: geert+renesas@glider.be,
	magnus.damm@gmail.com
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux-renesas-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	phucduc.bui@gmail.com
Subject: [PATCH] arm: dts: renesas: r8a7740-armadillo800eva: Enable SDHI1
Date: Thu, 12 Feb 2026 14:38:18 +0700
Message-ID: <20260212073819.41304-1-phucduc.bui@gmail.com>
X-Mailer: git-send-email 2.43.0
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-264921-lists,devicetree=lfdr.de];
	FREEMAIL_CC(0.00)[kernel.org,vger.kernel.org,gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	FREEMAIL_TO(0.00)[glider.be,gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[phucducbui@gmail.com,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[gmail.com:+];
	FROM_NO_DN(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_NONE(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 2138612AFB2
X-Rspamd-Action: no action

From: bui duc phuc <phucduc.bui@gmail.com>

The Armadillo800EVA board provides an SD card slot connected to
the SDHI1 interface, but it is currently disabled in the device tree.

Add a fixed 3.3V regulator, configure the required pinctrl groups,
and enable the SDHI1 controller in 4-bit mode.

Signed-off-by: bui duc phuc <phucduc.bui@gmail.com>
---
 .../dts/renesas/r8a7740-armadillo800eva.dts   | 25 +++++++++++++++++++
 1 file changed, 25 insertions(+)

diff --git a/arch/arm/boot/dts/renesas/r8a7740-armadillo800eva.dts b/arch/arm/boot/dts/renesas/r8a7740-armadillo800eva.dts
index 04d24b6d8056..4838b285bdd9 100644
--- a/arch/arm/boot/dts/renesas/r8a7740-armadillo800eva.dts
+++ b/arch/arm/boot/dts/renesas/r8a7740-armadillo800eva.dts
@@ -65,6 +65,17 @@ vccq_sdhi0: regulator-vccq-sdhi0 {
 		enable-active-high;
 	};
 
+	vcc_sdhi1: regulator-vcc-sdhi1 {
+		compatible = "regulator-fixed";
+
+		regulator-name = "SDHI1 Vcc";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+
+		gpio = <&pfc 16 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+	};
+
 	reg_5p0v: regulator-5p0v {
 		compatible = "regulator-fixed";
 		regulator-name = "fixed-5.0V";
@@ -285,6 +296,11 @@ sdhi0_pins: sd0 {
 		function = "sdhi0";
 	};
 
+	sdhi1_pins: sd1 {
+		groups = "sdhi1_data4", "sdhi1_ctrl", "sdhi1_cd", "sdhi1_wp";
+		function = "sdhi1";
+	};
+
 	fsia_pins: sounda {
 		groups = "fsia_sclk_in", "fsia_mclk_out",
 			 "fsia_data_in_1", "fsia_data_out_0";
@@ -336,6 +352,15 @@ &sdhi0 {
 	status = "okay";
 };
 
+&sdhi1 {
+	pinctrl-0 = <&sdhi1_pins>;
+	pinctrl-names = "default";
+
+	vmmc-supply = <&vcc_sdhi1>;
+	bus-width = <4>;
+	status = "okay";
+};
+
 &sh_fsi2 {
 	pinctrl-0 = <&fsia_pins>;
 	pinctrl-names = "default";
-- 
2.43.0


