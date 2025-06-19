Return-Path: <devicetree+bounces-187667-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FDE3AE0E17
	for <lists+devicetree@lfdr.de>; Thu, 19 Jun 2025 21:38:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6D0C616C475
	for <lists+devicetree@lfdr.de>; Thu, 19 Jun 2025 19:38:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9A310242D7D;
	Thu, 19 Jun 2025 19:38:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="FK3j/1R3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f49.google.com (mail-ed1-f49.google.com [209.85.208.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ABEF630E83E
	for <devicetree@vger.kernel.org>; Thu, 19 Jun 2025 19:38:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750361885; cv=none; b=ASf8h5cJwLPwaizJ+4WIetGeuThjLdoUawOVRugMFutZJDhEDvYcAfC93s9WMyyyDXSnjN3nF0lL5v2VceEku97znFuZIWyf2plTGXRfViO3bOhpIh1DQWf3Oh5VV7pntqakxN9HvRwOieV7qBwC4BKNcYnxUmyKI4gcci9pjvc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750361885; c=relaxed/simple;
	bh=/4FUKzJGctfh4F0xV6RfSXalAyRIePr7kz+uFmRa8D8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=avEo90S8MxAu45UiFU2G/LoXg0zJuW2LS9ZEMJSsIqhT6TefXI9+j+YuhDYQPGt21WHUjMe1Gpg+cTRbMRC0Etojhrm2hb4+E9jA/F+wEe3HolKctDFrdJXYVUAW4lx7P8KeGOM6S8tCFE+nzj925WRQJE5SdDp2SMPf/Hseo74=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=FK3j/1R3; arc=none smtp.client-ip=209.85.208.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ed1-f49.google.com with SMTP id 4fb4d7f45d1cf-607c2b96b29so1939775a12.1
        for <devicetree@vger.kernel.org>; Thu, 19 Jun 2025 12:38:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1750361882; x=1750966682; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WDdReUCNxh7kd/Z4bkc56sI2H6wihwxJvgXXCb9jS7U=;
        b=FK3j/1R3KZfkr6kRFpHjSoCDijsFtzbeU3NGFwatbPq0nYs++p3S0epYU6zHgvZa2y
         +KyelKK9s92FlorVYisbytoc9ZLj44vBy7JU3BJMKnzYX3hGr6wPJqUeQIoqZcYaNvFz
         NdVFQIy4KHxEufjFzQgkI/+76Pj/SqfkJCtv1lq9sfHAJ1AcwgXR8U/K4dEKRC99BKJL
         apRDhtXoHjL4yWxtPHa+KXEBNhT1MegORYpaGV0Fdlswb5Nv6PwqJSSWtNmwd7AqDXJ/
         rd06Ucg6X9M7sa8odDw/cFzXjZye5BdrYDjm9pmI6UawQo4WIgDwkvvrF5csTpimEN3Z
         rqwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750361882; x=1750966682;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WDdReUCNxh7kd/Z4bkc56sI2H6wihwxJvgXXCb9jS7U=;
        b=mid5dm9iSWLcBr3874fPO/KAWipKHo5it5HPfH5+KtdUzVRPyRP72TbiN19hAfzNVy
         0WEPx1jyd6tKMkJqy/XAnnaRodcFSobmQfjIwvT77tl9yx+J9vb+kn6AkrLDtwum9eL6
         ILmb+WtVzvz2eLnZTaSXVFaA6b1tG5yUIi7sOdkD97ljMnF8VyVubHkICAwm2QaKxCdc
         RO9WgtfKys3G68LLlp4DX+7+727S1g53/eTebwni/12nddnSLj5Tuhfcy+J60QLn5iQE
         siRmaunyY1CNrA9fCEshilTis3JjyREMqOi1xC/yYP7IvjKeNjxtgC/PG/xdIfSa9qHw
         SY6g==
X-Forwarded-Encrypted: i=1; AJvYcCXo5VgFR+HiAZNzMWy6PdWkLU88cQ4D8kdChxxF/zbhg4pM+urqd/M/V5wcC05repoLGqFoZC7I3y14@vger.kernel.org
X-Gm-Message-State: AOJu0YyBPyJmvhag/QurjMqi8PokkyeMROcd6wljzDiyD784RmqAFwsi
	G0PaMXTSdZOBTU4uT2Zu4kdlXvA6QojueIpZbO4DG6sLeeiAblYhJ4uKuMomGzKxkuw=
X-Gm-Gg: ASbGncuIP/1OPESdVD15JMN5PmYq04YjuU6wp/DdJBDxHo93o/bHM6WgxG0zPlx3vk/
	C6U1gYmlvsy5ROnc2QNpVKJtL3eethO1DX3gpQSbMnd/eQ37zP7QYDDeZHQHA0aa5lAd17ommzh
	ue5CvsrTLURTnur/pXZn29+tgyND5LCLlApF42K8AyRzMb2oYZM/ODm0gsTMoUNc4ZGF404rkEi
	H7Euj93NXNSD1hFhuqEwmp57Stpoqt4wAag8TANXXm3rcboANUErfJUW19fdq5TUHsZx0uFtNVd
	47uH9y48oqgJpNNsO7mtJorRBIMitYAQUBYstxQourD4FdJ0Ov+c8K4vFlMR8VAk8YU=
X-Google-Smtp-Source: AGHT+IFNRziKzwyTYykIWbCd8I4m09uDgsNr/FjlRZAov9xS5nfVCYLscsjvNom85tKOHH+EclWA6A==
X-Received: by 2002:a17:906:9fc6:b0:ade:9b52:4cc0 with SMTP id a640c23a62f3a-ae057973159mr14369066b.26.1750361882019;
        Thu, 19 Jun 2025 12:38:02 -0700 (PDT)
Received: from localhost ([2a02:8071:b783:6940:36f3:9aff:fec2:7e46])
        by smtp.gmail.com with UTF8SMTPSA id a640c23a62f3a-ae0541b719fsm34386766b.128.2025.06.19.12.38.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Jun 2025 12:38:01 -0700 (PDT)
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Jean Delvare <jdelvare@suse.com>,
	Guenter Roeck <linux@roeck-us.net>
Cc: Chris Packham <Chris.Packham@alliedtelesis.co.nz>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-hwmon@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH 2/2] dt-bindings: hwmon: adt7475: Allow and recommend #pwm-cells = <3>
Date: Thu, 19 Jun 2025 21:37:46 +0200
Message-ID:  <77895aec937b6217f513d3b12e7945f1707fd906.1750361514.git.u.kleine-koenig@baylibre.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <cover.1750361514.git.u.kleine-koenig@baylibre.com>
References: <cover.1750361514.git.u.kleine-koenig@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
X-Developer-Signature: v=1; a=openpgp-sha256; l=1746; i=u.kleine-koenig@baylibre.com; h=from:subject:message-id; bh=/4FUKzJGctfh4F0xV6RfSXalAyRIePr7kz+uFmRa8D8=; b=owEBbQGS/pANAwAKAY+A+1h9Ev5OAcsmYgBoVGcOLupelSkrmQjV6M90KjftqVREBMjymX2NE FYbmeD8SOuJATMEAAEKAB0WIQQ/gaxpOnoeWYmt/tOPgPtYfRL+TgUCaFRnDgAKCRCPgPtYfRL+ TiYpB/4gIq2rQz2gQtCu/oAre9BDqpnQM+7a9sStdUsaCWu9tgn+biAyDMU8ogazmQH/CcPrwmS 55Fxh/lS7BGRga5T0tMxWuM+5pbaNmTY7RN+3ifCVpC9LYoS3Au1fYhzcfyTML8+0toS1bJZoVo i6zC8fnW0Vbw8Z261EIfStmLVu7HF/P4cClUu9U7lQ8fbA9NPwF+2G8cwJ+WkOoSX1wvXfLO7J2 98BsuAaqS2XpN4W6dQGOlAt3kgFIAtG2ykP/xKTvOMGzoVLGN1T3Ns2gqnfSq3L4BskcY8vwf13 9fXlXocxH2Df6xmwCljE+O0Fu8LmE34lDg1pnPcZvEAvwODd
X-Developer-Key: i=u.kleine-koenig@baylibre.com; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
Content-Transfer-Encoding: 8bit

To make this binding match what is usally used for PWMs, deprecate 4
cells and allow 3 instead.

Signed-off-by: Uwe Kleine-König <u.kleine-koenig@baylibre.com>
---
 .../devicetree/bindings/hwmon/adt7475.yaml        | 15 +++++++++------
 1 file changed, 9 insertions(+), 6 deletions(-)

diff --git a/Documentation/devicetree/bindings/hwmon/adt7475.yaml b/Documentation/devicetree/bindings/hwmon/adt7475.yaml
index 79e8d62fa3b3..43e9fe225870 100644
--- a/Documentation/devicetree/bindings/hwmon/adt7475.yaml
+++ b/Documentation/devicetree/bindings/hwmon/adt7475.yaml
@@ -53,7 +53,10 @@ properties:
       default: 1
 
   "#pwm-cells":
-    const: 4
+    oneOf:
+      - const: 3
+      - const: 4
+        deprecated: true
     description: |
       Number of cells in a PWM specifier.
       - 0: The PWM channel
@@ -68,7 +71,7 @@ properties:
            - 11363636 (88 Hz)
            - 44444 (22 kHz)
       - 2: PWM flags 0 or PWM_POLARITY_INVERTED
-      - 3: The default PWM duty cycle in nanoseconds
+      - 3: The default PWM duty cycle in nanoseconds, defaults to period.
 
 patternProperties:
   "^adi,bypass-attenuator-in[0-4]$":
@@ -124,15 +127,15 @@ examples:
         adi,bypass-attenuator-in1 = <0>;
         adi,pin10-function = "smbalert#";
         adi,pin14-function = "tach4";
-        #pwm-cells = <4>;
+        #pwm-cells = <3>;
 
-        /* PWMs at 22.5 kHz frequency, 50% duty*/
+        /* PWMs at 22.5 kHz frequency */
         fan-0 {
-          pwms = <&pwm 0 44444 0 22222>;
+          pwms = <&pwm 0 44444 0>;
         };
 
         fan-1 {
-          pwms = <&pwm 2 44444 0 22222>;
+          pwms = <&pwm 2 44444 0>;
         };
       };
     };
-- 
2.49.0


