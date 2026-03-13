Return-Path: <devicetree+bounces-275190-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iDNIAYcBtGnCfAAAu9opvQ
	(envelope-from <devicetree+bounces-275190-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 13:22:31 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 61C89282E45
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 13:22:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8BDD731E2DDD
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 12:22:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6A0D6391E55;
	Fri, 13 Mar 2026 12:22:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Y0TKur53"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f180.google.com (mail-pg1-f180.google.com [209.85.215.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07E31391827
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 12:22:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773404522; cv=none; b=ChB7zApznFbcLYIrHivoihqgRw637/VbBA6T6R8+JJTBzN95U7q4Tii1/HIbFS0BI4ovn/FknSyTZCRL9axPu7hkryAj7S6z166pC/MnaCpZOGi+wara++lFh5azOUSF93tkSzo9D+7A4zfyPqi1SiWZUMWWbaWhJO/rf3G3AjA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773404522; c=relaxed/simple;
	bh=hFs/nJVgT00q9RHXTlVEds9o/c8VRtvriM4h9t/2l+Y=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=nsRMG/MHrLAFN7Dm3WNSM3/NVuc4P/sxMTe3iJjiCaSd5NE+QpNn+I7vgoDg7xKeXav/Rg5PJaGdQzoBUnCMIH/kk5LUXJeUG3Q9aw0GgXuW1/oZ0isZdMr2zZSOTFhQ+pXUEIh1jlrM58BTZcJuufA+QHq/QbANaM2MSS9iK4A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Y0TKur53; arc=none smtp.client-ip=209.85.215.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f180.google.com with SMTP id 41be03b00d2f7-c06cb8004e8so864426a12.0
        for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 05:22:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773404520; x=1774009320; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=qQYsaPFPiGqln9V3lf00oP6fB8VRjINu6GubTRfH7Ds=;
        b=Y0TKur53VUpcMoXjx22bWz+0KJNlAbtjUIxkX17UFGD6tBEAwJnEOevS5ZfO/lTJBE
         QYM3si6RvN7nG+OiVS7SKcRLfQoLuEFYsbz97h8KFp+QdU6s3hyHL7y2+31/JqKy8e7V
         xMb1UJvtPtng6leFhuvVpLuYnpu4xweOKUiG5Tu9Jbx3sZFJM46+ZikKNT8he2NOOFn3
         HaVaqsV0j0JCfqokzxG25ZnD38bTspe/nLoRjvuxkeyPhwYc1F2emMjNB5+V7oo2EGYi
         ycILim7BLEdjRrd4Q/yX57FHhT1Qb6KBEvZvuAGQeXT6/VNdMZrUdHcmarC/5LQ2v4Br
         KcTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773404520; x=1774009320;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qQYsaPFPiGqln9V3lf00oP6fB8VRjINu6GubTRfH7Ds=;
        b=j0/gK+jYXDEubMsKXaq67dGpWM4HEElfA9jsuCzZI6Urgo6AOleBZe7TClNNt3cQFW
         u0+9VHITFLJiusAsvyIQbobLmf8VGfolqUOMWJl6sfEkVrjLSltmQQkKfK+Suay92ngJ
         VMlI9+H2cwnHm36uuI8qCSFoFzAThm687nuZ/UKxl7NJ4AHZPjDcOPOTN0rBqWNjIZtS
         k6RyL1EYM14MzOUczM77Nggwb4er7X39CUw0C5zNmn9sPo50f67RWqm+vjV67hZ5XqLl
         LRgCt9ypXKEhNP5Ydfp3JCqjU/msmcdD0CZ4lkAX8j4VNNkqvc8nkC74XM5tb2D2Lx2I
         QXWQ==
X-Forwarded-Encrypted: i=1; AJvYcCXFZE5lYlNAtf/WNi1oq60/sRlllEUNLW7+HpbtXW0VpQUcKxzYAtRQx2wlIWY6cuunt2qeuPT28r2W@vger.kernel.org
X-Gm-Message-State: AOJu0YwuvnrDz8WaOfsWBU0lPBP+OIZzv+Ra54Sa6iTqbIhswoFffgrw
	+Y68v+BxxoEwUn2CtrBtN5fVTI1RG6+z5ZLnBKGOQou+bW3znLW4ojBn
X-Gm-Gg: ATEYQzz3vpL+dgvlUwnMil3bXZ9APFOtZrBDTzAFtMgKaZkrRxMTy5mzJI8JhXelAxU
	ZcLWlb1ndTQ5rMKXbvVkBMujOPBuaeNns3ZdquoscOXirbczIgG0m/6+faAvmyYIknye8NwKhD2
	6hJ9srmTa23989eYy21fC+vQJX9TkUygsBlG+YEU7RhJ5loH6a121UmeD1T4wVjb9xOgAYsUWjf
	+Qx8tF9gjDcSqZAwEGT/999svFx81zly/Ept/dssHGqf4+gVn8tCY3YgILx2b9IQMY1zxnSPvwf
	oPK6g6ep/n8jd3E+nIgjnlZs5F1in1AxYJKwSEfqAyQj8coTX2FLMHWL7iGQUwzxuqyumMeg8FS
	vrPtcLwmOB6yqIYP25EN3a3UFstq6qn7e/k48YjmDX/WquhgPUPfhfrw3kbYAKFVRUt7j95agY6
	kQd0rueEPTvBCjO2dPbsT0aQ0=
X-Received: by 2002:a05:6a21:3289:b0:395:1511:7221 with SMTP id adf61e73a8af0-398ecdaa232mr3048034637.59.1773404520288;
        Fri, 13 Mar 2026 05:22:00 -0700 (PDT)
Received: from arch ([2409:40c2:5041:4729:f466:f82d:a807:fe6])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-82a0725bfd0sm7336275b3a.14.2026.03.13.05.21.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Mar 2026 05:22:00 -0700 (PDT)
From: Bhargav Joshi <rougueprince47@gmail.com>
To: sravanhome@gmail.com,
	lgirdwood@gmail.com,
	broonie@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	conor+dt@kernel.org,
	m.reichl@fivetechno.de
Cc: daniel.baluta@nxp.com,
	simona.toaca@nxp.com,
	d-gole@ti.com,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	rougueprince47@gmail.com
Subject: [RFC PATCH] dt-bindings: regulator: mps,mp8859: convert to DT schema
Date: Fri, 13 Mar 2026 17:51:36 +0530
Message-ID: <20260313122136.9349-1-rougueprince47@gmail.com>
X-Mailer: git-send-email 2.53.0
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
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FREEMAIL_CC(0.00)[nxp.com,ti.com,vger.kernel.org,gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org,fivetechno.de];
	TAGGED_FROM(0.00)[bounces-275190-lists,devicetree=lfdr.de];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[rougueprince47@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,0.0.0.66:email,devicetree.org:url]
X-Rspamd-Queue-Id: 61C89282E45
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Convert the Monolithic Power Systems MP8859 voltage regulator binding
from legacy text format to DT schema.

Signed-off-by: Bhargav Joshi <rougueprince47@gmail.com>
---
Note:this patch is part of the process for applying to GSoC device tree
bindings conversion project 
#https://github.com/LinuxFoundationGSoC/ProjectIdeas/wiki/GSoC-2026-Device-Tree-Bindings

 .../devicetree/bindings/regulator/mp8859.txt  | 22 --------
 .../bindings/regulator/mps,mp8859.yaml        | 54 +++++++++++++++++++
 2 files changed, 54 insertions(+), 22 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/regulator/mp8859.txt
 create mode 100644 Documentation/devicetree/bindings/regulator/mps,mp8859.yaml

diff --git a/Documentation/devicetree/bindings/regulator/mp8859.txt b/Documentation/devicetree/bindings/regulator/mp8859.txt
deleted file mode 100644
index 74ad69730989..000000000000
--- a/Documentation/devicetree/bindings/regulator/mp8859.txt
+++ /dev/null
@@ -1,22 +0,0 @@
-Monolithic Power Systems MP8859 voltage regulator
-
-Required properties:
-- compatible: "mps,mp8859";
-- reg: I2C slave address.
-
-Optional subnode for regulator: "mp8859_dcdc", using common regulator
-bindings given in <Documentation/devicetree/bindings/regulator/regulator.txt>.
-
-Example:
-
-	mp8859: regulator@66 {
-		compatible = "mps,mp8859";
-		reg = <0x66>;
-		dc_12v: mp8859_dcdc {
-			regulator-name = "dc_12v";
-			regulator-min-microvolt = <12000000>;
-			regulator-max-microvolt = <12000000>;
-			regulator-boot-on;
-			regulator-always-on;
-		};
-	};
diff --git a/Documentation/devicetree/bindings/regulator/mps,mp8859.yaml b/Documentation/devicetree/bindings/regulator/mps,mp8859.yaml
new file mode 100644
index 000000000000..144876aabd25
--- /dev/null
+++ b/Documentation/devicetree/bindings/regulator/mps,mp8859.yaml
@@ -0,0 +1,54 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/regulator/mps,mp8859.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Monolithic Power Systems MP8859 Voltage Regulator
+
+maintainers:
+  - Markus Reichl <m.reichl@fivetechno.de>
+
+description:
+  The MP8859 is a synchronous, 4-switch, integrated buck-boost converter
+  capable of regulating the output voltage from 2.8V to 22V wide input voltage
+  range with high efficiency.
+
+properties:
+  compatible:
+    const: mps,mp8859
+
+  reg:
+    maxItems: 1
+
+  mp8859_dcdc:
+    $ref: /schemas/regulator/regulator.yaml#
+    type: object
+    description: DCDC regulator subnode
+    unevaluatedProperties: false
+
+required:
+  - compatible
+  - reg
+
+additionalProperties: false
+
+examples:
+  - |
+    i2c {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        regulator@66 {
+            compatible = "mps,mp8859";
+            reg = <0x66>;
+
+            mp8859_dcdc {
+                regulator-name = "dc_12v";
+                regulator-min-microvolt = <12000000>;
+                regulator-max-microvolt = <12000000>;
+                regulator-boot-on;
+                regulator-always-on;
+            };
+        };
+    };
-- 
2.53.0


