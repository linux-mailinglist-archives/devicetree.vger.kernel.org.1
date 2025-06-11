Return-Path: <devicetree+bounces-184857-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 72397AD5651
	for <lists+devicetree@lfdr.de>; Wed, 11 Jun 2025 15:02:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 456661887723
	for <lists+devicetree@lfdr.de>; Wed, 11 Jun 2025 13:00:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 48118283FE1;
	Wed, 11 Jun 2025 12:59:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="hM14zkjr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com [209.85.214.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 96DE0281357
	for <devicetree@vger.kernel.org>; Wed, 11 Jun 2025 12:59:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749646765; cv=none; b=MfGRnePkKxZ6X5DY7MxYFfk5ZtvI9fFE0Unr8KIsaQ0zSrIwWpPaG1BJ+xnuxp1sMMmgo9ZG7bLceYiUXIQQAfaIdnIxfgmQ2Moi67eytZXTjU4XejXMev3UmTFeHTbX3CvPPhBpTdliayQ3mZoApAuA43ne540dMOQKMCehqlQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749646765; c=relaxed/simple;
	bh=mfvf7YBc75gKcXozHj9WT3obpDew9OmkoOmyIZbUJOk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=guEgpM8PFhSraHKXeLLsWhLu+2pHdUE3GR6Q5dRMKY8txpqwdPesJx7Ajwgi0kIyJwWsbN0JEDRj2Nk5JhUECVmO3JlTyfBFZGJwrf9HS0IvYEVCRMAppJZucQcsRR4vvfTQqfsaKAOmE/j9Q+2+fBl3ndhbc9C7Mdz9ZPK9Knw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=hM14zkjr; arc=none smtp.client-ip=209.85.214.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-pl1-f170.google.com with SMTP id d9443c01a7336-23649faf69fso1014135ad.0
        for <devicetree@vger.kernel.org>; Wed, 11 Jun 2025 05:59:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1749646762; x=1750251562; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rgXKWx6LT0v0t2kW4DENrP//N1tJL1EVc4tejq3gXuU=;
        b=hM14zkjrM1Ob8vaP99XQIs1taUKdX/jLl2V0nQTw87R2W1T3Gca1eoLENIDYvm0lVu
         WMtT06rB7UI3i38v4/k3A5AzDPnpxk19swoDBbdEujfm7tuIICkkch+pepJH9/f+Z4Q7
         nMWQqC+w/Dbtib0ItgoIJKIRpjZdt7KgMPWZKvkFi0hXPEZu75eONtrSk1AEnwfAdcA3
         C36riXVgYF/XeK8mEqe6HkV066cJsUeEyGgIhU9UauS+WZZrSsClQoPi3cekf2dTO6Xf
         R0XDH9nSn/ag9vFosJMa03nLYpbaDG1iaLdRkW5TvtYpjGCISMOOR65fX0c+B3gMWdwq
         dL2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749646762; x=1750251562;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rgXKWx6LT0v0t2kW4DENrP//N1tJL1EVc4tejq3gXuU=;
        b=VvGaISWWTmQxDtcz4k4zJqT6tjSMhYxp85hKuPmoIaR6bDWkjps58fGhCNJ+mJOwyL
         SrWTKH4/nB/AgDhwlnnTlO6NgHh9UVAqgf0+E1nmwsedr37itgK5KVRkltgejd/wymzr
         n/YV09B/demyumxKi5iAY1DdB4WOn8/kIUDfbn8xpX+NSJnPUSDk2RFi2L/JESMnskPR
         Uf1aIiLW4qmy9BPhq2gidN5Ueo2zZ1vGeNWUE1RspPoBnmlWeK4y6svMYwYBbk1jiblr
         8HxjZAM0Hmjkszl+bx6QdDv6gYPhDvx8MHZJNbC4jbCz9A9tuh6D7G+J/45FkUopcW3A
         WPLQ==
X-Forwarded-Encrypted: i=1; AJvYcCU0ZMGazqErDNTIfpuZIPdleFVYZtCWYu6KW6HbdbAc6787XWZ7jXHCHFfrPWOy5VzsE6OgOawqRAQ4@vger.kernel.org
X-Gm-Message-State: AOJu0Yy536uMlcOCDPhentDcsZqyNKINKx0NBgDIKSCspl2v22faqbPw
	s46hBfHa6kv8BaUbp8hmuKXpeJMwz/a+GpfS/xFhaiEr1fldGawovydZWDOFtmI210o=
X-Gm-Gg: ASbGncu5Vv43sCgkdWz4DHdmqdoBXCW6otmbAxBe3RaA4898ulBTTxFyvNJT4mPEzAI
	s5zk8HAtvMkbeJDkixPen9JW8W7sRFTtUJIxMQljuxR109THTtN0bgy0UjmyrSyYJuQrAYqxB9C
	1khauUzhFb8qCh4Ut6XUdAtjTQ3IAXCabyLjjuss70DsjUK2zp10Jv7uDGT4RmjIgyMaa68uEnp
	fKJQgist/aFoyl3gSXDpnzn21//2iNpMC4MP740NMvQh23NmJ7QBh5l359+VijLJBdW984d8K5o
	2j7FnLx688DRUX8xAnUKqxXmnB1G8WOkLg3sXuCwW8JunRoRTNXtFg5A5qGp1YABCLJg0vtiUdX
	OiIntfrqmwm8ZIzaqNOM1/21u7LLXbXiw
X-Google-Smtp-Source: AGHT+IHP+0owmszooM6L86XNZc5ha8+zkwg20Qojl6bQqCgBkl02MT2JBYiauh7dcDoSUFp6EUtZTQ==
X-Received: by 2002:a17:902:f78b:b0:234:b131:15a with SMTP id d9443c01a7336-23641a8aad8mr44833385ad.4.1749646761961;
        Wed, 11 Jun 2025 05:59:21 -0700 (PDT)
Received: from localhost.localdomain ([2409:8a00:31a4:6520:3d67:ceb1:7c60:9098])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-236030925e3sm86984115ad.53.2025.06.11.05.59.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Jun 2025 05:59:21 -0700 (PDT)
From: Guodong Xu <guodong@riscstar.com>
To: vkoul@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	dlan@gentoo.org,
	paul.walmsley@sifive.com,
	palmer@dabbelt.com,
	aou@eecs.berkeley.edu,
	alex@ghiti.fr,
	p.zabel@pengutronix.de,
	drew@pdp7.com,
	emil.renner.berthing@canonical.com,
	inochiama@gmail.com,
	geert+renesas@glider.be,
	tglx@linutronix.de,
	hal.feng@starfivetech.com,
	joel@jms.id.au,
	duje.mihanovic@skole.hr
Cc: guodong@riscstar.com,
	elder@riscstar.com,
	dmaengine@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	spacemit@lists.linux.dev
Subject: [PATCH 1/8] dt-bindings: dma: marvell,mmp-dma: Add SpacemiT PDMA compatibility
Date: Wed, 11 Jun 2025 20:57:16 +0800
Message-ID: <20250611125723.181711-2-guodong@riscstar.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250611125723.181711-1-guodong@riscstar.com>
References: <20250611125723.181711-1-guodong@riscstar.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add "spacemit,pdma-1.0" compatible string to support SpacemiT PDMA
controller in the Marvell MMP DMA device tree bindings. This enables:

- Support for SpacemiT PDMA controller configuration
- New optional properties for platform-specific integration:
  * clocks: Clock controller for the DMA
  * resets: Reset controller for the DMA

Also, add explicit #dma-cells property definition to avoid
"make dtbs_check W=3" warnings about unevaluated properties.

The #dma-cells property is defined as 2 cells to maintain compatibility
with existing ARM device trees. The first cell specifies the DMA request
line number, while the second cell is currently unused by the driver but
required for backward compatibility with PXA device tree files.

Signed-off-by: Guodong Xu <guodong@riscstar.com>
---
 .../bindings/dma/marvell,mmp-dma.yaml           | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/Documentation/devicetree/bindings/dma/marvell,mmp-dma.yaml b/Documentation/devicetree/bindings/dma/marvell,mmp-dma.yaml
index d447d5207be0..e117a81414bd 100644
--- a/Documentation/devicetree/bindings/dma/marvell,mmp-dma.yaml
+++ b/Documentation/devicetree/bindings/dma/marvell,mmp-dma.yaml
@@ -18,6 +18,7 @@ properties:
       - marvell,pdma-1.0
       - marvell,adma-1.0
       - marvell,pxa910-squ
+      - spacemit,pdma-1.0
 
   reg:
     maxItems: 1
@@ -32,6 +33,21 @@ properties:
       A phandle to the SRAM pool
     $ref: /schemas/types.yaml#/definitions/phandle
 
+  clocks:
+    description: Clock for the controller
+    maxItems: 1
+
+  resets:
+    description: Reset controller for the DMA controller
+    maxItems: 1
+
+  '#dma-cells':
+    const: 2
+    description:
+      The first cell contains the DMA request number for the peripheral
+      device. The second cell is currently unused but must be present for
+      backward compatibility.
+
   '#dma-channels':
     deprecated: true
 
@@ -52,6 +68,7 @@ allOf:
           contains:
             enum:
               - marvell,pdma-1.0
+              - spacemit,pdma-1.0
     then:
       properties:
         asram: false
-- 
2.43.0


