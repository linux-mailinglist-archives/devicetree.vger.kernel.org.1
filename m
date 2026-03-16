Return-Path: <devicetree+bounces-276402-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GCxWGlVzuGn5dgEAu9opvQ
	(envelope-from <devicetree+bounces-276402-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 22:17:09 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 14BE72A0B1D
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 22:17:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 701513046D16
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 21:15:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8CA6C37269A;
	Mon, 16 Mar 2026 21:14:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ZMx0RpFN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f171.google.com (mail-pg1-f171.google.com [209.85.215.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F1EA371D08
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 21:13:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773695641; cv=none; b=TSBH8dbR1BEDw6AoOvtLvG7aibTlGv3yE61L6u/5rqz/9b2A8CbQyu5R/VpbHLu9B8AB6DHZl5rtm1eKGCa21MXz18IMrX7NjzRdQcgBsOrRkHo6SjwOTVX1k6x4uFZj3jdAmbPZkl7N2UZlI7E6xDO9JnCAqcrkbiiJcvPmCF8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773695641; c=relaxed/simple;
	bh=XfTiVWBGSK18qTIcb1YyI0kDcpzqXok3T8TKqXUhaF4=;
	h=From:To:Subject:Date:Message-Id:MIME-Version; b=rmoQI3Rn++HA5E2dXO9GohLDI3O3IqCBbTT9UJrrbnPlB3VbyaZ6QiX/ZJCyxWwLkPhF54hK+t9R7wQXTtCAsecwyARNuoOzQ+ghkrm7SDDSqNThi+GP6Re/st5sGvfpRjAt5W6pNq/QzHmIPkxPLsLrWr4PDUdf2kMYSYN18TM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ZMx0RpFN; arc=none smtp.client-ip=209.85.215.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f171.google.com with SMTP id 41be03b00d2f7-c73f107789cso732875a12.1
        for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 14:13:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773695639; x=1774300439; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=rF4t7hmWxUp9tFqC+NU8ZguLNueXfL7Mf7zA4/7gZzw=;
        b=ZMx0RpFNHrrYei6yhQ+Dr4bJIyDSmLZ1o/yyraKlm7jO56w+8JHuPjU7WkhIE//ICL
         MkxmjcxPdTPtlfwJySf8jHxeUb75pue7ZobxV0O22fhkmrxEPyJt58yC0HtHbc+sgElt
         0dKXuoc2wd2sAvLrvm+e2KR5JGE46hI7eTYfvvf74z9GxaCAsH4JxSidRkjPhoRjuuvO
         MaExLSctnhYQHm0KrkY8iLvZK6Jz+VumkVZYeKK39rzMNaQ8b6GN+wJA3BnD2i7q8k2x
         pz4EMrX1hTa9zoLre3wgD/4+SESkvUhvMbwjSycNMjOx89GHZ00hTesQho4/unZgbkyL
         /XOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773695639; x=1774300439;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rF4t7hmWxUp9tFqC+NU8ZguLNueXfL7Mf7zA4/7gZzw=;
        b=PKjnpyGw0lrdrmnshLGVCtFtfT/wjpQEPBHbbyV7JwB/Q3gqi1iHRGbhF8AwkyFTPG
         tHhnaHqlaalQONNKJyNau+HtfT4JJA6/FaopzLQLO6+97eCed529Ck82WJYEf+q2X5T3
         2+1v7nDdJ8ymrt+Jqvi1aUkNwA8l+EDHYKX7as3U+sOLqHiN1n/T26wY0wT2HeS24ves
         NMhIA+gBVtHjctr3IXY9xVVcuJbmplVZqP9kwiUYsQb6SESh2TC66XMYTJNLq3FbpIiC
         Dvg4B1syVXZWfM48kFPWY2SHtdlvrr/6riShOscM0clXlvcyiWgtFarN4HApy9SRrmoo
         P6qw==
X-Forwarded-Encrypted: i=1; AJvYcCUpqdRcTbnVSEBmxw/8Z6RZ3WmldawWTcA5LA1Gvb39+mf9EvO+g1PxFPzqxwa9dSXe7AuKImc+cz2g@vger.kernel.org
X-Gm-Message-State: AOJu0YxNY8MtdPMl1FYQxCxk00GSwt//pjtas3NGgeboK+MmfNgaJzUm
	RaGRKN5yK3nIIe2cLpEpYh9QyobWifAWKLPu2HhGXk5qZRtzTzWaDCzC
X-Gm-Gg: ATEYQzxKhNS9qUL5AXwZa0Kdkfk1Q0blbgkgcfVU4VNH0Gcn0eC+aoT8BfR9b9RAzo2
	a0HlJtTcFaJNslzAK5bNmbgfMkfYvZH+eOPgneH5PwQktnGnsq/GTzHMTB9FiE4nzn74HKdP5wr
	kbNk6l84jeNwbLYI2B/GcujBVFiAL1tgh7dO8JA+4ybfGSTQPytc/uaqQwDI+FQzUkqoxua3rQE
	KAHeWJKrlNnHw8ldyYCjCOX4slYpPb7WidL08Cop6y3ySHYsexYWP673YaSwI6KHA6G/zfWg8nz
	a544DpCJNtwjUoFzsJY4HHPnWsvL27pIFWUcRse5cTt55FPeCcKzUoHqJEZAIYcg8aj5Gwv6nrD
	6FCCG96iBG2SYmtpXmRbwT3dY1BqOjznnU5s4ahgjbl1QxsNwlfaZ6EX+Qz10SjUwy/gSvvKt2t
	OLHB3ad5ZH/XFjJh7EdEMsrERqOxfxE6YuUQJmUtguNNpMhfJRZccgpYIzHQ+msRUL0GJFXTy4V
	0BTUXypf/8E/YFMcJC/TNfRHpbCkKeHNALI1nS04+Ydw/GdT47kKw==
X-Received: by 2002:a05:6a20:12d1:b0:398:a027:4707 with SMTP id adf61e73a8af0-398ecd4e0demr13898288637.50.1773695638557;
        Mon, 16 Mar 2026 14:13:58 -0700 (PDT)
Received: from lorddaniel-VivoBook-ASUSLaptop-K3502ZA-S3502ZA.domain.name ([2401:4900:889e:d501:6872:1e15:77cf:339b])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c7401588ecesm5948475a12.32.2026.03.16.14.13.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Mar 2026 14:13:58 -0700 (PDT)
From: Piyush Patle <piyushpatle228@gmail.com>
To: lars@metafoo.de,
	nuno.sa@analog.com,
	lgirdwood@gmail.com,
	broonie@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux-sound@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2] ASoC: dt-bindings: adi,ssm2305: Convert to DT schema
Date: Tue, 17 Mar 2026 02:43:48 +0530
Message-Id: <20260316211348.230923-1-piyushpatle228@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-276402-lists,devicetree=lfdr.de];
	TO_DN_NONE(0.00)[];
	FREEMAIL_TO(0.00)[metafoo.de,analog.com,gmail.com,kernel.org,vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[piyushpatle228@gmail.com,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	PRECEDENCE_BULK(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	RCPT_COUNT_SEVEN(0.00)[10];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[gmail.com:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,devicetree.org:url]
X-Rspamd-Queue-Id: 14BE72A0B1D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Convert the SSM2305 speaker amplifier binding from text format to
YAML schema to enable dtbs_check validation.

---

Changes in v2:
- Fix subject prefix to ASoC: dt-bindings:

Signed-off-by: Piyush Patle <piyushpatle228@gmail.com>
---
 .../devicetree/bindings/sound/adi,ssm2305.txt | 14 ------
 .../bindings/sound/adi,ssm2305.yaml           | 46 +++++++++++++++++++
 2 files changed, 46 insertions(+), 14 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/sound/adi,ssm2305.txt
 create mode 100644 Documentation/devicetree/bindings/sound/adi,ssm2305.yaml

diff --git a/Documentation/devicetree/bindings/sound/adi,ssm2305.txt b/Documentation/devicetree/bindings/sound/adi,ssm2305.txt
deleted file mode 100644
index a9c9d83c8a30..000000000000
--- a/Documentation/devicetree/bindings/sound/adi,ssm2305.txt
+++ /dev/null
@@ -1,14 +0,0 @@
-Analog Devices SSM2305 Speaker Amplifier
-========================================
-
-Required properties:
-  - compatible : "adi,ssm2305"
-  - shutdown-gpios : The gpio connected to the shutdown pin.
-                     The gpio signal is ACTIVE_LOW.
-
-Example:
-
-ssm2305: analog-amplifier {
-	compatible = "adi,ssm2305";
-	shutdown-gpios = <&gpio3 20 GPIO_ACTIVE_LOW>;
-};
diff --git a/Documentation/devicetree/bindings/sound/adi,ssm2305.yaml b/Documentation/devicetree/bindings/sound/adi,ssm2305.yaml
new file mode 100644
index 000000000000..b841da2dc284
--- /dev/null
+++ b/Documentation/devicetree/bindings/sound/adi,ssm2305.yaml
@@ -0,0 +1,46 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/sound/adi,ssm2305.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Analog Devices SSM2305 Class-D Speaker Amplifier
+
+maintainers:
+  - Lars-Peter Clausen <lars@metafoo.de>
+
+description:
+  The SSM2305 is a filterless, high efficiency, mono 2.8 W Class-D
+  audio amplifier with a micropower shutdown mode controlled via a
+  dedicated active-low GPIO pin.
+
+allOf:
+  - $ref: dai-common.yaml#
+
+properties:
+  compatible:
+    const: adi,ssm2305
+
+  shutdown-gpios:
+    maxItems: 1
+    description:
+      GPIO connected to the shutdown pin (SD) of the SSM2305.
+      The pin is active-low; asserting it puts the device into
+      micropower shutdown mode.
+
+required:
+  - compatible
+  - shutdown-gpios
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+
+    analog-amplifier {
+        compatible = "adi,ssm2305";
+        shutdown-gpios = <&gpio3 20 GPIO_ACTIVE_LOW>;
+    };
+
+...
-- 
2.34.1


