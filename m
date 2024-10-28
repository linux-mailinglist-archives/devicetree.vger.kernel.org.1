Return-Path: <devicetree+bounces-116601-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id B2F3E9B35D3
	for <lists+devicetree@lfdr.de>; Mon, 28 Oct 2024 17:08:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E4C1D1C218EC
	for <lists+devicetree@lfdr.de>; Mon, 28 Oct 2024 16:08:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A2FA21DED6B;
	Mon, 28 Oct 2024 16:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="vl9nvToY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 580871DE894
	for <devicetree@vger.kernel.org>; Mon, 28 Oct 2024 16:08:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730131696; cv=none; b=dHPV6dpoWsDWoQZkAGFXDHIPDUbiYyjOFBJntXqqGdYY5igSHJ55p7V2RyOtKDWY6lmaiLi3lD78ywXbx9T58P6498H1R2b5edeqhjLe8hZ0drNCK1KWKL1lPCSBblcjNDjThOEcR3MQgL2AZvMSlYgLNNv7t9xP0SpFS84I7Tc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730131696; c=relaxed/simple;
	bh=Q3QxaUlS/XDU3QA4rjyNh1tlJnHYfuWKrZr+wanO8+8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=XjT7IftWGz36pG0Gsi1YLmQV0CEHIpG1g372aWz+u2TIIPpY++W9W7xRa2UTHE/0F4S0RfB9w5r+tynnXnlni328M5A/OoFssV7Z0KP7ALQuvk+HCWozQ5JTygEHzH3vwC6qbiYDygwa6G8YopLVbhdKqV80PD7NhDOsOFfgm6M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=vl9nvToY; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-431695fa98bso43961945e9.3
        for <devicetree@vger.kernel.org>; Mon, 28 Oct 2024 09:08:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1730131692; x=1730736492; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=n29IoiTPJrF6OYmF+KobxTlTWl3cfGwoPoCGp5OEkQg=;
        b=vl9nvToYMY4xKEq+1xZEPqf0eQ7TXT2I0X4DfaUkP9oaJp7CbOjL6tW5R192jaWX9Y
         aPJcOkMc4n+DK1CZ8NUhJqL/JfAug/cVq6s+eShvScKxMzL/XCCE0iQoynXYXpveZDpS
         g3b+4AYLGKz+T8uS7JN7R1F9h0nDYoESIb+LwcgDBF0hxBsQb5uLCvpeJnCy1afwXI5U
         9yryOHi8FXF1yj54Dsf9Dl5WYHQq8PuhSig4lLFEiZ2Xfy/Xy9ynTf0WZsJlUP1NE+pW
         LxR3I/OFALBc8e1hxMwXfI0QwIqNwG606q1I0QfeMsaCT1ywj7zK0dUZFts35rQePucs
         MHLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730131692; x=1730736492;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=n29IoiTPJrF6OYmF+KobxTlTWl3cfGwoPoCGp5OEkQg=;
        b=TQWSpKJuvkTfhoL4U8y6Hv0/uVKJxsRVdlo5AYH3IN64v4XEcsopAyEhMPQy6IUlp5
         I6umlV0iuojb8KaRhS/wj4jxLJz9KAiGNhciLzW7NC1to+cGJo2Htanprlb2CuJwgRAI
         fRPrVmhDLedoPgusnoLOjXJZhdACV+h1v3PatMdwVwghewiiV3wnNlPIkt1oRIWMxS+c
         xtzTVdkJt4EZUAQqFRjYdpc4Pcca9LRO9KApt2yJMA7DK8Bj1vEzU3/7mWDe2X9qeYn5
         8AdEZkgRUuPwjBbpzAGXa6oQuosaciP2JbEiHimyH3xScWQHAVrWfKX3HtvwT8Z+dV9Y
         /iqQ==
X-Gm-Message-State: AOJu0YwefugRrrN0+ITt89nIYezEzQKua/wUvfP+VlD2Qrwlx1bksVqm
	JjurzDoW2x869BwnIBULFUZBq22Jbn2VNWELdPMfzAgHoSdpjb5f4f32gOySuV4=
X-Google-Smtp-Source: AGHT+IGTTNwM36u4ehcBdBp1E2Z/jZ/FarkrASZnPHpMcpoVz+dZV2l3GUoiuK00QJpdOItCIGtw0Q==
X-Received: by 2002:a05:600c:5249:b0:431:6052:48c3 with SMTP id 5b1f17b1804b1-4319acacd6amr94080325e9.16.1730131692517;
        Mon, 28 Oct 2024 09:08:12 -0700 (PDT)
Received: from localhost (p200300f65f0c3200f401bf2b6011cd64.dip0.t-ipconnect.de. [2003:f6:5f0c:3200:f401:bf2b:6011:cd64])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4318b56742asm144128975e9.21.2024.10.28.09.08.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Oct 2024 09:08:12 -0700 (PDT)
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Conor Dooley <conor+dt@kernel.org>,
	David Lechner <dlechner@baylibre.com>,
	Dumitru Ceclan <dumitru.ceclan@analog.com>,
	Jonathan Cameron <jic23@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Lars-Peter Clausen <lars@metafoo.de>,
	Michael Hennerich <Michael.Hennerich@analog.com>,
	Nuno Sa <nuno.sa@analog.com>,
	Rob Herring <robh@kernel.org>
Cc: devicetree@vger.kernel.org,
	linux-iio@vger.kernel.org
Subject: [PATCH v2 1/4] dt-bindings: iio: adc: adi,ad7124: Use symbolic name for interrupt flag
Date: Mon, 28 Oct 2024 17:07:50 +0100
Message-ID: <20241028160748.489596-7-u.kleine-koenig@baylibre.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241028160748.489596-6-u.kleine-koenig@baylibre.com>
References: <20241028160748.489596-6-u.kleine-koenig@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
X-Developer-Signature: v=1; a=openpgp-sha256; l=1174; i=u.kleine-koenig@baylibre.com; h=from:subject; bh=Q3QxaUlS/XDU3QA4rjyNh1tlJnHYfuWKrZr+wanO8+8=; b=owEBbQGS/pANAwAKAY+A+1h9Ev5OAcsmYgBnH7bYmzg7DGHXywqSl6SFLbA8pR5lew2ru+9u+ uVbFRciR4iJATMEAAEKAB0WIQQ/gaxpOnoeWYmt/tOPgPtYfRL+TgUCZx+22AAKCRCPgPtYfRL+ TntkB/90uPk+646Eeixz6qfjHKuMuMJglRGThG9GTrZ7MJUv4wxWwmpShyMvEcs43GAEztdWeqG XRfdic1Q/4XebS1GCR7mCiG12IGnqK8xild+9xjKadZ+9imkrDtZxrQbzyaaGnUs8okTQGDnkQl jlqBKwbChv1TIJgWPJXyR6PQoQrP1SkDGZMhuRooWMzJieL8u8JY6lPXSfvPxkN4/NjlsYaG4v+ x5dajhmSeTPd7dKUepQU65M03zR2ufbuC+DYRfioEOZ5BDylqoJzBNgP//yDrShys2m1yiLr2BQ xHNcX25V8f771TNBYllxelcT0ZCbt2Ahpkz4spKLk101fXm/
X-Developer-Key: i=u.kleine-koenig@baylibre.com; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
Content-Transfer-Encoding: 8bit

Using IRQ_TYPE_EDGE_FALLING instead of 2 makes the example easier to
understand for a human (and adds only little more effort for a parser).

Signed-off-by: Uwe Kleine-König <u.kleine-koenig@baylibre.com>
---
 Documentation/devicetree/bindings/iio/adc/adi,ad7124.yaml | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/iio/adc/adi,ad7124.yaml b/Documentation/devicetree/bindings/iio/adc/adi,ad7124.yaml
index 35ed04350e28..de49b571bd57 100644
--- a/Documentation/devicetree/bindings/iio/adc/adi,ad7124.yaml
+++ b/Documentation/devicetree/bindings/iio/adc/adi,ad7124.yaml
@@ -111,6 +111,7 @@ unevaluatedProperties: false
 
 examples:
   - |
+    #include <dt-bindings/interrupt-controller/irq.h>
     spi {
       #address-cells = <1>;
       #size-cells = <0>;
@@ -119,7 +120,7 @@ examples:
         compatible = "adi,ad7124-4";
         reg = <0>;
         spi-max-frequency = <5000000>;
-        interrupts = <25 2>;
+        interrupts = <25 IRQ_TYPE_EDGE_FALLING>;
         interrupt-parent = <&gpio>;
         refin1-supply = <&adc_vref>;
         clocks = <&ad7124_mclk>;
-- 
2.45.2


