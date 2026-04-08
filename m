Return-Path: <devicetree+bounces-285653-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YGF5AfEX1mnwAwgAu9opvQ
	(envelope-from <devicetree+bounces-285653-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 08 Apr 2026 10:55:13 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A9A153B95DD
	for <lists+devicetree@lfdr.de>; Wed, 08 Apr 2026 10:55:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 981FF3030D2E
	for <lists+devicetree@lfdr.de>; Wed,  8 Apr 2026 08:54:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 155803AEF20;
	Wed,  8 Apr 2026 08:54:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="kS6PduTQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E618435AC35
	for <devicetree@vger.kernel.org>; Wed,  8 Apr 2026 08:54:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775638469; cv=none; b=YzDzDS1xUM/QQsGnXEvsYWYYbpV0yoUXqdfaDmeyXVmR3CE2daRBQHyghyOTMPZpPnxMeV75RUR9tfdOHDpL0lfYYClK+BtnNx75G4FKdhjJxq+PqSTOmqKF0uvwuud/SFubBkXGjdXL6buSKA+qwtHRLv3hs8apM6Q4ICQqKYs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775638469; c=relaxed/simple;
	bh=6hgrXq69GCUKWlQaQ7SWZ6JWGUmF0JVirVlDe/CQUrc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=S9+7FwFOnWq8oS4xV4PzDxgg6apotDSeKtk3s3y6QGPmI9mOY879Mhfn2GqJK06Q4gNAf0NXULQMxOX/v/aNmuzSqIN5iTKQ+goCotb/JuuMPLkRA7AvLZDfCTKRc7NLhKXGOqq/Wu2iPtPf9sHy7kyx0//rkbe5W3yoRElT8YI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=kS6PduTQ; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-488971db0fdso48310915e9.0
        for <devicetree@vger.kernel.org>; Wed, 08 Apr 2026 01:54:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1775638463; x=1776243263; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3C1NsEd8WD8aDITqUFHuUeRrOmqKY8E222OL3+PqW8U=;
        b=kS6PduTQTvZTSTjUWpC1yOrIO+G5oiM/JwHplJz41+KMLKe1gpVOTa/eumM8eAOyJB
         ePrlnta2nF9b1E6h4ArB/hdmsiFINyw2OMcHW/VNiGJ4R7aeMwWO3t3sEVQ6FDzoF7wP
         3D9Z6iNf2mZ72+eywbFUNNKgtJP5aHrPCW2uHVzeLU4OIP1HUYxFwFuWj1PjaEvtGaQs
         S9l/HYLKjFfsigVUdaFrYHXHZs/7ExaiZX20xhLGpBUOIcZMu7QbA+hbQL6Ei2h6MRFy
         Di69Fj4TYh1YP9iGi2D1hzbntF7NuHm9jLEyOJSs7Nx7RCULC7SOEe4fB0BuhEAxmH7m
         MpLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1775638463; x=1776243263;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=3C1NsEd8WD8aDITqUFHuUeRrOmqKY8E222OL3+PqW8U=;
        b=bdA95xnySnRJwe+nWoazUY7bXac0xetokP25/R/dU5D3RVHiGPFTrOLFHztNLH/L3g
         gBQwsNw5hdbYJ0KUZIaXbJ/uRqrwkkq4xskClBOFosoxBv+Uu4F/r9pac9q20xycZYoL
         f4TAC6GzqnQoUwIcMDvTgytmrc2kPYWDuZfHthjNJdJrdYLjfSMyQgk+s1VXkdECGbk+
         Hvaf7hcgLvzKXoscR/MQ2V5/wTfTW9YfCUZQCVN1uMUU8tIdUxZhOCeEBKnYjUpnhCxa
         2iqANbPPQEB/qOO2LlAWWZM+LbWrFm8Xz9HlxyHbQ7wWhTJskXCAV2/2mPm5plDovgi/
         xq1Q==
X-Forwarded-Encrypted: i=1; AJvYcCXTNZEPZjaaxAw5bbaWnHfEsHHhz8kGehJOwInO9cThCjpcxRGmxGTYq00+xn8wbP38LTfykGhmMlIg@vger.kernel.org
X-Gm-Message-State: AOJu0YyM/kCLrVmSUti8AnP5eB/vOqLfvHxvGOcJ3HNsLqVIKgioHZ7/
	1aSaGKTfbRPL0ehS+TOvpJymPRobngkvqjWYs+B2lnh+Zc1AxDMCEBTG
X-Gm-Gg: AeBDieslAz9x0ywYRSut3p6U3jMv0MHuIKirqOdItVJDcae6B7JIgqHjLQ/dwwMqVR9
	R4VvjjyarH8iCxqX/bZbx+mH+AiC1OAD0vlWBocbIqOVlAR+X7HQ67d20FCsdd6h7reQe+uvloa
	ZDk0cwVgPtJGAP8X0x9czPX7ZjthjwapWGtKc9Ifb/gAnz8+xfBcd3VvSLEamhE9BDVcUF5uuGW
	7ogsaS/sHfynINQoOkjRAunwDHc3cmbzqcVQD3Nqiq669fgUf0Oh9XRYWKzsoTcGJbc25+ZCSo8
	YXZvjXWcFGw5N7nsCg6+2jlx776m7Uy0OqgIk82K1C6BZ37bNu4iGpDCpmqU1JkTrx3y95+oM5x
	0B87K/2baKeMfbbp/jvf1+210l4EumXygeGkdr2YT+epMos4/ganx81xz07N21H4e9GJqn43soM
	2Xn6xVUaKWCF9pYbYsAUSXLBQwDLv45YlPFI59xDeZ9MWtKI8=
X-Received: by 2002:a05:600c:3105:b0:485:7f02:afd5 with SMTP id 5b1f17b1804b1-4889975f7ccmr280966105e9.13.1775638462848;
        Wed, 08 Apr 2026 01:54:22 -0700 (PDT)
Received: from localhost.localdomain ([2a00:23c4:a758:8a01:f65c:8080:131a:202])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43d1e2c50a7sm56437678f8f.15.2026.04.08.01.54.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Apr 2026 01:54:22 -0700 (PDT)
From: Biju <biju.das.au@gmail.com>
X-Google-Original-From: Biju <biju.das.jz@bp.renesas.com>
To: Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
	Mark Brown <broonie@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>
Cc: Biju Das <biju.das.jz@bp.renesas.com>,
	linux-spi@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	Biju Das <biju.das.au@gmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: [PATCH v4 1/2] dt-bindings: spi: renesas,rzv2h-rspi: Document RZ/G3L SoC
Date: Wed,  8 Apr 2026 09:54:14 +0100
Message-ID: <20260408085418.18770-2-biju.das.jz@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260408085418.18770-1-biju.das.jz@bp.renesas.com>
References: <20260408085418.18770-1-biju.das.jz@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-285653-lists,devicetree=lfdr.de];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[15];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[bp.renesas.com,vger.kernel.org,gmail.com,oss.qualcomm.com];
	FREEMAIL_TO(0.00)[renesas.com,kernel.org,glider.be,gmail.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bijudasau@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	NEURAL_HAM(-0.00)[-0.993];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[renesas.com:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,qualcomm.com:email,glider.be:email,bp.renesas.com:mid]
X-Rspamd-Queue-Id: A9A153B95DD
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Biju Das <biju.das.jz@bp.renesas.com>

Document RSPI IP found on the RZ/G3L SoC. The RSPI IP is compatible with
the RZ/V2H RSPI IP, but has 2 clocks compared to 3 on RZ/V2H.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
---
v3->v4:
 * Added a blank line before the dmas property.
 * Collected tags.
v2->v3:
 * Added ordered DMA names for the dma-names property.
 * Dropped the tag
v1->v2:
 * Collected tag
---
 .../bindings/spi/renesas,rzv2h-rspi.yaml      | 29 +++++++++++++++++++
 1 file changed, 29 insertions(+)

diff --git a/Documentation/devicetree/bindings/spi/renesas,rzv2h-rspi.yaml b/Documentation/devicetree/bindings/spi/renesas,rzv2h-rspi.yaml
index 2c9045fd51de..f40f316943ba 100644
--- a/Documentation/devicetree/bindings/spi/renesas,rzv2h-rspi.yaml
+++ b/Documentation/devicetree/bindings/spi/renesas,rzv2h-rspi.yaml
@@ -13,6 +13,7 @@ properties:
   compatible:
     oneOf:
       - enum:
+          - renesas,r9a08g046-rspi # RZ/G3L
           - renesas,r9a09g057-rspi # RZ/V2H(P)
           - renesas,r9a09g077-rspi # RZ/T2H
       - items:
@@ -90,6 +91,34 @@ required:
 
 allOf:
   - $ref: spi-controller.yaml#
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - renesas,r9a08g046-rspi
+    then:
+      properties:
+        clocks:
+          maxItems: 2
+
+        clock-names:
+          items:
+            - const: pclk
+            - const: tclk
+
+        dmas:
+          maxItems: 2
+
+        dma-names:
+          items:
+            - const: rx
+            - const: tx
+
+      required:
+        - resets
+        - reset-names
+
   - if:
       properties:
         compatible:
-- 
2.43.0


