Return-Path: <devicetree+bounces-248375-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id BFE17CD1FD3
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 22:34:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id E487930440E0
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 21:33:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E3F91347FC4;
	Fri, 19 Dec 2025 21:33:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="Stqqz4GK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f52.google.com (mail-ot1-f52.google.com [209.85.210.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8EB80343D60
	for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 21:33:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766180018; cv=none; b=VGNhH3poL9+q4KHW7LVr/fVI7qRMJ8W+DdiSC0x+EumUn/L/4qR6+634JhNxw/Er8TTTbPnl/WsTlWLKmLYHfFMx8DYgrslxSScySBr/NkQ38yYx71OhaQFxuTQx6k0ttfrd0FgoHnA1Gm4ecCKlaVjEXuEXlQyqyweQQioRnv4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766180018; c=relaxed/simple;
	bh=oWBMnPrpGrThotMU9ljfUzKqVANXXO/+7KS1FgC4pbU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=U9BRYrOf0UVplfw8aanZnDcVKjE4cUt0lGaaLEjapwl0ZOQQQ9kQbM//eYjPm5XwweSF+/ku/6Cu+F+SSfN0fLrwjeaRi1Z3nBX3s4dQ2moGfcszcAzzipNPYAoSPTOBn1a0G/XPhanoFT8B9uriebQxPy9cxtMHZFKtQp4GdXY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=Stqqz4GK; arc=none smtp.client-ip=209.85.210.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ot1-f52.google.com with SMTP id 46e09a7af769-7c7545310b8so1145335a34.1
        for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 13:33:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1766180014; x=1766784814; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fFWC+IDcRXjpxDjHpjRJWViF/+dbpWmpywiH9Uy/XS4=;
        b=Stqqz4GKT+59W2DorQQhmiqjT+F3zH3fy0eW9KKs049D5jUlLW2pgnmphlMbxKq+PH
         o5iv4XBZg0JLRfDAsdyJoBdZm1PHHr2WRs66y95h1QClWcO624IbTCwznkmOrQoCr+T8
         sAP4LYvzxUD3RYmAvf7IlK9KGNWXH0hFcroPKzgddZ/xtDTOcp3WZWGs2241SdPnEJAS
         jKaper2njD02W9hkyaam6f6/zseaKc+m1OHXM1A7u9RQxJBNhMBRchrrueUhh9QBWtsA
         4+Wv3sQp6I+IBu5EAQ9iH8Tl7lhWpjnaKWbxFEDE20dzD4wVFj/+sl6kELv2LL5g7voc
         3rig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766180014; x=1766784814;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=fFWC+IDcRXjpxDjHpjRJWViF/+dbpWmpywiH9Uy/XS4=;
        b=Zr7Jgsv9q9Nc33HKa+dq+aaj/+c8uRlTd5eiuNE4ZZWTClnCE1folqlGnbZCHFfhiq
         FdjeQL5pkEQcEzSAhtaOlnFf+0UyKthVY4YvAXv93aDisamnLt4yQlfLKF4GqUFWkCs1
         NDMHi4rLEgair5BybBgdVJk2wrZA1dwokr7udTfCE57bQDfZLSd5/OE/adDJ2mC6QgRf
         GFPQduPhWf1/7O6x0Tj9zaDR6FxMf57wLwzcXy/oIp3oeT/qou0tJIxIaY66xZQdQwt8
         AUobwBYcOs1sQxyuyvcv0g/bdW+YcBrKEX/2pnnu6t3XPOh9dUIQs5TXxiRRfzJeYmow
         OdSQ==
X-Forwarded-Encrypted: i=1; AJvYcCUWdr8tX+jITY+sMKD2/LCqm/tfdJfGc5cy9Od3pxqDuxm8xWJ2FtR4DA9OwETWKynB4pCwfYix0l1/@vger.kernel.org
X-Gm-Message-State: AOJu0YwDPVrM83usq6r6SiCHDCtuy1wZRebZTK7Or/pIF7mYVfLp8x7X
	COx0pyIzIL1T3mrUYe8eYUPQ0yDKMIBeAfPzonuWDV+4mOYRel9TM+Un94SaPohbRK8=
X-Gm-Gg: AY/fxX7zyqNLZGF73mAeg2dDG1W69XNww/5FQ3f1emq7gWJgESCe1sAwa/EqMtY8w0t
	xytPsFSn6ds9Gc8loiRnzyr+dHnziQR/Aph1D8HzosEcQGzvTCK7zmykWLNP2zhwpxHrBnXWH1H
	h7edXBDlHzLBO065GtbSrogTlbH49kFPlfSvxmpxGwPeUW9/L+9bg4TC0Rw7plhewENFPBtWg6e
	mUUoynRz+fpbpvwG5ODT/tA3Go6J+X9eFlIZNKkl6Kc7/PzXxdBv51PMsEDeXbZP54l0uUJAC8k
	JgSMfyPXsuz/zNM7GSoQ8MomN4IeC87+wIu6qz8Nh352Wr9jIeiWaYXNoAPWssFgU6xueoOcBae
	lDNYFAfgo45p4v2l1W2oODRx8M7KIGDuJl830YbE8Ojd6rPG/TDSGpgpMnEtrVqDTKmAf5jtYWY
	q+Tjcr45zYSU8aFA==
X-Google-Smtp-Source: AGHT+IFSpfHhi8xxfC0/N+lQDDvFqU6CV+t6PQI2c4qXO1CuJXBevV+MJgay8gDTRAmgQdttKD28IA==
X-Received: by 2002:a05:6830:3698:b0:745:4823:df18 with SMTP id 46e09a7af769-7cc66a468ebmr2322063a34.28.1766180014080;
        Fri, 19 Dec 2025 13:33:34 -0800 (PST)
Received: from [127.0.1.1] ([2600:8803:e7e4:500:9b20:bac4:9680:435])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7cc667563ffsm2485045a34.13.2025.12.19.13.33.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Dec 2025 13:33:33 -0800 (PST)
From: David Lechner <dlechner@baylibre.com>
Date: Fri, 19 Dec 2025 15:32:14 -0600
Subject: [PATCH v4 6/9] spi: dt-bindings: adi,axi-spi-engine: add
 multi-lane support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251219-spi-add-multi-bus-support-v4-6-145dc5204cd8@baylibre.com>
References: <20251219-spi-add-multi-bus-support-v4-0-145dc5204cd8@baylibre.com>
In-Reply-To: <20251219-spi-add-multi-bus-support-v4-0-145dc5204cd8@baylibre.com>
To: Mark Brown <broonie@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Marcelo Schmitt <marcelo.schmitt@analog.com>, 
 Michael Hennerich <michael.hennerich@analog.com>, 
 =?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>, 
 Jonathan Cameron <jic23@kernel.org>, Andy Shevchenko <andy@kernel.org>
Cc: Sean Anderson <sean.anderson@linux.dev>, linux-spi@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-iio@vger.kernel.org, David Lechner <dlechner@baylibre.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1281; i=dlechner@baylibre.com;
 h=from:subject:message-id; bh=oWBMnPrpGrThotMU9ljfUzKqVANXXO/+7KS1FgC4pbU=;
 b=owEBbQGS/pANAwAKAcLMIAH/AY/AAcsmYgBpRcSLtwISQYxTcnaJJr2o02veAMLBoy2FoWzP5
 60rfky7QuyJATMEAAEKAB0WIQTsGNmeYg6D1pzYaJjCzCAB/wGPwAUCaUXEiwAKCRDCzCAB/wGP
 wIPTB/9h97F8n43Ys3AHntQjx9qaoojBkCy4jOBYYNtyayieVmxE5ACYWaMaGe0VbWRtbg5cNtG
 N9065hQHhag+a0u1tEMj/gyZUGofi1OnwAReLtytYmoqF1T9hn+pfYdGDGGvIPHz7xyup90RHf5
 F5vr+KcwTBI3Hi4UJBiWh3gHE+8mz2UtsneF9YnL1n14coim2fEolihN9D2HMP/+qmTSkAHf4NT
 tIQCLkRZRDgAi8zWG84QPH3arkcvPwoxGdPC5Mde9Di/kP8W1RWAfMJZHuI5KFPs6fHquv2zsBJ
 eUVTihWS6VP4QkML2tUJheSYh6rHcoz/wlW5EHTdrq4Rnay4
X-Developer-Key: i=dlechner@baylibre.com; a=openpgp;
 fpr=8A73D82A6A1F509907F373881F8AF88C82F77C03

Extend the ADI AXI SPI engine binding for multiple data lanes. This SPI
controller has a capability to read multiple data words at the same
time (e.g. for use with simultaneous sampling ADCs). The current FPGA
implementation can support up to 8 data lanes at a time (depending on a
compile-time configuration option).

Signed-off-by: David Lechner <dlechner@baylibre.com>
---
v4 changes:
- Update to use spi-{tx,rx}-bus-width properties.
---
 .../devicetree/bindings/spi/adi,axi-spi-engine.yaml       | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/Documentation/devicetree/bindings/spi/adi,axi-spi-engine.yaml b/Documentation/devicetree/bindings/spi/adi,axi-spi-engine.yaml
index 4b3828eda6cb..0f2448371f17 100644
--- a/Documentation/devicetree/bindings/spi/adi,axi-spi-engine.yaml
+++ b/Documentation/devicetree/bindings/spi/adi,axi-spi-engine.yaml
@@ -70,6 +70,21 @@ required:
 
 unevaluatedProperties: false
 
+patternProperties:
+  "^.*@[0-9a-f]+":
+    type: object
+
+    properties:
+      spi-rx-bus-width:
+        maxItems: 8
+        items:
+          enum: [0, 1]
+
+      spi-tx-bus-width:
+        maxItems: 8
+        items:
+          enum: [0, 1]
+
 examples:
   - |
     spi@44a00000 {

-- 
2.43.0


