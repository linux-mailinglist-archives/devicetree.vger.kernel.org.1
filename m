Return-Path: <devicetree+bounces-94559-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B27AA955E29
	for <lists+devicetree@lfdr.de>; Sun, 18 Aug 2024 19:32:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6F1EC28165B
	for <lists+devicetree@lfdr.de>; Sun, 18 Aug 2024 17:32:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 89BD9155352;
	Sun, 18 Aug 2024 17:30:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="HuPbivBB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7AD3153598
	for <devicetree@vger.kernel.org>; Sun, 18 Aug 2024 17:30:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724002212; cv=none; b=EAOIghufWZnq2UU5uLwSTLmRVXer3rYaeDwoaz1bKDh1Jw6G6XvYmpJ6j9mFWnHK9KNUWhY7ihfQIFd2b/koctGD+OM8hDzpAz4QUzY7/ZmQkB8YyfyLpnAShn4/f+19yO3cUr0KxfSdOEdwwgQYAwIusmotOpecdVbAyrSmHoI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724002212; c=relaxed/simple;
	bh=ai8EcGvn1f5e3r+Qw9M6ElJt0rT1l/Pl133/TWP4dFs=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=t0zJJ87dZIK+dMa4lTS7MZ0T5HOrRFDhk9jztQeN4MNlyGmipEtTRw90VHzgIzPQN+GltR7/8uFRg54jx6Qibx8SQGVGCHVTk1B/nB+o29bC5wpee5O70m9Ks4U+5dSl5hRucEr661kCPAZFVWaBz1fTL089q7gsJuBk09maL70=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=HuPbivBB; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-428141be2ddso26905945e9.2
        for <devicetree@vger.kernel.org>; Sun, 18 Aug 2024 10:30:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1724002209; x=1724607009; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bzVXqaruIBhv+u4Ahnh+PsR/HVOCMt8ptVRPRgst13E=;
        b=HuPbivBBQL6g5oRdJe3Y/ckl54+YjmviaKo0vFW/GLlcJyA8EmqmO6COUEgXYrH9Tx
         LwM2sl2MUfSlbqRFFBqo2yqAnPft1CrlPcJbTZv1y1QIaVt54Y2sQ5cYkgVL93iBJDUA
         1XvdMdZNbxioHauV9YjPmZ5bGuj1SYcYZx4T69sYcExJtJoHtE34Kg88YkgIW0gIUz89
         hiOxO8CKhUUFEldyfMFxtCSbrAOAvTeDYz7BLE9Q5tiDJt3QKhdRJCrlR1XZ3NaRnPsF
         2AHtruQuQuWFRwGwZ0YR8n7+jN2GIW+RVq6eYxMqXmha+RPQcxkkr+oMEEPgrfDd3E9N
         7WSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724002209; x=1724607009;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bzVXqaruIBhv+u4Ahnh+PsR/HVOCMt8ptVRPRgst13E=;
        b=teNwyBwlvWuEo9jwMnuZIzUpqznxHat70KwIo5brazbCszl/KAQ6GXb80WrZJVQJQi
         BJCXvzg4lcVl2UFlve2J0b1yOKkuiYHK72Xw33iNtjqQm00BuVy5VT/84wyUh+0Z1fNx
         ZdyDfYiwgnevltCTNuILQNs+ifjkUg4w7qJhHM3kOr45gNyjVOtsfcJL0Y1QnaTDHPk+
         QbOLOcZwz9VISKX1k3iA8mlv0B11dSnSJU4YoDrzQ+xxMqwF+motP7ApeYglJDtu2lZg
         01yl0sLbh7KyeKGj6OdXMxy9BiVu/93Y8k4F8pvUBOyTBqVwC1dZ1S0Ootnn+r9RfPF3
         ltGw==
X-Forwarded-Encrypted: i=1; AJvYcCUqAX+DL5s6ZNww1dpI+Q4pDTmlwPLoTNmwbzUyqI6G4crZinyjGvGdI2pvVlMAIu1dTyb4mXY6GjR3pBaLZNwjHnz3KS1aastKNg==
X-Gm-Message-State: AOJu0YwXbG3yMpG9ijGq+yybA3Xcqgmh3ZiV+lJ6NzXWxbg722O5YmEF
	OO36uTRJNj+/RM3W6KbC7yBtjX93zPZ61bXnKsWrBl+HKB+CqJAMLj1zDs1HVzY=
X-Google-Smtp-Source: AGHT+IGy7uAdpT03IoTiHZdekgN7fKpPoq4+ZutDJaQOeuK+lQ2OB3OCj0nEBWkOrVAoBuCSlVRxXA==
X-Received: by 2002:adf:e907:0:b0:367:2945:4093 with SMTP id ffacd0b85a97d-371946a43damr4969916f8f.40.1724002208973;
        Sun, 18 Aug 2024 10:30:08 -0700 (PDT)
Received: from krzk-bin.. ([178.197.215.209])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-429ded19839sm138973805e9.6.2024.08.18.10.30.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 18 Aug 2024 10:30:08 -0700 (PDT)
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
Subject: [PATCH 2/2] dt-bindings: display: renesas,du: add top-level constraints
Date: Sun, 18 Aug 2024 19:30:03 +0200
Message-ID: <20240818173003.122025-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240818173003.122025-1-krzysztof.kozlowski@linaro.org>
References: <20240818173003.122025-1-krzysztof.kozlowski@linaro.org>
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
for clocks, clock-names, interrupts, resets, reset-names, renesas,cmms
and renesas,vsps.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../bindings/display/renesas,du.yaml          | 26 ++++++++++++++++---
 1 file changed, 22 insertions(+), 4 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/renesas,du.yaml b/Documentation/devicetree/bindings/display/renesas,du.yaml
index 147842b6465a..9a2d1c08cb1f 100644
--- a/Documentation/devicetree/bindings/display/renesas,du.yaml
+++ b/Documentation/devicetree/bindings/display/renesas,du.yaml
@@ -46,12 +46,26 @@ properties:
     maxItems: 1
 
   # See compatible-specific constraints below.
-  clocks: true
-  clock-names: true
+  clocks:
+    minItems: 1
+    maxItems: 8
+
+  clock-names:
+    minItems: 1
+    maxItems: 8
+
   interrupts:
+    minItems: 1
+    maxItems: 4
     description: Interrupt specifiers, one per DU channel
-  resets: true
-  reset-names: true
+
+  resets:
+    minItems: 1
+    maxItems: 2
+
+  reset-names:
+    minItems: 1
+    maxItems: 2
 
   power-domains:
     maxItems: 1
@@ -77,6 +91,8 @@ properties:
 
   renesas,cmms:
     $ref: /schemas/types.yaml#/definitions/phandle-array
+    minItems: 2
+    maxItems: 4
     items:
       maxItems: 1
     description:
@@ -85,6 +101,8 @@ properties:
 
   renesas,vsps:
     $ref: /schemas/types.yaml#/definitions/phandle-array
+    minItems: 1
+    maxItems: 4
     items:
       items:
         - description: phandle to VSP instance that serves the DU channel
-- 
2.43.0


