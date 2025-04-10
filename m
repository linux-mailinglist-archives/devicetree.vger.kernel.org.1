Return-Path: <devicetree+bounces-165566-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id A1724A849B6
	for <lists+devicetree@lfdr.de>; Thu, 10 Apr 2025 18:31:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id BF0E17B61D9
	for <lists+devicetree@lfdr.de>; Thu, 10 Apr 2025 16:29:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F0C1A1EF397;
	Thu, 10 Apr 2025 16:30:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="wLpeftR2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C99681EA7C6
	for <devicetree@vger.kernel.org>; Thu, 10 Apr 2025 16:30:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744302617; cv=none; b=OMY1Fqvh42wdUHRH5Dj5/BC+z7MVo5BKkaZsMIxAp7Y778sWH3FXQmuFf6lcOiMRldFRCckn9qkF42JGKdaDwZAx0CAqz/BOhEyRkUCV8JKFV/M4PC6XQfoao20BYIwD9ZKMBQo7XYI9Pa0eYWlIDRwhCO+mINTjXLXx3hTatKQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744302617; c=relaxed/simple;
	bh=UkC2xQ49cwtjimQJomEXRVHWedJyZAC8YoJhIXvmiUg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=CDhvHK5SnN9FR4h8l3002MAtylQHEqyaKJFyiGSQ0/N42DwR/rFEYXCrIAFvzC0J6uJCsfpWFS28iIfZVQllXeMi13HD+CBI8dirCjYrNXfzNtql6Ax5YR6KhhhqXmaHsnr+kySt8RYJrURX1nNnl+alvOo8N8j+LHCGUIpXSYw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=wLpeftR2; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-43cfb6e9031so9351925e9.0
        for <devicetree@vger.kernel.org>; Thu, 10 Apr 2025 09:30:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1744302613; x=1744907413; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Bo4P1zkBy5ZJ7KB9fJf8Jg+rHcpVMabyPlCyrK4lEHg=;
        b=wLpeftR2AHtHlo/wynMiGvrIlWrB6uaakG/jZKGqHBOR3qD2S3PlgKqDNiUYHsUhfK
         jkGjrT2B/Xug3whCwufJ9TWxDoTCdE1S58gfEXuOuGhTPjAEntDVDxYIU9aVHf6j+MKu
         Tnx06/Qyz1uKhDns/2G5hYaUQzf6smxvAqj5Ov6alRDvkxy9qwWOSfkVJK18iW8pvgjN
         99WSRShbj4L+Nh7go4kb5tmdwiYgdttNLO4JQvt9jgra7WAcQzKx5dn4oVVcYSE3j5PM
         qbLcCZfqwMbQALL2AiY7GiXbIsMtArgKHuQ9IRA742vsbON+jKPYLDNtWDW6/o6ijmhL
         WoPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744302613; x=1744907413;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Bo4P1zkBy5ZJ7KB9fJf8Jg+rHcpVMabyPlCyrK4lEHg=;
        b=uIgwSke2hoaKDRfkIozoVcwg3eF1pwP9AxEmmFbzmyuVehQXdalhstVspbyr2qC/u2
         OQFFSj0flsjjXR7KBAE01VuwoA7jffQSNBk1WksCB6fPTk7+psMpv6feL0uPCJB09y/z
         7Hp5TyLHcKWn9oT3AHZjr1pof7dGPRKVwqTiCxDk8iIZZsw2Mvt0eNnVYwSgak5+b+Fb
         iuounCGLMQl7Ahn89pcp15+trXI3EdwHemORPtZxEgOzhWBMHv5foj64gALnT12EuQNB
         Hf3xC5PNyq2z1mPgigsvyT5JXRuM2k+y2cxIPQuJblbRz8DNol5j9+YlkHOZygRrr6Ml
         Pk2w==
X-Forwarded-Encrypted: i=1; AJvYcCUqlA/HNFEVi3tSTjNJLmD1TsnY659LT2XKSo38HA2VK7c40yHv0pYHQ8kuN1XaUkUZsIvYdJHLbkIs@vger.kernel.org
X-Gm-Message-State: AOJu0YyzjOlJSBx8kVT6zEO/xhRuAU+9IG5RZmswILEKnOVLVrDUVAWV
	9ECM7mMiNshlxUwN0CFKANKTIdVNkkuIR2w0SMcTwY1QPlwMmXQtnC3uFDdSmQIVBzSHYOKfAWd
	U
X-Gm-Gg: ASbGncsAktOYGRDtN9defsgIgi8p6aHG0eNpWLq1aAMj7GQ9ZrEfLl+pdB5dmY++laF
	XrZAgbRscrB49Duq9XZPkYIYAkBVVIpg/dHdDe13O5Oa4GhIjlzNkrQKw5bsBdpujOleHZ2bJug
	0jAdbQxcQe/uY6cyOaL6x0eoLXkFzeqDFXgJVemMe5jKwc9dfzn4bFEwlNFL+nc6XgPxr+a68HU
	jseRrdraI7CZFdtdpP/CKQUpxWYh8P9U1TWZ4JVSXAY1sb3PWEclErpJutXCRIHiMY2PjlwIWox
	WVPiazuuSUgq7Ms2UD3/a5GUXX9M9o7SymOdqEXs3a4UIpBqC/ahTFNqT+DlZZlYsEx5zsse
X-Google-Smtp-Source: AGHT+IE9G6rweHJg5MaCovI5Z4ztNCtTUYulhsgxLzS32BNlAsLoCeAGzQtHu9bhc3mmPUNTGYj7jA==
X-Received: by 2002:a05:600c:4e54:b0:43c:efed:732d with SMTP id 5b1f17b1804b1-43f2d7da910mr46432145e9.16.1744302612669;
        Thu, 10 Apr 2025 09:30:12 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:3d9:2080:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-39d8936129dsm5350663f8f.18.2025.04.10.09.30.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Apr 2025 09:30:12 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Thu, 10 Apr 2025 18:30:04 +0200
Subject: [PATCH RFC v5 5/8] media: platform: qcom/iris: introduce optional
 controller_rst_tbl
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250410-topic-sm8x50-upstream-iris-catalog-v5-5-44a431574c25@linaro.org>
References: <20250410-topic-sm8x50-upstream-iris-catalog-v5-0-44a431574c25@linaro.org>
In-Reply-To: <20250410-topic-sm8x50-upstream-iris-catalog-v5-0-44a431574c25@linaro.org>
To: Vikash Garodia <quic_vgarodia@quicinc.com>, 
 Dikshita Agarwal <quic_dikshita@quicinc.com>, 
 Abhinav Kumar <quic_abhinavk@quicinc.com>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=4061;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=UkC2xQ49cwtjimQJomEXRVHWedJyZAC8YoJhIXvmiUg=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBn9/IOqo/GpXdVG4Zvz4PTj10jJM0BhDDEqVLReD8Q
 nRBNpx+JAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZ/fyDgAKCRB33NvayMhJ0f2ED/
 0bJekcRGAmF6RO5h6BrXQCtAncZ/lbnblsmjd4eR44TnDGZKXlfYwn5OX0gZP7oFdYDth0hkeKZeXE
 ppuhZhHfo5kBYVRbvrGuw/lC6CZU6hFXd08dDfIW+EiMLXR2eL8Z/MqZy2fuvHlcOTm5YW6c9Iczt9
 mSSoq5bwi8JUYm8Wycdeb4ejT56i2PcNXinh4IbjL3eT+orlO5gjXSkVfa8Xe5lqbZ5qwpWS6elWu2
 1zvRmbJTw0Zkl3ThTh37dyGMQ9LL6NqYIsmA6B8QPOzTSFSm4hYtn5dA/rN8Mj/KvZEU5uWfjW7rEO
 mXf2GCNlXfYfAUIE0tPBzTcE0v+OiqUWo1zUTpyJnXdRQfaN4ECElEYH4seGWciiA93M5oSIheP8qj
 YpW6+sP1cSyXYwuypz6jLNsK7+YebRinipmqj59iImgyg0DZ3E0mA2X4XdhlQSzqN93+iOTgq2fhX7
 5uFEKMJe+c4ZSgMn5iJuujSlnjlyLY0twCQEOcZryqckfW+VwiEUm1MXJBePn1BGGXcmgklnldgCRW
 KAGQy87UkTbaTKx5w6vPadOt7+MfvkVcBoMl1Ew/DwDuJYeq/mM+QGzbzH2xB8AQzYMvgFCf2M5ybA
 2PNkP3CWZlncISBtwnzE8mNfqeRnheoddDi5rCAZXfGSecu67485AJFdFMrQ==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

Introduce an optional controller_rst_tbl use to store reset lines
used to reset part of the controller.

This is necessary for the vpu3 support, when the xo reset line
must be asserted separately from the other reset line
on power off operation.

Factor the iris_init_resets() logic to allow requesting
multiple reset tables.

Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Tested-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org> # x1e Dell
Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 drivers/media/platform/qcom/iris/iris_core.h       |  1 +
 .../platform/qcom/iris/iris_platform_common.h      |  2 ++
 drivers/media/platform/qcom/iris/iris_probe.c      | 39 +++++++++++++++-------
 3 files changed, 30 insertions(+), 12 deletions(-)

diff --git a/drivers/media/platform/qcom/iris/iris_core.h b/drivers/media/platform/qcom/iris/iris_core.h
index 37fb4919fecc62182784b4dca90fcab47dd38a80..78143855b277cd3ebdc7a1e7f35f6df284aa364c 100644
--- a/drivers/media/platform/qcom/iris/iris_core.h
+++ b/drivers/media/platform/qcom/iris/iris_core.h
@@ -82,6 +82,7 @@ struct iris_core {
 	struct clk_bulk_data			*clock_tbl;
 	u32					clk_count;
 	struct reset_control_bulk_data		*resets;
+	struct reset_control_bulk_data		*controller_resets;
 	const struct iris_platform_data		*iris_platform_data;
 	enum iris_core_state			state;
 	dma_addr_t				iface_q_table_daddr;
diff --git a/drivers/media/platform/qcom/iris/iris_platform_common.h b/drivers/media/platform/qcom/iris/iris_platform_common.h
index f6b15d2805fb2004699709bb12cd7ce9b052180c..fdd40fd80178c4c66b37e392d07a0a62f492f108 100644
--- a/drivers/media/platform/qcom/iris/iris_platform_common.h
+++ b/drivers/media/platform/qcom/iris/iris_platform_common.h
@@ -156,6 +156,8 @@ struct iris_platform_data {
 	unsigned int clk_tbl_size;
 	const char * const *clk_rst_tbl;
 	unsigned int clk_rst_tbl_size;
+	const char * const *controller_rst_tbl;
+	unsigned int controller_rst_tbl_size;
 	u64 dma_mask;
 	const char *fwname;
 	u32 pas_id;
diff --git a/drivers/media/platform/qcom/iris/iris_probe.c b/drivers/media/platform/qcom/iris/iris_probe.c
index aca442dcc153830e6252d1dca87afb38c0b9eb8f..4f8bce6e2002bffee4c93dcaaf6e52bf4e40992e 100644
--- a/drivers/media/platform/qcom/iris/iris_probe.c
+++ b/drivers/media/platform/qcom/iris/iris_probe.c
@@ -91,25 +91,40 @@ static int iris_init_clocks(struct iris_core *core)
 	return 0;
 }
 
-static int iris_init_resets(struct iris_core *core)
+static int iris_init_reset_table(struct iris_core *core,
+				 struct reset_control_bulk_data **resets,
+				 const char * const *rst_tbl, u32 rst_tbl_size)
 {
-	const char * const *rst_tbl;
-	u32 rst_tbl_size;
 	u32 i = 0;
 
-	rst_tbl = core->iris_platform_data->clk_rst_tbl;
-	rst_tbl_size = core->iris_platform_data->clk_rst_tbl_size;
-
-	core->resets = devm_kzalloc(core->dev,
-				    sizeof(*core->resets) * rst_tbl_size,
-				    GFP_KERNEL);
-	if (!core->resets)
+	*resets = devm_kzalloc(core->dev,
+			       sizeof(struct reset_control_bulk_data) * rst_tbl_size,
+			       GFP_KERNEL);
+	if (!*resets)
 		return -ENOMEM;
 
 	for (i = 0; i < rst_tbl_size; i++)
-		core->resets[i].id = rst_tbl[i];
+		(*resets)[i].id = rst_tbl[i];
+
+	return devm_reset_control_bulk_get_exclusive(core->dev, rst_tbl_size, *resets);
+}
+
+static int iris_init_resets(struct iris_core *core)
+{
+	int ret;
+
+	ret = iris_init_reset_table(core, &core->resets,
+				    core->iris_platform_data->clk_rst_tbl,
+				    core->iris_platform_data->clk_rst_tbl_size);
+	if (ret)
+		return ret;
+
+	if (!core->iris_platform_data->controller_rst_tbl_size)
+		return 0;
 
-	return devm_reset_control_bulk_get_exclusive(core->dev, rst_tbl_size, core->resets);
+	return iris_init_reset_table(core, &core->controller_resets,
+				     core->iris_platform_data->controller_rst_tbl,
+				     core->iris_platform_data->controller_rst_tbl_size);
 }
 
 static int iris_init_resources(struct iris_core *core)

-- 
2.34.1


