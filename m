Return-Path: <devicetree+bounces-113653-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 632809A686E
	for <lists+devicetree@lfdr.de>; Mon, 21 Oct 2024 14:31:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1F3E22862EF
	for <lists+devicetree@lfdr.de>; Mon, 21 Oct 2024 12:31:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ACEBB1EF0A2;
	Mon, 21 Oct 2024 12:30:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=9elements.com header.i=@9elements.com header.b="A+f4afAs"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42F8C1E573C
	for <devicetree@vger.kernel.org>; Mon, 21 Oct 2024 12:30:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729513853; cv=none; b=ZKRw7vzPMx9wQBNx66PJoeddvaixceCog/LEbCjpuyiQUaAUQnU0LNznm3k93yPYEkeywBu+2LnM1J2Nonq9gfgTZlibqb26teaGhZpb3xdGWozMbmGY2CYxz3aoZysGRrQCCldCzZxp5A+JBXppjd9os94AL9k7RecUxDI3hgI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729513853; c=relaxed/simple;
	bh=dNHYhLYnCz57OOLIrQpTU04I6U4G+9ia8mwDBYvE6Hk=;
	h=From:To:Subject:Date:Message-ID:MIME-Version; b=rsahQjE5p62zCnmi/HEsqpwxM96vhKmWrdWJfcbBQ47zS0zJNup+mbm9P56l5pPXvpdndmFi2CfML+qEprUgi7pKcZ+Fe49OG3Hxp+EoDBHsZ+wmrbassoBsqOCX9VEHU4GlutEbPTeEAyVlKXVOM+NGA9cZfiCwArD+HJAUynY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=9elements.com; spf=pass smtp.mailfrom=9elements.com; dkim=pass (2048-bit key) header.d=9elements.com header.i=@9elements.com header.b=A+f4afAs; arc=none smtp.client-ip=209.85.221.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=9elements.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=9elements.com
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-37ed3bd6114so1920587f8f.2
        for <devicetree@vger.kernel.org>; Mon, 21 Oct 2024 05:30:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=9elements.com; s=google; t=1729513848; x=1730118648; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=rOcgV31d+YnFQlRPolkUo1sUslborEWsikCkSJr1UrA=;
        b=A+f4afAsFM5VkAq1TwBJgkgoK9XE2D7oUR+KmmYv+LNsuOTmShp+sfR9znJoNQ7U8b
         WyS91aU8zhwBVNpxdmxG+aly8xeZOaWq8gMOodau98MEuPBZpeZc0mugJsAxWobG+5oS
         r9poQyOruveWa3v6GWDGHNOjfIEQ1AElm65IU6lTjJFtHy6vqOT2CBVWr3z1fKcCYoMe
         9yG06biMbPhTTjqPQOwgpFalPXvDaJpW1Pf2uCW2ZIfZdSly21mbhLDAtVOr82yRdUw0
         LTrtfoGdHIjaNpUQqWIZs48EeMHoXFWtGKQ4x6s+W6Vv1F8oFhWBlqrjYC4jSH8PjGHt
         8iNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729513848; x=1730118648;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=rOcgV31d+YnFQlRPolkUo1sUslborEWsikCkSJr1UrA=;
        b=V0tPpIXA+7hK2P7pQGo4dshgSWTIjGzmq5LmWyikws88Q8XfzQ3jMq954A6o8dSjt9
         zGPfD3yMynUfkQp96XA3Y5C/EO0q+mHimSXRncWCQ3/aOPRf1rQvBJhNd3LyLyKFL0/Q
         LNloedDx+MMyjnPD/vkGVGHmWJA2M0KL6QYiF1VMkmVWOnWo7ikKpWL1aZrqGRKvttij
         biyZclRTieb+05lfmNAvh6b22Lx6MeQRPuJ77azNP5TdnchwQN94W4jJDW7wLsMch2Ap
         mb/UDjPiCKQmsM+X9gaquqU8cxPegZegnnTL9TTcqlaO+mzgo7qNSAILLnPjDkqoNkJj
         CQ1A==
X-Forwarded-Encrypted: i=1; AJvYcCUsc2RQj3h/eM6OHtK4GWzc7qfdbNjtffxm+tw+lFolx4/6P/wFOOgiG0q2JMMmO+NHAT9PtWT1DloB@vger.kernel.org
X-Gm-Message-State: AOJu0YzMtMXqA3yxZkKq3z1U0n7xfmhRvvZoWYRQOOE4OuCnQN10hjS5
	J9KDtKTYvDbCvCMc++mMVHSaILUNyXRrXuIGhFJM4riN8sFdw6KAeWMJff/TQd0=
X-Google-Smtp-Source: AGHT+IEtF3bT2QfrG/FSR80A5nCmoFdFM8oPeqFnxIfisEJZ31HCLKiDspKSvJLCb+LbGqlwdYfqJg==
X-Received: by 2002:a05:6000:b45:b0:37d:54d0:1f20 with SMTP id ffacd0b85a97d-37ea218b5ecmr7169863f8f.24.1729513848383;
        Mon, 21 Oct 2024 05:30:48 -0700 (PDT)
Received: from stroh80.lab.9e.network (ip-078-094-000-050.um19.pools.vodafone-ip.de. [78.94.0.50])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-37ee0a37df9sm4237363f8f.19.2024.10.21.05.30.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Oct 2024 05:30:47 -0700 (PDT)
From: Naresh Solanki <naresh.solanki@9elements.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	jdelvare@suse.com,
	linux@roeck-us.net,
	sylv@sylv.io,
	linux-hwmon@vger.kernel.org,
	Naresh Solanki <naresh.solanki@9elements.com>
Subject: [PATCH v3] dt-bindings: hwmon: pmbus: Add bindings for Vicor pli1209bc
Date: Mon, 21 Oct 2024 18:00:43 +0530
Message-ID: <20241021123044.3648960-1-naresh.solanki@9elements.com>
X-Mailer: git-send-email 2.42.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Remove vicor,pli1209bc from trivial-devices as it requires additional
properties and does not fit into the trivial devices category.

Add new bindings for Vicor pli1209bc, a Digital Supervisor with
Isolation for use with BCM Bus Converter Modules.

VR rails are defined under regulator node as expected by pmbus driver.

Signed-off-by: Naresh Solanki <naresh.solanki@9elements.com>
---
Changes in V3:
- Fix indentation
Changes in V2:
- Squash the two patch in patch into one.
- Update commit message.
---
 .../bindings/hwmon/pmbus/vicor,pli1209bc.yaml | 62 +++++++++++++++++++
 .../devicetree/bindings/trivial-devices.yaml  |  2 -
 2 files changed, 62 insertions(+), 2 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/hwmon/pmbus/vicor,pli1209bc.yaml

diff --git a/Documentation/devicetree/bindings/hwmon/pmbus/vicor,pli1209bc.yaml b/Documentation/devicetree/bindings/hwmon/pmbus/vicor,pli1209bc.yaml
new file mode 100644
index 000000000000..4aa62d67e1a9
--- /dev/null
+++ b/Documentation/devicetree/bindings/hwmon/pmbus/vicor,pli1209bc.yaml
@@ -0,0 +1,62 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/hwmon/pmbus/vicor,pli1209bc.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Vicor PLI1209BC Power Regulator
+
+maintainers:
+  - Marcello Sylvester Bauer <sylv@sylv.io>
+  - Naresh Solanki <naresh.solanki@9elements.com>
+
+description:
+  The Vicor PLI1209BC is a Digital Supervisor with Isolation for use
+  with BCM Bus Converter Modules.
+
+properties:
+  compatible:
+    enum:
+      - vicor,pli1209bc
+
+  reg:
+    maxItems: 1
+
+  regulators:
+    type: object
+    description:
+      List of regulators provided by this controller.
+
+    properties:
+      vout2:
+        $ref: /schemas/regulator/regulator.yaml#
+        type: object
+        unevaluatedProperties: false
+
+    additionalProperties: false
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
+        regulator@5f {
+            compatible = "vicor,pli1209bc";
+            reg = <0x5f>;
+
+            regulators {
+                p12v_d: vout2 {
+                    regulator-name = "bcm3";
+                    regulator-boot-on;
+                };
+            };
+        };
+    };
+
diff --git a/Documentation/devicetree/bindings/trivial-devices.yaml b/Documentation/devicetree/bindings/trivial-devices.yaml
index 15f89d7ecf73..00361b5cfc3c 100644
--- a/Documentation/devicetree/bindings/trivial-devices.yaml
+++ b/Documentation/devicetree/bindings/trivial-devices.yaml
@@ -404,8 +404,6 @@ properties:
           - ti,tps546d24
             # I2C Touch-Screen Controller
           - ti,tsc2003
-            # Vicor Corporation Digital Supervisor
-          - vicor,pli1209bc
             # Winbond/Nuvoton H/W Monitor
           - winbond,w83793
 

base-commit: d79616b04f0e08178ceb716a5d2ef60ab723d532
-- 
2.42.0


