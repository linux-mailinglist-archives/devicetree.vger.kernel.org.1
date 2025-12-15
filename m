Return-Path: <devicetree+bounces-246459-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FB53CBD022
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 09:44:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8ADA43016CD7
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 08:40:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 29F9B313E38;
	Mon, 15 Dec 2025 08:40:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="GiUHDZ+3";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="eSjnLt2W"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E7F0329C5B
	for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 08:40:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765788032; cv=none; b=FAU3scj5uSnoTCEMwkGfhslguj84nvGdEmnOHB0VyUQ0G0jwcCFBkTtnPO5S1mb6E+rXu5nmQpsqMx0Yg1fkmmds8cRKiYMLLg0y6OLTeAgF3/KZuQaLAYXS6G96EyV1RK6xVDvhGcc/qAFoDJCX1ZKz0ljXm97As10Xgetu2ZA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765788032; c=relaxed/simple;
	bh=9NEfqZGAspJARqDUStHlgocJrjSmzTYofnsxILM05Aw=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=DUQe19ViwjAerb9dEBU6UWOGbi5Y0A2r0dvkSMW+mvYQnvYHHJ4586ntQkXffycmFyiLcNfIozHz6k6Ez+geKT2pjbChT3Atz9EPPw0v7lrRBq11+gn0vFQox2Nk++Qew6JnwGigJyNfnDXhCiA9x8AZosvnzojqF6X9i2J6OS8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=GiUHDZ+3; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=eSjnLt2W; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BEN01Em2762639
	for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 08:40:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=T5hormO1Tzm
	iMptirNKEBXdbWFDw2mJd8ZK7F/ndOPI=; b=GiUHDZ+3mRxBGRkuHWnuU4KxTRD
	BRMMKpl+1xHry6oADWGSvdPkZvY+rD1NVwqvKuZTscyCSpqC5xzOLNewgDYP6YGy
	iQ61YS19nKRVoG12kW4M0mqs9caEtkDSLBDb9ebB/OAAHNzulM81ShFkmb9NG/gt
	0xvcMsDj9BArDuTlawLA+3w84pP4koFgHsqdE2qB5zmkLa+SsjkES55fSvh4fbi7
	qEVi1Fx7a6i4RwFIAkpzx5HkBhFD+v6eLJkUFK4n8OSY9n3CenOAeOEBCuQ3wQvP
	sh6hzVTwH8iXJrkfWwqGmKowSWerkizyQR7S+iBsnRw3Ysich7vchD9iTNg==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b11bcutmx-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 08:40:29 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4ee09211413so90985151cf.2
        for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 00:40:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765788029; x=1766392829; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=T5hormO1TzmiMptirNKEBXdbWFDw2mJd8ZK7F/ndOPI=;
        b=eSjnLt2W70LuLHIYq9+9raYEGA9sk7i2a7Zs2OnYt5G/wG1HfreweThpNoySuO3WIJ
         nfib6SDQ92FtUSXT3SMfLTT5BTPnN7YDNTE/rAg1ULP69Cw4tkVOImzlJEHxiHcm2hJO
         KjSg3Wxd1N74hV9wkhM1jDastGgugmWf/DUow/Kk9vEQKAfSJHQyWE2aGPGX59jWBUAl
         LfA7lcNTZW4wSmQ0DBkSe7punLdVXaBdNSBHfpqsKwh2xuM5Ow18I5oXpSFtINjb7BW2
         eQCEZE3nFhU36bwal2sskydQlZTYGr/EiPCyZ23RgBTpD9LHfLrXIyux2w8bPY9Kstq4
         yckw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765788029; x=1766392829;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=T5hormO1TzmiMptirNKEBXdbWFDw2mJd8ZK7F/ndOPI=;
        b=VtYLKtAWRaWOKadCz+nT7H5Kf4WJUjIdwW14AqF4PLJrVB3pBCyrZNacGpine19OKj
         lchwsmgpS6gO+jtlJRhg5i71vU9O7x0J4ogYeSueIg0Gy1/qeBhjHUnX6uW9zGoUZ3sQ
         EQkwsKMPv4nxhwoteT6hYG2r79HfgBXg1pH5+uWpuWoqjIKw+QjkLAtWo7kejbxT098S
         cwuAXsrnLzx28XXnMQsJjXHSB2NyGFgcYOErgZroVUIugvygBQJSIku6ABqpZ+3q9zsW
         t09eSU2/xO4p+f2WMrUKQTTfKdzlobfe6RZzAIlDueZ4jaLG8Ib0/VlvKgUG8Z71Vv6K
         W38w==
X-Forwarded-Encrypted: i=1; AJvYcCUJujzwdRQ/cYJk/o+PHyyReq/w0eiSMnGt9jf7C1lT6ks0PhlSgsbOkjVY0gmsgNaRQqLcPBzPWzMJ@vger.kernel.org
X-Gm-Message-State: AOJu0YwuoGENpIkFHfBZrAQiULtZo6iE8X//LRUK5hKY1ByYbS5tMVhg
	DOeSbyux1zdExb60bkzVStAIJaMpWWQcA/WRCaNS/zVHTa1edkG9HyL3+BJZbVnzTDlzAU496Sr
	uDBv6QNseNmiVIpWJLdDAhYV2iqv0N/5U1aEypYMcbuorvxylij4ZrxY3Cwdb69IF
X-Gm-Gg: AY/fxX7KTLYGDegaHWXTBJ0zdqz00zeXajwpvHFwNELIFDEw+4ozGI2+vF2xtMR3TJZ
	nD2UQflFwT7xDq7cVpwDw5iEFx32vfzsbiQdAY4STO2ZDLCBj3zuaJPBf6Zr+jr3suPAuiC7PvW
	ieSvpsUsf12q4atrPbAEu/WYdoXwZT1A9p+ZBrTIuRqHAJnKDmfI0O1Kypbc+CTpTTn/O1xSJnZ
	gks7DYGvmJW0290YsIzNuvLKmFIwdi7jwTNYFn0a6R6L9dGMil1vJOJxcN2fJoVgRRg/yuwEIt2
	uVE6U5GtO4G+00VNmGv3iFKMxI01ejvot3rh+mwkLpTt+/xlpyU28Bf+xiJnV7+2ErWFH1T8xP1
	jyMIQ6stHXA8ZbcOE7zKEQu0pT4LDz3lnmjwl/2YQFAOKRlFyJNchoO11N8Hpjsdv//4=
X-Received: by 2002:a05:622a:4c8d:b0:4b7:a680:2111 with SMTP id d75a77b69052e-4f1d049f54bmr115502601cf.8.1765788028604;
        Mon, 15 Dec 2025 00:40:28 -0800 (PST)
X-Google-Smtp-Source: AGHT+IE21JM+j2xLBWwUMji/MxEsoKpff5aogjPA7lsLdjIGqhs/FRgyL+lLOBLkdvbMHjyrb9e34Q==
X-Received: by 2002:a05:622a:4c8d:b0:4b7:a680:2111 with SMTP id d75a77b69052e-4f1d049f54bmr115502311cf.8.1765788028170;
        Mon, 15 Dec 2025 00:40:28 -0800 (PST)
Received: from yuanjiey.qualcomm.com (Global_NAT1_IAD_FW.qualcomm.com. [129.46.232.65])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-4f1bd6b50afsm90557971cf.21.2025.12.15.00.40.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Dec 2025 00:40:27 -0800 (PST)
From: yuanjie yang <yuanjie.yang@oss.qualcomm.com>
To: robin.clark@oss.qualcomm.com, lumag@kernel.org, abhinav.kumar@linux.dev,
        jesszhan0024@gmail.com, sean@poorly.run, marijn.suijten@somainline.org,
        airlied@gmail.com, simona@ffwll.ch, maarten.lankhorst@linux.intel.com,
        mripard@kernel.org, tzimmermann@suse.de, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, neil.armstrong@linaro.org,
        yongxing.mou@oss.qualcomm.com, konrad.dybcio@oss.qualcomm.com
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, tingwei.zhang@oss.qualcomm.com,
        aiqun.yu@oss.qualcomm.com
Subject: [PATCH v3 05/11] drm/msm/mdss: Add support for Kaanapali
Date: Mon, 15 Dec 2025 16:38:48 +0800
Message-Id: <20251215083854.577-6-yuanjie.yang@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251215083854.577-1-yuanjie.yang@oss.qualcomm.com>
References: <20251215083854.577-1-yuanjie.yang@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: TgEz2eZmUsccadymsAY0s3rF3xi5cLQE
X-Authority-Analysis: v=2.4 cv=ebMwvrEH c=1 sm=1 tr=0 ts=693fc97d cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=C3Dk8TwHQYyIj7nOf9RCJw==:17
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=sRsiwY7EFmHr75jNHr8A:9 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE1MDA3MiBTYWx0ZWRfXyCETukbUsGhV
 w3GrrQT0yDE6nYaUJTIysvsUYcsfNVDzyqGBPpAQSo3spXPH5C+32cJkBjy609GkzSUIBAr/87R
 zFq3L2h5lL99L4mjmXz23jPrnlRfDw3kZnxCtfDcDzbKi2DSsx7XOcfCgXxaEsptFHiXR4RrYwL
 OL/ezUZAFDxYOJguUvtya0s5LqdnmZkZQ9p1UFtJpG8H7bIG98AGOAz/IDGj9w9VkG5iu6MnkoJ
 t6VnLlh/Aauk72EuCKsJ8pO2sfiBkCbHV9bSEsJQPIVcNjjFWeXkXP895DEXkhX68EutxAaSRUE
 lpuiIXJSKX/OCqEpgH2EUgEO2GROwAiu1sQEmyGAi5DYfeHc7Oa6GNnxCei3xX5KC1bxXlgpt/s
 63Y7c6MKWh//0E3cUGJmHnHyh9MWzQ==
X-Proofpoint-ORIG-GUID: TgEz2eZmUsccadymsAY0s3rF3xi5cLQE
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-15_01,2025-12-15_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 impostorscore=0 suspectscore=0 phishscore=0
 priorityscore=1501 spamscore=0 bulkscore=0 clxscore=1015 malwarescore=0
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2512150072

From: Yuanjie Yang <yuanjie.yang@oss.qualcomm.com>

Add mdss support for the Qualcomm Kaanapali platform.

Co-developed-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
Signed-off-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
Signed-off-by: Yuanjie Yang <yuanjie.yang@oss.qualcomm.com>
---
 drivers/gpu/drm/msm/msm_mdss.c | 10 +++++++++-
 1 file changed, 9 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/msm/msm_mdss.c b/drivers/gpu/drm/msm/msm_mdss.c
index bf9a33e925ac..cd330870a6fb 100644
--- a/drivers/gpu/drm/msm/msm_mdss.c
+++ b/drivers/gpu/drm/msm/msm_mdss.c
@@ -239,7 +239,11 @@ static void msm_mdss_setup_ubwc_dec_50(struct msm_mdss *msm_mdss)
 
 	writel_relaxed(value, msm_mdss->mmio + REG_MDSS_UBWC_STATIC);
 
-	writel_relaxed(4, msm_mdss->mmio + REG_MDSS_UBWC_CTRL_2);
+	if (data->ubwc_dec_version == UBWC_5_0)
+		writel_relaxed(4, msm_mdss->mmio + REG_MDSS_UBWC_CTRL_2);
+	else
+		writel_relaxed(5, msm_mdss->mmio + REG_MDSS_UBWC_CTRL_2);
+
 	writel_relaxed(1, msm_mdss->mmio + REG_MDSS_UBWC_PREDICTION_MODE);
 }
 
@@ -296,6 +300,9 @@ static int msm_mdss_enable(struct msm_mdss *msm_mdss)
 	case UBWC_5_0:
 		msm_mdss_setup_ubwc_dec_50(msm_mdss);
 		break;
+	case UBWC_6_0:
+		msm_mdss_setup_ubwc_dec_50(msm_mdss);
+		break;
 	default:
 		dev_err(msm_mdss->dev, "Unsupported UBWC decoder version %x\n",
 			msm_mdss->mdss_data->ubwc_dec_version);
@@ -552,6 +559,7 @@ static const struct msm_mdss_data data_153k6 = {
 };
 
 static const struct of_device_id mdss_dt_match[] = {
+	{ .compatible = "qcom,kaanapali-mdss", .data = &data_57k },
 	{ .compatible = "qcom,mdss", .data = &data_153k6 },
 	{ .compatible = "qcom,glymur-mdss", .data = &data_57k },
 	{ .compatible = "qcom,msm8998-mdss", .data = &data_76k8 },
-- 
2.34.1


