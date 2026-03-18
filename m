Return-Path: <devicetree+bounces-277047-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0JR0COBlumklWAIAu9opvQ
	(envelope-from <devicetree+bounces-277047-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 09:44:16 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id D5CA82B84DA
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 09:44:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 6079730764AB
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 08:43:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 003253939B4;
	Wed, 18 Mar 2026 08:42:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="GZOnrQu/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54B5638F922
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 08:42:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773823331; cv=none; b=WL4u0PZVDi63sJNfUe4jVwI0KulqW2hbZ9hS0eJ5E9neDa8QvF15/MHGt0an7I2rwN/lv09bnkzxy+AUFm6D95GpJRKltJB+/El34isKt3+WVmcSeszfz1cbWywUOR5J91koLpQQzXGfJ9uLvXJIApfmpGpZAaORYtDF6mh1//U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773823331; c=relaxed/simple;
	bh=kObZunttpc/zmqnVYUukjrdXtv6NKxesO5ALdHzFlY8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=dwbnMpM3p4ztN67M7ogTG5lrZvuKl9wm9Je9/x9LuoeOmMErDR1IFgRqrRJpzFjes8hXjPhEzzD0KcdvFQmck6jgv/1BlS5+cy4ytfLaaccwtYicEm6TNphL6oIujwVfvsiPL+1AumcQq/LnwuYNP7f13oAeV2qWjAwTHSKb8TI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=GZOnrQu/; arc=none smtp.client-ip=209.85.221.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-439bcec8613so5091219f8f.3
        for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 01:42:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773823323; x=1774428123; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=afMNS1Lswk/xfSbxkMGffbIoqT+0zoayMghwWgebI8U=;
        b=GZOnrQu/rYdoYFph0X/IgRuvHNFpINANuyR+NY99eEA3RQ6FjqT+iGdQLMw9WY/frj
         veN+0NX2TF+p/00hOujXY3nFeX1J500w/KehGpGt5gSG7NXYlTMGKwCJBSvB2uQ89AGq
         KffFfNdUzD/vXXtC/yCNNodhPx81OJyI1jznTrwNme1uHcOtRp86sx8FOn7RFnt0hXHz
         AJ3R85hzGYmrrDLVl9nkBKsYXimdM7Tqv6VmgbYxtujFVyAmUN6ndfENGeTqBOk94/6v
         ymkaPKh4+RUlHpglqHJ43G8QgArDm/aJrQt7JDCnBDmWHdiyAlwoQdlomrg3f1UVNSzO
         Ntpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773823323; x=1774428123;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=afMNS1Lswk/xfSbxkMGffbIoqT+0zoayMghwWgebI8U=;
        b=sa4sQmoi/9OHf3VhFw5BYoBFSiSnrbDBMMoWgljDORnRE7OYX9ZLP7Te9rcGnNYAn7
         1JW5g7BYTp8VkHV6OaDSVJ48atx32LzYrj9sgz/RSh4Iky2sPpnWCFR12eX+6W5BIVZh
         cOy4CbIqOQhfunD8FUpnsUD+Is/WJ56filsCegL9IKn3tcn5ui2ZiHYNNt11rlHh05WJ
         5MAYmqvkaIwNlydYRf13A8UybYOGo5M06916PyuJDgXQ7rBBYLQPxG+/pbrme6s0GE2l
         zMc9hS2QzgygcxRWCcky5mNPm7qO6l9aUZNeE4F9SdWxCjRMIWlAq5PhgHgz1xHUuLk3
         qOsw==
X-Forwarded-Encrypted: i=1; AJvYcCWNgoZ/V4Vlarp1t+zDy2yJvFhjo9kyrs5cl+IXRAnnc/pU2SQhGEYHeIutzqZXYV9/Hx85jFSbxGMM@vger.kernel.org
X-Gm-Message-State: AOJu0YzoOIhAZznwoNyRVQpcwacKL7OjTpLSfnnk0JzIWDMmLS04Xvq9
	NkHqAMgPxtPzMpqPb3039kpWzXGC8xu2A/2DpHCJa17WluOb3y55TbLC
X-Gm-Gg: ATEYQzw3VBMCTiyYuS9NR63pT1yT/kPXM5Zl2LZw31xWCkntHIBvvLQx1h232cROOMg
	CA4JisIHbTYpzfDesf7UJegBhiduhXKljtocIAkhXEjuvv3kbNTNaxCUtKEa9YaX7cEs+kEoSt7
	eBFlSlNM/w11lX7nPh+xidzgPM5P+6YTbfttrHq/fCP+5zgF40gYWNmSyCDpbIHA1uP6f2uzUgI
	hOkGga4NwkoigQIsyFDxv/MUfGlB/1wwHrIUgMqr2Ratam2nUV/fW4+rhuilBEtxvbxPm2tp7fp
	y0U7nFsW7DC81tsDCR3JOfAzfCQISSVQjVX1Kfu+rFSnShaNlmi5dSkEaLbi93KqiB3NsOYkLBt
	5rLUKMJbVsM0V8VniHPGT2iUTpZSY1/F9ZRfCBxLTP0klXFqXTwJZbTMIBT9ERgIl0oQIoUU348
	zK4cdJqm0mfmtyonRxcY7M4NmH1ERAxDaEIzn683CqUibbbU6A
X-Received: by 2002:a5d:5d03:0:b0:43b:3e40:2223 with SMTP id ffacd0b85a97d-43b527aa424mr3611882f8f.19.1773823323108;
        Wed, 18 Mar 2026 01:42:03 -0700 (PDT)
Received: from localhost.localdomain ([2a00:23c4:a758:8a01:d643:4385:f93a:2085])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43b5184961csm6389350f8f.6.2026.03.18.01.42.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Mar 2026 01:42:02 -0700 (PDT)
From: Biju <biju.das.au@gmail.com>
X-Google-Original-From: Biju <biju.das.jz@bp.renesas.com>
To: Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Biju Das <biju.das.jz@bp.renesas.com>,
	linux-renesas-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	Biju Das <biju.das.au@gmail.com>
Subject: [PATCH v5 9/9] arm64: dts: renesas: Add initial device tree for RZ/G3L SMARC EVK board
Date: Wed, 18 Mar 2026 08:41:44 +0000
Message-ID: <20260318084151.122674-10-biju.das.jz@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260318084151.122674-1-biju.das.jz@bp.renesas.com>
References: <20260318084151.122674-1-biju.das.jz@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-277047-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[bp.renesas.com,vger.kernel.org,gmail.com];
	FREEMAIL_TO(0.00)[glider.be,gmail.com,kernel.org];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bijudasau@gmail.com,devicetree@vger.kernel.org];
	RCPT_COUNT_SEVEN(0.00)[11];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_FIVE(0.00)[5];
	DKIM_TRACE(0.00)[gmail.com:+];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[renesas.com:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,bp.renesas.com:mid]
X-Rspamd-Queue-Id: D5CA82B84DA
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Biju Das <biju.das.jz@bp.renesas.com>

Add the initial device tree for the Renesas RZ/G3L SMARC EVK board.

Added placeholders to avoid compilation error with the common code in
renesas-smarc2.dtsi.

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
---
v4->v5:
 * No change
v3->v4:
 * Collected the tag
v2->v3:
 * No change.
v1->v2:
 * Dropped scif node as it is already included in common platform
   file.
---
 arch/arm64/boot/dts/renesas/Makefile          |  2 +
 .../boot/dts/renesas/r9a08g046l48-smarc.dts   | 37 +++++++++++++++++++
 2 files changed, 39 insertions(+)
 create mode 100644 arch/arm64/boot/dts/renesas/r9a08g046l48-smarc.dts

diff --git a/arch/arm64/boot/dts/renesas/Makefile b/arch/arm64/boot/dts/renesas/Makefile
index d4dfb7fd973b..76df20d2fd29 100644
--- a/arch/arm64/boot/dts/renesas/Makefile
+++ b/arch/arm64/boot/dts/renesas/Makefile
@@ -179,6 +179,8 @@ dtb-$(CONFIG_ARCH_R9A08G045) += r9a08g045s33-smarc-pmod1-type-3a.dtbo
 r9a08g045s33-smarc-pmod1-type-3a-dtbs := r9a08g045s33-smarc.dtb r9a08g045s33-smarc-pmod1-type-3a.dtbo
 dtb-$(CONFIG_ARCH_R9A08G045) += r9a08g045s33-smarc-pmod1-type-3a.dtb
 
+dtb-$(CONFIG_ARCH_R9A08G046) += r9a08g046l48-smarc.dtb
+
 dtb-$(CONFIG_ARCH_R9A09G011) += r9a09g011-v2mevk2.dtb
 
 dtb-$(CONFIG_ARCH_R9A09G047) += r9a09g047e57-smarc.dtb
diff --git a/arch/arm64/boot/dts/renesas/r9a08g046l48-smarc.dts b/arch/arm64/boot/dts/renesas/r9a08g046l48-smarc.dts
new file mode 100644
index 000000000000..86db86335d5e
--- /dev/null
+++ b/arch/arm64/boot/dts/renesas/r9a08g046l48-smarc.dts
@@ -0,0 +1,37 @@
+// SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+/*
+ * Device Tree Source for the RZ/G3L SMARC EVK board
+ *
+ * Copyright (C) 2026 Renesas Electronics Corp.
+ */
+
+/dts-v1/;
+
+/* Add place holder to avoid compilation error with renesas-smarc2.dtsi */
+#define KEY_1_GPIO		1
+#define KEY_2_GPIO		2
+#define KEY_3_GPIO		3
+
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/input/input.h>
+#include "r9a08g046l48.dtsi"
+#include "rzg3l-smarc-som.dtsi"
+#include "renesas-smarc2.dtsi"
+
+/ {
+	model = "Renesas SMARC EVK version 2 based on r9a08g046l48";
+	compatible = "renesas,smarc2-evk", "renesas,rzg3l-smarcm",
+		     "renesas,r9a08g046l48", "renesas,r9a08g046";
+
+	aliases {
+		serial3 = &scif0;
+	};
+};
+
+&keys {
+	status = "disabled";
+
+	/delete-node/ key-1;
+	/delete-node/ key-2;
+	/delete-node/ key-3;
+};
-- 
2.43.0


