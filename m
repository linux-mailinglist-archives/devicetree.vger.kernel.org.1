Return-Path: <devicetree+bounces-199716-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F7ECB11BF1
	for <lists+devicetree@lfdr.de>; Fri, 25 Jul 2025 12:14:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 49DC7AE30E1
	for <lists+devicetree@lfdr.de>; Fri, 25 Jul 2025 10:13:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2FD002EE260;
	Fri, 25 Jul 2025 10:09:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="dDGqPA26"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67CA92ED860
	for <devicetree@vger.kernel.org>; Fri, 25 Jul 2025 10:09:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753438144; cv=none; b=iuSxysYe2eTrIfqwKOe2RTYQGwlppb1BcoE2rU5rSvWZbKYdB/Z3vOwvA2ZH4yZEVn7YgAD6ihd/L8Eqrd9NUm7lZNO0gqQQ3yk+jRvuRZk8cvzb2bg601GKlQnU/aIpzmU+/BZ/iejjg8cwE4XIGB2Vi2HA5eeBAd0XDkZz8yY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753438144; c=relaxed/simple;
	bh=fAvEZEfnC0duLlCPJAnL8vIZOsPr1irgS62lUUcRRg0=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=ONST30qLG52N06oQKcstpAraq5ZpamVtfa6EO0mMhI8jfcmFjjMKGJXUgsMvsrDpWBwaXcMs92Lu6+3VLH1K24U5uKDDmMysrsXVqopf07pgPEqGFb6soP5QxtBSHLJObSZ3/B8hkvVh2PRAaG5KAnsAApqaMh+lZt/BHAC5vfQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=dDGqPA26; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56P88i8Q008702
	for <devicetree@vger.kernel.org>; Fri, 25 Jul 2025 10:09:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=DhH78wvVJne
	tmIHm7XhAnpQBOngftYw35LXwtkDO8nI=; b=dDGqPA264qfjWe05++5irJPMsf7
	/7H0+Xmci3J3XTMBFvqsFXljfhVWyOdvyhJ0WLZbQ0Qoq58CHXIJUu1mtlBI5TJA
	TkZIgX3fqVQencKXO9IvnkLswiwohQc8O5eEq9R6Ax8VYQdllqh4Bs+dQ0mOnijY
	My3IBJgTXwOSYDOvHwrTMU2e9Ivh3zqAVoqZ6xFAhPHQBaFH6oW2m7GTYwKiUS7G
	R+8RU7IEEhtn/ove6BE9cySDHd3Os96zPVB+NokU5+u/loxQh8Y2eo4PUzhOYYOq
	91rZEUeuDandHHsZJZZaHNzEZUAMNx4Uy7c60lIJYZ1j1hnSXOn/Qrv+C8w==
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com [209.85.215.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4846590b1w-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 25 Jul 2025 10:09:01 +0000 (GMT)
Received: by mail-pg1-f200.google.com with SMTP id 41be03b00d2f7-b31bd4c3359so1269283a12.3
        for <devicetree@vger.kernel.org>; Fri, 25 Jul 2025 03:09:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753438135; x=1754042935;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DhH78wvVJnetmIHm7XhAnpQBOngftYw35LXwtkDO8nI=;
        b=Eir81FSZWaKqLjAHcgQljyp8+10wfA1iaCa7+dg2tDaYAktPwn/leVv9r4bnpJGKo2
         lCXMHJwbkj2A3/z0nQSLRLYaEuhVrlXSWFUnDKZRzfvPmHwqv07bC5foKxka/O+h2JSW
         EyHuqLqv7VRBdcJ8OgZnxb2CKDqbp1crVDrS9HRGn0GExeiMc6JbeMudXuz15GRnmF8P
         XkeQK9U5hy8C3zzEKysQtTBOcDyRgvuyrfZ1iBKOwr6DIUylmti5LlKdaRRFropnySm+
         pgRIHSts/TZN8YJbAP1ebnl/ZNlW/zowsX34n1dVOUkWiDYZEl+wJNCWU+b+TVYfkOol
         dJUw==
X-Forwarded-Encrypted: i=1; AJvYcCU2jqxHB9O+/mQW08N3WFKel7oyy3rWkhKeh3cedxtD2kONOlr1CT0tRBl2XYfhvw9pI786LtFdsaQM@vger.kernel.org
X-Gm-Message-State: AOJu0YyxeCJq6OAiO/JzkKZ2VntoV2Kyg7y8+EerjvhbfgV0NWiETv66
	5aBZMFFl76ZyGBDF8BUFfPXIcDp7M8dv8djxo/3CeLO6kfRxroe+mHgTlfniDOKbLPBdVn0uY7m
	NiYfDYu61RNZBGdohGOtmEdaMKRZgDpr4N7pT4EAxvLZyliAbI5H5RG+z+YVcZi0E
X-Gm-Gg: ASbGncsRNAI5+COSQoKGgbCbO4LLQFsm+1wsjByF0H7z1ZExu70R0i2w5UscNhyjY3K
	e6XGWJjgVKFs26nOfJ5v0HPV9z83yXCzA9QlrkWdphsBk1A+WppO0ki5zOyuWKY+rDjySQ12+wX
	hd3TOcbpbbIbBZmFCfft2+iu2R4Ha4+MRgL64NxLIvV0z+opNVM6lTlQhsX+j5HGnnlydFtNQv5
	XFZF3ukcpVqM+R+RZVxYwYoUHfJb222TXixZaHaEpvKBmHyo04m9bstHVbGdZ5KzV4mqLqhhLYT
	+by6nnbo4RsjcYZSFuICBmLS2dnOEFtFKjLBa0JqUwwcDOwdNO50Z+imSIwMEDz+YJI/FK+iAIx
	lJ803JuZk50jyGWj41AU=
X-Received: by 2002:a17:902:da48:b0:237:ec18:ead7 with SMTP id d9443c01a7336-23fb31252c5mr25666945ad.24.1753438134634;
        Fri, 25 Jul 2025 03:08:54 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFemnJCAQcuNiBKQLUNas6+SmLXLoOyi8PGRh2U3ofwYuo4JSUJBC494RK9BYtmkiq21Zv5ig==
X-Received: by 2002:a17:902:da48:b0:237:ec18:ead7 with SMTP id d9443c01a7336-23fb31252c5mr25666385ad.24.1753438134050;
        Fri, 25 Jul 2025 03:08:54 -0700 (PDT)
Received: from jiegan.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-23fa48fd29dsm33641435ad.176.2025.07.25.03.08.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Jul 2025 03:08:53 -0700 (PDT)
From: Jie Gan <jie.gan@oss.qualcomm.com>
To: Suzuki K Poulose <suzuki.poulose@arm.com>,
        Mike Leach <mike.leach@linaro.org>,
        James Clark <james.clark@linaro.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Alexander Shishkin <alexander.shishkin@linux.intel.com>,
        Tingwei Zhang <tingwei.zhang@oss.qualcomm.com>,
        Jinlong Mao <jinlong.mao@oss.qualcomm.com>
Cc: coresight@lists.linaro.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, Jie Gan <quic_jiegan@quicinc.com>
Subject: [PATCH v4 09/10] coresight: tmc: integrate byte-cntr's read_ops with sysfs file_ops
Date: Fri, 25 Jul 2025 18:08:05 +0800
Message-Id: <20250725100806.1157-10-jie.gan@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250725100806.1157-1-jie.gan@oss.qualcomm.com>
References: <20250725100806.1157-1-jie.gan@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: S3VNM0P3Z0LMxJFBtV5UIWW0poRkJ3wu
X-Proofpoint-GUID: S3VNM0P3Z0LMxJFBtV5UIWW0poRkJ3wu
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzI1MDA4NiBTYWx0ZWRfX12QV6RAOTenY
 7mL82wE2BVCZPocDFfutiAQXlpA2FByXoF6yXHkHOkUvPn2iZbYFxjHV22dK12JUXbNlH7hGNJ8
 ujR1p6+D2SLSvtWT6vc7hi9uKjyx2U4EpEgukG+SHi20IS3RLgzYdviv3mYZSCfqyvB3BV1DS3G
 i0Piuvwn3WrhG+W6XgNMkNIwXsEXG73bAD0wIuKmrQjA1YZBcIlTya2CJ2pIqJFXakb/UyrjDqo
 hbUksGSMydbSrRtffPl4xFkg6u1w/N3XzjssZgRKwVBnNAwPHAt9gJOz6P9AZTWTcWmxR0QVATZ
 OgIPn9g7NATkHR01gKj8ySG7vrPzlAcuAsH7GEj5Qh0aborTjaUe/pDwK1T40k9t0e+J0uPoXEB
 0yVeagFx7G7S1VQXK6CTPT8RPEgi/wKvjJZjUYSeLYAjMcgs4qkJBPzFTJngOhY7qVD6J9RH
X-Authority-Analysis: v=2.4 cv=Vo8jA/2n c=1 sm=1 tr=0 ts=688357bd cx=c_pps
 a=oF/VQ+ItUULfLr/lQ2/icg==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=Zpm-vmsZ5HaS-asNi4kA:9
 a=3WC7DwWrALyhR5TkjVHa:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-25_03,2025-07-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxscore=0 mlxlogscore=999 adultscore=0 impostorscore=0 suspectscore=0
 phishscore=0 spamscore=0 clxscore=1015 bulkscore=0 priorityscore=1501
 lowpriorityscore=0 malwarescore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507250086

Add code logic to invoke byte-cntr's read_ops if the byte-cntr
is enabled.

Signed-off-by: Jie Gan <jie.gan@oss.qualcomm.com>
---
 .../hwtracing/coresight/coresight-tmc-core.c  | 48 ++++++++++++++++++-
 1 file changed, 47 insertions(+), 1 deletion(-)

diff --git a/drivers/hwtracing/coresight/coresight-tmc-core.c b/drivers/hwtracing/coresight/coresight-tmc-core.c
index f668047c5df4..671ae4542f6a 100644
--- a/drivers/hwtracing/coresight/coresight-tmc-core.c
+++ b/drivers/hwtracing/coresight/coresight-tmc-core.c
@@ -228,15 +228,41 @@ static int tmc_prepare_crashdata(struct tmc_drvdata *drvdata)
 	return 0;
 }
 
+static const struct tmc_read_ops *tmc_qcom_byte_cntr_in_use(struct tmc_drvdata *drvdata,
+							    bool *in_use)
+{
+	struct tmc_read_ops *byte_cntr_read_ops;
+	struct coresight_device *helper;
+
+	helper = coresight_get_helper(drvdata->csdev, CORESIGHT_DEV_SUBTYPE_HELPER_CTCU);
+	if (helper)
+		*in_use = helper_ops(helper)->qcom_byte_cntr_in_use(drvdata->csdev,
+								    (void **)&byte_cntr_read_ops);
+
+	if (*in_use)
+		return byte_cntr_read_ops;
+
+	return NULL;
+}
+
 static int tmc_read_prepare(struct tmc_drvdata *drvdata)
 {
+	const struct tmc_read_ops *byte_cntr_read_ops;
+	bool in_use = false;
 	int ret = 0;
 
+	byte_cntr_read_ops = tmc_qcom_byte_cntr_in_use(drvdata, &in_use);
+	if (in_use) {
+		ret = byte_cntr_read_ops->read_prepare(drvdata);
+		goto out;
+	}
+
 	if (drvdata->read_ops)
 		ret = drvdata->read_ops->read_prepare(drvdata);
 	else
 		ret = -EINVAL;
 
+out:
 	if (!ret)
 		dev_dbg(&drvdata->csdev->dev, "TMC read start\n");
 
@@ -245,13 +271,22 @@ static int tmc_read_prepare(struct tmc_drvdata *drvdata)
 
 static int tmc_read_unprepare(struct tmc_drvdata *drvdata)
 {
+	const struct tmc_read_ops *byte_cntr_read_ops;
+	bool in_use = false;
 	int ret = 0;
 
+	byte_cntr_read_ops = tmc_qcom_byte_cntr_in_use(drvdata, &in_use);
+	if (in_use) {
+		ret = byte_cntr_read_ops->read_unprepare(drvdata);
+		goto out;
+	}
+
 	if (drvdata->read_ops)
 		ret = drvdata->read_ops->read_unprepare(drvdata);
 	else
 		ret = -EINVAL;
 
+out:
 	if (!ret)
 		dev_dbg(&drvdata->csdev->dev, "TMC read end\n");
 
@@ -277,6 +312,13 @@ static int tmc_open(struct inode *inode, struct file *file)
 static ssize_t tmc_get_sysfs_trace(struct tmc_drvdata *drvdata, loff_t pos, size_t len,
 				   char **bufpp)
 {
+	const struct tmc_read_ops *byte_cntr_read_ops;
+	bool in_use = false;
+
+	byte_cntr_read_ops = tmc_qcom_byte_cntr_in_use(drvdata, &in_use);
+	if (in_use)
+		return byte_cntr_read_ops->get_trace_data(drvdata, pos, len, bufpp);
+
 	if (drvdata->read_ops)
 		return drvdata->read_ops->get_trace_data(drvdata, pos, len, bufpp);
 
@@ -300,7 +342,11 @@ static ssize_t tmc_read(struct file *file, char __user *data, size_t len,
 		return -EFAULT;
 	}
 
-	*ppos += actual;
+	if (drvdata->reading_node)
+		drvdata->reading_node->pos += actual;
+	else
+		*ppos += actual;
+
 	dev_dbg(&drvdata->csdev->dev, "%zu bytes copied\n", actual);
 
 	return actual;
-- 
2.34.1


