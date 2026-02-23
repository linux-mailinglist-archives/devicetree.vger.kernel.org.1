Return-Path: <devicetree+bounces-267250-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UOfQBjn2m2lI+QMAu9opvQ
	(envelope-from <devicetree+bounces-267250-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 07:39:53 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D073A172365
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 07:39:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 9EE393016AD7
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 06:39:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C35C034B408;
	Mon, 23 Feb 2026 06:39:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Eo9QYRJ3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f65.google.com (mail-lf1-f65.google.com [209.85.167.65])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A3F534A79A
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 06:39:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.65
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771828757; cv=none; b=rFrRvtHg/Jk6y3+6Fh0N2vXUeNbvySnwrkYFjNpbErLGc6cGyQ0x0rAkXCaWCWCq8p0nlqts4KcroEsxxOkRvueSlPFHBN1ovYl94Wi17ByhepV0VL1X315e07pxs+DX8MK3ComO+luIeROpSQ13R1Kk+QGA0+CedZEgFmJgd64=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771828757; c=relaxed/simple;
	bh=+xCYYkFGQ4JgB4ICZr6PyE2V+kBr+3lOCPplqVBjWes=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=EBBLBz4JxK/vM8GC2D57rXI/MYMlu/MhmEtjIIEdrQoM41SHZrw+7XZpwYr4PhoSubHgpEMwtSPZTenBpU0ZePFkPHpAhGZ/jqBqyl1TSB1cqKC2qwEOar4z/TJ2FbkL8oXxribgtoEmUFg5qizSqgC/SztzIJv4KE1yqQztpJw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Eo9QYRJ3; arc=none smtp.client-ip=209.85.167.65
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f65.google.com with SMTP id 2adb3069b0e04-59e614b3dbcso3864320e87.2
        for <devicetree@vger.kernel.org>; Sun, 22 Feb 2026 22:39:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771828754; x=1772433554; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MLyVcjdxnN/By9KBCrGjy5x8Jg9Sn7LCgXxWdazKspA=;
        b=Eo9QYRJ3oQ+cWNy1xyZ218YlS+X/rJmtiE9RBqrb/h7Vqwudy+DzlA+hPcrR3EZ/DW
         RgXkvfiUpPhqg6Fa36OFFhaOPSUHe3GtHSh/DtpGMAQRH8DAJKhig+jxGvue43afS75h
         LPTKhj4yZ6hI3IZrTzRnCrL8o45ywqCY73W5KSOGypAJQyqEEL9yBjBDSlmt3uoFNWsa
         eT4CgDunHFq2IJYZ+BL3qsFsGMNZ3sd9UXEKpZgbDZuew94Jn4CjG+sGZY3t28GOm/Sd
         icW0sUfUf9sw0h51U+0qFJ8v0Uv/cgkWF0yE1TNYvjVOU35OsNk7EuzzDGzzuY2dkRTp
         Pg5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771828754; x=1772433554;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=MLyVcjdxnN/By9KBCrGjy5x8Jg9Sn7LCgXxWdazKspA=;
        b=TzXdxbZFpV0h2HGhjZzJqzVkC/wBQSREHrjBhmdhmOe3q6eXeLomTC7LgCCrPsCerd
         7i4yJ93x4x1oBTLOCZvtC3eJdaIt7DZp/1b/lfMNuF5yEDNhQTerk9TPGuCSSLV+iEQp
         mnISmWt0Q8jxn9SOnhUuWgR6nB78ikwAzt/pXm2GHWTNf4uK2NvDdIOxEAhOm0XrBcvk
         3XGzLW0zLL9saHNjuteJPCY7Fss0z5pzTVSc07ATnBIw3jMJ0h9t+lQB/h1ehyyCnLkQ
         as0wyrkKJHUgTrtguneMlieUp5daBdbWB7xLopKDq/wdewXhggbwejtZQLQOwWPkP7l3
         FlUg==
X-Forwarded-Encrypted: i=1; AJvYcCV/plAqp3i0Ea5KR/0pF3igVnfXc6RV91DQkL5yFsTHn7qOdRA3r0etlmktTymbk5z19b7v921cVxWw@vger.kernel.org
X-Gm-Message-State: AOJu0YxkjvzAkt5fDwMdHul+fhCLSzlp1rsuWCcio+qsQjH1GPhiKhDC
	Hvl6v0mpfOQ3Zs9mvAgs7oVOlynzhxgrFN0m1PLt52fh/GzXSgf7GjrM
X-Gm-Gg: AZuq6aJ/UnoU9EKLmu+qrDkkLXzr7dudjcgfKj1L4xxU8XA/usHlQfU45Say8Ho/dzB
	otnbAVRZiNFh6iTUXiacatOHa0Sa9UpICk3OO4vzsHW93bN9ARxDTCVJW56wkQb1cqMl2Y/GhMV
	fec6hPriiZOQpS2Qwsv3zTGWId8wv9tm2eBz1wjRGV8Rl/7hg5R4xal1edh5FzGtolKRDXJIR+H
	2O2CMkQu6eVlUmo6gvisf6q+2jwhG1w4gdpdl5LEFLprGiGk36Rkr4En+dmZlSmyb73TCMklFJA
	Mq7mdinUw9FXwKglBj1yKiREFUON87J8xJ3FR8MjX4oicJKMfciqWUC3L5z9eG9NaPr+I4/3CgX
	JIi1BLZrNd1WDhknb9OWSdQtXbMUSc+y7fNPpc008fhx6tjkQQDY6o5tFIGuB+V615qkO6l0ZcF
	ZBwpBDzCY4nGVYvdfYAtP2OWY=
X-Received: by 2002:ac2:4bc1:0:b0:59f:84ed:f1d with SMTP id 2adb3069b0e04-5a0ed87df5emr2535363e87.14.1771828754254;
        Sun, 22 Feb 2026 22:39:14 -0800 (PST)
Received: from xeon ([188.163.112.76])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a0eeb13abbsm1369626e87.23.2026.02.22.22.39.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Feb 2026 22:39:13 -0800 (PST)
From: Svyatoslav Ryhel <clamor95@gmail.com>
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Lee Jones <lee@kernel.org>,
	Pavel Machek <pavel@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Svyatoslav Ryhel <clamor95@gmail.com>,
	David Lechner <dlechner@baylibre.com>,
	Tony Lindgren <tony@atomide.com>
Cc: linux-input@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-leds@vger.kernel.org
Subject: [PATCH v3 5/9] dt-bindings: input: cpcap-pwrbutton: convert to DT schema
Date: Mon, 23 Feb 2026 08:38:54 +0200
Message-ID: <20260223063858.12208-6-clamor95@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260223063858.12208-1-clamor95@gmail.com>
References: <20260223063858.12208-1-clamor95@gmail.com>
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
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-267250-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org,baylibre.com,atomide.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[clamor95@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[devicetree.org:url,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: D073A172365
X-Rspamd-Action: no action

Convert power button devicetree bindings for the Motorola CPCAP MFD from
TXT to YAML format. This patch does not change any functionality; the
bindings remain the same.

Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
---
 .../bindings/input/cpcap-pwrbutton.txt        | 20 ------------
 .../input/motorola,cpcap-pwrbutton.yaml       | 32 +++++++++++++++++++
 2 files changed, 32 insertions(+), 20 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/input/cpcap-pwrbutton.txt
 create mode 100644 Documentation/devicetree/bindings/input/motorola,cpcap-pwrbutton.yaml

diff --git a/Documentation/devicetree/bindings/input/cpcap-pwrbutton.txt b/Documentation/devicetree/bindings/input/cpcap-pwrbutton.txt
deleted file mode 100644
index 0dd0076daf71..000000000000
--- a/Documentation/devicetree/bindings/input/cpcap-pwrbutton.txt
+++ /dev/null
@@ -1,20 +0,0 @@
-Motorola CPCAP on key
-
-This module is part of the CPCAP. For more details about the whole
-chip see Documentation/devicetree/bindings/mfd/motorola-cpcap.txt.
-
-This module provides a simple power button event via an Interrupt.
-
-Required properties:
-- compatible: should be one of the following
-   - "motorola,cpcap-pwrbutton"
-- interrupts: irq specifier for CPCAP's ON IRQ
-
-Example:
-
-&cpcap {
-	cpcap_pwrbutton: pwrbutton {
-		compatible = "motorola,cpcap-pwrbutton";
-		interrupts = <23 IRQ_TYPE_NONE>;
-	};
-};
diff --git a/Documentation/devicetree/bindings/input/motorola,cpcap-pwrbutton.yaml b/Documentation/devicetree/bindings/input/motorola,cpcap-pwrbutton.yaml
new file mode 100644
index 000000000000..77a3e5a47d1a
--- /dev/null
+++ b/Documentation/devicetree/bindings/input/motorola,cpcap-pwrbutton.yaml
@@ -0,0 +1,32 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/input/motorola,cpcap-pwrbutton.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Motorola CPCAP PMIC power key
+
+maintainers:
+  - Svyatoslav Ryhel <clamor95@gmail.com>
+
+description:
+  This module is part of the Motorola CPCAP MFD device. For more details
+  see Documentation/devicetree/bindings/mfd/motorola,cpcap.yaml. The
+  power key is represented as a sub-node of the PMIC node on the device
+  tree.
+
+properties:
+  compatible:
+    const: motorola,cpcap-pwrbutton
+
+  interrupts:
+    items:
+      - description: CPCAP's ON interrupt
+
+required:
+  - compatible
+  - interrupts
+
+additionalProperties: false
+
+...
-- 
2.51.0


