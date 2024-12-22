Return-Path: <devicetree+bounces-133393-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0259D9FA746
	for <lists+devicetree@lfdr.de>; Sun, 22 Dec 2024 18:33:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 46A35165BF6
	for <lists+devicetree@lfdr.de>; Sun, 22 Dec 2024 17:33:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BE9AA1925AF;
	Sun, 22 Dec 2024 17:33:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="TE1T3hMO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f47.google.com (mail-pj1-f47.google.com [209.85.216.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45376190471;
	Sun, 22 Dec 2024 17:33:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734888793; cv=none; b=Ec+6DLAdPmhvWFYSHbiYAggR6mkYRdrag4DHoOJZfpVDQcnY4+zkN6V48KfMf/ZAsRzskGFdTh4E0wZWyxUNscX4QMoy9g3nTWR2VAZM10HPWiK2E+M3CqC6R/CUNgobSrtmk+59EZr/mz9v/xc+Twt4DvSV5TkkdLSBJ7kbxmg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734888793; c=relaxed/simple;
	bh=kBlnPxGq6ChsufaUKBSLw6uMgtG56pxCd36D5k6/w5I=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=JkrGZ613Bt2hl0yEWHAawGi5Yn6jTqo/9oAW9OTNXL5jlBmj6vER1G2/5BLIZImExo39NlGMOBqMcQWvbVEEkYhxNWEtL6yO/fs/Tvqnau9IGEzU5f9AKVQhCExzF5+aBcFDXFG6Dt8ehXBWbnG6SLWHtf52WfWqAOuZTjsG1/4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=TE1T3hMO; arc=none smtp.client-ip=209.85.216.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f47.google.com with SMTP id 98e67ed59e1d1-2f4448bf96fso2435604a91.0;
        Sun, 22 Dec 2024 09:33:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1734888791; x=1735493591; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zbp/SL17C/U69/mM4spr+KWpbV3+Jo5FoO9b1T7Q5mk=;
        b=TE1T3hMOG+A6EighKUSk21YPn1f0t81vuamwEDCOx4d+LIvqyRDab2dS12TBk18d7z
         ye9+YxOVjh3PipDEjlVZzkCEQGoMypJC8yrWtSanva6bcfVgch+2lzmrNWUGtIwz+pm2
         5FuA30rS9aYzjbDpRZ8+Bzls53fKLleVAw6CYNG/YeW575eoc2vFg7zum4jngn9L1Imi
         IDMd8dNQg2It3HVcTWU/2cvXec/4kxPc6lRBtcvS381YRI5ydbpzZdZenL0KFyep+CbS
         JNVFBXQj2MHvEscjbFnImFujzn6ILxfB9jUhuO+3aDTZL6xONeVFce2GqienKAK3RP+q
         gLyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734888791; x=1735493591;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zbp/SL17C/U69/mM4spr+KWpbV3+Jo5FoO9b1T7Q5mk=;
        b=VahrmpplHjnfcwirRRrx4/WJEFRQDm4fuO3Ip2V7xPigQZDwh3HQ8ahWUle9uAAQ9v
         cGuF8jAZnej/DelNkdEtdKSm3B5yUhRJQ9Gns/WMHP7igLG5hhOBtX39tYw8jvU1M1Hd
         MhXvljClOLtyJED2NHgpEJCBpS7ZSr21FHyF65ch5OUEWNDFI5bPGJjXKfYDumOJxEWH
         Rc22LBS93mAGfQWmmty1JIgiMUhD3olnakqlW/luJWYQwvy8t1nJJOg44fF5ScrHzu23
         8BlHaickh1VtElnNbOOiH4UsVHCG+67N+G4Ro/RpCd4LYbAB1O8yQqKmPGIPs+xkC4Ex
         s53Q==
X-Forwarded-Encrypted: i=1; AJvYcCVmEgMxhyniubGeEXcVCGajBBUQEogoFuWCn71L7tFPsdKPdlNqnKDivoVp9leeyTSQVHIU4/5TCICSaNE9@vger.kernel.org, AJvYcCWSsck73A5dz0vOViFgP0MxtIxm2GxsL9PuFl4sH2/bKmz3Ovq2RA0bWbZldz32AMymlvWBy6UFSW9/@vger.kernel.org
X-Gm-Message-State: AOJu0YwdKDUjIdQEg2wdatj8Ms4ncF5CvAR9o7SE0mzAo/B1ERhCli76
	OqxsRqVNODEnjHkqaXZMv37nyYCHe5QazxpCDJqB3eZohsGDk9Ig
X-Gm-Gg: ASbGnctAjlr2UtBl1ODxvCjvSAar2TLzU4XT7mI6y8SUkYIX8QHRwjSDGyG09yskflk
	055Doqy/Jm1Rkja5TxV7JCn6akcDSqoQgl/XEAovbSmAnrG+UxVyJAnd1cRW432ksFHmArDDPEC
	Oe1zLIPdLmpp1jUsJOLFKbU6H9Aq8arfSFW8uGbkzUwNSrb+de4k664MqAX/UM5FB77bMHHSrpv
	1+L3TX0ltgAhCF1XbMdQ6+UGn3szlT5qWux52uD2OfC7ZRJhfBt06h09Q==
X-Google-Smtp-Source: AGHT+IF6wbar4suVMRQ0O12h3Yid2CT3e7XUhszkGbE1EDv1XAzZ3CHXjwf93+a2afmynd1CqIFgXg==
X-Received: by 2002:a17:90a:d004:b0:2ea:5dea:eb0a with SMTP id 98e67ed59e1d1-2f452dea366mr14830664a91.4.1734888791364;
        Sun, 22 Dec 2024 09:33:11 -0800 (PST)
Received: from nick-mbp.. ([59.188.211.160])
        by smtp.googlemail.com with ESMTPSA id 98e67ed59e1d1-2f4477987f4sm7567552a91.2.2024.12.22.09.33.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Dec 2024 09:33:11 -0800 (PST)
From: Nick Chan <towinchenmi@gmail.com>
To: Hector Martin <marcan@marcan.st>,
	Sven Peter <sven@svenpeter.dev>,
	Alyssa Rosenzweig <alyssa@rosenzweig.io>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	asahi@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Nick Chan <towinchenmi@gmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v3 1/2] dt-bindings: arm: apple: Add T2 devices
Date: Mon, 23 Dec 2024 01:31:47 +0800
Message-ID: <20241222173240.147675-2-towinchenmi@gmail.com>
X-Mailer: git-send-email 2.47.1
In-Reply-To: <20241222173240.147675-1-towinchenmi@gmail.com>
References: <20241222173240.147675-1-towinchenmi@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add the following apple,t8012 based platforms:

- Apple T2 MacBookPro15,2 (j132)
- Apple T2 iMacPro1,1 (j137)
- Apple T2 MacBookAir8,2 (j140a)
- Apple T2 MacBookAir8,1 (j140k)
- Apple T2 MacBookPro16,1 (j152f)
- Apple T2 MacPro7,1 (j160)
- Apple T2 Macmini8,1 (j174)
- Apple T2 iMac20,1 (j185)
- Apple T2 iMac20,2 (j185f)
- Apple T2 MacBookPro15,4 (j213)
- Apple T2 MacBookPro16,2 (j214k)
- Apple T2 MacBookPro16,4 (j215)
- Apple T2 MacBookPro16,3 (j223)
- Apple T2 MacBookAir9,1 (j230k)
- Apple T2 MacBookPro15,1 (j680)
- Apple T2 MacBookPro15,3 (j780)

These devices have no offical names, the naming scheme is from
libirecovery.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Nick Chan <towinchenmi@gmail.com>
---
 .../devicetree/bindings/arm/apple.yaml        | 41 +++++++++++++++++++
 1 file changed, 41 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/apple.yaml b/Documentation/devicetree/bindings/arm/apple.yaml
index dc9aab19ff11..da60e9de1cfb 100644
--- a/Documentation/devicetree/bindings/arm/apple.yaml
+++ b/Documentation/devicetree/bindings/arm/apple.yaml
@@ -57,6 +57,25 @@ description: |
   - iPad Pro (2nd Generation) (10.5 Inch)
   - iPad Pro (2nd Generation) (12.9 Inch)
 
+  Devices based on the "T2" SoC:
+
+  - Apple T2 MacBookPro15,2 (j132)
+  - Apple T2 iMacPro1,1 (j137)
+  - Apple T2 MacBookAir8,2 (j140a)
+  - Apple T2 MacBookAir8,1 (j140k)
+  - Apple T2 MacBookPro16,1 (j152f)
+  - Apple T2 MacPro7,1 (j160)
+  - Apple T2 Macmini8,1 (j174)
+  - Apple T2 iMac20,1 (j185)
+  - Apple T2 iMac20,2 (j185f)
+  - Apple T2 MacBookPro15,4 (j213)
+  - Apple T2 MacBookPro16,2 (j214k)
+  - Apple T2 MacBookPro16,4 (j215)
+  - Apple T2 MacBookPro16,3 (j223)
+  - Apple T2 MacBookAir9,1 (j230k)
+  - Apple T2 MacBookPro15,1 (j680)
+  - Apple T2 MacBookPro15,3 (j780)
+
   Devices based on the "A11" SoC:
 
   - iPhone 8
@@ -211,6 +230,28 @@ properties:
           - const: apple,t8011
           - const: apple,arm-platform
 
+      - description: Apple T2 SoC based platforms
+        items:
+          - enum:
+              - apple,j132  # Apple T2 MacBookPro15,2 (j132)
+              - apple,j137  # Apple T2 iMacPro1,1 (j137)
+              - apple,j140a # Apple T2 MacBookAir8,2 (j140a)
+              - apple,j140k # Apple T2 MacBookAir8,1 (j140k)
+              - apple,j152f # Apple T2 MacBookPro16,1 (j152f)
+              - apple,j160  # Apple T2 MacPro7,1 (j160)
+              - apple,j174  # Apple T2 Macmini8,1 (j174)
+              - apple,j185  # Apple T2 iMac20,1 (j185)
+              - apple,j185f # Apple T2 iMac20,2 (j185f)
+              - apple,j213  # Apple T2 MacBookPro15,4 (j213)
+              - apple,j214k # Apple T2 MacBookPro16,2 (j214k)
+              - apple,j215  # Apple T2 MacBookPro16,4 (j215)
+              - apple,j223  # Apple T2 MacBookPro16,3 (j223)
+              - apple,j230k # Apple T2 MacBookAir9,1 (j230k)
+              - apple,j680  # Apple T2 MacBookPro15,1 (j680)
+              - apple,j780  # Apple T2 MacBookPro15,3 (j780)
+          - const: apple,t8012
+          - const: apple,arm-platform
+
       - description: Apple A11 SoC based platforms
         items:
           - enum:
-- 
2.47.1


