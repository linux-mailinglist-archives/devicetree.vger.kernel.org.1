Return-Path: <devicetree+bounces-209921-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FAB0B3983D
	for <lists+devicetree@lfdr.de>; Thu, 28 Aug 2025 11:28:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E89C65E4996
	for <lists+devicetree@lfdr.de>; Thu, 28 Aug 2025 09:28:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 482CF2EF66E;
	Thu, 28 Aug 2025 09:27:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="YQFP8bLY"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B2E572E0910
	for <devicetree@vger.kernel.org>; Thu, 28 Aug 2025 09:27:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756373254; cv=none; b=LpHTBcJOZzBxi8oWxyYw4vLUXo3WZqrcKP3jqPIgQq5mLBacP2z2cbbvj6ZEqjxNg31Bk8UYsUyz2dWymkN9I0tfvjnfFhu9UhzEWuz8zj2p3nf6Pe6YUYYoauXOuTM0ARSpMzdsJ7AWG8WbCJxskkwV1EvefB2F33Adhf1Y7OM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756373254; c=relaxed/simple;
	bh=o+5/ACwsPDXaRMmwhSug61zH+Sv2mKJhHu/g8cXlGAs=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=jo8aFvCaWzCHfIZN6fWjxN+hQjVggCAKjZM3rRk6plcI6Ijzv+cGa0mr0O9GlTVHLMLG8S6vgfRmA/EeYC88iFsO3OdKjyZb1nUhCbwaskOlgDnphOK6NimjQ7Cm1u2eqa+DN5QaRlA0Miu/wmfVLPILDeReTXFwMoJp6YDl9jQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=YQFP8bLY; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57S5VqfK015944
	for <devicetree@vger.kernel.org>; Thu, 28 Aug 2025 09:27:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	nH0EHtfD2ZZRvR66YNRJIcjAqr2g05k6ZjcI9rf+mU0=; b=YQFP8bLYJBGUVngI
	78UxXhY31q1WO2r7e3T0XvbzBxIs3KkSOM7u099IAoY2SG59NJmX0GYSyHp9yEHl
	gAyaTPAPjk7BxTtQ0+dpK7JDlnbsv+Efom+keJcj3UMoKjL4SWeBbbtc8hgefd/Z
	aDAGkU4CY4EwpCBOfWA7U9xg1Pa8Xdxvz1dFawYUYnIi5MKwx921TtX3XFfJquww
	/cCJUQPPqad5zKHpsPFGqNpDA4DFJBqgfqAaDYavnDIHKFWDuuJTtwhZqTP0D0Fz
	jQ+CBC7qRz1yIHSWyTYqhozdOjzZxihHUyJIl1S/8UVPiiHaSF/c5XkSrQVCu/WL
	tWjcKA==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48rtpf208s-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 28 Aug 2025 09:27:31 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-244581ce13aso13034585ad.2
        for <devicetree@vger.kernel.org>; Thu, 28 Aug 2025 02:27:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756373250; x=1756978050;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nH0EHtfD2ZZRvR66YNRJIcjAqr2g05k6ZjcI9rf+mU0=;
        b=H1ZgK2voZaum2WOyCvcHp9CZ93JqU2azQjfg7P83W+bx7FFrBOIh+kGH5M6JA/dodo
         X5dTmk03agxfrr8q0dJ48DXOw1rf176w1Z2sqwWBww6BuzmxDa4qPxd3zz0/DuRbNhQq
         9oXgEw8MXL0GRvyC8M4ybRHJpcNeLe8DTry2zr2WBTA97+czTKOx4RMDw7K5XA4Czvli
         f0TnaVRM73N0P26TDiQ6q5+tr6jrFykkFXUon9HUsXtXXuP8/U6ZI1Ra7IC2ln+aC1ty
         wNPsM/4YcCQTXRdG89hAeiAmJQ1efNLu0KtE7CMQoKNs3//POO0Ovzevr2rXWT21HDhc
         /7eA==
X-Forwarded-Encrypted: i=1; AJvYcCUrqzmXJjT/xlgox3duaCkhvKgPNXhpqkn229Dnfjg/qMb1wB76ARPmC2p+M8pf0zTtyBNe2SGZiFFP@vger.kernel.org
X-Gm-Message-State: AOJu0YxsCD/vETsZLPVjPMXJIoiQT8ByTcJAy+DtecVP+iWfY3sMR/g0
	H20u78432A+t4T/KoIG6lwoi4RI6J8QvwE2ErKUC3JF+F5nLnofLWyTICqFqIxHfPn5vTDeYukH
	j9CbK+2arfp19/MLWU9t08qVhY0efLX80AafVx5Ul/ogs7YSej+Qh03Xmai5cGBiT
X-Gm-Gg: ASbGncuyeFyTBbcKD71GeOpu6UGda0JX2vrubQhYkYrTmqq8laegibN5VnOg0JaFmtr
	oDqQlT7Vr1b+sylPnNdzr4flIJIUHQhq15VMp8pHX/KOtb6gMQLuIcO49TtcViaaRjT3vbNWZqk
	b7RZXRCRwehUu2rFCa8GSelFAL9M0/Q0L+lKaNNy09VpuDHWhppQOnfscbvpVatWZNFIDFXJU6n
	ZuGHU9/wPCC7eFxSDKPucuKYN/7sGUhwJa7TcO9lNFy9U3kR4i04GJPr8ybg1zRcPqxnAdh79UO
	I8NucWTiJrP1BTQ9kXfvN+n+tec/kdX8a6jEWfIxquO17ixsNzp2y+iqGUZnfmU4yQL16697oEg
	Xo2zWsyWb8QOAnShVJcADnQ==
X-Received: by 2002:a17:903:1a45:b0:246:ddd6:f8b9 with SMTP id d9443c01a7336-246ddd6fd04mr189901175ad.43.1756373250451;
        Thu, 28 Aug 2025 02:27:30 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHRirl59ZqqwBenKh4YDCdNyXYQIOlCFbUMVk8c1xq8SkxEO/1u301M1/+O5byXT8KqSPmPOQ==
X-Received: by 2002:a17:903:1a45:b0:246:ddd6:f8b9 with SMTP id d9443c01a7336-246ddd6fd04mr189900935ad.43.1756373250023;
        Thu, 28 Aug 2025 02:27:30 -0700 (PDT)
Received: from hu-yuanfang-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-246ed91ee20sm92497015ad.136.2025.08.28.02.27.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Aug 2025 02:27:29 -0700 (PDT)
From: Yuanfang Zhang <yuanfang.zhang@oss.qualcomm.com>
Date: Thu, 28 Aug 2025 02:27:24 -0700
Subject: [PATCH v3 3/3] coresight-tnoc: Add runtime PM support for
 Interconnect TNOC
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250828-itnoc-v3-3-f1b55dea7a27@oss.qualcomm.com>
References: <20250828-itnoc-v3-0-f1b55dea7a27@oss.qualcomm.com>
In-Reply-To: <20250828-itnoc-v3-0-f1b55dea7a27@oss.qualcomm.com>
To: Suzuki K Poulose <suzuki.poulose@arm.com>,
        Mike Leach <mike.leach@linaro.org>,
        James Clark <james.clark@linaro.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Alexander Shishkin <alexander.shishkin@linux.intel.com>
Cc: kernel@oss.qualcomm.com, coresight@lists.linaro.org,
        linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Yuanfang Zhang <yuanfang.zhang@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1756373245; l=1698;
 i=yuanfang.zhang@oss.qualcomm.com; s=20250814; h=from:subject:message-id;
 bh=o+5/ACwsPDXaRMmwhSug61zH+Sv2mKJhHu/g8cXlGAs=;
 b=ilhqjytLS638zwMPR8kFJ/BYFsh+0ivhmo7Xklxsa8n4A7l49eb/ttMdW9+Ms3EmE4w7v4fuG
 ep3zeVkPCiaAko6vEjW7vzVFmKwBjdMqQjwMaWGaHyNIzMJygusBs0P
X-Developer-Key: i=yuanfang.zhang@oss.qualcomm.com; a=ed25519;
 pk=9oS/FoPW5k0CsqSDDrPlnV+kVIOUaAe0O5pr4M1wHgY=
X-Proofpoint-GUID: q4yJEHr6w_73El8EmlVKpvoPLX7yirZO
X-Proofpoint-ORIG-GUID: q4yJEHr6w_73El8EmlVKpvoPLX7yirZO
X-Authority-Analysis: v=2.4 cv=Hd8UTjE8 c=1 sm=1 tr=0 ts=68b02103 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=qearADheJa7ujHrKWl4A:9
 a=QEXdDO2ut3YA:10 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODI1MDE0MiBTYWx0ZWRfX/nXSz/JYQ7uE
 4dOBAu9MAwog23XrhlLvBoA0Ffg48WHN9jYzVBkh8XBmse9VcJ6JDgrX0FuPeLKpPL2+1RUJ1ey
 CF8LeIUAFxebgg7HesKc2BRxq+ViB2FX3mfn8v5s3fL6F92zp77VxMCMzyqyxoCkfhkzERlsTDI
 gQ2swSBdG0g1/rzYwSiAtebcB7pAuPQigDdE7n/5+0uNx/1Xzkm68MvvSm2qEujxZqyWDay+Hqw
 NGW9QHOxa6SwGGiXlO5ZkiMqYfdbjJhY5HjInTtezG+ZGTtf6NqbVTDkx259XtahuqS6Hl3/lgX
 0Tz8dT6y7d7nEKJ+JwzJ8OMQ2srJTHlSoSuNEZ8wvuIziKJB6i2Scz6AZ4h+1E7qg8kYDRGrqcY
 PT5Pk0dF
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-28_02,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0
 adultscore=0 clxscore=1015 impostorscore=0 spamscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508250142

This patch adds runtime power management support for platform-based
CoreSight Interconnect TNOC (ITNOC) devices. It introduces suspend and
resume callbacks to manage the APB clock (`pclk`) during device runtime
transitions.

Signed-off-by: Yuanfang Zhang <yuanfang.zhang@oss.qualcomm.com>
---
 drivers/hwtracing/coresight/coresight-tnoc.c | 23 +++++++++++++++++++++++
 1 file changed, 23 insertions(+)

diff --git a/drivers/hwtracing/coresight/coresight-tnoc.c b/drivers/hwtracing/coresight/coresight-tnoc.c
index ca96c3e66d683d6c1d1215b1b48d2f7b7f58d5b0..b744354b47c861370a247e1a6ce88563aa01c4aa 100644
--- a/drivers/hwtracing/coresight/coresight-tnoc.c
+++ b/drivers/hwtracing/coresight/coresight-tnoc.c
@@ -300,6 +300,28 @@ static void itnoc_remove(struct platform_device *pdev)
 	pm_runtime_disable(&pdev->dev);
 }
 
+#ifdef CONFIG_PM
+static int itnoc_runtime_suspend(struct device *dev)
+{
+	struct trace_noc_drvdata *drvdata = dev_get_drvdata(dev);
+
+	clk_disable_unprepare(drvdata->pclk);
+
+	return 0;
+}
+
+static int itnoc_runtime_resume(struct device *dev)
+{
+	struct trace_noc_drvdata *drvdata = dev_get_drvdata(dev);
+
+	return clk_prepare_enable(drvdata->pclk);
+}
+#endif
+
+static const struct dev_pm_ops itnoc_dev_pm_ops = {
+	SET_RUNTIME_PM_OPS(itnoc_runtime_suspend, itnoc_runtime_resume, NULL)
+};
+
 static const struct of_device_id itnoc_of_match[] = {
 	{ .compatible = "qcom,coresight-itnoc" },
 	{}
@@ -313,6 +335,7 @@ static struct platform_driver itnoc_driver = {
 		.name = "coresight-itnoc",
 		.of_match_table = itnoc_of_match,
 		.suppress_bind_attrs = true,
+		.pm = &itnoc_dev_pm_ops,
 	},
 };
 

-- 
2.34.1


