Return-Path: <devicetree+bounces-99916-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 6529196B8AD
	for <lists+devicetree@lfdr.de>; Wed,  4 Sep 2024 12:40:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 22D14286825
	for <lists+devicetree@lfdr.de>; Wed,  4 Sep 2024 10:40:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A26531CC169;
	Wed,  4 Sep 2024 10:40:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="gbKOXx9W"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f43.google.com (mail-pj1-f43.google.com [209.85.216.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 310C9126C01
	for <devicetree@vger.kernel.org>; Wed,  4 Sep 2024 10:40:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725446439; cv=none; b=m0EeYaKOTkDqxcFuSr0H/QMDpApqg9T9cLRFfQVh4p4KkaiUkDvCvQSNnagpJ4itCfwwQBmLSsKLFap7+RxWD3Bp5VgsTGeIHop0OXVXI3SakaYzWXYPEtOV0MiCSH4T8DXNHij4JV1GQqcYEz84bKE+RB7ourC0OOoF+4/OQi4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725446439; c=relaxed/simple;
	bh=bNjUZ0DCGyCbHVt3+rPQUGBongJEVkIUfUE7TvN0H0M=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=oGLuPSwe83a+YMoNYApTQuriJ+scZD8buB7tQkY0BiCCWl3Cnw8+gMAKW3P4pIfnlDixLb0MBH9/hx3eZ95BkSg/0GcKW98BVHDvPCGbxH6srPyGwI4gGUtagrNZ35l1HV2wgiKUMrn28EEU06jsB1oahVYEujUbGqAcvXYCY7U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=gbKOXx9W; arc=none smtp.client-ip=209.85.216.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f43.google.com with SMTP id 98e67ed59e1d1-2d87f34a650so446299a91.1
        for <devicetree@vger.kernel.org>; Wed, 04 Sep 2024 03:40:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1725446437; x=1726051237; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=UZwrkyVGnSHmjN5+64G38o2zgp8nHkbeWENAxN2xZa0=;
        b=gbKOXx9Wpvm3mLGQxhZ8XImRHrnGDzCh0pAsCd+JPG5/gPZ8SEaTY8lD5qIHp5nREt
         JSnAxGPZWGe3lRZBSCZ6Z+/gP65cJl/nU6a7E1MkUJIqMgZIOSYASdn0fKpy7YqSawuR
         CUZWDHG1Ury7IXshONq+QyBSZEy8mPlvamgRLVTuAKLaKnzk2By4AdNJAVOeztXz/t+b
         t6V+5pGoeFjHcRfhP7ZFERMjpHgB8LIZW9bGLzk1vtL1ZvhyJAGjJqb7jx+6rw2c4uLr
         I719F6PRc+/hF/K0e8zmaDhNVDMGRz2ByIXS/ZkCq8iXlsaSEY26G2xRAHFWXtRo/F+h
         K1AQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725446437; x=1726051237;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=UZwrkyVGnSHmjN5+64G38o2zgp8nHkbeWENAxN2xZa0=;
        b=FSWC7pVpXorcflOfudSIGJmPyA9aJ00sCrUnotvjzfZ0HNRJykh0x3Vtvbih8n0Dy8
         Z48vVTleRk8PKxHN8nyWmbu2Y/gOnQrRf3Au3Ne/q+7jtTolKkJP1nAyRdeK05vprBqu
         foAhFeX6f+vFLagYGrATW35QEgJbfl7ZBunnrHF4Irttl7nkPd4bRClgo8HJXCqVzBcW
         TJOUISScqNtwh4uD7pTcSoEV8LSQ4aFqH8VNULBMR1RoTzBJViE6xNJ43hX14yXAvq03
         f+QysmKC5YSrn5WUMKmkpjItN9V0knt7qh8L/28G8F1fsF9POpPqI+xzgle/p1YEEx4K
         7Vhg==
X-Forwarded-Encrypted: i=1; AJvYcCVhK8yaq54knveOfYAFBPwLE6ztY74giTX5xV9LDP5NThnoZjfoGAKL1USi6r2JCIxHx+zOeGTJLBVy@vger.kernel.org
X-Gm-Message-State: AOJu0YyefX+4G4YY5n/x/1iRpc61pc9D9kGLzkwGTp8/G70wm/km3+Ub
	7FAsje6bj5B9QG1PgaTEH72jZmgy9LeMSyPjBBSDpsTS3fMRtBFl
X-Google-Smtp-Source: AGHT+IFaOTINhvFNl8FNK9LUH8YpH8X8+trhWoz1ujIDZSX9XWFRJqJPSEmIBCegsSVx9lskcKahbQ==
X-Received: by 2002:a17:90b:4b4a:b0:2cf:f860:f13b with SMTP id 98e67ed59e1d1-2da8f1f0a38mr2645014a91.17.1725446437377;
        Wed, 04 Sep 2024 03:40:37 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:b37a:332a:2373:a683])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2da8f2f1ba0sm1194752a91.25.2024.09.04.03.40.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Sep 2024 03:40:36 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
To: mripard@kernel.org
Cc: marex@denx.de,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	Fabio Estevam <festevam@denx.de>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v2] dt-bindings: lcdif: Document the dmas/dma-names properties
Date: Wed,  4 Sep 2024 07:40:27 -0300
Message-Id: <20240904104027.2065621-1-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Fabio Estevam <festevam@denx.de>

i.MX28 has an RX DMA channel associated with the LCDIF controller.

Document the 'dmas' and 'dma-names' properties to fix the following
dt-schema warnings:

lcdif@80030000: 'dma-names', 'dmas' do not match any of the regexes: 'pinctrl-[0-9]+'

Signed-off-by: Fabio Estevam <festevam@denx.de>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
Changes since v1:
- Add a blank line before the examples. (Krzysztof)

 .../bindings/display/fsl,lcdif.yaml           | 20 +++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/fsl,lcdif.yaml b/Documentation/devicetree/bindings/display/fsl,lcdif.yaml
index 0681fc49aa1b..8e3a98aeec32 100644
--- a/Documentation/devicetree/bindings/display/fsl,lcdif.yaml
+++ b/Documentation/devicetree/bindings/display/fsl,lcdif.yaml
@@ -50,6 +50,14 @@ properties:
       - const: disp_axi
     minItems: 1
 
+  dmas:
+    items:
+      - description: DMA specifier for the RX DMA channel.
+
+  dma-names:
+    items:
+      - const: rx
+
   interrupts:
     items:
       - description: LCDIF DMA interrupt
@@ -156,6 +164,18 @@ allOf:
         interrupts:
           maxItems: 1
 
+  - if:
+      not:
+        properties:
+          compatible:
+            contains:
+              enum:
+                - fsl,imx28-lcdif
+    then:
+      properties:
+        dmas: false
+        dma-names: false
+
 examples:
   - |
     #include <dt-bindings/clock/imx6sx-clock.h>
-- 
2.34.1


