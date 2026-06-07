Return-Path: <devicetree+bounces-307911-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id IFxgOJECJmolQgIAu9opvQ
	(envelope-from <devicetree+bounces-307911-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 08 Jun 2026 01:45:21 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 575E3651ED7
	for <lists+devicetree@lfdr.de>; Mon, 08 Jun 2026 01:45:21 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=RELLlOtd;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-307911-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-307911-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id E5C9D30062EE
	for <lists+devicetree@lfdr.de>; Sun,  7 Jun 2026 23:45:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B7372335566;
	Sun,  7 Jun 2026 23:45:16 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f179.google.com (mail-pf1-f179.google.com [209.85.210.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 92AD433B6DF
	for <devicetree@vger.kernel.org>; Sun,  7 Jun 2026 23:45:14 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780875916; cv=none; b=Ka5APooMaT/FY7gCtDDOwkUjvACbaS5gOs9RQSE55aq3ACI14KP7KFPnffentx0C2zTQwjOcTG2p86w1ORgSFKI60xU2TyeVT3FW+uxE5Q1sool9Kj/vXaZ5Bw6eohaU9XOsOf61Q3VN9bhhsLbmMGmDWfaowVhjBLW0o4vPsFY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780875916; c=relaxed/simple;
	bh=Spsg1lhJOwmJ2qBBDyH8EyO73klzrypmW6Q3Hscl2pI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=aKFSE5dwoqgq5J7nx8TOzX33cT7fzbgzD9Rjr+KOFiim6srK8HjERNYJke74BpaJsw66y1MaI8WKFzaWb9JVlcdBj5gUIlgh6JEBePmcMq5hcf0XndytsA/aL5zhlmzQDCj4bSg/hfA2kXPCTggfle14/neA0sAgrDoNsfxOX0c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=RELLlOtd; arc=none smtp.client-ip=209.85.210.179
Received: by mail-pf1-f179.google.com with SMTP id d2e1a72fcca58-842cd900ee0so411978b3a.2
        for <devicetree@vger.kernel.org>; Sun, 07 Jun 2026 16:45:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780875914; x=1781480714; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Ahs7nLcf9FlQuNK4toxYY0XgtCKzjOPXWCt75LqsX8Q=;
        b=RELLlOtdJeuklN0IPC0N4fELBQGbivMj+u3cRt89hqX1QvJQ8s0tO1w9peG8L7xNPp
         uwIE89aEQazibfTOJ1PBvniK7fyNEqr+FY1S8saUMXOQC7tEfF42nra20UegijpDwiri
         yskHvDY595YC/N5ELX7tDdK2oyByhDOS7tikErE7Q7GBt6zXb3gZy5nQfz3zYSdAmvBt
         BADlyYd0IaIj5g7U/cT4geYK8klz45BFFoNM9zHb5n00BbpKfPMBFZjQGHNgFAlJT4Fu
         +q0txLOGxHDI9gVHOeNH7XeShxY0ZyeEtZOJ0vFQupf7/MFAQFuUInpw8jJLIwAp+nWQ
         eIbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780875914; x=1781480714;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Ahs7nLcf9FlQuNK4toxYY0XgtCKzjOPXWCt75LqsX8Q=;
        b=pHjEWp68152IVbHYPVx5Suzr2k4LFtS9R+1zwo/hQJADtka1/ilXxVgb4BrFR7WpiN
         fY9PYjIfpx2xNDJzHifMCbmf8qjqY8wouluwZPvr3iWvxKn4VorLuN8e3/MfK6xhuKE8
         srG+SBhChB2t3hxuz8xRXazcUk651G3btpLUeOnwvxBlRWymcGpmtoWUgujORtrDDMjt
         8Lq/POe6RJMeP7uSmzB3RRiSnP128mHzHIiznMzJ4FfAWcIrC/gEXkTnw7qAe2PzXaab
         LEV/IZOX+SMpPIJknZUMCvT2h/M4q48gj+/vWjJIPcgW77kLPVrNYd+S36QFNak0WV2R
         1BSQ==
X-Forwarded-Encrypted: i=1; AFNElJ/TGHTjDgpFLJ8uo2ZkfhYXjYvc+fWeR6dF07IQ3SUXUvlim5/GYhGfvHq73TcHoaL6RiKgEKNlO/qr@vger.kernel.org
X-Gm-Message-State: AOJu0YyCj1V7Dy/9gWYogfMQa5b7dmOv/gbZbKc9ju7B08xSrfEkQ+6s
	8MtnUfmZrekaB2reqmiiygxwN3R4t7C2xDDBQs88pjqSVVt8xxCCXXQm
X-Gm-Gg: Acq92OEHcUPXM4ys+jL+kSQcUzAltsXnQ2f5uYJSmXIqusKkwPk5HO5QbQGiQKSdUoV
	Izq+MmD/Ctdo8S+3xA3mMcIfunPrN6UwTK0VkbAoZIaR9pTD1u8XpXaYTtic8ECN6YdVSfLMPeJ
	RiI3TMdO7LHwAERBhV5uTWFe2I47cfzDHfXhI4p2eLWP53E5BvlK13+GXJ1ZsqdFfOVSW43B2WM
	XzFLcW/1ib2kE0lbqU8184otycNMPWKAFnfdc+DGl+xYZPyxnElLhvsvTek8OgdpDhJuD7E/F6g
	OC2prM2xg9tbxsbK/K4Avv5LwTBwlE0WYaakF6obvozSYYMIjQXD2guol6YEY1royl7v+5dPDuN
	j7X/iZl1yxfFxp6Q8gSFQWOkYtsO1YchDfsJet/ZlmRut++K+aXMFlIviEarI61fI6oiSIFl/la
	R5YfLBsfah58IghFOxuvundWCB9VK9Blztpfm8KHvh/yYjnDlyv5TiL9S7doPIwFw+Eg9ARHT3m
	p7zAVpHeBNbJK5tgcycjEGu+jc19Llq3Ax1MUwLKtQKlghB
X-Received: by 2002:a05:6a00:4298:b0:83a:4846:90b0 with SMTP id d2e1a72fcca58-842b10980d8mr13046383b3a.46.1780875913704;
        Sun, 07 Jun 2026 16:45:13 -0700 (PDT)
Received: from DESKTOP-G3E0OSP.localdomain ([112.172.255.242])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-842828d6bd1sm19257732b3a.44.2026.06.07.16.45.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 07 Jun 2026 16:45:13 -0700 (PDT)
From: Jinseob Kim <kimjinseob88@gmail.com>
To: Jonathan Cameron <jic23@kernel.org>,
	linux-iio@vger.kernel.org
Cc: David Lechner <dlechner@baylibre.com>,
	=?UTF-8?q?Nuno=20S=C3=A1?= <nuno.sa@analog.com>,
	Andy Shevchenko <andriy.shevchenko@intel.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jonathan Corbet <corbet@lwn.net>,
	Shuah Khan <skhan@linuxfoundation.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-doc@vger.kernel.org
Subject: [PATCH RFC v4 1/6] dt-bindings: iio: add Open Sensor Fusion device
Date: Mon,  8 Jun 2026 08:43:38 +0900
Message-ID: <20260607234343.22109-2-kimjinseob88@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260607234343.22109-1-kimjinseob88@gmail.com>
References: <20260607234343.22109-1-kimjinseob88@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	TAGGED_FROM(0.00)[bounces-307911-lists,devicetree=lfdr.de];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_SENDER(0.00)[kimjinseob88@gmail.com,devicetree@vger.kernel.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:jic23@kernel.org,m:linux-iio@vger.kernel.org,m:dlechner@baylibre.com,m:nuno.sa@analog.com,m:andriy.shevchenko@intel.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:corbet@lwn.net,m:skhan@linuxfoundation.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-doc@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kimjinseob88@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,linux.dev:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 575E3651ED7

Describe the OSF sensor aggregation hub.

Use the generic opensensorfusion,osf compatible.

Signed-off-by: Jinseob Kim <kimjinseob88@gmail.com>
---
 .../iio/imu/opensensorfusion,osf-green.yaml   | 43 -------------------
 .../bindings/iio/opensensorfusion,osf.yaml    | 43 +++++++++++++++++++
 MAINTAINERS                                   | 27 ++++++------
 3 files changed, 57 insertions(+), 56 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/iio/imu/opensensorfusion,osf-green.yaml
 create mode 100644 Documentation/devicetree/bindings/iio/opensensorfusion,osf.yaml

diff --git a/Documentation/devicetree/bindings/iio/imu/opensensorfusion,osf-green.yaml b/Documentation/devicetree/bindings/iio/imu/opensensorfusion,osf-green.yaml
deleted file mode 100644
index 626b41fb0..000000000
--- a/Documentation/devicetree/bindings/iio/imu/opensensorfusion,osf-green.yaml
+++ /dev/null
@@ -1,43 +0,0 @@
-# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
-%YAML 1.2
----
-$id: http://devicetree.org/schemas/iio/imu/opensensorfusion,osf-green.yaml#
-$schema: http://devicetree.org/meta-schemas/core.yaml#
-
-title: OSF GREEN sensor aggregation board
-
-maintainers:
-  - Jinseob Kim <kimjinseob88@gmail.com>
-
-description: |
-  OSF GREEN is an STM32F405-based sensor aggregation board from the Open
-  Sensor Fusion open hardware project. It sends OSF0 capability, status, and
-  sample frames to a host over a UART link.
-
-  Open Sensor Fusion is not a generic industry standard. Public project and
-  hardware documentation is available at:
-
-    https://github.com/opensensorfusion
-    https://github.com/opensensorfusion/opensensorfusion-hardware
-
-allOf:
-  - $ref: /schemas/serial/serial-peripheral-props.yaml#
-
-properties:
-  compatible:
-    const: opensensorfusion,osf-green
-
-required:
-  - compatible
-
-unevaluatedProperties: false
-
-examples:
-  - |
-    serial {
-        sensor {
-            compatible = "opensensorfusion,osf-green";
-        };
-    };
-
-...
diff --git a/Documentation/devicetree/bindings/iio/opensensorfusion,osf.yaml b/Documentation/devicetree/bindings/iio/opensensorfusion,osf.yaml
new file mode 100644
index 000000000..a4049715a
--- /dev/null
+++ b/Documentation/devicetree/bindings/iio/opensensorfusion,osf.yaml
@@ -0,0 +1,43 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/iio/opensensorfusion,osf.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Open Sensor Fusion Sensor Aggregation Hub
+
+maintainers:
+  - Jinseob Kim <kimjinseob88@gmail.com>
+
+description: |
+  Open Sensor Fusion is a sensor aggregation hub. The hub exposes an OSF
+  protocol data stream over its host interface and may report capabilities and
+  samples for multiple sensor classes. The Linux driver discovers the actual
+  sensor channels from OSF capability reports instead of describing those
+  sensors in Device Tree.
+
+  Open Sensor Fusion is not a generic industry standard. Public project
+  documentation is available at:
+
+    https://github.com/opensensorfusion
+
+allOf:
+  - $ref: /schemas/serial/serial-peripheral-props.yaml#
+
+properties:
+  compatible:
+    const: opensensorfusion,osf
+
+required:
+  - compatible
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    serial {
+        sensor {
+            compatible = "opensensorfusion,osf";
+        };
+    };
+...
diff --git a/MAINTAINERS b/MAINTAINERS
index 56181470d..e227b9aff 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -19977,19 +19977,6 @@ F:	Documentation/networking/oa-tc6-framework.rst
 F:	drivers/net/ethernet/oa_tc6.c
 F:	include/linux/oa_tc6.h
 
-OPEN SENSOR FUSION IIO DRIVER
-M:	Jinseob Kim <kimjinseob88@gmail.com>
-S:	Maintained
-F:	Documentation/devicetree/bindings/iio/imu/opensensorfusion,osf-green.yaml
-F:	Documentation/iio/open-sensor-fusion-protocol-v0.rst
-F:	drivers/iio/opensensorfusion/Kconfig
-F:	drivers/iio/opensensorfusion/Makefile
-F:	drivers/iio/opensensorfusion/osf_core.*
-F:	drivers/iio/opensensorfusion/osf_iio.*
-F:	drivers/iio/opensensorfusion/osf_protocol.*
-F:	drivers/iio/opensensorfusion/osf_serdev.c
-F:	drivers/iio/opensensorfusion/osf_stream.*
-
 OPEN FIRMWARE AND FLATTENED DEVICE TREE
 M:	Rob Herring <robh@kernel.org>
 M:	Saravana Kannan <saravanak@kernel.org>
@@ -20024,6 +20011,20 @@ F:	Documentation/devicetree/
 F:	arch/*/boot/dts/
 F:	include/dt-bindings/
 
+OPEN SENSOR FUSION IIO DRIVER
+M:	Jinseob Kim <kimjinseob88@gmail.com>
+S:	Maintained
+F:	Documentation/devicetree/bindings/iio/opensensorfusion,osf.yaml
+F:	Documentation/iio/open-sensor-fusion-protocol-v0.rst
+F:	drivers/iio/opensensorfusion/Kconfig
+F:	drivers/iio/opensensorfusion/Makefile
+F:	drivers/iio/opensensorfusion/osf_core.*
+F:	drivers/iio/opensensorfusion/osf_iio.*
+F:	drivers/iio/opensensorfusion/osf_protocol.*
+F:	drivers/iio/opensensorfusion/osf_serdev.c
+F:	drivers/iio/opensensorfusion/osf_stream.*
+
+
 OPENCOMPUTE PTP CLOCK DRIVER
 M:	Vadim Fedorenko <vadim.fedorenko@linux.dev>
 L:	netdev@vger.kernel.org
-- 
2.43.0


