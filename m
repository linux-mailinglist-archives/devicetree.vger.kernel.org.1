Return-Path: <devicetree+bounces-169633-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 97C77A97B11
	for <lists+devicetree@lfdr.de>; Wed, 23 Apr 2025 01:37:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3034B189BC22
	for <lists+devicetree@lfdr.de>; Tue, 22 Apr 2025 23:37:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DA0892153E7;
	Tue, 22 Apr 2025 23:36:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="Kvh/P7gD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f177.google.com (mail-oi1-f177.google.com [209.85.167.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E74D214A82
	for <devicetree@vger.kernel.org>; Tue, 22 Apr 2025 23:36:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745365013; cv=none; b=KUZ30mWVUOrpSkrcyHj5aeEcgKv20QfEQmy6X+VP1tTpkcAj8m/U6XjsKvapTTDXRqCK5Lk5g/vuCsj4qMcwChk//wCrJ63aUHywq/LtW3dCdy5k9VNhZpRLQt/d0P1n9BPBRRvTnip3UrluuEW7qSEAl1sEAuKO8LvrkkINcJ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745365013; c=relaxed/simple;
	bh=HhZVXlp4anu4BaMWenmN+yN1wsAgJVOqi4SZDzKsT50=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=dXy9D1ySdcd6TZ4eFWvCOwPs2JGAKbAZoM+ZTG/erFCWLTLW7RjyQHSNzQP7HHuHM5Q0OwmH7H24+6w1l/Y4CTXWfaT4U7odhpd6nNY9UmiItENzzayEyS4Gt0g7jfTVm5h9ZGd7TlMzMVTsrLXNhBvPSdPB94U2JU+M6ZEYF1E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=Kvh/P7gD; arc=none smtp.client-ip=209.85.167.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-oi1-f177.google.com with SMTP id 5614622812f47-3fa6c54cc1aso3450077b6e.1
        for <devicetree@vger.kernel.org>; Tue, 22 Apr 2025 16:36:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1745365011; x=1745969811; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=22UXaD7BcOLnc8Na5HsfVqWP1onqjcXFImJhn+WbMT8=;
        b=Kvh/P7gDf1PAU1us3xGrYT0m+W4JWQRWrIEwevrpAi6DtCFPaiGXh7HT7bhRpG3XLc
         QQLwEl4E5c4Hm5qffByZmAUclK1HthuUbD0khLLxVEej/f+xczhuClVM1Lo8RH4ryEyQ
         /U6lrOBgIu88RGg6vFefNaOo4dK1KdEeENEik=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745365011; x=1745969811;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=22UXaD7BcOLnc8Na5HsfVqWP1onqjcXFImJhn+WbMT8=;
        b=HiuK5Sl+b2rHV6kQO/siM4HiHffcHokHPq7tzaX+8hCKKPEZZ2/sVgTlICRtSPMc+A
         69pvb5Ibbbw+tbCjMsjs+7m5yszlWuyznh/EyZrDl5deu7DlZUnxL80xuIlp1aeOjC3k
         ZlCeLb9jOtr74Sl4UCZoWl74N7NpyH08N9ZjGG9y4VOvyKFHt9WyvYEhO9Myq3Ffy9OH
         5Y1NOVvPH+oz10PakvLpK2td2m2pFjCCyTtIzuy8pVlk/DX9sZzSaAsHjgfGdgHvfLsP
         C3u/dj5Cn5WfVWf16vX9wo0MFpE4hopuBJ3ehMm7rEY9ZKPm1w0ZKGKx4KdIdgkenBmW
         rGhQ==
X-Gm-Message-State: AOJu0Yz8ToUPKSdqb07dDUFfejRmoTo3EUG/P2r/ARPhkOiADHiMh+q5
	SQVTwqR7EKEh5a4VlzedX7Wx3wDXj7Y5jVNtQGi5qdeGpkfhombVv4iJ9IQjFvDs7sTeqcI+aib
	VEXMMVUQvpMjI2y3UtWKXKXPObJS9341vi0Jg2T13TSJ8ObNxyxKKgZIXnRlQnGdFK+zC+I0Ts/
	HL6e2KNaRY2/cKzGn3XwwoF0Tw1jzkAnJdX5wU3bQ8foW1YWQ=
X-Gm-Gg: ASbGncslTxNh69JdQSNb9egTMiaANpIl4QDTRYk8ATO4zhGf1ye6HDAOLraU94jglvn
	je91kk+65QN5TSzbPa2jR1QhYZlxiZItojLvtCRcJlpnILnZAdOr19hU1+6C3OP6TGGrm96DfSy
	QUN8dtqoVwb0SvmT34IAdV+Q7ldcAR/bqzKShkNZcGm+GbDCxmOYFMXh3atcFOD4cC5YktbC1/z
	RaOmJTshXHZ6h8Q+MgE0uaTgsn4PS6cgos9DVWeuYERrWM3iSvhQoWXUlFs6mrXCqlu+aV5CaYu
	GVgEdVNocWTOZINuLkYgUXBXsU8l471fW3Z03/Xtjbv8tNC3hNgq8SNdNzERtZRrffA3ItlTyZa
	PYB/+gmFe6aGkMuvoMw==
X-Google-Smtp-Source: AGHT+IFjst6DWiZDz3No5QlgZYdYD39iuS9d0jhgSC++1rLsSWQvzNJrU0aMgA58842RpjLOXvmlRg==
X-Received: by 2002:a05:6808:3996:b0:3fa:7328:b9a8 with SMTP id 5614622812f47-401c0ac7c30mr10521757b6e.18.1745365011046;
        Tue, 22 Apr 2025 16:36:51 -0700 (PDT)
Received: from stbirv-lnx-1.igp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-401beeaf403sm2333582b6e.7.2025.04.22.16.36.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Apr 2025 16:36:50 -0700 (PDT)
From: Justin Chen <justin.chen@broadcom.com>
To: devicetree@vger.kernel.org,
	netdev@vger.kernel.org
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
Subject: [PATCH net-next v2 1/8] dt-bindings: net: brcm,asp-v2.0: Remove asp-v2.0
Date: Tue, 22 Apr 2025 16:36:38 -0700
Message-Id: <20250422233645.1931036-2-justin.chen@broadcom.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250422233645.1931036-1-justin.chen@broadcom.com>
References: <20250422233645.1931036-1-justin.chen@broadcom.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Remove asp-v2.0 which was only supported on one SoC that never
saw the light of day.

Signed-off-by: Justin Chen <justin.chen@broadcom.com>
---
v2
        - Split out asp-v3.0 support into a separate commit

 .../bindings/net/brcm,asp-v2.0.yaml           | 19 +++++++------------
 1 file changed, 7 insertions(+), 12 deletions(-)

diff --git a/Documentation/devicetree/bindings/net/brcm,asp-v2.0.yaml b/Documentation/devicetree/bindings/net/brcm,asp-v2.0.yaml
index 660e2ca42daf..1efbee2c4efd 100644
--- a/Documentation/devicetree/bindings/net/brcm,asp-v2.0.yaml
+++ b/Documentation/devicetree/bindings/net/brcm,asp-v2.0.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/net/brcm,asp-v2.0.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Broadcom ASP 2.0 Ethernet controller
+title: Broadcom ASP Ethernet controller
 
 maintainers:
   - Justin Chen <justin.chen@broadcom.com>
@@ -23,10 +23,6 @@ properties:
           - enum:
               - brcm,bcm74165-asp
           - const: brcm,asp-v2.1
-      - items:
-          - enum:
-              - brcm,bcm72165-asp
-          - const: brcm,asp-v2.0
 
   "#address-cells":
     const: 1
@@ -39,11 +35,9 @@ properties:
   ranges: true
 
   interrupts:
-    minItems: 1
     items:
       - description: RX/TX interrupt
-      - description: Port 0 Wake-on-LAN
-      - description: Port 1 Wake-on-LAN
+      - description: Wake-on-LAN interrupt
 
   clocks:
     maxItems: 1
@@ -106,16 +100,17 @@ examples:
     #include <dt-bindings/interrupt-controller/arm-gic.h>
 
     ethernet@9c00000 {
-        compatible = "brcm,bcm72165-asp", "brcm,asp-v2.0";
+        compatible = "brcm,bcm74165-asp", "brcm,asp-v2.1";
         reg = <0x9c00000 0x1fff14>;
-        interrupts = <GIC_SPI 51 IRQ_TYPE_LEVEL_HIGH>;
+        interrupts-extended = <&intc GIC_SPI 51 IRQ_TYPE_LEVEL_HIGH>,
+                              <&aon_pm_l2_intc 14>;
         ranges = <0x0 0x9c00000 0x1fff14>;
         clocks = <&scmi 14>;
         #address-cells = <1>;
         #size-cells = <1>;
 
         mdio@c614 {
-            compatible = "brcm,asp-v2.0-mdio";
+            compatible = "brcm,asp-v2.1-mdio";
             reg = <0xc614 0x8>;
             reg-names = "mdio";
             #address-cells = <1>;
@@ -127,7 +122,7 @@ examples:
        };
 
         mdio@ce14 {
-            compatible = "brcm,asp-v2.0-mdio";
+            compatible = "brcm,asp-v2.1-mdio";
             reg = <0xce14 0x8>;
             reg-names = "mdio";
             #address-cells = <1>;
-- 
2.34.1


