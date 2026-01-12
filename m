Return-Path: <devicetree+bounces-253794-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B2908D11642
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 10:03:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 766A8301D109
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 09:02:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 69D65346E53;
	Mon, 12 Jan 2026 09:02:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="GPkE4Y5k";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="OmVzPgUm"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5817C346AEA
	for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 09:02:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768208564; cv=none; b=XAlwFTKCa3JROkXi4xRzwZFhzfPWUjbIbxIBViEu/hUCGeK27Iw5+xx3+seRfCJXCD18txKEATirYr4GgiMr6HlFHHQuR04/MPTr8guywxeVdzPYpNzyJQxqvmJ7TVNUs3S19+qgyOLbKVlP+DLtGFq5hCVQaamNtKDJtyw+Vbw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768208564; c=relaxed/simple;
	bh=qAYVIyfc7e3rEE0r6gSKyylxaDF2Xe2iZmOVEFkuC+M=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Fm/wi7GzM4k9nBU1ZjpUFoiE2PG0wUAccqpeyxy5Ruf944JRg7EAxfgefjgctAWiSgXheiO+BjSBEcgV7WeCdYIgZCa9/ccBWkZrs55A+24j0tlPykPzaP2ReztsfKfVA+xIjeZDB+bE3hLQhmQX45HuSKhPDCJfW4jfOSLbfbA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=GPkE4Y5k; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=OmVzPgUm; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60C88H3R324913
	for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 09:02:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Pq8b7EgAUNsAtM6Fas5RMbp7EvPKne1LghzApOUHTvg=; b=GPkE4Y5kn9V2Sa5j
	2Bp/lAkfIVJZSBpdddh8bcER5aKeepScDq8x5RU9l4BzBOujsBW4W9UA1VHADP5c
	zEtg688godMvhib4m4Kpvmmu/lCEgmDwlmxYSXiOsRH8C5Mt8dk01PkuS780V315
	DQBQt8ZPm07sg/ziGnJBALWcmdgxYc4q1pD8IbfYkQJ1PwzjPeMudfUkSwm/xLHx
	Xp4Rjdfgib8BNypXwglC6U4gpuYD6DhfMMMKN1TL1LWTqiZGriGC583S2Tw+02G/
	vZIWPkMUYt6gfnscq1T26Ih3YED+U6pjTr00Q6cmQipKh7msyMT57H3XqBl2SQOC
	MiFu+Q==
Received: from mail-dl1-f70.google.com (mail-dl1-f70.google.com [74.125.82.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bm8kytbre-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 09:02:41 +0000 (GMT)
Received: by mail-dl1-f70.google.com with SMTP id a92af1059eb24-11f3d181ef2so34668047c88.1
        for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 01:02:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768208560; x=1768813360; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Pq8b7EgAUNsAtM6Fas5RMbp7EvPKne1LghzApOUHTvg=;
        b=OmVzPgUmg3jdI2siRFkFY2v5oGZ6YVKfL6rV9w9Uau3bcgIaVbDQKXh9cly2+o66XA
         CCjXNLPy3ZfxMzskbtTury8m872HSx+AhCfiSnAXCPNYRBNpRwvQYio0ITvTGYBl0yZ9
         Fq84ToKRh0xaX151K7bHmI2UrLRMJdy97u4BigDk408J41WRgoi5a8xG6rgPX3PR4NJe
         ycsAOt5d0WxMHqbhhpLkX+HEaGmAH141v0e7QSXLN31kX/sNPV7m0NOBkk0I6hgl2DoE
         tBUyQQd4gkF1OUN541EbAdGx9SNFmm9jSUKVDV8dYoID0xZf/cQR1Rxgsu5NKuMeTwAb
         tcjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768208560; x=1768813360;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Pq8b7EgAUNsAtM6Fas5RMbp7EvPKne1LghzApOUHTvg=;
        b=Gwpmp2eyVmCQdIM6fYbFXIS/Hg5JU30H+0J25Q61N5tFv4zIq7eoB9KxJOQETamMlI
         s/Ras4l4NaHyd+AJ2vx6ZuXWRwRgy5OfT08hPat0FOE5SneFonoL6hdox+HdGYrD0wD2
         7AatKEf9QLyHaWUIWhmZRov4Id3Nn4h5cmhaGJ9op8bHJWiBmoHIAyYqFW7K7bq4WR1s
         VAEAdQAboeDLLeHf+3owjBtuPsCePSVgecVFgmr8nl9uPQM03SG7Ug4KdXxUquvscpeo
         1mX30nBv2Aqh9I7wGNgHphTKKS4qFf2m+39UkyUOlBwvbbBAQVgcvlFng75rULkHzEf6
         FX7Q==
X-Forwarded-Encrypted: i=1; AJvYcCVnhndqo8dXv4FCwo9HVNqvkQZLRR+FywOAIFDkHldhmW6vJA79kjlUG/PZIYhhv+eAVjLuH9dF237D@vger.kernel.org
X-Gm-Message-State: AOJu0YyAn5FEm3SFn3hPohFRKLoGholZB+19JzKRkqmNX+FBAxH2xN6d
	jWDLpAwD+YGxqDezUR4XEdreR/YrbdDT8mu5t/Da1cSvPhZ3vYHJkH8S0Q18YN0VVDBuPQUuYeZ
	RPHePQWDHZ+ZvwN5laBunSZL8DPRrMnEuiLGO4VkmRecw3ePYkWmaeUwhhQ6xq/Nc
X-Gm-Gg: AY/fxX7gxd0jWgZy0P4mJMFuJgVeNhKTWk3uW8oQMmPQGdhrRIBJly1XsF2Dk5YIt3W
	DORgZ7opD6uo9JK6mMFnh3lxyQDogLU4czYtDaFwxHvjOQMzXU8mUpJrI7E/tdlNEoZ6yBSAndM
	IFvCWEh6ZC+DC0mLdPrRucWh6q1dzYKrfle1hJzgg16tTWtHw9/zP8v+ht9ZQrjmP/vZfdjVBoO
	PZVMnfLHrFtuIYCAE9EGflFOqtOjIEOM4tD5Oub1XH1lSbei6+Q6o9ANjGipXEU9GLNXJi2RHCW
	nVSSus1rz3UEfNbImMdsbkXCbMMiI2nPq9XuBrCrLXLtIkM/0UjcxJNgsdPwiRJ7cw/UiWJCfN4
	jqwCFY0xBVpeDoZarM2XHuocsuRrZzooTfUP/Ea0oQGLU4VMzyzp1XVZtG4R4BozV
X-Received: by 2002:a05:7022:d93:b0:119:e569:f27f with SMTP id a92af1059eb24-121f8b608b4mr12937572c88.40.1768208560174;
        Mon, 12 Jan 2026 01:02:40 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGv5Osxs4SohIS/nHhwxKn5i0JKCKDk0dqbFAHZdlKg/51clHLDRxH4WYi9XO8YXLYbySCrpQ==
X-Received: by 2002:a05:7022:d93:b0:119:e569:f27f with SMTP id a92af1059eb24-121f8b608b4mr12937555c88.40.1768208559618;
        Mon, 12 Jan 2026 01:02:39 -0800 (PST)
Received: from hu-hangxian-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-121f23b798asm18888500c88.0.2026.01.12.01.02.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Jan 2026 01:02:39 -0800 (PST)
From: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
Date: Mon, 12 Jan 2026 01:02:27 -0800
Subject: [PATCH v11 2/5] media: qcom: camss: Add Kaanapali compatible camss
 driver
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260112-kaanapali-camss-v11-2-81e4f59a5d08@oss.qualcomm.com>
References: <20260112-kaanapali-camss-v11-0-81e4f59a5d08@oss.qualcomm.com>
In-Reply-To: <20260112-kaanapali-camss-v11-0-81e4f59a5d08@oss.qualcomm.com>
To: Robert Foss <rfoss@kernel.org>, Todor Tomov <todor.too@gmail.com>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Proofpoint-GUID: c9Yk3L1XVyrHP1YH2V6bLgRK1LUTDo2F
X-Authority-Analysis: v=2.4 cv=ZuDg6t7G c=1 sm=1 tr=0 ts=6964b8b1 cx=c_pps
 a=SvEPeNj+VMjHSW//kvnxuw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=Eph36bqoL6-XvbZcx_wA:9 a=QEXdDO2ut3YA:10 a=Kq8ClHjjuc5pcCNDwlU0:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: c9Yk3L1XVyrHP1YH2V6bLgRK1LUTDo2F
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTEyMDA3MCBTYWx0ZWRfXzyEn/0wV+GyX
 1vDvMBNBOijqasAbFZrHIQvBAjba4FwEWF1AIzcc8uqqCuQ5qJOePT4VnZfKqFUiAxkvkT9fzkJ
 HFjUvxSgNmssfnlqtQ87aTYaPvniko0ABQNWY1aUWCLz0x61fv/eSTEQwjR/dkat50Oo5SQuHnU
 yliyj5+E3iQG5K1TIZ7aCIrUFDCa7/j1qh71FKutY60rbnRsRaNlRuKBt8XrGQQFrBfQYTIDl/Q
 9MwVUZteh7McRhABcaZRkDIjA9TgJTZU5OmxJqGzZ2TXHh/On5ZzYZmg3+Fd1e8m6j8jnbq9v0m
 xoQzEwFy+UjqZlCA15rnoiAfocb+I8E7Uf3h8+7ojF15h1QevP2OxyfGXvPompJLAM8RZHYvpxZ
 kCvLjK8GkmBuVA6WGVjpU7fsPoiJbtZJDh0CsrAfyoeUw6uDWtnt1uvKOFI5ghVS+pn7APPToDU
 0YH3qaRxw1VptBf7Zyg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-12_02,2026-01-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 lowpriorityscore=0 malwarescore=0 impostorscore=0 bulkscore=0
 spamscore=0 clxscore=1015 priorityscore=1501 suspectscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601120070

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
index fcc2b2c3cba0..d07bde60b3a8 100644
--- a/drivers/media/platform/qcom/camss/camss.c
+++ b/drivers/media/platform/qcom/camss/camss.c
@@ -34,6 +34,20 @@
 
 static const struct parent_dev_ops vfe_parent_dev_ops;
 
+static const struct resources_icc icc_res_kaanapali[] = {
+	{
+		.name = "cam_ahb",
+		.icc_bw_tbl.avg = 150000,
+		.icc_bw_tbl.peak = 300000,
+	},
+	/* Based on 4096 x 3072 30 FPS 2496 Mbps mode */
+	{
+		.name = "cam_hf_mnoc",
+		.icc_bw_tbl.avg = 471860,
+		.icc_bw_tbl.peak = 925857,
+	},
+};
+
 static const struct camss_subdev_resources csiphy_res_8x16[] = {
 	/* CSIPHY0 */
 	{
@@ -4746,6 +4760,13 @@ static void camss_remove(struct platform_device *pdev)
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
@@ -4947,6 +4968,7 @@ static const struct camss_resources x1e80100_resources = {
 };
 
 static const struct of_device_id camss_dt_match[] = {
+	{ .compatible = "qcom,kaanapali-camss", .data = &kaanapali_resources },
 	{ .compatible = "qcom,msm8916-camss", .data = &msm8916_resources },
 	{ .compatible = "qcom,msm8939-camss", .data = &msm8939_resources },
 	{ .compatible = "qcom,msm8953-camss", .data = &msm8953_resources },
diff --git a/drivers/media/platform/qcom/camss/camss.h b/drivers/media/platform/qcom/camss/camss.h
index 9d9a62640e25..b1cc4825f027 100644
--- a/drivers/media/platform/qcom/camss/camss.h
+++ b/drivers/media/platform/qcom/camss/camss.h
@@ -92,6 +92,7 @@ enum camss_version {
 	CAMSS_8550,
 	CAMSS_8650,
 	CAMSS_8775P,
+	CAMSS_KAANAPALI,
 	CAMSS_X1E80100,
 };
 

-- 
2.34.1


