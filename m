Return-Path: <devicetree+bounces-216969-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CB657B569B0
	for <lists+devicetree@lfdr.de>; Sun, 14 Sep 2025 16:18:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 29ECD17A51A
	for <lists+devicetree@lfdr.de>; Sun, 14 Sep 2025 14:18:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 47FE522127E;
	Sun, 14 Sep 2025 14:18:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="lEgFIYxg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 665B1215F5C
	for <devicetree@vger.kernel.org>; Sun, 14 Sep 2025 14:18:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757859483; cv=none; b=KugKNG7cOdlE9NX126fgo3Pt112x2BYykp8XUJreRDPZl9IKb9x1uvHxGdyJ/YKzQtggCAyNf3GL3RDPhjtTri3vQyS428Jf0+DTMZzz7GS6akowD7VxMZEEnlKEw0n89HAcFE1Uk2kl5QsFmwfaTQR+rXo8bVNIaGg3qdqQVcA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757859483; c=relaxed/simple;
	bh=DmOsX7Vf/ilavkrwxUtj9QNM909CJQfFtlFDgRHasuw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=VTDZqnQnm58ZoTUSag5upVOfQb8keYGvqRmVdQaNzBbN/apVcqPrd/rysp7z/UssBYsMdLJk1UmvWGxbelhd+fAGejiOZQR1bh1IvWf3v0SOJfP7ABEwUTZ9cxrmYXJ4aYUPsyJX6dsNcWr7rc8ebRNcx9SRz3EnUpX6zogpPPo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=lEgFIYxg; arc=none smtp.client-ip=209.85.221.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f49.google.com with SMTP id ffacd0b85a97d-3e4b5aee522so2007646f8f.1
        for <devicetree@vger.kernel.org>; Sun, 14 Sep 2025 07:18:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757859480; x=1758464280; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WLnk4ZbyfQe9FhVo0Iaf0C5FfaSInQx1UG35rxo35j0=;
        b=lEgFIYxgLGHYqJn+ddhQ28oIZ/tjQi5GuPHuzoxr+Bn289qSDM276yQyFigIXMPG8L
         419MkelxiTX8SXCa0ngobbcKxNqUdomev6m4ZmRy7r0Os9YxTkJl4RRXW2ttzm+sS4zS
         9IEyF7ffKYegwSe99ElP7IO4xVr8kelRwbnu8iJtfJL4Z9hehRE3DLomRaRQlntbFUf0
         FitHnEM2c3we7suSR/9BdVIktzdXKqbeeqRkTBKaoWoK9VM5Vq9+briz/pu1j7MJHgTt
         vQtFL6OKPs59/xfRZOar+Rt99oO9PBz/cuSAyC88KuhP8jQi03wsyC6/EhNBXpkvEYKL
         915g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757859480; x=1758464280;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WLnk4ZbyfQe9FhVo0Iaf0C5FfaSInQx1UG35rxo35j0=;
        b=ncpByoCbCdZJY/8jLapnKv89DjwBTIKJMeFGW7mq3g5tHxYFeV9WkaxoMuzrIRMRdj
         RseboSiQJ6Yti2LOsrl0diamNlJBR6Fiu5yKiKzuvR9Cz+xY60PAvhDXn4JNkkh2uQdD
         W/NnL/+9R+fqdiwt7QaI/Vb0WAurraxuA6FAXxKKaNIxQYhIxBnV56ZEKX7PfuseUszj
         1H4GoxWr4WdeJPSHLQHhHZGC1MaSqIbgmq7ZD8TY/aZdjZtokrSBX8kAwTC/6a9GoqBQ
         fAyKQgViPlwfcBbkOFxDBNLUKEXbpes/+jr/SFRSupUdH9JDHcSr8u2EDOJYfy0M4Gmr
         Q8UA==
X-Forwarded-Encrypted: i=1; AJvYcCUeXZA7Sz2pOf3/E2B9ccTkemASXtECAQ7R+wa8Th0ba9EaoOZKsEReLHPqXqCgicCorag3+0t7qsAf@vger.kernel.org
X-Gm-Message-State: AOJu0YwFK1E6A6wEejgX8IQpWZ004R8YrMKSrGtzRfcog2gqU/n+T+Lg
	muZhhJzoW1HCyQV3MFcpCSXYjN6b4OcUU8b5AuKzds0pyIqnP9dhhCX7
X-Gm-Gg: ASbGncuKhpnOJHoi57WT8Kmd5OXnF4pk7rydAFwjjNDB3j3d7cEBEo7GYkzn2kC/uAa
	jJEedgqjTCIhUB+8kY9cJdPyuRFuhOhfx+q0gMWtgiWczXi/kS1TTwAN+8qlNCeW6U0DAFXjvFy
	H+SfE1cAql8hv9f/DwzYZ68+KDAoRpop+OibLLZOLpCcc98mCVOiFUyBpEhs0AgI6HwrI2BVKOJ
	ei6qPBlDvWR2l3j67B3tKwB48iQqmkbkvgrSh06LTkdTK2Z5TCGpHdNv6pbEO5mU3o2L1QhD/ys
	I08SQF/8xfbxETTHBRK/GSdBhiLOl4+aMWy0ccEXQWZKUtngAh3GBnnHspzcJ84FNIsD2B1EwUw
	lqw6fOaHWlZ1NXZcSohHidcKcuXQKdS2NvS7Il21u7IBJsYVxnxhkD6ai4AUh7SgW7nGGJtgVYJ
	D8A+dmnUqI
X-Google-Smtp-Source: AGHT+IGob/FXoyz3+A1gJIBnwRTgWRN15gu4QTGHa/hPMhwPvI0q1Q0NHBycPN6rl7zOaTPDOVjCoA==
X-Received: by 2002:a05:6000:22c7:b0:3e1:1cfc:ee90 with SMTP id ffacd0b85a97d-3e7659c4a5bmr6355341f8f.30.1757859479650;
        Sun, 14 Sep 2025 07:17:59 -0700 (PDT)
Received: from ivaylo-T580.. (91-139-201-119.stz.ddns.bulsat.com. [91.139.201.119])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3e813eb46f3sm7319270f8f.23.2025.09.14.07.17.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 14 Sep 2025 07:17:59 -0700 (PDT)
From: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
To: Krzysztof Kozlowski <krzk@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Marek Szyprowski <m.szyprowski@samsung.com>,
	Sylwester Nawrocki <s.nawrocki@samsung.com>
Cc: linux-samsung-soc@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v1 2/2] dt-bindings: phy: samsung,usb3-drd-phy: add exynos8890 support
Date: Sun, 14 Sep 2025 17:17:44 +0300
Message-ID: <20250914141745.2627756-4-ivo.ivanov.ivanov1@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250914141745.2627756-1-ivo.ivanov.ivanov1@gmail.com>
References: <20250914141745.2627756-1-ivo.ivanov.ivanov1@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The exynos8890 SoC features two dwc3 controllers with one USBDRD and
one USBHOST controller. Document compatible for the USBDRD one.

Signed-off-by: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
---
 .../bindings/phy/samsung,usb3-drd-phy.yaml    | 25 +++++++++++++++++++
 1 file changed, 25 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/samsung,usb3-drd-phy.yaml b/Documentation/devicetree/bindings/phy/samsung,usb3-drd-phy.yaml
index e90640320..2b1544baf 100644
--- a/Documentation/devicetree/bindings/phy/samsung,usb3-drd-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/samsung,usb3-drd-phy.yaml
@@ -33,6 +33,7 @@ properties:
       - samsung,exynos7-usbdrd-phy
       - samsung,exynos7870-usbdrd-phy
       - samsung,exynos850-usbdrd-phy
+      - samsung,exynos8890-usbdrd-phy
       - samsung,exynos990-usbdrd-phy
 
   clocks:
@@ -209,6 +210,30 @@ allOf:
         reg-names:
           maxItems: 1
 
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - samsung,exynos8890-usbdrd-phy
+    then:
+      properties:
+        clocks:
+          minItems: 3
+          maxItems: 3
+
+        clock-names:
+          items:
+            - const: phy
+            - const: ref
+            - const: pipe
+
+        reg:
+          maxItems: 1
+
+        reg-names:
+          maxItems: 1
+
   - if:
       properties:
         compatible:
-- 
2.43.0


