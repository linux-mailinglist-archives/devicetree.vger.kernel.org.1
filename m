Return-Path: <devicetree+bounces-160120-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id C7CCDA6D8E1
	for <lists+devicetree@lfdr.de>; Mon, 24 Mar 2025 12:07:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5C3FD1887C04
	for <lists+devicetree@lfdr.de>; Mon, 24 Mar 2025 11:06:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 913C725DD16;
	Mon, 24 Mar 2025 11:06:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="InB51t6f"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD4751E633C
	for <devicetree@vger.kernel.org>; Mon, 24 Mar 2025 11:06:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742814384; cv=none; b=GyMkrnXkwGcIHGenFzoCm/g48fUxzT1n1pLUzk0qMfTb55lUY4iiJfvRz+0yRvCR7dwxDw/vdhSsr6YK9sqe5dITDIkyYrum1Tc1BrTxT8m1RAUZG8+BlXPyjZ3ZNARwBIyJn29ULxNLOH4qno+90S14Lh4NFhetMhCgxVxSxoc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742814384; c=relaxed/simple;
	bh=5X1aPO2z0jUPOmAmxxbRnG88+AZ4I5yT718/OM1HQtE=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=EL5aWm2WJ4YibvklsXyTRInNfSqktZDbx94y6T/gH22Sx1RTzeG1IAnh4IZ8kqwhfzoLpOm1GyJU42A6Y8+4c5Ltiw7cB4o1JuCp/W7fYzrv0CwrQORje8WANajSRAsVQv1YaU6l80idqwYMU46s+kIlBgD68bo4qg5xxg/NcrM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=InB51t6f; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-43ce71582e9so27708315e9.1
        for <devicetree@vger.kernel.org>; Mon, 24 Mar 2025 04:06:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1742814381; x=1743419181; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QPfdok1uXbCV3fbB68Oh0kuMKD9EmCqvBmSN9d5b64A=;
        b=InB51t6fC6NwWM0bgYwWozN8HlNRq/HIqXpHHNjgoq9nAHeKDV0lhJufJvECCSHg9U
         mKX2BF6IwrGScCRXXfyKxeGo8omFbLMnNGzpbeH4bqPezQGkqgWJQBOvO9E2/a5xJPO5
         Mmvhnc9YoM0mGuMN7mN3vksTiSArnyo1HoFWmFCL5wakIgTy5BW/Ku17xKl0ko1dJRKo
         0V4ag0XktMWh9rTZvhHXgbJRPjkFtZReJZrBLOW9LCrbj5HkzeHcHgFco9/BcEpfLtiV
         rNAH471nDjwAiyGHfhGfeDGqcmXmQMX5TIBIPcDrxQtUMbkJ6uCu/9Tjr7QjERPJSLvM
         LyFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742814381; x=1743419181;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QPfdok1uXbCV3fbB68Oh0kuMKD9EmCqvBmSN9d5b64A=;
        b=MYcu9jH30ab1KlOAwM38bJDGXNSuqJhKpTVRwIandDsRC7TjHzOc/zG8DIdCaOdZHK
         bvMC0zITPzPdk8swP27ybLFYDJdR7KYIB00uzigV3rJg0gKECJBc9xnHZkjB8nG2Oaqg
         UfDC+Uc48oFfSw5TbEV3Rq9ha1jMrfxxRop6Pkn5tdQpcNd5A0jmclwOLdCbrU3FpXnE
         AdDS3A1TmrUrdi4BH27rIbi/F2KG95wjZcP7luI3GoyUkY5U109cXAiDraZap5NQSyk0
         QTFmwX3Vk05dPlEmfPhUXGo6wC8U+QGFc9/8YV/KV13o2cIkfiXC4+WQha8OmuoV0E96
         XuGg==
X-Forwarded-Encrypted: i=1; AJvYcCXIjT/DSEgUaDAD4O/bPSr2MQ9SpJvFK7pCSWgCGAWTPSCgARcbboRplbYe2I++QlEA/mVvnvvYnNCf@vger.kernel.org
X-Gm-Message-State: AOJu0Yw2FldH8AdbvWDqH+GXgwbpkR9rW+illn4zXtjP+mUt+54ATyZq
	dpUcOIriRFdsQ1hVePwlwaClGzB45fT4hN7lHOfnNOZJvJYdZ3vHSlPsXCYUL6w=
X-Gm-Gg: ASbGncuiSOR9qksEMdNrc58aBGSteCJQv/71qbIpNCH5lzcx2dn0wphStzZg0mS7acj
	XysCM5XYfLZv9HdVrzG5HbADCfuF0aMvaY3ClutV55SNPiWAuEQE1/ZYDlYB7PXJtxBH1a+n3dB
	qFMnV4h4N+IV7clhVs8Y/G1J1rskQ5I79vE9RiBTUDqOOVExpRKnn8mJhnll3jHvIcB+QmUK4Hv
	sVC4msZ86Kkfj0Z8hNiFBwXpcGnGPCa+p4f0wksnP7QgFc10uN7r05a5SQugh8RwLLilxeN++Qf
	8CkW7FHka5JGF8ijX3vqn3EGWWtb7iMyq5mjIjDNuWwsvbFNU3D75g2NV3VGzKp/T8CyXg==
X-Google-Smtp-Source: AGHT+IExFwGVwiy70dxdymve015KK85mNqBLkZiOrbkOqWu5PPmRikLkCEYj40+Tu5kNQWOC4k/G0w==
X-Received: by 2002:a05:600c:4512:b0:43b:c878:144c with SMTP id 5b1f17b1804b1-43d509ee50amr117578135e9.12.1742814380967;
        Mon, 24 Mar 2025 04:06:20 -0700 (PDT)
Received: from localhost.localdomain ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43d4fd28a46sm117236055e9.24.2025.03.24.04.06.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Mar 2025 04:06:20 -0700 (PDT)
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
Subject: [PATCH v3 2/6] mux: gpio: add optional regulator support
Date: Mon, 24 Mar 2025 11:06:02 +0000
Message-Id: <20250324110606.32001-3-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250324110606.32001-1-srinivas.kandagatla@linaro.org>
References: <20250324110606.32001-1-srinivas.kandagatla@linaro.org>
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


