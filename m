Return-Path: <devicetree+bounces-242294-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 956DEC8901C
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 10:41:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 9C577352D83
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 09:41:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CFB9431B82B;
	Wed, 26 Nov 2025 09:40:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="alAHDnNH";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ixls+7yE"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37205302774
	for <devicetree@vger.kernel.org>; Wed, 26 Nov 2025 09:40:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764150012; cv=none; b=QzKYcWjtSzXUOfMKyO3TUCWMk1Yxy/9zJyay08Rs86lsnsEPV6EuV5fXrvXrCZbc4m/zu6xKwPd2Ex1cOE9HLYzXdglANVdc14PqW9wCGiDR6wIDzOAupcpRt96cURWMh0+U4TmoIvOUCy5a+Ir+JzOcOsz3B83OjgmbxRZLZfg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764150012; c=relaxed/simple;
	bh=P+4vSBemr+XqaJS5CuSjW7s0tLIfkJf6/LU++jjhoLc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=pTUoYA8tL1B367gHgwvR0YaRMvvVbwcv10cKV68ydbiY7CJJ5TQpcC4/uR/Hb2+gjDgVQjrQcsC+x4Kls1gs7ij1KXId42OKySoeLbpAM9kmkKP/EcPRy8A0tFNntssx439eQf3RCccaExcTsYDF/Y4ghgYCNQCVFWpa5RtfAlE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=alAHDnNH; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ixls+7yE; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AQ71TuM2650413
	for <devicetree@vger.kernel.org>; Wed, 26 Nov 2025 09:40:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	XKAXKIppPV+HGKkCBU59neJ6pS20d5mhwPpNkrTkzMU=; b=alAHDnNHPMWwDg8z
	x4fdf0eEq1OZqpjqMepI15qHoHSMf+YqhR0iThAlFU+A3N0yYVkNwyhKlBEy5idz
	g+Om3mCzCe5paf7hXQDdf644H5A6N/GZ6Gq4i5oQhuajqHhdy8S3gtDsgnvGOJ7/
	9J5HGsvTWhdx7+wfMNRspWEBaTkGaeVnOj56OE3ppFpyU5MWCIZaas/0uI9q3cHJ
	7lmMHWEZMykVtT76p5iPze+gNVKykGog7io37IalVOplZSKLfk64RRjwGyPNRnSP
	jzgNQzGXKpMKanGgDcQKooCsw7vf3D1c1n4++v8FNH64Ox108O1JvZ3FmbJZ1BJ0
	MQ+0uA==
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com [209.85.215.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4anaabukmy-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 26 Nov 2025 09:40:08 +0000 (GMT)
Received: by mail-pg1-f200.google.com with SMTP id 41be03b00d2f7-b6097ca315bso11425770a12.3
        for <devicetree@vger.kernel.org>; Wed, 26 Nov 2025 01:40:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764150008; x=1764754808; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=XKAXKIppPV+HGKkCBU59neJ6pS20d5mhwPpNkrTkzMU=;
        b=ixls+7yEuNYEBx9sN9Wzqxa4/dsoTW9DIHsTWsu5TpfwTfHb+Q/5BuRO6Yn3jRQTDS
         0ipF3OACCYpF0devPn0aLtIQh5MW9MXYUsT5dpOP4vFzZeD4qTvw63O3wlzQErMrTlX2
         n3fGcG3xfwvXAKBzKGtfY50ch9PusyxKa2SP/GQ5FFW+7gdRpZrFUjq2335INrdzrQG7
         lpZ8dheYZi6E6zDmWTEyZEzkqKLcErmwgH3UCLI/3NOho6cSxPkbRWZe9vNfJ2WuwNdW
         4FrABY16vb+8+ncSpXbEI+TYrjRAjXwCW7bf0k3tZO2bC8iYluzSy4IeA2JrPs6/GvJf
         DbLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764150008; x=1764754808;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=XKAXKIppPV+HGKkCBU59neJ6pS20d5mhwPpNkrTkzMU=;
        b=d67ZDoExVxsRsrU5pk8RSNJ8P7/6NIEsrcMslNUIF3XlWMASuAVlBl/k7PPUl4clh6
         EGNd+KmkEttzKmawO6Y1haSs1bjnXM87W2qVZDFg88jQDem38E0vpgKHHXV2NULiit9P
         5r9c/4nCgIRpvInbRklpRG8PEkx8Q0sz7RnUeb5HDUb+sWX1IG5mfV3WnJVhk0IUwLb3
         V4S2lrtYGlhLFhamiDpZqRe0ga5zf7oy7R3XUr83zOS7+gbH3sQRTyTk5cA0Tb1KlYwM
         9BZXm5GStR+HE0XhXPaFXFBMF3bg217BTgo6qPLOifeM9YxQVgZlWN6MDJMTbGoJSwbH
         AixQ==
X-Forwarded-Encrypted: i=1; AJvYcCW+IlxLKfBGzav4h6deUzgDiVlm76A4/EXbUJlycNtG+2IO4CESLJQM3iy9S1rMMiYLpHFy0VrBBH+B@vger.kernel.org
X-Gm-Message-State: AOJu0YyQC2OOQqVegSzcsQ0J1ohMZSR6xWinRpzulNAcamPsb0Z2cnzu
	kz/mu0ealG2rBhiyeyZBxuh9Znvxq40I2jyE1uTFFGhRw9+j38CwkjzHL3PMomDBuqfPzaPfm8a
	D8WHDvSO7tD85MsH4uV/eNdsp8f0OhSx2tKft03mGEhutQj2IsBdwLqPfG9+8sshH
X-Gm-Gg: ASbGncvq36Em3HoFgsfwbUQ9YMJnuGvN+tT0cxLFDQwl2MTXWe10s/YjtyBXPUsdXfr
	tjoi8wstfne4/A2q/K1++ubhXmQefLczdquZ0NoK3IXo+CnB12cD/JNM0iPMuN23jtKz62eI9To
	ZX3njhhDm7zj1/I1Mphs7tbSWTTwNxiGENbxGzBf1OkI+fAxVajGAniDurHvllSxtQnq1Rs9wKw
	0M660mMOhwgpBVI6S2mav6IZS9fUUWeIN09I/zROWPmdzoPUp3vREHDC83Z5842ArrJ17cIQNOc
	eNrK82/TEqbJFu0di0YOMIQEAEbX26dN+y+aoOhRQL8jOtlyn+Yjo96sGSCBKnulJaMTWJJ1qEV
	XEOetsWnmWXycQW97cM075iTg5/v3I8JsiV8OnfCZlblCqHWj5U5X/tC2BeulCxeV
X-Received: by 2002:a05:7022:2521:b0:11b:65e:f2c with SMTP id a92af1059eb24-11c9d60ea19mr14591446c88.10.1764150007676;
        Wed, 26 Nov 2025 01:40:07 -0800 (PST)
X-Google-Smtp-Source: AGHT+IH49U7C0moElexCLrZcV2e+MlUgzEqGlJSAWySjH4yEsEcXnQAS0Ww7o7oxUV9i0HPgQkXFpg==
X-Received: by 2002:a05:7022:2521:b0:11b:65e:f2c with SMTP id a92af1059eb24-11c9d60ea19mr14591417c88.10.1764150007100;
        Wed, 26 Nov 2025 01:40:07 -0800 (PST)
Received: from hu-hangxian-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-11c93e3e784sm69150307c88.5.2025.11.26.01.40.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Nov 2025 01:40:06 -0800 (PST)
From: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
Date: Wed, 26 Nov 2025 01:38:36 -0800
Subject: [PATCH 3/7] media: qcom: camss: Add SM8750 compatible camss driver
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251126-add-support-for-camss-on-sm8750-v1-3-646fee2eb720@oss.qualcomm.com>
References: <20251126-add-support-for-camss-on-sm8750-v1-0-646fee2eb720@oss.qualcomm.com>
In-Reply-To: <20251126-add-support-for-camss-on-sm8750-v1-0-646fee2eb720@oss.qualcomm.com>
To: Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Robert Foss <rfoss@kernel.org>, Andi Shyti <andi.shyti@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Todor Tomov <todor.too@gmail.com>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Cc: linux-i2c@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-media@vger.kernel.org,
        jeyaprakash.soundrapandian@oss.qualcomm.com,
        Vijay Kumar Tumati <vijay.tumati@oss.qualcomm.com>,
        Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Authority-Analysis: v=2.4 cv=Vd36/Vp9 c=1 sm=1 tr=0 ts=6926caf8 cx=c_pps
 a=oF/VQ+ItUULfLr/lQ2/icg==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=gE60Ov1lhapgyOv8Ur0A:9
 a=QEXdDO2ut3YA:10 a=3WC7DwWrALyhR5TkjVHa:22
X-Proofpoint-ORIG-GUID: otGr1LKfC7tzOSOk-2LD_z_phVPVVUd9
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTI2MDA3OCBTYWx0ZWRfX7UoxkdyXKIW2
 WrZtsHVQaXdxEzv3kFF8AE4gupyFX05nwk0tzH9WCBCBg8n5pzIljz7RmUvsJ8vkYPQFb8Ifm9C
 m92E9YnJgmbXDVKC1N7t2YnUwfR3Y+/fiWbp1m8ruvef0F7DLLvjWvciYd6udVFUVxhcjhqDfpU
 zbc1d4eIjnjevOtVBOBGdew8yL09LvAtG2YxaRru+mW16vseln4GmsuFCRDh4Bd1/gVtNl7TnTh
 ESiKUcsHnU8E5MyOvk9DRC8eHoPczBBoUezDPkSYJTZ9d5C2xWrLDPiIrUo5wvU/E9EZBOiHUno
 zTJaH14K9KcNdjxZQZ/kv2T/mxbStcoeQp6H7W/weDssE79eIFWx6D/VN5hm0kns/p6RcqugVr5
 MGlB98HxrLlK5iEPetLaq9IrUkt20Q==
X-Proofpoint-GUID: otGr1LKfC7tzOSOk-2LD_z_phVPVVUd9
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-25_02,2025-11-25_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 spamscore=0 impostorscore=0 adultscore=0 phishscore=0
 suspectscore=0 malwarescore=0 priorityscore=1501 bulkscore=0
 lowpriorityscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2511260078

Add support for SM8750 in the camss driver. Add high level resource
information along with the bus bandwidth votes. Module level detailed
resource information will be enumerated in the following patches of the
series.

Signed-off-by: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
---
 drivers/media/platform/qcom/camss/camss.c | 22 ++++++++++++++++++++++
 drivers/media/platform/qcom/camss/camss.h |  1 +
 2 files changed, 23 insertions(+)

diff --git a/drivers/media/platform/qcom/camss/camss.c b/drivers/media/platform/qcom/camss/camss.c
index 5ee43c8a9ae4..805e2fbd97dd 100644
--- a/drivers/media/platform/qcom/camss/camss.c
+++ b/drivers/media/platform/qcom/camss/camss.c
@@ -3870,6 +3870,20 @@ static const struct resources_icc icc_res_sa8775p[] = {
 	},
 };
 
+static const struct resources_icc icc_res_sm8750[] = {
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
 static const struct camss_subdev_resources csiphy_res_x1e80100[] = {
 	/* CSIPHY0 */
 	{
@@ -5283,6 +5297,13 @@ static const struct camss_resources sm8650_resources = {
 	.vfe_num = ARRAY_SIZE(vfe_res_sm8650),
 };
 
+static const struct camss_resources sm8750_resources = {
+	.version = CAMSS_8750,
+	.pd_name = "top",
+	.icc_res = icc_res_sm8750,
+	.icc_path_num = ARRAY_SIZE(icc_res_sm8750),
+};
+
 static const struct camss_resources x1e80100_resources = {
 	.version = CAMSS_X1E80100,
 	.pd_name = "top",
@@ -5314,6 +5335,7 @@ static const struct of_device_id camss_dt_match[] = {
 	{ .compatible = "qcom,sm8250-camss", .data = &sm8250_resources },
 	{ .compatible = "qcom,sm8550-camss", .data = &sm8550_resources },
 	{ .compatible = "qcom,sm8650-camss", .data = &sm8650_resources },
+	{ .compatible = "qcom,sm8750-camss", .data = &sm8750_resources },
 	{ .compatible = "qcom,x1e80100-camss", .data = &x1e80100_resources },
 	{ }
 };
diff --git a/drivers/media/platform/qcom/camss/camss.h b/drivers/media/platform/qcom/camss/camss.h
index b1cc4825f027..f87b615ad1a9 100644
--- a/drivers/media/platform/qcom/camss/camss.h
+++ b/drivers/media/platform/qcom/camss/camss.h
@@ -91,6 +91,7 @@ enum camss_version {
 	CAMSS_845,
 	CAMSS_8550,
 	CAMSS_8650,
+	CAMSS_8750,
 	CAMSS_8775P,
 	CAMSS_KAANAPALI,
 	CAMSS_X1E80100,

-- 
2.34.1


