Return-Path: <devicetree+bounces-141362-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E9F31A207BE
	for <lists+devicetree@lfdr.de>; Tue, 28 Jan 2025 10:54:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3A05D1888ED1
	for <lists+devicetree@lfdr.de>; Tue, 28 Jan 2025 09:54:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3563D19D8A7;
	Tue, 28 Jan 2025 09:54:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="iBOXOiW/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A90619CC36
	for <devicetree@vger.kernel.org>; Tue, 28 Jan 2025 09:54:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738058046; cv=none; b=np77DLaDu92hW0jS+pJnhAfd/EMchuZiWlyCuvMoW23baAsu+QpwJAvv0lLOFkgyNIelGLPEJZj3KbXPCVUWwLZhL1npwBGIlHGAC8lY9tCt4o0GlWJi6J0rxcs3rlIhJLpGHKyNAX4ZXntYOXarJzVDDn0U/hBWK6KYLcNo0ik=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738058046; c=relaxed/simple;
	bh=m/9A+vV18V8o3rxj75sgunitt9f7oIlfI/V0HVXTsIk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=l5ThFSLe6kLl24J6vnScOQgZgtSqC8y7FNSpNYIvVvh9lFDrg6PJJhgVZh15rnYMSbrkF2iG+WSqrXC8k8JFplbEuHA03TWkIRuTSz+Qq9U6NG3kQTizrJ0TLZ2Qj3wr3WwUPv8Sf4Kx/pSsXU33Ugys6pdWESz5nEXvpytEZgg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=iBOXOiW/; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-434f398a171so4627685e9.2
        for <devicetree@vger.kernel.org>; Tue, 28 Jan 2025 01:54:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1738058041; x=1738662841; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Mynkn1T58KbWxPJslgprg5ONuckX8jf1idYXFeWeEt8=;
        b=iBOXOiW/EznO4St6025LyF/RTSPkiyYF6q//6Z6KCstNnRllO+4ArfLlAL1doLy0SW
         Z4nxXiyHJBCrzQ0GLIbThZIfWNaSMU629v7mYmx89SridxjOVCp+r85UQdv4XxdJeGHv
         gYPrxNxuCiiwtSOw+mJj1Y7b0xRLlBs8FIJcZUev9knJb0lMyw+UmHyLx1lS5xvs9LNp
         c0kbP2l1zppOWoB3VRMgfUA7GtDW2+u9NyLl97omgxvu6GbsJIP/l0uCoARu7h8FgJcQ
         w68XiJysTICIqrkVxiR64dGVyZ4++4zlSDN6wCQPJVh7n1HHTdxZqwmOutT3/oyQQmHC
         96fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738058041; x=1738662841;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Mynkn1T58KbWxPJslgprg5ONuckX8jf1idYXFeWeEt8=;
        b=FMwksCMKdtM3/T1KeML88KdY4ROtab1fwZsd8uOK3R5uBRIpNUuKIjQ7AQW05Kez44
         3vw4xbd5Ez7XPjgiW8RPYY4r86N7tdfiwX4sMpchUdWHi3FltGTjQ+c5wjo+u9kYjeAR
         hSmWXhV5eG8zbm3UuD5PTHpH0Dl/Em0mAkLxQENM2n6vINOdoJKo/8hKXMInwVLADDm/
         MqpvuOwEPOwOUfD+vjVOokcHRuwRFQJdsC235GW9djpDUmWt5b8NpIoKvkE78fQSAPhp
         AjjDVKGxeN5s+bY3QrpdgnID6bS2S9wQGFnf8UKa/D9fhtLslqPxw0iU27x9YlH+4I9R
         EsCQ==
X-Forwarded-Encrypted: i=1; AJvYcCUYIAN9LwyAMLsaunc7OmJsY7HVrkhV/eC3KtcHFe3W8O84jooAMsfBqzCSBn8Zz9/DW44QM4P7nF7P@vger.kernel.org
X-Gm-Message-State: AOJu0YxEJu+of6tR3CtFuDEq2bPS8qeXztC1dFXKQg5sRBXQfjUVk5Du
	BdGlFtrRBHSAkLiF4EJoFcw6A84rOHKJgif+IQC0GESO9eeCUTRRQsXDm+79RUs=
X-Gm-Gg: ASbGncs6OQIfKSoQWULpGw/BKaWyBg6DpATRcf92ZJqrfxkRBzmvtEMOcl/D6V/k4Qz
	wzUHhiOBPKLe0GkJP9oDEufd1UT7J7Kvo9f0QaGEJcVNMOE9TZoeBVZgo9MVbtLtaD6+Jc0vuGq
	YQR8EJbMKzuZTnqNrTd2ZQJy1J5HPH7h3758w0oKdBk1VeestxdfzoLggC2KxEhX1VzViG2TjHh
	uhzm9ZIr7pfPVpd30NaHc5xw/OxauCpG4FP7oCJ7WmZ4+6/WHMfbpvZKYoKeDprtIuztBYe31QB
	TM5OwQ8sSMg2eVueaw49XYXz3UGs
X-Google-Smtp-Source: AGHT+IFaCb5uid+D45DpJt271ckjlQY8cqUkzEIatk9zjS+oh+oJJnaznv1MM2Dub/pe4P4CUIZarg==
X-Received: by 2002:a05:600c:8712:b0:434:9cb7:7321 with SMTP id 5b1f17b1804b1-438913c7930mr158611885e9.1.1738058041497;
        Tue, 28 Jan 2025 01:54:01 -0800 (PST)
Received: from krzk-bin.. ([178.197.218.98])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-438bd48ae56sm163002455e9.21.2025.01.28.01.53.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Jan 2025 01:54:01 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	linux-media@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v2 2/2] media: dt-bindings: renesas,vsp1: add top-level constraints
Date: Tue, 28 Jan 2025 10:53:55 +0100
Message-ID: <20250128095355.65766-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250128095355.65766-1-krzysztof.kozlowski@linaro.org>
References: <20250128095355.65766-1-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Properties with variable number of items per each device are expected to
have widest constraints in top-level "properties:" block and further
customized (narrowed) in "if:then:".  Add missing top-level constraints
for clocks and clock-names.

Acked-by: Conor Dooley <conor.dooley@microchip.com>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Changes in v2:
1. Add tag
2. Move clocks description to top level
---
 .../bindings/media/renesas,vsp1.yaml          | 24 ++++++++++---------
 1 file changed, 13 insertions(+), 11 deletions(-)

diff --git a/Documentation/devicetree/bindings/media/renesas,vsp1.yaml b/Documentation/devicetree/bindings/media/renesas,vsp1.yaml
index 1a03e67462a4..dc4b8f00aa7d 100644
--- a/Documentation/devicetree/bindings/media/renesas,vsp1.yaml
+++ b/Documentation/devicetree/bindings/media/renesas,vsp1.yaml
@@ -33,8 +33,18 @@ properties:
   interrupts:
     maxItems: 1
 
-  clocks: true
-  clock-names: true
+  clocks:
+    minItems: 1
+    items:
+      - description: Main clock
+      - description: Register access clock
+      - description: Video clock
+
+  clock-names:
+    items:
+      - const: aclk
+      - const: pclk
+      - const: vclk
 
   power-domains:
     maxItems: 1
@@ -78,15 +88,7 @@ allOf:
     then:
       properties:
         clocks:
-          items:
-            - description: Main clock
-            - description: Register access clock
-            - description: Video clock
-        clock-names:
-          items:
-            - const: aclk
-            - const: pclk
-            - const: vclk
+          minItems: 3
       required:
         - clock-names
     else:
-- 
2.43.0


