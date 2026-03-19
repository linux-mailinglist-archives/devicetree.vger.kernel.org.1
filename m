Return-Path: <devicetree+bounces-277775-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GCApDZ/xu2nkqQIAu9opvQ
	(envelope-from <devicetree+bounces-277775-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 13:52:47 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D003F2CB6B4
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 13:52:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 3446C302E564
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 12:52:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C27FE3D567F;
	Thu, 19 Mar 2026 12:51:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="b85gY5+0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E15234D383
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 12:51:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773924718; cv=none; b=Fhk+MkvcCIZs7iRkmC3Uac1xPHer57KPJUq41UGuomMQD97POfvsGnN5HSnUbehl44S28cI4SPdcIq3uIalzOayyO4nl+TA8thGcVowA6WAj+bza8NohmEYxuMQszTEC7hVFkAPmOQSW+L31Q3askkI/GVM0Ww//G0J4hjoEd1s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773924718; c=relaxed/simple;
	bh=5n2b+1/yK1e6d0aT13Kf7lvxAUl91wkTxGhZl9EfFxA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=I5IEJMoZculciOba5xdsmUw1TqK3Tpx6TTheIFCs8gWvCIBj5LIYAK3Ss9YCttaQtjBpyMU+QG8z5a0+AIyBGr+qpfSekGKP3tDwb0TAWLwKdFNSgJ+Cyu6vAIdlGPsrSLAU+mSLhhA7iOXSMaRIisiJfjMWC0ZtS9wbIbk+Hh0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=b85gY5+0; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-482f454be5bso19768015e9.0
        for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 05:51:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773924715; x=1774529515; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=60UD80Kt6kqVS1XCc/VOz4+GT/4GeMxL/JN5IiYuPek=;
        b=b85gY5+0nFdQW/nN6GMkc3JkMz7WPnenbQZjFATbKkLvpKNFmr0crZTEC73UKx+SlH
         pS5xmivWiHgjRwqXbLAu+7mlwLaPCOqWb8Ks+Y5lXq1Rc7OQDEYgNyV65ET8BakDX2Mk
         tBuVZ9S2UZswVDADjq4ZODf1kx7AThQUFRyGuWiB0jkq/Bojhh89sKazHaP31XUqUEOK
         jjwH2G9USiMMymoMXkr5Wkwtz9CTHnUjGKs5gCz3h60Nne90UyX/nPzvbid0eyq8aPvQ
         5ThRAToNniX9VH8uB1FQAub5CcTLDv4YJFMr0QsYvFXcYq/1pg5ZDYSkh60Kp7lcBQIf
         hpAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773924715; x=1774529515;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=60UD80Kt6kqVS1XCc/VOz4+GT/4GeMxL/JN5IiYuPek=;
        b=S7/9bTkQ6IRRqHl7IUaBzUGvryfMLlU0pdrk3ZLh360HaYrLMUDsFVf0HJ4R6Ibm5q
         h0eXAEsSRuLmfrLwF37p2/UVAboqQK7qA4wCgxvX9odF2V6ygWqK6tSvRyMN7+0fWVDR
         POYvc8FCpvIUQD2qB+3wDnMW/jDkkG1s6YjVporrlx+TUfgYHWVMly867+FHExT1B3u9
         u7wqWjXzNP3BFFDimWCVAHPO39Xkei/S4uJPVwt9JEAAw9tFJKrgPGnEBIkgdO2iQ9ds
         +zG4q/KSlGhV5W0QKdMEbefm2dD0IBcX8UVx3ntTVjgpgJCGMiWw5hfihYtRKfmmLgaz
         P0Rw==
X-Forwarded-Encrypted: i=1; AJvYcCUhMSuR+/6fZ+kQqd5K+8AZcJuzlzFGQUNMBlvoGFxkxLhFLSUxWjWEbTGy6jedxakRt4D6+SrzdOnH@vger.kernel.org
X-Gm-Message-State: AOJu0YwNifWLW+Rn2tVheSGtc7Ser4q+V7AR3RB5RGtkL2Bo7QrUfWF6
	s9nqmobWYFJ0lyjo349aOcxa5Qfmu8g5KpGPz/KGM/FY4yqG/1bUBVCF
X-Gm-Gg: ATEYQzy9ftXGu1B3SLo1jUP5tmZ8w1BSRUFzdppGHCa0/GLOttcOK/6I8n5YtEgECxo
	BAkQr07sppuWzsNb8rup9ejqYsUeDPVWoFoW3j30HGnCwhQldRTU2qE2ZZ7El+JleG3eLs1Qy9Q
	WYJrjoL+ceiPYSBgCxhVTdfFvx/Tsy9TEs1+KuBoY5FZPxBqrilkbnBXwQy/0zM+GQaY0ignq5P
	e0LLQd+xIOmpSOn7zUxShs8HJ1iZMYBiDdT7l2qE2vqICJ4Y+bVOxf3pAt7l2ii/mnxMEzRc+FM
	2z6uQ5JW6N3ErvTnpchG392eF4RtXaZBOn/0VJuKqlK+a4laslp4cCC/s9A/dd7jBrEY5Zbn9QG
	b1KhrVogWXrfTqcV1AqtYOYdhctGklTOyBX7XiveqSphZW7HYcYWLExWocomZN0VBh60rlRjmtA
	yqr5wffS8Y6LMkJ1o0mKRZsr9WDJO0GfPF5+FCbucSzA==
X-Received: by 2002:a05:600c:8b31:b0:483:6d9e:e4f5 with SMTP id 5b1f17b1804b1-486f8b20188mr55010885e9.5.1773924714750;
        Thu, 19 Mar 2026 05:51:54 -0700 (PDT)
Received: from biju.lan ([2a00:23c4:a758:8a01:8326:7b31:bf82:d2d0])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-486f4bc96c6sm72382035e9.5.2026.03.19.05.51.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Mar 2026 05:51:54 -0700 (PDT)
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
Subject: [PATCH v6 10/10] arm64: dts: renesas: Add initial device tree for RZ/G3L SMARC EVK board
Date: Thu, 19 Mar 2026 12:51:34 +0000
Message-ID: <20260319125143.230377-11-biju.das.jz@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260319125143.230377-1-biju.das.jz@bp.renesas.com>
References: <20260319125143.230377-1-biju.das.jz@bp.renesas.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-277775-lists,devicetree=lfdr.de];
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
	NEURAL_HAM(-0.00)[-0.959];
	RCVD_COUNT_FIVE(0.00)[5];
	DKIM_TRACE(0.00)[gmail.com:+];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,renesas.com:email,bp.renesas.com:mid]
X-Rspamd-Queue-Id: D003F2CB6B4
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Biju Das <biju.das.jz@bp.renesas.com>

Add the initial device tree for the Renesas RZ/G3L SMARC EVK board.

Added placeholders to avoid compilation error with the common code in
renesas-smarc2.dtsi.

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
---
v5->v6:
 * No change
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


