Return-Path: <devicetree+bounces-121415-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 02DFA9C6B03
	for <lists+devicetree@lfdr.de>; Wed, 13 Nov 2024 09:55:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 7908FB250B5
	for <lists+devicetree@lfdr.de>; Wed, 13 Nov 2024 08:55:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DD5B218C353;
	Wed, 13 Nov 2024 08:54:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nigauri-org.20230601.gappssmtp.com header.i=@nigauri-org.20230601.gappssmtp.com header.b="Se6mNcP9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f178.google.com (mail-pl1-f178.google.com [209.85.214.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC4D718C026
	for <devicetree@vger.kernel.org>; Wed, 13 Nov 2024 08:54:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731488074; cv=none; b=dYf7VYmGn3aUmvSQCOE/ND/zfjGIPgcvh9MBwOEsQcTKUH/KQxtePcea29so24OXLmNFbgabYlfEa7kXTsKh2YkT1YFgELLH0kmXGX9RIlsNHFBinVz8K94ERE5O+ay9uD3HmJW7L3XY5nYaPeuwy475p+6PizpsBXMDyXWB1Xk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731488074; c=relaxed/simple;
	bh=FjrJkjs8/lO/BOHm3tJ/5Gaj44x6NJ0bnzkY8/DgKfw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=lY2tbYIoyoON3ACrfbdyo0yMiqUmlrHwlYm3FB8W6w7918v7Oz6a3Bjru3OVQenUKbrazg5yPAKd3Yq3Ikc/Q4sRgEoHBGBO+pQ/CdnwEHItml7u8fwTc07hCt9u5D1aX1q3l9T690A1i65hQVSEKxcssLzOpcw9/WbNTwAdDDM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=nigauri.org; spf=none smtp.mailfrom=nigauri.org; dkim=pass (2048-bit key) header.d=nigauri-org.20230601.gappssmtp.com header.i=@nigauri-org.20230601.gappssmtp.com header.b=Se6mNcP9; arc=none smtp.client-ip=209.85.214.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=nigauri.org
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=nigauri.org
Received: by mail-pl1-f178.google.com with SMTP id d9443c01a7336-21145812538so61149705ad.0
        for <devicetree@vger.kernel.org>; Wed, 13 Nov 2024 00:54:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nigauri-org.20230601.gappssmtp.com; s=20230601; t=1731488072; x=1732092872; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RE8fjpX1Eb1RavtBPTEOqHq6IlPTdZrinGpmm0IJQSk=;
        b=Se6mNcP9TVa1GMzuVQdfvWNWO7CkWFZ5B1MS7yyH3Osk1OvFiOvt2XWtIAqJe4s0QA
         sUpLgVQa3+YzF+7pv5o8weA/eeQ7hckvvjrBrC2E8m2H/06tPAzD8p7TNPVHeKtvCWrr
         orqhNVBzn3URaSypCRTI2RfJJSNj9Qkcqfx/4h3WzcRqZrPJ9mHDDfjqxipx+yIqe1Pf
         Xb29wyLTp6O52iWw5BbLuTJryx1WFeTc6DWLsAriVstuGWDzyhEwx9bY5EvtKLkKNIZl
         TtbZiZCFt/mSIKgYiWaoVqhmheqXIzda2w2kQq9JygJtlQAzta2pRGPMwMogrYpptq9T
         AIQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731488072; x=1732092872;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RE8fjpX1Eb1RavtBPTEOqHq6IlPTdZrinGpmm0IJQSk=;
        b=oGai8oLP61lhhcm0F0cvz3RFviH1Y3ZkeIqO3ONo1lqass5yrB4e2E9W7UsUMxqY5p
         WgvEOXNABxTP8tR3FhkVTcgJ1Co9HHTJ2/VWL5S1YtlqoltLje5MC3YYwwQHrs+63DGz
         PPIeqsdz1n6eTA0/CSViTG5EwPZN8f38Ad2zn+J6uErfOFnBBepywotlXsW0+jcmLpcc
         Y0lEpiTFFYX6JX7iVgXsea58FsUeveYsO3RkbKkwVhNkOUA5j4xkOWiq2wbKSKPZmbNW
         HdN15i5R4zkr705Sd/RzstRPkjj+Aa3AZksSjCu8uIxvwYIINqSK30TRqEj37t2UxDrS
         1Uhw==
X-Forwarded-Encrypted: i=1; AJvYcCUHydElUhYBiYAYmbJQH3fp7uBU5L6DdwFsjbHBOzqtMKKMK7UUu+LL2AyATbmzXimKfX3bes1eFqGe@vger.kernel.org
X-Gm-Message-State: AOJu0Yy2wKd+cG0Kq0QYzeJ754ziHDXrgXHD129uzgaoLPFh4QXMbbTk
	5YYj+yvEyVZRO9s023GhcEdgfjrZj5vC2PG3A1O4mbNH328q1wqi9A6od9No
X-Google-Smtp-Source: AGHT+IEt+6DU2EbmOYoC0dtzfG72lfI52C3DG6Nlz1YJ5vBiydCt6vOeAd0bjW9+oe2ZO+9WdDqEag==
X-Received: by 2002:a17:902:ec8d:b0:20c:c9db:7c45 with SMTP id d9443c01a7336-21183c9b37fmr271466235ad.20.1731488072379;
        Wed, 13 Nov 2024 00:54:32 -0800 (PST)
Received: from localhost ([2405:6581:5360:1800:a83:68dd:5f1c:4ed9])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-21177e62dd4sm105302895ad.218.2024.11.13.00.54.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Nov 2024 00:54:31 -0800 (PST)
From: Nobuhiro Iwamatsu <iwamatsu@nigauri.org>
To: linux-rtc@vger.kernel.org,
	Alexandre Belloni <alexandre.belloni@bootlin.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Arnd Bergmann <arnd@arndb.de>,
	Olof Johansson <olof@lixom.net>
Cc: linux-amlogic@lists.infradead.org,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Kevin Hilman <khilman@baylibre.com>,
	Jerome Brunet <jbrunet@baylibre.com>,
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
	linux-kernel@vger.kernel.org,
	Heiko Stuebner <heiko@sntech.de>,
	Nobuhiro Iwamatsu <iwamatsu@nigauri.org>
Subject: [PATCH 3/5] dt-bindings: rtc: pcf8563: Add Haoyu HYM8563 compatibility
Date: Wed, 13 Nov 2024 17:53:53 +0900
Message-ID: <20241113085355.1972607-4-iwamatsu@nigauri.org>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241113085355.1972607-1-iwamatsu@nigauri.org>
References: <20241113085355.1972607-1-iwamatsu@nigauri.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Haoyu HYM8563 is compatible with pcf8563 with '#clock-cells'.

Signed-off-by: Nobuhiro Iwamatsu <iwamatsu@nigauri.org>
---
 .../devicetree/bindings/rtc/nxp,pcf8563.yaml   | 18 ++++++++++++++----
 1 file changed, 14 insertions(+), 4 deletions(-)

diff --git a/Documentation/devicetree/bindings/rtc/nxp,pcf8563.yaml b/Documentation/devicetree/bindings/rtc/nxp,pcf8563.yaml
index 22909a96123e58..54c45bf3075b6a 100644
--- a/Documentation/devicetree/bindings/rtc/nxp,pcf8563.yaml
+++ b/Documentation/devicetree/bindings/rtc/nxp,pcf8563.yaml
@@ -4,14 +4,11 @@
 $id: http://devicetree.org/schemas/rtc/nxp,pcf8563.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Philips PCF8563/Epson RTC8564 Real Time Clock
+title: Philips PCF8563/Epson RTC8564, Haoyu Microelectronics HYM8563 Real Time Clock
 
 maintainers:
   - Alexandre Belloni <alexandre.belloni@bootlin.com>
 
-allOf:
-  - $ref: rtc.yaml#
-
 properties:
   compatible:
     enum:
@@ -19,6 +16,7 @@ properties:
       - microcrystal,rv8564
       - nxp,pca8565
       - nxp,pcf8563
+      - haoyu,hym8563
 
   reg:
     maxItems: 1
@@ -39,6 +37,18 @@ required:
   - compatible
   - reg
 
+allOf:
+  - $ref: rtc.yaml#
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: haoyu,hym8563
+    then:
+      required:
+        - "#clock-cells"
+
 additionalProperties: false
 
 examples:
-- 
2.45.2


