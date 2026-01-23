Return-Path: <devicetree+bounces-259122-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wAGdGWXcc2mbzAAAu9opvQ
	(envelope-from <devicetree+bounces-259122-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 21:39:01 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id F05D37AA32
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 21:39:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D73BA3045A9A
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 20:38:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AB79F2F0C45;
	Fri, 23 Jan 2026 20:38:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="LUj7dySX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f45.google.com (mail-oa1-f45.google.com [209.85.160.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB9FC2C15B5
	for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 20:38:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769200726; cv=none; b=Zl6EEMulJygRHGZfEIRWZwIafwG51y50oByt5dq2OBxhOaEAxU3jnNphROD/1MBwg2wYZ+yBCdSZ4qkrU+Z2cg9PrPOJrE9rFLqbxr4bCC0ha10b9zjE7P3EeXykPAcEeh3tD7xKXALuN1yWxuUs7rKrofLRDBXd8wnlJbli8jI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769200726; c=relaxed/simple;
	bh=5HI91WzF40M7BWTtVwSgdEEKhH3jYAKO9/9e2UnBD7E=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=bFVa1er7UYK+wlKEhNT4BfgmqQ4XmwHEuisG3QI4jAxC7HgMxYXz+C/ibmCbVlXLEys5rpZ6UDYXIAvY2Eq7+PLEJfRyY3x9n414N7SG8lRYSNHbg39aZLLrFnQJzlW5rPDDA7YKytKPPuxKL1bpfoFOxgHLFhwwVx9Fjx8ylfU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=LUj7dySX; arc=none smtp.client-ip=209.85.160.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oa1-f45.google.com with SMTP id 586e51a60fabf-4041b3c1fa1so859835fac.3
        for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 12:38:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1769200722; x=1769805522; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=AT2w5VHT92aNGbPwdimSOxfLAza15/pSQtaUPTXFgbE=;
        b=LUj7dySXFykxBg4ALNG0o4Pk1ET31gRPGELJeeetN0gyvXE1bPmHm2m42iD+ThQfay
         GvgcEXOug4UoEOZua7AXbZaFC+XtB1vynUE3maTUkFyptpfMcq1K3aC0vcJBEDsmNZ/j
         uSyqlMy06MiQ+cp2f3pO6kvedRxecVkNPyohGNdHrt366GYdu4xYUNtPyCYPczG1MPr8
         GNRvQhpoIvPiaUwB4JCgvgW4eXGY9PRBpMn/MMgOQ5WkdAcj56QbimC4GiSqzfkGTXt9
         gULv47G8EViRzaeRAejrXP/UCorjebm0kzZXaBdpnYfewM/i2bbNXj8JvKOVA22ofdR7
         luog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769200722; x=1769805522;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=AT2w5VHT92aNGbPwdimSOxfLAza15/pSQtaUPTXFgbE=;
        b=f02U4LvZVaFzLvQk6f8jIqzKWak6jGI+VQ7lMHOpiQso9K+gTxXCwmCexzuzgA62RY
         4N22Z7oL3zwMKG4uQD8gjyvj8BD1o1xqqCjjo1k/8xcs+Xil0PBGKSY8mmmOl3xDRF+X
         Spj0n7KGZHDVraVH7lkQb6OSWECul1abcahC6d0B+LqSW41Y7PFQ6WIL4f4LhqIY3kDu
         7AftE1MNt5dpnh6j7pPx1CCV/UrEgZoZFFaHKALS5KhkvEdorRVAFKj/i0wyShUf4RCs
         OlFMZs5evnWOIrwlBCn7WlWSOmnXfe5xZ7bVT/SRkD57tA7Wy2lqJVD1UM03AskZuycl
         ylDQ==
X-Forwarded-Encrypted: i=1; AJvYcCVGW/2+4hsy7/UCg7vx9/xFQngJwAWPvRHuQDOwCdpZ4c5M2kdqtBKIQMvZA/KibjUEdZEOwetVTj0s@vger.kernel.org
X-Gm-Message-State: AOJu0YzEO+1Iu1WH5dYBowHdsxNv1tTJjnyTbmRC9cA9pTg8x8gwSt4A
	7RA4dZWLZO92Vtf9LWwfQ4owWZJYKLpolXTHX/++3PFIsr+nlFdeAKoQnsPBeRmlsa8=
X-Gm-Gg: AZuq6aIOZuYaS6ntVIxBFAAGnIHystO2+7TnpY9O0PU6TdFhhnkLDGQ1xUeB7LWOz0i
	YZhXUypI0JP7LqEiR//NRfp+Ba/0y39NYm5jlgnWstilctidfX1nKDgBdUaPBcqPocDbM/DKlYX
	opxL5yUROf3jtsqXNwIfEBRh/O/J/jiImY0npavGOZW48n0k0olH2XQmkHvF3+azy57Sr7LhK4m
	zjHbzTN+dQu/7O90yIWbYXhUpRecNRMDp2FnfI1tc+3C35BZCDX4BqS9Kdh0g4e3DR8Beb3N9bp
	g01fVIKNq4/zWoUrbI3v+PrUDVpWSIbFhsd70GLiXHLSDgP5bFYm9V926n+6acEuJSlH9sEVDcT
	Nmx/SiY3Od2e1ZCNtz/hlpj9fVANhGXz95Vu5/QsbYwOrWLcxMulPyWBBm1xt0F8+hUcr9tzu0R
	3mr0SCBDW0R/cwCA==
X-Received: by 2002:a05:6870:1696:b0:404:3b73:6804 with SMTP id 586e51a60fabf-408ab84bf07mr1931873fac.58.1769200721878;
        Fri, 23 Jan 2026 12:38:41 -0800 (PST)
Received: from [127.0.1.1] ([2600:8803:e7e4:500:198f:2b50:c48:1875])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-408af888da1sm2167805fac.6.2026.01.23.12.38.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Jan 2026 12:38:40 -0800 (PST)
From: David Lechner <dlechner@baylibre.com>
Date: Fri, 23 Jan 2026 14:37:25 -0600
Subject: [PATCH v6 2/9] spi: dt-bindings: add spi-{tx,rx}-lane-map
 properties
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260123-spi-add-multi-bus-support-v6-2-12af183c06eb@baylibre.com>
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
 linux-iio@vger.kernel.org, David Lechner <dlechner@baylibre.com>, 
 Jonathan Cameron <jonathan.cameron@huawei.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=2489; i=dlechner@baylibre.com;
 h=from:subject:message-id; bh=5HI91WzF40M7BWTtVwSgdEEKhH3jYAKO9/9e2UnBD7E=;
 b=owEBbQGS/pANAwAKAcLMIAH/AY/AAcsmYgBpc9wWLBe1jCZp5s6jymQtTxnQkTipbYZUFXXQb
 FYZedi+GIWJATMEAAEKAB0WIQTsGNmeYg6D1pzYaJjCzCAB/wGPwAUCaXPcFgAKCRDCzCAB/wGP
 wBIWCACaHP7H34XUcv7GCi6yQp5HtmIVaHZLDrDsTmvIqFyB0ooSJnmPXvQMWDLKnsaSmkAZgH2
 4rNPgNqwf/qLj5KxOmCdmjNesLmhLUIGgaziEEQrI3HY6QF8ullBeLOAgmOMTCzUh2Avn6sxLKF
 VTEMluS4IRqhDJMrot96t5roQiJNj4P7E9HI+u2nyEzyLhUmyUTEyAdschkH1RzwtXcWxKFkt9q
 vSxDIcaCY4r6vaI4qX/D6CdbGCXldflboXnz67/YKuBxeA5KfFrLOpbRpwuxpjWZsDAt7BuoQGt
 KVh5zF1+rMtcgT0IzyeJL+9py6glAMB7nCEouFJYD8olaIFi
X-Developer-Key: i=dlechner@baylibre.com; a=openpgp;
 fpr=8A73D82A6A1F509907F373881F8AF88C82F77C03
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[baylibre-com.20230601.gappssmtp.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-259122-lists,devicetree=lfdr.de];
	DMARC_NA(0.00)[baylibre.com];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[baylibre-com.20230601.gappssmtp.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dlechner@baylibre.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: F05D37AA32
X-Rspamd-Action: no action

Add spi-tx-lane-map and spi-rx-lane-map properties to the SPI peripheral
device tree binding. These properties allow specifying the mapping of
peripheral data lanes to controller data lanes. This is needed e.g. when
some lanes are skipped on the controller side so that the controller
can correctly route data to/from the peripheral.

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
Reviewed-by: Jonathan Cameron <jonathan.cameron@huawei.com>
Signed-off-by: David Lechner <dlechner@baylibre.com>
---

v6 changes: none

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


