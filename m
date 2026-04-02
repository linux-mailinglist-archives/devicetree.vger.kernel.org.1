Return-Path: <devicetree+bounces-284073-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iA9eKGtuzmkCnwYAu9opvQ
	(envelope-from <devicetree+bounces-284073-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 02 Apr 2026 15:26:03 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E463389AD4
	for <lists+devicetree@lfdr.de>; Thu, 02 Apr 2026 15:26:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A1CB631B7254
	for <lists+devicetree@lfdr.de>; Thu,  2 Apr 2026 13:10:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7FBB43E6397;
	Thu,  2 Apr 2026 13:10:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="gNzBUd3A"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A7B7F3E5EE2
	for <devicetree@vger.kernel.org>; Thu,  2 Apr 2026 13:10:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775135429; cv=none; b=Fmpui1lEUNuXKe9GAVjSwd6citEwi33blqv5hlgB6CKpUXI2eiIxijc7oqYWlKedN3sip/6tJUxJp3DuvbLigba50OSmJdTsv2+X5C+Xl2jHH2+ETUAhhEgO/0mR8uNf3GHXG3J5DQ0KKlWNWm/zAtFiBV7KjdmJsRR0qqwjQ20=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775135429; c=relaxed/simple;
	bh=MCHqP0/9mKsRGiM8idpPJEeRoId71ghKES3KYS1wrZg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=gdOfBrsxQ9DeJ289Tevd4DDqAwh5Kx/34IL5l0/ODnFoT210Dgs97wZscADUocz+ay2B4tVz2Ep9WoH/f+Okk9e+3GLnEYH9frsrgmt/AWsfl4s1cc5IjXhqwKdQ/j+qI54VqdTIOfUzfTLBnQoAGmQPyeOFPL5KAWP0KG3G6z4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=gNzBUd3A; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-486fe36cfabso12878755e9.1
        for <devicetree@vger.kernel.org>; Thu, 02 Apr 2026 06:10:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1775135425; x=1775740225; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ahjbezGoTOSrl9YhAZ/dYPEkMg/P+h9Dme65OO5s5X8=;
        b=gNzBUd3A7ykKBOzSxScHxB4bMc0fIL4gSD0GG8hWynvWbNAFt1ncCvUhpjp/dMeleL
         uczxM9kFIbHLc6bC4Wgk0HI4a4jfqAR6LOPBAHn0M/+63KVeTlEdz/sgQ+vkiOpVAzfF
         q7fqZzG4UE4bsXjnd8kyvYI2wMaDLePN0TU/y1o1xq3bkQ0q7npVss0ncE74dD8pd45u
         uXTugykQUMDk1FN/Ckkgpy82z6m3BrUglYLji7jRthnV7SQ156V6CocJucsRGGwYwFkP
         fJGAZ5M9Z+64QjpYjMqhwOT2sqs31QczpKDqKKnymBFyneJfZewvzb/AfgYryX5KSUhk
         jlXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1775135425; x=1775740225;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=ahjbezGoTOSrl9YhAZ/dYPEkMg/P+h9Dme65OO5s5X8=;
        b=qN17hXiF5WdzftXGrNIIV+U0fqGQw85KoF3pwxq5cs8aqAHq5IObL4W1DCM50LXAj1
         7LmENqBSY2ZB9oh0lzKg6oQrBX7ocVVa2hYURS4PAtnPPkfXTBmX+IayHWSU98lX+VC4
         gWfh2+UMOBLvlAFJnTLYHVZnhdyTExzNrhCM0GaBGMrJi9rWvVpzghp6uGzUPHXs/Gr7
         mo63VNffZWf2BaTJa0ea8US63qyq8H6IHc0VwkBLAjXu0XRYe6EhD7Rhhyp0fBjO7UDa
         AwV7CtxZDSjW+sRk2Y3gdoSyZxXDHfGPgP+QHaZ1Q8WlfWwxknjTi5Xd4wLzi2e0S6eU
         aBmQ==
X-Forwarded-Encrypted: i=1; AJvYcCVCRg9rX1GRBq9WN2+hf6pdFXkeznA3TB/7eR9HFliiyy6avrM0NN/RMe0UwZp6G9ccnTGzQ4MKWriZ@vger.kernel.org
X-Gm-Message-State: AOJu0Ywkx4YDpu2Hjr7nwB6fcWXA32jcXtzyuIZn4Ak3vQg0Wk2mJuIh
	Vdtc4Fxx0E45w/dQZ/L5LdygpMTr9rBsHFz5tmwDnBp6WN1wb/AlCGt1
X-Gm-Gg: ATEYQzyekzFgq+u+CpSiAhAoLyAiwGjNCVuLEt/bQ1XC112IBaJgN/cEfNcNlJoDbcf
	tj3PMNGRFCz4MVkm6Ag9H1GmQ3jUvKt+eXxwCeDHghLisOwaFZ0+sOKEJNUOuUDP95Bd4uUUKq1
	6mXBSfCLUIUggmyARJGX+jiEmCq6KlhqUgB75vA/ZNCHmg+CxPMIwvOyzYDmimROW0n2jrjvtAK
	ysm/R6OxvDf5N5VGL//o/1auz7e8ys9jtJYqSpk5qSjg2x+tud2P6x3VBY6MeTJppJVQSDvLLYi
	vL3w+/mASwZ2DrbFj8id7JgVlXTC+ZG3yjG8NEpsYQWQ9N5kcLW5eL7bC/30b0tNbY+u0eTTYcm
	9e5HWtSsIpofV/EOuNNizdg6RxqkYWmqaLmg78F+Ow9t6fXq4kK5l/GlSysPCbDdK68g0BbiKB/
	x8DlhqMfgVBstFjeduZ8FLhYpY7QVhBKT3oLxJXc82cTdTcAt+
X-Received: by 2002:a05:600c:ac8:b0:488:7d01:f67b with SMTP id 5b1f17b1804b1-4888e042775mr27766995e9.6.1775135424624;
        Thu, 02 Apr 2026 06:10:24 -0700 (PDT)
Received: from localhost.localdomain ([2a00:23c4:a758:8a01:1526:47aa:5ab6:5a85])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43d1e2a720dsm8040753f8f.4.2026.04.02.06.10.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Apr 2026 06:10:24 -0700 (PDT)
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
	Biju Das <biju.das.au@gmail.com>
Subject: [PATCH v2 1/2] dt-bindings: spi: renesas,rzv2h-rspi: Document RZ/G3L SoC
Date: Thu,  2 Apr 2026 14:10:16 +0100
Message-ID: <20260402131020.143123-2-biju.das.jz@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260402131020.143123-1-biju.das.jz@bp.renesas.com>
References: <20260402131020.143123-1-biju.das.jz@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-284073-lists,devicetree=lfdr.de];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[renesas.com,kernel.org,glider.be,gmail.com];
	RCPT_COUNT_TWELVE(0.00)[14];
	FREEMAIL_CC(0.00)[bp.renesas.com,vger.kernel.org,gmail.com];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bijudasau@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,bp.renesas.com:mid,glider.be:email,renesas.com:email]
X-Rspamd-Queue-Id: 2E463389AD4
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Biju Das <biju.das.jz@bp.renesas.com>

Document RSPI IP found on the RZ/G3L SoC. The RSPI IP is compatible with
the RZ/V2H RSPI IP, but has 2 clocks compared to 3 on RZ/V2H.

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
---
v1->v2:
 * Collected tag
---
 .../bindings/spi/renesas,rzv2h-rspi.yaml      | 26 +++++++++++++++++++
 1 file changed, 26 insertions(+)

diff --git a/Documentation/devicetree/bindings/spi/renesas,rzv2h-rspi.yaml b/Documentation/devicetree/bindings/spi/renesas,rzv2h-rspi.yaml
index 2c9045fd51de..b4358922487f 100644
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
@@ -90,6 +91,31 @@ required:
 
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
+        dmas:
+          maxItems: 2
+
+        dma-names:
+          maxItems: 2
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


