Return-Path: <devicetree+bounces-245602-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7222ECB2E97
	for <lists+devicetree@lfdr.de>; Wed, 10 Dec 2025 13:37:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 69DFF302A1CC
	for <lists+devicetree@lfdr.de>; Wed, 10 Dec 2025 12:36:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D319E324B19;
	Wed, 10 Dec 2025 12:36:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="nQ10OZJf";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ccQLJKav"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B30E232471C
	for <devicetree@vger.kernel.org>; Wed, 10 Dec 2025 12:36:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765370192; cv=none; b=J3+scRJnjIWn28QkuiCTxPW9lTmWseBBAtu5Mhqj3qzHgBR5vCEmEPQNSFI9FFey8gptHoIYKb9a4HCwKzYTuYzDOJPAPUYuEWG11mCTajjN00plvCSu4hVeVH1F8IvTYY485KvSEyBTwVHAeVdegBI+43tIyyF/08cNyyGaNhg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765370192; c=relaxed/simple;
	bh=K2LisNNEJ0oN5Zf+qubT5qIXQn1XIm1FQK9VWYwmeho=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=t8LXvuMUm4cdDuKxNQA46XhTYALkU11Sk6VnH5owm2nKrGAO4h2WNwd/qnrsW4kNi+rkXSNqA1RAYeWw7h7Kr9TFOifiRCFVm+IxaWombI6jDhb1aXxr59HBytlDm7SMeUD8C8hdWJZvlTUd3ceEE2ZrBJEJCBqU/RkNZ182MWs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=nQ10OZJf; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ccQLJKav; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BA8e0Ca2493199
	for <devicetree@vger.kernel.org>; Wed, 10 Dec 2025 12:36:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	SIVzJax+E0S+v6i1dIVMwOWP15udvaF6NPUnzMn/utU=; b=nQ10OZJfeER8gFEd
	WTaJTUl9rr9/FZr84GPRnku0hiWs0g9AiVjZcAwPZBY+DAooS8aO2gQ7Uknm7h0v
	lfcMEuwzQ2ji7RUrYqtXg5VFm84ua5Ti5YVLpJiGSY8PE8P1xOkitBTYin62HRjo
	H9FaYj5F+QgOe9WAjl0MSy3oXoqwGRL1PIdRIn4ORmSPaCSpJs4+6ib+tJP14xJy
	/s+fbpIAc2O0qTipCmayzgYQXu1jYiiv8Y6l15EgUCbwRFSYC0tkMgQtl7GqWPrZ
	NBuIQT+cro+2XlS2I0qrTmlxXcfo96gms4tDcU5Wlas3G1BZqFWQguxizxwiRK4U
	CjWANA==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ay1xwsbb8-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 10 Dec 2025 12:36:29 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2980ef53fc5so134690255ad.1
        for <devicetree@vger.kernel.org>; Wed, 10 Dec 2025 04:36:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765370187; x=1765974987; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SIVzJax+E0S+v6i1dIVMwOWP15udvaF6NPUnzMn/utU=;
        b=ccQLJKavol7b8LSs9j/i1dk1aOyWMaO8Whrii/OzxewP9e2d9H+hB6l7xvaj1E4Ab7
         ObSL4IbVhY0wiQyv/C/aqrpnXRJQ6H8aOwZ/QUDA3oYcQ7mf+vKJewazlwJyVGYqEY3y
         pFcVJlQBKLuGbhIYYM3+UhQC6Avv/Lhb8Kn5hH8bBsowHKo1V2zrP150+23wj5WMs1r7
         ZLONIup1tRFUT38DvUndDuDcLY4vynVySnHLhAn2pUa7xmBtE41GSnWJnMPpXbadM3Aj
         76A2veoBVnCuYHnwgpCzc1nKr1nj3HOEXcGY4t5OYPmoUn0iwOF4ZVRqsc4XtBghS7kc
         F67Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765370187; x=1765974987;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=SIVzJax+E0S+v6i1dIVMwOWP15udvaF6NPUnzMn/utU=;
        b=oIUjgZuowr2eDvxaHfY23eksW3+kLqbWSDN1EUKPy7A+9PSnIFYveoyQUabta3l/85
         dySsJRVlupvh1p7BLyQuKrileCZB6twPcC45twK0SZOfo1dNOoD8mXjgQrezE5zKOcM1
         NdyyLe5Kg8rlKD9SxYZW61qsSOkJrnElAvMQUjHKrw9ARpzaiu6D+xUQL0oHDtIgGw5N
         wcxZH3MOcqCeeGpebnUe0AZZ+hL0M1LxRPjXO/rFUYB8O9sXuIXHu9qrasPpTPV3YtzC
         LWZR+NkRtVQesEsAIcdlp10Rug22F7/hQErl8amccSYOkptIdnrC6ZsEXAkfW4vg8liM
         rcHA==
X-Forwarded-Encrypted: i=1; AJvYcCXqzShbuy1FQIC0rnvuNxufo/+sBiWOEgxzqflEqCt9vqSTVMIyZByAJCpKp3qzVSZ2QWttynwvkOzv@vger.kernel.org
X-Gm-Message-State: AOJu0Yxw4iGBDbQMN4mEii7UFxnG9ka4Au1FxeLLMMjl45EYVjPz0Kwk
	76vrgmlMeWBx6EpLm9pRZCbCtf6i3BlFUc7vfn9hL46rcmQthb1eoJPKATcJy3kCDb3ITQbV2Ys
	KY1FbzBL1n4CYLsWBzt9FvxkfA2T0JYb9dAcwt+evlTchsU6DK/x2to3u5UL5t7p3
X-Gm-Gg: AY/fxX5DFwUcuB2JNA417TdAlDSEoZJzuQJC6Yw+Umr6iV/VTcxoZBbztJ0RskeHusE
	XjCatoqvEA8lncqKKDgY7Ou9E6K4CHjLKV74NOa66+x0eXTyNS4TMsnglviVNP8QyvLzuQ+NBke
	hfYx9pVV06mLVCapfmObXI2RDu3F68PpOHptIMzF7l+WPp6yPkg3jf0XVoDzrJpecFfxiE5cxVw
	FTH4OB9EzHlt4ol9Co9FP4Z10L+4QNSMC9PrFoNAcCTJkT5vLFuUk/phQVhc1bqj6OjBdGQK5as
	dM4PFPYXqc34lRUOeR4uuLNXrH8jadspu134HQsQCVov4q3P2sarzyq8C1C0TSLzlCN+9BOAlw/
	bet5yV3NwGsnoIMguB0O/2G1a2x8m5QzZJifWf02zN9y1
X-Received: by 2002:a17:903:2f84:b0:24b:24dc:91a7 with SMTP id d9443c01a7336-29ec27d176dmr21465395ad.45.1765370186961;
        Wed, 10 Dec 2025 04:36:26 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGDhNU4dx1DOB/lxhNYugfbAS6u2SC8AyS+LN1LuZq80qEGnrjX+6CXcmsCKR6Bg1YbWRx9CA==
X-Received: by 2002:a17:903:2f84:b0:24b:24dc:91a7 with SMTP id d9443c01a7336-29ec27d176dmr21465165ad.45.1765370186438;
        Wed, 10 Dec 2025 04:36:26 -0800 (PST)
Received: from hu-vgarodia-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29daeaab9c0sm185434615ad.68.2025.12.10.04.36.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Dec 2025 04:36:26 -0800 (PST)
From: Vikash Garodia <vikash.garodia@oss.qualcomm.com>
Date: Wed, 10 Dec 2025 18:06:00 +0530
Subject: [PATCH v4 2/6] media: iris: Add support for multiple TZ content
 protection(CP) configs
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251210-knp_video-v4-2-8d11d840358a@oss.qualcomm.com>
References: <20251210-knp_video-v4-0-8d11d840358a@oss.qualcomm.com>
In-Reply-To: <20251210-knp_video-v4-0-8d11d840358a@oss.qualcomm.com>
To: Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Bryan O'Donoghue <bod@kernel.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Vishnu Reddy <busanna.reddy@oss.qualcomm.com>,
        Vikash Garodia <vikash.garodia@oss.qualcomm.com>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1765370172; l=8089;
 i=vikash.garodia@oss.qualcomm.com; s=20241104; h=from:subject:message-id;
 bh=K2LisNNEJ0oN5Zf+qubT5qIXQn1XIm1FQK9VWYwmeho=;
 b=t6YhZ3RZvYq0gzhH8yQxDFdTXlioNUo+No0yy5e2dBvryXCJUqT2e1TcypFPB+n7Vls0UZ/Te
 gM+WGAhobZuA8StkbFQdEUz+5N8+vGmWI7aO8YBE8VGLrMZAGizUisW
X-Developer-Key: i=vikash.garodia@oss.qualcomm.com; a=ed25519;
 pk=LY9Eqp4KiHWxzGNKGHbwRFEJOfRCSzG/rxQNmvZvaKE=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjEwMDEwMCBTYWx0ZWRfX4qZOmD2KgTLm
 3qSV2yLyeYf+pwgzNv5lNQZ/UR4sSXKcG3SxGcbqnrjhg9z/XWF82N7mxlq+63NbGA15TBNqKiy
 r1qsX/+EjJ2Fh8C7p9BPGv6vKR5tr+HMIdWBVo+q9XP/z7GM+RPatwd/S9MJ1Qh7ne/vv7TDICI
 EUxUkAPl/JaG19w0V190tBillfkthzZFLx2WfbttLCYsL0hR1mueSeNJdLD2irwO7qlURSOgD3M
 RUFm6znb09iC649BHYqiClMrvCX0+6EJJtoBxGKY+po/J2YgelKItj1/gFZ5l60mecTohnjSIjK
 zNuGyhKd4R3yNOVkqw1l68IXlNCU+0qSnjyutNnTYJ9h5XaS6NNuGi8rSmyTWY6p82QE705+kww
 LDUuWsfBJmI2ztEZNzRo4FE9ODba9w==
X-Proofpoint-ORIG-GUID: 2Lcr113LodH4PrL1dC3l0sNGhTY7pkCv
X-Proofpoint-GUID: 2Lcr113LodH4PrL1dC3l0sNGhTY7pkCv
X-Authority-Analysis: v=2.4 cv=F/lat6hN c=1 sm=1 tr=0 ts=6939694d cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8
 a=8r50Y1FI9EZ4QPj5cKYA:9 a=QEXdDO2ut3YA:10 a=324X-CrmTo6CU4MGRt3R:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-09_05,2025-12-09_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 lowpriorityscore=0 clxscore=1015 bulkscore=0 adultscore=0
 spamscore=0 priorityscore=1501 phishscore=0 impostorscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512100100

vpu4 needs an additional configuration with respect to CP regions. Make
the CP configuration as array such that the multiple configuration can be
managed per platform.

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Co-developed-by: Vishnu Reddy <busanna.reddy@oss.qualcomm.com>
Signed-off-by: Vishnu Reddy <busanna.reddy@oss.qualcomm.com>
Signed-off-by: Vikash Garodia <vikash.garodia@oss.qualcomm.com>
---
 drivers/media/platform/qcom/iris/iris_firmware.c   | 23 ++++++++++++---------
 .../platform/qcom/iris/iris_platform_common.h      |  3 ++-
 .../media/platform/qcom/iris/iris_platform_gen1.c  | 18 +++++++++-------
 .../media/platform/qcom/iris/iris_platform_gen2.c  | 24 ++++++++++++++--------
 4 files changed, 41 insertions(+), 27 deletions(-)

diff --git a/drivers/media/platform/qcom/iris/iris_firmware.c b/drivers/media/platform/qcom/iris/iris_firmware.c
index 679444327ed73a40c5cacd36f4156fc94c9ca45f..5f408024e967fd21ade66cc3fa377d8507f9002e 100644
--- a/drivers/media/platform/qcom/iris/iris_firmware.c
+++ b/drivers/media/platform/qcom/iris/iris_firmware.c
@@ -64,9 +64,9 @@ static int iris_load_fw_to_memory(struct iris_core *core, const char *fw_name)
 
 int iris_fw_load(struct iris_core *core)
 {
-	struct tz_cp_config *cp_config = core->iris_platform_data->tz_cp_config_data;
+	const struct tz_cp_config *cp_config;
 	const char *fwpath = NULL;
-	int ret;
+	int i, ret;
 
 	ret = of_property_read_string_index(core->dev->of_node, "firmware-name", 0,
 					    &fwpath);
@@ -85,14 +85,17 @@ int iris_fw_load(struct iris_core *core)
 		return ret;
 	}
 
-	ret = qcom_scm_mem_protect_video_var(cp_config->cp_start,
-					     cp_config->cp_size,
-					     cp_config->cp_nonpixel_start,
-					     cp_config->cp_nonpixel_size);
-	if (ret) {
-		dev_err(core->dev, "protect memory failed\n");
-		qcom_scm_pas_shutdown(core->iris_platform_data->pas_id);
-		return ret;
+	for (i = 0; i < core->iris_platform_data->tz_cp_config_data_size; i++) {
+		cp_config = &core->iris_platform_data->tz_cp_config_data[i];
+		ret = qcom_scm_mem_protect_video_var(cp_config->cp_start,
+						     cp_config->cp_size,
+						     cp_config->cp_nonpixel_start,
+						     cp_config->cp_nonpixel_size);
+		if (ret) {
+			dev_err(core->dev, "qcom_scm_mem_protect_video_var failed: %d\n", ret);
+			qcom_scm_pas_shutdown(core->iris_platform_data->pas_id);
+			return ret;
+		}
 	}
 
 	return ret;
diff --git a/drivers/media/platform/qcom/iris/iris_platform_common.h b/drivers/media/platform/qcom/iris/iris_platform_common.h
index f63fb58b2fa87d31407be0f14524c963edd85d68..29900c3ea9b9ebbab614c804a249b08ba6001494 100644
--- a/drivers/media/platform/qcom/iris/iris_platform_common.h
+++ b/drivers/media/platform/qcom/iris/iris_platform_common.h
@@ -223,7 +223,8 @@ struct iris_platform_data {
 	u32 inst_fw_caps_dec_size;
 	const struct platform_inst_fw_cap *inst_fw_caps_enc;
 	u32 inst_fw_caps_enc_size;
-	struct tz_cp_config *tz_cp_config_data;
+	const struct tz_cp_config *tz_cp_config_data;
+	u32 tz_cp_config_data_size;
 	u32 core_arch;
 	u32 hw_response_timeout;
 	struct ubwc_config_data *ubwc_config;
diff --git a/drivers/media/platform/qcom/iris/iris_platform_gen1.c b/drivers/media/platform/qcom/iris/iris_platform_gen1.c
index 6092667687bfe34a52f3ec4865f99eddeea435a8..d1dda98271fb7ecdc396fe1a2dfda1b73720dec8 100644
--- a/drivers/media/platform/qcom/iris/iris_platform_gen1.c
+++ b/drivers/media/platform/qcom/iris/iris_platform_gen1.c
@@ -278,11 +278,13 @@ static const char * const sm8250_opp_clk_table[] = {
 	NULL,
 };
 
-static struct tz_cp_config tz_cp_config_sm8250 = {
-	.cp_start = 0,
-	.cp_size = 0x25800000,
-	.cp_nonpixel_start = 0x01000000,
-	.cp_nonpixel_size = 0x24800000,
+static const struct tz_cp_config tz_cp_config_sm8250[] = {
+	{
+		.cp_start = 0,
+		.cp_size = 0x25800000,
+		.cp_nonpixel_start = 0x01000000,
+		.cp_nonpixel_size = 0x24800000,
+	},
 };
 
 static const u32 sm8250_vdec_input_config_param_default[] = {
@@ -348,7 +350,8 @@ const struct iris_platform_data sm8250_data = {
 	.inst_fw_caps_dec_size = ARRAY_SIZE(inst_fw_cap_sm8250_dec),
 	.inst_fw_caps_enc = inst_fw_cap_sm8250_enc,
 	.inst_fw_caps_enc_size = ARRAY_SIZE(inst_fw_cap_sm8250_enc),
-	.tz_cp_config_data = &tz_cp_config_sm8250,
+	.tz_cp_config_data = tz_cp_config_sm8250,
+	.tz_cp_config_data_size = ARRAY_SIZE(tz_cp_config_sm8250),
 	.hw_response_timeout = HW_RESPONSE_TIMEOUT_VALUE,
 	.num_vpp_pipe = 4,
 	.max_session_count = 16,
@@ -398,7 +401,8 @@ const struct iris_platform_data sc7280_data = {
 	.inst_fw_caps_dec_size = ARRAY_SIZE(inst_fw_cap_sm8250_dec),
 	.inst_fw_caps_enc = inst_fw_cap_sm8250_enc,
 	.inst_fw_caps_enc_size = ARRAY_SIZE(inst_fw_cap_sm8250_enc),
-	.tz_cp_config_data = &tz_cp_config_sm8250,
+	.tz_cp_config_data = tz_cp_config_sm8250,
+	.tz_cp_config_data_size = ARRAY_SIZE(tz_cp_config_sm8250),
 	.hw_response_timeout = HW_RESPONSE_TIMEOUT_VALUE,
 	.num_vpp_pipe = 1,
 	.no_aon = true,
diff --git a/drivers/media/platform/qcom/iris/iris_platform_gen2.c b/drivers/media/platform/qcom/iris/iris_platform_gen2.c
index 65860e3f43700ddb70eba617d78971c47945d008..38734293d811cd5a12244797dd0cfcd95e3fb311 100644
--- a/drivers/media/platform/qcom/iris/iris_platform_gen2.c
+++ b/drivers/media/platform/qcom/iris/iris_platform_gen2.c
@@ -646,11 +646,13 @@ static struct ubwc_config_data ubwc_config_sm8550 = {
 	.bank_spreading = 1,
 };
 
-static struct tz_cp_config tz_cp_config_sm8550 = {
-	.cp_start = 0,
-	.cp_size = 0x25800000,
-	.cp_nonpixel_start = 0x01000000,
-	.cp_nonpixel_size = 0x24800000,
+static const struct tz_cp_config tz_cp_config_sm8550[] = {
+	{
+		.cp_start = 0,
+		.cp_size = 0x25800000,
+		.cp_nonpixel_start = 0x01000000,
+		.cp_nonpixel_size = 0x24800000,
+	},
 };
 
 static const u32 sm8550_vdec_input_config_params_default[] = {
@@ -770,7 +772,8 @@ const struct iris_platform_data sm8550_data = {
 	.inst_fw_caps_dec_size = ARRAY_SIZE(inst_fw_cap_sm8550_dec),
 	.inst_fw_caps_enc = inst_fw_cap_sm8550_enc,
 	.inst_fw_caps_enc_size = ARRAY_SIZE(inst_fw_cap_sm8550_enc),
-	.tz_cp_config_data = &tz_cp_config_sm8550,
+	.tz_cp_config_data = tz_cp_config_sm8550,
+	.tz_cp_config_data_size = ARRAY_SIZE(tz_cp_config_sm8550),
 	.core_arch = VIDEO_ARCH_LX,
 	.hw_response_timeout = HW_RESPONSE_TIMEOUT_VALUE,
 	.ubwc_config = &ubwc_config_sm8550,
@@ -863,7 +866,8 @@ const struct iris_platform_data sm8650_data = {
 	.inst_fw_caps_dec_size = ARRAY_SIZE(inst_fw_cap_sm8550_dec),
 	.inst_fw_caps_enc = inst_fw_cap_sm8550_enc,
 	.inst_fw_caps_enc_size = ARRAY_SIZE(inst_fw_cap_sm8550_enc),
-	.tz_cp_config_data = &tz_cp_config_sm8550,
+	.tz_cp_config_data = tz_cp_config_sm8550,
+	.tz_cp_config_data_size = ARRAY_SIZE(tz_cp_config_sm8550),
 	.core_arch = VIDEO_ARCH_LX,
 	.hw_response_timeout = HW_RESPONSE_TIMEOUT_VALUE,
 	.ubwc_config = &ubwc_config_sm8550,
@@ -946,7 +950,8 @@ const struct iris_platform_data sm8750_data = {
 	.inst_fw_caps_dec_size = ARRAY_SIZE(inst_fw_cap_sm8550_dec),
 	.inst_fw_caps_enc = inst_fw_cap_sm8550_enc,
 	.inst_fw_caps_enc_size = ARRAY_SIZE(inst_fw_cap_sm8550_enc),
-	.tz_cp_config_data = &tz_cp_config_sm8550,
+	.tz_cp_config_data = tz_cp_config_sm8550,
+	.tz_cp_config_data_size = ARRAY_SIZE(tz_cp_config_sm8550),
 	.core_arch = VIDEO_ARCH_LX,
 	.hw_response_timeout = HW_RESPONSE_TIMEOUT_VALUE,
 	.ubwc_config = &ubwc_config_sm8550,
@@ -1033,7 +1038,8 @@ const struct iris_platform_data qcs8300_data = {
 	.inst_fw_caps_dec_size = ARRAY_SIZE(inst_fw_cap_sm8550_dec),
 	.inst_fw_caps_enc = inst_fw_cap_sm8550_enc,
 	.inst_fw_caps_enc_size = ARRAY_SIZE(inst_fw_cap_sm8550_enc),
-	.tz_cp_config_data = &tz_cp_config_sm8550,
+	.tz_cp_config_data = tz_cp_config_sm8550,
+	.tz_cp_config_data_size = ARRAY_SIZE(tz_cp_config_sm8550),
 	.core_arch = VIDEO_ARCH_LX,
 	.hw_response_timeout = HW_RESPONSE_TIMEOUT_VALUE,
 	.ubwc_config = &ubwc_config_sm8550,

-- 
2.34.1


