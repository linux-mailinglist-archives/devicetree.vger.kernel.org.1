Return-Path: <devicetree+bounces-81416-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 13DCD91C2DF
	for <lists+devicetree@lfdr.de>; Fri, 28 Jun 2024 17:45:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 44CEB1C218B3
	for <lists+devicetree@lfdr.de>; Fri, 28 Jun 2024 15:45:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B9F041C689C;
	Fri, 28 Jun 2024 15:45:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="JmVFwc0l"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f202.google.com (mail-yw1-f202.google.com [209.85.128.202])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BAB631BF329
	for <devicetree@vger.kernel.org>; Fri, 28 Jun 2024 15:45:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.202
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719589536; cv=none; b=aAzrhwB8pm+SWJmoYv8oy6Yl4ar4OSEvic8cg6HjWag9BxxYZBPdpSMexUVo1Qo9VAftJ42w93mYXwaMVZN78Gcl5ty7e8AOkUNE6eJjP0+5/N9ExSaZE2GEedy1haVKmqfCKzziCmag2dY/Ck58CYYKd9a11xIf/JAMKs54pGs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719589536; c=relaxed/simple;
	bh=HsKpHTxO2qZZAKegni6aUmxcivarzWwp0eI+cMurg4U=;
	h=Date:In-Reply-To:Mime-Version:References:Message-ID:Subject:From:
	 To:Cc:Content-Type; b=dC1PxJAQjeewpvMyXFx6i+zQqVB/ZbcEUN5eOA7tHHWwG5jlHwmSdR7mhAHFbGHVfCiaTZ6eUHnyopIPjq/ZFm5n5NcSldf6RjABTwxwQcnCM1s2eKpcdI43AVOUPhjJqf5Kupx6oVjSmvh4sAGlcD1VPt/uPE+Id4tzHza1aOQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=flex--aniketmaurya.bounces.google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=JmVFwc0l; arc=none smtp.client-ip=209.85.128.202
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flex--aniketmaurya.bounces.google.com
Received: by mail-yw1-f202.google.com with SMTP id 00721157ae682-62fb4a1f7bfso13967027b3.3
        for <devicetree@vger.kernel.org>; Fri, 28 Jun 2024 08:45:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1719589534; x=1720194334; darn=vger.kernel.org;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=yTiNPLIdhtP6pyhi64HYkOcFsA7q03RXOkGSgCbbU/c=;
        b=JmVFwc0l07xWdsqV80lL0lNYMJHJxOlpNEZKBpP4Sq4nY4FIn3RwzuNlo3LSYVYUdU
         bSMK/S+8jARnCjxHyOPw8GIKFZJlIpZntgFxspYUH266c5vs0C7UVauFl1xHl9UYZQQc
         0b6hwdvilgS3d4WFtGsxUY4Hduhxi/utPZLSum5uo2Ev1YOXl1SAkhC4sRwoPgolo6UA
         WROgRecmWZ/eRaq7HbNDpuQMZSs+A1qXjyvacUVsfCelVwgPvcfLgkZrTJQJ9kQ00yUm
         mtvIwVE0GGpMLEDyPpHDK1cmz67lErYaVQAH6tEOfhErGRAgCoRNNlwSKZMWPOnYMFRT
         tOKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719589534; x=1720194334;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=yTiNPLIdhtP6pyhi64HYkOcFsA7q03RXOkGSgCbbU/c=;
        b=TfLVm6x/+hnsN1TI/bkjJFQBTlriIbFuMsy29o9NvrL9zmqC/ApVF8fHvuy+o56GOr
         TtaAK5S9rl7e66kBUr1DAXXeR6lxFuKyNJv0RCi1QtczTQEVZLNIyzjYzSrArGb+HUIB
         5jNYh6kx6NZkgYYBSJUkgerTgSoShM/dt/+o2tPtezl2bHzONFLTsFx+vpp02Qe/C8H0
         /VrdzTK9Q43VTJElv/8y3ttnHVq86AxiSW1ysDK3ny98Q2FMpEzgAKs4jzoIA7awlkys
         9GQwh6eajdF31GWX5QxSShKrbwmhu4iHuzTz+7ZO8Evb6rOqi6OYs5sZLwG5bIzo/Zbl
         pnOA==
X-Forwarded-Encrypted: i=1; AJvYcCW04OG9TCIAQp7uWqwmZVtWg+4zi1Nhb6zrD2Kok6iaXI0zyjLARCTB1unO2CC3+D2BRMDGsYuk3ZQVzhKA7i7oGn0lpL3O4nDOWg==
X-Gm-Message-State: AOJu0Yz/l2Em0xl3LiSV9+o3EcgfrnM/t8gjHBaWqVYC2/O6/1tdOB0A
	0EzDwI57oNB3w8CYalk1yj/o7cScSyq7DbufF2oLMUL/nlSkOkYSMf/p7qiNYrJcTanBGG9/uOH
	lCcAXF8AJ3vFtef8iCSxNwYTLBQ==
X-Google-Smtp-Source: AGHT+IHW+w0N4Pm/D4C73M71WR7MUwhZIC3G5b/P9aMWl8aREiz5+MCB11v8g9AB/i/7uh4YYcl8gXlJzUZwxH8Dwyk=
X-Received: from aniketm.c.googlers.com ([fda3:e722:ac3:cc00:4f:4b78:c0a8:3387])
 (user=aniketmaurya job=sendgmr) by 2002:a05:6902:1109:b0:df7:8f43:f8a3 with
 SMTP id 3f1490d57ef6-e0303e603bfmr1005307276.0.1719589533819; Fri, 28 Jun
 2024 08:45:33 -0700 (PDT)
Date: Fri, 28 Jun 2024 15:45:26 +0000
In-Reply-To: <20240624052851.1030799-1-aniketmaurya@google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
References: <20240624052851.1030799-1-aniketmaurya@google.com>
X-Mailer: git-send-email 2.45.2.803.g4e1b14247a-goog
Message-ID: <20240628154526.324068-1-aniketmaurya@google.com>
Subject: [PATCH v3 1/3] dt-bindings: i3c: dw: Add apb clock binding
From: Aniket <aniketmaurya@google.com>
To: Alexandre Belloni <alexandre.belloni@bootlin.com>, Jeremy Kerr <jk@codeconstruct.com.au>, 
	Joel Stanley <joel@jms.id.au>, Billy Tsai <billy_tsai@aspeedtech.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-i3c@lists.infradead.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, Aniket <aniketmaurya@google.com>
Content-Type: text/plain; charset="UTF-8"

Add dt binding for optional apb clock. Core clock is mandatory.

Signed-off-by: Aniket <aniketmaurya@google.com>
---
 .../devicetree/bindings/i3c/snps,dw-i3c-master.yaml   | 11 ++++++++++-
 1 file changed, 10 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/i3c/snps,dw-i3c-master.yaml b/Documentation/devicetree/bindings/i3c/snps,dw-i3c-master.yaml
index c0e805e531be..4fc13e3c0f75 100644
--- a/Documentation/devicetree/bindings/i3c/snps,dw-i3c-master.yaml
+++ b/Documentation/devicetree/bindings/i3c/snps,dw-i3c-master.yaml
@@ -20,7 +20,16 @@ properties:
     maxItems: 1
 
   clocks:
-    maxItems: 1
+    minItems: 1
+    items:
+      - description: Core clock
+      - description: APB clock
+
+  clock-names:
+    minItems: 1
+    items:
+      - const: core
+      - const: apb
 
   interrupts:
     maxItems: 1
-- 
2.45.2.803.g4e1b14247a-goog


