Return-Path: <devicetree+bounces-187666-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 47291AE0E14
	for <lists+devicetree@lfdr.de>; Thu, 19 Jun 2025 21:38:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A10891BC8468
	for <lists+devicetree@lfdr.de>; Thu, 19 Jun 2025 19:38:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DE8C024467D;
	Thu, 19 Jun 2025 19:38:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="zefS3bVp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com [209.85.208.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05B15235074
	for <devicetree@vger.kernel.org>; Thu, 19 Jun 2025 19:38:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750361883; cv=none; b=TJ8ntDOjkrij5SEqytEPTYjZ8W1i+yni6Lj1pyweSYYIB4pYZKap1NEx31HSjEVydlwSgTojAhWzvGFNidtJyAMEmLCPwkvLqDhIvH/22jfxm5zdI12DL+Z2OPvY9Sam8ZaynKrY8YvCPNychiEPdkgIPmKDg6FcJbwRhMC2GHk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750361883; c=relaxed/simple;
	bh=GKZDoxyun/W4D4Ps9+AWIMGftkR3a/WAsAurvdXocC4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=NXgR/UIqzs0DjYB9j1QB92mm0HH1FgMnQbSm+lXbHOEn55cAZLEeFC51lGs1Y7PYZVsWWBtTweAzgbZ3aCBA58lipcPO3YM2HDo0ZAvjKxqv8pR4teDjDwC6RYFU++NuYeuX9E+ceBwUL61bY2ehyVCce5lK2Qjg8O0UjZb85zQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=zefS3bVp; arc=none smtp.client-ip=209.85.208.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ed1-f46.google.com with SMTP id 4fb4d7f45d1cf-6071ac9dc3eso1847074a12.1
        for <devicetree@vger.kernel.org>; Thu, 19 Jun 2025 12:38:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1750361880; x=1750966680; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZaVEbAHW7iY/RUrqsyRdFPDF+vOux5UgaQ4QVWxZ9uk=;
        b=zefS3bVpcCMPvpRZsv8T0qBCL3ugLIOI3rrnZAQriXuIL4knkrb8R/eRdCkQx0PhVi
         JzQm8EWgO0/fhUNXHI4pXBrwWP0K7IoLGb6496G0tQje2LCI4VgFr8v4sIFt7vAqZJSJ
         xvZ3rdmrZn0ODm7fuWTyAvmxZVa7g9Ty+c44GbXM0thU58lDaZLayP2Y9aPd1LrYCojl
         tnd2Y9g36V+neTHgsFdhHIAQNc9dv/m6wFi9nZajeNR5OjrT419DqWiijzIxSTkqoWSC
         Kk1rls3itQDnC8JzfA+EKeTLQ4oMW/hKXXb0qDRvxYP+rq9LHW8gFxGgH4zkerilJ9Hc
         b8ZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750361880; x=1750966680;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZaVEbAHW7iY/RUrqsyRdFPDF+vOux5UgaQ4QVWxZ9uk=;
        b=gLI7s0P7Kf7LDG4JvlhvUZmG9+Ls72k9H84pOIpCBmPRmdZy7y3u1KErgLZyg01uU/
         Le/89OHxLKzo6ggiZo4o6tm9x1H1J0n7TGDdl5pgRkExeEGhiMJkglUXZyFLeLxqrC7N
         d3B5YvB5v8wGwbEbHfCD2DkZP6uNldlkbR8wesl+vSnFLRZCurb09yBAtE7F00MobzQD
         wKri0RLEDQwdt0pFw8Vet6lr63VzY/USHz5w7wPlXzBSkK+zwbkayyauQZ6wnhLY3tz6
         r34nucUm+CdhELFnFdrVEtbr35yBBoUa3iSpCJ5RdPhB3dgB3ijopW7AqgyZ+1F1p4t8
         onqQ==
X-Forwarded-Encrypted: i=1; AJvYcCW1guU12n/bY1AKRxyDfUpUsqf/LF1Jf9yEOAigVfflSp0CNs97WGW2wOe3jbGcR9mVF+XKH5U+F6Pe@vger.kernel.org
X-Gm-Message-State: AOJu0YxzYpYZiN1J05uutS3dmehHlN2mi9uEjbI/EE9byxV8QFlDi/tM
	Qgn32pt5XYqwIsCQ3ooLzv2mYIbjGDfjOuQoJSvOSskMc3kqdZi+uYJOcanFQ+VFPes=
X-Gm-Gg: ASbGncuOH5LXGc9Qa4t6c/hmLvv546RGKDxAZnbXLrXwn89NChMjiD6hwrcnt01e5um
	Kqm2w2c0diSvjDsadbur9BS4wMTIBTTjCTWfYUBqq/fN2w2Ll/myKDsSC/tpAkuDc6QZeLjhtrH
	QV77+taybYN+BJnc9QmCngldyyxR2a+3eJi3CKyW5iMmUXL1FmWglfD7UX+weOzo16Xx57FTgtj
	ESqv/MjA0sxAlWI7MNU88A5gbowbU9nAB0fyfY4PUycR/HWISvMr1tf+6Sg8kYsNMJM9Jta7UPl
	vJj4cl80y7p6lo/dNLWTLmHW9c3HrNYpEF9rJlxAOEqWm5O4tMYoL36A0hHU5Z7Zku0=
X-Google-Smtp-Source: AGHT+IFgv7zs+5tNzhJ+/45mr9xcHdPZuYMSm3sFSJY5FBT30yY7DEIBynYd5jjaVL96Mia5N10NXQ==
X-Received: by 2002:a05:6402:22c7:b0:607:2469:68bb with SMTP id 4fb4d7f45d1cf-60a1d1a3e3cmr160535a12.33.1750361880403;
        Thu, 19 Jun 2025 12:38:00 -0700 (PDT)
Received: from localhost ([2a02:8071:b783:6940:36f3:9aff:fec2:7e46])
        by smtp.gmail.com with UTF8SMTPSA id 4fb4d7f45d1cf-60a18cba2a6sm336394a12.54.2025.06.19.12.37.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Jun 2025 12:38:00 -0700 (PDT)
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Jean Delvare <jdelvare@suse.com>,
	Guenter Roeck <linux@roeck-us.net>
Cc: Chris Packham <Chris.Packham@alliedtelesis.co.nz>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-hwmon@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH 1/2] hwmon: adt7475: Implement support for #pwm-cells = <3>
Date: Thu, 19 Jun 2025 21:37:45 +0200
Message-ID:  <b5cc994cbe74095e39468fd694c721d7c879db78.1750361514.git.u.kleine-koenig@baylibre.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1806; i=u.kleine-koenig@baylibre.com; h=from:subject:message-id; bh=GKZDoxyun/W4D4Ps9+AWIMGftkR3a/WAsAurvdXocC4=; b=owEBbQGS/pANAwAKAY+A+1h9Ev5OAcsmYgBoVGcMm4I8jyxFpy5bMXn2hRwQ2vmgPG5zu8r6s TwpdBC3VAWJATMEAAEKAB0WIQQ/gaxpOnoeWYmt/tOPgPtYfRL+TgUCaFRnDAAKCRCPgPtYfRL+ TsuiB/9pmfUWm9dqxJTFQtO0u4t3GirVNY3lNVWHPWMfX1+qfar/v0Kc3AcCT4uNaFSZNSJn4bx MfVTFCENKGdau/eXCucvhYifPAbABrgieoqiR4XyQ6GYjsF9xMaagqtiPkW23A7USSzOdx9Uoyx d/SnFljJkisf+eMPLJLmC4ai2fbg/+vCY6hzs5jCV8JMe47CzzeCmUlOCZAMXlRrJ4miI0wLyS7 TENFQQ6OZLEDyAPXV6/yjrSXla7jJYpQcpUPcK0ZVzHgZl6ZccyoZoZsg8SMwQrp+gVkrC48oD+ POEVUEnMda03dtA2tlfIdH/D0EYVq6Kz52PJV6uHePdrssO1
X-Developer-Key: i=u.kleine-koenig@baylibre.com; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
Content-Transfer-Encoding: 8bit

The adt7475 driver and binding are outliers requiring 4 pwm-cells. The
typical value is 3, there are a few devices that use a lesser value for
historical reasons, no other uses a value bigger than 3.

Implement support for 3 cells to make the adt7475 binding match the
usual PWM binding.

Signed-off-by: Uwe Kleine-König <u.kleine-koenig@baylibre.com>
---
 drivers/hwmon/adt7475.c | 20 +++++++++++++++++---
 1 file changed, 17 insertions(+), 3 deletions(-)

diff --git a/drivers/hwmon/adt7475.c b/drivers/hwmon/adt7475.c
index 5f2541c11fe9..8cefa14e1633 100644
--- a/drivers/hwmon/adt7475.c
+++ b/drivers/hwmon/adt7475.c
@@ -1704,12 +1704,15 @@ static int adt7475_pwm_properties_parse_reference_args(struct fwnode_handle *fwn
 	if (ret)
 		return ret;
 
-	if (rargs.nargs != 4) {
+	if (rargs.nargs != 3 && rargs.nargs != 4) {
 		fwnode_handle_put(rargs.fwnode);
 		return -EINVAL;
 	}
 
-	for (i = 0; i < 4; i++)
+	/* Let duty_cycle default to period */
+	args[3] = rargs.args[1];
+
+	for (i = 0; i < rargs.nargs; i++)
 		args[i] = rargs.args[i];
 
 	ret = _adt7475_pwm_properties_parse_args(args, cfg);
@@ -1724,11 +1727,22 @@ static int adt7475_pwm_properties_parse_args(struct fwnode_handle *fwnode,
 {
 	int ret;
 	u32 args[4] = {};
+	size_t n_vals = fwnode_property_count_u32(fwnode, "pwms");
 
-	ret = fwnode_property_read_u32_array(fwnode, "pwms", args, ARRAY_SIZE(args));
+	if (n_vals != 3 && n_vals != 4)
+		return -EOVERFLOW;
+
+	ret = fwnode_property_read_u32_array(fwnode, "pwms", args, n_vals);
 	if (ret)
 		return ret;
 
+	/*
+	 * If there are no item to define the duty_cycle, default it to the
+	 * period.
+	 */
+	if (n_vals == 3)
+		args[3] = args[1];
+
 	return _adt7475_pwm_properties_parse_args(args, cfg);
 }
 
-- 
2.49.0


