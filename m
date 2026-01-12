Return-Path: <devicetree+bounces-254153-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E1C9D14DAC
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 20:04:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 315B530C6859
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 19:02:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8A5AB311C01;
	Mon, 12 Jan 2026 19:02:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="j8xAR0Kn";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="gghVYMfC"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A9A93126A7
	for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 19:01:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768244525; cv=none; b=BrqqWoR0x13FkxrZ3dEa91aoB++K2Yaq5wy+KxzVYUB100GEqgnDZUUye2xhIU510TDMXLqS1O4RSD7EdIgiV5yIlapj1KOesc0UsFLnufjdiw1gMNzxFllh7Y8JOkXyKXn2r8DkWqOkUdl5WucHAaePSSdNNKQKSU/q3XoMGE0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768244525; c=relaxed/simple;
	bh=pfeLOwuV5tNEGHquY+BElAmY8n4IFgbScPUapFuaNyg=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=OE9cKOMGCJdYQnUuL16lvD5B8nnVS7cXwC3Fho2/AFDhNdxdzlmYrHcT969f//jfDG9WqpHli9lrVvxOY+sFXUll7TUNv7V0FM71V6KIxzeClUQtHiaw6xNWEYmCcSa9jBXVioyzRdZRswnlewNlL/h3AqYvFRHnSUVZORf1t+E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=j8xAR0Kn; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=gghVYMfC; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60CInAPX2760824
	for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 19:01:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=uPDjxnyIvH6
	EuQa8qYzLtg8+o6G0UI+SqbdnqVH1a/A=; b=j8xAR0KnlQbuR+kAFXJJdgxvQLO
	3xF97ZVby5/Ki1VwyrZHjp/WnNNShU43ykYNqQJ233v9LzzoF8spllzL3PAJYHfX
	Wn9W84LmWOJYM8LyDW84AlsUUyTg3RKmicxzmI0k6nLGHkN0F8vE0OG2a5z97twT
	DsQpUmxMpnfu08WD2SyNln/jr9Y6hnu1YatpWzb7Qp6tftGTIpFtR63Kbz6Jow+k
	a04UA+cvGXKyJLl8GDODLS5kjn8KbW3JlldRpUGVOHSd4XMCLKta4nMZt+JbYc5u
	i5MP4W2MaZ3vIvz80690mlxsOodqpXQ/Y7ik4HNs0LlOhQRpEBkZzCJxyLA==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bn6jm81ns-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 19:01:57 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2a0fe4ade9eso63108925ad.0
        for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 11:01:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768244516; x=1768849316; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uPDjxnyIvH6EuQa8qYzLtg8+o6G0UI+SqbdnqVH1a/A=;
        b=gghVYMfCDqQPRz69+S7Gx24q9WkkfyFowlpccMKo8Ctn/uC2OLfiP9dC6jklj62rsL
         oBB7hdNlkpWg/8RoMhrP8n3UifK6LludSJQac9KjprMvuWRn0oLEuguADAyn75qneKwz
         S/J7M8jrCna8MULs2dzixHZkGFIibqQwU6dx1dN+O73AQrvZCMZmVESUUDyVvMvO0WE1
         YSON6WCK/LBqmPst9yqS1Xc4FVTP6TkgOqENRHw74YMguSsF3R6CW2neuyyD7R5LbXjS
         lCN2rpBaVdSRaXM2u+DZJCk0t0b5zyqwJaM49qEmprtb8SHKCkUUBucMLAe9t+qTpcq1
         CGCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768244516; x=1768849316;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=uPDjxnyIvH6EuQa8qYzLtg8+o6G0UI+SqbdnqVH1a/A=;
        b=iNkAe8vWgLmqtgMrglDmr6ykWJ3aXGKAqjhkYvgfRl0VR2sgGY9UAhIsejPxxsVXs7
         TXCbyUO4lyvo0j2YevMUrelh0ED260rmnSODb7illHehKmjEhWth2vjbWPOQ+8amkEe3
         thLNngqpyUchF1ARh1yG5WRUq9WI7qpdYH6GCV6zlShtLhL503zpsCoyT4GaIahBu1Gw
         Dtjx2WwHzKlA2GXQSBhm302Q/U3W0eJxXySRQbsW1XpdzpRBBn2b3Rhf9fkuDSqeCdQA
         buedL8sO1h5OFseo8JeyrxbLIpnU9kswEVXp+/89Z+sFzaJlf3MqEEO6jBQQ/rXoXNcR
         47BQ==
X-Forwarded-Encrypted: i=1; AJvYcCWdZ/O5dRFz0rgCLVTWTTvcQ0NIO8lz0ZaB5W+dw3Hec8P/ByW+Lo7uZBJz3+pFjD4dhd3fbI/C91Nn@vger.kernel.org
X-Gm-Message-State: AOJu0YzHnBR7VHZaPQz6JBfYG/LE1EHhNn+WoJsKWfd/EL2whX/zjbLE
	9E7NcAgz4bUgNeMN/OoBHSPZZNnn/ZzwwVfVkbtbYr5H3goW4zHo7UB2XnH1xdQGFOMA/akjDSf
	MeCHAwD+BPPDnagMa3E4yvszkjvgr4DOY2MSKgl2B5GS3c8j9IPRZP3uXpgZQKgnl
X-Gm-Gg: AY/fxX5X4mX3Ms8n4Zdo52Ac0sc1Z7NqZH+bEWRjUh6DxQ2TjKOpQbOIaJCwn9UduyY
	5WisoOUqmCB21qTTbO/ZbqM5GMfHgul/r+9RT5hAlTd3Vv14HiqBdH3UFA/HkhT7c+Ggl9vH8eb
	6LzPSO1ev56lHA841i1LEagVOPvfTDo0jyuMffKcYk0jYJASE+Xo9QDNqONQexjKjLXNuRlwmVX
	BR57iWMLqOB3sSx42RnHZq88T1iq7XXzD1lbQCG+oVmwhewXBHo7TbbZYLLw+dPHu5E16tLwszw
	orVyWLomL2+Ry8fTah8+Xd+9lY+Mrz3NNa9zKKQWVLaOsC1pchiPjMc712EDXxRVGda2EiaNmKS
	jqVe2FhDBYIbCzXJddFI3JVSol/GSQU/p8rOSQetqi/k=
X-Received: by 2002:a17:903:37c3:b0:29f:2734:6ffb with SMTP id d9443c01a7336-2a3ee434de2mr165519635ad.22.1768244515354;
        Mon, 12 Jan 2026 11:01:55 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGwEXg2WbEK0kcjSo9QlXVzcQp789a1loIB7VqV7j6g3wpJFM++BTLFba+1EthzjPpfOZoS3Q==
X-Received: by 2002:a17:903:37c3:b0:29f:2734:6ffb with SMTP id d9443c01a7336-2a3ee434de2mr165519135ad.22.1768244514744;
        Mon, 12 Jan 2026 11:01:54 -0800 (PST)
Received: from hu-ptalari-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a3e3cc8888sm180120595ad.76.2026.01.12.11.01.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Jan 2026 11:01:54 -0800 (PST)
From: Praveen Talari <praveen.talari@oss.qualcomm.com>
To: Mark Brown <broonie@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Praveen Talari <praveen.talari@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-spi@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        bryan.odonoghue@linaro.org, dmitry.baryshkov@oss.qualcomm.com,
        andersson@kernel.org, bjorn.andersson@oss.qualcomm.com
Cc: prasad.sodagudi@oss.qualcomm.com, mukesh.savaliya@oss.qualcomm.com,
        quic_vtanuku@quicinc.com, aniket.randive@oss.qualcomm.com,
        chandana.chiluveru@oss.qualcomm.com,
        Praveen Talari <quic_ptalari@quicinc.com>
Subject: [PATCH v1 2/4] spi: qcom-geni: Use geni_se_resources_init() for resource initialization
Date: Tue, 13 Jan 2026 00:31:32 +0530
Message-Id: <20260112190134.1526646-3-praveen.talari@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260112190134.1526646-1-praveen.talari@oss.qualcomm.com>
References: <20260112190134.1526646-1-praveen.talari@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: mbHlQtqz8unS-MilxbeeErZM01N1jALb
X-Authority-Analysis: v=2.4 cv=SK1PlevH c=1 sm=1 tr=0 ts=69654525 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=COk6AnOGAAAA:8 a=TXo2QnZ9t29hVJcr6pMA:9 a=324X-CrmTo6CU4MGRt3R:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: mbHlQtqz8unS-MilxbeeErZM01N1jALb
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTEyMDE1NyBTYWx0ZWRfX45EhWNXtkhrz
 ugerT3YtnfYlaa8GBzN64buxD8IvjtWIYoqDNJFVN/Xw3V77HKf4ZgynlxgOah4AzMp5Fc9NGLd
 NUqvSgrpVvPBXtFA/PqCllv5756g95TCWWCs3Ut6OsT0S8e0LITDkDERSrnhP+o43B4CynJNLa5
 dw+0ju3reDFeo9jXqUnk3EOGKhZ0RugD5Dfyw9QQCEJvQiqL1Oz6tby8IvL4B765IYoq2/KzFr7
 3q5lQ9cs7OFFSepr7C2JAHClnq8UIMotgv2ucnHny3cg8I5MKMZhfy0f6SOPauR1XgMqTPNDYdG
 xHsZSU5pAlVbvVYZkOLQUn8RFuWYUure3EmTiHBjcatHjUqQu6LhARWsZy0biNG0QF8KoxdWgAo
 d9wge/BcBbgVXMz8EG81rXUQNp9O5PibGwYCuIqQQ9OW7Y3Yo+Porev1BWq/c33xxp8zJBVW8hR
 cKHxLVjYovuLnZLfiYA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-12_05,2026-01-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 spamscore=0 impostorscore=0 priorityscore=1501
 lowpriorityscore=0 suspectscore=0 clxscore=1015 adultscore=0 bulkscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601120157

From: Praveen Talari <quic_ptalari@quicinc.com>

Replace resources initialization such as clocks, ICC path and OPP with the
common geni_se_resources_init() function to avoid code duplication across
all drivers.

The geni_se_resources_init() function handles all these resources
internally, reducing code duplication and ensuring consistent resource
management across GENI SE drivers.

Signed-off-by: Praveen Talari <quic_ptalari@quicinc.com>
---
 drivers/spi/spi-geni-qcom.c | 26 +-------------------------
 1 file changed, 1 insertion(+), 25 deletions(-)

diff --git a/drivers/spi/spi-geni-qcom.c b/drivers/spi/spi-geni-qcom.c
index 5cca356cb673..7d047ae9c874 100644
--- a/drivers/spi/spi-geni-qcom.c
+++ b/drivers/spi/spi-geni-qcom.c
@@ -1014,7 +1014,6 @@ static int spi_geni_probe(struct platform_device *pdev)
 	struct spi_controller *spi;
 	struct spi_geni_master *mas;
 	void __iomem *base;
-	struct clk *clk;
 	struct device *dev = &pdev->dev;
 
 	irq = platform_get_irq(pdev, 0);
@@ -1029,10 +1028,6 @@ static int spi_geni_probe(struct platform_device *pdev)
 	if (IS_ERR(base))
 		return PTR_ERR(base);
 
-	clk = devm_clk_get(dev, "se");
-	if (IS_ERR(clk))
-		return PTR_ERR(clk);
-
 	spi = devm_spi_alloc_host(dev, sizeof(*mas));
 	if (!spi)
 		return -ENOMEM;
@@ -1044,17 +1039,10 @@ static int spi_geni_probe(struct platform_device *pdev)
 	mas->se.dev = dev;
 	mas->se.wrapper = dev_get_drvdata(dev->parent);
 	mas->se.base = base;
-	mas->se.clk = clk;
 
-	ret = devm_pm_opp_set_clkname(&pdev->dev, "se");
+	ret = geni_se_resources_init(&mas->se);
 	if (ret)
 		return ret;
-	/* OPP table is optional */
-	ret = devm_pm_opp_of_add_table(&pdev->dev);
-	if (ret && ret != -ENODEV) {
-		dev_err(&pdev->dev, "invalid OPP table in device tree\n");
-		return ret;
-	}
 
 	spi->bus_num = -1;
 	spi->dev.of_node = dev->of_node;
@@ -1078,10 +1066,6 @@ static int spi_geni_probe(struct platform_device *pdev)
 	init_completion(&mas->rx_reset_done);
 	spin_lock_init(&mas->lock);
 
-	ret = geni_icc_get(&mas->se, NULL);
-	if (ret)
-		return ret;
-
 	pm_runtime_use_autosuspend(&pdev->dev);
 	pm_runtime_set_autosuspend_delay(&pdev->dev, 250);
 	ret = devm_pm_runtime_enable(dev);
@@ -1091,14 +1075,6 @@ static int spi_geni_probe(struct platform_device *pdev)
 	if (device_property_read_bool(&pdev->dev, "spi-slave"))
 		spi->target = true;
 
-	/* Set the bus quota to a reasonable value for register access */
-	mas->se.icc_paths[GENI_TO_CORE].avg_bw = Bps_to_icc(CORE_2X_50_MHZ);
-	mas->se.icc_paths[CPU_TO_GENI].avg_bw = GENI_DEFAULT_BW;
-
-	ret = geni_icc_set_bw(&mas->se);
-	if (ret)
-		return ret;
-
 	ret = spi_geni_init(mas);
 	if (ret)
 		return ret;
-- 
2.34.1


