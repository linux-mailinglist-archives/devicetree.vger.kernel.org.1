Return-Path: <devicetree+bounces-164965-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id AE02BA8306B
	for <lists+devicetree@lfdr.de>; Wed,  9 Apr 2025 21:22:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5DE173BC22D
	for <lists+devicetree@lfdr.de>; Wed,  9 Apr 2025 19:22:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B5A031E991B;
	Wed,  9 Apr 2025 19:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="lut8q8Ni"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-il1-f176.google.com (mail-il1-f176.google.com [209.85.166.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DF631E51EA
	for <devicetree@vger.kernel.org>; Wed,  9 Apr 2025 19:22:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744226543; cv=none; b=jDz3X32o8A87ZjvzWcF+cxK7eVSVGGBxmLq864sZg+t3szgITs04yVIonHSfh//bToRXlCyqdH0mchjEUHqmkdzj/GWx4xJEyTSGyqbhTYKb1xpcVsuuk8ZKiPJcN3zYOGbNicvz5VwoApWJgNpH1OI/vfKq7VpbCiqxtje0Lb4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744226543; c=relaxed/simple;
	bh=he9IA1+sEmtGpV+RfD/yvwaHIPJw7FZcA+CsPKHLNsY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Z9YvjpgH1dMVj2lpTLuHmfPcS4+ApDVkKSGdkNnZ/lRF44zQGLiHeCZNYkKrbGoBfvOWL4uyk1o38Io/TBpCZY2x8FlTu6UQdXfFpTK1cyFuaNm/Sf2fPrVKHTb+TCLrESkYl10/OZSuDrWZa5gxDEX2lFrnfUB+ar3lPLy8CCk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=lut8q8Ni; arc=none smtp.client-ip=209.85.166.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-il1-f176.google.com with SMTP id e9e14a558f8ab-3d6d6d82633so320745ab.0
        for <devicetree@vger.kernel.org>; Wed, 09 Apr 2025 12:22:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1744226539; x=1744831339; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bAZLFz1IGr5iGWJpnMiF/uKgFNwzC6PY6kuRk72SglQ=;
        b=lut8q8Ni1hbyZx9cevMEU3YqMOUhsQhPKqmJAgDc6cYYex6kdQ/QLfIU60sQNgD7g8
         JimgNl640PCTK+FpDRplBPvlvuKDdRe6DUfPxjQSM+hsymxq8POEfX7A2Jf0n5YkrxKn
         f2ybj/ajrmfvuGMqT49IAmXdrgFnKaf59WioJQUSS8Ps2mHdslboQOxOGOsLfx2ib2G4
         GVt2GgaIfyRLLfRPSkfyytr0BVe2WYI104UkkYW8TaVcTvJ2koBiG1++5uepyrKQeNvB
         7o9kqfqEWR5pfcB7Qu+7/dlXSkLuGLwauXtrcZ6AVTn3XRwcK6hI3E7fnIAQSLvRMEWC
         pKFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744226539; x=1744831339;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bAZLFz1IGr5iGWJpnMiF/uKgFNwzC6PY6kuRk72SglQ=;
        b=kbmKyWc4lQDvnhxPDWTG+jg9cGoTifs5Q0UDmfXJYsoRM0X81t21lTCHLWz+c5gfVW
         CbAw3qIeDZd5rxrp9QEkA236Lez5Kq5B2ZoKIUOXfhOq3MV2IErd9ntx2eQBg+GFJOJi
         onQaxTsLGzkVRsw2d1CgLpLQrbWNE5jmEGOBEzL+KUfByeFnmiTfYsQ6XndchDD0ZnOE
         qpYgrUxYVOrMwYYXap9Xiz/bMyjujw18fC7trDYGi/H0NQbsmKHTVQ8vZO3RG5KpAy+J
         y0eypzW4CGpnMWbyyZDYyu7ZMwRk82of0xLk3xNHPKsi6J5OrB0y6OpehZX8e/5Wlaid
         CxWg==
X-Forwarded-Encrypted: i=1; AJvYcCUbkVcGs+7Jx9E9EYhN5ncChbuLZApfmG9fExlS0/ZR2jEh5+lLmJpbiD+FQ8Lkrkgp/LpFMkTvwTGW@vger.kernel.org
X-Gm-Message-State: AOJu0YyBQccGU5hif9NhQfqMMeRXkNYEQh9LPFl2XXnfKcfRA8MsChjq
	PDal8uV4dd2Wah9YdL8nJPNkKbBiXGLMYlbzO0uFG05tGE02Z4W0Fxuw6WSGOPQ=
X-Gm-Gg: ASbGncuwaxxWmO96u+OBiHosj+BFNrQFyPBafm/2oOeOFbV3TwdnWAoqOxu+Armnxb1
	7o/9S2uLr6oVyFM5XtJsWaNds/hNT+sB7yiGnSZ6LGKKNsVa/QeNEmZNMFsVByXsKeQLhAXo2uG
	Dcr73jxkvPkKjnF5PiieqURvBlGKK6Pl04Mc8WgUkPr4zrC/oNjyK74HPQA4f1bcfw+M0PDxj6x
	gVYpyR2enXzWamdO5D69lOoXTZUIZ64FWc1BPFf6LErzm48V7mCxXXm87Q74uGonaUxFgbJHzdx
	iJG/+WeFDAHDDARSw511vWlHJGN8aGvCDPoSMQwxliaSLlJzVOcX2WfWswOLG0I8sNyRPSu8V2X
	nojauGIq+35v6TA==
X-Google-Smtp-Source: AGHT+IEGuxmewmQbb75m5X7vBqHuIXERuCuTlAE6AMgAdiu3tfh0rm83MqrIv2yAApon5oQTbElRjA==
X-Received: by 2002:a05:6e02:1446:b0:3d0:4b3d:75ba with SMTP id e9e14a558f8ab-3d7e46e082cmr3195055ab.4.1744226539359;
        Wed, 09 Apr 2025 12:22:19 -0700 (PDT)
Received: from localhost.localdomain (c-73-228-159-35.hsd1.mn.comcast.net. [73.228.159.35])
        by smtp.gmail.com with ESMTPSA id 8926c6da1cb9f-4f505cf81bcsm373459173.10.2025.04.09.12.22.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Apr 2025 12:22:19 -0700 (PDT)
From: Alex Elder <elder@riscstar.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	gregkh@linuxfoundation.org,
	jirislaby@kernel.org
Cc: dlan@gentoo.org,
	benjamin.larsson@genexis.eu,
	bastien.curutchet@bootlin.com,
	andriy.shevchenko@linux.intel.com,
	u.kleine-koenig@baylibre.com,
	lkundrak@v3.sk,
	devicetree@vger.kernel.org,
	linux-serial@vger.kernel.org,
	spacemit@lists.linux.dev,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 1/2] dt-bindings: serial: 8250: support an optional second clock
Date: Wed,  9 Apr 2025 14:22:11 -0500
Message-ID: <20250409192213.1130181-2-elder@riscstar.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250409192213.1130181-1-elder@riscstar.com>
References: <20250409192213.1130181-1-elder@riscstar.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The SpacemiT UART driver requires a bus clock to be enabled in addition
to the primary function clock.  Add the option to specify two clocks
for an 8250-compatible UART, named "core" and "bus".  If both are needed,
require them to be named.

Signed-off-by: Alex Elder <elder@riscstar.com>
---
v2: Require both clocks to be specified with names for SpacemiT

 .../devicetree/bindings/serial/8250.yaml      | 30 ++++++++++++++++++-
 1 file changed, 29 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/serial/8250.yaml b/Documentation/devicetree/bindings/serial/8250.yaml
index dc0d52920575f..33d2016b65090 100644
--- a/Documentation/devicetree/bindings/serial/8250.yaml
+++ b/Documentation/devicetree/bindings/serial/8250.yaml
@@ -135,7 +135,16 @@ properties:
   clock-frequency: true
 
   clocks:
-    maxItems: 1
+    minItems: 1
+    items:
+      - description: The core function clock
+      - description: An optional bus clock
+
+  clock-names:
+    minItems: 1
+    items:
+      - const: core
+      - const: bus
 
   resets:
     maxItems: 1
@@ -224,6 +233,25 @@ required:
   - reg
   - interrupts
 
+if:
+  properties:
+    compatible:
+      contains:
+        const: spacemit,k1-uart
+then:
+  required: [clock-names]
+  properties:
+    clocks:
+      minItems: 2
+    clock-names:
+      minItems: 2
+else:
+  properties:
+    clocks:
+      maxItems: 1
+    clock-names:
+      maxItems: 1
+
 unevaluatedProperties: false
 
 examples:
-- 
2.45.2


