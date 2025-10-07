Return-Path: <devicetree+bounces-224163-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CB17BC1280
	for <lists+devicetree@lfdr.de>; Tue, 07 Oct 2025 13:19:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B968519A04CD
	for <lists+devicetree@lfdr.de>; Tue,  7 Oct 2025 11:19:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 02D592DECA0;
	Tue,  7 Oct 2025 11:18:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="b+jnj6UO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f180.google.com (mail-pl1-f180.google.com [209.85.214.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18DEE2DA762
	for <devicetree@vger.kernel.org>; Tue,  7 Oct 2025 11:18:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759835909; cv=none; b=mPVYGHIKnaEIYn/RXTh/ug7faN7fvfA+Lhf72mrcQZBFC0zFF4NWFI1drkWJoqtWprxuj6cNvrQqv6LnufeV5jbCMdho+KQa0aYhZKopaA2drZfW/SvSOyVHI5g3NU0ehcz1ptkx5uXzd/eC7frrknAoHaIrmMEeh0CN+jMKFUo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759835909; c=relaxed/simple;
	bh=9CvGSj3k52YgdYK4J0MHeIq2HkIZQxGeUJahNJ19td0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=qtrUMTsqipEq7yVaqwdR4GDVcciYZTI4Gozap0hoYhwa/xFTsp0m7DKmPFOa8uQf98fMm+NI8X8mtd6YAjKCCETp20R9Ylyp957cmbyIuDTR7jG2BVXxbmCjpGavYUFM1llugQQbIC1pwEGoslVyxXfpV8eSZkGMClPp0UEtQIo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=b+jnj6UO; arc=none smtp.client-ip=209.85.214.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f180.google.com with SMTP id d9443c01a7336-267f0fe72a1so47536545ad.2
        for <devicetree@vger.kernel.org>; Tue, 07 Oct 2025 04:18:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759835907; x=1760440707; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6CiHvIx4iCcyVz9XM+n+OAI2ebsG3UALzSjgEuG0sIw=;
        b=b+jnj6UObutrWihY5DzYo1hdQkb4zq9q0OX1jft9AfFJJ7TnzslKEHnAVHzD6SaPy9
         NS/nacyK7Q1ldGnj4NT+KCtLJovbQoY32F6OxS2OTYegbG06gREre1s9hkDzIz+OKGmb
         gTVJ103Hi64t82XlsMCT3hOn2v9AT3Irpjd0HHhk577ICYA1rL3Pmh3Y5DEzUGhs4oc6
         XlRgsFm1oT0Qf5lsEXdq10vqnUVs9znH5xZ/ltk48nPRLv+sxGKgYxOZP0vJMBztUXeY
         ARIYeKMT0Rz6Y1fBVTuzv5jdX87t9QZ8IyE6zYxeBmQHoILrXHvmHP675tmP7nDbcEh7
         Q0SA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759835907; x=1760440707;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6CiHvIx4iCcyVz9XM+n+OAI2ebsG3UALzSjgEuG0sIw=;
        b=wzcir8dbKgRgC3DgGoF+Lgwjv1DlB1YAC399FElyZhplaB8fzCUncxWd+JU4U+Ig4p
         mkwkVJf9rfxHXtK9nihLULNt0IhylQY8cJHbH+iaXLfkclcmtxHcoxxDcZNC3BqXnRSR
         xzD6thfLXfaUUyLYDbKkLu5m7vwrtnEpuYO4np7ojxIYUO4nQT0pl2KW0nQr85eTyyPx
         knW11JU/2wH43c4ClQZrzqdcwZ9lkCtQjlu8BGBpO9tbUAN8bbQi+GbGA5IFo+stYntp
         N5jxIlmd5EIfetBfaWJJpikxW/pu3ytqOr32Mb3K/dI0ZZyZAu77D24qgP3EXdZAQ9yL
         1vkQ==
X-Forwarded-Encrypted: i=1; AJvYcCWWuNXFHwxu7rDwGPltFUXo9mHugWcYC8HL4iR3bTIWVDfsSG9tHhbkHc9MHYem1NozJ4ea2fxrwU5j@vger.kernel.org
X-Gm-Message-State: AOJu0YyqI8N5L8unNpruXy6iEN18Ebbh7E/Wsipha2aCp8FfwBucJSOn
	STc3gq8wFV60Qedt+uRGXI96Xa7hAhMLGEFk72Z3B7VY3MZhvwhjIcIn
X-Gm-Gg: ASbGncuaje6mG5ush38reGXZiUhYZLkPZQXTMWZrcYiZ/BTeQSwuRRWVOwhiXPImnA8
	Ryi7WUeyvDICz7jPSWawBU9Ia3BwC8t0YA2+Ri4DjiZL7g1YUho2MnAKEFzX2MLQ34FEPikr94h
	9zvNBCIrynfd+gERsINZfjlxcUjQovVCTixuhh+MsWh7ySNQZafpa7oMLtW/dVqTvc/L7/3PhcU
	XHfwmxNCqAXw2dLgQePd2vgMIxbuuuXz0+Im1h6KYZoppRfOeGWxii5vKRm+HlZFOrwc1YvocsZ
	HH4Y6bmlC8OugaBAHDeMe5mPSod6TnW6ZIRE+myAAu0HzfSFYCdxHObuLXz3mRMi2DN9CzQZJHq
	fFGOdnMvOfYHRJ0dmnQBAGWCCAF4tOEl2t7M9l3inwR6P33HbxagIuLDJJA62SMTSacQks7xrIQ
	l7F47qgfq6inpWsbZNKXRI6fcTa4pRj/FnznFl5BmCtA==
X-Google-Smtp-Source: AGHT+IHQowcxR6757+GlLYRBHRpFuOKwNlnMD9n4eoDO0fw6pZm/bFX4pWpzRYdC3fx/Hl4yuHMEZw==
X-Received: by 2002:a17:903:2411:b0:269:6e73:b90a with SMTP id d9443c01a7336-28e9a5f9e35mr217258715ad.15.1759835907147;
        Tue, 07 Oct 2025 04:18:27 -0700 (PDT)
Received: from [192.168.2.3] (2403-580a-80ed-0-4835-5a07-49e7-f115.ip6.aussiebb.net. [2403:580a:80ed:0:4835:5a07:49e7:f115])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-28e8d1d31bdsm162509045ad.94.2025.10.07.04.18.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Oct 2025 04:18:26 -0700 (PDT)
From: James Calligeros <jcalligeros99@gmail.com>
Date: Tue, 07 Oct 2025 21:16:50 +1000
Subject: [PATCH v3 09/13] mfd: macsmc: Wire up Apple SMC input subdevice
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251007-macsmc-subdevs-v3-9-d7d3bfd7ae02@gmail.com>
References: <20251007-macsmc-subdevs-v3-0-d7d3bfd7ae02@gmail.com>
In-Reply-To: <20251007-macsmc-subdevs-v3-0-d7d3bfd7ae02@gmail.com>
To: Sven Peter <sven@kernel.org>, Janne Grunau <j@jannau.net>, 
 Alyssa Rosenzweig <alyssa@rosenzweig.io>, Neal Gompa <neal@gompa.dev>, 
 Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Alexandre Belloni <alexandre.belloni@bootlin.com>, 
 Jean Delvare <jdelvare@suse.com>, Guenter Roeck <linux@roeck-us.net>, 
 Dmitry Torokhov <dmitry.torokhov@gmail.com>, 
 Jonathan Corbet <corbet@lwn.net>, 
 James Calligeros <jcalligeros99@gmail.com>
Cc: asahi@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-rtc@vger.kernel.org, linux-hwmon@vger.kernel.org, 
 linux-input@vger.kernel.org, linux-doc@vger.kernel.org
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=737;
 i=jcalligeros99@gmail.com; h=from:subject:message-id;
 bh=9CvGSj3k52YgdYK4J0MHeIq2HkIZQxGeUJahNJ19td0=;
 b=owGbwMvMwCV2xczoYuD3ygTG02pJDBlPvm3bdvpC9h7ukB/rRA8obS89f9hMtfzQ5LZlU/1yf
 m/m3NIwuaOUhUGMi0FWTJFlQ5OQx2wjtpv9IpV7YeawMoEMYeDiFICJlK5j+F/ecz513768gKhX
 oQt1SgQCP8Zw/Du3t4Dro0n/rujl184y/JU0nKG83EgjvuMO9/Z7PNYWE/aGVTK4N/ksY9ifXeX
 EygsA
X-Developer-Key: i=jcalligeros99@gmail.com; a=openpgp;
 fpr=B08212489B3206D98F1479BDD43632D151F77960

Add the new SMC input function to the mfd device

Reviewed-by: Neal Gompa <neal@gompa.dev>
Signed-off-by: James Calligeros <jcalligeros99@gmail.com>
---
 drivers/mfd/macsmc.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/mfd/macsmc.c b/drivers/mfd/macsmc.c
index 51dd667d3b5f..3b69eb6d032a 100644
--- a/drivers/mfd/macsmc.c
+++ b/drivers/mfd/macsmc.c
@@ -45,6 +45,7 @@
 #define SMC_TIMEOUT_MS		500
 
 static const struct mfd_cell apple_smc_devs[] = {
+	MFD_CELL_NAME("macsmc-input"),
 	MFD_CELL_OF("macsmc-gpio", NULL, NULL, 0, 0, "apple,smc-gpio"),
 	MFD_CELL_OF("macsmc-hwmon", NULL, NULL, 0, 0, "apple,smc-hwmon"),
 	MFD_CELL_OF("macsmc-reboot", NULL, NULL, 0, 0, "apple,smc-reboot"),

-- 
2.51.0


