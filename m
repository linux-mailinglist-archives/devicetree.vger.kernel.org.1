Return-Path: <devicetree+bounces-173002-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 44265AA7341
	for <lists+devicetree@lfdr.de>; Fri,  2 May 2025 15:19:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 14F0A1BA266D
	for <lists+devicetree@lfdr.de>; Fri,  2 May 2025 13:19:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 61C42255233;
	Fri,  2 May 2025 13:18:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="fq2bSkYM"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0BC4255F5A
	for <devicetree@vger.kernel.org>; Fri,  2 May 2025 13:18:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746191908; cv=none; b=Kwry0mGX3nABIyvWEkY0vRcyHz6QR6gCFtfhFTIrlHE4FQk5xZAprtg+zkXc1tD1znGbegMST3uv7wkU213xAs42QD8GyFE+V70Mmy7ZBExGEtU67pL85bIca747RShia7G50KVl6SVRfHx5HG+3M2EOf0WApq5Ed5CZL9biGq0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746191908; c=relaxed/simple;
	bh=X/UXMHXf/RhMlrDKgR4/ge5TpOg8I3dflZnq+YhC0gg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=uWH8EFEd0vsTLD5GWGdrRZC2XP+VwTSdAJOtgfdNt12CyTuJbxSEjfqLV0+Vbo8XNgWjfNpe8Kc8Q3a7ecZS/lXAGMXgO8oVwUcnBMqf//pOAxk8UxFMtqo2wJhh3wtYQ+y81Vbby8HQwaKjBTklamAy3koo3qh5vw/Y3vkX5EA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=fq2bSkYM; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 542DBnkV001947
	for <devicetree@vger.kernel.org>; Fri, 2 May 2025 13:18:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	slRaTmGfvy9G5pnb2zsQsGNa8ozzrVBB4Ulmgs5zT0c=; b=fq2bSkYMyE5XOc2C
	sruvyiDJRJnK5lXHhgziF+2AWu7zpi4mlShNh+gsO/YM557etnfUgbqGMspxBePa
	71xcMskhUJRWwaBdYUvsiGWUj6duBmFwGs7iLhqTdkqa8Piwi5hA8IveD3bes7x4
	GRZ6GnuAZNx7C44hUnW0fKSSI0FNlM8U8Oa9TualmZj8herJ0NlZ7fpbtVYN/Orq
	856V/ciu02h84Xia1L9M4oV1gKhfEX8bwgZHMQ2+m5nPfX+Yv1wq/w6u3QJZOQJq
	Wvm6y2KcK4sJBfGtMxGyaiWDgpFJFErTcbco3GlkJ8tnAlTfVSuxhIMFn8uJOuz4
	HU3/mA==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46b6u78g78-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 02 May 2025 13:18:25 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-7395095a505so1635776b3a.1
        for <devicetree@vger.kernel.org>; Fri, 02 May 2025 06:18:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746191905; x=1746796705;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=slRaTmGfvy9G5pnb2zsQsGNa8ozzrVBB4Ulmgs5zT0c=;
        b=dfXAuPnqI6oC4G+AEH1ch8Y4LkBOV9Il90ljgE7NfjK8NvL91EW69dyuPaVHbfZEe5
         3Lk61ZpoecByAPWjkN9pkKQD5+pOdiAXtMRbV+bOzbMBq1jIir9OiUeC8HHBOpBLnSkb
         soaKwmxjvzCrYekjjcvNDUlR88rVMVgaB2ikC4JIcbGzBZD6EssIvjuVoHa3PvqQ2Wcx
         TPvwuKSpj7O2pvCzvbKeUbj3OEfNkUMZNKX2dAwlPtSVfy4yxGaWcwTwEtgw1ho4fPzy
         1tl1+sfcvHhvI1CvbGoXU0EnO/xu0sXv9PyF44M54vBbGpqII4OwAj22vSBbXv0BCq7S
         eAkg==
X-Forwarded-Encrypted: i=1; AJvYcCU+5N+A+qn0ePRZJ0bXCRpSRdTFiycF42Ia3mkgNI9xy46l/FA3ksW1BMWESzthtYNx8k9YQ5UPFXnr@vger.kernel.org
X-Gm-Message-State: AOJu0YzZadPvjPsEryPro6Fex1io3Exo95mDNTn0OhCxGZQ48P5w/sIw
	x6iOj/MThTXZjelRgy7LcblydsrZKp0YeVX65GKbUfg03JJqilM9YCCcG9BB8bAmlGHbtednhg+
	xEcu5lQD30PFyc4hIVOJptFFaFCZKgQc6R9r+RSQSFhTx5Cc5y1+CQJWfNJwn
X-Gm-Gg: ASbGncuxas6SgzqT+1zvvEMDZMbkuBUWz1r+A065n0RshS+cvtp5wcvMFHTv1HU4TXW
	3NqN4BKEPOEWpDtpo7l01bnTbg83FbghuGu4vbz/FMVmB/ZpU/hSe+ZwBtr71KOztXJCrvOwazi
	iEqSa5ntel9/gau6nH/mmYuPpISnSkzqw6U/o8vptqKmwoMthReEEp2Ia/iiNV2seU6E7htHjej
	92FGsTE9h+SQ6mclT22Ejk653T3VMzXR49QZtepsOkWQXxrRzLTeVUrwAr9uu2uAzYwufmk1nHi
	MUQMjN8//wYsKPorbwxBkKmLglX0H4pFPYp9na74lUMvYuDFRcfINfgNDSK7DLmXMZqCNVWAJ1s
	2PIvZymbGUfeCDS96KG88IdnMXqNhL+rz1Odltftqpp5IqIw=
X-Received: by 2002:a05:6a21:a4c1:b0:1f5:7d57:8309 with SMTP id adf61e73a8af0-20cded42f75mr4269938637.21.1746191905024;
        Fri, 02 May 2025 06:18:25 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHIFfSud8d4mhQtZmSV13r5D5SAuSAGajEnvH4vksJceLIMOcleS8DtsqVRRObuGzRFbXdvnQ==
X-Received: by 2002:a05:6a21:a4c1:b0:1f5:7d57:8309 with SMTP id adf61e73a8af0-20cded42f75mr4269912637.21.1746191904673;
        Fri, 02 May 2025 06:18:24 -0700 (PDT)
Received: from hu-kathirav-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-74058dbb939sm1525886b3a.61.2025.05.02.06.18.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 02 May 2025 06:18:24 -0700 (PDT)
From: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
Date: Fri, 02 May 2025 18:47:52 +0530
Subject: [PATCH v3 4/4] watchdog: qcom: add support to read the restart
 reason from IMEM
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250502-wdt_reset_reason-v3-4-b2dc7ace38ca@oss.qualcomm.com>
References: <20250502-wdt_reset_reason-v3-0-b2dc7ace38ca@oss.qualcomm.com>
In-Reply-To: <20250502-wdt_reset_reason-v3-0-b2dc7ace38ca@oss.qualcomm.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Wim Van Sebroeck <wim@linux-watchdog.org>,
        Guenter Roeck <linux@roeck-us.net>, bod.linux@nxsw.ie
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-watchdog@vger.kernel.org,
        Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1746191883; l=3927;
 i=kathiravan.thirumoorthy@oss.qualcomm.com; s=20230906;
 h=from:subject:message-id; bh=X/UXMHXf/RhMlrDKgR4/ge5TpOg8I3dflZnq+YhC0gg=;
 b=mat02aZTLGdQNdCaBVC5tsHJnRdKr/A8cgsxGVrffovzn5TYZj1m196gCiS+pmpV/7Lm7akLK
 +6a9BrRnogFCzDFNO43HFJOq6dSKkWmVH1Tx5Pl8FAlmjil6oY1ehtD
X-Developer-Key: i=kathiravan.thirumoorthy@oss.qualcomm.com; a=ed25519;
 pk=xWsR7pL6ch+vdZ9MoFGEaP61JUaRf0XaZYWztbQsIiM=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTAyMDEwNSBTYWx0ZWRfX5NjW8OCswfQv eYnaGFPBtOg1UXFW4Jkxg+Wxz9OkIja/zFZb4CmuC6Gw7/EAe7G7p7jTxcoC7EEuOQuVqjxjBjz i4+tNaNMqNMwsON88cE0gxSPTFk23cHtfG/sqWsQU41cczF71q7UcDl1U6YMkk63lfLIV/RPNcA
 7PVeB4bLoiuR8dD5Lle8aaSt7AoLQuyjK77srTBbz+Ffxx68SHL9I+0EwKDsqUJe9S/0ucDhiPF wzh5RHNoN0n7rtNFfC2gZiCO8/OOKRA+RdcQkHP55g1N4PNOh+06s7v/5Napp+TgS3fqqO/DRHG TXPm5vu0pAd1/ZUjnnGX0wrevGkVBHfISSMMAjpDvN6LdAqQFwa9X2X7uO0lHsJrf6YxRKKNJrP
 FmMDVslyvQTgsBMWGOcI8RQnQ11MzkRdYx7QJhpXuh4eRxvkUzdi7ntk4PVfFIVeSlNWg2aK
X-Proofpoint-GUID: HdVqpg685755FUSF7i5vLH-zjE78n-m9
X-Authority-Analysis: v=2.4 cv=W404VQWk c=1 sm=1 tr=0 ts=6814c621 cx=c_pps a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=EUspDBNiAAAA:8 a=sQLmF_3sjJ1lx0YqgBUA:9 a=QEXdDO2ut3YA:10
 a=zc0IvFSfCIW2DFIPzwfm:22
X-Proofpoint-ORIG-GUID: HdVqpg685755FUSF7i5vLH-zjE78n-m9
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-02_01,2025-04-30_01,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0
 lowpriorityscore=0 priorityscore=1501 mlxscore=0 bulkscore=0 spamscore=0
 clxscore=1015 phishscore=0 impostorscore=0 mlxlogscore=999 malwarescore=0
 suspectscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2505020105

When the system boots up after a watchdog reset, the EXPIRED_STATUS bit
in the WDT_STS register is cleared. To identify if the system was
restarted due to WDT expiry, XBL update the information in the IMEM region.
Update the driver to read the restart reason from IMEM and populate the
bootstatus accordingly.

With the CONFIG_WATCHDOG_SYSFS enabled, user can extract the information
as below:

cat /sys/devices/platform/soc@0/f410000.watchdog/watchdog/watchdog0/bootstatus
32

For backward compatibility, keep the EXPIRED_STATUS bit check. Add a new
function qcom_wdt_get_restart_reason() to read the restart reason from
IMEM.

Signed-off-by: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
---
Changes in v3:
	- Split the introduction of device data into separate patch
	- s/bootloaders/XBL - for clarity of which bootloader is
	  involved
	- Mention the sysfs path on to extract this information
	- s/compatible/imem_compatible in the device data structure to
	  avoid the confusion / better naming
Changes in v2:
	- Use the syscon API to access the IMEM region
	- Handle the error cases returned by qcom_wdt_get_restart_reason
	- Define device specific data to retrieve the IMEM compatible,
	  offset and the value for non secure WDT, which allows to
	  extend the support for other SoCs
---
 drivers/watchdog/qcom-wdt.c | 40 ++++++++++++++++++++++++++++++++++++++--
 1 file changed, 38 insertions(+), 2 deletions(-)

diff --git a/drivers/watchdog/qcom-wdt.c b/drivers/watchdog/qcom-wdt.c
index dfaac5995c84c1f377023e6e62770c5548528a4c..f2cb8bfdf53a5090bcfff6ea3a23005b629ef948 100644
--- a/drivers/watchdog/qcom-wdt.c
+++ b/drivers/watchdog/qcom-wdt.c
@@ -7,9 +7,11 @@
 #include <linux/interrupt.h>
 #include <linux/io.h>
 #include <linux/kernel.h>
+#include <linux/mfd/syscon.h>
 #include <linux/module.h>
 #include <linux/of.h>
 #include <linux/platform_device.h>
+#include <linux/regmap.h>
 #include <linux/watchdog.h>
 
 enum wdt_reg {
@@ -42,6 +44,9 @@ struct qcom_wdt_match_data {
 	const u32 *offset;
 	bool pretimeout;
 	u32 max_tick_count;
+	const char *imem_compatible;
+	unsigned int restart_reason_offset;
+	unsigned int non_secure_wdt_val;
 };
 
 struct qcom_wdt {
@@ -185,6 +190,9 @@ static const struct qcom_wdt_match_data match_data_ipq5424 = {
 	.offset = reg_offset_data_kpss,
 	.pretimeout = true,
 	.max_tick_count = 0xFFFFFU,
+	.imem_compatible = "qcom,ipq5424-imem",
+	.restart_reason_offset = 0x7b0,
+	.non_secure_wdt_val = 0x5,
 };
 
 static const struct qcom_wdt_match_data match_data_kpss = {
@@ -193,6 +201,29 @@ static const struct qcom_wdt_match_data match_data_kpss = {
 	.max_tick_count = 0xFFFFFU,
 };
 
+static int  qcom_wdt_get_restart_reason(struct qcom_wdt *wdt,
+					const struct qcom_wdt_match_data *data)
+{
+	struct regmap *imem;
+	unsigned int val;
+	int ret;
+
+	imem = syscon_regmap_lookup_by_compatible(data->imem_compatible);
+	if (IS_ERR(imem))
+		return PTR_ERR(imem);
+
+	ret = regmap_read(imem, data->restart_reason_offset, &val);
+	if (ret) {
+		dev_err(wdt->wdd.parent, "failed to read the restart reason info\n");
+		return ret;
+	}
+
+	if (val == data->non_secure_wdt_val)
+		wdt->wdd.bootstatus = WDIOF_CARDRESET;
+
+	return 0;
+}
+
 static int qcom_wdt_probe(struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
@@ -273,8 +304,13 @@ static int qcom_wdt_probe(struct platform_device *pdev)
 	wdt->wdd.parent = dev;
 	wdt->layout = data->offset;
 
-	if (readl(wdt_addr(wdt, WDT_STS)) & 1)
-		wdt->wdd.bootstatus = WDIOF_CARDRESET;
+	ret = qcom_wdt_get_restart_reason(wdt, data);
+	if (ret == -ENODEV) {
+		if (readl(wdt_addr(wdt, WDT_STS)) & 1)
+			wdt->wdd.bootstatus = WDIOF_CARDRESET;
+	} else if (ret) {
+		return ret;
+	}
 
 	/*
 	 * If 'timeout-sec' unspecified in devicetree, assume a 30 second

-- 
2.34.1


