Return-Path: <devicetree+bounces-177101-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id EC4ACAB66EB
	for <lists+devicetree@lfdr.de>; Wed, 14 May 2025 11:06:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id ED9DF1B64E36
	for <lists+devicetree@lfdr.de>; Wed, 14 May 2025 09:06:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 57A6E229B07;
	Wed, 14 May 2025 09:04:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="hoc7v/A1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9BD7E22A4E0
	for <devicetree@vger.kernel.org>; Wed, 14 May 2025 09:04:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747213480; cv=none; b=i4NQOiM+3akKxDUr6EPRX6vn4BQwhUKMKAbi7kJTgMSHCMMaRK8t4LhY+W1vCNjQ6fW2/RylL5YCw0ecGUNzRXSflpERDoU8EnbQhVryrMYMgLmNGCmA+ggFYW96kfqBrkH6sD375o+dLRWTMt0AOBBrw9xRFdm0oFiBvqhHc7E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747213480; c=relaxed/simple;
	bh=4qxzgRYj3R0YSr5c7wuqfhdIlrtZfod1FQ+TL6UyLXM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=t11LatvAP3hx8X03m/uKTFDO7X2lhTFakfYlAMjWUHtbnIh/3N8yDmmFzNv0gRweuEWY7MlKMaCjJD873tyu5StYCsnIk97j4ofDKOPhWduy9/zXoWH6x+Qfslujaovg8RlJFTvRKKjQks7aUrbNC9D0jEhYKsCdoRCSoW+c4vo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=hoc7v/A1; arc=none smtp.client-ip=209.85.221.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wr1-f43.google.com with SMTP id ffacd0b85a97d-3a0b933f214so3108394f8f.0
        for <devicetree@vger.kernel.org>; Wed, 14 May 2025 02:04:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1747213476; x=1747818276; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UlrLdd5J+/M2OISiprAv0x4oZKgNtFnWiJLXGIklBOE=;
        b=hoc7v/A1yzO8Gv8DLZUATdV7x9gpTuSgqMrYFj9n8A0nVu1qubAijxormEOpnLpGka
         TdfKSLlcmo/l+giozAANxSQwhoejjL8454YEEAruOmzVIkQkCshCsJwg+S+tcIjkjTAu
         7T08bf1GeFm/Kxm1Bf4T9BrZqJ93F3/Ougc4CiwoSv7zogZYvFkrn63tV2GQ6rQ/8y/q
         +qqF0+soqWm2OAOVS/Jrmfso60bViI0tm3K5BGui/cxLvKwXYI2V63d5zxA22pDkiWHP
         hZUBIFjPsyIkcAZ+6s57v92XzqP3cvlygtL2rBltAOuHo4V5WgYizstZzVihU6h17Ouq
         z5lQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747213476; x=1747818276;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UlrLdd5J+/M2OISiprAv0x4oZKgNtFnWiJLXGIklBOE=;
        b=hrXSm3ZsFlz62w+YyrkxvxZ89GAXRe4bdh8WLfNfg0Oe4JyCjcjVbuKBxMZc2096ng
         Xr8LV+C5ipOtLJ7APzcN2FgzdNQzKuYBp4ao5M2t3Vqp6Pyt9xkXInTlC09yqP2azClm
         qJ8iAU1SIhRdb4HnOyRqL1ujA276QM138IH+jw7GXro4QOqBn9MX5j6mVtiHGlhS9rj9
         rHHtI85/Y4nwJ/yPZZQvkwsToVV1Flqx25SrTaBmDlx1v+yT0hzhtJD3rO762BT828Ji
         6KExVxW2UG/h35jfVHk8NsaVahYCSmcHZS1AUQRLFRnCu/YrB0Qn+sy2n8BFMNKBMrev
         gb9w==
X-Forwarded-Encrypted: i=1; AJvYcCXdB2bWPRSFRl7MAM3nooVPtINJeJI3HcMrcpKNJ5JSUK1Km9aT+zRLK9BgJE/gJOHRlbpbcWfhbaxM@vger.kernel.org
X-Gm-Message-State: AOJu0Ywb+do1VXQdDFU63c+/OYgx4+VBBoRHoIkmALcy/LErq4Zsfiwf
	0HCpZdY4wKx/+3TrxYtPvaBvhQXvULoxPpdgUX/pQNWi3hl6klrWlNKXqBkoqMY=
X-Gm-Gg: ASbGncso03UPEowySJ0TcTGHBLVwRXhLHCaO92VOnq9V4MjgITfFJTyrDDR5vB3mSEM
	jbA6gasxG721VTgggf0IyaRS5iY5tVhDlMYNcEpk/kvXg6zoOL2XqyZhHZhIcts2ieTS1DIXF2l
	dRavNHybALBotadRnKfIeGMFOP+h7371bLrpCXFxtBSo++Eoio+zZTm+3y1nPUNFELl/4qxj3gP
	rwnJLlEY7ZbiQMfH7GtN+/h1yBMTPT08gfKGGqIaiJ8qhYZnVYd/tAGQ6Q24Dq1Q/qMjvISU1/c
	5JF5rKluD1k5bl+udaUGp7eucnNFB4r/CxBVaWCrIRCFa3I38/tviszhyaV6sa1G0ALEuFHsipZ
	3kueq
X-Google-Smtp-Source: AGHT+IEKWrUAq9SfIgehioeqh/K72TgwuXn7Fpock53ym5/tWn404/btuDmLUE0Kr4GNSRDHbVTVpQ==
X-Received: by 2002:a05:6000:430b:b0:39e:cbc7:ad38 with SMTP id ffacd0b85a97d-3a3496c28cemr1869568f8f.32.1747213475727;
        Wed, 14 May 2025 02:04:35 -0700 (PDT)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.58])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a1f57ddfbesm19286561f8f.10.2025.05.14.02.04.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 May 2025 02:04:35 -0700 (PDT)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: geert+renesas@glider.be,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	magnus.damm@gmail.com
Cc: claudiu.beznea@tuxon.dev,
	linux-renesas-soc@vger.kernel.org,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH v2 8/8] Revert "dt-bindings: clock: renesas,rzg2l-cpg: Update #power-domain-cells = <1> for RZ/G3S"
Date: Wed, 14 May 2025 12:04:15 +0300
Message-ID: <20250514090415.4098534-9-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250514090415.4098534-1-claudiu.beznea.uj@bp.renesas.com>
References: <20250514090415.4098534-1-claudiu.beznea.uj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

This reverts commit f33dca9ed6f41c8acf2c17c402738deddb7d7c28.
Since the configuration order between the individual MSTOP and CLKON bits
cannot be preserved with the power domain abstraction, drop the
Currently, there are no device tree users for #power-domain-cell = <1>.

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
Acked-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---

Changes in v2:
- collected tags

 .../bindings/clock/renesas,rzg2l-cpg.yaml      | 18 +-----------------
 1 file changed, 1 insertion(+), 17 deletions(-)

diff --git a/Documentation/devicetree/bindings/clock/renesas,rzg2l-cpg.yaml b/Documentation/devicetree/bindings/clock/renesas,rzg2l-cpg.yaml
index 0440f23da059..8c18616e5c4d 100644
--- a/Documentation/devicetree/bindings/clock/renesas,rzg2l-cpg.yaml
+++ b/Documentation/devicetree/bindings/clock/renesas,rzg2l-cpg.yaml
@@ -57,8 +57,7 @@ properties:
       can be power-managed through Module Standby should refer to the CPG device
       node in their "power-domains" property, as documented by the generic PM
       Domain bindings in Documentation/devicetree/bindings/power/power-domain.yaml.
-      The power domain specifiers defined in <dt-bindings/clock/r9a0*-cpg.h> could
-      be used to reference individual CPG power domains.
+    const: 0
 
   '#reset-cells':
     description:
@@ -77,21 +76,6 @@ required:
 
 additionalProperties: false
 
-allOf:
-  - if:
-      properties:
-        compatible:
-          contains:
-            const: renesas,r9a08g045-cpg
-    then:
-      properties:
-        '#power-domain-cells':
-          const: 1
-    else:
-      properties:
-        '#power-domain-cells':
-          const: 0
-
 examples:
   - |
     cpg: clock-controller@11010000 {
-- 
2.43.0


