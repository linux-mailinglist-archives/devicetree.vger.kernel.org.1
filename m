Return-Path: <devicetree+bounces-249846-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F496CDFB10
	for <lists+devicetree@lfdr.de>; Sat, 27 Dec 2025 13:29:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6953F304E160
	for <lists+devicetree@lfdr.de>; Sat, 27 Dec 2025 12:26:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2D78432FA3B;
	Sat, 27 Dec 2025 12:24:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="QgjuHIvC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f49.google.com (mail-ed1-f49.google.com [209.85.208.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04FB632F75B
	for <devicetree@vger.kernel.org>; Sat, 27 Dec 2025 12:24:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766838290; cv=none; b=tsu6yVT/UezsRIwHfcZrLXYQfMd/yBeXcMscYmx2G9YgnLs699vsdeFUqLodcE1XGr2ACBngGTYPIyngigv1DEu5VTcCthqJa3Dv5e2Pik7wdbdn0n7nFD+ZVy5bs7PUa7gtTjc3pbsnDqnGsTVBFrrGhnzbY8f81Lo7u/kD5eM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766838290; c=relaxed/simple;
	bh=61ADjJrgT2o/i8020WOTVait6ro421Ajicl8SlsuO9U=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=uTy6FFQmG+qIwGWFKNlF0hr7dTaQwizwEqCjWZe+AcQewOOkNf3y7VrNW755sCioPCFxf4zslwKtuHqZvvA6/E4Tx1b0kAPsSbXfVRsFoRg3Iu2+fPs4vF27gB5srJuZe8uGGn3D43o1QPB83gw9XkuMyPSUUaG7sdnzAvSMCBA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=QgjuHIvC; arc=none smtp.client-ip=209.85.208.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f49.google.com with SMTP id 4fb4d7f45d1cf-64d0d41404cso8673302a12.0
        for <devicetree@vger.kernel.org>; Sat, 27 Dec 2025 04:24:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1766838281; x=1767443081; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6RGJHpYPSzzQbbGCB4wy3BgFrQgesxTAcE0/qZgwEOg=;
        b=QgjuHIvCQ5py7O52/Jj4oZR6bhc4rf8+nVBWdogTfdPsRyC/OHquSadTl163SPvG5A
         WC9pZDOdodVBwMOWLdIjqDfI4jB/Qb7Er7CXvgSF37SeU8urtVHUDtY0AsI2Rm9wt+4x
         Lqp+yvsS1Mr1Fnuv+nlmaV13syk3+cgmJsQEoZizieoRVTEUSeJzfMMp3zGqLcJVsdS2
         znauhuMBjhkCbiTFRABwdht5p/l7tHC0as8ZmgWrSW97+YTbDbq7jF9Ak2ll+nx7l4D1
         V1XA8gtit4mE/Au8GeCuydaaIYGD3Qf5WKOK2KDV3QxR+qyxCAYldONbMzciJFzOB4NK
         DM7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766838281; x=1767443081;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=6RGJHpYPSzzQbbGCB4wy3BgFrQgesxTAcE0/qZgwEOg=;
        b=FZ+VCE+wroEEyIkb7bc0QmdgLfSXI86k4hEjuzEUemm8h4ekp6eigv2wJUu/cMrkTt
         YK5CaxiC2Le6CQVEey8VZ8sbbOzLhJolUSyhlowhddaJzRh3DnxA1k4QajoFl9X3/yEv
         e/kGTuF0fDy83Y3QGAPlaFDdc1PfX8MqPF3HePI9lxxXxHppFLnj8BWvM9FGCmJq1ou9
         uIzK5WNJ6SQEsfCUqWhrFmOia6D9w4MzrVQq40F9EKTUtQuxyr5WRR9ZGh7bCngCUyV6
         SvwDvOT+V6N4MFr0gXxjrN3Tp3HBCQvP9A5x7foB7mH9CsU0Dk7N2TEXrMOLNDrKP9L8
         M4UQ==
X-Forwarded-Encrypted: i=1; AJvYcCWGnSyPObmikC5+k8G8IcG74RQNYGRczgHGXYkZXwnjgQI+3TpggoHcpq9ufumsmLWz4Z4wG0PG3ZYC@vger.kernel.org
X-Gm-Message-State: AOJu0YzSkFqZdNlHePJIhIigcJ/KXJOxxdkh+DAdwB5A1u/r5O/csru2
	4Q6ZmGSmGRjPjttsC2kEjX32sL9YGbMiFm/MnN/Q61dInkhUewwnopld9hHYQsNQ6/c=
X-Gm-Gg: AY/fxX7ZmTb+CG/2M7MzeGhexUQ6PU3m5fZpN2UzwllL3WOaAQD68kWAF4PuUhv5CpU
	snOgmrK9E/ndrXl3Cg5ejg0T6sMJ5zMIu8iTKzDMIIaVnn5dkMsHdAVU5nU27ZQ9rcNtCkKc0ee
	zm0IpTCmeFI4IcmRI90vAgSXLKWiH6F3PlIXySz5u4Cn9AGJjBkqoRvAH8BGazRyJQfXCZ+bqaN
	gIOUbn52Zlqdtt56TN6Sw4OQawx7MEIVNYcGDFDP9zAzndnnrvjHqTPMS0I3hDWMzq6yOAu3VXi
	YO8hndzDFtOmwAbWnPoOhYDQEha2qf49l36BtZIr7lPb4sNHenLSFahW/YF/HADacaUbzVkLHIh
	SsdZd4Nn/rMHbRfj8OqflqkFV8rtGsFt60poMZ+/zn4hotNfKVCWD8/VbPQtCcUUOG+az1TaWJF
	h6smK+S45NtouKbB+Av/gEhbSR2lgwg0uW3kNCr9uSxvGZ4FNq1SviZEb0ijBLO0YKSeUkrftTa
	W02mg==
X-Google-Smtp-Source: AGHT+IEZhhM0KME5WuKQ84Ts8cerCjpsb60R6tSjSyudT0VTKXNA6pzXYu7jRUwWEVFLnHJWn9IpIQ==
X-Received: by 2002:a05:6402:51cb:b0:64b:3eeb:80b1 with SMTP id 4fb4d7f45d1cf-64b8ec6cb05mr22638603a12.22.1766838281265;
        Sat, 27 Dec 2025 04:24:41 -0800 (PST)
Received: from puffmais2.c.googlers.com (244.175.141.34.bc.googleusercontent.com. [34.141.175.244])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-64b916adc61sm25932659a12.31.2025.12.27.04.24.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 27 Dec 2025 04:24:41 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Sat, 27 Dec 2025 12:24:43 +0000
Subject: [PATCH v5 21/21] regulator: s2mps11: enable-gpios is optional on
 s2mpg1x
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20251227-s2mpg1x-regulators-v5-21-0c04b360b4c9@linaro.org>
References: <20251227-s2mpg1x-regulators-v5-0-0c04b360b4c9@linaro.org>
In-Reply-To: <20251227-s2mpg1x-regulators-v5-0-0c04b360b4c9@linaro.org>
To: Tudor Ambarus <tudor.ambarus@linaro.org>, Rob Herring <robh@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>, 
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Lee Jones <lee@kernel.org>, Linus Walleij <linus.walleij@linaro.org>, 
 Bartosz Golaszewski <brgl@bgdev.pl>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Linus Walleij <linusw@kernel.org>, 
 Bartosz Golaszewski <brgl@kernel.org>
Cc: Peter Griffin <peter.griffin@linaro.org>, 
 Will McVicker <willmcvicker@google.com>, Juan Yescas <jyescas@google.com>, 
 kernel-team@android.com, linux-kernel@vger.kernel.org, 
 linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-gpio@vger.kernel.org, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
X-Mailer: b4 0.14.2

For s2mpg1x, enable-gpios is optional, but when not given, the driver
is complaining quite verbosely about the missing property.

Refactor the code slightly to avoid printing those messages to the
kernel log in that case.

Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
 drivers/regulator/s2mps11.c | 16 +++++++++++-----
 1 file changed, 11 insertions(+), 5 deletions(-)

diff --git a/drivers/regulator/s2mps11.c b/drivers/regulator/s2mps11.c
index 178a032c0dc192874118906aee45441a1bbd8515..2d5510acd0780ab6f9296c48ddcde5efe15ff488 100644
--- a/drivers/regulator/s2mps11.c
+++ b/drivers/regulator/s2mps11.c
@@ -352,7 +352,7 @@ static int s2mps11_regulator_set_suspend_disable(struct regulator_dev *rdev)
 }
 
 static int s2mps11_of_parse_gpiod(struct device_node *np,
-				  const char *con_id,
+				  const char *con_id, bool optional,
 				  const struct regulator_desc *desc,
 				  struct regulator_config *config)
 {
@@ -371,14 +371,19 @@ static int s2mps11_of_parse_gpiod(struct device_node *np,
 		if (ret == -EPROBE_DEFER)
 			return ret;
 
-		if (ret == -ENOENT)
+		if (ret == -ENOENT) {
+			if (optional)
+				return 0;
+
 			dev_info(config->dev,
 				 "No entry for control GPIO for %d/%s in node %pOF\n",
 				 desc->id, desc->name, np);
-		else
+		} else {
 			dev_warn_probe(config->dev, ret,
 				       "Failed to get control GPIO for %d/%s in node %pOF\n",
 				       desc->id, desc->name, np);
+		}
+
 		return 0;
 	}
 
@@ -409,7 +414,8 @@ static int s2mps11_of_parse_cb(struct device_node *np,
 	else
 		return 0;
 
-	return s2mps11_of_parse_gpiod(np, "samsung,ext-control", desc, config);
+	return s2mps11_of_parse_gpiod(np, "samsung,ext-control", false, desc,
+				      config);
 }
 
 static int s2mpg10_of_parse_cb(struct device_node *np,
@@ -528,7 +534,7 @@ static int s2mpg10_of_parse_cb(struct device_node *np,
 
 	++s2mpg10_desc->desc.ops;
 
-	return s2mps11_of_parse_gpiod(np, "enable", desc, config);
+	return s2mps11_of_parse_gpiod(np, "enable", true, desc, config);
 }
 
 static int s2mpg10_enable_ext_control(struct s2mps11_info *s2mps11,

-- 
2.52.0.351.gbe84eed79e-goog


