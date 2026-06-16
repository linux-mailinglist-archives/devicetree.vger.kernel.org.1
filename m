Return-Path: <devicetree+bounces-312498-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Ky02LKA4MWoXeQUAu9opvQ
	(envelope-from <devicetree+bounces-312498-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 16 Jun 2026 13:50:56 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 585FD68EEEB
	for <lists+devicetree@lfdr.de>; Tue, 16 Jun 2026 13:50:56 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=linux.dev header.s=key1 header.b=LjhWXWev;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-312498-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-312498-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=linux.dev;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id A1BDC30485C7
	for <lists+devicetree@lfdr.de>; Tue, 16 Jun 2026 11:50:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B05DE43C041;
	Tue, 16 Jun 2026 11:50:15 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from out-180.mta0.migadu.com (out-180.mta0.migadu.com [91.218.175.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A5C6436358
	for <devicetree@vger.kernel.org>; Tue, 16 Jun 2026 11:50:14 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781610615; cv=none; b=bnngJk5iZtsVEpriIff+EQuOqXHxiioxU9+m8xLVxXjwyzMvL5MFjbCl8JBjj013aobr6EthDijsqLAQ8PHRM4eLS5UaCls3UdX8LgbbLw6iixUliY3lEWAxEVriexJLtcHU+R+KowCBFQ9t2tBXbpwQtiVViCwQ+ZnU6SIjkmc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781610615; c=relaxed/simple;
	bh=sXhs9sIVrV1bJnnaWiX/0/Bg0j9II9XzLpCMNCnXuDc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=X+0VXWuxeZ+/okG4XfFHmI1NxI2ByohU2gwalH7M79rZh3IwiHgNUJjZQDTzBT4gAmlb2fFdHBxRuJgP9NGw/+7jvlzgzji/udscHWQ1ERd0/HK5QX2sW2DAU0OjAHxvLNj93fROUYo2Tuml2grX+nGM+xdcVK/Qd7sGu17IQi8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev; spf=pass smtp.mailfrom=linux.dev; dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b=LjhWXWev; arc=none smtp.client-ip=91.218.175.180
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1781610612;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Va1wbI0GgUL6eB+s6EdSP5KZVywyXLfOSTxFT6wT1mk=;
	b=LjhWXWevkQ31iwpi1HdMZDJRr8BbiP6l36sRxueeq9O+zzCBhs2sGVasFM47ZH/ZR7MTw9
	Z63FO9EG/q3FPNA/bv024PgRoot3mG6fk7O8YbpAUiVJGtPtQzCE0dB5SDp5kqFnkJqvLJ
	t/oRgIb2Jcu+yWGc0HiQnYnNnL4geqw=
From: Siratul Islam <siratul.islam@linux.dev>
To: jic23@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: siratul.islam@linux.dev,
	dlechner@baylibre.com,
	nuno.sa@analog.com,
	andy@kernel.org,
	linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 2/3] dt-bindings: iio: magnetometer: add QST QMC5883L Sensor
Date: Tue, 16 Jun 2026 17:49:38 +0600
Message-ID: <20260616114942.37241-3-siratul.islam@linux.dev>
In-Reply-To: <20260616114942.37241-1-siratul.islam@linux.dev>
References: <20260616114942.37241-1-siratul.islam@linux.dev>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[linux.dev,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[linux.dev:s=key1];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[siratul.islam@linux.dev,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS(0.00)[m:jic23@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:siratul.islam@linux.dev,m:dlechner@baylibre.com,m:nuno.sa@analog.com,m:andy@kernel.org,m:linux-iio@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-312498-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[3];
	DKIM_TRACE(0.00)[linux.dev:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[siratul.islam@linux.dev,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	MIME_TRACE(0.00)[0:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,linux.dev:dkim,linux.dev:email,linux.dev:mid,linux.dev:from_mime,qstcorp.com:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 585FD68EEEB

Add devicetree binding for the QST QMC5883L 3-Axis Magnetic Sensor
connected via I2C.
Used enum so that more devices could use this binding

Signed-off-by: Siratul Islam <siratul.islam@linux.dev>
---
 .../iio/magnetometer/qstcorp,qmc5883l.yaml    | 52 +++++++++++++++++++
 MAINTAINERS                                   |  6 +++
 2 files changed, 58 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/iio/magnetometer/qstcorp,qmc5883l.yaml

diff --git a/Documentation/devicetree/bindings/iio/magnetometer/qstcorp,qmc5883l.yaml b/Documentation/devicetree/bindings/iio/magnetometer/qstcorp,qmc5883l.yaml
new file mode 100644
index 000000000000..38abd083a4fb
--- /dev/null
+++ b/Documentation/devicetree/bindings/iio/magnetometer/qstcorp,qmc5883l.yaml
@@ -0,0 +1,52 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/iio/magnetometer/qstcorp,qmc5883l.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: QST QMC5883L 3-Axis Magnetic Sensor
+
+maintainers:
+  - Siratul Islam <siratul.islam@linux.dev>
+
+description: |
+  QST QMC5883L 3-Axis Magnetic Sensor on I2C bus.
+  https://www.qstcorp.com/upload/pdf/202512/13-52-04%20QMC5883L%20Datasheet%20Rev.%20B.pdf
+
+properties:
+  compatible:
+    enum:
+      - qstcorp,qmc5883l
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  vdd-supply: true
+
+  vddio-supply: true
+
+additionalProperties: false
+
+required:
+  - compatible
+  - reg
+  - vdd-supply
+  - vddio-supply
+
+examples:
+  - |
+    i2c {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        magnetometer@d {
+            compatible = "qstcorp,qmc5883l";
+            reg = <0x0d>;
+            vdd-supply = <&vdd_3v3_reg>;
+            vddio-supply = <&vdd_3v3_reg>;
+        };
+    };
+...
diff --git a/MAINTAINERS b/MAINTAINERS
index e035a3be797c..1127403c579b 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -21787,6 +21787,12 @@ F:	Documentation/networking/device_drivers/ethernet/freescale/dpaa2/overview.rst
 F:	drivers/bus/fsl-mc/
 F:	include/uapi/linux/fsl_mc.h
 
+QST QMC5883L 3-Axis Magnetic Sensor
+M:	Siratul Islam <siratul.islam@linux.dev>
+L:	linux-iio@vger.kernel.org
+S:	Maintained
+F:	Documentation/devicetree/bindings/iio/magnetometer/qstcorp,qmc5883l.yaml
+
 QT1010 MEDIA DRIVER
 L:	linux-media@vger.kernel.org
 S:	Orphan
-- 
2.54.0


