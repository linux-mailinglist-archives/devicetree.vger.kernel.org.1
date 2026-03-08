Return-Path: <devicetree+bounces-272567-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sPWxNEpgrWk92AEAu9opvQ
	(envelope-from <devicetree+bounces-272567-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 08 Mar 2026 12:40:58 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 789FF22F79B
	for <lists+devicetree@lfdr.de>; Sun, 08 Mar 2026 12:40:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 65D4A301C140
	for <lists+devicetree@lfdr.de>; Sun,  8 Mar 2026 11:40:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A942F314B82;
	Sun,  8 Mar 2026 11:39:57 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f177.google.com (mail-pg1-f177.google.com [209.85.215.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 755C22BAF7
	for <devicetree@vger.kernel.org>; Sun,  8 Mar 2026 11:39:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772969997; cv=none; b=IhiaZU02Bv0DA7ihYXzA7/fzcvcpKI3Gu7YYImkPItuCadeJIt/Ow/QgFfhpValOSAo1uGmYoapo9B/84vy2cjljIgsPwp1gFL6Q7/YN3RQ+ptoOK5XH2Hm7VqYLwxExqt2hW+SUeNvxYwI41VZXWROPbtY2kDQBNy2QmL6fy9I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772969997; c=relaxed/simple;
	bh=xkjvnBfEWzXCeVXpajuv8PkZ3Fco7O1UlnT6iVuPIBY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=l40Ff2Kx3x5tpO+txtbGEpbqZ42NdJeEkfDzwQxz48ugGXIk8RHCz1cyQRaoFk++UGBbPBTrYP1al4REJ7bo+cMpAy/RQ0SwfiptZg1uBrw3DbSFWjFDV+C8MIowGuKFdYv6uGHYw1TPVdMgXD8oC1JwFThN0FQdd7SyuNyYpU0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sirat.me; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.215.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sirat.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f177.google.com with SMTP id 41be03b00d2f7-c73900cb57dso1033383a12.1
        for <devicetree@vger.kernel.org>; Sun, 08 Mar 2026 04:39:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772969996; x=1773574796;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=sQ0NQXAScTkrINYzywR9cEThj+C+gXRntuK61/et010=;
        b=wZWN6LFJgyYOViVEOjV89eBkEo3KgtnwmQsHQt2CSPfW2YEq9trW3bv3I3+MZaBZdQ
         1SllG65DaTVuc47sVfGeDkPo1eFY81evrMY6JqTPsyxqeeTkJ7+u0lTynpDKVBefqYdw
         80Y1ClfWMrqfmBm9mHULckRmSpkKhvdcDnYKJPtBKudA/F51BLNE0l+ik8r8zsL/F1fL
         u9WbKzJr+uXPUZGBfxp1BSJFV6JKBySqukwRXmnTOjKp2p9JwcYGaMtuDB4kbLSr0oyA
         seQHpdzSvV5arQxxZppm0N2HMfHvgBA0rpmy7FZu0PmOlQjGHQBWCb1B7NGrsJg66amA
         9sgQ==
X-Forwarded-Encrypted: i=1; AJvYcCWzBMOq3P14o6tj+uScwYx5aQ/iTOZ3eptrxdtq1WgfhsxQ6/s1KHW3mO7j6VhZyWEkqdJQURUhi4H7@vger.kernel.org
X-Gm-Message-State: AOJu0Yz/8PcrAYf/b6JzfFTz53k0/EICN1rAKRPQ2Fpktz+8yZA5ZPVH
	v2rBWrpjR1whOyk6SNPw+7naIB0AB8jSPMIKXAPwy1x5pWN5BABT+vjw
X-Gm-Gg: ATEYQzxoTENqXJ0J+8Y8sqt0crkbaWjpWFBXAIDS9/zFNeEJUBUC2dERV20MSySYQ5A
	5SMDbJCLuEIRGG7GRIsSasN7Us8V2RptoaF461EA5QiU/qbhCEXSjY4PlH/M8f35U1DWnr+H1G8
	IFCNGWvypHOAvJFonjwtyG6wknC+eZu6rHDCv8/oBqcd3fBEaC3G+FzgcIki72CDqsIG2KcCP2I
	8rJl32R1GXe+ctpFnQ8r78LKxb7MQ9ASSy/a5LHqVf08lCI5nWSLiQrgd8NfoGNGze436I/oJAt
	2A1olF88kO+6uawSfxUE/+oXb9TukbIQNQtxPCWHFpw5GS9Bvvyn6eBKtt/fRHM7adgyX1+//6H
	qg05KMOU6rzzKvBT+E80n+cCee7lSjKcnga7dG1eAUEwMizA9aEssSGbgYBz1dvOeSuYXpn5MbH
	b0ikcPe2lVriE1VwQVjfZbnNvnLMQ=
X-Received: by 2002:a05:6a20:729a:b0:395:4dbb:7e69 with SMTP id adf61e73a8af0-3985908729emr7663067637.45.1772969995684;
        Sun, 08 Mar 2026 04:39:55 -0700 (PDT)
Received: from archlinux ([59.152.111.50])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-829a48d372esm7063721b3a.61.2026.03.08.04.39.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Mar 2026 04:39:55 -0700 (PDT)
From: Siratul Islam <email@sirat.me>
To: linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org
Cc: jic23@kernel.org,
	dlechner@baylibre.com,
	nuno.sa@analog.com,
	andy@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux-kernel@vger.kernel.org,
	Siratul Islam <email@sirat.me>
Subject: [PATCH v2 1/2] dt-bindings: iio: proximity: add ST VL53L1X ToF sensor
Date: Sun,  8 Mar 2026 17:37:27 +0600
Message-ID: <20260308113728.40860-2-email@sirat.me>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260308113728.40860-1-email@sirat.me>
References: <20260308113728.40860-1-email@sirat.me>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 789FF22F79B
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.54 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[sirat.me];
	TAGGED_FROM(0.00)[bounces-272567-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[email@sirat.me,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	R_DKIM_NA(0.00)[];
	NEURAL_HAM(-0.00)[-0.715];
	RCPT_COUNT_SEVEN(0.00)[11];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Action: no action

Add device tree binding documentation for the STMicroelectronics
VL53L1X Time-of-Flight ranging sensor connected via I2C.

Signed-off-by: Siratul Islam <email@sirat.me>
---
 .../bindings/iio/proximity/st,vl53l1x.yaml    | 50 +++++++++++++++++++
 MAINTAINERS                                   |  6 +++
 2 files changed, 56 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/iio/proximity/st,vl53l1x.yaml

diff --git a/Documentation/devicetree/bindings/iio/proximity/st,vl53l1x.yaml b/Documentation/devicetree/bindings/iio/proximity/st,vl53l1x.yaml
new file mode 100644
index 000000000000..c4ae96293f27
--- /dev/null
+++ b/Documentation/devicetree/bindings/iio/proximity/st,vl53l1x.yaml
@@ -0,0 +1,50 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/iio/proximity/st,vl53l1x.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: ST VL53L1X ToF ranging sensor
+
+maintainers:
+  - Siratul Islam <email@sirat.me>
+
+properties:
+  compatible:
+    const: st,vl53l1x
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  xshut-gpios:
+    maxItems: 1
+
+  vdd-supply: true
+
+required:
+  - compatible
+  - reg
+  - vdd-supply
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/irq.h>
+    i2c {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        proximity@29 {
+            compatible = "st,vl53l1x";
+            reg = <0x29>;
+            interrupt-parent = <&gpio>;
+            interrupts = <23 IRQ_TYPE_EDGE_FALLING>;
+            xshut-gpios = <&gpio 5 1>;
+            vdd-supply = <&vdd_3v3>;
+        };
+    };
+...
diff --git a/MAINTAINERS b/MAINTAINERS
index 61bf550fd37c..01c8e6bac322 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -25093,6 +25093,12 @@ S:	Maintained
 F:	Documentation/devicetree/bindings/iio/proximity/st,vl53l0x.yaml
 F:	drivers/iio/proximity/vl53l0x-i2c.c
 
+ST VL53L1X ToF RANGER(I2C) IIO DRIVER
+M:	Siratul Islam <email@sirat.me>
+L:	linux-iio@vger.kernel.org
+S:	Maintained
+F:	Documentation/devicetree/bindings/iio/proximity/st,vl53l1x.yaml
+
 STABLE BRANCH
 M:	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
 M:	Sasha Levin <sashal@kernel.org>
-- 
2.53.0


