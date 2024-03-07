Return-Path: <devicetree+bounces-49163-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 42BC887516A
	for <lists+devicetree@lfdr.de>; Thu,  7 Mar 2024 15:09:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 2FAC1B289CE
	for <lists+devicetree@lfdr.de>; Thu,  7 Mar 2024 14:09:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4647612FB02;
	Thu,  7 Mar 2024 14:07:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="LoQ5FucE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5706112F39F
	for <devicetree@vger.kernel.org>; Thu,  7 Mar 2024 14:07:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709820476; cv=none; b=SUJR8NJfdJMIxgFRhL7FAvKMbP1Eyzp2jaDn7soMW0WPUQS4pgyDynxdxzyn2LpDwcPNxVDSPBFrPKm8vKER6WbOsRE47cN+QolFrwBKe/lf8S2CY7lmAg7OMjYSVkzUeP968GCx17OIo87nCbZ6KLmfylTa5HKMwst+V9zEdr8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709820476; c=relaxed/simple;
	bh=nuP8iR6n4tjbNw9I4rOh+AhUGQC1ujLuyQM3qb1k9pA=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=Of7aoDG26jw8lJ20oGD1y8YVOuIQVTbzE3NL4KDgY9Co6Q3ehhOCXDs35Ny/iT3sRcu1ItoaE8vyUVgl8xyRMXgNGxvQ8fxrWALh7CNMIUPneyOIb7C3Kvz4dSq9KR0d1feKRnc6/bP+VfuEMCq8jzSNW1xdHtKexI0yzHjcZr8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=LoQ5FucE; arc=none smtp.client-ip=209.85.218.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-a3ed9cae56fso377417566b.1
        for <devicetree@vger.kernel.org>; Thu, 07 Mar 2024 06:07:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1709820473; x=1710425273; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SBHulM5tgA9Yu4QDRPLiTWrU5crZRQDlADBuEJV4VhY=;
        b=LoQ5FucEPH7FNhZqIn8gees2QK5x6Iq7ap41Z5jt6qEEumczVDO98pAhZwb+7cI46P
         tPyZxGatbuIwUf9qCLAEhvMvVVwmOyh5ib6bZon36xO68iFIXAqgmmW0v0oXwnMet7nM
         de1/Rn3O1G1v76UDg0t8d4JYavBww1M6d/NuQk3U9T+ehnaq0Q4yLsZJTheLFD/HeSWP
         3YB7a7N1xNlGCFHXGfrbhPSpew+bbJNgGU+NP6EZzID8X7JBuQJwth1btQpjWAHVDWN5
         pMiVVJ+6/3iWfp54QZK0OGk04b3NVmVq5JzwVzO0xXLPulyFadmSmX4DUFKEQqc+hnnh
         jkRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709820473; x=1710425273;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SBHulM5tgA9Yu4QDRPLiTWrU5crZRQDlADBuEJV4VhY=;
        b=dY9Sy2mGmgsVXQ0HQeTfSK41EQzZLuO3KMf+P23fwgFK2ew3X0nae3h0cdtoEW2Y3L
         NNiQM6XERiMyCLe3FSM4hAVZ9pwZdmHmzlhWbf6sZw7nYF8RYsg1QE1BZ9cJ2v2EM/gG
         pqj7xTMd17fLP/SooF3MFvTiJ1kkSd92Np2oSPSTSnTk90h0EQscopc4XANBlhKw7x5y
         Rn7oZ+ExwqjpKu8GlA3LdKyIUDIOLN+o55GZsClSH7Csad4wp+DDn2yqp2Kl9L/HoDv1
         xSn/BeA2o5pEM8Y4u0EQmWt7UYs8zd4ge6jyFFA6vIzgx55OAb6bKTPjWJhmGitEZqaJ
         aVlQ==
X-Forwarded-Encrypted: i=1; AJvYcCVczHBV9c5N9v9PPjpiEV0/5baBS9af3tEpPOjLHCh88mVMUAe1a/XrBuSQIKnpAXLkWLxeUZyCu6zQlAkFIr3kgjnPScYjnCph/Q==
X-Gm-Message-State: AOJu0YzpJ1gaP2PfMqpoAHIuXoStnV1lO5m3+JVpj5h1qypmhcGbQ0Jn
	UabJqA312bkhjvy+zbuALAl03CvpRRYwmODS2C2tmVMjQ7D8MzlY7BneWp25+mg=
X-Google-Smtp-Source: AGHT+IFO1qzZI4vXATKgcIXml+TT3amKFBy42cnqOC58zMQxN5FKCP88n3FmIdjFGol396HkLTMb4g==
X-Received: by 2002:a17:906:589:b0:a45:163a:c08e with SMTP id 9-20020a170906058900b00a45163ac08emr322255ejn.0.1709820472972;
        Thu, 07 Mar 2024 06:07:52 -0800 (PST)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.38])
        by smtp.gmail.com with ESMTPSA id v23-20020a1709067d9700b00a42ee62b634sm8200648ejo.106.2024.03.07.06.07.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Mar 2024 06:07:52 -0800 (PST)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: geert+renesas@glider.be,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	robh@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	magnus.damm@gmail.com
Cc: linux-renesas-soc@vger.kernel.org,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	claudiu.beznea@tuxon.dev,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH v2 05/10] dt-bindings: clock: renesas,rzg2l-cpg: Update #power-domain-cells = <1> for RZ/G3S
Date: Thu,  7 Mar 2024 16:07:23 +0200
Message-Id: <20240307140728.190184-6-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240307140728.190184-1-claudiu.beznea.uj@bp.renesas.com>
References: <20240307140728.190184-1-claudiu.beznea.uj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

The driver will be modified (in the next commits) to be able to specify
individual power domain ID for each IP. The driver will still
support #power-domain-cells = <0>, thus, previous users are not
affected.

The #power-domain-cells = <1> has been instantiated only for RZ/G3S at
the moment as individual platform clock drivers need to be adapted for
this to be supported on the rest of the SoCs.

Also, the description for #power-domain-cells was updated with the links
to per-SoC power domain IDs.

Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---

Changes in v2:
- updated patch title and description
- kept both 0 and 1 for #power-domain-cells as not all the drivers,
  device trees are adpated with this series
- added a reference to dt-bindings/clock/r9a0*-cpg.h for power domain
  specifiers
- dropped the changes from examples section

 .../bindings/clock/renesas,rzg2l-cpg.yaml      | 18 +++++++++++++++++-
 1 file changed, 17 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/clock/renesas,rzg2l-cpg.yaml b/Documentation/devicetree/bindings/clock/renesas,rzg2l-cpg.yaml
index 80a8c7114c31..4e3b0c45124a 100644
--- a/Documentation/devicetree/bindings/clock/renesas,rzg2l-cpg.yaml
+++ b/Documentation/devicetree/bindings/clock/renesas,rzg2l-cpg.yaml
@@ -57,7 +57,8 @@ properties:
       can be power-managed through Module Standby should refer to the CPG device
       node in their "power-domains" property, as documented by the generic PM
       Domain bindings in Documentation/devicetree/bindings/power/power-domain.yaml.
-    const: 0
+      The power domain specifiers defined in <dt-bindings/clock/r9a0*-cpg.h> could
+      be used to reference individual CPG power domains.
 
   '#reset-cells':
     description:
@@ -76,6 +77,21 @@ required:
 
 additionalProperties: false
 
+allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: renesas,r9a08g045-cpg
+    then:
+      properties:
+        '#power-domain-cells':
+          const: 1
+    else:
+      properties:
+        '#power-domain-cells':
+          const: 0
+
 examples:
   - |
     cpg: clock-controller@11010000 {
-- 
2.39.2


