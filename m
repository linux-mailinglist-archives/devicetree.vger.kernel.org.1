Return-Path: <devicetree+bounces-13876-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A64CE7E109A
	for <lists+devicetree@lfdr.de>; Sat,  4 Nov 2023 19:28:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1EF96281587
	for <lists+devicetree@lfdr.de>; Sat,  4 Nov 2023 18:28:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B8A6422301;
	Sat,  4 Nov 2023 18:28:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="GIXvjkis"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39FF923768
	for <devicetree@vger.kernel.org>; Sat,  4 Nov 2023 18:28:47 +0000 (UTC)
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com [IPv6:2a00:1450:4864:20::531])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5EE9C1BC;
	Sat,  4 Nov 2023 11:28:45 -0700 (PDT)
Received: by mail-ed1-x531.google.com with SMTP id 4fb4d7f45d1cf-54366784377so5090481a12.3;
        Sat, 04 Nov 2023 11:28:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1699122523; x=1699727323; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=WdFHPaqOz+WT1YBXptEVmqeCWrPlYqYYh+DFTeXE4sE=;
        b=GIXvjkisZXJBmtUxKktQstIEZcek0ACINCbXbfcJWvil+8nbqhDrVnsNQNN/rnSUKf
         AV+cCfbxhuTTqgmluEGnUrT9Bfc2QKhxPr89fMWR0hqsW/l7Q0v4nCcPH8o7jB8F4GZe
         KLoTmt0GsRWmVE+A/REQYAytRhZLqxd4h6R7B3rYgwuUCvC3mJsLp9eR9S0mCf0MJ0cf
         hHgkdcJ1wUqm/QayYmGNxBjjC1lI6ulj1UxxwTZrXFkouvkTngOTrbeMi2J6ba+ewRU+
         sNUd5LoKST/VLVB6IY/tYNW+vPl6f75QYc75tDWpUzlY2VbVUC1gKzBaWk3PLd/zow8p
         zitQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699122523; x=1699727323;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WdFHPaqOz+WT1YBXptEVmqeCWrPlYqYYh+DFTeXE4sE=;
        b=g9BZSSDNOemjkQVRlVDyj3IJu600/HJwaZ2nhWuyN/pRGmwBQIfnhebugBdC4PcfBj
         RCTPDt9PNy6lF3lTJemjQ6KDl74MbSFZJZpjlUhsrp6GZK1jOrrSUAYoQm99GJR1ZC8F
         DQeVtu5Q8RLO27o3GIH2wtdExUP5SYQa7kZXimAAO8uvrCrJTlP4mQ+xapvA86k3pXJK
         QQRxCE/6KZl27dauh1LRpXGVV/Atj+7DgNDmnBxHRgdUA5fl2mNFuIw5Wergpztv948i
         HAhDnWvD4feQ3OMSnoutmGwYJpn/+F5y4DnOY7L8gbNV45qI8143r/VWgj6/Dg3KVazR
         q5hA==
X-Gm-Message-State: AOJu0YwMvcSsyRVqDSs4wBFIXPTVTguBfcoz1WUo6Ggha8bcfdVZsMt7
	CbRcfuB7EtodVu15SrJf032sqNe/mAqDWw==
X-Google-Smtp-Source: AGHT+IFKhlpSvHKpmz5r1GFRfKk14+C8AnYuparle3xIsqQTLkJu8rYtYJzqz8yzirV9W2xC9PperA==
X-Received: by 2002:a50:8d1a:0:b0:543:6828:f129 with SMTP id s26-20020a508d1a000000b005436828f129mr13244148eds.23.1699122523314;
        Sat, 04 Nov 2023 11:28:43 -0700 (PDT)
Received: from localhost.localdomain ([2a02:8109:8c00:3664:8aeb:c98d:49fc:fefe])
        by smtp.gmail.com with ESMTPSA id i23-20020a508717000000b0054353639161sm2099683edb.89.2023.11.04.11.28.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 04 Nov 2023 11:28:43 -0700 (PDT)
From: Nik Bune <n2h9z4@gmail.com>
To: wim@linux-watchdog.org,
	linux@roeck-us.net,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	skhan@linuxfoundation.org,
	stigge@antcom.de
Cc: Nik Bune <n2h9z4@gmail.com>,
	linux-watchdog@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] dt-bindings: watchdog: nxp,pnx4008-wdt: convert txt to yaml
Date: Sat,  4 Nov 2023 19:28:13 +0100
Message-Id: <20231104182813.80055-1-n2h9z4@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Convert txt file to yaml. Add maintainers from git blame. 

Signed-off-by: Nik Bune <n2h9z4@gmail.com>
---
 .../bindings/watchdog/nxp,pnx4008-wdt.yaml    | 34 +++++++++++++++++++
 .../bindings/watchdog/pnx4008-wdt.txt         | 17 ----------
 2 files changed, 34 insertions(+), 17 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/watchdog/nxp,pnx4008-wdt.yaml
 delete mode 100644 Documentation/devicetree/bindings/watchdog/pnx4008-wdt.txt

diff --git a/Documentation/devicetree/bindings/watchdog/nxp,pnx4008-wdt.yaml b/Documentation/devicetree/bindings/watchdog/nxp,pnx4008-wdt.yaml
new file mode 100644
index 000000000000..86b691a339b5
--- /dev/null
+++ b/Documentation/devicetree/bindings/watchdog/nxp,pnx4008-wdt.yaml
@@ -0,0 +1,34 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/watchdog/nxp,pnx4008-wdt.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: NXP PNX watchdog timer
+
+allOf:
+  - $ref: watchdog.yaml#
+
+maintainers:
+  - Roland Stigge <stigge@antcom.de>
+
+properties:
+  compatible:
+    const: nxp,pnx4008-wdt
+
+  reg:
+    maxItems: 1
+
+unevaluatedProperties: false
+
+required:
+  - compatible
+  - reg
+
+examples:
+  - |
+    watchdog@4003c000 {
+        compatible = "nxp,pnx4008-wdt";
+        reg = <0x4003C000 0x1000>;
+        timeout-sec = <10>;
+    };
diff --git a/Documentation/devicetree/bindings/watchdog/pnx4008-wdt.txt b/Documentation/devicetree/bindings/watchdog/pnx4008-wdt.txt
deleted file mode 100644
index 4b76bec62af9..000000000000
--- a/Documentation/devicetree/bindings/watchdog/pnx4008-wdt.txt
+++ /dev/null
@@ -1,17 +0,0 @@
-* NXP PNX watchdog timer
-
-Required properties:
-- compatible: must be "nxp,pnx4008-wdt"
-- reg: physical base address of the controller and length of memory mapped
-  region.
-
-Optional properties:
-- timeout-sec: contains the watchdog timeout in seconds.
-
-Example:
-
-	watchdog@4003c000 {
-		compatible = "nxp,pnx4008-wdt";
-		reg = <0x4003C000 0x1000>;
-		timeout-sec = <10>;
-	};
-- 
2.34.1


