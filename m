Return-Path: <devicetree+bounces-165442-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A78AA845D4
	for <lists+devicetree@lfdr.de>; Thu, 10 Apr 2025 16:12:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6CD731B64556
	for <lists+devicetree@lfdr.de>; Thu, 10 Apr 2025 14:07:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 41C6D28D851;
	Thu, 10 Apr 2025 14:06:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="OMb2Fdrz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE7DA28A413
	for <devicetree@vger.kernel.org>; Thu, 10 Apr 2025 14:06:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744294013; cv=none; b=DckInSUHt+RWPcV9WB/dhfd6TytAcTBWzaVK696T4qePlQ9qWFbqkryGXo2+VpZUxXHfsZAKFfMGKFyN3eIeQRjfAeXVdek4kK+QdGq4pfUVFdz8raWGzxiTT1Fa1CRuhX5OUme2TgLTCHXQO0yGD37YRk+CX4h3BHnSigbJRJk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744294013; c=relaxed/simple;
	bh=kPIosshDR5H6osac6wbdQDDN6UXpRpsRAyxz5no1LTQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=SahTUtogiQNaaINAOGPbdlkj/grvgqHrytsZZs4Iv8hgjvWL3r8KA3SDgwyHyMebyYQxKnLZO9xMvwuA9Oc5tT9PziGKOsyo49AmozyFRLPtXdoRugicz2jGQQXHaxwW8omUWyC0lzHuibcXs7aQsGB1CSNh25HVBnXA+JgHeV0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=OMb2Fdrz; arc=none smtp.client-ip=209.85.221.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-39d83782ef6so1251423f8f.0
        for <devicetree@vger.kernel.org>; Thu, 10 Apr 2025 07:06:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1744294009; x=1744898809; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JHL5IPj5wQTERMMMmzAKWea18ujPZ58wyWG0cWKNHYQ=;
        b=OMb2Fdrzsz7kC4peeIRq4jrA4SyhUqs4dnD/NqzwFaXLI3hmQpuoy1gtKyZbivYT6d
         bq7wnfPv2UdGUxGNOfYxhWNuRCqDoAY+BFoqo4bUPi9oNiiHWxfFSeSHYjuDipQx0JXy
         RNNni1oy+W7VCyBKY3AY+3eEJERnFPA6vB7PWeVVsuQ05PFPwE8R3XpgNY3GXpaiPUa1
         3NTTMJS5futcrkxs1gdrGnm0MVEUe6mOP0bse00cgNuMDZAt55secVLjfe0brOONBbrq
         K46Q+edukx2zwHk5/scqXjYEDW90NOJ+CDRH9w/0/dSvJ/zyYbEasw+pHeN0Aca6QA6a
         7F/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744294009; x=1744898809;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JHL5IPj5wQTERMMMmzAKWea18ujPZ58wyWG0cWKNHYQ=;
        b=sD3orhwHU/025h4DqcrzXt4pEXVTmbPWx/mRXUk7Zev1k5YrCRbjX/DwWvaB7jLNrO
         QjNYAvg+k5loOWtHtgtTFTnQ0n2mG1DORwiVLM552H7MmsdT2VX1LKZLDb9n6YIFaEjw
         Pbf+P4pgUPQNpfYrO8c5YER1KgbitqP6LCYI3N5wIhAfXEA0tyIq0qGfyyx9qJK8BQKu
         NmUMPdoJjLCka2n/Rjh1hth96hPaNRxiWA5OlCxbbyz/ZkY2UfEDm/fRc6qq0DN878r7
         e2zBSfjJiB1HeqeDCEkSl5onPYYafbV8tZTR954nH5AgG45lo35tCIn8f2jx6yU7hgCg
         7ESg==
X-Forwarded-Encrypted: i=1; AJvYcCVbs1WM0cCsewwQOaQxSuMykYPsymT12KYGnKKfMHDtE47HDzx6O70Gh0mgJaZfp15gQln+EsFm206s@vger.kernel.org
X-Gm-Message-State: AOJu0YxlY5TLZH1BlAjRYm/8a43BfMv9CA7q6GgntQ3zFFCtnh+1Gh5L
	aYKm0KOXgBAPU0+AchkVFcvX5Ffc3OD5SZCuIO8pqltSsHD8YBSW1yXFE5s2eTo=
X-Gm-Gg: ASbGnct926KC/gFH8U6/kCtDDfdRhQ9Vw3yGV9niO9Pg6N7Eb8fvAYyA5WH3ktD6+LO
	7TjDtdKDUgS9kA+gUp4VfcXlLvc+DA/BquTxQuWcBpaxFPINTgGMN+Od/SVYQC3kgqYf+SwXOIc
	pZBgR9Ujqwmjc3lDS+N8h0t8gA1HYQwQLS1NF1MCBsJrpMRpNSD/HsjFID98kt5QuDDDYaiVStz
	p0UuxDBnxjflIb9Fc0DVdNmkJbQ9LPK0YkCmaEfpELsfqyFvfArTe0dJdnbWXr3ZMFMcE9gYtZ3
	jQDHMidP8mGJgHoBNmHxDjHaWU/McG30f4JLhO85Fnjyn6rz9ykUpQqwhVHUYZNHdIxPCA==
X-Google-Smtp-Source: AGHT+IHOcPZ66SzEZvQYNSIfZ5gzgwZTGjRiYOAcMR0wqLzi2RpfoI/4+zomLnNdjGeNVHWvRUCJkg==
X-Received: by 2002:a5d:5f4c:0:b0:39d:8e61:b6eb with SMTP id ffacd0b85a97d-39d8f26771fmr2971729f8f.1.1744294008896;
        Thu, 10 Apr 2025 07:06:48 -0700 (PDT)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.57])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-39d8937f0d8sm4806913f8f.40.2025.04.10.07.06.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Apr 2025 07:06:48 -0700 (PDT)
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
Subject: [PATCH 7/7] Revert "dt-bindings: clock: renesas,rzg2l-cpg: Update #power-domain-cells = <1> for RZ/G3S"
Date: Thu, 10 Apr 2025 17:06:28 +0300
Message-ID: <20250410140628.4124896-8-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250410140628.4124896-1-claudiu.beznea.uj@bp.renesas.com>
References: <20250410140628.4124896-1-claudiu.beznea.uj@bp.renesas.com>
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

Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---
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


