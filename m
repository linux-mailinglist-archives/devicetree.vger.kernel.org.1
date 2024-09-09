Return-Path: <devicetree+bounces-101462-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FC19971E3F
	for <lists+devicetree@lfdr.de>; Mon,  9 Sep 2024 17:39:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 122A31F23E97
	for <lists+devicetree@lfdr.de>; Mon,  9 Sep 2024 15:39:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 491931339A4;
	Mon,  9 Sep 2024 15:39:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="3btQtouZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1DE14D8DA
	for <devicetree@vger.kernel.org>; Mon,  9 Sep 2024 15:39:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725896364; cv=none; b=Qq1iI4A2EKqMH6q+jWeiAasVRxRhGxGYP1GLLSk87DnOsmS8+iaE5Skz+nFhGPe4C5vaem1U+FF3/6w0GhobJ/RVlwBe4ziJVs1FvBnG5d1tGrrpDglKr4TIUy7rfCdyEK10wG4ry6cB2xnQl8qqirwVl6kobvvn3NRZi8Qjdlg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725896364; c=relaxed/simple;
	bh=vJ4BQU0XZIcK8J00Oopy9XQQFvb4Ue39E+Oh6NKsto8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=WGPc6k9gwUnYYq7pLklsFd2KRRL33ly5W8IVU073BcpFb5fw3gUACnaS+fSfyQJMpBbYV8XWncLcmXlaM3+PckyymEBU/w+Vr9olXVpjrPul9kTssv1stwazLGla4gi3Fcw7KiFuovKfvmwrcvkI8s3cUub7riyJwOUBTVguAwk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=3btQtouZ; arc=none smtp.client-ip=209.85.221.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wr1-f48.google.com with SMTP id ffacd0b85a97d-374c4d4f219so2787784f8f.1
        for <devicetree@vger.kernel.org>; Mon, 09 Sep 2024 08:39:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1725896360; x=1726501160; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MhtRCE6PbFntlTL0HxjwIxBidPbr+PaAQPsqAyH1vys=;
        b=3btQtouZjSEFEJhEddG4Hj8fI2+k7OH9YwCXiRTo/W7VDen/Uf8Sfx/bx3vEDxHgTE
         W1OuqNYmCcXxunfLDwjyDzK8fkJ1++KU3/3RnAll2O5l31LZ9CkURsELvwu6tn1Z24OG
         5nifKFfUVebXABpkMf0dz4IXRUrS1HhpHSOLxlXwcPqKP/yl5j0JV9aEj43ojmk3Mr0e
         /Kel3EzaykHvm/7JmFedq/c8Bj5YXWBUYo6CD9D14i2anaINwJapAOwcqtnYdaZm4Cuq
         A8xpMp6t2JZ+9cPTYF/l4oWFonvkp0DaUdiIdVNMRaNDSjjah0Ue5mKj+1aOQA6UxkLN
         0pXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725896360; x=1726501160;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MhtRCE6PbFntlTL0HxjwIxBidPbr+PaAQPsqAyH1vys=;
        b=k9g7YCLPV10UYcwjTRKbH3MfOcCKy45WGDyiWddB7xErZwDDPTSjpkI5IxeKkqVvWN
         Y/qjgd83bfCJvYNshSHiPWKQoQcJqvkRcTWuLwj9DKph8x0LauKkwnYENKZprVRUNY5V
         XiBlt1wqYC93nUeT9auEsCoL+iDEJSUIrGlhuR2dM8DZ+ADM3Ou5YnxF1wLbrbEk4aac
         J/2QrrSnqORd/FC59aTIC6KpYRLQtpCWAf+XoZ7hb0TcID8+jGFDywdkcvRrvpVfY/MX
         S9UCbKTNYs0BIxC6B7wpgqkn4PpF3sC99F8Ky8eh6NqKJpgupxCKh8ubwNXUa0u+gjV4
         xEbA==
X-Forwarded-Encrypted: i=1; AJvYcCXRk9OsAFs/+cDTPQxjou9fUQJotcW3q2CCCAnuKMaueaWaTcaA3e+wsUFXUfyGIV4rakdzd+cHNBjI@vger.kernel.org
X-Gm-Message-State: AOJu0YxVZk5IVkq3RtRizkSng3kqO9E/VDxnRd2W9lCBKDeHzr9fgGZP
	y+YHoJ52rKm5Tdgxf77c3i1THOaMiSefBRpEWMoWcHwDH5LVtrHtVvEmKA/X0EI=
X-Google-Smtp-Source: AGHT+IEJgxPHK8MMMPe3LUlF7ZdETXabJsvUYuGFTUOiVywij0WZCN5KQkmE2azknuKxQLLKoQwBnQ==
X-Received: by 2002:adf:f206:0:b0:371:8ca4:1b76 with SMTP id ffacd0b85a97d-378896121f2mr7228196f8f.32.1725896359182;
        Mon, 09 Sep 2024 08:39:19 -0700 (PDT)
Received: from toaster.baylibre.com ([2a01:e0a:3c5:5fb1:788a:4542:ae86:67f4])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-3789564af1asm6305145f8f.18.2024.09.09.08.39.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Sep 2024 08:39:18 -0700 (PDT)
From: Jerome Brunet <jbrunet@baylibre.com>
Date: Mon, 09 Sep 2024 17:39:04 +0200
Subject: [PATCH 2/3] hwmon: (pmbus/core) add POWER_GOOD signal limits
 support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20240909-tps25990-v1-2-39b37e43e795@baylibre.com>
References: <20240909-tps25990-v1-0-39b37e43e795@baylibre.com>
In-Reply-To: <20240909-tps25990-v1-0-39b37e43e795@baylibre.com>
To: Jean Delvare <jdelvare@suse.com>, Guenter Roeck <linux@roeck-us.net>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Jerome Brunet <jbrunet@baylibre.com>, 
 Jonathan Corbet <corbet@lwn.net>, 
 Delphine CC Chiu <Delphine_CC_Chiu@Wiwynn.com>
Cc: linux-hwmon@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-doc@vger.kernel.org, 
 linux-i2c@vger.kernel.org
X-Mailer: b4 0.14.1
X-Developer-Signature: v=1; a=openpgp-sha256; l=1966; i=jbrunet@baylibre.com;
 h=from:subject:message-id; bh=vJ4BQU0XZIcK8J00Oopy9XQQFvb4Ue39E+Oh6NKsto8=;
 b=owEBbQKS/ZANAwAKAeb8Dxw38tqFAcsmYgBm3xairYSGGaLEKh/WnARwotxDj4C2L/d3Tc/6d
 XGKzwAM2g2JAjMEAAEKAB0WIQT04VmuGPP1bV8btxvm/A8cN/LahQUCZt8WogAKCRDm/A8cN/La
 hTWrD/sH/ZzBTCRaI5fuZQnDD53t6rP5XdAGe//eiiyh0tbtCh+pDxadxfodQU3qq5nDnVCAvXN
 aL5SPFf9V//nKQ6cc2z5OsLTkZ0LgQsKWiad2LAuh9o2vTkM8D48Kwd2DEZWs1z4rxcqD05JtFK
 cJzC47s3Lpu9YsDmkGVbG18lsNiYLMaN7LeqpkVSWfPyo/OBv+PzlILrQ4YOt+9xb+HjkshEj0q
 8yc0bhBOT6gku0d4au/aAkkpTyVZ/AWMUjLn28yG0FpKXY86bmBrVRkX3pTSIphmB/gP7ZIAJgE
 qT8B1KWLajtWj612KdAYlXeJmQellE/vBpqL6EoVfvNDqrJmE7T0T8qf3k5mLdqISHMc+zq5fTY
 3nfb/ahqgVbnr6dqYPDgWnDOZp7NKlNJ5+rN+sOXA6ucZbS27vIvOPk6hZM5RsFsryULFmR/wei
 /gvpr/DQLt8+8l7mbD9TanXkcBGqKySK+MpHhR31nE5h7m7f0HTWcUTdI4IgqI/DroSAbB+i8Hz
 a09NrA4s7XGzsl2BW5p/TRLIXlX0ITIMYudIr8ArWi8a6GfU2fLpGvUj6IQp+IC6LGqvEv+5WM4
 WfWTnzNzCdV9ij4jCEVwVmEv+1j1pDZqQGEbEPyld+O3lsKhvNd7bm6lcZv4n2gHLtcGMjkIBuf
 WHdzx7vbPcc9N8Q==
X-Developer-Key: i=jbrunet@baylibre.com; a=openpgp;
 fpr=F29F26CF27BAE1A9719AE6BDC3C92AAF3E60AED9

Add support for POWER_GOOD_ON and POWER_GOOD_OFF standard PMBus commands.

For PMBus devices that offer a POWER_GOOD signal, these commands are used
for setting the output voltage at which a power good signal should be
asserted and negated.

Power Good signals are device and manufacturer specific. Many factors other
than output voltage may be used to determine whether or not the POWER_GOOD
signal is to be asserted. PMBus device users are instructed to consult the
device manufacturer’s product literature for the specifics of the device
they are using.

Note that depending on the choice of the device manufacturer that a device
may drive a POWER_GOOD signal high or low to indicate that the signal is
asserted.

Signed-off-by: Jerome Brunet <jbrunet@baylibre.com>
---
 drivers/hwmon/pmbus/pmbus.h      | 3 +++
 drivers/hwmon/pmbus/pmbus_core.c | 6 ++++++
 2 files changed, 9 insertions(+)

diff --git a/drivers/hwmon/pmbus/pmbus.h b/drivers/hwmon/pmbus/pmbus.h
index 5d5dc774187b..e322d2dd9fb7 100644
--- a/drivers/hwmon/pmbus/pmbus.h
+++ b/drivers/hwmon/pmbus/pmbus.h
@@ -78,6 +78,9 @@ enum pmbus_regs {
 	PMBUS_IIN_OC_FAULT_LIMIT	= 0x5B,
 	PMBUS_IIN_OC_WARN_LIMIT		= 0x5D,
 
+	PMBUS_POWER_GOOD_ON		= 0x5E,
+	PMBUS_POWER_GOOD_OFF		= 0x5F,
+
 	PMBUS_POUT_OP_FAULT_LIMIT	= 0x68,
 	PMBUS_POUT_OP_WARN_LIMIT	= 0x6A,
 	PMBUS_PIN_OP_WARN_LIMIT		= 0x6B,
diff --git a/drivers/hwmon/pmbus/pmbus_core.c b/drivers/hwmon/pmbus/pmbus_core.c
index 0ea6fe7eb17c..94ddf0166770 100644
--- a/drivers/hwmon/pmbus/pmbus_core.c
+++ b/drivers/hwmon/pmbus/pmbus_core.c
@@ -1768,6 +1768,12 @@ static const struct pmbus_limit_attr vout_limit_attrs[] = {
 		.attr = "crit",
 		.alarm = "crit_alarm",
 		.sbit = PB_VOLTAGE_OV_FAULT,
+	}, {
+		.reg = PMBUS_POWER_GOOD_ON,
+		.attr = "good_on",
+	}, {
+		.reg = PMBUS_POWER_GOOD_OFF,
+		.attr = "good_off",
 	}, {
 		.reg = PMBUS_VIRT_READ_VOUT_AVG,
 		.update = true,

-- 
2.45.2


