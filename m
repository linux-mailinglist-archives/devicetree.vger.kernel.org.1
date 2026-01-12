Return-Path: <devicetree+bounces-253856-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id EF63DD1207A
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 11:51:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id D49EE30A2472
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 10:49:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EBCE734C990;
	Mon, 12 Jan 2026 10:48:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="oTt/H+kw";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="bOKr0DdS"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F07A346FAA
	for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 10:48:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768214916; cv=none; b=Tz/BgxBMH1Dp0hAbku8+KHUycaxq8ZyPdM3/lOzzoSVPggx0r/61f2hXlH49JRnM1Eabhrun23E+kuhLE+muI9LNgYSVALLGYEF/3yerEkYD/sKmQXyiaBgaVvo3Nqa/trYJqdzevRdFim141D5LAFJvqCn8UW9+SnkP6dqFFYM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768214916; c=relaxed/simple;
	bh=5xsApeJnKutP/DbrLu9m78Eok6FpXw0T47Onyc9grx0=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=gbBCbjYcFXiBVZnFeys7WbX0tdZMVaGXUnoLW/OxPwTe4efzfyXPcH1qb/2XdPfz8InCwaaP+trXTAOWSGjFqXfu4HOW5RF1EKexRqAz3vCkocyA54FAq5RRspp/iLlPieHIrVK1Ar8Z9eWSURhRsgCHMLiijNVEsMSbxOE2jbU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=oTt/H+kw; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=bOKr0DdS; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60CAEWX71315822
	for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 10:48:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=sqaUgDVKZ6m
	4wCTCNsu1hZ5yx1Nzly5OMpjbviE6Ct8=; b=oTt/H+kwawcL8Jm1BtxTyPlVL0+
	q2nv9DB6VhR9W4wK+X3IXW1nvdm+Ia6Q5ErLXTDbwZ2Yy6AbQaWdTrFspIwLHXpO
	xqHRE9NSB5xy34Nsx4QXhU87RVC/AMyKoHjLWo/gyxOt80GvEXR+XZp6NQBKydGI
	ns6HqjqCwSCFL7s/iFZcdoo7K2B4oXuFQYG6vGrkQNOhzENpzr+BkPH/Gmk3i5BB
	WMUs/AClAU6srol7x/ua6P0tFn8Id7UlAEQ3GZukvSHULaJidDp0a1tyNnVNWAvZ
	qH4A3CplKPPaxDQA/XBH5r5qod0HWCAVDpnNrfx67f5o/tx3/Z1Zq0Q3Ckg==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bmy1hg2ue-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 10:48:26 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-7fc82eff4adso4226210b3a.1
        for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 02:48:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768214906; x=1768819706; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sqaUgDVKZ6m4wCTCNsu1hZ5yx1Nzly5OMpjbviE6Ct8=;
        b=bOKr0DdSTdlav8RhNDUup6w2v+qpbhlzpLiLWtLiKJvlq4itLtHWu3mx8MVywDoHtv
         cZDadCcB6rpcqGhlr1Xu4VDgNHWd2jNX9p2cZI1K81rZCGKcJ9hV9F7WA5MYMVBoDMJX
         nbnOaArQg4jpsJVzPWpyWS0vdAMhIhGvZTqPPxD1JbhnCA7Vd77XZfveDBeOvYWHt+cd
         Oqtcms7gAL4VnFI+rnTkW1zlf5RHMYL639HhJMBtJX1GX2NRfrU1OrUsViog1pgedJx1
         2l3uQRJO3wrYRe4yy0i8FmmX05NkKB27MQP8r5K8q85sinX+Bb9f8qNLWlJqj1YePZGG
         r5YQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768214906; x=1768819706;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=sqaUgDVKZ6m4wCTCNsu1hZ5yx1Nzly5OMpjbviE6Ct8=;
        b=HeNHNobgvRjg2kWoOSzw2inQaWXond+bNTUc0pM83IqYQVH7V2NJFNVrF+w9QnRkwW
         mRyjzzxPEKyLFwUwEwK2Dhe5KWTj3y5SxDaDk6oHP0L0hQSM+hRRHRJbAokLAEv8xpjE
         UehBjToy+YfSScqcPcVC+98IZiswfuuErHxD59uQeZXX8nNR2HrGM2jTzjn8yFOQBkNQ
         a2xpGj/5SXwxMpdvlR5XSYFqyLe221IvO/zTQhmsYWdY7g58IyJPlXDAy8YTLQ73Y3L3
         5u43oWKwGWe50Scn3DixsTJuUJcF3tOSmTLYRD7kFLdaZqT0/UQoyfYsj9mqYR7yWX0K
         J6zQ==
X-Forwarded-Encrypted: i=1; AJvYcCVojZN0lojQ7mrMpN/4N+W7ywk/u2YgcUIi2amLEqdAGwOjx8djB50wX/TBMrN/Nj/Pn1gcUA8+507z@vger.kernel.org
X-Gm-Message-State: AOJu0YyMhxsel3JHsDxCwg8DUEz59nV8J1PiKgYII+Ym+QzanyHj9FGH
	gMV2L1Bt8CJg4OaR9d+BCDZmiJmjyYidX9zDV9ZKVvNolpFnqzYXtX62UxLEu9S1ZIwsfUObQza
	nhbw2L7p6pCoFtiTu9k1Cjk4i5YEo6h8hiRzDeq3F8h9LWM0MsbIxTwYpD/9LvdAG
X-Gm-Gg: AY/fxX6Z/72ulvrHI94c0xP9iC98l5P2vlGMMQA/IMCQNldcgG/t3HgavvIQ3b02Nbs
	V3ZwPztQAgQmRFocdI8HkdkeAIYWV5OsSqZ0iAz/kuUCryWBt9AunYxDyilUxSMxEw9/ykmZIZE
	QNIEstSuKtcGLpjDoy/hP9Nd8GpWH7nosNniAOIz1in6BrwV4HLrWW8FM5H71W9S2VSl7eanbVb
	V1xTwfhp3vdUSfbiUav7SGZbzfZIifL6CeyngsBNyvYJyBI9MHljs4xlTmPA6YqXxpXm1qAvlxM
	9sfMSvz062oPLDlAegzDye0pdJYVgzFZ9Y0mHn1TKG2VK0fKMLXHZ88i8stE6UsOkuOCUHwEHFm
	hBR0QZ1oGEqAk3idTARuqZoNcvZq/BRGCyJKTyhAQYds=
X-Received: by 2002:a05:6a00:4907:b0:81c:79a3:57b6 with SMTP id d2e1a72fcca58-81c79a358e9mr9079664b3a.9.1768214905364;
        Mon, 12 Jan 2026 02:48:25 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHQgN/pljh0AWTwGXIEghkl8dkJkuEQnyyPyNP4Ss1SBJX6CGd1e5duSSgKw5sChhNCCTHNCg==
X-Received: by 2002:a05:6a00:4907:b0:81c:79a3:57b6 with SMTP id d2e1a72fcca58-81c79a358e9mr9079630b3a.9.1768214904724;
        Mon, 12 Jan 2026 02:48:24 -0800 (PST)
Received: from hu-ptalari-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-819bafe9b8dsm17288681b3a.22.2026.01.12.02.48.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Jan 2026 02:48:24 -0800 (PST)
From: Praveen Talari <praveen.talari@oss.qualcomm.com>
To: Andi Shyti <andi.shyti@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Mukesh Kumar Savaliya <mukesh.savaliya@oss.qualcomm.com>,
        Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Praveen Talari <praveen.talari@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-i2c@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        bryan.odonoghue@linaro.org, dmitry.baryshkov@oss.qualcomm.com,
        bjorn.andersson@oss.qualcomm.com
Cc: prasad.sodagudi@oss.qualcomm.com, quic_vtanuku@quicinc.com,
        aniket.randive@oss.qualcomm.com, chandana.chiluveru@oss.qualcomm.com
Subject: [PATCH v3 08/12] i2c: qcom-geni: Isolate serial engine setup
Date: Mon, 12 Jan 2026 16:17:18 +0530
Message-Id: <20260112104722.591521-9-praveen.talari@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260112104722.591521-1-praveen.talari@oss.qualcomm.com>
References: <20260112104722.591521-1-praveen.talari@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: PcqzwhGj7DMvy9nISeLdGmL5awxQiL8r
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTEyMDA4NSBTYWx0ZWRfX9tlhxrSbDQ//
 TxUXPjtjInLT1VbivAUHBwIQmZIcIXchUPQem+DmUPd2xmmoiJQ0cCvD8wBybTTKYo996tNuWxq
 +ecmJCiDewOAlvbW28CM9zrdWpoVm8LHDfPRmDfJhLV4OvGsUOqSzHfTy1Z2T0YqU5W980ko0IB
 ulae2CNhIFQB1PfcjJfgGhxWT/rZPwVIGBU+nO6RFgJ5nyXD+IdGqmRT0Aoz8v6hMB9G66mQafx
 s+zhRWyygZtBTFL6VnkKdy2xyYoY/DDmnRgV+1m7KDwQYjO3NxGAxm63ibFT54Na8NJ5C1yF5IP
 bwEsaE1/5W+HbeR2e2QCjn8cidkXkXMDLtptwdhWwX0sKJmumC97H7y1+VYmMmwtn/cS7WEMa66
 9yI8v65huXNY92oVFoA9gdHcOWtq8aYzqX6MXs+D11G+43+KoEAF7h2Czza474fOyX+Mb2cIk0I
 EjVUdIrwBR0DxxKIZdw==
X-Proofpoint-ORIG-GUID: PcqzwhGj7DMvy9nISeLdGmL5awxQiL8r
X-Authority-Analysis: v=2.4 cv=EovfbCcA c=1 sm=1 tr=0 ts=6964d17a cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=6GPvvr__t7aM35KwLhsA:9 a=OpyuDcXvxspvyRM73sMx:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-12_03,2026-01-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 bulkscore=0 adultscore=0 lowpriorityscore=0
 impostorscore=0 clxscore=1015 suspectscore=0 malwarescore=0 phishscore=0
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601120085

Moving the serial engine setup to geni_i2c_init() API for a cleaner
probe function and utilizes the PM runtime API to control resources
instead of direct clock-related APIs for better resource management.

Enables reusability of the serial engine initialization like
hibernation and deep sleep features where hardware context is lost.

Signed-off-by: Praveen Talari <praveen.talari@oss.qualcomm.com>
---
v1->v2:
Bjorn:
- Updated commit text.
---
 drivers/i2c/busses/i2c-qcom-geni.c | 154 ++++++++++++++---------------
 1 file changed, 73 insertions(+), 81 deletions(-)

diff --git a/drivers/i2c/busses/i2c-qcom-geni.c b/drivers/i2c/busses/i2c-qcom-geni.c
index 3a04016db2c3..58c32ffbd150 100644
--- a/drivers/i2c/busses/i2c-qcom-geni.c
+++ b/drivers/i2c/busses/i2c-qcom-geni.c
@@ -976,10 +976,75 @@ static int setup_gpi_dma(struct geni_i2c_dev *gi2c)
 	return ret;
 }
 
+static int geni_i2c_init(struct geni_i2c_dev *gi2c)
+{
+	const struct geni_i2c_desc *desc = NULL;
+	u32 proto, tx_depth;
+	bool fifo_disable;
+	int ret;
+
+	ret = pm_runtime_resume_and_get(gi2c->se.dev);
+	if (ret < 0) {
+		dev_err(gi2c->se.dev, "error turning on device :%d\n", ret);
+		return ret;
+	}
+
+	proto = geni_se_read_proto(&gi2c->se);
+	if (proto == GENI_SE_INVALID_PROTO) {
+		ret = geni_load_se_firmware(&gi2c->se, GENI_SE_I2C);
+		if (ret) {
+			dev_err_probe(gi2c->se.dev, ret, "i2c firmware load failed ret: %d\n", ret);
+			goto err;
+		}
+	} else if (proto != GENI_SE_I2C) {
+		ret = dev_err_probe(gi2c->se.dev, -ENXIO, "Invalid proto %d\n", proto);
+		goto err;
+	}
+
+	desc = device_get_match_data(gi2c->se.dev);
+	if (desc && desc->no_dma_support)
+		fifo_disable = false;
+	else
+		fifo_disable = readl_relaxed(gi2c->se.base + GENI_IF_DISABLE_RO) & FIFO_IF_DISABLE;
+
+	if (fifo_disable) {
+		/* FIFO is disabled, so we can only use GPI DMA */
+		gi2c->gpi_mode = true;
+		ret = setup_gpi_dma(gi2c);
+		if (ret)
+			goto err;
+
+		dev_dbg(gi2c->se.dev, "Using GPI DMA mode for I2C\n");
+	} else {
+		gi2c->gpi_mode = false;
+		tx_depth = geni_se_get_tx_fifo_depth(&gi2c->se);
+
+		/* I2C Master Hub Serial Elements doesn't have the HW_PARAM_0 register */
+		if (!tx_depth && desc)
+			tx_depth = desc->tx_fifo_depth;
+
+		if (!tx_depth) {
+			ret = dev_err_probe(gi2c->se.dev, -EINVAL,
+					    "Invalid TX FIFO depth\n");
+			goto err;
+		}
+
+		gi2c->tx_wm = tx_depth - 1;
+		geni_se_init(&gi2c->se, gi2c->tx_wm, tx_depth);
+		geni_se_config_packing(&gi2c->se, BITS_PER_BYTE,
+				       PACKING_BYTES_PW, true, true, true);
+
+		dev_dbg(gi2c->se.dev, "i2c fifo/se-dma mode. fifo depth:%d\n", tx_depth);
+	}
+
+err:
+	pm_runtime_put(gi2c->se.dev);
+	return ret;
+}
+
 static int geni_i2c_probe(struct platform_device *pdev)
 {
 	struct geni_i2c_dev *gi2c;
-	u32 proto, tx_depth, fifo_disable;
 	int ret;
 	struct device *dev = &pdev->dev;
 	const struct geni_i2c_desc *desc = NULL;
@@ -1059,100 +1124,27 @@ static int geni_i2c_probe(struct platform_device *pdev)
 	if (ret)
 		return ret;
 
-	ret = clk_prepare_enable(gi2c->core_clk);
-	if (ret)
-		return ret;
-
-	ret = geni_se_resources_on(&gi2c->se);
-	if (ret) {
-		dev_err_probe(dev, ret, "Error turning on resources\n");
-		goto err_clk;
-	}
-	proto = geni_se_read_proto(&gi2c->se);
-	if (proto == GENI_SE_INVALID_PROTO) {
-		ret = geni_load_se_firmware(&gi2c->se, GENI_SE_I2C);
-		if (ret) {
-			dev_err_probe(dev, ret, "i2c firmware load failed ret: %d\n", ret);
-			goto err_resources;
-		}
-	} else if (proto != GENI_SE_I2C) {
-		ret = dev_err_probe(dev, -ENXIO, "Invalid proto %d\n", proto);
-		goto err_resources;
-	}
-
-	if (desc && desc->no_dma_support)
-		fifo_disable = false;
-	else
-		fifo_disable = readl_relaxed(gi2c->se.base + GENI_IF_DISABLE_RO) & FIFO_IF_DISABLE;
-
-	if (fifo_disable) {
-		/* FIFO is disabled, so we can only use GPI DMA */
-		gi2c->gpi_mode = true;
-		ret = setup_gpi_dma(gi2c);
-		if (ret)
-			goto err_resources;
-
-		dev_dbg(dev, "Using GPI DMA mode for I2C\n");
-	} else {
-		gi2c->gpi_mode = false;
-		tx_depth = geni_se_get_tx_fifo_depth(&gi2c->se);
-
-		/* I2C Master Hub Serial Elements doesn't have the HW_PARAM_0 register */
-		if (!tx_depth && desc)
-			tx_depth = desc->tx_fifo_depth;
-
-		if (!tx_depth) {
-			ret = dev_err_probe(dev, -EINVAL,
-					    "Invalid TX FIFO depth\n");
-			goto err_resources;
-		}
-
-		gi2c->tx_wm = tx_depth - 1;
-		geni_se_init(&gi2c->se, gi2c->tx_wm, tx_depth);
-		geni_se_config_packing(&gi2c->se, BITS_PER_BYTE,
-				       PACKING_BYTES_PW, true, true, true);
-
-		dev_dbg(dev, "i2c fifo/se-dma mode. fifo depth:%d\n", tx_depth);
-	}
-
-	clk_disable_unprepare(gi2c->core_clk);
-	ret = geni_se_resources_off(&gi2c->se);
-	if (ret) {
-		dev_err_probe(dev, ret, "Error turning off resources\n");
-		goto err_dma;
-	}
-
-	ret = geni_icc_disable(&gi2c->se);
-	if (ret)
-		goto err_dma;
-
 	gi2c->suspended = 1;
 	pm_runtime_set_suspended(gi2c->se.dev);
 	pm_runtime_set_autosuspend_delay(gi2c->se.dev, I2C_AUTO_SUSPEND_DELAY);
 	pm_runtime_use_autosuspend(gi2c->se.dev);
 	pm_runtime_enable(gi2c->se.dev);
 
+	ret =  geni_i2c_init(gi2c);
+	if (ret < 0) {
+		pm_runtime_disable(gi2c->se.dev);
+		return ret;
+	}
+
 	ret = i2c_add_adapter(&gi2c->adap);
 	if (ret) {
 		dev_err_probe(dev, ret, "Error adding i2c adapter\n");
 		pm_runtime_disable(gi2c->se.dev);
-		goto err_dma;
+		return ret;
 	}
 
 	dev_dbg(dev, "Geni-I2C adaptor successfully added\n");
 
-	return ret;
-
-err_resources:
-	geni_se_resources_off(&gi2c->se);
-err_clk:
-	clk_disable_unprepare(gi2c->core_clk);
-
-	return ret;
-
-err_dma:
-	release_gpi_dma(gi2c);
-
 	return ret;
 }
 
-- 
2.34.1


