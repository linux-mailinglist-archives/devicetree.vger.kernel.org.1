Return-Path: <devicetree+bounces-129154-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 245AD9EABE6
	for <lists+devicetree@lfdr.de>; Tue, 10 Dec 2024 10:25:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 066F51885124
	for <lists+devicetree@lfdr.de>; Tue, 10 Dec 2024 09:25:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1CD65233D94;
	Tue, 10 Dec 2024 09:25:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="WZsM6OXY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B591233D7A;
	Tue, 10 Dec 2024 09:25:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733822735; cv=none; b=HO7l7FAAuIYuw0y99JSKt15PULjx92cjSWBGl0qe9lNgKMZ2wSa2ItwA6g1CpWTd43UEuWc1f9uug47Tj8K5oMpMolGBUZkDbtmnunXZouZzvMvfKORosLvg15Rq0gFI7z0t3V10zmAJKZdt3nnRNqR+IouB4RZH3KqBFdnM7DI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733822735; c=relaxed/simple;
	bh=Rmrwo5+Rm+e5LMLcblV1bEqbL7+1aSKLggKCzu4QE5I=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=L5OVk1ldRWS2BA/b8JCf+poqc4Fz0XLxb6LfHAuQOE+dF8eACvQuDuWxtRTbWTVE0PBplYRncvRGxKzEYNALDSnO29MmwXnAtrphL4IjqYNtMnIDtT5/5Jz58r9emr/8K6/O7gJDGDyfxs1h7FKeFiU13daPJ0LpAAEfY9d1McU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=WZsM6OXY; arc=none smtp.client-ip=209.85.218.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f43.google.com with SMTP id a640c23a62f3a-aa6413fc7c5so524188166b.0;
        Tue, 10 Dec 2024 01:25:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1733822731; x=1734427531; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yIYX9kmTJFXjw0IKwmTwCHl19TmAiv3RgSoCZJ7R09I=;
        b=WZsM6OXYyb9GmPyP/Zi3ZOq+qR3fJDjmctBlFYtwlISF9EwDHjAX4iE4U/p/P7hJOC
         v3T6qYkKAvDuUlu0pFI1T2h9wr4KOGnMmtpHdgCl4tz5bfEIHb5dBoJlz48EUax+Fqmk
         BOQs3a7yu23oIWvmbCfsQbm+sFOztd7PO+ePj5exIOrhcD6AZ0tHpgYcStn0z653W315
         jvJZrNz0Ikewvl8SaduvDNH2u8YHw0ZvZOFerO2jRovs9qQL9qB8g7qWqggyFR5I0G/0
         J0ivdoNxFke1dt3vqAeAUtgasqBL+/rek5DQossNtTtgRb/jgg9KImOw2baabQNZZCW4
         Qg3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733822731; x=1734427531;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yIYX9kmTJFXjw0IKwmTwCHl19TmAiv3RgSoCZJ7R09I=;
        b=kfIs6WKJr40T4Z13KZTf0WrR4E6J71TNyDuHQ5H+5Ku6LYN8Dkujp1+upMtYWeCiwa
         QfuJVchlqbWNvHyDpD4cMmGjl0f+/t1/y2wh8gKeuRagnkWEpY3nuI9oc3Xd8OL94jm6
         ANmhoIDwy3Rr7thKfQ9kQ0IP8s1i178Syo4ijLl0ltpifJ44F6nSODbuxGRwOwpiKZaz
         IsP0sw1zB2hZGiqQ6iE+SwacrG/+dtQRX714nMG5S21QfLAQkJju6y3qqqUJlWXomDyP
         Ix+oBDGdbugR0yud4H6nLWKZi1rp/aQyJQu/xSsu8NK0Af+xrf7o0zyw8OJieza/QFvJ
         gZ1Q==
X-Forwarded-Encrypted: i=1; AJvYcCU4IQS/aGQ899GvyuXcrmEJZN3cRc0sBVQHR9SacdQfcNB3bnvsqdbxS0qv4u+14A3fDif1ErGkIVs=@vger.kernel.org, AJvYcCUuoq6aYYzeS0KD4qR3sWe/10O5F525lPeprTh+eaNE8+ib5wj2W/DfSZZQgstD0YOH+2B805q931mH@vger.kernel.org, AJvYcCWVMSZeALnCSOWG69qOyH0+CPOPaKUO3Dkui2l8EneLwPiy4EhBKgNZqzxnGs/RJkDyhOUYjLagRaoOgRpF@vger.kernel.org
X-Gm-Message-State: AOJu0YxqKeKXECCp5Vq+7FFvhYkquXRs7aN3Fib56TDnnQUkDMi7I/+q
	1tKi+cyhVuF4kVmLzs1dJCC6o8Jj4lnfOjwk+DAmBh4IjGZuspY/u0ohTw==
X-Gm-Gg: ASbGncssbSwMwIZTqQX2OkvbVFHjAa0J8QOI8oWaiTpo88ek9Hq1PVPy3PJolHyr5I8
	aDpgSAR4jBg6RZcSSdRNp2vgm51Bz4uRpa1Uk+bkXd5oXQCmgcRMvq5mIdZau2B0Vb1HcSFzk6c
	09M9Ea/dwerCV8siFS0yyZNCIrsnVGo0jj1XDaQwdGgs87x8ubDzuMBr1IBWiflVH2RazlWtxVb
	QMNXiODSXdF7IWyZ3WCCUZqN8Jfwi3N4pvkOR6icVfZKiS9z3J6db437SkejNoxrk/KChGY5VNC
	TjSrVjk=
X-Google-Smtp-Source: AGHT+IGTncXr75xb8jsJOl3zt+zZyyQ9FXk2GNgq3urmaTiC6l5okNxyTTdacQPTwQoJh72FBind+g==
X-Received: by 2002:a05:6402:2694:b0:5d2:7396:b0ed with SMTP id 4fb4d7f45d1cf-5d418507657mr8457029a12.14.1733822731298;
        Tue, 10 Dec 2024 01:25:31 -0800 (PST)
Received: from stefan.beckhoff.com ([195.226.174.194])
        by smtp.googlemail.com with ESMTPSA id a640c23a62f3a-aa6260e2c31sm817095166b.180.2024.12.10.01.25.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Dec 2024 01:25:30 -0800 (PST)
From: Stefan Raufhake <raufhakestefan@gmail.com>
To: Sebastian Reichel <sre@kernel.org>,
	linux-pm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: s.raufhake@beckhoff.com,
	s.dirkwinkel@beckhoff.com,
	Stefan Raufhake <s.raufhake@beckhoff.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Subject: [PATCH v2 1/1] power: supply: gpio-charger: Support to disable charger
Date: Tue, 10 Dec 2024 09:23:43 +0000
Message-Id: <20241210092343.3537-2-raufhakestefan@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20241210092343.3537-1-raufhakestefan@gmail.com>
References: <20241210092343.3537-1-raufhakestefan@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Stefan Raufhake <s.raufhake@beckhoff.de>

Some GPIO-controlled power supplies can be turned off (charging disabled).
Support changing the charging state by setting charge_type to
POWER_SUPPLY_CHARGE_TYPE_STANDARD and disabling charging by setting
charge_type to POWER_SUPPLY_CHARGE_TYPE_NONE. One potential use case for
this is disabling battery backup on a UPS.

Signed-off-by: Stefan Raufhake <s.raufhake@beckhoff.de>
---
 .../bindings/power/supply/gpio-charger.yaml   |  6 +++
 drivers/power/supply/gpio-charger.c           | 43 +++++++++++++++++++
 2 files changed, 49 insertions(+)

diff --git a/Documentation/devicetree/bindings/power/supply/gpio-charger.yaml b/Documentation/devicetree/bindings/power/supply/gpio-charger.yaml
index 89f8e2bcb2d7..084520bfc040 100644
--- a/Documentation/devicetree/bindings/power/supply/gpio-charger.yaml
+++ b/Documentation/devicetree/bindings/power/supply/gpio-charger.yaml
@@ -44,6 +44,10 @@ properties:
     maxItems: 32
     description: GPIOs used for current limiting
 
+  enable-gpios:
+    maxItems: 1
+    description: GPIO is used to enable/disable the charger
+
   charge-current-limit-mapping:
     description: List of tuples with current in uA and a GPIO bitmap (in
       this order). The tuples must be provided in descending order of the
@@ -68,6 +72,8 @@ anyOf:
       - charge-status-gpios
   - required:
       - charge-current-limit-gpios
+  - required:
+      - enable-gpios
 
 dependencies:
   charge-current-limit-gpios: [ charge-current-limit-mapping ]
diff --git a/drivers/power/supply/gpio-charger.c b/drivers/power/supply/gpio-charger.c
index 68212b39785b..461fec34904d 100644
--- a/drivers/power/supply/gpio-charger.c
+++ b/drivers/power/supply/gpio-charger.c
@@ -32,6 +32,7 @@ struct gpio_charger {
 	struct power_supply_desc charger_desc;
 	struct gpio_desc *gpiod;
 	struct gpio_desc *charge_status;
+	struct gpio_desc *charge_type;
 
 	struct gpio_descs *current_limit_gpios;
 	struct gpio_mapping *current_limit_map;
@@ -82,6 +83,26 @@ static int set_charge_current_limit(struct gpio_charger *gpio_charger, int val)
 	return 0;
 }
 
+static int gpio_charger_set_charge_type(struct gpio_desc *gpio_charger, int type)
+{
+	int chg_config = 0;
+
+	switch (type) {
+	case POWER_SUPPLY_CHARGE_TYPE_STANDARD:
+		chg_config = 1;
+		break;
+	case POWER_SUPPLY_CHARGE_TYPE_NONE:
+		chg_config = 0;
+		break;
+	default:
+		return -EINVAL;
+	}
+
+	gpiod_set_value_cansleep(gpio_charger, chg_config);
+
+	return 0;
+}
+
 static int gpio_charger_get_property(struct power_supply *psy,
 		enum power_supply_property psp, union power_supply_propval *val)
 {
@@ -100,6 +121,13 @@ static int gpio_charger_get_property(struct power_supply *psy,
 	case POWER_SUPPLY_PROP_CONSTANT_CHARGE_CURRENT_MAX:
 		val->intval = gpio_charger->charge_current_limit;
 		break;
+	case POWER_SUPPLY_PROP_CHARGE_TYPE:
+		if (gpiod_get_value_cansleep(gpio_charger->charge_type))
+			val->intval = POWER_SUPPLY_CHARGE_TYPE_STANDARD;
+		else
+			val->intval = POWER_SUPPLY_CHARGE_TYPE_NONE;
+		break;
+
 	default:
 		return -EINVAL;
 	}
@@ -115,6 +143,9 @@ static int gpio_charger_set_property(struct power_supply *psy,
 	switch (psp) {
 	case POWER_SUPPLY_PROP_CONSTANT_CHARGE_CURRENT_MAX:
 		return set_charge_current_limit(gpio_charger, val->intval);
+	case POWER_SUPPLY_PROP_CHARGE_TYPE:
+		return gpio_charger_set_charge_type(gpio_charger->charge_type, val->intval);
+	break;
 	default:
 		return -EINVAL;
 	}
@@ -126,6 +157,7 @@ static int gpio_charger_property_is_writeable(struct power_supply *psy,
 					      enum power_supply_property psp)
 {
 	switch (psp) {
+	case POWER_SUPPLY_PROP_CHARGE_TYPE:
 	case POWER_SUPPLY_PROP_CONSTANT_CHARGE_CURRENT_MAX:
 		return 1;
 	default:
@@ -246,6 +278,7 @@ static enum power_supply_property gpio_charger_properties[] = {
 	POWER_SUPPLY_PROP_ONLINE,
 	POWER_SUPPLY_PROP_STATUS,
 	POWER_SUPPLY_PROP_CONSTANT_CHARGE_CURRENT_MAX,
+	POWER_SUPPLY_PROP_CHARGE_TYPE,
 };
 
 static int gpio_charger_probe(struct platform_device *pdev)
@@ -256,6 +289,7 @@ static int gpio_charger_probe(struct platform_device *pdev)
 	struct gpio_charger *gpio_charger;
 	struct power_supply_desc *charger_desc;
 	struct gpio_desc *charge_status;
+	struct gpio_desc *charge_type;
 	int charge_status_irq;
 	int ret;
 	int num_props = 0;
@@ -304,6 +338,15 @@ static int gpio_charger_probe(struct platform_device *pdev)
 		num_props++;
 	}
 
+	charge_type = devm_gpiod_get_optional(dev, "enable", GPIOD_OUT_HIGH);
+	if (IS_ERR(charge_type))
+		return PTR_ERR(charge_type);
+	if (charge_type) {
+		gpio_charger->charge_type = charge_type;
+		gpio_charger_properties[num_props] = POWER_SUPPLY_PROP_CHARGE_TYPE;
+		num_props++;
+	}
+
 	charger_desc = &gpio_charger->charger_desc;
 	charger_desc->properties = gpio_charger_properties;
 	charger_desc->num_properties = num_props;
-- 
2.25.1


