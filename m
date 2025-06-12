Return-Path: <devicetree+bounces-185061-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 9609FAD6504
	for <lists+devicetree@lfdr.de>; Thu, 12 Jun 2025 03:16:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 47C5C7AD0EF
	for <lists+devicetree@lfdr.de>; Thu, 12 Jun 2025 01:14:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 975AF151991;
	Thu, 12 Jun 2025 01:15:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="WubHWjMc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com [209.85.208.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8FDE515573A
	for <devicetree@vger.kernel.org>; Thu, 12 Jun 2025 01:15:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749690954; cv=none; b=JvkGDu3Vr9v2lZeTrl724D5azVSDIczuWOF5btIvZDdo+q+UFYRvAoyOeGoyACyZoNrXgrmMObFXCPObByuW07dP8QCf4cvmmx1052MzBENNgEHVnXK2p3kn0CjQnuNyL0NMkVV6AsAzJwxLloMb4b8u7+xEyBPv/xYMHYSh0Yg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749690954; c=relaxed/simple;
	bh=LqRPAqNQlNO3zu9aKoKgeHnMk4rQEK/l7ENgXrCUZAI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=IX6pFikU5xhyIq+hhPe56YAsfZ865a6HV63BZNhLImbacIXapsKEciBzQj+8z+6U4jCRM16G3o/4mIHi1DccIjJarVn6tfZE51fR5wcpoDLfMJugfQzM1sAOa3a9MIpu1WSPg6UQL8X2AgtYdlWOw7BogAlhTxzIN45SpZQ0kGo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=WubHWjMc; arc=none smtp.client-ip=209.85.208.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f178.google.com with SMTP id 38308e7fff4ca-32a6c7d66d6so577881fa.1
        for <devicetree@vger.kernel.org>; Wed, 11 Jun 2025 18:15:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1749690951; x=1750295751; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TGXO7XE6Zd1Vk08ChbQh+PqLJC+OLbKRi30oxb1Svek=;
        b=WubHWjMcdRXHWWKVCKOkjUI9SRv/lW6N1KGO85u30YHbhzoODvdJH7BFlrEYzbvB4U
         G7YGEQZp+azNp6ZXMNtdj4tvXmKNYCeT6cDgNPbv0VmmYn71/tusVC2r2X3lwbebRMQr
         J2w75gqIquc0E/ktDaOxSliwqYU3V+8OP8+5/7EaZ/7vvaWI9NS252GaHkJpcaJMzGG1
         Az8jSBXRttrLgkWd/yfSsTCI6YeOoyBOvkiyJ7GGQND9ZdwvsJ0vXfhN5ejtuWzbti2X
         QfoF730eWa9M/4GdndiSw9zHd/UDD/E0kVJQSOc6QDoXLl9F7URI/fqYqKapOC6wdS9O
         D2Lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749690951; x=1750295751;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TGXO7XE6Zd1Vk08ChbQh+PqLJC+OLbKRi30oxb1Svek=;
        b=TmqXQL/j88/TeQwI2aaFGVK/qrWvSvxiLZT+XHWvfjXB+RrtcOB3klphGoUM837tjp
         vTBYka8FyvmQUBBbifkPtKyxkH1bthVqZ9Ud7cVUDOZzu+6a8gSKKeA1zhCdqCjvnQZC
         T7Bj+BeMx40oOOBvOEf80QuJbpyVFlVwRKdh8W8Fi2xQ0rkv/qKDsBPYbpc4Uh6Lf6bR
         1EYkkAPV1EAP+HglBmti7s5nt4PGFJUdf+q4kzh5wuOt9zkicTi9cmgDTXpsDvFen5VZ
         dtS9wMlaj5W+Rm1mn4D8GCDUwvRUm9PRQ50G+kKEBk+olxr0WiSr0EzWqNJ4aM1UgZi9
         Fvgg==
X-Forwarded-Encrypted: i=1; AJvYcCVgqnj6eC5LCqo250q940nqvlB1HKpN64kMYMGk8GiJ7GZPnwvKy+oiefvz7J3aMGy5wiO1u3Uf6Q3m@vger.kernel.org
X-Gm-Message-State: AOJu0YzFAKUHauGrWhZm/4DN+PDXGNG0QtMynqpdKCk3HqAF+KiePFPA
	zSujQ1b5iotFqXgOOZpQYBf3jBHmiHLXE1Xc7NMTm5HEilrg9COAoxQm5dGrgjxeprA=
X-Gm-Gg: ASbGncva2o5H7mqrlQBj2iBdZOMJJLw6A8Lwg5BJdBSwrObhlb8KgR3o4bGZFIJpsBE
	718EAwilorL1SDyyS3DUodMBpNKr2UXJLPf36tolgXdZXBCPSSBFsn1LP32xqJhLcO9JZ3mnAXP
	HpKSoFxfSLaq5T6DzaKqlG0GXajA5loB51Ke1hGKXnnDZKDDE+ZAAYJ5Dq1R4NCJeVNM7twk7C1
	gd5B1dwY2Msfg/WYw254WMjweXm4f5tGwMu5UWiCgd/Yo6+4acU4EzjJgfOEaBzQ0q0jh4jB6+T
	8Exj8H01S4w5FWBG07K+uko7nyCX63y0UT3KIK1vsB1KEXZuJgLsW2w+z54ecgqh/9/uJp6OkJB
	eXc7UU6j+kdbbSxdqM5RFO1G0Wvs4h523KLS82Zwof+NiGsW+T1w=
X-Google-Smtp-Source: AGHT+IF6li0/wsba5vOcpZ+7hE86fPFgQ1nbQpeMNRGYiv+YLYSCoO8kXCjs4MSZkmCv4t6gWdR79A==
X-Received: by 2002:a05:6512:acf:b0:553:34fc:3bd5 with SMTP id 2adb3069b0e04-5539c2004a5mr587329e87.8.1749690950543;
        Wed, 11 Jun 2025 18:15:50 -0700 (PDT)
Received: from localhost.localdomain (88-112-131-206.elisa-laajakaista.fi. [88.112.131.206])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-553a7018069sm62808e87.157.2025.06.11.18.15.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Jun 2025 18:15:50 -0700 (PDT)
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
To: Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Cc: Conor Dooley <conor+dt@kernel.org>,
	Robert Foss <rfoss@kernel.org>,
	Todor Tomov <todor.too@gmail.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	linux-media@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH 06/10] media: qcom: camss: export camss_parse_endpoint_node() to csiphy
Date: Thu, 12 Jun 2025 04:15:27 +0300
Message-ID: <20250612011531.2923701-7-vladimir.zapolskiy@linaro.org>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250612011531.2923701-1-vladimir.zapolskiy@linaro.org>
References: <20250612011531.2923701-1-vladimir.zapolskiy@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Export the function to reuse the remote endpoint node helper function
from a CSIPHY driver.

Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
---
 drivers/media/platform/qcom/camss/camss.c | 6 +++---
 drivers/media/platform/qcom/camss/camss.h | 4 ++++
 2 files changed, 7 insertions(+), 3 deletions(-)

diff --git a/drivers/media/platform/qcom/camss/camss.c b/drivers/media/platform/qcom/camss/camss.c
index e03308d7a366..40bb20bbe8b4 100644
--- a/drivers/media/platform/qcom/camss/camss.c
+++ b/drivers/media/platform/qcom/camss/camss.c
@@ -2981,9 +2981,9 @@ static const struct parent_dev_ops vfe_parent_dev_ops = {
  *
  * Return 0 on success or a negative error code on failure
  */
-static int camss_parse_endpoint_node(struct device *dev,
-				     struct fwnode_handle *ep,
-				     struct camss_async_subdev *csd)
+int camss_parse_endpoint_node(struct device *dev,
+			      struct fwnode_handle *ep,
+			      struct camss_async_subdev *csd)
 {
 	struct csiphy_lanes_cfg *lncfg = &csd->interface.csi2.lane_cfg;
 	struct v4l2_mbus_config_mipi_csi2 *mipi_csi2;
diff --git a/drivers/media/platform/qcom/camss/camss.h b/drivers/media/platform/qcom/camss/camss.h
index 99831846ebb5..c3eedeb87ddc 100644
--- a/drivers/media/platform/qcom/camss/camss.h
+++ b/drivers/media/platform/qcom/camss/camss.h
@@ -14,6 +14,7 @@
 #include <linux/types.h>
 #include <media/v4l2-async.h>
 #include <media/v4l2-device.h>
+#include <media/v4l2-fwnode.h>
 #include <media/v4l2-subdev.h>
 #include <media/media-device.h>
 #include <media/media-entity.h>
@@ -150,6 +151,9 @@ struct parent_dev_ops {
 	void __iomem *(*get_base_address)(struct camss *camss, int id);
 };
 
+int camss_parse_endpoint_node(struct device *dev,
+			      struct fwnode_handle *ep,
+			      struct camss_async_subdev *csd);
 void camss_add_clock_margin(u64 *rate);
 int camss_enable_clocks(int nclocks, struct camss_clock *clock,
 			struct device *dev);
-- 
2.49.0


