Return-Path: <devicetree+bounces-259259-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IMNlIEc0dmkQNgEAu9opvQ
	(envelope-from <devicetree+bounces-259259-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 25 Jan 2026 16:18:31 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id E1E5681254
	for <lists+devicetree@lfdr.de>; Sun, 25 Jan 2026 16:18:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 9445730038DF
	for <lists+devicetree@lfdr.de>; Sun, 25 Jan 2026 15:18:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 33EDB1F4CBC;
	Sun, 25 Jan 2026 15:18:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="UCSjiJwv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com [209.85.167.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C8E319B5A3
	for <devicetree@vger.kernel.org>; Sun, 25 Jan 2026 15:18:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769354307; cv=none; b=d3Vn19w5eIBRURUoNZc++hWqhYp2o1Ip3RQdKIwCWTeC3YztHpTjPBqImVxyn8mAX2Ap5LzL7+jW5YcvTU3+Jc5reH9Ozf8NeY3rlROnp6WcEiT2R/NWAAbaC45gC1HL58eDvno276Gh1ZMfwnbjZ1Npz0laTnlcMVvrthyYw34=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769354307; c=relaxed/simple;
	bh=SNf2NU+hs+ZIS4XXchD9gc1LEk0khnpy5wXM0ouJBNM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=iMPEeki1OoTs+q8DBVWZhUFD19nH+0b1EcIwrD/hNObSlqzUV7EYmrz1Alc0hKC/foybkbRaiRMO396PQv59H970zLJuEF85tkwey0sO2tK0/iaKPjhxT8aqq2yiBpGQIWtwvPqudDJfqs0FZOSZ3J5An8fIXgbbumol2tUSHJ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=UCSjiJwv; arc=none smtp.client-ip=209.85.167.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f43.google.com with SMTP id 2adb3069b0e04-59b6c89d302so3663673e87.1
        for <devicetree@vger.kernel.org>; Sun, 25 Jan 2026 07:18:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769354304; x=1769959104; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fXpwpGUeOVZ6gd5Z9uZtu+VcPr504HYG8KCye/qyxZo=;
        b=UCSjiJwv0y+5N1npse6V5ZG8GNqWCbtluMuQWshE3kz06VdSRkJp3VDA6iBCEjpxbV
         uMep0E7lEYXP6DKdRnbp9Y+ZnY23gpqoFRRBC+xsnu6jrwlC1/X0WcQwbcx8u76isRIE
         NP5UodCd9m0XhXbFgThghzv7QMdIdP5hVMvX6eslx7K9fNQriV8469DKtiiuxJ/fY+yd
         V+HAyxZsWouNn/wjSUA3AyUZvORF5IjzmL7Iy0CB9lgrZ0e0HJ31Ck0znQgBfjUQIz1h
         72WSDfh+zDP/lWX+gzWKKWhLXOG4GX6DhrvFcNOiRnYii58yw1JxIqk5pMq2juJRq5g7
         ADJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769354304; x=1769959104;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=fXpwpGUeOVZ6gd5Z9uZtu+VcPr504HYG8KCye/qyxZo=;
        b=P+MC5qce0I6wAtoW9U1elhUTTGFwhCV004b40MhOk2rOJw3qF64w0XlvlDXQyBg036
         zTocziyW3wpgz9o9FHqaLSCts2NK8LffRXUHZF5EibVtYWFcvFwyV9KZQnMx3ASDle7Z
         wli1aM3oEdA4324ScK0hiJ8lutwLlm1bLXNc+VaCMHhccQN7cS/Lk30qPNh5chw71seS
         weTR/JAoNHJtMmczxFlcLC/ISZ3xOji2HPiesIaEfAMNHoPx9nRr0uAt5eDes9CZ1Uxj
         KafEJX3zV59cPq87xDoJokjpZMraaj7fbdMe80I7z8go2Sc/hG4ucv0MejBm2A1Ecrb4
         Y0Yw==
X-Forwarded-Encrypted: i=1; AJvYcCVFdxdlFoeZb4nvBSs1waxLZOaXIhvd0RqQ3F+JTiRTIDgA4dJ/YxBnfAekoY5FVdsrt2RO/TT7US6Y@vger.kernel.org
X-Gm-Message-State: AOJu0YzfMbae2m+iJNqCqIvz2pt0Fvp8NvaUrYRgdvG/6VoNJwP3jD9Q
	w9C9zEZL/0Ik4r/5055FdNOVx9+/dIugKYe9Sbd9QvWu+Pr3WhIUYl+ADdR/AA==
X-Gm-Gg: AZuq6aKR635Vor22jp1q9HV/9s4M1QYzyzaTDZIQ36b9vpOfnkfErt1Xpu4hJHYjO0P
	SV10jqxjo0L1MtmOstUZF61jyB/H76E55rdg5fsqXzHdmqEvIqpohxvXfSqBkEeoFuC40qklQYn
	iC/VTYAXQSSzrXYo6lp/GndqWKkumIhGHBt/Pa+VnzUkhxM59EX0qh0wyDBv9Awoum+uWtHNpAu
	CgplRHtlpS1b5vefSlj95jmP2q7WJcJ/udavoEC7iMi49pO+kWfz6aXwQH5IsJHJQ45bdU5YM6K
	70NvlNjQd6uyMsK2ia+h5k/XtF8vtvCqzqKN6FWEVHO1qYjebDdXc118WKcTvxW/z52FNPo2Eld
	HKVXOUyk45T9d+mUbvn04jxdDNV6CWUQo5IRdzz/5MD9tntL+1EswapQKXCQc3UJrGaSQeD8Gwa
	5p
X-Received: by 2002:a05:6000:2403:b0:430:f97a:6f42 with SMTP id ffacd0b85a97d-435ca39c59bmr3398601f8f.54.1769348598831;
        Sun, 25 Jan 2026 05:43:18 -0800 (PST)
Received: from xeon ([188.163.112.49])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-435b1c246ecsm22459688f8f.10.2026.01.25.05.43.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 25 Jan 2026 05:43:18 -0800 (PST)
From: Svyatoslav Ryhel <clamor95@gmail.com>
To: Jonathan Cameron <jic23@kernel.org>,
	David Lechner <dlechner@baylibre.com>,
	=?UTF-8?q?Nuno=20S=C3=A1?= <nuno.sa@analog.com>,
	Andy Shevchenko <andy@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	Lee Jones <lee@kernel.org>,
	Pavel Machek <pavel@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>,
	Svyatoslav Ryhel <clamor95@gmail.com>,
	Dixit Parmar <dixitparmar19@gmail.com>,
	Tony Lindgren <tony@atomide.com>
Cc: linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-input@vger.kernel.org,
	linux-leds@vger.kernel.org,
	linux-rtc@vger.kernel.org
Subject: [PATCH v1 06/10] dt-bindings: rtc: cpcap-rtc: convert to schema
Date: Sun, 25 Jan 2026 15:42:58 +0200
Message-ID: <20260125134302.45958-7-clamor95@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260125134302.45958-1-clamor95@gmail.com>
References: <20260125134302.45958-1-clamor95@gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-259259-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[22];
	FREEMAIL_TO(0.00)[kernel.org,baylibre.com,analog.com,gmail.com,bootlin.com,atomide.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[clamor95@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[devicetree.org:url]
X-Rspamd-Queue-Id: E1E5681254
X-Rspamd-Action: no action

Convert RTC devicetree bindings for the Motorola CPCAP MFD from TXT to
YAML format. This patch does not change any functionality; the bindings
remain the same.

Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
---
 .../devicetree/bindings/rtc/cpcap-rtc.txt     | 18 -----------
 .../bindings/rtc/motorola,cpcap-rtc.yaml      | 32 +++++++++++++++++++
 2 files changed, 32 insertions(+), 18 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/rtc/cpcap-rtc.txt
 create mode 100644 Documentation/devicetree/bindings/rtc/motorola,cpcap-rtc.yaml

diff --git a/Documentation/devicetree/bindings/rtc/cpcap-rtc.txt b/Documentation/devicetree/bindings/rtc/cpcap-rtc.txt
deleted file mode 100644
index 45750ff3112d..000000000000
--- a/Documentation/devicetree/bindings/rtc/cpcap-rtc.txt
+++ /dev/null
@@ -1,18 +0,0 @@
-Motorola CPCAP PMIC RTC
------------------------
-
-This module is part of the CPCAP. For more details about the whole
-chip see Documentation/devicetree/bindings/mfd/motorola-cpcap.txt.
-
-Requires node properties:
-- compatible: should contain "motorola,cpcap-rtc"
-- interrupts: An interrupt specifier for alarm and 1 Hz irq
-
-Example:
-
-&cpcap {
-	cpcap_rtc: rtc {
-		compatible = "motorola,cpcap-rtc";
-		interrupts = <39 IRQ_TYPE_NONE>, <26 IRQ_TYPE_NONE>;
-	};
-};
diff --git a/Documentation/devicetree/bindings/rtc/motorola,cpcap-rtc.yaml b/Documentation/devicetree/bindings/rtc/motorola,cpcap-rtc.yaml
new file mode 100644
index 000000000000..bf2efd432a23
--- /dev/null
+++ b/Documentation/devicetree/bindings/rtc/motorola,cpcap-rtc.yaml
@@ -0,0 +1,32 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/rtc/motorola,cpcap-rtc.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Motorola CPCAP PMIC RTC
+
+maintainers:
+  - Svyatoslav Ryhel <clamor95@gmail.com>
+
+description:
+  This module is part of the Motorola CPCAP MFD device. For more details
+  see Documentation/devicetree/bindings/mfd/motorola,cpcap.yaml. The
+  RTC is represented as a sub-node of the PMIC node on the device tree.
+
+properties:
+  compatible:
+    const: motorola,cpcap-rtc
+
+  interrupts:
+    items:
+      - description: alarm interrupt
+      - description: 1 Hz interrupt
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


