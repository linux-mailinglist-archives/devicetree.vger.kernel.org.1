Return-Path: <devicetree+bounces-160166-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 941AAA6DAAE
	for <lists+devicetree@lfdr.de>; Mon, 24 Mar 2025 14:02:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9749C1894EED
	for <lists+devicetree@lfdr.de>; Mon, 24 Mar 2025 13:01:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BB69525F96E;
	Mon, 24 Mar 2025 13:01:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Ul0LT6ui"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFBCA25F7B5
	for <devicetree@vger.kernel.org>; Mon, 24 Mar 2025 13:01:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742821272; cv=none; b=CBMMcSHB/zOwSqEVIlW3oqDSDul8IiD8YL/XB/JdqlqPHufIpd2dkPgM2Hdxp9EAqHQf2f5uDGm+044LF/1mXY6xb/+D8ieTGajI6U7NEbD2buQqfG5Fg6S4W4HvtE3smZ2FEFhmIU1/sR4XIW/Tsj+CPqsdswSrszc1CpAzL+c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742821272; c=relaxed/simple;
	bh=5X1aPO2z0jUPOmAmxxbRnG88+AZ4I5yT718/OM1HQtE=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=XWRrTWb6NGt2HUvSapRI6NMk42TiOyZYQpQnHwRIJfUdPt/jU6APhnvO68hDRycBeM6sMMF+LsVPsTEEYjrVZTZxyaVsoNteTltGPu/CvhuP+a5bbSB369tsWebOO+fMUv2hqsHVH9Nv5aHlWW/kAcghrPYuiNVDD8Vc1Z1cFHo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Ul0LT6ui; arc=none smtp.client-ip=209.85.221.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f52.google.com with SMTP id ffacd0b85a97d-3913d45a148so3525331f8f.3
        for <devicetree@vger.kernel.org>; Mon, 24 Mar 2025 06:01:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1742821269; x=1743426069; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QPfdok1uXbCV3fbB68Oh0kuMKD9EmCqvBmSN9d5b64A=;
        b=Ul0LT6uieI/DmeoDFkKRrthD2oFdaD5xGZ8BaDhDTRtRdaWO7DA1P6fFsniZcYG4aG
         3UIr/1ApjvwPstSVX2wM+Ngfk/onG102Sb7dgJamoQGljKD9hH5uAFRnCJwDiHZr6Zaf
         P2t+EHU9+0Vk9n2TPU+DieP73BtAL82TajiAYKGbawCgOiV4L8zNmBKqD2XVHP0Kk6v2
         A2AJ8Jmf4wD5njxc2VIkPZe4W0kcv2cgHPDGmduB/AkwBxBtCxdr0ztBTiBJKYheF1vi
         OGEgPlaZM5MPGViYoix1xJZIFuxbkSo4Rn2QqkSNDW+QSdrXD2icGNScJT9FmJvJyrEX
         7SJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742821269; x=1743426069;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QPfdok1uXbCV3fbB68Oh0kuMKD9EmCqvBmSN9d5b64A=;
        b=XdIZ1R6aKibec0v7gZBhgz5PgA17t/0tiqKj0JJhh+I6qBXZbF15XfShP6DeWBEWyq
         nirRr3fsYO7L/H/1A3WJqS4eHt71nWqjUrhlrdTTxHzyu7UAux09FGIBPAXZ7dLdWcsK
         KqXx8iVd0fZlN1p9idvnqnPjfFQoqTUvwcaptq0Sf8xQclTBG7pDr4xTsGQTmqV5817L
         F554SJPpSQOgtnx3X7Jzr5L3DSFthdQxvIZHkIqpWaQrS017lDCMYoIjZ9pLaRSmY/dB
         tneJbQ2EvPT9uUb+6cXKPNas0bzFKXGEQsobdV48qgOdUzHognu9vlZ4i/waGymfqw7Y
         W7SQ==
X-Forwarded-Encrypted: i=1; AJvYcCWq53Kx85UzhBLwEiW1N8K7nH8z1AEHMJwWcHWMrIPwQNlKG2DJoPBGj8iRoXnP8+GlefoNeS0cbKqe@vger.kernel.org
X-Gm-Message-State: AOJu0YyaE5bV2h0qWGPyENJyFsL6xVPhjxszQ9koJFM2mRoFafkUwe+t
	jr5yy640mNrQEha2xQRJAHF9+5Xi5w/4fkN6dra6qFR6wgKMM+zfksru6wg8TvY=
X-Gm-Gg: ASbGncvxO7bJz8MUv2qta3MLPgAsBG1ix4/vDFPwfurkCDrjQjucia23lDufiHuAykN
	h9jGE9iXiaG0cX4d6H3Ou2MGnLdh51a2vYCJw/WzRM5AbQS4LtX4TlkHlNXGQ/ilmLgI4Gg0zU8
	eoPWYp5Oy+DHJGnRRQ06sYPzw+fdWm54awE7fSyV9ryNs5qZO8ZtT4FmtMIOkl2zCC5tenFsiEV
	gB0GgN1JFMdgkKSMjHdcJ5qpFoRm+ZqsYA0FhEsOwjZVBFP20LSDu4itO9yfGLUIEZ1/9+OIxF2
	ZXdPk0AgB3Bg8GqmnjKALDah/QcveJ3c0+ceEjCtXGAR6qP1jH3sLHYfWFzGbs3iQGWGl1hxiiK
	9Ipie
X-Google-Smtp-Source: AGHT+IH/LCQKWak9xUpo8rkhPabLxUJyhK8s6nWMq3T7RoU4G1wdnEPytthIr96D0+PMYfRTxPKOwQ==
X-Received: by 2002:a05:6000:178c:b0:391:47f2:8d90 with SMTP id ffacd0b85a97d-3997f9017e3mr10499945f8f.20.1742821264799;
        Mon, 24 Mar 2025 06:01:04 -0700 (PDT)
Received: from localhost.localdomain ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43d4fdbd1c7sm122275975e9.40.2025.03.24.06.01.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Mar 2025 06:01:04 -0700 (PDT)
From: srinivas.kandagatla@linaro.org
To: peda@axentia.se,
	broonie@kernel.org,
	andersson@kernel.org,
	krzk+dt@kernel.org
Cc: ivprusov@salutedevices.com,
	luca.ceresoli@bootlin.com,
	zhoubinbin@loongson.cn,
	paulha@opensource.cirrus.com,
	lgirdwood@gmail.com,
	robh@kernel.org,
	conor+dt@kernel.org,
	konradybcio@kernel.org,
	perex@perex.cz,
	tiwai@suse.com,
	dmitry.baryshkov@oss.qualcomm.com,
	linux-sound@vger.kernel.org,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	johan+linaro@kernel.org,
	Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
	Christopher Obbard <christopher.obbard@linaro.org>
Subject: [PATCH v4 2/6] mux: gpio: add optional regulator support
Date: Mon, 24 Mar 2025 13:00:53 +0000
Message-Id: <20250324130057.4855-3-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250324130057.4855-1-srinivas.kandagatla@linaro.org>
References: <20250324130057.4855-1-srinivas.kandagatla@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>

Some of the external muxes needs powering up using a regulator.
This is the case with Lenovo T14s laptop which has a external audio mux
to handle US/EURO headsets.

Add support to the driver to handle this optional regulator.

Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Tested-by: Christopher Obbard <christopher.obbard@linaro.org>
---
 drivers/mux/gpio.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/mux/gpio.c b/drivers/mux/gpio.c
index cc5f2c1861d4..d1607f287755 100644
--- a/drivers/mux/gpio.c
+++ b/drivers/mux/gpio.c
@@ -15,6 +15,7 @@
 #include <linux/mux/driver.h>
 #include <linux/platform_device.h>
 #include <linux/property.h>
+#include <linux/regulator/consumer.h>
 
 struct mux_gpio {
 	struct gpio_descs *gpios;
@@ -82,6 +83,10 @@ static int mux_gpio_probe(struct platform_device *pdev)
 		mux_chip->mux->idle_state = idle_state;
 	}
 
+	ret = devm_regulator_get_enable_optional(dev, "mux");
+	if (ret && ret != -ENODEV)
+		return dev_err_probe(dev, ret, "Couldn't retrieve/enable gpio mux supply\n");
+
 	ret = devm_mux_chip_register(dev, mux_chip);
 	if (ret < 0)
 		return ret;
-- 
2.39.5


