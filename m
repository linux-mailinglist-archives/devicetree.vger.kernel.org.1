Return-Path: <devicetree+bounces-254132-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 77F38D1487B
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 18:51:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E30CD3046438
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 17:46:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6C76137F0EC;
	Mon, 12 Jan 2026 17:46:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="sD5cKPWc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f54.google.com (mail-oa1-f54.google.com [209.85.160.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B620F30F7F9
	for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 17:46:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768240000; cv=none; b=e3UzC0dXpDVr9V4pWzZedwYvgUZ3vzSWDS/KM4XQn66cUvVf7jObISBkN474doU8m+9LwnhUAmMqWHijAWDMQGujXgTURyHmy8jhzLHeIkoqWVMEpy+BveqoZhvlVKZ9XvytW1avFnqs5+Ch6dLx8g5uma+RkUVySC5rICSAuVs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768240000; c=relaxed/simple;
	bh=tZ1gVB3H8yXnnq8oO3CvMZarToXPlUChHiU/VJKv9/w=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=puLxdWO+gVUNB6R3DJwGiw9XpRDECZjesXYSNue4bBxeMlCUMDGjACRyFi9C8Pk5YzSz1YfiSFRWS4/76jY6DphmpZZV0h5INGaeGCSrCbxIDQGj794JyOwVDSzqqxV9eU42bbGrq7ZVrHq1GRVjR+VXJ2p/VDETgg/Wx96QZk0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=sD5cKPWc; arc=none smtp.client-ip=209.85.160.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oa1-f54.google.com with SMTP id 586e51a60fabf-3f9ebb269c3so3088558fac.3
        for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 09:46:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1768239990; x=1768844790; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=sqlipSAYiQrFu95dtCHHFkG0TmH5NP5KRF7vhyQD8q0=;
        b=sD5cKPWc0MLNJ0SrH26A7kWlcvpBTcxHmV1Yjp/+m+QcoXikVZq6jhMt6KZvW+kQqo
         7bRGIUL7lOVf5zzY054E0UNSkvl5+3XHqIlOYEyJEatQn10kqVP1CX5KOBbCv7pPvoLX
         UCBopSU6w4fjnccgoCVJvlgZS5YYI1OclHXr5vl6GkzE4jib30WtsNBibCR6Z9p6Kg/q
         FbJh6Y2w44FIDTsWmZ4avq0Oki7P2gsm2++RzQ4eK3qB/CSWtawqFRLSdYRFTtSm7GvL
         OY0p/lddaKK1UuTQ7B3+YukupMPS7gYc/ClRzDxD9PskiPw2ncs4ldObJ3NytCfh+Sby
         RxrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768239991; x=1768844791;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=sqlipSAYiQrFu95dtCHHFkG0TmH5NP5KRF7vhyQD8q0=;
        b=ZHfLi6lPhSqOa2Tn5wOyd3D0PwoOCmIWTYT72/fnSPVMl7WKQ/27lhYfa82sQ7FR9L
         VND9bwIv6YCViUDuXKQKk3SrPGHw39Vi4Hh3fXV9E3lvLdgtUumJnqtND3cYFRXk3S2m
         r7GrPV5w4zlCCNbga+VudZU9FrGC2SYmb3Kji4k6xY+wd0ODVjgMopeU+LFWJCjP+7A1
         AoyLh7oGHyZAMg2wWCKj71FliFKCbO+zDZyWvvdIhRJ9cFeOaIA3A0/KvgcmiV6TWAg2
         75Cxh4UJzX2PBlcYhIOs5/L9rlFS9iaQTT2Pok6inbBQnoe4FbZn0wUEcoWNteJJeScm
         SixA==
X-Forwarded-Encrypted: i=1; AJvYcCXr4hNoPjudnSlE/guZeb65nU0dvR6Uuh39lDop28Qj8NJ5tSHY8hyvcCuyOSi4b9wz4r3REfMCYkxl@vger.kernel.org
X-Gm-Message-State: AOJu0YzNunVIPQLRoeVW1goLHSkYfz10VoCkj2dyCskqqgjpmY26BAFr
	ddSMPNQO2Kg7bMhJ/mzAFctw7VoEJodDVfvVaMaXIy8wutVbYjnPFSF33rFIFctcADY=
X-Gm-Gg: AY/fxX7SKOzZMtQrU5vxP6VxPEtlkyfn/R5aSdBzYCFnbPhec2UyY+CR4cMrYkeQFjF
	J6MzLWPfILPQg4C02/TidtzmTEcytti/DeYX+JGIUfkIuL6RFQaqzROWoRQWVHIKL/8F0M3EPUE
	5E6XtKFQ2WDokwqGOHuKAsy4ASLx6Dj6ZVhW6MtjNFIWuPNMdX+vyvbNMfw9u+E4oBYTUiJiR4p
	g9laV6uzx4ATRSBJ2+aOgEbg+c3CyFG4hdCLor8RlRsx9/pYd+ZF84ueB9y3YCh2Sv83L8zi8kk
	+wJ/+aKSp+cMcztjMD+h7Km6uq+0b+ZocLuvsqA4olHHoxY1RXZptTw3Di7BeDBUoA8pwFw4uu+
	pgwIctnNXNzWyL67DqPciV7RPpgS6V+7wrePwQAZ6joGWRfIz/vXAy4QPowzp98QQDFby7w62Pl
	bC+B7knOj7W6Sb2gU=
X-Google-Smtp-Source: AGHT+IFBdEdVyipvpJKVouqlkR/vSnnrwI8wG4Tu4qRwUv58Q4gW/GedXwjx1n4TT49Du6joX748WQ==
X-Received: by 2002:a05:6870:d14b:b0:3c9:895a:d9ec with SMTP id 586e51a60fabf-3ffc09e1502mr10193116fac.17.1768239990568;
        Mon, 12 Jan 2026 09:46:30 -0800 (PST)
Received: from [127.0.1.1] ([2600:8803:e7e4:500:6b4b:49b3:cce5:b58f])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-3ffa4de40bfsm12126941fac.5.2026.01.12.09.46.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Jan 2026 09:46:30 -0800 (PST)
From: David Lechner <dlechner@baylibre.com>
Date: Mon, 12 Jan 2026 11:45:20 -0600
Subject: [PATCH v5 2/9] spi: dt-bindings: add spi-{tx,rx}-lane-map
 properties
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260112-spi-add-multi-bus-support-v5-2-295f4f09f6ba@baylibre.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=2408; i=dlechner@baylibre.com;
 h=from:subject:message-id; bh=tZ1gVB3H8yXnnq8oO3CvMZarToXPlUChHiU/VJKv9/w=;
 b=owEBbQGS/pANAwAKAcLMIAH/AY/AAcsmYgBpZTM+DIYL1xcg6jfE74/jpkdtlp+q7+GbQ9JbK
 h/EWhyK2BGJATMEAAEKAB0WIQTsGNmeYg6D1pzYaJjCzCAB/wGPwAUCaWUzPgAKCRDCzCAB/wGP
 wPlECACIbVDWCUcNaRQdTeo2VIG+zSuMX2p5ZPUyVmKqKtRzNyrrmuFHmX55JxoHewW1I9Hp4tm
 dPHi8bsFSkSE2SZ8JV/iVdMFvaJOzUH6rF4I17lF2OP++VTwQsb79zfu5jDyZaeZWPHpAxioHeY
 aLb9sOlHnqZc5pPjp6wbFAXHkeea4dHAaaPCI1+8yXi6XSxfKnL+DC5TQAPM20BzleTz/39t4+r
 lp0jBXCBdXBGmNPNowvuiJPo//BGMPGTQvvPRIzkbkdoQlbWKHAfc+io2BOFg5QH8cGZA1ECK50
 emKQp7nga6j1SJYRlLuwnylqXhnG4srXdf/ctV9glydZf9KX
X-Developer-Key: i=dlechner@baylibre.com; a=openpgp;
 fpr=8A73D82A6A1F509907F373881F8AF88C82F77C03

Add spi-tx-lane-map and spi-rx-lane-map properties to the SPI peripheral
device tree binding. These properties allow specifying the mapping of
peripheral data lanes to controller data lanes. This is needed e.g. when
some lanes are skipped on the controller side so that the controller
can correctly route data to/from the peripheral.

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: David Lechner <dlechner@baylibre.com>
---

v5 changes:
- Use SDI/SDO terminology in descriptions. (Fixes incorrect use of TX/RX
  when describing the peripheral lanes.)

v4 changes:
- This replaces the data-lanes property from the previous revision. Now
  there are separate properties for tx and rx lane maps. And instead of
  being the primary property for determining the number of lanes, this
  is only needed in special cases where the mapping is non-trivial.
---
 .../devicetree/bindings/spi/spi-peripheral-props.yaml      | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/Documentation/devicetree/bindings/spi/spi-peripheral-props.yaml b/Documentation/devicetree/bindings/spi/spi-peripheral-props.yaml
index 59ddead7da14..880a9f624566 100644
--- a/Documentation/devicetree/bindings/spi/spi-peripheral-props.yaml
+++ b/Documentation/devicetree/bindings/spi/spi-peripheral-props.yaml
@@ -75,6 +75,13 @@ properties:
       enum: [0, 1, 2, 4, 8]
     default: [1]
 
+  spi-rx-lane-map:
+    description: Mapping of peripheral SDO lanes to controller SDI lanes.
+      Each index in the array represents a peripheral SDO lane, and the value
+      at that index represents the corresponding controller SDI lane.
+    $ref: /schemas/types.yaml#/definitions/uint32-array
+    default: [0, 1, 2, 3, 4, 5, 6, 7]
+
   spi-rx-delay-us:
     description:
       Delay, in microseconds, after a read transfer.
@@ -99,6 +106,13 @@ properties:
       enum: [0, 1, 2, 4, 8]
     default: [1]
 
+  spi-tx-lane-map:
+    description: Mapping of peripheral SDI lanes to controller SDO lanes.
+      Each index in the array represents a peripheral SDI lane, and the value
+      at that index represents the corresponding controller SDO lane.
+    $ref: /schemas/types.yaml#/definitions/uint32-array
+    default: [0, 1, 2, 3, 4, 5, 6, 7]
+
   spi-tx-delay-us:
     description:
       Delay, in microseconds, after a write transfer.

-- 
2.43.0


