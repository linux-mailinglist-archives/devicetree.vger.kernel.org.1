Return-Path: <devicetree+bounces-216967-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id ED60AB569AB
	for <lists+devicetree@lfdr.de>; Sun, 14 Sep 2025 16:18:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 455D3189981D
	for <lists+devicetree@lfdr.de>; Sun, 14 Sep 2025 14:18:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E93B7212569;
	Sun, 14 Sep 2025 14:18:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="bAs78iFo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21CA81E521E
	for <devicetree@vger.kernel.org>; Sun, 14 Sep 2025 14:17:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757859480; cv=none; b=I2WwR8/S6pJYkW5e6o6xYiZzTRpdHaqm2NRuuFV8edqyoqjgiHojSDXICbItQ+8DNDGyHdmJgZYRkCvmd1lbI/Ypmv2/8hk54ic+8kiXbDt2fpBflk0M2b6+167eG+PEjrU2xspIZUUcTwUTEMfyVoCRINQZILCy+Kn/CmCqUqY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757859480; c=relaxed/simple;
	bh=DmOsX7Vf/ilavkrwxUtj9QNM909CJQfFtlFDgRHasuw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ns/ebF32i0b4Ldl19uMoakndaU284yCuODGOkaZ7u6rk0CAfeld+lnxoly3gvb7aPk0gQAuC8ZHIDwqQ8nWQHfZ8Elc5lTVaJDp0idcjevb0aFfeEdqLrQmG0kOuwW/bViXCa84OnpEbNU385zcRWbn8JjoeCrV+y8c3wZt1tvk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=bAs78iFo; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-45f2acb5f42so3165925e9.1
        for <devicetree@vger.kernel.org>; Sun, 14 Sep 2025 07:17:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757859477; x=1758464277; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WLnk4ZbyfQe9FhVo0Iaf0C5FfaSInQx1UG35rxo35j0=;
        b=bAs78iFo5RW2G8RUQ7HG02HMm55yDkHX3miJkXl+rYXg/Wb6tPWjYpndPMUwU8H3R3
         hHsJB8+741YN65AQqOyF1SgbEEqINfmg5kTrblKuGzw//KTfBybI2ZQbiV9ley1NANRV
         98xB5vSNqlew6HeCNIBMUB/jFY+FtqBCfzvnmMu/fGcQ6L1vx5Ka8U/p9FXwQaKDLjEY
         EV0D2Ix80wG91CfX46o79g2/B8V6kaY/tS68EbgGTxc1IW/4N/hhgFBjHRFiN5kIZDaE
         CuLS85e6a7+xlSppknHLwLOlb+qX1FNDMnO6IqfN/HULsrNC34nCrC2VWf3iaZm0mShS
         byJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757859477; x=1758464277;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WLnk4ZbyfQe9FhVo0Iaf0C5FfaSInQx1UG35rxo35j0=;
        b=AtsOZj+zHBM79A2A+5BEBlIPSQpPAgR2dtS3Jh2XExoU1VaPXlj9kKXLPH7dJ38bXf
         FJXKs6PBdjuwAM9YSWHLTWouY5eGDputbmj6qMKoOBYOcaNM92F1iNsKQ8Iq7ujlrA+8
         yDMiuaqUXK9pMXK5DwqJUWWLluAjHTyO2LKn/NmwvtjXMyoeSv2GD3VLcIXmS5iL25k/
         XA97fbAtvebZVtaf0qui3m9DPQmuhSnk0RfCSuainCSdQd+Jkx1O1cw1ufnA0LsTqTpM
         uM05AHMQCcrwHm8FecJjc5ArqPKms6RWpJ1HS+OhXSzXr8aFtQZbkScuvZRem75bUme5
         Yn4Q==
X-Forwarded-Encrypted: i=1; AJvYcCUVp+zEKlG0BJ5TfsOcHUn0jAfpHyzwfc0kHV2zRMNXSGJgdEW8v8XTQ9rKVXpIafeEjo48L0u0E5mS@vger.kernel.org
X-Gm-Message-State: AOJu0YztCcCiFuvf3QN+8bMuU5e0RID9WGQrI8KvTNm4KPA62tQ56Nie
	nHtw3xI8frlNACVGyjz+BbYVFCAyAbQVyJXnj+T57H1W3FCERQBJEOfn
X-Gm-Gg: ASbGncuLhu2tl/WT4rREjwxHNaoVWYh4+i3yY16+5dSn1C80GHHAKjuq5lmpdPx3sEE
	/tYWQ3xJbJeLgMxpwNC9JVv4hp05/bhdo3678FCeLWMYo2cl1BCsAEr/HpQpYNl2HTqA+iWDwHx
	CrUHMQHSaT06YqyyJQcsM01VeyoAmVhXmD//5CLIbkiPbZlxzjhQkE31hBhttYJKSaHYrwT8UAJ
	mZowNGAEBxCbbuI0i1bRfahb6HVyYwl920/DWoem5BdM3M/sPlMtRPFhFFGtsfGbiLkMj6+gDxk
	rN+7eCledfflznY+V/6jc+3OY1NoDw8KZqrNZ86OqhcOI+FCkLs+aBAnNhr6LNKTTPCY9/9ZpE9
	WvTgCK8vfLGVP0SvnezKZF6sCBnFFFhUFF4EkBaVuRcG8nSJf5Z9gpLCC5+DslXmYHDuYZOd9Uw
	==
X-Google-Smtp-Source: AGHT+IGZa2TxgX8agd2exKpvk7TmNbKmYcyR1Hha+oaP27Kljq84rYHxWKx4npcT6+CgUwnc/mAUug==
X-Received: by 2002:a05:600c:40c4:b0:45d:e775:d8b8 with SMTP id 5b1f17b1804b1-45dfd5aaff0mr93879005e9.1.1757859477068;
        Sun, 14 Sep 2025 07:17:57 -0700 (PDT)
Received: from ivaylo-T580.. (91-139-201-119.stz.ddns.bulsat.com. [91.139.201.119])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3e813eb46f3sm7319270f8f.23.2025.09.14.07.17.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 14 Sep 2025 07:17:56 -0700 (PDT)
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
Subject: [PATCH v1 1/2] dt-bindings: phy: samsung,usb3-drd-phy: add exynos8890 support
Date: Sun, 14 Sep 2025 17:17:42 +0300
Message-ID: <20250914141745.2627756-2-ivo.ivanov.ivanov1@gmail.com>
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


