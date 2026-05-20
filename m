Return-Path: <devicetree+bounces-300383-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8JyWJ85iDWquwgUAu9opvQ
	(envelope-from <devicetree+bounces-300383-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 20 May 2026 09:29:18 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D241588F4B
	for <lists+devicetree@lfdr.de>; Wed, 20 May 2026 09:29:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 37F92302CD0E
	for <lists+devicetree@lfdr.de>; Wed, 20 May 2026 07:29:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AEDD036DA15;
	Wed, 20 May 2026 07:29:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="O9yGWpdI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com [209.85.214.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76D6F366561
	for <devicetree@vger.kernel.org>; Wed, 20 May 2026 07:29:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779262150; cv=none; b=lkcEoiL9ee/A6tRDonQQbGcDhqIw34rBMzdZZ00H9RlUfCmrNN+uGPihJfFik0jYxQ45Ndmk6+TekhVs605BqoyFkoU3hq7baKtzknM2mWHISJH8xDZ+eJjXif8skzP2NPtMlaPn/g6aNwVPOcVmuSFNhuayDJKkyZED+HwYLsE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779262150; c=relaxed/simple;
	bh=pfyc341zXwBMZUZMj3FlAUbHl7aoZPTE0DnxlgS3F+0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=LLIkN4VcMZUC0T7brcWSjg8/GPZypEZvcGFlsSsFs+vVedU8DWtk43ZlFyms7lvtU7za8S59WKJSsSkd0oLSKC7WiCQ2R7Ddj6qBSQoMd7dzorjutECxv0Su8VsjpOtO5EobS4bigEWBUwwHt2akKu565qP78lDV/rKKRUXlBnc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=O9yGWpdI; arc=none smtp.client-ip=209.85.214.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f170.google.com with SMTP id d9443c01a7336-2ba21d32776so31998345ad.2
        for <devicetree@vger.kernel.org>; Wed, 20 May 2026 00:29:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1779262149; x=1779866949; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=n/uTr0N6/dohQUIDQm2+TsDj3+wcu3fpVpKrvpLtD7k=;
        b=O9yGWpdIYqbAYXLRxZ0LVq345gExNXJQisM76xIlVWQHo5KApOFzydmcicoc5Tj5ep
         qPru9Qu5SHIiBgU5tSEHSB4Zawg43JtwZcoq/fQ59AGTjPUGQRzyGT50gcaQsoELtwH2
         e9EAwsn8nhOlqwi6u/1sbIDfTSpwRuDiKdWgcCIg3QIjDCdB6forxv3S+1Ciy26hT8SI
         3h+ZD8jT68l7jRoTqFpJcJLGNMOfub3TbvpjPb4NW95GvrxCHL07bd44KQqfhhW/p09J
         8x8osgtzAj0CXFDGLUmRaUPWWDuuwUHiVmy9fLIOwFViFN9qQyf2fV9fDZSB1k2zwbkA
         PFNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779262149; x=1779866949;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=n/uTr0N6/dohQUIDQm2+TsDj3+wcu3fpVpKrvpLtD7k=;
        b=PO0rfphJ7SihrAH1ubwJaLEM6Lz8NuMmp6xymoiRihiJr7rteMNjST3SMWDpR/x12M
         IN0sxxHVais/hfk4ixqh2ANDF9B0kSfTMVBMgg7LRPsuZVE47YIFVw6DVEBAUSBwoOGL
         Ykj1OlmQa2YAaWf1HTXHOvmCs/2l3F7fpX0K/5Zz1zRy8KQm2vNzMCcRMCBvX3Xn0coJ
         LmyEiWt7T5cXFZmpra+PclEMOCyIWLJL+KBbR9qRgQPEAOvt2aPwsFZMK2SPKoOOxZZ0
         mrrW3S7YrrIv2KZei7Ot1vSNqwHcBXJJgT/j/miXuXn8F4M//Jg44WEq8iGzs8nTmocv
         1U3Q==
X-Forwarded-Encrypted: i=1; AFNElJ9acCl625M1nxe+2RQpmsXhg0Lzia6/3p3WQNZiSEmTsQQ+NYjqKCFpi5nkEUCSIHwXFmpUBHvZtU3n@vger.kernel.org
X-Gm-Message-State: AOJu0Yx4+SJgTMvHmDPZmOz2eoNqIjcxWhqChFFHzF6h/lczekwLNWwx
	vPgnd72acwIBT5nKn5UaY5hlQqGWggg9ORgckM+54oBMpKJKXQbq2Qac
X-Gm-Gg: Acq92OHrzifXeDbj82oMdfcGMMbm7W3SXc1Pdpap4hZpje2igw45zrsW2cWbRzp/1p1
	lvQwGT0np3rojRijVl24h5xFgnlw7aNObRFfwXdyDO5olBMspeQQqRwmov1C/6eFzLExpMixviK
	x8cJ7gTm5/E2zhBdpd++gko/AyLHmlDQ2QCb3C62rhRpHyLPM06l6+Se0LJNXHyL/PMkp+oneLM
	uZJvpftrQuelJOi1QAKxEa2auVM6/Oh6uitOzrHHLTVKzYg/2hK1teFqkg3BGVIa+O86/oohuCp
	PG/RXHW/rCn/o//guahuEkUz/tlNWshIXd0m3dIH9EIh0w1K71ovnB6gXo8fGGvR1HG9c0K+4MA
	EicV+0Y8naeVMLxsmM+Xu4Kzay6KQBdl9fcusDiSfiuyMt9OZ3bJNTHcO1vGF/MT43uoih83MJD
	5mc0w4zpX99T5Icm1Wc5PwcTLxD6KjQeXbabyi9W3RvCsNJpCEu7+BYsoBIlGhY+8v4FDrB3Kn2
	moH4+rPyxGYCn04Fy9VYERmv6VsfD6QJNT6BWYfykNN5xGM
X-Received: by 2002:a17:902:da82:b0:2b2:5491:e32f with SMTP id d9443c01a7336-2bd7e821ad6mr244788625ad.16.1779262148716;
        Wed, 20 May 2026 00:29:08 -0700 (PDT)
Received: from DESKTOP-G3E0OSP.localdomain ([112.172.255.242])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2bd5c05f27csm206258595ad.25.2026.05.20.00.29.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 May 2026 00:29:08 -0700 (PDT)
From: Jinseob Kim <kimjinseob88@gmail.com>
To: Jonathan Cameron <jic23@kernel.org>,
	linux-iio@vger.kernel.org
Cc: David Lechner <dlechner@baylibre.com>,
	=?UTF-8?q?Nuno=20S=C3=A1?= <nuno.sa@analog.com>,
	Andy Shevchenko <andy@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH RFC 1/3] dt-bindings: iio: imu: add Open Sensor Fusion UART binding
Date: Wed, 20 May 2026 16:28:41 +0900
Message-ID: <20260520072843.3593-2-kimjinseob88@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260520072843.3593-1-kimjinseob88@gmail.com>
References: <20260520072843.3593-1-kimjinseob88@gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-300383-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kimjinseob88@gmail.com,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[devicetree.org:url,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo]
X-Rspamd-Queue-Id: 1D241588F4B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add a binding for a UART-attached Open Sensor Fusion device.

The device is exposed as a serdev child node using the
opensensorfusion,osf-uart compatible string. Keep Raspberry Pi overlay and
test notes outside the binding.

The binding has been checked with dt_binding_check.

Signed-off-by: Jinseob Kim <kimjinseob88@gmail.com>
---
 .../iio/imu/opensensorfusion,osf-uart.yaml    | 33 +++++++++++++++++++
 1 file changed, 33 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/iio/imu/opensensorfusion,osf-uart.yaml

diff --git a/Documentation/devicetree/bindings/iio/imu/opensensorfusion,osf-uart.yaml b/Documentation/devicetree/bindings/iio/imu/opensensorfusion,osf-uart.yaml
new file mode 100644
index 000000000..6f329c326
--- /dev/null
+++ b/Documentation/devicetree/bindings/iio/imu/opensensorfusion,osf-uart.yaml
@@ -0,0 +1,33 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/iio/imu/opensensorfusion,osf-uart.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Open Sensor Fusion UART Sensor Aggregation Device
+
+maintainers:
+  - Jinseob Kim <kimjinseob88@gmail.com>
+
+description: |
+  Open Sensor Fusion is a UART-attached sensor aggregation device. The device
+  exposes an OSF protocol v0 data stream over its host UART interface and may
+  report capabilities and samples for multiple sensor classes.
+
+properties:
+  compatible:
+    const: opensensorfusion,osf-uart
+
+required:
+  - compatible
+
+additionalProperties: false
+
+examples:
+  - |
+    serial {
+        sensor {
+            compatible = "opensensorfusion,osf-uart";
+        };
+    };
+...
-- 
2.43.0


