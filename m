Return-Path: <devicetree+bounces-68059-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 8296F8CAB17
	for <lists+devicetree@lfdr.de>; Tue, 21 May 2024 11:46:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A4A421C21AEB
	for <lists+devicetree@lfdr.de>; Tue, 21 May 2024 09:46:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E7B5B7602A;
	Tue, 21 May 2024 09:45:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Yndy3JFS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com [209.85.208.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54A157352F
	for <devicetree@vger.kernel.org>; Tue, 21 May 2024 09:45:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716284734; cv=none; b=qEqqX12vce2upoalZedmj4x5LpW0Es3uGTA/Fz+om3DSAesgtNJP550SEMmJzuYjb+ov2FMACKOAPWI9nh/r7IDOsaNHs0SBzrALeN8uiZYWYQ33QcAVnZ/tbHKR4Ts8geUjWAvRFQxUUaxLJkkMboYjOMkEkqgaAkJD3dJUE8w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716284734; c=relaxed/simple;
	bh=LXkde7roNdCA5RiqXlZv5DapdIAdFkD6mr6zmTWtmTw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ccxVH0ThmV5B767ZLrL+8/zmjdUI1naUXdz3H8DpsKrptNl2fpIQh1VvqYUsaCqRd9QTaKdB03mdC5GVgq3hv6clo6Co3WT8ZS6Xm9NOvyAhlg6Q9YGStH1vNiJMWx2c7VK63jeGvh9k2QirN4SEOV+G0/nIynp12CU5i20vCPE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Yndy3JFS; arc=none smtp.client-ip=209.85.208.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f170.google.com with SMTP id 38308e7fff4ca-2e538a264e0so67506311fa.1
        for <devicetree@vger.kernel.org>; Tue, 21 May 2024 02:45:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716284730; x=1716889530; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=h832anITW8A4X0+wlt4pMVjTXDOHgXNK3h0zens11dU=;
        b=Yndy3JFSQOK8ny5Pjqj5nRkt2vny6dpLUXXXajJmx8M7GHuFDBkLbbJk7le/dF23ZN
         8rEAEV5I6S12E7DYa370A5wOK7NgqkwSq5Q6FLg64J5cu3HcCNy5CtsT9KHl7YPwe4SR
         XlW2nidcTnpmvBu5glUx+l0Ul5V3QXPZre0iSHFW6yDy7l0suy3B1Xf5uOR/C688KgaZ
         1Puguzb4C/gI/nfoW488rytuMAr/su9BSgU2wsN0Gd2XW5MeiqXGgoT/l3UC6mbGY09f
         mw/JUg4bdl3QxSpgakGE1MpyNXnAMCz0Q55/yU/pirrzynkJMzJyk4u4L9BaWl93G0eS
         ja6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716284730; x=1716889530;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=h832anITW8A4X0+wlt4pMVjTXDOHgXNK3h0zens11dU=;
        b=Cw+RMax06tOdfj2yxg6nBDZUaPIrQFB5C4gKzt2suZgzUp/8OgfXwk7u1LB2RfR9Ws
         /nPn6RWT/CEQ41g2yMRuHoG8lJOe54CsYutvPw+Q8bP3tfIl/O8WXVJy7Ufm95tDB15l
         DaD6STXJMnUALDa6KxiurCwW33Afz2wxFTA/KXQZJocEQy/euSuSc3/nl+jq7/BFdS1W
         6+U3jkXz8wHJnBNHlShSyQFgXl2KgwdKMEPYyVbQ5QYhd5nYRDgy2Ghyu4x0p3uKPid4
         Zo4JsijDJk80BD2bA+yWO94Yd1CPIjldn+RM6nDuH6PetH87YBHISvf2UHjE5GkDC17s
         vy0g==
X-Forwarded-Encrypted: i=1; AJvYcCWvaaWxBimTDx+QLjci/2HUc7nGdGNzdp5avk2P8nvIWutS6aZtthqr3c4588GU9q9Q7OammzIh4SxI7vVPM9/k+4xtmt+w9z+8Cg==
X-Gm-Message-State: AOJu0YzccjJ9t3/gnxOv7KaLSmaCawpL1OKXXtRiuec1KKUtwb/gSBMX
	KZnp8oS7UuRJU3JV6poZ6uf26YtzSYMzd6t2DFoPrdT8x1Mil5wUbNdDNsJGP88=
X-Google-Smtp-Source: AGHT+IEcIY8h4MViTxQwWwqeUoj25uDkIjguJWgmCmNuJWowFj8tcwGKQRvY8Y2jNkYsGpgXWPLuiQ==
X-Received: by 2002:a2e:9f4f:0:b0:2e6:f51e:ec1b with SMTP id 38308e7fff4ca-2e6f51eedd3mr168497591fa.3.1716284730390;
        Tue, 21 May 2024 02:45:30 -0700 (PDT)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2e706ee0a65sm13906261fa.112.2024.05.21.02.45.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 May 2024 02:45:30 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 21 May 2024 12:45:27 +0300
Subject: [PATCH 07/12] remoteproc: qcom_q6v5_pas: make use of
 QCOM_FW_HELPER
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240521-qcom-firmware-name-v1-7-99a6d32b1e5e@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1771;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=LXkde7roNdCA5RiqXlZv5DapdIAdFkD6mr6zmTWtmTw=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBmTG0ztEDbiBUwdFTHantDBNI67jC6CkE6jTStI
 DUBBlDj+sKJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZkxtMwAKCRCLPIo+Aiko
 1ateCACA8fdJTGUFyqavoy+BefLiojGkW0ckGZOdHnmEcupX4OyFqKuRYWb7RFv2x1GQO/175W9
 /j+8Q82CAXNCl5roYzW2GnFjcWa5NnHHjk97bGbJcVvgAvLfUNSbT6yCC8gfIgj3LMdrSk5Tsdq
 PnFP4zQ0ugU2Et2RUt6lwTkZRPRUevmxbwH4t+qYJgxebP/+Upic1FWXBJpuyWuEmJxgaQYb/e2
 nH7vXuWfB7jwmOkCCk3zP+bdH99GLKAq02xWCp+f53Jvlck2j+V5ssX2BfWQX3v+i/E40qfgLgB
 XCJQt8z1tUODh2nOnLoqSa/KLd1yQ3pwCZQMmVw7vK/qGVzw
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

Make the driver use qcom_fw_helper to autodetect the path to the
calibration data file.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/remoteproc/Kconfig         | 1 +
 drivers/remoteproc/qcom_q6v5_pas.c | 9 +++++++++
 2 files changed, 10 insertions(+)

diff --git a/drivers/remoteproc/Kconfig b/drivers/remoteproc/Kconfig
index 884e1e69bbb6..7bb22fdb64e4 100644
--- a/drivers/remoteproc/Kconfig
+++ b/drivers/remoteproc/Kconfig
@@ -223,6 +223,7 @@ config QCOM_Q6V5_PAS
 	depends on RPMSG_QCOM_GLINK || RPMSG_QCOM_GLINK=n
 	depends on QCOM_AOSS_QMP || QCOM_AOSS_QMP=n
 	select MFD_SYSCON
+	select QCOM_FW_HELPER
 	select QCOM_PIL_INFO
 	select QCOM_MDT_LOADER
 	select QCOM_Q6V5_COMMON
diff --git a/drivers/remoteproc/qcom_q6v5_pas.c b/drivers/remoteproc/qcom_q6v5_pas.c
index 4694ec4f038d..893fda54b598 100644
--- a/drivers/remoteproc/qcom_q6v5_pas.c
+++ b/drivers/remoteproc/qcom_q6v5_pas.c
@@ -22,6 +22,7 @@
 #include <linux/firmware/qcom/qcom_scm.h>
 #include <linux/regulator/consumer.h>
 #include <linux/remoteproc.h>
+#include <linux/soc/qcom/fw_helper.h>
 #include <linux/soc/qcom/mdt_loader.h>
 #include <linux/soc/qcom/smem.h>
 #include <linux/soc/qcom/smem_state.h>
@@ -705,11 +706,19 @@ static int adsp_probe(struct platform_device *pdev)
 						    &dtb_fw_name);
 		if (ret < 0 && ret != -EINVAL)
 			return ret;
+
+		dtb_fw_name = devm_qcom_get_board_fw(&pdev->dev, dtb_fw_name);
+		if (!dtb_fw_name)
+			return -ENOMEM;
 	}
 
 	if (desc->minidump_id)
 		ops = &adsp_minidump_ops;
 
+	fw_name = qcom_get_board_fw(fw_name);
+	if (!fw_name)
+		return -ENOMEM;
+
 	rproc = devm_rproc_alloc(&pdev->dev, pdev->name, ops, fw_name, sizeof(*adsp));
 
 	if (!rproc) {

-- 
2.39.2


