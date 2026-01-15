Return-Path: <devicetree+bounces-255650-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 06834D25302
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 16:11:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 67790300CA02
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 15:10:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BED6C3AE6FB;
	Thu, 15 Jan 2026 15:10:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="awqxOGH4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 98AD13ACA6C
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 15:10:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768489843; cv=none; b=SdXAZBz91kZUwxqM5I/0Twx9BiBhkhjGpjxctQ276TF/MRGwVKQH9B5j9U3NXltvnMSAChNAM6KW0PbmEqpWVy1o32/m8X4jt8G8HJvHo/6b7rBnQtD0G/XItT8L+wSmRJIMipAQi01uMzoyI6SKE8ogIJGNAr5ScBemqO7POwU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768489843; c=relaxed/simple;
	bh=37ssBE3aanUugoLgxto0YwPyHpxoTGe7/lnWA6Cd1/4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ZvIN2RbYFEvuENEkiRn7yVGNlDW1DHjzSFCcRApM3Fq0N5pzrAUzkMBe1EBBC/M+Ty3uq2ZplV2lC1DN92CXuwxgmLJ1qZWBQwm1NQJbAACoKw+1DCra9mKkqlbUy+2lg6CBzZxPiNonJxRHTP8AY3YwbJBTghRQe0I9YN6cisw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=awqxOGH4; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-47ee301a06aso9647255e9.0
        for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 07:10:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768489827; x=1769094627; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=M11xPiXaInwVnEMGq59nYgno6MdcMcqZX62iafSYodw=;
        b=awqxOGH4jxKzmyKtx/4jGpeWy2goEGWU9FqwGpICyoFZX3OrjGqnWcZmvCm2ZoB5lo
         Q94rUkiyxftm3E6tNFPMITfwYCW6nIqofYHJilDDZQepErzvcRKmhWtC50DnHDaYwUIZ
         JokW1sRFd4m3J1HLdXJlW9MYRXEKQTGeLFZqqcDOdvDY2k/xzSNrH1NnXFiCP9FfcZAT
         DcGjOaKUodI0X0C7hsIcqmGfa/SJ12ZaVSp3BEU+Q3YblYq5NxAffJHPGkS6xGdlW1Fz
         4J2gdYae2M+fp5ggzTJjXq62VmoZOUvWcTQC7BTOkg39uMoAJtobHsRYF6efIXmssANM
         ApVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768489827; x=1769094627;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=M11xPiXaInwVnEMGq59nYgno6MdcMcqZX62iafSYodw=;
        b=us7T0HiAVAooGkl/AlOnzyxK5i9rBO1WGwopbdJ4NFmBOh+h7SOFZUmPf+iuGweXKI
         hPPD39I/m+LaqhGvfWC3sjTd6AFrOcHqbDhCpGR0SlThBsUOrLqBwx+PNaWSlCzYif3t
         c4XxBCdS0EXF8H6QAD/rFmqEYjZs757W8ZgACBV1Eo1EQZaKOauQ90/HefWfSzYSIRZ0
         BFkbpfaDzMyYsTjxUnXUOoLbdK8UQfOPJ2spQSl6QiPqd2Wdd1zV2v7gy0M3uRhTJVA9
         0d7bHuJhu4NYtLWvyQt9rZw+M6PlA0YUzCBAK6L1/TelnHcFXMOYuo4Yleus5kKIYXEI
         pe9A==
X-Forwarded-Encrypted: i=1; AJvYcCVJghR6Kctxj8JQV3W2VkhgUKwemzLsQ0PyrNHr8MZuiE2yxhMZLn/YMxU56EtnTL1iPQaqoIiTEVKV@vger.kernel.org
X-Gm-Message-State: AOJu0YxYTIcVXlov5xG01jFjVlQoQFX8mnpJIHNgOAU+hgW1hHsYY+DW
	sOZ5bUDPiiVrQ+UpJCOFM1IyHqgnUGZDcKU9J7sqnuNXYKvDmrot/3Tl
X-Gm-Gg: AY/fxX5Y8g5M3G+ij+/CXXST3t6LpWVDTG0h2BkoUK2EbjyTblhlj85p9h0V5LT3sYm
	suT/zytAYM0gg3ENG8htQIoge0DpLct9qoywcHnqA/IP0HhmPEy52fZ3h0Rj4c3hn5yo4YBGgLW
	AQ3/80UBk+S+nmOSO04gTk4tXHebmbmu4WqjPO0BnUnAPzYK7EnLtdJRPQmuau/h0H9HbOJoI5g
	tIPA2NdBG8MOQPaqREHHePIXsdGehTTXXpzeMSYNhqL5NPIJbNS7dkr6JfsvxWehhHG+mkGcf1/
	NCS67TtMXsGUP7mFA8XeF8O9EzEtl7rb7gv+qTqVDuJHEMAmNUi+I/Mmp2ONB5lrhzHBBtTdRhT
	x/avwoS9w9pq75Sq3HZfgfK8DUsVYUfDzPp6H4CYfRwwQoPWrEBcn6w/fLtYGj6v7Msd9XPR4gR
	zFHnPx3QSp6FQG0s+2o9Tu4W1lY+eCYD1uDie6JtzFT5pKm8IFnZiXaqL/NLpGYr0b
X-Received: by 2002:a05:600c:a0a:b0:47d:3ead:7440 with SMTP id 5b1f17b1804b1-4801e34fd4cmr521465e9.32.1768489827187;
        Thu, 15 Jan 2026 07:10:27 -0800 (PST)
Received: from localhost (brnt-04-b2-v4wan-170138-cust2432.vm7.cable.virginm.net. [94.175.9.129])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-434af6535c7sm7011861f8f.16.2026.01.15.07.10.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Jan 2026 07:10:26 -0800 (PST)
From: Stafford Horne <shorne@gmail.com>
To: LKML <linux-kernel@vger.kernel.org>
Cc: Linux OpenRISC <linux-openrisc@vger.kernel.org>,
	devicetree <devicetree@vger.kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Stafford Horne <shorne@gmail.com>,
	Linus Walleij <linusw@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Bartosz Golaszewski <brgl@kernel.org>,
	linux-gpio@vger.kernel.org
Subject: [PATCH v6 2/6] gpio: mmio: Add compatible for opencores GPIO
Date: Thu, 15 Jan 2026 15:09:58 +0000
Message-ID: <20260115151014.3956805-3-shorne@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260115151014.3956805-1-shorne@gmail.com>
References: <20260115151014.3956805-1-shorne@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

On FPGA Development boards with GPIOs the OpenRISC architecture uses the
opencores gpio verilog rtl.  This is compatible with the gpio-mmio.  Add
the compatible string to allow probing this driver from the devicetree.

Link: https://opencores.org/projects/gpio
Signed-off-by: Stafford Horne <shorne@gmail.com>
Reviewed-by: Linus Walleij <linusw@kernel.org>
Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
Since v4:
 - No changes.
Since v3:
 - Order this patch after the binding patch.
 - Add Reviewed-by's.
Since v2:
 - New patch

 drivers/gpio/gpio-mmio.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpio/gpio-mmio.c b/drivers/gpio/gpio-mmio.c
index 5daf962b0323..edbcaad57d00 100644
--- a/drivers/gpio/gpio-mmio.c
+++ b/drivers/gpio/gpio-mmio.c
@@ -724,6 +724,7 @@ static const struct of_device_id gpio_mmio_of_match[] = {
 	{ .compatible = "wd,mbl-gpio" },
 	{ .compatible = "ni,169445-nand-gpio" },
 	{ .compatible = "intel,ixp4xx-expansion-bus-mmio-gpio" },
+	{ .compatible = "opencores,gpio" },
 	{ }
 };
 MODULE_DEVICE_TABLE(of, gpio_mmio_of_match);
-- 
2.51.0


