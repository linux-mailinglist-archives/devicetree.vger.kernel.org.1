Return-Path: <devicetree+bounces-161199-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id C6B16A72D55
	for <lists+devicetree@lfdr.de>; Thu, 27 Mar 2025 11:07:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6672E188E484
	for <lists+devicetree@lfdr.de>; Thu, 27 Mar 2025 10:07:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 53F2820F08A;
	Thu, 27 Mar 2025 10:06:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ERcgIXfu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4689E20D4FF
	for <devicetree@vger.kernel.org>; Thu, 27 Mar 2025 10:06:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743070008; cv=none; b=EzUZPdhBa8X8ratlHr3YCyAHU85vM2OrxVcE804CpjFfYs3xPB3Fu2mDavBnQHFtD08aso5hgBhNWM56tjfcybE/kmsKSnQL5SNjEcw1pi+fFMn5bgJZZ74FmP6FyNk9uviUsR9zxIDs6uRWjGNItZ0w95SGQRExW1EZ68eq1D4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743070008; c=relaxed/simple;
	bh=5X1aPO2z0jUPOmAmxxbRnG88+AZ4I5yT718/OM1HQtE=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=hEf4FuASZ84lgENg+kE56KK9ng6LmM/G1bvU8MFtjAXS0zu2P5630yT82NlAg8ZcunBmk456pG4nfTHXp/snSr0EHAHv4F49JCfezYgbIIN5Krp9NeYtoo8yNqJN8f3G3p0V839tMTBGjTVc0TY2v0SIBnWoktK9YSx4YGHLebI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ERcgIXfu; arc=none smtp.client-ip=209.85.221.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-39143200ddaso428246f8f.1
        for <devicetree@vger.kernel.org>; Thu, 27 Mar 2025 03:06:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1743070003; x=1743674803; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QPfdok1uXbCV3fbB68Oh0kuMKD9EmCqvBmSN9d5b64A=;
        b=ERcgIXfuYJBP+Fu00nEvbZ/9/C/qhLfcTVYbc9VFyt8flpltttQDuDMYksDAIfcphF
         ZDh2VrKzgSwXwcfJ96c17J6ThD7iED7TwG+SBLU4C0khefx3uXuZbqtx0N8OFjBzG2HL
         HTI4yoGcbNCU2IkX3QqfII9sGyj/iXr14uQm0fBOKw4UNhj9Q8NQNZRNkpdcOUNuGnWQ
         2+eTC/vuv9yg6Xr9z6oRX/ECdaYX8Y19a8Ha4I/clSUDiuPqrqmsAcdPKo8Ey0cGr7qe
         543kR2A+Ou9ziVMC3wZfYK2g3wnZ3iQ5XmPKhN2/1mjJCk8P6nQ+5VHsWni9VkdiBNBl
         9OHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743070003; x=1743674803;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QPfdok1uXbCV3fbB68Oh0kuMKD9EmCqvBmSN9d5b64A=;
        b=Laa5ZDAE3w+yyy4cQV4rjUS/k6bUDrcW9gm44PEj1EU5Ya2tVXrr2Akpjt/SOl6SK7
         S3ngnUXP0NsEd3aZwHntwm9bZMKadfRsZCzqdf2+F4psX5YT1T9Fl+DKRm/B+rq57IAe
         so6O8w5TXr7c441tdkq8kAPKIQil5/LxXd4e7Wt5ZAK6P4jNTM9aDjSXGCeci2GCPtaU
         GgJat5lVzs69KcIilPDMoOe0kIdmVAGsN+UBu+wxjZiY5axNM6zX9Y5tGOj9nvjOkFcH
         llNN/4eobUc4m5T+eVzvBaPUl17vFwrRTXkUTydqeQFM2k81vgrI6FWTEIRM0+k+E+Ha
         DSPg==
X-Forwarded-Encrypted: i=1; AJvYcCUF+9PaLNF/0HZf4bZ/yJHYNmSO4XM6kuYTMVNk1h7DRIV1ecG2XpSVrzYVVwkJGOeYFqiP8uX19rkn@vger.kernel.org
X-Gm-Message-State: AOJu0Yz7pzzmvifA5zGfunmD9Bl7i3TR2Fduos5i3P4tiwSIPaMTq/XZ
	evo3h/Kaoi7c8zCpfS4/dP+zN4fC6g03ZuCzs58foX098d/pdrz245RKhyqP504=
X-Gm-Gg: ASbGncsOWTfxchsieZdOlvIw8+2i2L7Wq6yJTqicWd/vspI6DQr36AXpsQI/uMOP6Pt
	b6GTsksvM9gcObM2m6n7J2ykuiy81LO6T6UvsTw8zQ75veVr5+Sfncvx77+Fi/zZrYJq1IBxYFw
	QQNe4dyRAh2vspr4HJTxKzYr/ral+u0KLcR5oAnZwyuEynqc4gmvE77uZSM2Ex2g+x/1t1vkja0
	JZvMpwHRT60IKoRhLgrD0W9B8/0Js9XEDgB4e3xE7DDjvoH2PAZ3qmhYj9LcEazYHlYHKrJCuwy
	bcKylLdF8CABE54h6y74+bSfb8LtWkY6b6xOd0p45mIEP7dmldRpGT9LSiZXj0HLIwTAiSzN7k2
	qDgHQ
X-Google-Smtp-Source: AGHT+IGvhejD0NIOJT8VU6o6/lTjL7NGCr3dmcDkjmpV3rceQSS3SZ9h5CMW7LsJMAed7F1uaAVW1w==
X-Received: by 2002:a05:6000:40e0:b0:39a:c9c1:5453 with SMTP id ffacd0b85a97d-39ad1785e98mr2439933f8f.49.1743070003510;
        Thu, 27 Mar 2025 03:06:43 -0700 (PDT)
Received: from localhost.localdomain ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-39ac3ce3dd1sm10843204f8f.88.2025.03.27.03.06.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Mar 2025 03:06:42 -0700 (PDT)
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
Subject: [PATCH v6 2/6] mux: gpio: add optional regulator support
Date: Thu, 27 Mar 2025 10:06:29 +0000
Message-Id: <20250327100633.11530-3-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250327100633.11530-1-srinivas.kandagatla@linaro.org>
References: <20250327100633.11530-1-srinivas.kandagatla@linaro.org>
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


