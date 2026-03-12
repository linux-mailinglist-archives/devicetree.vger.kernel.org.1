Return-Path: <devicetree+bounces-274488-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CGTGHWt/sml2NAAAu9opvQ
	(envelope-from <devicetree+bounces-274488-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 09:55:07 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id CCBD726F39A
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 09:55:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B862231366D5
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 08:53:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A070638C41B;
	Thu, 12 Mar 2026 08:53:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="dxt0djq5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AFD8738B155
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 08:53:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773305617; cv=none; b=gHSNjjqGU2O1+ZzBRPg7zPjRGv+srFwiV6euU1T0BHU9ab7+BGxD8AK4NyOr7lnhlB5Af0CfuVPcLB8uQAwFWuIg5tK+4daJvLo2QO2b8iWKK9TfQgj1EmJA2d/oaJncjaNZnbSrL3EGlfZcS5c4lemk2hcl7k6qHanOEN504NE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773305617; c=relaxed/simple;
	bh=W5y1CEZ8x3weotGzpcVAX62nHF7LuH3mbybRf8eZOjE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=umOGBC0ssv9BgRxajCOiFFhchesfEnwbaI8/ms8YHYd1jhW2VH+Webgwk6j7mGNXhPFldk3vOxbq8QN6S9MZ0Q+6ERwFS46BwnuIpda9GwI9m9/7i8tPhywWnw9V5enzodR5C3/NeoYSPq7269eCnuSVuz+Mn5/thDQIhjqIazo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=dxt0djq5; arc=none smtp.client-ip=209.85.221.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f47.google.com with SMTP id ffacd0b85a97d-439b611274bso482679f8f.3
        for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 01:53:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773305614; x=1773910414; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=l9h3ep8VhznVsw3SqQhxmTvwP9SBQRNbuVaMM8ratic=;
        b=dxt0djq5Si7/svubjp2K5r70eANWE7Ywu9V+qI0WQ55DtsX4d3zw0MPmlWQSRFNLkQ
         9r9JKi9esaHXp2sJDClQJgcdNW85ZMK6G0md2nN1v5eTUJkA7C9wm2+FZ0uokssUVhjd
         Jq5nRaCRpWEjWji8FT2VvqZiHMFfX4/pBy/MiVFa9D3hyk0KziU6vZ9JrifbNhz8bIJ2
         fhZzxddGA+bJEYnNPC6pHOr0zEL4HAW4PRT4RsuPuTWLNmipeQxPN0d5ozF+AvCOJQzx
         gwb/54h+qc4qFyFMgUs8rhkP2R6KJ10k3mkxxLuWVBBCrk2hZa3yFxT3IsBatO4Uxc3S
         GIoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773305614; x=1773910414;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=l9h3ep8VhznVsw3SqQhxmTvwP9SBQRNbuVaMM8ratic=;
        b=acgQZflZfINsk0aZVOqG9nSXdPkiYwrOT//wHw6GwMpjSa/xFcwJf1+0wooySLXBR9
         1O+OubIVLmDUDniWFZ2zYE78A6otQHaSkPaqtp7dO8IuNmB7lyC/X2bMpJ7mZ9cs4yL9
         +p61Oodd2q6qgd6z3Qk3ezvmSegTzxPn44Vm46moGIL18QhfJQg3lnD9bGejkMK/rFTN
         glt83rehm+XJ6r81vR4vTAjjkU36UDQHRtA0dcOzOWcUG4OHEhMUaFp0nDbgvB9gIXjW
         +0OA+Rc5oWjDXAlB1fd0DSIKL5WqLlmdmgRYiYEVktBrrNqwX7v4dsx+sosF+xp33EUb
         vMTQ==
X-Forwarded-Encrypted: i=1; AJvYcCWffFklWLNrL1mG3TNJXz+ugDDJSoy6OEyAusdsPQIhBkHEmMwp0yNsgrmGuwXBAHBOsPbsIvjOSjEt@vger.kernel.org
X-Gm-Message-State: AOJu0Yx6K31QadDPkEvFO4cvNZyqLmr0GFG18WwZntyfkcM18XriW9Rv
	V/HjhElOrlmzC1HIdRahIqoG0GaD+LQTTpjOKJESLAb0KMON/gtxoMAV
X-Gm-Gg: ATEYQzw3QgbXAorwhQYEuRNqftQ2jsaWN982X6kiTMof4muIxU/F5fCN4svjGCxuZZh
	snmIUQA0j9P1y5GXPEoez29D9FLVLu/Fa7LZZEukkmDHdTVHOWwtJKeU+GgPO4AjnQJ1Ts5ENtZ
	CqMUHRrgAyJ4WDQguEz/yeUIGJAFDqAIqxhR2PHEk68yU04bxF0AP4kXupqVF11+qMVBxD5mNjb
	AJWEPbYklbbzPcWtPlXrgdEBYH95Oj3/6iqKZ53VC/NSMFYjb8uGqW34J1EbBvFKlfaCMUjbFk9
	///LsT1yFCGQbB1Y2BshFRDp7ZVHkmvG1huOY4iLevjkKJpcZdKj8d0kbsoSGuN0cQzdMelAcqT
	NwLot1xXyvEZjqOHb3ECWAzQjzKOBdMACQtA5+oeg9MCcc5V3f3nIGRtGQoA9i9pEECf0LpYjUb
	rraHf8EI+Hkqw3SiFBOs9zcEg=
X-Received: by 2002:a05:6000:381:b0:439:b2d9:cf35 with SMTP id ffacd0b85a97d-439f81dec1bmr10881977f8f.8.1773305613993;
        Thu, 12 Mar 2026 01:53:33 -0700 (PDT)
Received: from xeon ([188.163.112.72])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439fe226473sm5449162f8f.32.2026.03.12.01.53.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Mar 2026 01:53:33 -0700 (PDT)
From: Svyatoslav Ryhel <clamor95@gmail.com>
To: Linus Walleij <linusw@kernel.org>,
	Bartosz Golaszewski <brgl@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Lee Jones <lee@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	Daniel Lezcano <daniel.lezcano@kernel.org>,
	Zhang Rui <rui.zhang@intel.com>,
	Lukasz Luba <lukasz.luba@arm.com>,
	Chanwoo Choi <cw00.choi@samsung.com>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>,
	Svyatoslav Ryhel <clamor95@gmail.com>
Cc: linux-gpio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-pm@vger.kernel.org,
	linux-rtc@vger.kernel.org
Subject: [PATCH v4 4/5] dt-bindings: mfd: max77620: document optional RTC address for MAX77663
Date: Thu, 12 Mar 2026 10:52:57 +0200
Message-ID: <20260312085258.11431-5-clamor95@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260312085258.11431-1-clamor95@gmail.com>
References: <20260312085258.11431-1-clamor95@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	URIBL_MULTI_FAIL(0.00)[sea.lore.kernel.org:server fail];
	TAGGED_FROM(0.00)[bounces-274488-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,intel.com,arm.com,samsung.com,bootlin.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[clamor95@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: CCBD726F39A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Document an optional second I2C address for the MAX77663 PMIC's RTC
device, to be used if the MAX77663 RTC is located at a non-default I2C
address.

Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
---
 .../bindings/mfd/maxim,max77620.yaml          | 22 ++++++++++++++++++-
 1 file changed, 21 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/mfd/maxim,max77620.yaml b/Documentation/devicetree/bindings/mfd/maxim,max77620.yaml
index 85d7fe0f9f85..602711865274 100644
--- a/Documentation/devicetree/bindings/mfd/maxim,max77620.yaml
+++ b/Documentation/devicetree/bindings/mfd/maxim,max77620.yaml
@@ -17,7 +17,17 @@ properties:
       - maxim,max77663
 
   reg:
-    maxItems: 1
+    description:
+      Can contain an optional second I2C address pointing to the PMIC's
+      RTC device. If no RTC address is provided, a default address specific
+      to this PMIC will be used.
+    minItems: 1
+    maxItems: 2
+
+  reg-names:
+    items:
+      - const: pmic
+      - const: rtc
 
   interrupts:
     maxItems: 1
@@ -192,6 +202,16 @@ allOf:
                 maxim,suspend-fps-time-period-us:
                   enum: [40, 80, 160, 320, 640, 1280, 2560, 5120]
 
+  - if:
+      properties:
+        compatible:
+          not:
+            contains:
+              const: maxim,max77663
+    then:
+      properties:
+        reg-names: false
+
 required:
   - compatible
   - reg
-- 
2.51.0


