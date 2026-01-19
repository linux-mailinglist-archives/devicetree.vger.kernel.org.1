Return-Path: <devicetree+bounces-257067-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 57150D3B6E6
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 20:11:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id F2A3B3067DEC
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 19:08:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2166739282A;
	Mon, 19 Jan 2026 19:08:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="gnbDmoS1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C65638FF16
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 19:08:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768849695; cv=none; b=n529vO27kzlqckgxJKDaJ8wLk7jgOzNINlDae1Xhs39qmpZykAX6efSx4mPwyjVWwR49c2uecdglA0b88NOodGnyZSIUJKEpcNqTpyjy+4ya2hdXckSfvRGxnvYkb+QrV4GBAxYXfpK5+il8J67eqqIzmWqO3/D2Ux7ZM7OIVcQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768849695; c=relaxed/simple;
	bh=ISqsKDoXGCE7uargYNsShdMm0Y5qbCliuVj3rq0dN/o=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=hrbmaCbpdjWqBiOwEK+60t242alepGXvzL/TnwfMloMA91cVUikGj2yDWkMcCNt5ET0WpTDAOdZnkiyeDhEKyWnCgfLLyiiTf49HyC2JvvWFBGe2c4Noaq0RYHeK8Gyua5y1eWzNCNasZpVEvGLWlPKK0LBI4ZA/TxfquGd2oUk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=gnbDmoS1; arc=none smtp.client-ip=209.85.218.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f51.google.com with SMTP id a640c23a62f3a-b876c0d5318so628379066b.0
        for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 11:08:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768849692; x=1769454492; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=J52ytgfbeFADZKDw62J7y5/K+5VVfpLFyRp/PpNxx+0=;
        b=gnbDmoS1WA/HqV0J1PbvQT3w51c5FOUIQELciYPw/hAAv5tF1i6Ht6FGoSyF73TJBL
         vGcl1eeCUVddqc5TU5FLx4QA8XQpYkpTHtSnuwg9p67/D+UsN05YQpJUgiPr4doCHfet
         kz0EnsM+qP4CJwW083vi4lCp3JJ+JWECp0meDAC/GwwXT7vQAyYSU+6AM0k7cQi+nPWs
         ZB9iuF36PAitWvC4YL1OY/HlQLkj7XN/E9ZbtSJsqFRUv3s6XieUON7prIxpGR0bPTHe
         9d180ocqU2UF5cy9Rv+2ubvJSV0w1N+9/4iL5kaadVbR6Yf6GxS7ahqWfCJS/GzW4wZr
         hTwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768849692; x=1769454492;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=J52ytgfbeFADZKDw62J7y5/K+5VVfpLFyRp/PpNxx+0=;
        b=ArJ8eVdeM/RU0w/8+bYFy0VN1tddIa0BXAApJEc6mqRUjtfwEXFmtcVMRPkIvfpsUZ
         VsZixCUrepVExOtIb1V8HidlxiVREr/cAYaiGZXX9ujq3SlERpVZMKWQ7rNr7UK/U5eF
         huqy8P5qYxSdo59nfeqGbZOTvs6Z0g7trVKN7ult6G+7vqwTF8Ezag+V5DeD1afgc+jN
         uNLSCqI8DL3yMbTuUvdnIlaSlGZu7PG2VBeqIbyAaPYXM+gUBxavx7HOzxp1kOgIE6Gn
         WcazX86pKDy6YW7WPQj61HzFQ/5pHDI30ZvtSr4IN7OfDYYWRe/eSuZE+ZzcjxwMmBYn
         tzOw==
X-Gm-Message-State: AOJu0YzbArOaDp4ugwsDRQslFKkltuyAE1LJGrw1oHsJP3GB6Vr+ilxa
	nslHuEE60wunFpR9kjF1ebkrls8OJg4gUmvFGBQaqQy/wzK2L2pJRgxX
X-Gm-Gg: AY/fxX5L2Xhq7+B4Z8U7ymhCWzY07TjSPGiZ9B3fXthVYefNxG5T3STQONNyFxOxbll
	msfPaH+vwDr2l/suDixIwp6i3KCVQpSaVx0LBmT/ubK6IuY2p3zvP2Kb9C1EWIAtdAGYziRNPOS
	cwVHndyFJDLN78cCpT/yco7x+CACSGnhG6YOYrasWIbALtFVkhublu6Vd4f2Glxm8DwLAJnzQhn
	uObQRrtA/nKv8vdWTI9HwG6bfyq13k/+5e90VSvBd0DsEF241mKRs8SRouQOxo18dZTGDXdZ7SC
	rXNRNEQaQKXDw4uUpx1L2L1KM3C2x3NtU1Up9dIxb/FSr96G116PU3unZUZgipb3d+BoCjOGJxP
	rl8qAVqDim5TfmlicFwMybb3zV2HE6JNErPYors78cl/kErJTNX7OMhY6nadATBbDJiGT0jMbib
	uVyP+sv2DWWYVe+XvEXw1Hi+j8wQUhqMaxCQ==
X-Received: by 2002:a17:907:1c9c:b0:b87:39d:2bb4 with SMTP id a640c23a62f3a-b8793028f6fmr1108598866b.59.1768849691548;
        Mon, 19 Jan 2026 11:08:11 -0800 (PST)
Received: from vamoirid-laptop.. ([2a04:ee41:82:7577:a4c5:86fc:3b16:bc0a])
        by smtp.googlemail.com with ESMTPSA id a640c23a62f3a-b87959ca32esm1193767366b.41.2026.01.19.11.08.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Jan 2026 11:08:11 -0800 (PST)
From: Vasileios Amoiridis <vassilisamir@gmail.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux@roeck-us.net
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-hwmon@vger.kernel.org,
	linux-doc@vger.kernel.org,
	Vasileios Amoiridis <vasileios.amoiridis@cern.ch>,
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: [PATCH v2 1/2] dt-bindings: trivial-devices: Add hitron,hac300s
Date: Mon, 19 Jan 2026 20:08:05 +0100
Message-ID: <20260119190806.35276-2-vassilisamir@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260119190806.35276-1-vassilisamir@gmail.com>
References: <20260119190806.35276-1-vassilisamir@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Vasileios Amoiridis <vasileios.amoiridis@cern.ch>

Add HiTRON HAC300S PSU to trivial devices since it is simple PMBUS
capable device.

Since this is the first supported device from this vendor, document its
name to the vendor-prefixes.yaml file as well.

Signed-off-by: Vasileios Amoiridis <vasileios.amoiridis@cern.ch>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/trivial-devices.yaml | 2 ++
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 2 files changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/trivial-devices.yaml b/Documentation/devicetree/bindings/trivial-devices.yaml
index d0f7dbf15d6f..efa1957948a5 100644
--- a/Documentation/devicetree/bindings/trivial-devices.yaml
+++ b/Documentation/devicetree/bindings/trivial-devices.yaml
@@ -123,6 +123,8 @@ properties:
           - fsl,mma8450
             # MPR121: Proximity Capacitive Touch Sensor Controller
           - fsl,mpr121
+            # HiTRON AC/DC CompactPCI Power Supply
+          - hitron,hac300s
             # Honeywell Humidicon HIH-6130 humidity/temperature sensor
           - honeywell,hi6130
             # IBM Common Form Factor Power Supply Versions (all versions)
diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index c7591b2aec2a..fdb11141e597 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -701,6 +701,8 @@ patternProperties:
     description: Hitachi Ltd.
   "^hitex,.*":
     description: Hitex Development Tools
+  "^hitron,.*":
+    description: HiTRON Electronics Corporation
   "^holt,.*":
     description: Holt Integrated Circuits, Inc.
   "^holtek,.*":
-- 
2.47.3


