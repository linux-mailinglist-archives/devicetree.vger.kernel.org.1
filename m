Return-Path: <devicetree+bounces-249525-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 23E03CDCAB1
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 16:22:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C4C6330155FD
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 15:22:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CFF6134D3A4;
	Wed, 24 Dec 2025 15:22:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="kT0VxBN2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00A463446A6
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 15:22:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766589769; cv=none; b=rhvZ+XWtqHL0aZgd7xVJuX3rvGSulzp1F4cLEuQOzKB9W4jrBN/Zjrlos+mfLjesz497BxpCBt0DcJdNr6PoRv667m8rA2dGXjula6h/QTwi4JDvZrHDdfbg+M+8uuLnfCtl9FzLeVWzxbhWiflvJm81aO5WpU/6wEOpN+9S19w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766589769; c=relaxed/simple;
	bh=E76HtQ/wOlk/iTdKNvwcIKzGwEJiphG6wBguNie0bF0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=lPtQO247ig1VppHznDmDS2ulXWP3GhZviiyujVntD5J7NIfa53A3duv3WOIp28otCUZChAgWkiY8QO8j9xzWejJ+VZ/BEp6Uji/JfapQ8cHJ4INYB8TnWXUcqPTTaHCdSXq7Q+Fp3WyDkd417GSVoMYedepRkjmhu/YsZAkVXK8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=kT0VxBN2; arc=none smtp.client-ip=209.85.221.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-42fb4eeb482so3086427f8f.0
        for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 07:22:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1766589763; x=1767194563; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=broTySSYLTvfYQKOi4uFtvxxGHeRyXiGXlc1qJUuO3A=;
        b=kT0VxBN26z8X7X52pg/GlagL459ncI1WlyfiSnSCrOFlFky2GxHeGYxHbb7C9NhoyK
         1i5uPjfg5hFSUzClqefPPWXeUb7BAISPWIs6M8s/NEUu3bQv1Af9Gu/QI5uw/iTqB7TY
         3gPhYp8njMjC/UQ+n52XvnLx6qPgi+OD3Kfws=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766589763; x=1767194563;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=broTySSYLTvfYQKOi4uFtvxxGHeRyXiGXlc1qJUuO3A=;
        b=XXuQZkIsKT94mnmsAqvvVashcV0UKNmlvKUhME6zdFaPBcbYmzglzvySIwV39FVwg7
         amyQpYpmDYNBZgCDnsNTQ1VXSTpgI3x9O8fScg5xfrpCW4/Dy88v4z8A9BJDh0SmmJmI
         w+8W8cfl+Ys+/h4ZfAK4/raqXBY4XbwLOU2GE2LgwNhrb7TKnvc/+xZY/xIJZlHvHJyT
         6m7sQAtfSsce2bXgm6FUgSuT7vkk1PkyzQZXDAifk8pAcRC1Ap0nWtH6T+qfMRLlh7Ok
         2HsYWAP+//RYMTF6Ye7DTB6nQxlmo1UYr+FOTk4+d81OCRdeqAm24Wj35abMkFwFEZV2
         JLFw==
X-Forwarded-Encrypted: i=1; AJvYcCUID1Y1ySH85Y3VSPl4pv85SeK6hkcLohXmolFJpSIVZ/tZt6ywDCGJPGsvUtjmIfik3pcxS4wNJolT@vger.kernel.org
X-Gm-Message-State: AOJu0Yx5bQ73Jx9OQ4Fl+txZ5yIQZ4+QFhUD5C5wYRdhkFdgANrXxpYz
	RDk1l8BhcSuxfP7THbzX6Twp13iB54ZHcdTYSyy0e/EYi80mF/dnBFu3EOccp1LFqdFtKdNMG8k
	qXro=
X-Gm-Gg: AY/fxX79BRNbVl5IAScWs9Dr83vUdF37f9FrvOLCbPDoP5Z5SUeswsMvg+UAMWuMXIA
	KtUqBowhYNMhAQ3yeaS7f+RWh73p89ZVobJS1DKHoJlxKICSx6EGoZ9nM7HjZVHjIBuZTVPm1oG
	Ll5BxoqDlVXQlVQuf7Bhsydzj7R72sqJy0PWtouu4qFOSZ4JRrGn8iAMJBzRX+sWJvo/HRY48vJ
	nhypBDz+i8V475XAltoWmL99n+9VOiPkZRLrIY5xdvYztb8VpTsmDXFUZC3Bz5pcQ3cFSWm86Lp
	VyZGD3A2MgIr0PvIluFE4uTRq10SZRxdFrc8nR2q6DFQLdiXGQL9KIQduvqlVXWWAPF0iO+rGEc
	v5MioC2aly1xqDh39lukddQSh67/ndfH7lbLbv7VOXu13yzcftHDhLst3YhGDiKGj1QPPRgVzPZ
	HDHTDAAFxOZK5rqWY=
X-Google-Smtp-Source: AGHT+IHB446KR9bbT+6fe4P8dhCXUz9efTM0RI8RQnUg/3RKKGMv4Zs6DxHZ83wur1VVBkRdUAUQzA==
X-Received: by 2002:a05:6000:2586:b0:431:84:357 with SMTP id ffacd0b85a97d-4324e4fb143mr21280148f8f.29.1766589763244;
        Wed, 24 Dec 2025 07:22:43 -0800 (PST)
Received: from balto-ws ([37.228.206.31])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4324e9ba877sm34307363f8f.0.2025.12.24.07.22.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Dec 2025 07:22:42 -0800 (PST)
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
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 2/2] dt-bindings: google,cros-ec-keyb: add use-fn-overlay prop
Date: Wed, 24 Dec 2025 15:22:38 +0000
Message-ID: <20251224152238.485415-3-fabiobaltieri@chromium.org>
X-Mailer: git-send-email 2.52.0.351.gbe84eed79e-goog
In-Reply-To: <20251224152238.485415-1-fabiobaltieri@chromium.org>
References: <20251224152238.485415-1-fabiobaltieri@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add binding documentation for the use-fn-overlay property.

Signed-off-by: Fabio Baltieri <fabiobaltieri@chromium.org>
---
 .../bindings/input/google,cros-ec-keyb.yaml   | 25 +++++++++++++++++++
 1 file changed, 25 insertions(+)

diff --git a/Documentation/devicetree/bindings/input/google,cros-ec-keyb.yaml b/Documentation/devicetree/bindings/input/google,cros-ec-keyb.yaml
index fefaaf46a240..437575cdf352 100644
--- a/Documentation/devicetree/bindings/input/google,cros-ec-keyb.yaml
+++ b/Documentation/devicetree/bindings/input/google,cros-ec-keyb.yaml
@@ -44,6 +44,14 @@ properties:
       where the lower 16 bits are reserved. This property is specified only
       when the keyboard has a custom design for the top row keys.
 
+  google,use-fn-overlay:
+    description: |
+      Use a function key overlay. This allows defining an extra set of codes
+      that are sent if a key is pressed while the KEY_FN is held pressed as
+      well. The function codes have to be defined in the linux,keymap property
+      with an offset of keypad,num-rows from the normal ones.
+    type: boolean
+
 dependencies:
   function-row-physmap: [ 'linux,keymap' ]
   google,needs-ghost-filter: [ 'linux,keymap' ]
@@ -132,6 +140,23 @@ examples:
             /* UP      LEFT    */
             0x070b0067 0x070c0069>;
     };
+  - |
+    /* With function keys */
+    #include <dt-bindings/input/input.h>
+    keyboard-controller {
+        compatible = "google,cros-ec-keyb";
+        keypad,num-rows = <8>;
+        keypad,num-columns = <18>;
+        google,use-fn-overlay;
+        linux,keymap = <
+            MATRIX_KEY(0x00, 0x00, KEY_FN)
+            MATRIX_KEY(0x01, 0x00, KEY_1)
+            MATRIX_KEY(0x02, 0x00, KEY_2)
+
+            MATRIX_KEY(8 + 0x01, 0x00, KEY_F1)
+            MATRIX_KEY(8 + 0x02, 0x00, KEY_F2)
+        >;
+    };
   - |
     /* No matrix keyboard, just buttons/switches */
     keyboard-controller {
-- 
2.52.0.351.gbe84eed79e-goog


