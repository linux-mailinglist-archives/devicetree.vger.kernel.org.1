Return-Path: <devicetree+bounces-68062-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 191668CAB24
	for <lists+devicetree@lfdr.de>; Tue, 21 May 2024 11:47:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 63379B228BB
	for <lists+devicetree@lfdr.de>; Tue, 21 May 2024 09:47:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A89B17711A;
	Tue, 21 May 2024 09:45:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="q7ec7037"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com [209.85.167.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A2FF6EB5F
	for <devicetree@vger.kernel.org>; Tue, 21 May 2024 09:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716284736; cv=none; b=o2fWzqebOle141Ix3ehAqEhQ/bndKn6G/REIGY+T+57gEH+QdCS8oaFa3L5ngKeR1n/lOQWmhv7pJ0HcT4MBQ0UhuRzK8rbJ1NexuEiGRmgODPZ71dmDdCVuqplCJp/w98Q683GtwbcVyFVW/gj0ssJlhJccB1NZ3PaE+wruCvw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716284736; c=relaxed/simple;
	bh=DTUqzTL8iOBwkoam3qEvEmtJacPSZ5s4Txv1FotXGIM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Ropl1RetAhS+LQicdfmYzNvlTWcchRGTSD4+Obnlfnkba2TnqVhamC/Br+dFhNdmmfSTU0boVMAhzmWlUkX8lENi37rkPcj4la77BopyfSbJNJUdMr6xLZ8XtxGYTIVAbvaiVrCNiVod06baozSt50d1xfFvUasXlVxKnOlqNB4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=q7ec7037; arc=none smtp.client-ip=209.85.167.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f41.google.com with SMTP id 2adb3069b0e04-52388d9ca98so7059135e87.0
        for <devicetree@vger.kernel.org>; Tue, 21 May 2024 02:45:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716284732; x=1716889532; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kkVl5ZJEjyZ0695fbPf3rcpNNgNSAt43cde13TvFE68=;
        b=q7ec7037ALryu7KAdVQjf8KYQzA8dyYT+DvsuxA0Tk/E3aiJR7Aqw6Qgoit2fs0rV0
         peOjy0ztep9zXzpnZlXv4rM+uYsuBMZMz0earE4ALvjoAtZK8BRusy1ljBmqVR0b9QFS
         oYRXGUB9gQbDwAT/nchTtFJqQpDpMm8RNf0j724wwA/7Tfsr7om3rug5U0lwnWYW9s4h
         sM1BFAWYpQ3eucnbZFdXezFX1EqodVDGyJYelp176BgaIePIP6qaKBWqH0F33/ucUYrE
         GpQlaL6VnOeodLGWYfeKNX3Xerrh/826pEtjygvqhswQSMWZV9zTzjlbMW1dDSdPyYN0
         s28A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716284732; x=1716889532;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kkVl5ZJEjyZ0695fbPf3rcpNNgNSAt43cde13TvFE68=;
        b=AzPJehz4zHs07nCz+O6YVMKF4X0LArGC+gRHPM92yO4vrAc4cMCXq4VrE7Ts3IBKSK
         qO7+Bne+SKXqzAg7O4pNKaT+Jqb3cLCG5h3FiqvNbwMEOXYqWAwf3AbxK2BswtSZ8HK9
         8S/pVoeVzg2kc4JO6SexsaRBORauanIWfKjYYFVC0ZOkkWV5AXiJZmYuqtqpFtS9SjdY
         XeC7Yc2PQaPdmht/fP9qyC0WrWowZxBaiMEXfLuvYnVHkWzYb/2FNy52nW5v+RRLAEko
         SFx7UEpFarHIG7hykqEgJTEn9MUMVI4j8Bwy4MukPwRAM+O8zuNzsJrJDSRHB+k5EmVy
         zFXg==
X-Forwarded-Encrypted: i=1; AJvYcCUkwcdqxaSm7YifN/tpQqpaP/uD2WKlj59O5JOfVSLIB0UBoOi8xpczoy7acvQRfagbhStDRX2lDNkY4Jz8MhR7mrOb6vBN9u0xqQ==
X-Gm-Message-State: AOJu0YxFsIqXlG7qB4ypHXXklbSFWVJONA5f4dYq9bbiT/rKvbzim/7K
	y6hnvBHvHjPstovnILFJ3DMlhFiy3kVvaXmPsRqj/eRyHsg11yj+45b9XR59Z58=
X-Google-Smtp-Source: AGHT+IGXHj/q48fwjhKVjn6sQaXvNT14JJ/1socCkYTz1ppWvArZgaQu0LAF3z1CSYykJeMGq2xw4Q==
X-Received: by 2002:a05:651c:149:b0:2e2:9842:a9d3 with SMTP id 38308e7fff4ca-2e52039dc3emr254963931fa.46.1716284731863;
        Tue, 21 May 2024 02:45:31 -0700 (PDT)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2e706ee0a65sm13906261fa.112.2024.05.21.02.45.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 May 2024 02:45:31 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 21 May 2024 12:45:29 +0300
Subject: [PATCH 09/12] remoteproc: qcom_wcnss: make use of QCOM_FW_HELPER
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240521-qcom-firmware-name-v1-9-99a6d32b1e5e@linaro.org>
References: <20240521-qcom-firmware-name-v1-0-99a6d32b1e5e@linaro.org>
In-Reply-To: <20240521-qcom-firmware-name-v1-0-99a6d32b1e5e@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Loic Poulain <loic.poulain@linaro.org>, Kalle Valo <kvalo@kernel.org>, 
 Mathieu Poirier <mathieu.poirier@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 wcn36xx@lists.infradead.org, linux-wireless@vger.kernel.org, 
 linux-remoteproc@vger.kernel.org, devicetree@vger.kernel.org, 
 Arnd Bergmann <arnd@arndb.de>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1128;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=DTUqzTL8iOBwkoam3qEvEmtJacPSZ5s4Txv1FotXGIM=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBmTG0zPLiR7dwV7D48NkYRmQHnnNAmGPP/K51cP
 jAUViaiRiOJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZkxtMwAKCRCLPIo+Aiko
 1TdoB/9DyT05xqeXzcbdzf5YPPdhcoo3145silkVCetoVq5t60jcbl44H4qmSe0k+GImIovA6KW
 xtgCjAng3vquS6ZKIU9Wx8jyfldrEI4khHxmIWrOwBKru967hGq0sskYp9msqoueB5DgeTpqhU/
 Rywy6/IwOtZjl1CiKXIKT75Ny+zwM+cSnDSodIdICbWiuwoHl6ui8Yt3wFm6nB4RDuDPEQMxplj
 CRESXlPxtgZmYwDiWz/xz5hjPszcWG7GDtZ3S48Zii8OF9lFGqU0jF9EjSfIEfS2CTAbd0Soeuk
 0QzgzP/MMTIvejFdnd091aBJ0NuyIEMx3DOtdJX3OPTokgOY
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

Make the driver use qcom_fw_helper to autodetect the path to the
calibration data file.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/remoteproc/qcom_wcnss.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/remoteproc/qcom_wcnss.c b/drivers/remoteproc/qcom_wcnss.c
index 421a3943a90d..45fc578ae30b 100644
--- a/drivers/remoteproc/qcom_wcnss.c
+++ b/drivers/remoteproc/qcom_wcnss.c
@@ -23,6 +23,7 @@
 #include <linux/regulator/consumer.h>
 #include <linux/remoteproc.h>
 #include <linux/soc/qcom/mdt_loader.h>
+#include <linux/soc/qcom/fw_helper.h>
 #include <linux/soc/qcom/smem.h>
 #include <linux/soc/qcom/smem_state.h>
 
@@ -555,8 +556,13 @@ static int wcnss_probe(struct platform_device *pdev)
 	if (ret < 0 && ret != -EINVAL)
 		return ret;
 
+	fw_name = qcom_get_board_fw(fw_name);
+	if (!fw_name)
+		return -ENOMEM;
+
 	rproc = devm_rproc_alloc(&pdev->dev, pdev->name, &wcnss_ops,
 				 fw_name, sizeof(*wcnss));
+	kfree(fw_name);
 	if (!rproc) {
 		dev_err(&pdev->dev, "unable to allocate remoteproc\n");
 		return -ENOMEM;

-- 
2.39.2


