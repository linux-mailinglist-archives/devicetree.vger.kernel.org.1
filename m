Return-Path: <devicetree+bounces-94558-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 50050955E25
	for <lists+devicetree@lfdr.de>; Sun, 18 Aug 2024 19:32:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6E58B1C208C9
	for <lists+devicetree@lfdr.de>; Sun, 18 Aug 2024 17:32:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8A51614EC44;
	Sun, 18 Aug 2024 17:30:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="hOUWBZi9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D29A29460
	for <devicetree@vger.kernel.org>; Sun, 18 Aug 2024 17:30:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724002210; cv=none; b=T7XW28Hbj8lZ1lsKmWCGEDmB/jI6CbV4fV88v+nmPpRYfFPnrpLNjR4iN77JEDH6mITvMTYGcR9MV/SBZgoUtVmO2JPuLZNf17KaXDGBr51RSGeeeYr8PP2QmylhYe17pP0Wy8IrI30cdoX9hcCQj1/QXNxRErACA+uA/f9e/no=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724002210; c=relaxed/simple;
	bh=7X9ZnxXyUxu/1V0lOGPXjFgoRhd+0gWb23mdc3ayJ3g=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=YdVgq5evV08TJONWXxt1BFUS/TmT6qn0uFu+F0NGrf4oVER5r5hdBeU0Tlm+0gbM8DqfJMJ4D3P0P2cakrja2x9ki/0kRjEbmPMWGOv16eY1U2/jX8pk5LgFGbvS0ZeLtA29R7kl6bAaroe3HwmnRUwW0y7fKRBuIqtyuJO2sDM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=hOUWBZi9; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-4281d812d3eso38686715e9.3
        for <devicetree@vger.kernel.org>; Sun, 18 Aug 2024 10:30:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1724002207; x=1724607007; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=0SCaR0GRkiuZ3/606Q3dnjpJljwAy9G6Uqg06n8FjTI=;
        b=hOUWBZi9UgiGeemnHBM0Ju51jDjX4gtJ1+Bcq8LXM2tMhwIUTqK6CPTu6SCKrwKiMM
         XXRLpp2SyqYYQwdgJ0k0S7Z/LVet6caDUjxs1m1GTz+glkZyzpFJ8cj3oBafXm9XylZh
         esjdOxtxp2mOEF5kMQDxgviqAAkPjbDejHTLigORmCgtAWq5gtOI89KM/gEt+z+OVtKi
         +DJih0XrVx2MjUWK6Emax1R/RQPrLWJcJ+imwLXOmIXoPFAgbl4/85QSZ4BsFSkVeVVs
         hHRE2/vLxCTtjqvsxdY25RT08RdHjll17R61atn4td3Ycqxg0N4fW2EdTt7tNahZcEtu
         aS8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724002207; x=1724607007;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0SCaR0GRkiuZ3/606Q3dnjpJljwAy9G6Uqg06n8FjTI=;
        b=j6dzoG/crc+03d3cPKLnIkGySBrYJRpkbiLTmjS5lvm8DfCvW8MhVqt9lPocDFbdjK
         OjMMDDdq96JM3hAQBIsPqMsmwUbLUAjcg7FN6cQDDPJKL2wQYeGIiSk31oP7Wg4maBid
         otaj645zn2GdRC03yqyJ6ndzTpDzHulai1DH9//xwuIOll0IQ9uw50jjL3FIuSPAsnSB
         Cye2krpNMv4QMP0TuRbsx3TeuLJtwbOya7FIc3kGKeUrkSvN4MzaK8PCb9GWCuoi1SwK
         NXQpCPxKNcLsFqDxBQ09E3Vs1y9wULuLW7x3lDt7i8JwBT5wHubHIdcVG3A65hUayo8M
         hC6g==
X-Forwarded-Encrypted: i=1; AJvYcCW7+2KURtjG66HryJTuUZzPAGxC5f7L0EXqE42L/1a8F0AQXt553Y27KRPLvnb5qpjxFvacfpr1w5UGD/fJcMeXneNIOO1ReZ3SbQ==
X-Gm-Message-State: AOJu0Yytq02P/wPCvn8JVbW1LjlJVsyu4/PjLnOVjh+9s0k7fdKK3TXG
	8M2DwFpKYnb0+CfUEzrvjT9vtJf/GqmGPJrBuLpIUMrxZWGY0mnk+bp4zzrpBvU=
X-Google-Smtp-Source: AGHT+IFWjUiXv+XY641Ss+KqGOnh9S6DjOSW5fs9xPdNg3xhxyfOeVQlO4q1nl00fAyX1GYXCteCkw==
X-Received: by 2002:a05:600c:3b26:b0:426:6f87:65fc with SMTP id 5b1f17b1804b1-429ed7b6a3dmr70242785e9.17.1724002207227;
        Sun, 18 Aug 2024 10:30:07 -0700 (PDT)
Received: from krzk-bin.. ([178.197.215.209])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-429ded19839sm138973805e9.6.2024.08.18.10.30.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 18 Aug 2024 10:30:06 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	dri-devel@lists.freedesktop.org,
	linux-renesas-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 1/2] dt-bindings: display: renesas,du: narrow interrupts and resets per variants
Date: Sun, 18 Aug 2024 19:30:02 +0200
Message-ID: <20240818173003.122025-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Each variable-length property like interrupts or resets must have fixed
constraints on number of items for given variant in binding.  The
clauses in "if:then:" block should define both limits: upper and lower.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../bindings/display/renesas,du.yaml          | 22 +++++++++++++++++++
 1 file changed, 22 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/renesas,du.yaml b/Documentation/devicetree/bindings/display/renesas,du.yaml
index c5b9e6812bce..147842b6465a 100644
--- a/Documentation/devicetree/bindings/display/renesas,du.yaml
+++ b/Documentation/devicetree/bindings/display/renesas,du.yaml
@@ -173,6 +173,7 @@ allOf:
             - pattern: '^dclkin\.[01]$'
 
         interrupts:
+          minItems: 2
           maxItems: 2
 
         resets:
@@ -228,6 +229,7 @@ allOf:
             - pattern: '^dclkin\.[01]$'
 
         interrupts:
+          minItems: 2
           maxItems: 2
 
         resets:
@@ -281,6 +283,7 @@ allOf:
             - pattern: '^dclkin\.[01]$'
 
         interrupts:
+          minItems: 2
           maxItems: 2
 
         resets:
@@ -335,6 +338,7 @@ allOf:
             - pattern: '^dclkin\.[01]$'
 
         interrupts:
+          minItems: 2
           maxItems: 2
 
         resets:
@@ -396,6 +400,7 @@ allOf:
             - pattern: '^dclkin\.[012]$'
 
         interrupts:
+          minItems: 3
           maxItems: 3
 
         resets:
@@ -460,9 +465,11 @@ allOf:
             - pattern: '^dclkin\.[0123]$'
 
         interrupts:
+          minItems: 4
           maxItems: 4
 
         resets:
+          minItems: 2
           maxItems: 2
 
         reset-names:
@@ -489,9 +496,11 @@ allOf:
 
         renesas,cmms:
           minItems: 4
+          maxItems: 4
 
         renesas,vsps:
           minItems: 4
+          maxItems: 4
 
       required:
         - clock-names
@@ -531,9 +540,11 @@ allOf:
             - pattern: '^dclkin\.[012]$'
 
         interrupts:
+          minItems: 3
           maxItems: 3
 
         resets:
+          minItems: 2
           maxItems: 2
 
         reset-names:
@@ -558,9 +569,11 @@ allOf:
 
         renesas,cmms:
           minItems: 3
+          maxItems: 3
 
         renesas,vsps:
           minItems: 3
+          maxItems: 3
 
       required:
         - clock-names
@@ -600,9 +613,11 @@ allOf:
             - pattern: '^dclkin\.[013]$'
 
         interrupts:
+          minItems: 3
           maxItems: 3
 
         resets:
+          minItems: 2
           maxItems: 2
 
         reset-names:
@@ -627,9 +642,11 @@ allOf:
 
         renesas,cmms:
           minItems: 3
+          maxItems: 3
 
         renesas,vsps:
           minItems: 3
+          maxItems: 3
 
       required:
         - clock-names
@@ -684,6 +701,7 @@ allOf:
 
         renesas,vsps:
           minItems: 1
+          maxItems: 1
 
       required:
         - clock-names
@@ -719,6 +737,7 @@ allOf:
             - pattern: '^dclkin\.[01]$'
 
         interrupts:
+          minItems: 2
           maxItems: 2
 
         resets:
@@ -746,9 +765,11 @@ allOf:
 
         renesas,cmms:
           minItems: 2
+          maxItems: 2
 
         renesas,vsps:
           minItems: 2
+          maxItems: 2
 
       required:
         - clock-names
@@ -799,6 +820,7 @@ allOf:
 
         renesas,vsps:
           minItems: 2
+          maxItems: 2
 
       required:
         - clock-names
-- 
2.43.0


