Return-Path: <devicetree+bounces-197758-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 784F0B0A857
	for <lists+devicetree@lfdr.de>; Fri, 18 Jul 2025 18:21:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id AB9AA5A3405
	for <lists+devicetree@lfdr.de>; Fri, 18 Jul 2025 16:21:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B71122951CE;
	Fri, 18 Jul 2025 16:21:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="lFlfwSoq"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40D8B1B0F33
	for <devicetree@vger.kernel.org>; Fri, 18 Jul 2025 16:21:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752855667; cv=none; b=F310Z398vpS0++us/q+gv5ViZHNSyalIXYBawTtFjL4w+stGHhaGnVpG+vKIGgAy3wEuar6PSY8d9qG1j7CoNVnVO0SH3ZQx8KfqWLD65hsoc8sLZgtpREnhoIK/ssv+gKXY0uhkPUfdY5J/v7dVOHHkYdYy+nCztCVvg+DEvl0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752855667; c=relaxed/simple;
	bh=PQ8nep6+2CkJ/XSkB12+zBFIYToc6uVoayIbLHk7IAM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=GDHoPPo2NzFKRTeyA6XOFisXEWUg7G5op0aZbCoH6GAenwSM1zfcCIK954Dmp1sEFuQ3xIXHuP+EjT8Y5fMuXnJLd74J+p+2bKBf7nmbzTMiXXJYZVZ7Na+3ak0n69eU59nzdeGe+oXlLESBF2+iAjV/DFnnjpfOOSrfBqQD3/Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=lFlfwSoq; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56I9NiER015963
	for <devicetree@vger.kernel.org>; Fri, 18 Jul 2025 16:21:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ToUWdrHOvvzd4l32npkLp+sN31SJLS2F6Ly2KepaknI=; b=lFlfwSoqDHT1TY1N
	VPEpLTcEsQtxZCs2qakOqXo/4ZER0prB+NxDrImd7sC0xU/hVDdjShNNnum9zcZF
	aCjaC7xXWvkJjnSfUsOXACWK5cQXFNYND76q5nMK9ieBfDWg5XtNeZxR+P6OD44s
	SRMWUo8dEoVnvsi43HyEEUc8J1Ccq7tPcMBrkLYHlX0igLWdG7bKGGL4Frd5RChC
	/FsjUWLnUUdAZGwtJ+fCIUMolrgs6dvm5GF1Iv486KHKKMdGhKo1OTxVsKLxI2Xu
	DMf+QX1ky0LEAaeFCfPWgobHuGjZxTN3EdCS89zTcL0TsMtyTp0J4RIdmJkajngb
	f178SA==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47y3tc44g7-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 18 Jul 2025 16:21:05 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-6fb520a74c8so37144046d6.1
        for <devicetree@vger.kernel.org>; Fri, 18 Jul 2025 09:21:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752855664; x=1753460464;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ToUWdrHOvvzd4l32npkLp+sN31SJLS2F6Ly2KepaknI=;
        b=FlCWMk8J98usK0l3pdmixjDWsKxRbDWXXMsxZHUXwT66grg3sXdvRXX4vU+V1C9h2f
         PCCBgYnph2HCEyh2ASLvJcLSNj+GUOdQuoE+A1U/TfbL+6jEvT7M3V33JY8HUUyWA7BW
         wjQTgJHkqwae359sDpuGO+m4BSW5k7a/I3Jpa63wGpKZ2bfaU6AiAGfM/7tco94dgD2m
         VpMYikLo519v6KWTMpmE+QQO3cWUuTvhAJ3ZzQOA3P0TQMlHkPMiQ6alLJxSm+C7P8Vg
         saZm0DSpw7idSC73cCB5l/vk8xQgYh6mTgqoj3wSzaB4i3V4mbta+0GpKgKjqedYHUlw
         b4aA==
X-Forwarded-Encrypted: i=1; AJvYcCVGYmn9dWoXW/iCy8XVwVVZHG6IVW7jNImaJ1ZqBirDu4YnwqZEyL+iiGq59Do0aeFlVvF/xw2MWnTC@vger.kernel.org
X-Gm-Message-State: AOJu0YxvvuFcQUNbYoC/DfMJE7lxSlKqeuKaCB8AbmLESGW8HII8Ku4i
	hAzGDLKSmndBKKQRkOt8+hUsgQqfh/Kywi8r6J1gzoAY+dxsFD9CjbySJKYNQa8n++7DMK2IIGH
	ZtLAFq12K58gP1i/05xvnBtzl7+eF8GORMySmc8Nw5q2GMCQjxQUrzGyDGI+7ebcbxLZzBdhN
X-Gm-Gg: ASbGnctPECIf38PYvFIm6LMGhVxTtwQ4xZzSCpHOwepmBIpW1oqTIq/szBpw8T4Fkbg
	X0DFT6rw2dbxho0xRoR10369Bh0cj06w2jckp1kBdhaC2eb4CpBUPDby/3jx9QzZmfFmjipeuZY
	lSMm3J6P9W2GmmQBWzxG+KFkjc4Si1e+WWJ/SkQLQQwCnKhTWO0ww56WtIbC/XDu2anA3CCvdYE
	WUKkKSKjgkgNrtePVI91YeVHuYnzBv79nnLiuoH5aKy1eGhDNU45ig8Fz/DMKKrjNqBE3OllTeN
	iGjAdR02qJnUioF9ggOhN48Z42KuLR36X73yfo9OXUmpbsOxf97d63KZd+cwa4QtHbUWc6c934T
	pZnvoxSlWTI/V/mS1HU0hSg/kL7s3+hMzzEdExcSuSfAS/86no7hh
X-Received: by 2002:a05:620a:2947:b0:7e3:3d2e:1f08 with SMTP id af79cd13be357-7e34361b247mr1657432685a.45.1752855232938;
        Fri, 18 Jul 2025 09:13:52 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF1YG0jt9yWFaIGUj666c/NtISkNC4WDZgTnNihtZZCDJ9bbquyIoF7UFwFofEUy4lFvuRhlg==
X-Received: by 2002:a05:620a:2947:b0:7e3:3d2e:1f08 with SMTP id af79cd13be357-7e34361b247mr1657424385a.45.1752855232184;
        Fri, 18 Jul 2025 09:13:52 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-330a91c1ab7sm2388131fa.50.2025.07.18.09.13.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Jul 2025 09:13:51 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Fri, 18 Jul 2025 19:13:42 +0300
Subject: [PATCH 4/8] pmdomain: qcom: rpmpd: switch to RPMPD_* indices
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250718-rework-rpmhpd-rpmpd-v1-4-eedca108e540@oss.qualcomm.com>
References: <20250718-rework-rpmhpd-rpmpd-v1-0-eedca108e540@oss.qualcomm.com>
In-Reply-To: <20250718-rework-rpmhpd-rpmpd-v1-0-eedca108e540@oss.qualcomm.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Ulf Hansson <ulf.hansson@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=6484;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=PQ8nep6+2CkJ/XSkB12+zBFIYToc6uVoayIbLHk7IAM=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBoenK31D+ET4JXXb3RpsdqeFLE9iRYlmTx+o5vX
 ICQ4VXeLs+JATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaHpytwAKCRCLPIo+Aiko
 1fRAB/9veeHp8Lre9JqC3BHTf4Nu8Ske2qUokDoR2mCLk5a+g2oDWpJ43Kawe0+mF9OZ1wj4fL6
 zd9gj0ES6Z9YD6oEYng7H4tFZTDyaQLMw2D2KfDaqqDJGjM7uIH359YYbW3pHp5zSfH5ShNecAU
 VmSLQIZoS7w8+RGPEhPUKtaW5fKo8PlPX8qWmUl1mEnLIqrPZB/QAY0KivUlQLZdvDXdvAQKboE
 jWKvPZ+sH9c0hfJfnYl4uygNzrNpmrmNPI/XQ+g55mES+E9+4DZOU5BcMBoc+9kX9gZyZ36Ep4V
 IaBVJ9Xb2I5S1oIz4beNVjJNTTI8FNEUxVI27jAkBIPHcEnb
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Authority-Analysis: v=2.4 cv=Z5PsHGRA c=1 sm=1 tr=0 ts=687a7471 cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=9OzbfAs58j7jRePA22kA:9 a=QEXdDO2ut3YA:10
 a=iYH6xdkBrDN1Jqds4HTS:22
X-Proofpoint-ORIG-GUID: Ite8LailFOpIw8LkyzCLmSlcy_2wlFOM
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzE4MDEyOCBTYWx0ZWRfX73wNKeQVgrVo
 9+7jlodixuDjpgRwzt8VOXvzdfjt5/L85KNsSmDLvS9DpBbUSvyzCySAbA+mocZKxPIo/jXh8BT
 cQMo+/1rxPdYU3cABhBfomJqrJAuxnBDATcLsrLKdUG/P1fwfJeyhMpMVlXlO43864QNv54zzna
 WPHGfpbp1wjuyXx30kQ76jcZLlIvHIJ3yAGRBE7g2V28Ma49d2QBGzBfcbn0Vs952CKxgf9hEW8
 ZgONhb7Gt3a/n+SdkghGEB4PUIK4lihzM13ijTUn79tfzxn1rrzvcJaMzXar9C6zvoVmuXcPHmt
 QFsU4jOujWvls9St3wxXB5qZp2iitpDWihJLU9yxjYGAMT+/JsI32rVdy7BuVuxxX6+wBDUvnFC
 lLOanfDJSP7FuNMwKGilOvhE39oRBZf0wI3/VUZ+2JTLz4uUd+ixuOPqw2fHGwf+SM2hutFA
X-Proofpoint-GUID: Ite8LailFOpIw8LkyzCLmSlcy_2wlFOM
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-18_03,2025-07-17_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 mlxlogscore=886 suspectscore=0 spamscore=0 clxscore=1015
 mlxscore=0 malwarescore=0 phishscore=0 lowpriorityscore=0 adultscore=0
 priorityscore=1501 bulkscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507180128

Use generic RPMPD_* defines for power domain instead of using
platform-specific defines for the platforms that use shared indices.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 drivers/pmdomain/qcom/rpmpd.c | 112 +++++++++++++++++++++---------------------
 1 file changed, 56 insertions(+), 56 deletions(-)

diff --git a/drivers/pmdomain/qcom/rpmpd.c b/drivers/pmdomain/qcom/rpmpd.c
index 833c46944600faa641d44ebe85db17280bb927b1..f8580ec0f73785544aeb6f686438f39b477d134d 100644
--- a/drivers/pmdomain/qcom/rpmpd.c
+++ b/drivers/pmdomain/qcom/rpmpd.c
@@ -631,12 +631,12 @@ static struct rpmpd ssc_mx_rwsm0_vfl = {
 };
 
 static struct rpmpd *mdm9607_rpmpds[] = {
-	[MDM9607_VDDCX] =	&cx_s3a_lvl,
-	[MDM9607_VDDCX_AO] =	&cx_s3a_lvl_ao,
-	[MDM9607_VDDCX_VFL] =	&cx_s3a_vfl,
-	[MDM9607_VDDMX] =	&mx_l12a_lvl,
-	[MDM9607_VDDMX_AO] =	&mx_l12a_lvl_ao,
-	[MDM9607_VDDMX_VFL] =	&mx_l12a_vfl,
+	[RPMPD_VDDCX] =		&cx_s3a_lvl,
+	[RPMPD_VDDCX_AO] =	&cx_s3a_lvl_ao,
+	[RPMPD_VDDCX_VFL] =	&cx_s3a_vfl,
+	[RPMPD_VDDMX] =		&mx_l12a_lvl,
+	[RPMPD_VDDMX_AO] =	&mx_l12a_lvl_ao,
+	[RPMPD_VDDMX_VFL] =	&mx_l12a_vfl,
 };
 
 static const struct rpmpd_desc mdm9607_desc = {
@@ -646,9 +646,9 @@ static const struct rpmpd_desc mdm9607_desc = {
 };
 
 static struct rpmpd *msm8226_rpmpds[] = {
-	[MSM8226_VDDCX] =	&cx_s1a_corner,
-	[MSM8226_VDDCX_AO] =	&cx_s1a_corner_ao,
-	[MSM8226_VDDCX_VFC] =	&cx_s1a_vfc,
+	[RPMPD_VDDCX] =		&cx_s1a_corner,
+	[RPMPD_VDDCX_AO] =	&cx_s1a_corner_ao,
+	[RPMPD_VDDCX_VFC] =	&cx_s1a_vfc,
 };
 
 static const struct rpmpd_desc msm8226_desc = {
@@ -675,11 +675,11 @@ static const struct rpmpd_desc msm8939_desc = {
 };
 
 static struct rpmpd *msm8916_rpmpds[] = {
-	[MSM8916_VDDCX] =	&cx_s1a_corner,
-	[MSM8916_VDDCX_AO] =	&cx_s1a_corner_ao,
-	[MSM8916_VDDCX_VFC] =	&cx_s1a_vfc,
-	[MSM8916_VDDMX] =	&mx_l3a_corner,
-	[MSM8916_VDDMX_AO] =	&mx_l3a_corner_ao,
+	[RPMPD_VDDCX] =		&cx_s1a_corner,
+	[RPMPD_VDDCX_AO] =	&cx_s1a_corner_ao,
+	[RPMPD_VDDCX_VFC] =	&cx_s1a_vfc,
+	[RPMPD_VDDMX] =		&mx_l3a_corner,
+	[RPMPD_VDDMX_AO] =	&mx_l3a_corner_ao,
 };
 
 static const struct rpmpd_desc msm8916_desc = {
@@ -689,11 +689,11 @@ static const struct rpmpd_desc msm8916_desc = {
 };
 
 static struct rpmpd *msm8917_rpmpds[] = {
-	[MSM8917_VDDCX] =	&cx_s2a_lvl,
-	[MSM8917_VDDCX_AO] =	&cx_s2a_lvl_ao,
-	[MSM8917_VDDCX_VFL] =	&cx_s2a_vfl,
-	[MSM8917_VDDMX] =	&mx_l3a_lvl,
-	[MSM8917_VDDMX_AO] =	&mx_l3a_lvl_ao,
+	[RPMPD_VDDCX] =		&cx_s2a_lvl,
+	[RPMPD_VDDCX_AO] =	&cx_s2a_lvl_ao,
+	[RPMPD_VDDCX_VFL] =	&cx_s2a_vfl,
+	[RPMPD_VDDMX] =		&mx_l3a_lvl,
+	[RPMPD_VDDMX_AO] =	&mx_l3a_lvl_ao,
 };
 
 static const struct rpmpd_desc msm8917_desc = {
@@ -747,12 +747,12 @@ static const struct rpmpd_desc msm8974pro_pma8084_desc = {
 };
 
 static struct rpmpd *msm8976_rpmpds[] = {
-	[MSM8976_VDDCX] =	&cx_s2a_lvl,
-	[MSM8976_VDDCX_AO] =	&cx_s2a_lvl_ao,
-	[MSM8976_VDDCX_VFL] =	&cx_rwsc2_vfl,
-	[MSM8976_VDDMX] =	&mx_s6a_lvl,
-	[MSM8976_VDDMX_AO] =	&mx_s6a_lvl_ao,
-	[MSM8976_VDDMX_VFL] =	&mx_rwsm6_vfl,
+	[RPMPD_VDDCX] =		&cx_s2a_lvl,
+	[RPMPD_VDDCX_AO] =	&cx_s2a_lvl_ao,
+	[RPMPD_VDDCX_VFL] =	&cx_rwsc2_vfl,
+	[RPMPD_VDDMX] =		&mx_s6a_lvl,
+	[RPMPD_VDDMX_AO] =	&mx_s6a_lvl_ao,
+	[RPMPD_VDDMX_VFL] =	&mx_rwsm6_vfl,
 };
 
 static const struct rpmpd_desc msm8976_desc = {
@@ -796,16 +796,16 @@ static const struct rpmpd_desc msm8996_desc = {
 };
 
 static struct rpmpd *msm8998_rpmpds[] = {
-	[MSM8998_VDDCX] =	&cx_rwcx0_lvl,
-	[MSM8998_VDDCX_AO] =	&cx_rwcx0_lvl_ao,
-	[MSM8998_VDDCX_VFL] =	&cx_rwcx0_vfl,
-	[MSM8998_VDDMX] =	&mx_rwmx0_lvl,
-	[MSM8998_VDDMX_AO] =	&mx_rwmx0_lvl_ao,
-	[MSM8998_VDDMX_VFL] =	&mx_rwmx0_vfl,
-	[MSM8998_SSCCX] =	&ssc_cx_rwsc0_lvl,
-	[MSM8998_SSCCX_VFL] =	&ssc_cx_rwsc0_vfl,
-	[MSM8998_SSCMX] =	&ssc_mx_rwsm0_lvl,
-	[MSM8998_SSCMX_VFL] =	&ssc_mx_rwsm0_vfl,
+	[RPMPD_VDDCX] =		&cx_rwcx0_lvl,
+	[RPMPD_VDDCX_AO] =	&cx_rwcx0_lvl_ao,
+	[RPMPD_VDDCX_VFL] =	&cx_rwcx0_vfl,
+	[RPMPD_VDDMX] =		&mx_rwmx0_lvl,
+	[RPMPD_VDDMX_AO] =	&mx_rwmx0_lvl_ao,
+	[RPMPD_VDDMX_VFL] =	&mx_rwmx0_vfl,
+	[RPMPD_SSCCX] =		&ssc_cx_rwsc0_lvl,
+	[RPMPD_SSCCX_VFL] =	&ssc_cx_rwsc0_vfl,
+	[RPMPD_SSCMX] =		&ssc_mx_rwsm0_lvl,
+	[RPMPD_SSCMX_VFL] =	&ssc_mx_rwsm0_vfl,
 };
 
 static const struct rpmpd_desc msm8998_desc = {
@@ -831,11 +831,11 @@ static const struct rpmpd_desc qcs404_desc = {
 };
 
 static struct rpmpd *qm215_rpmpds[] = {
-	[QM215_VDDCX] =		&cx_s1a_lvl,
-	[QM215_VDDCX_AO] =	&cx_s1a_lvl_ao,
-	[QM215_VDDCX_VFL] =	&cx_s1a_vfl,
-	[QM215_VDDMX] =		&mx_l2a_lvl,
-	[QM215_VDDMX_AO] =	&mx_l2a_lvl_ao,
+	[RPMPD_VDDCX] =		&cx_s1a_lvl,
+	[RPMPD_VDDCX_AO] =	&cx_s1a_lvl_ao,
+	[RPMPD_VDDCX_VFL] =	&cx_s1a_vfl,
+	[RPMPD_VDDMX] =		&mx_l2a_lvl,
+	[RPMPD_VDDMX_AO] =	&mx_l2a_lvl_ao,
 };
 
 static const struct rpmpd_desc qm215_desc = {
@@ -845,16 +845,16 @@ static const struct rpmpd_desc qm215_desc = {
 };
 
 static struct rpmpd *sdm660_rpmpds[] = {
-	[SDM660_VDDCX] =	&cx_rwcx0_lvl,
-	[SDM660_VDDCX_AO] =	&cx_rwcx0_lvl_ao,
-	[SDM660_VDDCX_VFL] =	&cx_rwcx0_vfl,
-	[SDM660_VDDMX] =	&mx_rwmx0_lvl,
-	[SDM660_VDDMX_AO] =	&mx_rwmx0_lvl_ao,
-	[SDM660_VDDMX_VFL] =	&mx_rwmx0_vfl,
-	[SDM660_SSCCX] =	&ssc_cx_rwlc0_lvl,
-	[SDM660_SSCCX_VFL] =	&ssc_cx_rwlc0_vfl,
-	[SDM660_SSCMX] =	&ssc_mx_rwlm0_lvl,
-	[SDM660_SSCMX_VFL] =	&ssc_mx_rwlm0_vfl,
+	[RPMPD_VDDCX] =		&cx_rwcx0_lvl,
+	[RPMPD_VDDCX_AO] =	&cx_rwcx0_lvl_ao,
+	[RPMPD_VDDCX_VFL] =	&cx_rwcx0_vfl,
+	[RPMPD_VDDMX] =		&mx_rwmx0_lvl,
+	[RPMPD_VDDMX_AO] =	&mx_rwmx0_lvl_ao,
+	[RPMPD_VDDMX_VFL] =	&mx_rwmx0_vfl,
+	[RPMPD_SSCCX] =		&ssc_cx_rwlc0_lvl,
+	[RPMPD_SSCCX_VFL] =	&ssc_cx_rwlc0_vfl,
+	[RPMPD_SSCMX] =		&ssc_mx_rwlm0_lvl,
+	[RPMPD_SSCMX_VFL] =	&ssc_mx_rwlm0_vfl,
 };
 
 static const struct rpmpd_desc sdm660_desc = {
@@ -881,12 +881,12 @@ static const struct rpmpd_desc sm6115_desc = {
 };
 
 static struct rpmpd *sm6125_rpmpds[] = {
-	[SM6125_VDDCX] =	&cx_rwcx0_lvl,
-	[SM6125_VDDCX_AO] =	&cx_rwcx0_lvl_ao,
-	[SM6125_VDDCX_VFL] =	&cx_rwcx0_vfl,
-	[SM6125_VDDMX] =	&mx_rwmx0_lvl,
-	[SM6125_VDDMX_AO] =	&mx_rwmx0_lvl_ao,
-	[SM6125_VDDMX_VFL] =	&mx_rwmx0_vfl,
+	[RPMPD_VDDCX] =		&cx_rwcx0_lvl,
+	[RPMPD_VDDCX_AO] =	&cx_rwcx0_lvl_ao,
+	[RPMPD_VDDCX_VFL] =	&cx_rwcx0_vfl,
+	[RPMPD_VDDMX] =		&mx_rwmx0_lvl,
+	[RPMPD_VDDMX_AO] =	&mx_rwmx0_lvl_ao,
+	[RPMPD_VDDMX_VFL] =	&mx_rwmx0_vfl,
 };
 
 static const struct rpmpd_desc sm6125_desc = {

-- 
2.39.5


