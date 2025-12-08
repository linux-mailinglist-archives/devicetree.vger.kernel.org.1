Return-Path: <devicetree+bounces-245177-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D0E1ECAD2D7
	for <lists+devicetree@lfdr.de>; Mon, 08 Dec 2025 13:40:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A91273003059
	for <lists+devicetree@lfdr.de>; Mon,  8 Dec 2025 12:40:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6E7A3313E14;
	Mon,  8 Dec 2025 12:40:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="V4A/s84Z";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="VjMQ1uhg"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E77BE312816
	for <devicetree@vger.kernel.org>; Mon,  8 Dec 2025 12:40:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765197604; cv=none; b=g8d3FUvj5OF9jzzmFnVZhMVoAi1ZUXjunxMxwT1gdKcva10r6orWsH8DjL4qUb1/M/VxcJ+gK/n/mmnHe+yv5FnkEU8momD9sOcg7p27NmF0jXvwRlq3eXFEKSwT5v13pZfz7UR72zyX52kSDLTkLga94o2hSnf+ov9yv+uVPT0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765197604; c=relaxed/simple;
	bh=pnSQRgTAcT4d/8xmiBgrRJu6er1Xy3AhKk+QhB5IefA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=iWEaB+dUSEs5LowoGx5HJ9FBHQg0TAvNWZETlwPHnVyWVeENHNPIzCGmCFkQH4JFoJ6DEMFegSMtGQibd6dr4CI4/hKFj0Oo9uG4EriRP8L203+8lpaf8CR8FvLspFP5YfOwPFIZC8HSHH5WtRvbEaWXeUS8FPPC4dW98ck2hVY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=V4A/s84Z; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=VjMQ1uhg; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B87trVw410204
	for <devicetree@vger.kernel.org>; Mon, 8 Dec 2025 12:40:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	iFkqrJMXLTrSpGrWLHnZ1o+c2GoxdqOgiKNQ4mPlB8M=; b=V4A/s84ZR3oboi87
	r6kOZAL7wusLzU054YSRbfV7P/TuEbEfTArncTdlxgzI9Sbrn+wMhA2HUfhP+Fai
	2dJh2U77w7kPx0YK4Vjai7F7Yd98nF75S2fgmCDx3nEs2nOZrMSMJB8Sy3/IUXX1
	aumCgoDzLnzisTCuYKXPzbW/sgPEUGFY6G3MwFWU2AYHRJtfvC7rwMsr2Pvn90nM
	hqHsoAhg1xIUYpbopH1hNOx2zPJszas0FTGuA92haMZYiDED52ySwvD/L9NcypIR
	ZyoT9Ies/mgEGeIHKqOwkTwxGcKYXwwy/q6xmnKPlt22vt1NfikfUh1GDIjcPmK3
	ysnJlg==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4awtqg8vjc-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 08 Dec 2025 12:40:01 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-bc240cdb249so4331665a12.3
        for <devicetree@vger.kernel.org>; Mon, 08 Dec 2025 04:40:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765197600; x=1765802400; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=iFkqrJMXLTrSpGrWLHnZ1o+c2GoxdqOgiKNQ4mPlB8M=;
        b=VjMQ1uhgSXX6SPZYpJgo8gQs4dBiNF0mAgD5r55AFjWRJzTowhGmKZnXR5ctdNYK9z
         xYBU0tgxdknn5byhX/vDu+xGTejwl4X1Zgy9Sl4DhjUlAH4bYfs8SVz4Dy3RVHVx+bY0
         JwIrO6Sax+r8ED5Gyc6NhS7iAz3iP3LQl0wtpOFhqwNi4Obi3t4mlcOFCW9rMVfqjbjw
         XUt9GuIPFw+Vz4naku9D9i5MfuovjbZC/HbSHqGl0rq2aAzDHt3SgOtvEdItNiXx6uOq
         RfrQ30cB8sd15J2m+cx7sY7otiI95mMdi1S3ycgXnYF5yx0EwFgZBa4qlXOX/11mlUIt
         cB+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765197600; x=1765802400;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=iFkqrJMXLTrSpGrWLHnZ1o+c2GoxdqOgiKNQ4mPlB8M=;
        b=NL5XKq6k5d0PJKwj4r0Ew1kwEi5gikl7H0wRJYlxCCycU/uaOTadTvqtfe/XtE1a1b
         hCq79CHLv3Pi7VfBhpNM0s5vY+/+OhB6zMaxOhkGwkAuraFilEtaNP3HRusXzwCp/02E
         sEPCYFW9dVaq5N6SH0uaORdlMCT1kc80ao609tdJlTddJ44nMKwVkIdU+0CBSe9POPC8
         vUf1mRABHcqixf0pj0JcIslRb0YjIV+6BRzco+w5Z/TfKhBSPLrrXtE8w9ZbDMmeqF3i
         NNyVYsxC/AJjaArfHcSdgPrFFmwUck9teUezAMW7yCY5N6ocD3jk52oD0VQTavb2glLT
         eCIA==
X-Forwarded-Encrypted: i=1; AJvYcCXKPXaccTdu08PZiT8cLvb5DBorR5D1K+vD8zQzazcVnLMl9PE8eyZte0r4ViddfUYI2pFOS5A/g7UZ@vger.kernel.org
X-Gm-Message-State: AOJu0YyAzHifQHkVB2JxypKI+LgiZ0pK7J8qQ4j4rdY7b4SYYUgAgt26
	ZF0eqLgy7Nyqecy/jvVzfwaOsptsRQMB6rLQQSEqP3P6O9wW3N6x8d14GU9oz88KyDqUTFlB0JQ
	AbRQcAWiqvypMXhruXwzflfZLr/8JmKWXjHdhLib+CEAmzYmCpChIvRbHDLFDHfgm
X-Gm-Gg: ASbGncsZ7QC7USm1+Iwv98k4xEw6SLLsOBSYhz3PZovI7/46J0q71wP7uqpcWpXVoTa
	cfb6jy9VN1Z06bkZyg/X++tCQhcYUGv7f6/99jXAjLxqyJv6IMoQl/AUjym3pEaKDGUlzO1PfmT
	hfBZQ7gUkMe1tfhhq+NQWvInpWePYhMUccUvo3j7varDRaA3QwHdlWL33QGoBTzfY5dXUNaYEk4
	leuNq8E+VMo7YkU6P6DjjH5E0M1FbR/w/51j3SzAEK2wARyF6aJSvT1lT4wygaNn/uI73oy41Xh
	F5XNm8TNVTcCiuw+sJygqiSBrZ09Utpz8t77UdP85xHbULSsUXH5I25DnMFofhmnFjlaa2tIjYN
	UKxMyOAFiOW9TDOvBa7aFKXhdJuqNgkQ+3X608xrTWc1/mjXOXtiRW9wn7rRY6CXM
X-Received: by 2002:a05:7301:102:b0:2a9:57de:470 with SMTP id 5a478bee46e88-2abc7201563mr4388792eec.21.1765197600306;
        Mon, 08 Dec 2025 04:40:00 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHvmNrQXX6VRSMaeX1On+C79jMjmemS4vskTQBrH59goO6z5OaZonuQa2ECuqgTDql7IRvaag==
X-Received: by 2002:a05:7301:102:b0:2a9:57de:470 with SMTP id 5a478bee46e88-2abc7201563mr4388770eec.21.1765197599751;
        Mon, 08 Dec 2025 04:39:59 -0800 (PST)
Received: from hu-hangxian-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2aba87aa5fcsm34902515eec.3.2025.12.08.04.39.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Dec 2025 04:39:59 -0800 (PST)
From: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
Date: Mon, 08 Dec 2025 04:39:48 -0800
Subject: [PATCH v9 2/5] media: qcom: camss: Add Kaanapali compatible camss
 driver
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251208-add-support-for-camss-on-kaanapali-v9-2-3fcd31258415@oss.qualcomm.com>
References: <20251208-add-support-for-camss-on-kaanapali-v9-0-3fcd31258415@oss.qualcomm.com>
In-Reply-To: <20251208-add-support-for-camss-on-kaanapali-v9-0-3fcd31258415@oss.qualcomm.com>
To: Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Robert Foss <rfoss@kernel.org>, Andi Shyti <andi.shyti@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Todor Tomov <todor.too@gmail.com>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-media@vger.kernel.org,
        Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Proofpoint-ORIG-GUID: WuXZqF-M74PIlgp3F3j2i8JFrYi9wRXA
X-Authority-Analysis: v=2.4 cv=Ks1AGGWN c=1 sm=1 tr=0 ts=6936c721 cx=c_pps
 a=rz3CxIlbcmazkYymdCej/Q==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=Eph36bqoL6-XvbZcx_wA:9 a=QEXdDO2ut3YA:10 a=bFCP_H2QrGi7Okbo017w:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: WuXZqF-M74PIlgp3F3j2i8JFrYi9wRXA
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjA4MDEwNiBTYWx0ZWRfX5zb05Z1E25jV
 Ynq4K3U6yERHivrpu2stPM/d1xMTfkT9NXktnBH44zeZuxtr6J3n2TAPLP//5Lx4b+4MWtBlvRq
 4mfOBnUWpy0GiANuTnCfpnREAymq193RsPwqP0nqXOUu+5vcT+pgSqq1V9PtKe5VGe+3q+pSWEa
 ssy2TEgO1XhYqxjud/rQatUcTPiWgcAiOcb/x0PmR0UpUQ+mSV9sBECrLENv2vpH+cDeuzpixZJ
 GkLgu5h3ey8694jK+7NRXf3wk26pt5cGx9uTsQ9vP8DK0d7VThhCQzF+kUGXk9IN/4tw/31nEcx
 c7VWXogjygVbdM6hSUBNGBi5Xil1PnGPynZypkfPAOEC9idadA8IpX3go5CrJNKkl8swig/TnUP
 l1KSBX2zf4xh2KjaPScrGWaeunDOwQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-06_02,2025-12-04_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 malwarescore=0 clxscore=1015 bulkscore=0 adultscore=0
 impostorscore=0 spamscore=0 suspectscore=0 lowpriorityscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512080106

Add support for Kaanapali in the camss driver. Add high level resource
information along with the bus bandwidth votes. Module level detailed
resource information will be enumerated in the following patches of the
series.

Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Signed-off-by: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
---
 drivers/media/platform/qcom/camss/camss.c | 22 ++++++++++++++++++++++
 drivers/media/platform/qcom/camss/camss.h |  1 +
 2 files changed, 23 insertions(+)

diff --git a/drivers/media/platform/qcom/camss/camss.c b/drivers/media/platform/qcom/camss/camss.c
index 2fbcd0e343aa..658d9c9183d4 100644
--- a/drivers/media/platform/qcom/camss/camss.c
+++ b/drivers/media/platform/qcom/camss/camss.c
@@ -34,6 +34,20 @@
 
 static const struct parent_dev_ops vfe_parent_dev_ops;
 
+static const struct resources_icc icc_res_kaanapali[] = {
+	{
+		.name = "ahb",
+		.icc_bw_tbl.avg = 150000,
+		.icc_bw_tbl.peak = 300000,
+	},
+	/* Based on 4096 x 3072 30 FPS 2496 Mbps mode */
+	{
+		.name = "hf_mnoc",
+		.icc_bw_tbl.avg = 471860,
+		.icc_bw_tbl.peak = 925857,
+	},
+};
+
 static const struct camss_subdev_resources csiphy_res_8x16[] = {
 	/* CSIPHY0 */
 	{
@@ -4291,6 +4305,13 @@ static void camss_remove(struct platform_device *pdev)
 	camss_genpd_cleanup(camss);
 }
 
+static const struct camss_resources kaanapali_resources = {
+	.version = CAMSS_KAANAPALI,
+	.pd_name = "top",
+	.icc_res = icc_res_kaanapali,
+	.icc_path_num = ARRAY_SIZE(icc_res_kaanapali),
+};
+
 static const struct camss_resources msm8916_resources = {
 	.version = CAMSS_8x16,
 	.csiphy_res = csiphy_res_8x16,
@@ -4467,6 +4488,7 @@ static const struct camss_resources x1e80100_resources = {
 };
 
 static const struct of_device_id camss_dt_match[] = {
+	{ .compatible = "qcom,kaanapali-camss", .data = &kaanapali_resources },
 	{ .compatible = "qcom,msm8916-camss", .data = &msm8916_resources },
 	{ .compatible = "qcom,msm8953-camss", .data = &msm8953_resources },
 	{ .compatible = "qcom,msm8996-camss", .data = &msm8996_resources },
diff --git a/drivers/media/platform/qcom/camss/camss.h b/drivers/media/platform/qcom/camss/camss.h
index 901f84efaf7d..876cd2a64cbe 100644
--- a/drivers/media/platform/qcom/camss/camss.h
+++ b/drivers/media/platform/qcom/camss/camss.h
@@ -90,6 +90,7 @@ enum camss_version {
 	CAMSS_845,
 	CAMSS_8550,
 	CAMSS_8775P,
+	CAMSS_KAANAPALI,
 	CAMSS_X1E80100,
 };
 

-- 
2.34.1


