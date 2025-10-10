Return-Path: <devicetree+bounces-225348-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id ABAD9BCCC0D
	for <lists+devicetree@lfdr.de>; Fri, 10 Oct 2025 13:24:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id EB8384FD67F
	for <lists+devicetree@lfdr.de>; Fri, 10 Oct 2025 11:24:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8CF342F25E0;
	Fri, 10 Oct 2025 11:23:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="ptSE5Hjz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com [209.85.208.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1D692EF673
	for <devicetree@vger.kernel.org>; Fri, 10 Oct 2025 11:23:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760095438; cv=none; b=BNKUWQDUU0T8tzm9xCXkUZig4rsoFSRa3crwgKP84boc9AOae4hSAiyPGEDsGPg/UY2ziWhEvNo5kENyrzZORmrGnI1773aoApNsgCD7raAdr7gJSRnK0cQGpLPhk7b1GCmoc/QDm1EHqKFhn5OPiDBqitbctbBSeIoE6Jc/sXM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760095438; c=relaxed/simple;
	bh=aq/4LlBtdDV9fwTGsuaPOpu5GJBcvTjlliJW466UN/o=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Pn7tpZrnbIeBxj6v6P1XSZMJfW6i6TOy8Nd+bdw3GXdDsUtqPNYxI1SdbJyidr3U9o127r1s1oePD2aeKYQH/GO5DXIuBNccizHs+5qtYTzIzWYLhrpuiPGhrDXy/8xHjGoXPBT+YHZJ1QyrxRWZ5BfBAbBONyUyR8zpJEP1oc4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=ptSE5Hjz; arc=none smtp.client-ip=209.85.208.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ed1-f41.google.com with SMTP id 4fb4d7f45d1cf-6394938e0ecso3148042a12.1
        for <devicetree@vger.kernel.org>; Fri, 10 Oct 2025 04:23:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1760095434; x=1760700234; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xbHU47lVJvPoAqNYQLf5z1X0/coxYDZLmDD+Zs19Aq0=;
        b=ptSE5Hjzhl7uTbavQpg6W3FOgMvpAYNLiJOawlMh51IedLTJ2OAYYf6N4oWs6DPoTi
         lsJa5N94AhYwvvu/JqjENZ4Vu5os6cqtcHuH+pqNos9GrNXkriYpK8+m+4ZVHxSBLwiM
         9LI3l8X08GfNwSQbd1MRPnS0heorG1q9wK45OxzahggJMig7etSJA2iAOuVjTSOyyK9g
         AyLBYZZKYo9FdesyyLeskUR0v2060gXg0meG2adAJNZ39i8ghI2Cdzbq/p3gtnjJ2nNJ
         wbqaGyM98qlLbtv6xvnGjSp7mzP2ExrG7wTfLzlCxL2hKtcTwkd8rtHb2q6WVeRhQZE3
         Af4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760095434; x=1760700234;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xbHU47lVJvPoAqNYQLf5z1X0/coxYDZLmDD+Zs19Aq0=;
        b=KCc+VjogAE4J+xkFdtO8k+tQFd9af5Iw0r08eIjSYojOVs7hk+Ld1sf3W7CiogJyRm
         0Etqc8YYawIb5fOI5Rwk4v7SNJTe06x3DvjejbPXYku+Ifi9ys/ujRJSCk9KRXNKMrcm
         5b/v/2w36WiEfkClKAuqYiZal4ukLcl9gl+cIpr3ISTAOUPB1ovw7evZn8YxUkGrPzem
         LKRrAX/AuVmADGH+S53Hd+MUTQQ1TO38EIGGUaCKSlPMsfNeqiXq7qnLRvE29ZMzTJcN
         V3oGXINVRotloNPaRoKjBL1y/ypq6tX+NJHrYT6zGg1WpSQbv6YHCRA0lU5uZH+wX4ps
         ODGw==
X-Forwarded-Encrypted: i=1; AJvYcCW2KyqtlHHYhVrn2q05oWtDGROWhTzcaIhTOIyf+WC42U2Nvsz+9xjZvFhO0/VkVRn0eB39KCkROQ0u@vger.kernel.org
X-Gm-Message-State: AOJu0Yw3kZoYA+ihUDW8M0cnUtFT3tWeAnQxuRKf0Jcg8bwf9GLeVq6y
	oAatDlYVW4LyWi0v+5QksLKIIihHRzuFCKplFySVYUjJmECp7xqFCSFq7fNYH+G/yl0=
X-Gm-Gg: ASbGncsuH1IAIZnTfCuqkFwWi3eM7k3ghubIWxBJuSb9J/nKVDvGt841eT6dD8iwkgC
	xEhP8nh2YTzKHLv3vkN6sVpyiR7m33nVy5BqGxnPbkS91yrs7OJiMBiL28I2jqrhWb+dX+DzYV1
	mwauepxvad0kP26UQ3H7z3CbmBO7JYLubmxqDm3BdHBpPY0CXNPmT7o70yyIK7QKi9W3RVkLu1z
	j9GXLoywU9pPFeDwww7Saf1Y/+xCNVG0Nv3hGoWYoTPhRgi15EtUk5XwXUe/MkB6Cs0Fzq4Tw+p
	uZjCRRdJS/Ix299Xx3bF1NsSFWcu60wTowyfUoASeglfFuyTYhWDXJT8pHCxcaMIDO372xsu7U6
	YY3qWZ1O57v/M81hWOETdED6aB6YX0gejQItFuxPcLPbJLOCp+xoHgSGKpWXP1FKSYqb6zH2YdX
	Q1pnncJ7qk8Cc7xITtGfM=
X-Google-Smtp-Source: AGHT+IEGGOcXMfbfok1PgzreNouwnXwnOxKHke/yHbjyLVTMxF0ZeD3AzIE5Lo/WXZ+3jpLEgrXUlQ==
X-Received: by 2002:a17:907:7f0e:b0:b48:44bc:44f2 with SMTP id a640c23a62f3a-b50ac8e52b0mr1079525366b.43.1760095433928;
        Fri, 10 Oct 2025 04:23:53 -0700 (PDT)
Received: from [172.16.240.99] (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b55d900bf8csm209905766b.59.2025.10.10.04.23.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Oct 2025 04:23:53 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Fri, 10 Oct 2025 13:22:02 +0200
Subject: [PATCH RFC 4/6] thermal/drivers/generic-adc: Allow probe without
 TZ registration
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251010-bat-temp-adc-v1-4-d51ec895dac6@fairphone.com>
References: <20251010-bat-temp-adc-v1-0-d51ec895dac6@fairphone.com>
In-Reply-To: <20251010-bat-temp-adc-v1-0-d51ec895dac6@fairphone.com>
To: Jonathan Cameron <jic23@kernel.org>, 
 David Lechner <dlechner@baylibre.com>, 
 =?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>, 
 Andy Shevchenko <andy@kernel.org>, "Rafael J. Wysocki" <rafael@kernel.org>, 
 Daniel Lezcano <daniel.lezcano@linaro.org>, Zhang Rui <rui.zhang@intel.com>, 
 Lukasz Luba <lukasz.luba@arm.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Laxman Dewangan <ldewangan@nvidia.com>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Hans de Goede <hansg@kernel.org>, 
 Jens Reidel <adrian@mainlining.org>, 
 Casey Connolly <casey.connolly@linaro.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, linux-iio@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org, 
 devicetree@vger.kernel.org, Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1760095429; l=1291;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=aq/4LlBtdDV9fwTGsuaPOpu5GJBcvTjlliJW466UN/o=;
 b=g8H90MmiVQbUf34k7FO9FschEuUpZ8+riafTdgCUcqiIfMwO8Gl+ddsWuyUlJKZ5GMtv0OT0Y
 CC07fjXLbWRAMXyYnitoWqrLXpblN5+yM5fIh5ZBkqstAtSmldwJ1G7
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=

If the devicetree node is not referenced in a zone under /thermal-zones,
devm_thermal_of_zone_register will fail with -ENODEV.

Since the driver is now also registering as an IIO device, allow the
probe to continue without the thermal zone.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 drivers/thermal/thermal-generic-adc.c | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/thermal/thermal-generic-adc.c b/drivers/thermal/thermal-generic-adc.c
index 14aef682e0fb..d31533927be6 100644
--- a/drivers/thermal/thermal-generic-adc.c
+++ b/drivers/thermal/thermal-generic-adc.c
@@ -183,14 +183,14 @@ static int gadc_thermal_probe(struct platform_device *pdev)
 						    &gadc_thermal_ops);
 	if (IS_ERR(gti->tz_dev)) {
 		ret = PTR_ERR(gti->tz_dev);
-		if (ret != -EPROBE_DEFER)
-			dev_err(dev,
-				"Thermal zone sensor register failed: %d\n",
-				ret);
-		return ret;
-	}
+		if (ret == -EPROBE_DEFER)
+			return ret;
 
-	devm_thermal_add_hwmon_sysfs(dev, gti->tz_dev);
+		dev_info(dev, "Thermal zone sensor register failed: %d\n",
+			 ret);
+	} else {
+		devm_thermal_add_hwmon_sysfs(dev, gti->tz_dev);
+	}
 
 	indio_dev = devm_iio_device_alloc(dev, sizeof(*data));
 	if (!indio_dev)

-- 
2.51.0


