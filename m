Return-Path: <devicetree+bounces-230096-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 3156FBFFBC4
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 09:56:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 845031A00C7B
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 07:56:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 15BEF2DE6F7;
	Thu, 23 Oct 2025 07:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="SeSnbzm3"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CCF82DECAA
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 07:55:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761206133; cv=none; b=PYgRVRr48KqnLukYSwL4hzuW1DlmEb2L4aOYzWQERCPwOZYUB1rG6M8ehqsMM+DyKyFL7mQmAruYKddfp45aP4JNU4rLCgv0awf9ejsHwqqcXhALQebl0R2S9r33k+cpHL1qR6exPZNAHMoVusgP3B5YD3QY7+oTEKDv5QpCYyg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761206133; c=relaxed/simple;
	bh=JEWdZx+uwzrMx0vf6tzTqtOibYqpos0ApsjBKoz9X/E=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=DIWzKbb+ugozjGoKWAmvfTifEQRaWmE64/wWEjGvQJeikU76ez3pglg4MqbzwepCAaxWiH1SHNuVrkpzfjBhXXm2aT6BB3XBCJH9P3erNbDR1z2SNWWnGgrM/nEqQOtNgJ5+k35EjJ/FN9mg9GwmaOvFkRSf0qn6QGCyo1o2fms=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=SeSnbzm3; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59N6dfUx000663
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 07:55:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=lOK2MHSzPbs
	iXffQZgfe3h7iHMKpferDHyC/TWrrCWc=; b=SeSnbzm3H/cw2/2r7DRnoRK4Fca
	8wMZ/x7Yn5bTTaQWB6FSKnvPEpQOe8975TE27FxJWBo6M7wty50N6dzKGmcv8ZGp
	lcyTCnVlYqSztuojTYb3TkboI20wlbPyHUffR2P1l4+7vaiKFSzNyvYls7liJy8P
	EaxgNdE6ANqb0dX+QZdu0Ck0K/LS2TdoASmlhts4SsTjKae5US6wR2BvPKBG1RQC
	iOoEkScnuv6C/yQ3+VxkxO6JhKKsTpxXDU9r+f5PrJBro2XuHleA99tRgx/ycs7V
	u5oP/SuNDE8OmO7Eb8IZTXl0NVfmkHTat05ViJyWVSAUmgUtmoW09Tgfv1g==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49w08wd5xa-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 07:55:30 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-290bcced220so5639635ad.1
        for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 00:55:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761206130; x=1761810930;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lOK2MHSzPbsiXffQZgfe3h7iHMKpferDHyC/TWrrCWc=;
        b=QoqoTeKOf+9dSt3cU9xkXu6QEEFnm4yyJnlYd2JWdZFVHt93SXC5Y8fYP7XTFHnvvS
         8NdPpYFbk4b5z7NYLy0U6A0/exg7LfA9SFVWcxypQUK6MqrmGzGm5UgtBj2kQFitlp/O
         IVC9vlF3pQTcQuQt0ZyZnD7xSSyyYuOI9/M/E85ivsNS7C/QmDe2B/TJFuC3U5JgvZvR
         +hWmcnBw3WiuH2UdEsNbPDj02nR0FlQRTg1OO/5aMYcVgIF3rQ8OexIiI2iWpSeaLii1
         KuNUUe7q06l5S3qc9zYHlg/d5qeshTnUmLqCUkaoYW2fYZ21w1VlCSqrRXp5YSWRMwRl
         aNMw==
X-Forwarded-Encrypted: i=1; AJvYcCWx/lc33yKtqCbRvIXOwjislMMT4BB/IM8hA2TAwsRktiEDXVnnwogQx7VKwPxE67tAEVTV/TE1jEP/@vger.kernel.org
X-Gm-Message-State: AOJu0YyoQH3tc53ph6eLZDsiTQfQKRjrdgeczcKNy+llfF0JgOdlwwrc
	92fsM68tZKr+CPuSuEW+fI5Iqxre4W6y/kj5afYks3OGe8APe18LHOKygJ38mKRK8j+loLKLuQM
	gMPwT1wUEpEUqCgaJHzDcs/7ZdIzx51qpGiaFrLf4zNby0oKAMeBL9NTvduVNINzn
X-Gm-Gg: ASbGncukqjc5k+DT5Ig6lttgsIoh1g43VR9ic5v1A6ZZDkNtL7dw0cyTdjNSbLdowrI
	8/F3SS646NF6px9n3bEigMzDmPVvnuPVsrDVEKZ4pe1S3DDpMvrd6DsG8hzxem+xpIF2D/1qXSR
	ZTCqmrhIYCPqsqg8SGrAtaxQAce8WhUjgDnooKSUx9UCbLsi6tKMVTu4Us6eh18GebKUXFQbKvF
	ExS2hj89WQL3ouemi9lRoz5hyR/uQtjMwb4fuADmQFu17X0hg80s7T4kW0eEPgwecTkc2LSuOGr
	1jniQw+aK+Ny5Z7q9o/qQZTrKzrDVD+3Vn+KBo2laebEsErvJd0oC/i9jhtUom4HqJQwC4usV76
	nSFIq68FmgMB8gTy41sKgx2bSeVikwIy51kdM6o4vkwezpT2e8w==
X-Received: by 2002:a17:902:ef4d:b0:269:8f0c:4d86 with SMTP id d9443c01a7336-290cb66049dmr319783525ad.53.1761206129518;
        Thu, 23 Oct 2025 00:55:29 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE0QuIZ+LuMNR8q0/YAebLqe1CyU54eHt5XXlt5BpEpKdtKF5ztAJWGBj2FwTltk88GyCTZ8A==
X-Received: by 2002:a17:902:ef4d:b0:269:8f0c:4d86 with SMTP id d9443c01a7336-290cb66049dmr319783175ad.53.1761206129026;
        Thu, 23 Oct 2025 00:55:29 -0700 (PDT)
Received: from yuanjiey.qualcomm.com (i-global254.qualcomm.com. [199.106.103.254])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2946e1231b0sm14371265ad.97.2025.10.23.00.55.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Oct 2025 00:55:28 -0700 (PDT)
From: yuanjie yang <yuanjie.yang@oss.qualcomm.com>
To: robin.clark@oss.qualcomm.com, lumag@kernel.org, abhinav.kumar@linux.dev,
        sean@poorly.run, marijn.suijten@somainline.org, airlied@gmail.com,
        simona@ffwll.ch, maarten.lankhorst@linux.intel.com, mripard@kernel.org,
        tzimmermann@suse.de, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, quic_mkrishn@quicinc.com, jonathan@marek.ca,
        quic_khsieh@quicinc.com, neil.armstrong@linaro.org
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, tingwei.zhang@oss.qualcomm.com,
        aiqun.yu@oss.qualcomm.com, yongxing.mou@oss.qualcomm.com
Subject: [PATCH 04/12] drm/msm/mdss: Add support for Kaanapali
Date: Thu, 23 Oct 2025 15:53:53 +0800
Message-Id: <20251023075401.1148-5-yuanjie.yang@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251023075401.1148-1-yuanjie.yang@oss.qualcomm.com>
References: <20251023075401.1148-1-yuanjie.yang@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: 6_TO7NixwFM1S-0Q4fzODlg_dvhpOTUL
X-Proofpoint-GUID: 6_TO7NixwFM1S-0Q4fzODlg_dvhpOTUL
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDE5MDA5MCBTYWx0ZWRfX+nEz0uNP8YVz
 WSxZ9dS9Zh8qmnIaEcffb91G2afzwR/aniORKK97DjQ8+BdwXCkFGfF6Xv37LdJW1GNhNittMkE
 OXoqzJMkAdHUN1JYaEFr8jXR/vI9qDCMVKHE5OlkKBxrciXS7Nknv5Gu7aZnVGQHsqQI5C4Pnip
 Lp/ZedyKU+RF1e9t44b/2yuUt/jmiYYqOoJB3Mg/idU4wZw5E7Efnp5/Q1XStE3pDLeVnzViWLg
 1QpRwURCQrNaod7AQzA2KzlyJM8Q3ieCXukO3IVeDwDVVz1NfEz5/HSCB8rUf1V5NauARxyaJFf
 5SUhrYeew9McCYnUq5Kc+QFZR9OaXoECGxeguCFX+6yMoBZfYY0B+gCJKd/7kmbyMKGqJTPvX7/
 eUkU8Xe2EdtQXHDvsAHYU7ALWfC+Ew==
X-Authority-Analysis: v=2.4 cv=V5NwEOni c=1 sm=1 tr=0 ts=68f9df72 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=JYp8KDb2vCoCEuGobkYCKw==:17
 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8
 a=fceNRhxQrX_EhRTcvHUA:9 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-22_08,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 malwarescore=0 adultscore=0 priorityscore=1501 lowpriorityscore=0
 spamscore=0 suspectscore=0 clxscore=1015 phishscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510190090

From: Yuanjie Yang <yuanjie.yang@oss.qualcomm.com>

Add mdss support for the Qualcomm Kaanapali platform.

Signed-off-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
Signed-off-by: Yuanjie Yang <yuanjie.yang@oss.qualcomm.com>
---
 drivers/gpu/drm/msm/msm_mdss.c | 22 ++++++++++++++++++++++
 include/linux/soc/qcom/ubwc.h  |  1 +
 2 files changed, 23 insertions(+)

diff --git a/drivers/gpu/drm/msm/msm_mdss.c b/drivers/gpu/drm/msm/msm_mdss.c
index 2d0e3e784c04..665751d2b999 100644
--- a/drivers/gpu/drm/msm/msm_mdss.c
+++ b/drivers/gpu/drm/msm/msm_mdss.c
@@ -243,6 +243,24 @@ static void msm_mdss_setup_ubwc_dec_50(struct msm_mdss *msm_mdss)
 	writel_relaxed(1, msm_mdss->mmio + REG_MDSS_UBWC_PREDICTION_MODE);
 }
 
+static void msm_mdss_setup_ubwc_dec_60(struct msm_mdss *msm_mdss)
+{
+	const struct qcom_ubwc_cfg_data *data = msm_mdss->mdss_data;
+	u32 value = MDSS_UBWC_STATIC_UBWC_SWIZZLE(data->ubwc_swizzle) |
+		    MDSS_UBWC_STATIC_HIGHEST_BANK_BIT(data->highest_bank_bit);
+
+	if (data->ubwc_bank_spread)
+		value |= MDSS_UBWC_STATIC_UBWC_BANK_SPREAD;
+
+	if (data->macrotile_mode)
+		value |= MDSS_UBWC_STATIC_MACROTILE_MODE;
+
+	writel_relaxed(value, msm_mdss->mmio + REG_MDSS_UBWC_STATIC);
+
+	writel_relaxed(5, msm_mdss->mmio + REG_MDSS_UBWC_CTRL_2);
+	writel_relaxed(1, msm_mdss->mmio + REG_MDSS_UBWC_PREDICTION_MODE);
+}
+
 static int msm_mdss_enable(struct msm_mdss *msm_mdss)
 {
 	int ret, i;
@@ -296,6 +314,9 @@ static int msm_mdss_enable(struct msm_mdss *msm_mdss)
 	case UBWC_5_0:
 		msm_mdss_setup_ubwc_dec_50(msm_mdss);
 		break;
+	case UBWC_6_0:
+		msm_mdss_setup_ubwc_dec_60(msm_mdss);
+		break;
 	default:
 		dev_err(msm_mdss->dev, "Unsupported UBWC decoder version %x\n",
 			msm_mdss->mdss_data->ubwc_dec_version);
@@ -552,6 +573,7 @@ static const struct msm_mdss_data data_153k6 = {
 };
 
 static const struct of_device_id mdss_dt_match[] = {
+	{ .compatible = "qcom,kaanapali-mdss", .data = &data_57k },
 	{ .compatible = "qcom,mdss", .data = &data_153k6 },
 	{ .compatible = "qcom,msm8998-mdss", .data = &data_76k8 },
 	{ .compatible = "qcom,qcm2290-mdss", .data = &data_76k8 },
diff --git a/include/linux/soc/qcom/ubwc.h b/include/linux/soc/qcom/ubwc.h
index 1ed8b1b16bc9..0a4edfe3d96d 100644
--- a/include/linux/soc/qcom/ubwc.h
+++ b/include/linux/soc/qcom/ubwc.h
@@ -52,6 +52,7 @@ struct qcom_ubwc_cfg_data {
 #define UBWC_4_0 0x40000000
 #define UBWC_4_3 0x40030000
 #define UBWC_5_0 0x50000000
+#define UBWC_6_0 0x60000000
 
 #if IS_ENABLED(CONFIG_QCOM_UBWC_CONFIG)
 const struct qcom_ubwc_cfg_data *qcom_ubwc_config_get_data(void);
-- 
2.34.1


