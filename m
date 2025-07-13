Return-Path: <devicetree+bounces-195812-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 860C4B0321B
	for <lists+devicetree@lfdr.de>; Sun, 13 Jul 2025 18:33:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 93E467A05F6
	for <lists+devicetree@lfdr.de>; Sun, 13 Jul 2025 16:32:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B72821F03DE;
	Sun, 13 Jul 2025 16:33:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="RGfH+/nz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f181.google.com (mail-pl1-f181.google.com [209.85.214.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B20D43AA9
	for <devicetree@vger.kernel.org>; Sun, 13 Jul 2025 16:33:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752424427; cv=none; b=Y66oNgskdCJfKL/ClQQawo1jfZ4w+KrecJxAEzAmDHtbxxpAUFD0rj4i1SJYgckcHdj4eFBD1tdz5gG+sZ84LuW1wnwRUZNDE25Poz3Hydy4EArTmgQSOGN7bns7edRueq97UoeaautXdna6Hetk8WmIlxhBY01NENkNiV87GPA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752424427; c=relaxed/simple;
	bh=0vob69sFdw6T/Mrwuar0Dkx0WwraJrsKOkczRZz4puE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=aGv1SnxusADzu+7STJfxWjmQQ8pXMiPTsSwH2adN5EF7CGo7JGdOBvsUmPtJ65gOkU/Benp8gbKnzIoC8h8qEQ97ynPb9Je9a1QpCrsMMkYZi5fhnlrK3/O2lNI6Ksr+JwD72o4C8xxnT7gZCu9fhY7+zsT61tAzVToj0wLPRUA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=RGfH+/nz; arc=none smtp.client-ip=209.85.214.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f181.google.com with SMTP id d9443c01a7336-23dc5bcf49eso43478335ad.2
        for <devicetree@vger.kernel.org>; Sun, 13 Jul 2025 09:33:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1752424425; x=1753029225; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dUlKkkT9yWJ7b1HYL1nvFWc53qv/qhzbMN9WpuA6OBE=;
        b=RGfH+/nz3r9AHVsax7nBODvW9aqUZaSt99/MKY6lcxFTG7RnQFvOVKG2IMcUYqhHNI
         pvyIQffj5qQdPSG9J5BOTV4w9UWB1IXm5McyYsY0DPGe1tnQh6/U0IWES0388juHNmMB
         KasMeclW8GdjzWPV6P4p6vT8375kSkwc20mbmEKkEyT9vtMazJhamuWJcOYqOas7wt0o
         1WImSYIbVZ4nDPn9HcpANA/UnMqszKEXyLCvJ06ahl6VLB7U8vxR8pP/+lJlZYnCsM90
         Nxd+Ij0pXiBNLNLEWniRpgZeT9k1le5JIgC5n39zZz02q4uC3QHZHP5ZRMorl9o/ZtQt
         zKog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752424425; x=1753029225;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dUlKkkT9yWJ7b1HYL1nvFWc53qv/qhzbMN9WpuA6OBE=;
        b=jSB6jaApDHslLaePHT1/a2X54al36s4LE1myLvknLbhgJHJnp51P5toZ5ecPYspfH9
         SwveHossReqljPTZ7wV2Ov+k/452BV+y+ts7L7cDNmeSreuShnsdGePcfRi99qFxu2Kt
         JLt5d2SRln1Tbqi8RTXUWAGzYBhH0Yr1yTmsF5/GL0Zao34wfrP3YeamZiW82jEaNk4s
         x1MmY2Cdy7KkGvGUId2eZGajiszFo9TiHQ1cuD+bHyIhl7wkBoRCE/kVOhOHP08rHqfB
         JIwVVC/TlP4hxQwmKVye4bGwafXVVrIPUXsCDIiSAOAqY7to6ZuTITzaQXxlqxSum84m
         HXxA==
X-Gm-Message-State: AOJu0YzMCgQuD7ry16IiLdyIuNaeozwA2htR2ACbl4Q/yHV9x2CuIH71
	sbKsYp+CAuVxxj06CpMPnWBQjVXRWJjSXrnmEkD7as+/nmT+RSNjrYbY
X-Gm-Gg: ASbGnct07+xexlB7/9CyWN6nkTwiXJcXg3Bb6h1aU7zP4NdlbEQ99cYzTPgDA6PvpaN
	X/oGyLM6T9eS6l2KTXMOtaQe8gXu8XiJEaB0VbYS6DdfOePPqzwM9s/c6G7jl7nRpUqEDfVQnDR
	GWDvp3z+CuS41SNaje0dB+43QFSUAcnwnr2hS0Yzy76pKW79QyJAz8wOLo+swj57wf1lVNTZfdh
	PoEioa4YfqCFNOIXgTev1ykjCXnJO6SbEEWSBdhj2RRiRbLTVdw9CjQBUADwi9pu3pNFkYCGKlJ
	YoW3Qhpjsi2p3OwuKTmT+hnzNjHs71yB5FuYcSGEVHZ4dLkaWJQJtytyO1RZZQp9ee3Scm4/Poe
	GmNzoVzfbdFJDrvTAlIUjLdpSwF2XoTWCGR8=
X-Google-Smtp-Source: AGHT+IH6E5UEkJSfiF+dSq+9DovIWQcD7yf6qUoqec9uZOt2S1XrHYXoTzVMb5+OVnAaJl1+LFcIvA==
X-Received: by 2002:a17:902:8b8b:b0:238:f2a:8893 with SMTP id d9443c01a7336-23dede984b9mr91199825ad.42.1752424425482;
        Sun, 13 Jul 2025 09:33:45 -0700 (PDT)
Received: from arch.localdomain ([155.117.228.70])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-23de4285ecbsm80809655ad.48.2025.07.13.09.33.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 13 Jul 2025 09:33:45 -0700 (PDT)
From: Jun Yan <jerrysteve1101@gmail.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	heiko@sntech.de,
	quentin.schulz@cherry.de,
	dsimic@manjaro.org,
	naoki@radxa.com
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Jun Yan <jerrysteve1101@gmail.com>
Subject: [PATCH 1/3] dt-bindings: vendor-prefixes: Add Shenzhen OneThing Technologies Co., Ltd.
Date: Mon, 14 Jul 2025 00:32:53 +0800
Message-ID: <20250713163255.163669-2-jerrysteve1101@gmail.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20250713163255.163669-1-jerrysteve1101@gmail.com>
References: <20250713163255.163669-1-jerrysteve1101@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

OneThing is a company engaged in edge computing.

Signed-off-by: Jun Yan <jerrysteve1101@gmail.com>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 5d2a7a8d3ac6..77fbbe040706 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -1108,6 +1108,8 @@ patternProperties:
     description: OLIMEX Ltd.
   "^olpc,.*":
     description: One Laptop Per Child
+  "^onething,.*":
+    descriotion: Shenzhen OneThing Technologies Co., Ltd.
   "^oneplus,.*":
     description: OnePlus Technology (Shenzhen) Co., Ltd.
   "^onie,.*":
-- 
2.50.1


