Return-Path: <devicetree+bounces-94556-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B2748955E1E
	for <lists+devicetree@lfdr.de>; Sun, 18 Aug 2024 19:31:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6FBC4281651
	for <lists+devicetree@lfdr.de>; Sun, 18 Aug 2024 17:31:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D86F7158DCC;
	Sun, 18 Aug 2024 17:29:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="j5sXNqW3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35827158D8D
	for <devicetree@vger.kernel.org>; Sun, 18 Aug 2024 17:29:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724002185; cv=none; b=mItA3wVvxDljli3vCVdHg+Ojv018e4QaZlHcFzo7CgqOO873RSyxkrSFNe4h9zg5YROhTdGj4fcBqYU0aRV16OhI+Fhq7wSpluZCR63T+LVNkPfrQETeQ4Ec2FeUySLJHZlhTdG6VZ3RCF1FKL9nfNRBUfLq8q9T9Hh6fFzPkfs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724002185; c=relaxed/simple;
	bh=QNM8XrDoLyxO8QrplQys76QoUHuBhx5cFyImCS2xftE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=T16/aBDAXNGBbOUqHFfFrDvkAXnfohlUNNbPqr2xJrfaExSCiipM6vwVBFkkTfWBM3bc+gEOwM+3tiUq7KpzVQ3Y6tbPgk4tmtf0PwXOl1qD08gAy2PLxOAhCDTWCt8UgY4LpaTzvw+oUvA2ElTekV/BuZj6c3jPNt7xwGkDYCo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=j5sXNqW3; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-4280bca3960so31042085e9.3
        for <devicetree@vger.kernel.org>; Sun, 18 Aug 2024 10:29:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1724002182; x=1724606982; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=o+LvAPeMNmcVxWf/O9PUXhk3hF91siyLCuBckMkIHMM=;
        b=j5sXNqW3+ifeujsmUNrqKZ0gabZIjYaBhP1c0mpzEB/GNPlPDhdkMgeafEcIIMMLBI
         qjqPae072Ag2tWuDsiTHxuxCbZuJUcL4K5SwnCnGa1TfsuuAlECEuuKqUZQwatLve3/4
         JR4+3OmQovMmQkyflK03hy5hDD6XycRadhFqsHEWss8OGs9x4fzRFiPrMsefrqPk69e5
         cJajfl5GtVMxJvFyipfs5rorZ8kMCtc/0qrEzlkeJM/atXEp8RqkZOdWBEiWsA8C+qEA
         7Oya6IU+RIvYh3XFqUKFXGrWB5BBzbWV3FXKdAyIiSme25vXxCUgm9ksXPO774dGQw5R
         TWeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724002182; x=1724606982;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=o+LvAPeMNmcVxWf/O9PUXhk3hF91siyLCuBckMkIHMM=;
        b=tD84XPg9193ocDLhqM3TY6EBI9D0uODKlGkLUfcTBN0GX7GoaGtkopUXzBszZidKWo
         unJCTsHkJ/88z+V0S5Ey8RejcOpoEDNen7/+nf9/fizRdU4BXOUk9BX3d/LAizsLUoBe
         rYi8avVVae1JQa06w4TLAGS8+v6Wces67LzdbP0NQKTijZjk7/7ZXEgQqh+93eik36EV
         zUT4mPKEw0wJDGyNWfAElKLjkEHQkSVhaSSqnP077zxOevA5/xFIERHL6/zBvZACV3SG
         /6xdWfdd6IlpNo6ciEPpbG7iGPxB6miZHnuT8aQxr2GJLgtozeVrhthlz55cxh1UfFgg
         CRxg==
X-Forwarded-Encrypted: i=1; AJvYcCVVRiI7u88j6UykNtcTE63+AGjF57YvECEZqceTKZjNWmkZrV+fQsPxAscTsTnGhI1woei6YNqmRRxQHa/F90q9TVSzO4KNgmz9PA==
X-Gm-Message-State: AOJu0YxCGpAItjvcim9/vIPDADRtia0U4H4ZvDfoIxjAnbGsa7eVxJ9F
	9YrBnwRyscK2D0ruf4u6o6L1LX4KzKnI0eYZN4z1VNMtfg3JwXtbChkcTNEW5hA=
X-Google-Smtp-Source: AGHT+IF8i+fXJ0Qrg98bFngXom9Apje+WExMZ0DCNmKN+9aMo2M7gbBQQTCYC8dV5MiuQlqhPluOXA==
X-Received: by 2002:a05:600c:4f96:b0:428:16a0:1c3f with SMTP id 5b1f17b1804b1-429ed7da74emr55372845e9.32.1724002182565;
        Sun, 18 Aug 2024 10:29:42 -0700 (PDT)
Received: from krzk-bin.. ([178.197.215.209])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-429ded2931asm133974385e9.17.2024.08.18.10.29.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 18 Aug 2024 10:29:41 -0700 (PDT)
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
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 2/2] media: dt-bindings: renesas,vsp1: add top-level constraints
Date: Sun, 18 Aug 2024 19:29:37 +0200
Message-ID: <20240818172937.121928-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240818172937.121928-1-krzysztof.kozlowski@linaro.org>
References: <20240818172937.121928-1-krzysztof.kozlowski@linaro.org>
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

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../devicetree/bindings/media/renesas,vsp1.yaml  | 16 +++++++++-------
 1 file changed, 9 insertions(+), 7 deletions(-)

diff --git a/Documentation/devicetree/bindings/media/renesas,vsp1.yaml b/Documentation/devicetree/bindings/media/renesas,vsp1.yaml
index 3265e922647c..94c0ab9a5be2 100644
--- a/Documentation/devicetree/bindings/media/renesas,vsp1.yaml
+++ b/Documentation/devicetree/bindings/media/renesas,vsp1.yaml
@@ -32,8 +32,15 @@ properties:
   interrupts:
     maxItems: 1
 
-  clocks: true
-  clock-names: true
+  clocks:
+    minItems: 1
+    maxItems: 3
+
+  clock-names:
+    items:
+      - const: aclk
+      - const: pclk
+      - const: vclk
 
   power-domains:
     maxItems: 1
@@ -81,11 +88,6 @@ allOf:
             - description: Main clock
             - description: Register access clock
             - description: Video clock
-        clock-names:
-          items:
-            - const: aclk
-            - const: pclk
-            - const: vclk
       required:
         - clock-names
     else:
-- 
2.43.0


