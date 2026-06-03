Return-Path: <devicetree+bounces-306455-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id bXxTD0F3IGp/3wAAu9opvQ
	(envelope-from <devicetree+bounces-306455-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 03 Jun 2026 20:49:37 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id EA4CB63AA3F
	for <lists+devicetree@lfdr.de>; Wed, 03 Jun 2026 20:49:36 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=Z2LfR414;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-306455-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-306455-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 9813D3058E7D
	for <lists+devicetree@lfdr.de>; Wed,  3 Jun 2026 18:49:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CCEA7477E31;
	Wed,  3 Jun 2026 18:49:16 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f180.google.com (mail-pl1-f180.google.com [209.85.214.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 939003F6616
	for <devicetree@vger.kernel.org>; Wed,  3 Jun 2026 18:49:14 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780512556; cv=none; b=HQT5Eamg6IEqOQVdKSU9nEQZCJIk0fOT2N50co9Fc+HzTPWlGR7QDcTfab5k8FSSHF7N1OW+uh6f2n1xPW3zldyTTpXUsHX1mOeu1paRNlDbISQKdB/+mfPtKBclXScIpAviVnYTjMpJu344BAC78OVvDcsqhd8SItAEVE8mcvw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780512556; c=relaxed/simple;
	bh=fGN8QACq5acyX3/tm53OfWk81sTlEN73wII2m7as1Oo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=HqqRxZsIdy2T6+9sat7BjhnNUodfGgbMqwV3ASO1GccsO1wZbuN0dUANKqemF5LxUv4Ch+jt7clFOn1vVeRc+0idGPyN1Hk03cFq5ihFkxuooFiXU3LG1PgMnOijPe6vb0AiozvgciSAqQundokCv11YN4LVH3XnaJctzAWXaBE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Z2LfR414; arc=none smtp.client-ip=209.85.214.180
Received: by mail-pl1-f180.google.com with SMTP id d9443c01a7336-2bea7176c72so102271375ad.0
        for <devicetree@vger.kernel.org>; Wed, 03 Jun 2026 11:49:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780512554; x=1781117354; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Yf9rYDctPN9NDbaPR2RYs1zVFeB2pT+PMnoNRzcUIUM=;
        b=Z2LfR4145JMTATunS7NAGFCT4P/81X6vTim35taRggW3hfGB8i/QwDpeSj7yPLStmt
         GjE/OTMt8LFHl8LypTPtlVazbNRblCcMXmvbkkoRHQkm1IuFTLab+EN/qgDoLrON5d6b
         kEra20z5xnL9tSE4PHqsUiDB+5AbwaTMgI2tOaoyTakppd4gup+q6+WL/399c0Wk9Zr7
         ffYQ6Sitd6kI0UKp4Q98T32Cxgyv/vF6XFhwXWi4enSrZ531w1ff6rhwCi0QQ8lwO3RT
         f+cfazEmJI7ZCklNL2L/jc5PYiWsqFV/CsgPsy1QiB1V1Uz1msLdaUW/fVIZ256lLFfN
         yQiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780512554; x=1781117354;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Yf9rYDctPN9NDbaPR2RYs1zVFeB2pT+PMnoNRzcUIUM=;
        b=I1qIxanAa465JPCkn54v/lfG7Tvwk2Iyc4QiRnAgPfY+mCLN/o31no0Pm4C0gxa1Ae
         vXeD/ntOWSFKXsM/azKXJayxsa/dLmjsELSyGoATEU/tSP7GjX8rWKtRpNm4AFo8zsKi
         AeqDCbDkEJVFMbPVomDS34qm0UVewQeNMJlK18n7smBiauvarFB1XssXLACmK3tDtbbk
         RCkEbyUQLtOFw/SGaRMe9HqDHn+EfySI2cteSkzjMOeSyWF439G6T2Vpq/Trq+IaCjxB
         L1Kosf9i7/1rjxGI2uzuzWNNCjN04wRSs1fGRkw8VOsdIvKQGo3NAplIn7rCRbe0BaVk
         gSSQ==
X-Forwarded-Encrypted: i=1; AFNElJ//IGMuudoJGk5MKPojmHlE42/7mUPZZ98ZdUaBoM9enZQuWDhQfXzYo26AhC/ml98/ZUh9WjwOUWPt@vger.kernel.org
X-Gm-Message-State: AOJu0YyvMwbXIEb2iKC8XIP6/2qXbDhchSwGa89YEzaIg1CvA4gNjxwy
	saEJ2AWJVXNXLjQWDe1NgsXgsgPa1EMAQoMDCEj8X1LQpEXnFJL/k9Yw
X-Gm-Gg: Acq92OGibXAqf0rsttr38nWq73H3FMYC0RLUgKDYta4gBpCG9stuvYlzp18gV/QQxaU
	7US/qKABQqjlyMlEC6JZ97/hyzBp5P7gf7W9wv7eQsnPWIVPpL79Zs1JKiSXTuvpsB/dtb3L7Qx
	4SJMtmxYG8qsaKBhD169ZFyIKh6n0FAvQ9M5aS3EioFu/HNFIz3mD+S78Lx2nuZ/0Ja7N/4rjSG
	+6RC/FSENgecq4Say9utZ2YKw3Mr5JQ+ZO5tFJFJXxvX2KMbnuvzwEQJFdHT+5tC4jv4eTaIrn8
	4VIzPqv0/PCJgVEDMNGeCb8TyHeZw5j+tGyfLxkav/mRJEWogrB3RtOcp8VFu+79dQ2tYLsGRPY
	SnktR/UUOt1+6vWoXW0Kb3IN32qgwdU+qyOL9O7UK2jrKX6wsYZcOAurajNhFzY4ozqL2930OMA
	JfVId/J9nR/6gq9Snj4jf5xvNWhyJaIIP/q5wuidDaRCQHT1B2e5qZZf9JMSlFhP+cOdch9ACJW
	wUfHfTYiLt3xfnv9qqvhQ/hsHNXCMstP5RG+1BJ0kI62zNwQf8h92ZuPC3JLuL7
X-Received: by 2002:a17:903:3c6c:b0:2bf:800:19f8 with SMTP id d9443c01a7336-2c163a3f9cbmr57906695ad.17.1780512553868;
        Wed, 03 Jun 2026 11:49:13 -0700 (PDT)
Received: from lord-daniel-VivoBook-ASUSLaptop-K3502ZA-S3502ZA.. ([2409:40c1:4015:6e6f:ee79:7998:9a6f:65e3])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2c164f6d59csm32139675ad.4.2026.06.03.11.49.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Jun 2026 11:49:13 -0700 (PDT)
From: Piyush Patle <piyushpatle228@gmail.com>
To: linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: jic23@kernel.org,
	ak@it-klinger.de,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	andy@kernel.org,
	nuno.sa@analog.com,
	dlechner@baylibre.com
Subject: [PATCH v11 01/11] dt-bindings: iio: adc: hx711: clean up existing binding text
Date: Thu,  4 Jun 2026 00:18:49 +0530
Message-ID: <20260603184859.89693-2-piyushpatle228@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260603184859.89693-1-piyushpatle228@gmail.com>
References: <20260603184859.89693-1-piyushpatle228@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-306455-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_SENDER(0.00)[piyushpatle228@gmail.com,devicetree@vger.kernel.org];
	FROM_NEQ_ENVFROM(0.00)[piyushpatle228@gmail.com,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:linux-iio@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:jic23@kernel.org,m:ak@it-klinger.de,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:andy@kernel.org,m:nuno.sa@analog.com,m:dlechner@baylibre.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	ALIAS_RESOLVED(0.00)[];
	TO_DN_NONE(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	FREEMAIL_FROM(0.00)[gmail.com];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,it-klinger.de:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: EA4CB63AA3F

Rewrite the binding description and property text so it describes the
existing HX711 hardware behavior directly instead of documenting old
driver implementation details.

Also clarify that clock-frequency controls the SCK bit-bang timing.

No functional change.

Signed-off-by: Piyush Patle <piyushpatle228@gmail.com>
Reviewed-by: Andy Shevchenko <andriy.shevchenko@intel.com>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
---
 .../bindings/iio/adc/avia-hx711.yaml          | 25 ++++++++-----------
 1 file changed, 10 insertions(+), 15 deletions(-)

diff --git a/Documentation/devicetree/bindings/iio/adc/avia-hx711.yaml b/Documentation/devicetree/bindings/iio/adc/avia-hx711.yaml
index 9c57eb13f892..1ea60dff98d5 100644
--- a/Documentation/devicetree/bindings/iio/adc/avia-hx711.yaml
+++ b/Documentation/devicetree/bindings/iio/adc/avia-hx711.yaml
@@ -10,14 +10,9 @@ maintainers:
   - Andreas Klinger <ak@it-klinger.de>
 
 description: |
-  Bit-banging driver using two GPIOs:
-  - sck-gpio gives a clock to the sensor with 24 cycles for data retrieval
-    and up to 3 cycles for selection of the input channel and gain for the
-    next measurement
-  - dout-gpio is the sensor data the sensor responds to the clock
-
-  Specifications about the driver can be found at:
-  http://www.aviaic.com/ENProducts.aspx
+  The HX711 is a 24-bit ADC with selectable gain (32/64/128) and two
+  differential input channels. Channel A supports gain 64 and 128;
+  channel B supports gain 32.
 
 properties:
   compatible:
@@ -26,23 +21,23 @@ properties:
 
   sck-gpios:
     description:
-      Definition of the GPIO for the clock (output). In the datasheet it is
-      named PD_SCK
+      GPIO for the clock output (PD_SCK in the datasheet).
     maxItems: 1
 
   dout-gpios:
     description:
-      Definition of the GPIO for the data-out sent by the sensor in
-      response to the clock (input).
-      See Documentation/devicetree/bindings/gpio/gpio.txt for information
-      on how to specify a consumer gpio.
+      GPIO for the data output from the sensor (DOUT in the datasheet).
     maxItems: 1
 
   avdd-supply:
     description:
-      Definition of the regulator used as analog supply
+      Analog supply voltage (AVDD).
 
   clock-frequency:
+    description:
+      Controls the SCK bit-bang timing. The value is used to derive the
+      delay between SCK edges; keep the SCK high time below 60 us to
+      avoid triggering chip power-down mode.
     minimum: 20000
     maximum: 2500000
     default: 400000
-- 
2.43.0


