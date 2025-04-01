Return-Path: <devicetree+bounces-162400-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 359FBA783CC
	for <lists+devicetree@lfdr.de>; Tue,  1 Apr 2025 23:07:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E63B816071A
	for <lists+devicetree@lfdr.de>; Tue,  1 Apr 2025 21:07:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BCF041EB190;
	Tue,  1 Apr 2025 21:07:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="FL/n+P/D"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f181.google.com (mail-pl1-f181.google.com [209.85.214.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DD967FBA2
	for <devicetree@vger.kernel.org>; Tue,  1 Apr 2025 21:07:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743541663; cv=none; b=SoIMtHt/P44SrLiRSWDiRpea/giVc/ZC0/ilU3IG1w6kSx6JvYL4n74/4Sphoukm0wvRsShRJrICe+wqfF3WxP3HuYE2GXzy4tWInoIC2eE79NkZCMbxhanhbbYCnLCIV5bsfE+po7jfZw2sv1YFkGCQbHYouL5m9WcVUiB4Sh0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743541663; c=relaxed/simple;
	bh=qMXiHLiWs55bZvlC4CdDacSCEUez3FJ/5IS7h6L/UDM=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=grJSeZ1aq8V8ke9WOpvJEef6loMMN1NhyN8lEAEIjqn9P0TYF1P7F7TWVRJZy1f1FyaejimaM+b7l/6J0j9VaR5NYQE3u6DRW2UtJpXDL40ySj9jZo7+l0Q1CIj5pJL3E9JnXTbyAVCg8TZtoEwDsIuX1ups2qqxxumDyFcpM8Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=FL/n+P/D; arc=none smtp.client-ip=209.85.214.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-pl1-f181.google.com with SMTP id d9443c01a7336-2254e0b4b79so155113285ad.2
        for <devicetree@vger.kernel.org>; Tue, 01 Apr 2025 14:07:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1743541661; x=1744146461; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fh6IUA26lEyrJEifWIUg0Aon6jE68Po+06xiKRDzRZA=;
        b=FL/n+P/Dbht2gVi5xMpp8bVDBslrmkGa7s89gMdWMPpjp77ASoCX8MrTDD5/6X3COC
         9mv6x+tFlYI80HupDYEE5lhMZapOIZg1UvP59RuHZM3t8f6kvfBw41jmNI4MxsNGhh8E
         sy2o78nyUcZIM13w8yY4H/58SUXNF89pH0pjY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743541661; x=1744146461;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fh6IUA26lEyrJEifWIUg0Aon6jE68Po+06xiKRDzRZA=;
        b=BUIn5pTDkQmA5TwGlHHxwnjhPQQ4NAL+LQ58KYiqscazVzS8h75mfMxYgfz0ZJxnOo
         zFsMpMYYHmSOczoAWjIuH2cSuEj30kJe+hJ5k6FOO9sFbmlacFdSglCG4POJZiYvkVew
         9tC0r9X70BFyxLH7tQZzeToIJYhYIfDy45cTsTcpUcwYWwdpoyuIpaLVlp/vYuevqmz8
         J0hW2vF44uo0xWBsnkmHFyQU4g+QR3hK0Oe7mbDGur+HWSHu6yNSlsNWo6mIAvmzkjQ3
         PQGdqMO+TXFGQbH0JdIiFY1uzN/QTFGViCzfT1qNuKvTBYSstPhCV0b4o23htqHJvww5
         KyZQ==
X-Forwarded-Encrypted: i=1; AJvYcCWoTCF/ewBnTBlL+0Lvo622ljfpKK90Fz/PqexfmGN5igdJwsWikdG4jsUqmKdDrP3U2TmWF2mNZMuE@vger.kernel.org
X-Gm-Message-State: AOJu0YyJSZ+BZxo73//FHA7EPnMZ9+hkovOsXCELJdzeHJGEt4l1zN+/
	Z46DnI+8r2Vu5EXWCyNZ+6CqSGdHDb6YRhLrkgyD+B0GLr8KWzMVEwzM9oTWkA==
X-Gm-Gg: ASbGncvpIKEqUP8V8jhEqCHQ87owwls9QuVW6dse4gO0gYsB7zWeZ1VP431QW6qsrK6
	8TjWUj+z2aMSEyiwrBr5VVk9eL8dsHgzIM28Xnni0RvsJp3M67zUtMOlz/WJouYJ8ZYgTRlBKs7
	ktqpgHRzkWppJhRtfPuuxXz2XXm0uSXn8EQYWJdmEWob+riAkFntu2XWvFtbTkFxrpo53LvGqjJ
	AUc9094aAiYZBvUS31N+fu93xyLx3CrarzjBDh03uDgqOOoNMCWrrP8aha0QECN9oxTf5hut2Gt
	RXbbPkkzf9tutpiPB/y0nsCwUAJ46eM6uBdy0SpOZiGApQ8T6yDjPkwxnMMQXQZxPCY77c9wjxr
	5WhzAH7jqoue84qJ2HgIX3Q==
X-Google-Smtp-Source: AGHT+IGf9oq+B6UHqEuTrughCDWV/clMEy9Ly7iIk2+4GYzd43PWpBaNMRG0niwSdY027BBWwPy/rw==
X-Received: by 2002:a05:6a00:2da1:b0:736:4b85:ee05 with SMTP id d2e1a72fcca58-739803c5d57mr21662614b3a.11.1743541661474;
        Tue, 01 Apr 2025 14:07:41 -0700 (PDT)
Received: from stbirv-lnx-1.igp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-73970deef7fsm9414995b3a.9.2025.04.01.14.07.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Apr 2025 14:07:41 -0700 (PDT)
From: Justin Chen <justin.chen@broadcom.com>
To: linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-phy@lists.infradead.org
Cc: rafal@milecki.pl,
	alcooperx@gmail.com,
	bcm-kernel-feedback-list@broadcom.com,
	florian.fainelli@broadcom.com,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	kishon@kernel.org,
	vkoul@kernel.org,
	Justin Chen <justin.chen@broadcom.com>
Subject: [PATCH v2 1/2] dt-bindings: phy: brcmstb-usb-phy: Add support for bcm74110
Date: Tue,  1 Apr 2025 14:07:35 -0700
Message-Id: <20250401210736.2613748-2-justin.chen@broadcom.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250401210736.2613748-1-justin.chen@broadcom.com>
References: <20250401210736.2613748-1-justin.chen@broadcom.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

bcm74110 brcmstb usb phy adds further power savings during suspend
states.

Signed-off-by: Justin Chen <justin.chen@broadcom.com>
---
v2:
	Sorted compat string odering
	Add new compat string to constraints

 .../devicetree/bindings/phy/brcm,brcmstb-usb-phy.yaml      | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/brcm,brcmstb-usb-phy.yaml b/Documentation/devicetree/bindings/phy/brcm,brcmstb-usb-phy.yaml
index 580fbe37b37f..28906bb664f4 100644
--- a/Documentation/devicetree/bindings/phy/brcm,brcmstb-usb-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/brcm,brcmstb-usb-phy.yaml
@@ -15,9 +15,10 @@ maintainers:
 properties:
   compatible:
     enum:
-      - brcm,bcm4908-usb-phy
+      - brcm,bcm74110-usb-phy
       - brcm,bcm7211-usb-phy
       - brcm,bcm7216-usb-phy
+      - brcm,bcm4908-usb-phy
       - brcm,brcmstb-usb-phy
 
   reg:
@@ -139,7 +140,9 @@ allOf:
       properties:
         compatible:
           contains:
-            const: brcm,bcm7216-usb-phy
+            enum:
+              - brcm,bcm74110-usb-phy
+              - brcm,bcm7216-usb-phy
     then:
       properties:
         reg:
-- 
2.34.1


