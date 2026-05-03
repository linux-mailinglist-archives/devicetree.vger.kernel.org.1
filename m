Return-Path: <devicetree+bounces-292373-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aKtPJDA792kddwIAu9opvQ
	(envelope-from <devicetree+bounces-292373-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 03 May 2026 14:10:24 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 816294B5805
	for <lists+devicetree@lfdr.de>; Sun, 03 May 2026 14:10:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id A96B53002932
	for <lists+devicetree@lfdr.de>; Sun,  3 May 2026 12:10:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C0C433AE1A8;
	Sun,  3 May 2026 12:10:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="MvDW7+kv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f170.google.com (mail-pf1-f170.google.com [209.85.210.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06F0B3AE6FA
	for <devicetree@vger.kernel.org>; Sun,  3 May 2026 12:10:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777810212; cv=none; b=QpRr5mCL8Lql9Xx0CvMNsubRIJoMm/yfG9gKubBtacEcCzO58wFhw6yuJ8FK4ELZSe7dN72wy26IjNhRtYwGM7QB4bDKa8lO8alIleyfMIPhdQJ381wTq1mNU5SN63Av/pzmCEyC4Vk4wd14J0DNPLbP6n96TYxiOl5hgyBBAk8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777810212; c=relaxed/simple;
	bh=YzJ8RosHX05iVdAZ2STTIxyp1FpJncO7Lahr+HQeVvA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=nE/1wWyIRPBegYiWtrN7b7Ajktck+i8Y4HdhG2Xrsodvi4Nn2md50ABPExIbXY4Pg17gVeT4e2pvFbjmAW007isYLJfLJiV/NDsCK3xB0I4die393ls6DnSdSmhprxcOw1HPXAZyHwFnfXIHY1hGw19z6gVsXHHKqCPD+oX8EmY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=MvDW7+kv; arc=none smtp.client-ip=209.85.210.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f170.google.com with SMTP id d2e1a72fcca58-82f8bf96b46so1411045b3a.2
        for <devicetree@vger.kernel.org>; Sun, 03 May 2026 05:10:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1777810209; x=1778415009; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0sJO8jnVqdesIsdCxc3bQ/uGr2AUdTF8/iD//ahP/KE=;
        b=MvDW7+kv/+2iWgcBQCZYvyM0ys2Q1/2G4/elB7Tfspjnw3xvmt1rn6/TasaaloDBia
         nwavCzR9mx5u4XqMXSH+ThUfFYrzc7XwkTAq+cm8+MK6ozuvN1P/DzZrxpQ6vLplAAeQ
         NJ+MNnms1rLRk5GfzNvUuRucDYM30J5l3paonr9CZD9NsBDyxM/akWK+q4trlIydfxGF
         +cz1lPXatZfb/vkFjDvrC+P/GG5OGnDK16f+H61GEvn/Zv3iIrfE93huG8HvDQ/dPThX
         qpZWyVM6eyWcY57ZF6EDDeQHQ4hnhIyy2+cdKcbuVXLQHTUHg5MRnk8Er/ONVSRtAhjz
         +lqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777810209; x=1778415009;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=0sJO8jnVqdesIsdCxc3bQ/uGr2AUdTF8/iD//ahP/KE=;
        b=Hkp3oq5N+qMqZD3moDQyCt+9B5T4fiKzwMRR+zFhaYl96YcqM6/+47vJwCBT60T1R5
         fFkzpgnOm28BgkAOqH9aGvFGS7TB+s9VVccuDZazjN5smDageGCIrWVITX4cxiG8LaIm
         MCIXUlKDxkrVeMR/gBL8hRRSNJlSjYC1CdDdd/k8tAIiauwQxFadHNdJI2VdSzfM7CMF
         lQFxF1A+TMvljeYzn4dtLuMUirXa9ZH9v6Z4YznImdGChnVCClKIh6BHmu7S1ZjLADIz
         oR/rSd4uUfVSMmqraFoOBBc9qpyzPY4R2N3eUYBLRYCMWPo0BMSufs/WqZW/rGOeOKsL
         YanQ==
X-Forwarded-Encrypted: i=1; AFNElJ8z4P2PYOKh2FzBXK+GHcI70NAg7eDq8Xv0qbP2U3tC+E28+LP3hzTRPXwpNzqf1qP/QoJSJrU5l7Yd@vger.kernel.org
X-Gm-Message-State: AOJu0YyRiw4qEFiCXZW6WIPZQvJPh7CSCdFFRjptOpCbigLLEyKnI9g6
	l9eFjOQT/7ureWmYxndUnqEqUxcsTaxwPnKmn8MIzH2jHImuD0BMMNiN
X-Gm-Gg: AeBDiesKZ6bqJk+498QXABvTq2CR3+/XgxKSxFJCh7fgCvFrzrZBzO9qhY11eemKvb0
	H9G13nC5+RwCkSWxyf4hD4OVccvGH+Y+X6XR3LUmc0eqifh+UMT+QHOlWtM8MT1EV/u03DHocTi
	DFiNtHQZFQNy/oDAs/eWfXGGxMKykWsICS4RxlL9h5TMUTibAdpprH12UCezUCnmS+YF1q1Y3MN
	erPlgmk5i0eKTrTaIi6q5P7MVpz8eb4OIiB9CdauLXFbjHb5lXCfCv7F+7EctHQkGapxfLazubi
	tJPV9ad84hZx2cBAO7dnh2bQWFe62wLODd77sitmsIFQNdQOP5ab8rKyMQ8ZAzwafDJ2BMx1C1/
	0IyQk4f/Y505ifXwx5GwhYePP4x04xUlVn3BA/0xcNQvnip9R8Tfwo41mMeKrljs9R4z6tRLUWT
	vpDAJeHwkOUnca4c7BGSzzij0zKUzFFyVZr8Tb1q/VFG6dvTskz8spW/bRS7aE0Xm/dWRqAm/Tg
	FOBHTJU9kCNmzVuuV8MZ1ofswWmcGpHJju0YVAMyzbCyMVpMwpSnaRDeOf8abnOaUQJ7CY=
X-Received: by 2002:a05:6a00:302a:b0:82f:316:31f6 with SMTP id d2e1a72fcca58-8352d202921mr5662327b3a.26.1777810209269;
        Sun, 03 May 2026 05:10:09 -0700 (PDT)
Received: from lord-daniel-VivoBook-ASUSLaptop-K3502ZA-S3502ZA.www.tendawifi.com ([14.139.108.62])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-8357c4f4530sm1474364b3a.9.2026.05.03.05.10.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 03 May 2026 05:10:08 -0700 (PDT)
From: Piyush Patle <piyushpatle228@gmail.com>
To: Andreas Klinger <ak@it-klinger.de>,
	Jonathan Cameron <jic23@kernel.org>
Cc: David Lechner <dlechner@baylibre.com>,
	=?UTF-8?q?Nuno=20S=C3=A1?= <nuno.sa@analog.com>,
	Andy Shevchenko <andy@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v6 01/11] dt-bindings: iio: adc: hx711: clean up existing binding text
Date: Sun,  3 May 2026 17:39:30 +0530
Message-ID: <20260503120949.80292-2-piyushpatle228@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260503120949.80292-1-piyushpatle228@gmail.com>
References: <20260503120949.80292-1-piyushpatle228@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 816294B5805
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-292373-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[piyushpatle228@gmail.com,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[aviaic.com:url,it-klinger.de:email,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]

Rewrite the binding description and property text so it describes the
existing HX711 hardware behavior directly instead of documenting old
driver implementation details.

Also clarify that clock-frequency controls the SCK bit-bang timing.

No functional change.

Signed-off-by: Piyush Patle <piyushpatle228@gmail.com>
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


