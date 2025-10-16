Return-Path: <devicetree+bounces-227417-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 05535BE1926
	for <lists+devicetree@lfdr.de>; Thu, 16 Oct 2025 07:50:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id DAE0F4F01B8
	for <lists+devicetree@lfdr.de>; Thu, 16 Oct 2025 05:50:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7A027253950;
	Thu, 16 Oct 2025 05:49:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="UTeX/g/+"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7DE1A24635E
	for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 05:49:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760593785; cv=none; b=lF8y5cBQGsjZePW7tsMJ8YNTqi2XyXUv9LnnuYLhmq4diGBn8TxtH9h/xwtwuG8vv4Jgaf5ShRYHyYjpRR161ZYuIMrL2Z71uB/EHp2cUJKriHBtBpKZeOfDEiH61o9N9YpjE72QmVDQP3VkHmoqYBcEKAbn5Xb+Ik0kvgaEJPU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760593785; c=relaxed/simple;
	bh=/fUCilk7cQkDDYH/V2caZpg8zsP8hHAk09zzZjiZ0fA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=fvqzqCqKtgRJt7+ysYsTioplUGBLwNE7KiB02IXcXBd9sEMETD8IR78N76OZlBM9GpX35hXlwzs1PFugiUm0z0ajj7k4ynZ/3gSBC6PhWGe9EWykcwxtOgeKtp7V7BmLql1La0rdgi8nC19kiR/u4OeRmmWFEkQJj97KoH7Odoc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=UTeX/g/+; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59FIOQjs016271
	for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 05:49:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	DyVbL0I8/PiNmAYsEUhziVGRGMTqi8AJFMbIQqrrco4=; b=UTeX/g/+WTPAt8LF
	O5LdZilnkNVVzIk7fZt0D8F+/K0oAYx5cx3x7gxmgiBiVObZSDUy0vdgbs8dSM7s
	bKf9plUfnof8PsXGkZSYwikW3ifiF7oNUx/dFY4XE5DEAjFYniQ8trYrDgCkUiHa
	GvBOuGv6oNdxHSG5N7WtF6w5z6liQBdQ1FsXA8WtbqCXYASbDaMjT+dGvNl+R4F8
	bHL0Y7T7UXImseeubyc4ELEcqmvG3m1HkFaaSrcIGKTz05Vvit1o6iT/ZLJIl39o
	zysaDc24xF3DrsYfnq1zZLp7jMz0T2bVL/+boEfSnqGexQ7tyeXoIS2pDbFSEkGn
	RVl5iw==
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com [209.85.215.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49qfdkf3s3-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 05:49:41 +0000 (GMT)
Received: by mail-pg1-f200.google.com with SMTP id 41be03b00d2f7-b5a013bc46dso293574a12.1
        for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 22:49:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760593780; x=1761198580;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DyVbL0I8/PiNmAYsEUhziVGRGMTqi8AJFMbIQqrrco4=;
        b=NOvIOpiwmkngohSNfZeOU+Xw7zHi27XnJDOTofi1tLOaicyLdmQnSIcBxwn1Uqmj1N
         YAI0Aopb3cZbnMataU300rP4Ue7zBG5khO30KGZ9iZZOxxGcS7kBuJEN0dPpHLjC/AOm
         8KnmFCgaUiqUc4yzTB6e7t8Mfo7qmhz0cFHDR5BU+pSyQ88g05K3hBA9+Qv8tfjJLC6Z
         ZANv4V4LNiJEKRg3gxVeVNnzBaggP8vaRDpDqduigl13wHk9Eu8yNuumNTjcVkSgV4xx
         SYppCXljc/PquJDykx050R+hmBuW3P/y3St6fy+18tPaRYQ2sCY/szMOEtLbQPj8dB2T
         WSjw==
X-Forwarded-Encrypted: i=1; AJvYcCUE6fnZjHJwXOeg8otO8YTQ0ityvXEN7Nu1vtjs8jO2HVAbFD7fQ75laMGmiqCf0Ejfh7RM2b2J5Oh6@vger.kernel.org
X-Gm-Message-State: AOJu0YxtMGLd9kJfwuB7alCEDt9aCysaTpMTQFRi9T4kJtzW8YETuPBP
	cLY+H5R0Aq0DMGcvLVXGsFQInIjZCWkKAey2HCzH19xvS4oCptNBvMmyhdOkJMvpLz30a74y1G9
	GDlau/gALOUlbUlPMYLprSIYdLqgZqVxIsVSJLzv5SMgELlgIK4+lmvABHCXq3w6Q
X-Gm-Gg: ASbGncszm0qGV0thX7cdjd5oQJeze/bC6JQFbycUlO6ey5EBWd6u2jTwOI0B4TIUh/v
	LpqrXaKeaOGWnJ7X+h3SZWHqYQC5u6tG9EzpS0eqgstxXyShexBsIeFKEw7YTs7GWR9SZb3Uyog
	6vTjB0tuYIfP58vNat851OivVUeIW+9RSsAsTw1NpQEBTQKpJ3rZJsovk5HqrX8UQrSlPHYlAQG
	Knii+JALmTXlCXsMbHrqLvTdV37v0MYCLSVfe//FizknpzWy+Ure/fhHzeCW2syhYi7iNS5PsH1
	oTwNYo2RiBrorh9inb74gipGMwzYAwTs9oOgAny/91zOzUArWtu+WLh3t60Cp401w9/rmf2LTEg
	DAUehvlOv2cXqrMKQ7OfK4slFAWj2ZrpawuCgwnOoHkThwEKG3a//SH5P
X-Received: by 2002:a05:6a20:914d:b0:334:8dd2:8377 with SMTP id adf61e73a8af0-3348dd283e5mr6041966637.26.1760593780113;
        Wed, 15 Oct 2025 22:49:40 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFwzLEF8TYLJ3wzPeCOLB/yHMgtvRy0vws8DZEBA/8AtNYFcxgftpuC9ofV1rRKTgm33/0irQ==
X-Received: by 2002:a05:6a20:914d:b0:334:8dd2:8377 with SMTP id adf61e73a8af0-3348dd283e5mr6041920637.26.1760593779633;
        Wed, 15 Oct 2025 22:49:39 -0700 (PDT)
Received: from hu-yuanfang-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7992d0e1336sm20657931b3a.59.2025.10.15.22.49.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Oct 2025 22:49:39 -0700 (PDT)
From: Yuanfang Zhang <yuanfang.zhang@oss.qualcomm.com>
Date: Wed, 15 Oct 2025 22:49:32 -0700
Subject: [PATCH v5 3/3] coresight-tnoc: Add runtime PM support for
 Interconnect TNOC
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251015-itnoc-v5-3-d7ca2b1cc6df@oss.qualcomm.com>
References: <20251015-itnoc-v5-0-d7ca2b1cc6df@oss.qualcomm.com>
In-Reply-To: <20251015-itnoc-v5-0-d7ca2b1cc6df@oss.qualcomm.com>
To: Suzuki K Poulose <suzuki.poulose@arm.com>,
        Mike Leach <mike.leach@linaro.org>,
        James Clark <james.clark@linaro.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Alexander Shishkin <alexander.shishkin@linux.intel.com>
Cc: kernel@oss.qualcomm.com, coresight@lists.linaro.org,
        linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Yuanfang Zhang <yuanfang.zhang@oss.qualcomm.com>,
        Leo Yan <leo.yan@arm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1760593774; l=1738;
 i=yuanfang.zhang@oss.qualcomm.com; s=20250814; h=from:subject:message-id;
 bh=/fUCilk7cQkDDYH/V2caZpg8zsP8hHAk09zzZjiZ0fA=;
 b=ajq5aJ5vu6EVUG4FtscuPxM+NeStMRmsybGkIGaPj8vR80rOniix1u/fRIWNP3dHNUfDaxzhq
 T4/39IC6fSfD/YQQkOgc/SVlH6t5CS+H9ew9BhhtWKwPbFgVl8+EvH2
X-Developer-Key: i=yuanfang.zhang@oss.qualcomm.com; a=ed25519;
 pk=9oS/FoPW5k0CsqSDDrPlnV+kVIOUaAe0O5pr4M1wHgY=
X-Proofpoint-ORIG-GUID: au2iK_mLMiQmNpAAtbhRlBDnqBqserMw
X-Authority-Analysis: v=2.4 cv=MrNfKmae c=1 sm=1 tr=0 ts=68f08775 cx=c_pps
 a=oF/VQ+ItUULfLr/lQ2/icg==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=7CQSdrXTAAAA:8 a=qearADheJa7ujHrKWl4A:9 a=QEXdDO2ut3YA:10
 a=3WC7DwWrALyhR5TkjVHa:22 a=a-qgeE7W1pNrGK8U0ZQC:22
X-Proofpoint-GUID: au2iK_mLMiQmNpAAtbhRlBDnqBqserMw
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDExMDAxOCBTYWx0ZWRfX+xRk3X3H1PAG
 7ulBNnqi7pDwbwlK/rmRr36K/EeTIl03LqHrbsl7xSutC3/BI4ubtY0HXXplQl+vnQUvay8tABR
 od15rgatp+qeVJ2ic57IWGqBpG1XXWmWLggU/q8gycY+QtR+rmYOf1VCi2l0vefIrWFqUCNue8m
 yzlxpKP8pFsGLEbTt05oEJdt2rdyfk3+33cg6ml0VEV+wVrr/UwqUX4BlilWmOdXUQGtOXtWLIp
 ZXPf3FakI0eNnmdlfxSVt/I2fvhaDC15n0Nt86CDZqGR/vVA4FZLVrXaygKIIENVteTDvUODe87
 siiYxpaHGxFNN/kj+4dzPkCiSSHk6DPlCHw4cc+8XXiUxGjZIRvw+/jCMzYiXp0E5jsIkA64jE6
 fY3xpKucoRbFHF3+MCeQM8CT4zU1aw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-15_07,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 bulkscore=0 clxscore=1015 adultscore=0 phishscore=0
 impostorscore=0 priorityscore=1501 malwarescore=0 lowpriorityscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2510020000
 definitions=main-2510110018

This patch adds runtime power management support for platform-based
CoreSight Interconnect TNOC (ITNOC) devices. It introduces suspend and
resume callbacks to manage the APB clock (`pclk`) during device runtime
transitions.

Signed-off-by: Yuanfang Zhang <yuanfang.zhang@oss.qualcomm.com>
Reviewed-by: Leo Yan <leo.yan@arm.com>
---
 drivers/hwtracing/coresight/coresight-tnoc.c | 23 +++++++++++++++++++++++
 1 file changed, 23 insertions(+)

diff --git a/drivers/hwtracing/coresight/coresight-tnoc.c b/drivers/hwtracing/coresight/coresight-tnoc.c
index 5be882300d79bc0173aa6a19d7da1d48c4aaca9c..2c5370497076536bfa868f0d80db775ef242968b 100644
--- a/drivers/hwtracing/coresight/coresight-tnoc.c
+++ b/drivers/hwtracing/coresight/coresight-tnoc.c
@@ -301,6 +301,28 @@ static void itnoc_remove(struct platform_device *pdev)
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
@@ -314,6 +336,7 @@ static struct platform_driver itnoc_driver = {
 		.name = "coresight-itnoc",
 		.of_match_table = itnoc_of_match,
 		.suppress_bind_attrs = true,
+		.pm = &itnoc_dev_pm_ops,
 	},
 };
 

-- 
2.34.1


