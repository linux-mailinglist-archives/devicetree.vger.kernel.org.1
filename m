Return-Path: <devicetree+bounces-245402-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CAB2CB074F
	for <lists+devicetree@lfdr.de>; Tue, 09 Dec 2025 16:48:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 92132307DA45
	for <lists+devicetree@lfdr.de>; Tue,  9 Dec 2025 15:47:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 037F42FF156;
	Tue,  9 Dec 2025 15:47:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="kWQBMqKD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF1A827F759
	for <devicetree@vger.kernel.org>; Tue,  9 Dec 2025 15:47:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765295239; cv=none; b=JECVRH7QIQUCZXonRITLsChI52UCaxCdGX3qKIWbdUQr0SxNbP6WsbTWbo1uoIzRshLH7rizGVt/FkjnW8JjlfbbayQCSk43a7zv2Mj0z+0xX1iUxxxV13JyNHBpXeVcSTmyfBmu9ejRFJc+dTdo8alJBUJV6nLgI5A9mdwJ0ZQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765295239; c=relaxed/simple;
	bh=Mf0n1LHXScTwDCBqeKr4+XmfEBe8ouhRSTBuNlOqDjo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=NeYqi2PFOdP5ALb1AOzzLUh7KRXbb3CuUDYO0SI6t3v2srIDuwh5bgXFIhSmrPLsdhlEM9S3wASKKBG7cuFAIfrGUukptxjfg7xHVN2O00KZu2OhwE3r4G1T+DDSfAStNj1ZTNPe2J6InZz2kKOXwx7keF0JO/ecmS6gmk68keI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=kWQBMqKD; arc=none smtp.client-ip=209.85.221.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-42e2e6aa22fso2759193f8f.2
        for <devicetree@vger.kernel.org>; Tue, 09 Dec 2025 07:47:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1765295235; x=1765900035; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ddxV9ehu0GXJ9iiWNjTlWwirsEs0puBXrIAVzil+rQM=;
        b=kWQBMqKD402nuq8b35mqJ5CHUQmg/0HA9OEanCp/7buLTcPRfkekqTLA5RL9cwiLBn
         +ES3yPIgieoqiEp6eDQEtio2IR1LmXhlfHarXljfqdgxJ1UMYLMLEjSzu5tG1UR1D+wk
         gcnCrHrxcbaAdm3sLQIWXjqGacolkvL2Uz/4o=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765295235; x=1765900035;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=ddxV9ehu0GXJ9iiWNjTlWwirsEs0puBXrIAVzil+rQM=;
        b=bKBwXPqqOwdfBn9sWAGAbZB0wOKC0nZZ32VyeOZ+PzK1jN6kHyCPtko2LFUiXNRHVa
         kkAFUOvxbia4kBGhfvlitXu6aK/ouZ1n+6v8HMDmv0exAuDZsYh4oPMDwYWUUCIP8e32
         ogjRNMBsu71iI4FDBrW0ewtWUKEcZgoPigVgR4F7yxLlzpsQUE7tqZKAfAVxY1Mp1uFk
         ehoXOpNXcpai0VP3iLwWhzNbG+/xtnf6QcsGKL3WdICjXVrCcW3ZZnUD8Pgc04b6bwZv
         L/OAU9SR2AZg0rvTi7k53qeyaClvtHdBv3PZoF1ip5EXAB0TBchO+6HkF9RD8A311pco
         M92Q==
X-Forwarded-Encrypted: i=1; AJvYcCUmb2PAJvPXSitawgVSItnkYe8ybKUrv4ABIRNLTEJND8wY/XqzliO4dishir21Gc9Q2sSwjBmVOWLI@vger.kernel.org
X-Gm-Message-State: AOJu0YzbGLUP6ovGKUHM/BUIg5YO1qpAppqb6sw8gOyZbOzqsyBRweYe
	uNIVEJxuG7dWTZumxJS/W7S4B9os76UOBQK/3seSf3/zGs7kj6wR/2/KYp7L+qIg/g==
X-Gm-Gg: AY/fxX5rukaYA1XquWtzPQeO40iaZ+u/LIGgf4NFSdzVPZLqvd5q66dnngd3w9iOVFG
	Qfmk1eZG4WWZVYxYgEmUvSI/9nZPAHIhlhtcyP4y47dsJbEPSZ6k3Qn2R1JQNDPIxXlGbMlObz0
	6ZvGO4jUSwtN6VahSLA1gHflYOz6sBqes7NnuR5H3k81QGmeXv1/g4AUce2WWABjARSFVkG1s5/
	CbuHgZVVYSSoLGcwnaK447J0GY3PaPe13xGQxnrhYiKd0KkYcjW6NbMc8XzXTFszPazOVXocn6Q
	9aqKrD4wfdhvWfGjJqWKua132m9FCYobQtTPE4cFvvlOoqx8lFAcwnrmWL9ggzEqgu+owWPoaTD
	/ie58860/9UYChwEqGVFBNYopCt1An1RALArIUOuh7GxMOVro+jYdrxNmgcT4HaQ4XrPwxQIzIO
	FkwvW/UxI346DwGwFxm09Wtv3pyw==
X-Google-Smtp-Source: AGHT+IEKi6UxypeqPOH+18lDVXZJpB4iIoiaagxsyYSesPihG4eCl/CaHPqW6Gig0ydpspXkZ+fjYQ==
X-Received: by 2002:a5d:5850:0:b0:429:b9bc:e826 with SMTP id ffacd0b85a97d-42f89f6e838mr12441377f8f.53.1765295235028;
        Tue, 09 Dec 2025 07:47:15 -0800 (PST)
Received: from balto-ws ([37.228.206.31])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42f7d353c9esm31097881f8f.40.2025.12.09.07.47.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Dec 2025 07:47:14 -0800 (PST)
From: Fabio Baltieri <fabiobaltieri@chromium.org>
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Benson Leung <bleung@chromium.org>,
	Guenter Roeck <groeck@chromium.org>
Cc: Fabio Baltieri <fabiobaltieri@chromium.org>,
	Tzung-Bi Shih <tzungbi@kernel.org>,
	Simon Glass <sjg@chromium.org>,
	linux-input@vger.kernel.org,
	devicetree@vger.kernel.org,
	chrome-platform@lists.linux.dev,
	linux-kernel@vger.kernel.orga
Subject: [PATCH v1 3/3] dt-bindings: google,cros-ec-keyb: add fn-key and f-keymap props
Date: Tue,  9 Dec 2025 15:47:06 +0000
Message-ID: <20251209154706.529784-4-fabiobaltieri@chromium.org>
X-Mailer: git-send-email 2.52.0.223.gf5cc29aaa4-goog
In-Reply-To: <20251209154706.529784-1-fabiobaltieri@chromium.org>
References: <20251209154706.529784-1-fabiobaltieri@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add binding documentation for the fn-key and fn-keymap properties,
verify that the two new properties are either both preseent or none.

Signed-off-by: Fabio Baltieri <fabiobaltieri@chromium.org>
---
 .../bindings/input/google,cros-ec-keyb.yaml   | 60 +++++++++++++++----
 1 file changed, 49 insertions(+), 11 deletions(-)

diff --git a/Documentation/devicetree/bindings/input/google,cros-ec-keyb.yaml b/Documentation/devicetree/bindings/input/google,cros-ec-keyb.yaml
index fefaaf46a240..56adf9026010 100644
--- a/Documentation/devicetree/bindings/input/google,cros-ec-keyb.yaml
+++ b/Documentation/devicetree/bindings/input/google,cros-ec-keyb.yaml
@@ -44,6 +44,20 @@ properties:
       where the lower 16 bits are reserved. This property is specified only
       when the keyboard has a custom design for the top row keys.
 
+  fn-key:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description: |
+      An u32 containing the coordinate of the Fn key, use the MATRIX_KEY(row,
+      col, code) macro, code is ignored.
+
+  fn-keymap:
+    $ref: /schemas/types.yaml#/definitions/uint32-array
+    minItems: 1
+    maxItems: 32
+    description: |
+      An array of u32 mapping the row, column and codes for the function keys,
+      use the MATRIX_KEY macro to define the elements.
+
 dependencies:
   function-row-physmap: [ 'linux,keymap' ]
   google,needs-ghost-filter: [ 'linux,keymap' ]
@@ -51,17 +65,28 @@ dependencies:
 required:
   - compatible
 
-if:
-  properties:
-    compatible:
-      contains:
-        const: google,cros-ec-keyb
-then:
-  $ref: /schemas/input/matrix-keymap.yaml#
-  required:
-    - keypad,num-rows
-    - keypad,num-columns
-    - linux,keymap
+allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: google,cros-ec-keyb
+    then:
+      $ref: /schemas/input/matrix-keymap.yaml#
+      required:
+        - keypad,num-rows
+        - keypad,num-columns
+        - linux,keymap
+  - if:
+      anyOf:
+        - required:
+          - fn-key
+        - required:
+          - fn-keymap
+    then:
+      required:
+        - fn-key
+        - fn-keymap
 
 unevaluatedProperties: false
 
@@ -132,6 +157,19 @@ examples:
             /* UP      LEFT    */
             0x070b0067 0x070c0069>;
     };
+    fn-key = <MATRIX_KEY(0x04, 0x0a, 0)>;
+    fn-keymap = <
+            MATRIX_KEY(0x00, 0x02, KEY_F1)  /* T1 */
+            MATRIX_KEY(0x03, 0x02, KEY_F2)  /* T2 */
+            MATRIX_KEY(0x02, 0x02, KEY_F3)  /* T3 */
+            MATRIX_KEY(0x01, 0x02, KEY_F4)  /* T4 */
+            MATRIX_KEY(0x04, 0x04, KEY_F5)  /* T5 */
+            MATRIX_KEY(0x02, 0x04, KEY_F6)  /* T6 */
+            MATRIX_KEY(0x01, 0x04, KEY_F7)  /* T7 */
+            MATRIX_KEY(0x02, 0x0b, KEY_F8)  /* T8 */
+            MATRIX_KEY(0x01, 0x09, KEY_F9)  /* T9 */
+            MATRIX_KEY(0x00, 0x04, KEY_F10) /* T10 */
+    >;
   - |
     /* No matrix keyboard, just buttons/switches */
     keyboard-controller {
-- 
2.52.0.223.gf5cc29aaa4-goog


