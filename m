Return-Path: <devicetree+bounces-167659-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 027B0A8B3DF
	for <lists+devicetree@lfdr.de>; Wed, 16 Apr 2025 10:30:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 57C621885146
	for <lists+devicetree@lfdr.de>; Wed, 16 Apr 2025 08:30:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F27AE235342;
	Wed, 16 Apr 2025 08:29:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="T0zPaJlI"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C3F92309A7
	for <devicetree@vger.kernel.org>; Wed, 16 Apr 2025 08:29:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744792190; cv=none; b=k6PgZ3ezWbA3jj8lMUcdUWCu0oZPGRfm3sZfnjxLJqQv+YnkUEfPltPs8XNKkd/DZPSMGPN0c6GPKUKQz678iti+AXGTa6BuCDFh7X+RgVeyRFqRRZolrrIBIGNv6VqmrOsCubdOxCUOZ1hwAzl2aSMUD7X8Vw9jtZh0CakE4BM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744792190; c=relaxed/simple;
	bh=ytjddDlDLQ/8ZhINpkiVdnU51G61thVjIytF6cPUlJ0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=suOyqOKY0Ds4JManPfQtgZl14aUzpOclCAcJTiKDjB+JOtLKEV5B8J+dZS5xinp+PITBFA4OfClZ1eTYvhZhsJqa6KZef9YL56/ndOGv6f4gt2AVVCSHGvSlrYQNz4k7yuEAjARg7bZdqSO0yI6FYgKPn7iDyQBH8/QxZIWeKh0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=T0zPaJlI; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53G7JpYw022430
	for <devicetree@vger.kernel.org>; Wed, 16 Apr 2025 08:29:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	MKA+11KQqfheT7Wz2GDi7n8Q3oKUBzTXAExifnDWoKM=; b=T0zPaJlI78mzRMpq
	xUq2D2j8RVHyeB/Omaq9kpAL43SYDXRK0E7GqrREMgn3v4BC9ww3yKyDAeEbbkSn
	94QkDx1WsTuCbOH2dYySLgHL/hEi3K6rFiqXbe7z9a4c+OiX9m2LiuHt02NSM95i
	JHzSF/CWndsLlXZxu/LD/c7iaediCoR0DT3lmxdG3r0lNKzNHra89x0E+oJADCSm
	LgvPlXRI3no789EfJeC04tivJmAzbqNSHjr18jlgDOcVr1Mn+E/kAad76GFbzdBb
	nGM93yoZqalvd1aP+QunJ4AYZmu/71dHFszDtnKAUmbAuDd25HcUIygx/Jou29xd
	0lrGmA==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45yfgjjt13-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 16 Apr 2025 08:29:48 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-22aa75e6653so50865625ad.0
        for <devicetree@vger.kernel.org>; Wed, 16 Apr 2025 01:29:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744792186; x=1745396986;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MKA+11KQqfheT7Wz2GDi7n8Q3oKUBzTXAExifnDWoKM=;
        b=DatRHJOzBYvlQdCglN5X0AAeCNptTeH9PUom7OJIQMmtpXx+3ENTv9Vua4Txe7K1uQ
         kvH36cK/9uMUiEJuCIBTK2HeXB7AWjweiLZ8JGQR63G8g1a3vd8eYED803ccgf2xkwVh
         2NYKYhJjKTMIyYWt72iU9B/64JRQ3o6pywBTRImjovF86yEH2zoHBzUm2qBu/fcgi6Er
         VArbdrcQUibmB+2O/j766/ATgg7SeRfMJZZITGOGoloOvIfNFHVRgsoDG7qCoZhZHFRv
         7p12A/1VXwvoRIDgApvzNDFGkJJYlihmDwZUuyai9fhGp82F7vTuuoR6uAQp9cHT6Cku
         kAjw==
X-Forwarded-Encrypted: i=1; AJvYcCXq2USEXLAu3e5E5LSf6WTBbU4hgXsIa2xifQluhLyPO8HLFdfyqYISo3Wew3Dl32ghtCMyDMcE6fir@vger.kernel.org
X-Gm-Message-State: AOJu0YxXMrfDpKzninwZJNEeNT0xoOq1jELyQfB/DmtlnxNthel2tNaU
	n2OC4K7JYkST4AMOWOLy+ubzJ7btQnChhRsa/9bTmnhXTYw8XjykO9cXkGGYJOQhrVmmpiWdnbF
	BjXA1T7EYVz/a/VkKh0cqbIem5JLUstmF0I/Fm7APy0c2DmJsTBaqjsmw4WPBGh9RNqvp
X-Gm-Gg: ASbGnctXHtKNRz6g0IxRRz22jkQVV84mo0fEqltS4lMHcNEfQ3FzABHJRebgxyg4+nR
	W5m10ufF06DbXF0SX7Se8V1j3YD7UCeDujnURdXAu6OEcbXR3Qz7meCKPjhiC1rXEnRwQVdUXRB
	OA9gbVpUalzNpq05bVXM5tGQYhYbLRZWz+JntdoiU3WLCKRBqc76iOMkgfBQL9PF/KaagUpticJ
	5broBsGHmeQTWfnr79lj1NI4YMLGwwkAZflYnvq8WQcfO00nT99zEZ6OWGCwlIUjmU/D+BK8axV
	unB0QpldCwT01Sk6COCGKzKvwTegjbDUurtfy70o18RJMjmS1pI2/W+nEWircoiqmaXrBsXsHRr
	5irX+9BB7pdSGdE1C+POd1u8/E+VyS8KgmDXSCseCLulC6Qo=
X-Received: by 2002:a17:902:da83:b0:223:f9a4:3f9c with SMTP id d9443c01a7336-22c358bbdf9mr14514815ad.9.1744792186474;
        Wed, 16 Apr 2025 01:29:46 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG3pcMt5U1EN7FCjKKhJyIT50U/IIjw5E3rMWpOM0wSmt5tTi5CGBcwl+plKMdCq100w+nt1g==
X-Received: by 2002:a17:902:da83:b0:223:f9a4:3f9c with SMTP id d9443c01a7336-22c358bbdf9mr14514575ad.9.1744792186045;
        Wed, 16 Apr 2025 01:29:46 -0700 (PDT)
Received: from hu-kathirav-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-22c33fcee11sm8340125ad.191.2025.04.16.01.29.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Apr 2025 01:29:45 -0700 (PDT)
From: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
Date: Wed, 16 Apr 2025 13:59:22 +0530
Subject: [PATCH v2 5/5] watchdog: qcom: add support to read the restart
 reason from IMEM
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250416-wdt_reset_reason-v2-5-c65bba312914@oss.qualcomm.com>
References: <20250416-wdt_reset_reason-v2-0-c65bba312914@oss.qualcomm.com>
In-Reply-To: <20250416-wdt_reset_reason-v2-0-c65bba312914@oss.qualcomm.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Wim Van Sebroeck <wim@linux-watchdog.org>,
        Guenter Roeck <linux@roeck-us.net>,
        Rajendra Nayak <quic_rjendra@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-watchdog@vger.kernel.org,
        Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1744792162; l=4047;
 i=kathiravan.thirumoorthy@oss.qualcomm.com; s=20230906;
 h=from:subject:message-id; bh=ytjddDlDLQ/8ZhINpkiVdnU51G61thVjIytF6cPUlJ0=;
 b=CQWcBTVynagdFkbqMrTFg6GZJlZnsJ34H8F1ZalZ6w/ATArdt5JN7t58rbtwnn1bZQTLOSlUX
 Y3EIlsYDicDDEWHuvPUAXe2tbVDIhKADp90LT/XPc6p7NoFSfUORP84
X-Developer-Key: i=kathiravan.thirumoorthy@oss.qualcomm.com; a=ed25519;
 pk=xWsR7pL6ch+vdZ9MoFGEaP61JUaRf0XaZYWztbQsIiM=
X-Proofpoint-GUID: godFPeo1_9vTf66CRaB_fkxjBjhE5c38
X-Proofpoint-ORIG-GUID: godFPeo1_9vTf66CRaB_fkxjBjhE5c38
X-Authority-Analysis: v=2.4 cv=Cve/cm4D c=1 sm=1 tr=0 ts=67ff6a7c cx=c_pps a=cmESyDAEBpBGqyK7t0alAg==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=EUspDBNiAAAA:8 a=k9rVL4j6ehUBw9fbeBUA:9 a=QEXdDO2ut3YA:10
 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-16_03,2025-04-15_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0 clxscore=1015
 malwarescore=0 lowpriorityscore=0 bulkscore=0 spamscore=0 phishscore=0
 suspectscore=0 impostorscore=0 mlxlogscore=999 mlxscore=0
 priorityscore=1501 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504160068

When the system boots up after a watchdog reset, the EXPIRED_STATUS bit
in the WDT_STS register is cleared. To identify if the system was restarted
due to WDT expiry, bootloaders update the information in the IMEM region.
Update the driver to read the restart reason from IMEM and populate the
bootstatus accordingly.

For backward compatibility, keep the EXPIRED_STATUS bit check. Add a new
function qcom_wdt_get_restart_reason() to read the restart reason from
IMEM.

Signed-off-by: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
---
Changes in v2:
	- Use the syscon API to access the IMEM region
	- Handle the error cases returned by qcom_wdt_get_restart_reason
	- Define device specific data to retrieve the IMEM compatible,
	  offset and the value for non secure WDT, which allows to
	  extend the support for other SoCs
---
 drivers/watchdog/qcom-wdt.c | 47 +++++++++++++++++++++++++++++++++++++++++++--
 1 file changed, 45 insertions(+), 2 deletions(-)

diff --git a/drivers/watchdog/qcom-wdt.c b/drivers/watchdog/qcom-wdt.c
index 006f9c61aa64fd2b4ee9db493aeb54c8fafac818..94ba9ec9907a19854cd45a94f8da17d6e6eb33bc 100644
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
@@ -39,6 +41,9 @@ static const u32 reg_offset_data_kpss[] = {
 };
 
 struct qcom_wdt_match_data {
+	const char *compatible;
+	unsigned int restart_reason_offset;
+	unsigned int non_secure_wdt_val;
 	const u32 *offset;
 	bool pretimeout;
 	u32 max_tick_count;
@@ -175,6 +180,15 @@ static const struct watchdog_info qcom_wdt_pt_info = {
 	.identity	= KBUILD_MODNAME,
 };
 
+static const struct qcom_wdt_match_data match_data_ipq5424 = {
+	.compatible = "qcom,ipq5424-imem",
+	.restart_reason_offset = 0x7b0,
+	.non_secure_wdt_val = 0x5,
+	.offset = reg_offset_data_kpss,
+	.pretimeout = true,
+	.max_tick_count = 0xFFFFFU,
+};
+
 static const struct qcom_wdt_match_data match_data_apcs_tmr = {
 	.offset = reg_offset_data_apcs_tmr,
 	.pretimeout = false,
@@ -187,6 +201,29 @@ static const struct qcom_wdt_match_data match_data_kpss = {
 	.max_tick_count = 0xFFFFFU,
 };
 
+static int  qcom_wdt_get_restart_reason(struct qcom_wdt *wdt,
+					const struct qcom_wdt_match_data *data)
+{
+	struct regmap *imem;
+	unsigned int val;
+	int ret;
+
+	imem = syscon_regmap_lookup_by_compatible(data->compatible);
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
@@ -267,8 +304,13 @@ static int qcom_wdt_probe(struct platform_device *pdev)
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
@@ -322,6 +364,7 @@ static const struct dev_pm_ops qcom_wdt_pm_ops = {
 };
 
 static const struct of_device_id qcom_wdt_of_table[] = {
+	{ .compatible = "qcom,apss-wdt-ipq5424", .data = &match_data_ipq5424 },
 	{ .compatible = "qcom,kpss-timer", .data = &match_data_apcs_tmr },
 	{ .compatible = "qcom,scss-timer", .data = &match_data_apcs_tmr },
 	{ .compatible = "qcom,kpss-wdt", .data = &match_data_kpss },

-- 
2.34.1


