Return-Path: <devicetree+bounces-167955-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 477A7A90ED6
	for <lists+devicetree@lfdr.de>; Thu, 17 Apr 2025 00:48:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 52EFC447A99
	for <lists+devicetree@lfdr.de>; Wed, 16 Apr 2025 22:48:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C201F24394B;
	Wed, 16 Apr 2025 22:48:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="g5+XidPy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f44.google.com (mail-ot1-f44.google.com [209.85.210.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18BEA23D299
	for <devicetree@vger.kernel.org>; Wed, 16 Apr 2025 22:48:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744843704; cv=none; b=TqglzyiWfNruv+708REXY6lsy/6s7trH9MpukUiKeTGftF3jEIYXqDnc4WaS4nb3RxYsd8aUqUaoZ6adYzZZjmOfUC5rIzWVEk0h3S64PIt0jjTkEBmggLTsYbNx6ZvwACG20GrQdnOv6Ni/ycmPodCGdVVsgJkynHvGBBBrK/Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744843704; c=relaxed/simple;
	bh=tIoNp0u0+/MgLeeMVnT0Z0rVAy7QhMVNSR9UBw1UjFI=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=CRaVKQysp7QeMj/Utuwxh6uKp8wvjzWmS51u4tTHZNxjjh+1u+eGiTWyPkV3BDtnAHZ2bBHrsXJe2CCWYqe7+/JKj62bdvdoracHiVASQYCQ0ESxH6L/J9wVKUd7c3mhnoaYI94P/QsHmroBz/p/pzCYd8LYqWj4o0Km8CxyHjM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=g5+XidPy; arc=none smtp.client-ip=209.85.210.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-ot1-f44.google.com with SMTP id 46e09a7af769-72c40235c34so38775a34.3
        for <devicetree@vger.kernel.org>; Wed, 16 Apr 2025 15:48:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1744843702; x=1745448502; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sPIFkDdLhdqw2hTOoYJMb3YuEHJ4LG/DjDPvYsRlTeI=;
        b=g5+XidPyKgohsY+ODbRXYhIVKaadVrruige0QDZJ5MW4rrV0c8FDbBi2suYvBwYIi+
         8UFk36X/QC1PqDhMSnzM597FGf7EQZPavILldf6O6J5wtimCIRuDR2aXU3H+zdjiWY5T
         fhaa4NXO+XBmPa8M05/3TXoirhKj7PlsmW0+E=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744843702; x=1745448502;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=sPIFkDdLhdqw2hTOoYJMb3YuEHJ4LG/DjDPvYsRlTeI=;
        b=kUeW7CsCsiJACxZpu3PLuaY2yutHeJdNkUgry28Y16rqZaUjE+vUbNmmBvnTCUm4HZ
         SEzBA512ihnQ0Nv8nJIk6MrVoVWWv/nUgIZABHNHiFYgivgxMsetQC0QlRw9YRHsvBxP
         IQOY8DjASVBxU1gelITF45ddcfB1NsZ3ZNjPTEs+j8bq35WVFlE86D/fwWzVZD1hxfoF
         kz/G2Ge5k5wzwKuPdwpVGmtcsigZ9MRrLGLcA2rWr9wEnZkJ/zj2gRFDTeaIwh8tpi0s
         vUQQPP7XLF57pWYHFmaBTrAv9eAhkmZBr2rfyL7nl+t6b+JUJx7vW3kkD9fAoSWRozyF
         BOQA==
X-Forwarded-Encrypted: i=1; AJvYcCWiBGbrdY7x3wzRLTzh7sCARM3EGbUccMkN8gXpWl7zBBPpPXyM1PI8lrthulESqDZYUxcZ9BdRwnqV@vger.kernel.org
X-Gm-Message-State: AOJu0YymyGwJHMO8HFo3PFTx7hFUqfausyzSuDJunoGGMN09YQMhKb4N
	iffTPv5zzMPWLFsgyYSoHAN07iZKkAkciLDfvOnVqL4mjjKg22i5FAi/ANp6Fg==
X-Gm-Gg: ASbGncvm1SuTjjRAOcELaemh8OYNExrxuTXcH//F1NTFg6mEA8X/TGtAEznLkOaG5Kn
	N8TKVAKTWb3a2S6YyB743VqjI3bvUGkE3r1igaRHWYExhqnY7fHa5yg+7xWyncRppxNCQWW6DcW
	cKzmHzTv0qxFQnrnbRbBQTrwA2zJzxMSLwNUt7LkX/QGBj/vK0Wf34NlalxF++F9G+TXeIkSRZF
	N7mlQ6m4+UOkrg6qGVBSvjLVekG2WlQIPDgsqvhdLyIfaWhZ017P/ybgYM91/Phakb76/P7MCzF
	3CRxLBCwZIQKpdWIZbuCwQqJzwk4GBIkOCH/WDFgcDwuvQ1sNWkw58IEdpFYUAlnXSOn5p1w8zd
	0HfFlAknbFHytg6DqVg==
X-Google-Smtp-Source: AGHT+IGczR6eE2iiFGNN07Lmctb+Wj3/hsSULuzDoLc6TZZ2mhAGoDPsX8qclyjeFGvYS4tiUzKArA==
X-Received: by 2002:a05:6830:90f:b0:72b:a61c:cbb2 with SMTP id 46e09a7af769-72ec6bb2dedmr2084804a34.10.1744843701868;
        Wed, 16 Apr 2025 15:48:21 -0700 (PDT)
Received: from stbirv-lnx-1.igp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-72e73d71813sm3015956a34.26.2025.04.16.15.48.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Apr 2025 15:48:21 -0700 (PDT)
From: Justin Chen <justin.chen@broadcom.com>
To: netdev@vger.kernel.org,
	devicetree@vger.kernel.org
Cc: rafal@milecki.pl,
	linux@armlinux.org.uk,
	hkallweit1@gmail.com,
	bcm-kernel-feedback-list@broadcom.com,
	opendmb@gmail.com,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	pabeni@redhat.com,
	kuba@kernel.org,
	edumazet@google.com,
	davem@davemloft.net,
	andrew+netdev@lunn.ch,
	florian.fainelli@broadcom.com,
	Justin Chen <justin.chen@broadcom.com>
Subject: [PATCH net-next 1/5] dt-bindings: net: brcm,asp-v2.0: Add v3.0 and remove v2.0
Date: Wed, 16 Apr 2025 15:48:11 -0700
Message-Id: <20250416224815.2863862-2-justin.chen@broadcom.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250416224815.2863862-1-justin.chen@broadcom.com>
References: <20250416224815.2863862-1-justin.chen@broadcom.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add asp-v3.0 support. v3.0 is a major revision that reduces
the feature set for cost savings. We have a reduced amount of
channels and network filters.

Remove asp-v2.0 which was only supported on one SoC that never
saw the light of day.

Signed-off-by: Justin Chen <justin.chen@broadcom.com>
---
 .../bindings/net/brcm,asp-v2.0.yaml           | 19 +++++++++----------
 1 file changed, 9 insertions(+), 10 deletions(-)

diff --git a/Documentation/devicetree/bindings/net/brcm,asp-v2.0.yaml b/Documentation/devicetree/bindings/net/brcm,asp-v2.0.yaml
index 660e2ca42daf..21a7f70d220f 100644
--- a/Documentation/devicetree/bindings/net/brcm,asp-v2.0.yaml
+++ b/Documentation/devicetree/bindings/net/brcm,asp-v2.0.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/net/brcm,asp-v2.0.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Broadcom ASP 2.0 Ethernet controller
+title: Broadcom ASP Ethernet controller
 
 maintainers:
   - Justin Chen <justin.chen@broadcom.com>
@@ -15,6 +15,10 @@ description: Broadcom Ethernet controller first introduced with 72165
 properties:
   compatible:
     oneOf:
+      - items:
+          - enum:
+              - brcm,bcm74110-asp
+          - const: brcm,asp-v3.0
       - items:
           - enum:
               - brcm,bcm74165b0-asp
@@ -23,10 +27,6 @@ properties:
           - enum:
               - brcm,bcm74165-asp
           - const: brcm,asp-v2.1
-      - items:
-          - enum:
-              - brcm,bcm72165-asp
-          - const: brcm,asp-v2.0
 
   "#address-cells":
     const: 1
@@ -42,8 +42,7 @@ properties:
     minItems: 1
     items:
       - description: RX/TX interrupt
-      - description: Port 0 Wake-on-LAN
-      - description: Port 1 Wake-on-LAN
+      - description: Wake-on-LAN interrupt
 
   clocks:
     maxItems: 1
@@ -106,7 +105,7 @@ examples:
     #include <dt-bindings/interrupt-controller/arm-gic.h>
 
     ethernet@9c00000 {
-        compatible = "brcm,bcm72165-asp", "brcm,asp-v2.0";
+        compatible = "brcm,bcm74165-asp", "brcm,asp-v2.1";
         reg = <0x9c00000 0x1fff14>;
         interrupts = <GIC_SPI 51 IRQ_TYPE_LEVEL_HIGH>;
         ranges = <0x0 0x9c00000 0x1fff14>;
@@ -115,7 +114,7 @@ examples:
         #size-cells = <1>;
 
         mdio@c614 {
-            compatible = "brcm,asp-v2.0-mdio";
+            compatible = "brcm,asp-v2.1-mdio";
             reg = <0xc614 0x8>;
             reg-names = "mdio";
             #address-cells = <1>;
@@ -127,7 +126,7 @@ examples:
        };
 
         mdio@ce14 {
-            compatible = "brcm,asp-v2.0-mdio";
+            compatible = "brcm,asp-v2.1-mdio";
             reg = <0xce14 0x8>;
             reg-names = "mdio";
             #address-cells = <1>;
-- 
2.34.1


