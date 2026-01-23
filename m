Return-Path: <devicetree+bounces-259129-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IC3wDSbdc2nMzAAAu9opvQ
	(envelope-from <devicetree+bounces-259129-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 21:42:14 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id AD1D07AB1E
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 21:42:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C650E30CE763
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 20:39:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B34693093C4;
	Fri, 23 Jan 2026 20:38:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="aSPPMYhg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f178.google.com (mail-oi1-f178.google.com [209.85.167.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD4782FFFA5
	for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 20:38:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769200739; cv=none; b=ezyJJxXzh2/On5w4Xr/81aI8WlONz9qiMcc/1kMbDADndXbKx5Gy4xBZUzzRcTSmkeXsLHkHdL2eqeWzqZStp0WcMUjyXibJU4OAxHppen+TRg37y7bvAdzSfS+ClqngAxFa97KUu9E9gboKkGor4Emz5oh0OtbwMuOUcUfea9Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769200739; c=relaxed/simple;
	bh=0SRGld8wg9ob4xVn5NpAO3HJVSu6bKkd/d9jBcJCtAo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=SbroeAWGrS8hwPqJGHENTHyVFt0r2eOLAdGPXOO2h/v9JwW2akaezuxGDl04xtLUmGkNRI66LFVO1FEKaIy7L21biA7WCQpy70GBTRHSzktU8siOqGpfcZ0NCacTGPBAWzREgzg8sQrGdp9U5ayAxoyYyC976MKQSLhykLfCBXw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=aSPPMYhg; arc=none smtp.client-ip=209.85.167.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oi1-f178.google.com with SMTP id 5614622812f47-45c962424daso806192b6e.2
        for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 12:38:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1769200735; x=1769805535; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lRCMa7QMJdZhKtVQUIWaGLlL9RgCPrH55zdDP01EigE=;
        b=aSPPMYhgwx8dsVMOrkPjuXLTSQJ+z17F278FqVfbDg1Me9EqVVG9YKnb0bE7NqXe0R
         MJ+uxB7EIDZjPyCg0PGqQTu6bqTo6vxSLfFcK8cztZ58MXXyI0lZAIigiQOZdlRBW1mg
         uKYeWE/OvsjQNXhMXWfY9qJulUYz8Zx+6+1fmqxOahSNzMSeAgWynFKQKUsLKrqvaJRp
         c684T6jO9MGCyvFTolZAjWnUndhgnRVKrKnqMuMT7Anm2aA+K9CzBj0GTIy4Vx5syUnc
         Pb26PZ0vUYUkP7ljOQCK/zjzqBgyOpItjI0OVyM/j3L9AMY9yp6goHwJ+d/nbx5oQ6eJ
         Y3qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769200735; x=1769805535;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=lRCMa7QMJdZhKtVQUIWaGLlL9RgCPrH55zdDP01EigE=;
        b=pDR3CxZhH6axMUTap1B2xnXL8lwCWf/ErNhn8dVXh3i76S5JLhm0zseFRDV/3/Yra1
         bu10Jln04wLw0D9Jti+jye3dFY7Hbi8DWTKZlE/QX06/VWqq9Yw/2tmtiVbKtatTO0j6
         m4VJLsQ+WmSO8v1UcQ5D/4//cAP6KqgNnbls1jN2Y+WvPtbKbo9et9SVs3D6obAy39HO
         CpiL1fyvJydolyILLM7aYIDOaheaDLUZ2pHt2xOp2lBULVcnqAY27sVWrk7aLfe7wNu9
         udTIvdmt9SLDh5ffD6LymB9tTCVyiHBxeOz2ygv4gMIEWgTgDB4DkfNSfvnyytPnYCnQ
         yz7A==
X-Forwarded-Encrypted: i=1; AJvYcCUQHpgBsquU5yeDWeRG5plGGRU4gvqOxex9CwQMY5eduIH30I73pgJY+RNmr0SyO31ZI6TpWAn1SnBe@vger.kernel.org
X-Gm-Message-State: AOJu0YyO7131vc0/26HkCVk6In6iDMrtN2HDKRx+raBDftHqqKTPAl9L
	B0luggmj5KPNJFFVlbZ9hT+216a9TcR0wNfJ4nJD2yMafQfVqd1f4k57PVUSJ7AMX3c=
X-Gm-Gg: AZuq6aIkkzs3+pqT1QLMe9karGL7QYQHIv4Jpj9q/dXOiO3KwNSS7Q7d6yDu045MC+w
	QvaYMYgDqUUKE7lSDpYVcKQcuAWxuB3yF9YeWWMAygsWXLMZgMgMcPgRrBS1RrvQMZfRf5zeCol
	2o0cU5Y9qmKYdY+2FiXqH65KrWv+PeMKW23JyQgFB3FKjLUnVLAAhLmnuF5YS6dDaQiQVcufLkG
	rjD1YSgc+tosN1x98hf3dalD6wVRSNxchI9wigw/WP3IOXEaqaBtBrSuxuo4Lzwu2rtedDguB/M
	y+B++6kA1iG4EShXRD1xdAmEcyhHLxchJKDuAysLs3BPYpGyTZxdImfEEtZ1I7tGomwnYDlI/HL
	JShExlg4nnu9N1hkJ+IV/vQm5W5Fj9oOJ0mwcbTaqSTemRMDC4KeZQR6Sr4JvpNNGVkLvTQisUX
	Gz+qcgCWnLenjIMC9bJxuS+efV
X-Received: by 2002:a05:6808:1306:b0:44d:baaa:c537 with SMTP id 5614622812f47-45eb1ac4ff3mr2135834b6e.11.1769200730536;
        Fri, 23 Jan 2026 12:38:50 -0800 (PST)
Received: from [127.0.1.1] ([2600:8803:e7e4:500:198f:2b50:c48:1875])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-408af888da1sm2167805fac.6.2026.01.23.12.38.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Jan 2026 12:38:50 -0800 (PST)
From: David Lechner <dlechner@baylibre.com>
Date: Fri, 23 Jan 2026 14:37:31 -0600
Subject: [PATCH v6 8/9] dt-bindings: iio: adc: adi,ad7380: add
 spi-rx-bus-width property
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260123-spi-add-multi-bus-support-v6-8-12af183c06eb@baylibre.com>
References: <20260123-spi-add-multi-bus-support-v6-0-12af183c06eb@baylibre.com>
In-Reply-To: <20260123-spi-add-multi-bus-support-v6-0-12af183c06eb@baylibre.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=2086; i=dlechner@baylibre.com;
 h=from:subject:message-id; bh=0SRGld8wg9ob4xVn5NpAO3HJVSu6bKkd/d9jBcJCtAo=;
 b=owEBbQGS/pANAwAKAcLMIAH/AY/AAcsmYgBpc9w9z/Zrr1ZFq1ZeucdXrgMdnDu88JnIRiD1n
 rYl/9vfUCSJATMEAAEKAB0WIQTsGNmeYg6D1pzYaJjCzCAB/wGPwAUCaXPcPQAKCRDCzCAB/wGP
 wACVB/94YY1h4opJbziyMfR8A33W8WxV7v7l0Isb56J4ij4epEbYwIO45nuXIaUJfWqyNxDJY9y
 YFnG5YsmtuiBrrxaW/U4JTM5bKHF76nbLCESS+L3A+6HaWJiJynP5CzbZn/D48gS4Lz09gsznd7
 PcHIHkdgAVKrj/9MaZAXFFZhs90hnhrZMHMB0xXb6yQpeQEgmwbV6Hg8g/PD2nBfRmXqSsC96cm
 HvzVhg5OmCJ9rPlpSJhk4g8a2PL8LdRtuPkYHxsu6Jm8DCyGqqf5rfTnmcjph5FnsCxjyHlnFLd
 w4MZPIGgU3ayqA6cd2zc9vFDKhWmDeSLKa5IRhDyQ//Wq33K
X-Developer-Key: i=dlechner@baylibre.com; a=openpgp;
 fpr=8A73D82A6A1F509907F373881F8AF88C82F77C03
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[baylibre-com.20230601.gappssmtp.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-259129-lists,devicetree=lfdr.de];
	DMARC_NA(0.00)[baylibre.com];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[baylibre-com.20230601.gappssmtp.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dlechner@baylibre.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: AD1D07AB1E
X-Rspamd-Action: no action

Add spi-rx-bus-width property to describe how many SDO lines are wired
up on the ADC. These chips are simultaneous sampling ADCs and have one
SDO line per channel, either 2 or 4 total depending on the part number.

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: David Lechner <dlechner@baylibre.com>
---

v6 changes: none

v5 changes: none

v4 changes:
* Change to use spi-rx-bus-width property instead of spi-lanes.

v3 changes:
* Renamed "buses" to "lanes" to reflect devicetree property name change.
---
 .../devicetree/bindings/iio/adc/adi,ad7380.yaml    | 23 ++++++++++++++++++++++
 1 file changed, 23 insertions(+)

diff --git a/Documentation/devicetree/bindings/iio/adc/adi,ad7380.yaml b/Documentation/devicetree/bindings/iio/adc/adi,ad7380.yaml
index b91bfb16ed6b..396e1a1aa805 100644
--- a/Documentation/devicetree/bindings/iio/adc/adi,ad7380.yaml
+++ b/Documentation/devicetree/bindings/iio/adc/adi,ad7380.yaml
@@ -62,6 +62,11 @@ properties:
   spi-cpol: true
   spi-cpha: true
 
+  spi-rx-bus-width:
+    maxItems: 4
+    items:
+      maximum: 1
+
   vcc-supply:
     description: A 3V to 3.6V supply that powers the chip.
 
@@ -160,6 +165,23 @@ patternProperties:
 unevaluatedProperties: false
 
 allOf:
+  # 2-channel chips only have two SDO lines
+  - if:
+      properties:
+        compatible:
+          enum:
+            - adi,ad7380
+            - adi,ad7381
+            - adi,ad7383
+            - adi,ad7384
+            - adi,ad7386
+            - adi,ad7387
+            - adi,ad7388
+    then:
+      properties:
+        spi-rx-bus-width:
+          maxItems: 2
+
   # pseudo-differential chips require common mode voltage supplies,
   # true differential chips don't use them
   - if:
@@ -284,6 +306,7 @@ examples:
             spi-cpol;
             spi-cpha;
             spi-max-frequency = <80000000>;
+            spi-rx-bus-width = <1>, <1>, <1>, <1>;
 
             interrupts = <27 IRQ_TYPE_EDGE_FALLING>;
             interrupt-parent = <&gpio0>;

-- 
2.43.0


