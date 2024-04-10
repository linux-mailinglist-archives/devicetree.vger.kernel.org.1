Return-Path: <devicetree+bounces-57887-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A93089F22E
	for <lists+devicetree@lfdr.de>; Wed, 10 Apr 2024 14:28:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9E33B1C21AA6
	for <lists+devicetree@lfdr.de>; Wed, 10 Apr 2024 12:28:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 183F515EFA3;
	Wed, 10 Apr 2024 12:27:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="hjI6RZ4V"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46BAE15ECD8
	for <devicetree@vger.kernel.org>; Wed, 10 Apr 2024 12:27:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712752041; cv=none; b=jhTrxtGJe+w2nvx+600NGIRl/W0MALIf/xyMhsxzPd+tzR7cdKFp6BpzbJQbuoN2x2hSMZI5+C+Po2d/WlSuv7see2O08tX8uZK6dIHyjXI9NBvURD7gee+ZlM0Q8ZfdFbKuj5qcm63yHVbrNIuKjNXnVownjLpng68yMMbc46s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712752041; c=relaxed/simple;
	bh=2Dn9zwoluUm9lOlv4owEz3lfChsm2AnVOIaAhDO5O5A=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=cj0WMo62yPO8riiWkRI7XI+EYvKDY+7QwpP3qDcuoAkKPlnYt7tRB7Vl43fnYQg5RCP8WK90zuTRHTfYWX4E8LPkOsS/sV3NvDyWI3Uq+0FraE13iKQ6Fi5cW+R1yK2ycEjmKo/AJMlbi8DWOkLpuYLvUgNJv/scb1jRFmv7m/s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=hjI6RZ4V; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-417c4bd59b3so828605e9.2
        for <devicetree@vger.kernel.org>; Wed, 10 Apr 2024 05:27:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1712752038; x=1713356838; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lzM8sQ3uQ3tHjk4LJ4TPWYY/Gu5/y3nmRsoLKfwtupQ=;
        b=hjI6RZ4VwVtAd3D7YuqJ9oBycxE88ajzGlNkXpwdJ68FnWuQAOYXrwfPpfVxHZnjNE
         lXeFVR+TdjOFF03j+9ov47z3rzg2Kz1A/RUYcc7F7buBfPf5QAF8zxjMUhck09uDWcGl
         2SSFOkh/ad7LOHcPbpq1TgGWyr6HApGYKcm3gTd9oUIqSzFfend5F3zrstkWlzxMC+UL
         f4rHzw5ugyydnERUYeto2/85dHts2U8DWMlbhT9c434Pfw+q+L8vpDqD/0TefH8IDv9q
         efxDxFuA786ySICbjPtkjlIxqA0BEqiJA4XsSyFI+VXQhYGExI8pk5HLy7Y97kesQNRB
         zmfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712752038; x=1713356838;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lzM8sQ3uQ3tHjk4LJ4TPWYY/Gu5/y3nmRsoLKfwtupQ=;
        b=sIs3yqWPhXHoPXJMhjqLLZ9CMkKLbKoLo7PuktiGmGZMfQ9lYD1WxFgrpb/3KSmRxr
         w2j91ZxZJBovgQSQW0v0TfFwzYpaM1zmTLXD9tNo/LfzRBR8HES8UfNJ/1AUKkTFUygK
         JWrRmtjQzxvEl6M50hdXQcNbUTEP2lI+OrdmB33egboNcbXMAQ0KWwHPI7pmpeSpjd64
         Zs/BiazkZLDIu9BcUKq/uZbmexBnVLolsfZ3hYF24OvbEv8Uh8iEEPVm5qLKBdqbRzYA
         99iRY5ldYnimNZkbqgMaJUNRQb13S0+3LnyR6gPIVyvUmRY8JrDx16EGI3nBqkz3ILNZ
         KwIQ==
X-Forwarded-Encrypted: i=1; AJvYcCX41kOeGntqxTJbEunCsahqgP/lyUoOwZgujz7tv9Pwb2OqkojRpChJmo1mVOsLm5NmLnvlm1t5p+rCzwwRt+XDfxOK6uteJIMTrw==
X-Gm-Message-State: AOJu0Yy3fGkZ5ubK3RIFiwiUvcqbi+U1jesS7oarP/9xhyGeLK4yHIpD
	WXZHKYcfAdD22Mr5lfQOszmoFnBxJYBAUBT8kp8iWofXisbjH2zN7hkyciVN3Sw=
X-Google-Smtp-Source: AGHT+IFRk5kC3MaMRtaKkbQqvr24Q262P3CbvQNlYZMqaD37NiQ9554hIb+fg3ZHw3VG+HvK3hTdJQ==
X-Received: by 2002:a05:600c:1c8d:b0:414:8e7:cd60 with SMTP id k13-20020a05600c1c8d00b0041408e7cd60mr1592969wms.8.1712752037726;
        Wed, 10 Apr 2024 05:27:17 -0700 (PDT)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.8])
        by smtp.gmail.com with ESMTPSA id m2-20020a05600c3b0200b004171f151a5csm1679446wms.16.2024.04.10.05.27.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Apr 2024 05:27:17 -0700 (PDT)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: geert+renesas@glider.be,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	magnus.damm@gmail.com
Cc: linux-renesas-soc@vger.kernel.org,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	claudiu.beznea@tuxon.dev,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH v3 5/9] dt-bindings: clock: renesas,rzg2l-cpg: Update #power-domain-cells = <1> for RZ/G3S
Date: Wed, 10 Apr 2024 15:26:53 +0300
Message-Id: <20240410122657.2051132-6-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240410122657.2051132-1-claudiu.beznea.uj@bp.renesas.com>
References: <20240410122657.2051132-1-claudiu.beznea.uj@bp.renesas.com>
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

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
Reviewed-by: Rob Herring <robh@kernel.org>
Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---

Changes in v3:
- collected tags

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


