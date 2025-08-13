Return-Path: <devicetree+bounces-204062-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id CFECCB23EEB
	for <lists+devicetree@lfdr.de>; Wed, 13 Aug 2025 05:22:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E3D751A25B67
	for <lists+devicetree@lfdr.de>; Wed, 13 Aug 2025 03:22:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1F5B2271451;
	Wed, 13 Aug 2025 03:21:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="SV2nulce"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-il1-f174.google.com (mail-il1-f174.google.com [209.85.166.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5981727056E
	for <devicetree@vger.kernel.org>; Wed, 13 Aug 2025 03:21:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755055317; cv=none; b=EFuwqTEmaoEb49K7RFvfqmX2Wu1eZKVOMVht/ioc52+ECYarHfEKXfdMeigPvjLRxra27+n64uwZPy2B6tJfLl4VLMtpcpWuyDvWW4GK+Sxr+VlrJVl9sDrgq0Mk+wV30Jw2qMEXOCHaRweb92ZgxjAxrsjEJPgHtvNDiEhv7LA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755055317; c=relaxed/simple;
	bh=QXvZG2q1wYALZ9ywXDBmZP2Lg7TZImln+AWgStp7op4=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=hciMQx06NDWE2v4ast/Dml6c0qpPvxTBSxOhdvkx68ReK4RaCypU0bmbLJVeWwGACZ1zsnrmFUPg78SRpEJvBL4nvdNPB610KcAMWo8zvTKpZIhjWwxogae8Fb890ni47BMERjybpuOUZy+toJNHZUsiVzUD93tMl1eZVLsXJVo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=SV2nulce; arc=none smtp.client-ip=209.85.166.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-il1-f174.google.com with SMTP id e9e14a558f8ab-3e54e988ed2so21822015ab.2
        for <devicetree@vger.kernel.org>; Tue, 12 Aug 2025 20:21:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1755055314; x=1755660114; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=PZh5F0QX3EknECzCmYMfb9xtWVRUzlviyKurejiq7Q4=;
        b=SV2nulcekr4iGfgGD+3qXbM6ug2yWC72pb40cukyk5eOgrIsNQjd0/gGkEhAD4Xv0+
         vumXzHbnlvPcDkYHPcpFfRps7t3ZRz+qCqD1YhT98c+lPyxHt6zEHeB6wuuTiKpiHhJT
         7h3yjcozIIgeX8inKnAyWuEv0m+eriG0aKfQyxw8VV4xYfbkxokSwlkpk+HziurupHA1
         BR11teaqM0BAS3ht8xRgjendAwue6lrW5n+JuQJL+s9fbbcBzX4YTkjQ05ergHAt582m
         NOPsF0g7FY2kfwkhYUqcxupw7M85sf6RUl54aFaP1/j+mZLoW1zkGeDJCdXRZWi00Ve9
         2KTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755055314; x=1755660114;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PZh5F0QX3EknECzCmYMfb9xtWVRUzlviyKurejiq7Q4=;
        b=KocPDZpcU0ysCU14uZcLUDqU4hqVg5s58NY8aAYUa2Q1kT9pJJPKlAZ2xaikLu++7W
         +KdSl1ijIR0OTLk9eqnxIyDaHiJcYfVyQFVCMYZryMUsZQg1UoiAD6uvloROvR+Bu4Qx
         9mfHX0SdJBIB4WYWQO2CBp/pj7EClkwsHtLU8DPnkxj48uo7+mSlqMeMF4Im2+zwU8iF
         T23T71IUA0Okhcc8z3CzVlJl55bq8m2cu+h4AegwnfsFwM7bJ66hCEFB7fSpX5Ypfcp2
         Q9UtrgvjoyXItAHa2JlZ0wMMnIAJq9L4cakzPgH0QyeYYWKDUwzMYJIouzNH9mqrpO1l
         1sVg==
X-Forwarded-Encrypted: i=1; AJvYcCWZUyd1YRXiO8MhUBbU9L0KP4UM0id3QcjZpT0C7Mw2X12sFdMkjWtTnrCDRzSEkB7hvnYITbdX9vEa@vger.kernel.org
X-Gm-Message-State: AOJu0YzZT6BnaprZmTloGrB2BanN5lvSed02sUNU5+ILS2rvdu40ocDs
	qgkQu9bgJ0feyDwdTh0EfzrVEWmTDpkG8L59FeSb1TauvhllwrQiIt76Ck/nswLpz9U=
X-Gm-Gg: ASbGncuOzNzcQfiVrmEng1FW2hDDLDYl01OT9Ht8et6e7rS2DhLk+EXqA7Hxi67Ujjq
	sHfkfg/fHd3Xnt7rCHtaGrjkcOo0p0FvxWuJTysstF8Yuif7RrmtE7R0gBL3RjKO6HZ4CsUgHTH
	YLQSrzDdtDmuG94cM54b/nOFtFlNiMiUZd122L1FNxJkcgIhFfXjP/uzMBTXeRoEGbalyvOikHr
	iV1n+ioONtaW3CRpqhW7sAUiKiNdLuNrjAtBtXG6H7EPJPbiZAR7wqT3eC/NM65a4PrA5MW+0+l
	kRPbtzl6A1mqMzDwpd4k7jNHb9EnEGiJAI4YW2K8EOX3Ct0ovtXOIdzWNm1TEy8Da6kG/K/InWk
	Bw98YnCBVpN5vF7y/FIYJOg8u0yl1T39ktYMIrdUHB2awAd/nyucygkE1nmvgHrI1VA==
X-Google-Smtp-Source: AGHT+IEGjkB4ovYyLSKxeQ7O4Oh8jWvGVbE2gJKsffKwKHW4yl0n/kstE9uKuxUw+5W4Y4U9OyRJLQ==
X-Received: by 2002:a05:6e02:17ca:b0:3e5:4c7d:b799 with SMTP id e9e14a558f8ab-3e5674713f6mr23473385ab.13.1755055314466;
        Tue, 12 Aug 2025 20:21:54 -0700 (PDT)
Received: from zippy.localdomain (c-75-72-117-212.hsd1.mn.comcast.net. [75.72.117.212])
        by smtp.gmail.com with ESMTPSA id 8926c6da1cb9f-50ae9cee258sm3453085173.99.2025.08.12.20.21.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Aug 2025 20:21:54 -0700 (PDT)
From: Alex Elder <elder@riscstar.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	gregkh@linuxfoundation.org,
	jirislaby@kernel.org
Cc: dlan@gentoo.org,
	lkundrak@v3.sk,
	devicetree@vger.kernel.org,
	linux-serial@vger.kernel.org,
	spacemit@lists.linux.dev,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Conor Dooley <conor@kernel.org>
Subject: [PATCH] dt-bindings: serial: 8250: move a constraint
Date: Tue, 12 Aug 2025 22:21:50 -0500
Message-ID: <20250813032151.2330616-1-elder@riscstar.com>
X-Mailer: git-send-email 2.48.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

A block that required a "spacemit,k1-uart" compatible node to
specify two clocks was placed in the wrong spot in the binding.
Conor Dooley pointed out it belongs earlier in the file, as part
of the initial "allOf".

Fixes: 2c0594f9f0629 ("dt-bindings: serial: 8250: support an optional second clock")
Reported-by: Conor Dooley <conor@kernel.org>
Closes: https://lore.kernel.org/lkml/20250729-reshuffle-contented-e6def76b540b@spud/
Signed-off-by: Alex Elder <elder@riscstar.com>
---
 .../devicetree/bindings/serial/8250.yaml      | 46 +++++++++----------
 1 file changed, 22 insertions(+), 24 deletions(-)

diff --git a/Documentation/devicetree/bindings/serial/8250.yaml b/Documentation/devicetree/bindings/serial/8250.yaml
index e46bee8d25bf0..f59c0b37e8ebb 100644
--- a/Documentation/devicetree/bindings/serial/8250.yaml
+++ b/Documentation/devicetree/bindings/serial/8250.yaml
@@ -48,7 +48,6 @@ allOf:
       oneOf:
         - required: [ clock-frequency ]
         - required: [ clocks ]
-
   - if:
       properties:
         compatible:
@@ -66,6 +65,28 @@ allOf:
           items:
             - const: core
             - const: bus
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - spacemit,k1-uart
+              - nxp,lpc1850-uart
+    then:
+      required:
+        - clocks
+        - clock-names
+      properties:
+        clocks:
+          minItems: 2
+        clock-names:
+          minItems: 2
+    else:
+      properties:
+        clocks:
+          maxItems: 1
+        clock-names:
+          maxItems: 1
 
 properties:
   compatible:
@@ -264,29 +285,6 @@ required:
   - reg
   - interrupts
 
-if:
-  properties:
-    compatible:
-      contains:
-        enum:
-          - spacemit,k1-uart
-          - nxp,lpc1850-uart
-then:
-  required:
-    - clocks
-    - clock-names
-  properties:
-    clocks:
-      minItems: 2
-    clock-names:
-      minItems: 2
-else:
-  properties:
-    clocks:
-      maxItems: 1
-    clock-names:
-      maxItems: 1
-
 unevaluatedProperties: false
 
 examples:

base-commit: 8f5ae30d69d7543eee0d70083daf4de8fe15d585
-- 
2.48.1


