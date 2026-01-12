Return-Path: <devicetree+bounces-254134-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id EB8B6D14941
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 18:54:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id AAB4A30336CA
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 17:46:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3F99F37F729;
	Mon, 12 Jan 2026 17:46:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="OGPsEen7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f41.google.com (mail-oa1-f41.google.com [209.85.160.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A14C037F0E4
	for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 17:46:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768240002; cv=none; b=ExW5WGWtdiujH5Pp7wBzLueno831CvZdt9Cwna4F6JmkO7nEHUj7T54GGMOrXdjnNTfzTVFY5EvTkotac49QUq9v3+1+DCkgXfi9/1M2G92g9g+cB/cWQB9vhG6hUKFjhFmhE3x6SqeufLbp4ybMvg7S5ddBKFP17j5smDLc4FQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768240002; c=relaxed/simple;
	bh=KlpbRpvD0BSmL1SYy0IyvDDu/2WAX2DYojcAy5Sk6+M=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=b84rE0frxiB+g/iOcPY6cMh6kN5PorNOi2a61+MHSTQtmcIXuX8c3ywyvpVI7DH/jU90AA7KPY8UWgIu1bpKziRoYIzb4R1GxZWZjTnZeoX1KVfPhBG3uibeqwp03mWChw+tacjD+ISWRyJK6WZyoJspBkiVBf6B1dzuhEEwwxM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=OGPsEen7; arc=none smtp.client-ip=209.85.160.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oa1-f41.google.com with SMTP id 586e51a60fabf-3ec5df386acso5052980fac.1
        for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 09:46:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1768239996; x=1768844796; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mU6bnMq3EmI2XeZnFFH//hp7bqUfjnvQ/avju2H44Rw=;
        b=OGPsEen7nV4GBn6VqBGPEVVsdg/F8a+aukipfe0cujF8IIZMva+cXNxtV8BuSN7xwX
         QGqiTr5/MonkSUGJpq1Yd//ZR72GIrxzN2zbiv6BdBZOuiJhp3NXg7PlGVKbwjg5chGm
         9S4MqeNShB9h0cc9uFpqv/76rROI3epLlogoCdPsjFejyfKnnplCY2B8VC7CpQVweS7V
         B9Qu0CDhvogtenZlGSHFf9AfudIliGc4j2Rg/NKIEGfq/Lu5g17AjIZAjihvPJ8WrS7y
         GeIGqsrimCDwfJ4JLLKgY6uhve5N43YayMglGw4ArXluKc2lHFfrysYHRtnq1aOpKazs
         js/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768239996; x=1768844796;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=mU6bnMq3EmI2XeZnFFH//hp7bqUfjnvQ/avju2H44Rw=;
        b=oYx6txlAYcohaO8VPF8A/csbI+i1TK3lfGMcTOKAckc82Ckc3OdpwIsCJMpExAnIir
         3YYHoqKcuiEcqJKdMpkVt9IPoaEkLqFcJ0HLLkitGE8tvaZ/4AUt7AGbQ4T1EM2tEetD
         i+rTTqb2AtOaYW1WmkfmO9JlMhwnp25EU/mY+U4bZzNGkmy+ugN4TzE24i1HkKUKPM6x
         8OWmXIYRkUvx4LE8BpalNMCQ1VH+PvvXdlAP1wtR/guNE1g41vAkeTuPzZQbhJugfyhO
         pzQ2xk7e4WGokA/iGLrBlc2qYfNm9jbfCvexuILUt4edhOc9lKojqMD6JnLAHkonIOva
         RQEQ==
X-Forwarded-Encrypted: i=1; AJvYcCWfpfymJk268uPpthZRSRAmpgAKj3wYnGvQLvtafFN/N7sMz46qzc+bqni2KvEJMIwN71zaF4LL1Dta@vger.kernel.org
X-Gm-Message-State: AOJu0YxddEyPxnyMSob60WNM22K6WV7gEyIfQd5Po0pwvMd8XvzgEaKR
	WYlnkeFvbNtwkhcxB413O525D44jI8W/szu5n8HGUKdMw3HxD2GNuBInGL0vccjafsc=
X-Gm-Gg: AY/fxX72AT5EeYrC0PYr4EQurCPnbPoWBvpBA1uEe4YC/aTTBqTIfelKPwHH1ikbnfJ
	Z2Ri35T2JSloYpfMkyNJqQO/Ju6LtDDa3PxeTqLAsUbyLe79qUvci8KkcbCcqU5Sem1sfLVbNZB
	tEWar5tG7P5BHvBiL8GRZfNq52qyvNrPWGCliRBbwQoRo+AvMu2OkK6VeKPogSFVTNxKeVylUVP
	31WNdbDfrt19oPw/haNILV9a3gMmosaFgQTJTw5BXAc1gl1mdiWa0/aIKQiZHO+EDMC2LXMii4B
	7Xq6BONbqCHmhyzSWm0oFwvQBv+NPPNQMjUSh+1VMTHVl09PuDxOIVCumWceDMgQ/JMHuoS4O4n
	Sg0Imd4H5InefelFyJS7wqgTIWV3w8iBpnoAO5NiAbIgrmsBTzLnkq6UvYUu5jgbYfgrijeKUYT
	yl3UH77iUsH4GWnVk=
X-Google-Smtp-Source: AGHT+IEoDfvB28hK9nvIn7bly6V8L98WTUCLULaRDTDsMotN3hhYZkKeJoYlkt8txzlE5PHsMwnoEA==
X-Received: by 2002:a05:6870:d150:b0:3e8:970e:d4f7 with SMTP id 586e51a60fabf-3ffc095696dmr9253589fac.11.1768239996408;
        Mon, 12 Jan 2026 09:46:36 -0800 (PST)
Received: from [127.0.1.1] ([2600:8803:e7e4:500:6b4b:49b3:cce5:b58f])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-3ffa4de40bfsm12126941fac.5.2026.01.12.09.46.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Jan 2026 09:46:36 -0800 (PST)
From: David Lechner <dlechner@baylibre.com>
Date: Mon, 12 Jan 2026 11:45:24 -0600
Subject: [PATCH v5 6/9] spi: dt-bindings: adi,axi-spi-engine: add
 multi-lane support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260112-spi-add-multi-bus-support-v5-6-295f4f09f6ba@baylibre.com>
References: <20260112-spi-add-multi-bus-support-v5-0-295f4f09f6ba@baylibre.com>
In-Reply-To: <20260112-spi-add-multi-bus-support-v5-0-295f4f09f6ba@baylibre.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1331; i=dlechner@baylibre.com;
 h=from:subject:message-id; bh=KlpbRpvD0BSmL1SYy0IyvDDu/2WAX2DYojcAy5Sk6+M=;
 b=owEBbQGS/pANAwAKAcLMIAH/AY/AAcsmYgBpZTNYgNXHsHZkBPsP2wHJV6l7Q+Q4YK7WwSBEr
 xb1sQH57cSJATMEAAEKAB0WIQTsGNmeYg6D1pzYaJjCzCAB/wGPwAUCaWUzWAAKCRDCzCAB/wGP
 wJI2B/96Lv7i7q6RWevbLE8Rmrou7N4xap8Vn8Jff8Ps0Uvn3C4CAUrctWCdZcvNPsJEZqAjQ9S
 vh5wpwGsWM91OYZK7TgeBhfWxsQIp3EYma/HtpDjr79jp9hZg0j9WGH0KuRbCWbiYaXEpqMH1vM
 ogxcAKVXjr2l6YrbieImvZA8WFRiExDA6ZRff3wtnEIY7IJ0crxdZC1E6lC+CPa4t0HLO6D5+V0
 F6pl8zUWzk1wDZHJs5WeR9dVaXhRwQYWADcIWqcRX+1pS76NXbta819oX8NZGTOY57JuMWhrSlG
 +17xFPFU1CrQStpdhJXI5mtxkmWqMNwdIs0suUb+v0mU2Ara
X-Developer-Key: i=dlechner@baylibre.com; a=openpgp;
 fpr=8A73D82A6A1F509907F373881F8AF88C82F77C03

Extend the ADI AXI SPI engine binding for multiple data lanes. This SPI
controller has a capability to read multiple data words at the same
time (e.g. for use with simultaneous sampling ADCs). The current FPGA
implementation can support up to 8 data lanes at a time (depending on a
compile-time configuration option).

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
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


