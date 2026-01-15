Return-Path: <devicetree+bounces-255491-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 75D0ED23A3F
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 10:41:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 4A91831E11DB
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 09:30:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1D2CA364E8E;
	Thu, 15 Jan 2026 09:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="mBDmXmT6";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="UfQhKFjT"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA5AD35B15A
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 09:28:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768469333; cv=none; b=k9HF4oXhg7b/giYrQlVTiLCfApRqhLzQqel8iExTyFh1aJFAfL3NZsU+4cqWjSTC5HuB4tyBksjZSaW/X00wbpHtOChWUEEaJn80hmRNIffkFdDe71jIvAPTWrc/vb+AbCN6QM7CksjLJqN0eHrP09TeZRdON2Z3gXL4uSz35sI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768469333; c=relaxed/simple;
	bh=k21KuLqrakb4fzczAxo35U6ZXCS51oohpzYX1tys+us=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=eB266val+L0JPyHFya0u862AkJecDezKSIYG8SkBLW4zIgvQB6iRCaLDUTzIqJ6+LVmbFEBXvkkvhE3wylhzZkJ6q8QBlEXWImG2JRUvr3ZhEyeTrtQjJ+Q34yvdRuBazHauGlIK2KxC1tPWWT/Nod/0Q5RTo6uSEsszV/66jK0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=mBDmXmT6; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=UfQhKFjT; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60F6focO3419538
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 09:28:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=D7O7zbR7bk0
	RBrH6WlI0a+LXkFPZYFN4ZGyTTHv5I0k=; b=mBDmXmT6A8pVcYiqvNHCARH42l2
	BDV4QNvGcQTPicdfPk2ohFe8w4nGwJ+iJ2uMRkweLoIOq/3Mk6btOTZLtc+8BHD1
	+7kRCfd85Yb4ltZCg2NmQUZKQg6p/1l3q/zizCulilsfK8hrJ8kcr44QCTRsFRl5
	3JP5qGKmeAOGwOo7vwnm/bdWeTxpJzYmwNuXtPsVQMEIs4z14L9Bc9EKRolWf8lz
	5zqCmHetE8vK+QY25L9S3KjZkkdXqnyxHorOa0Koy1njBj+dG8lKfD4s33BRWM5w
	TuAKrc1Dn9dg9MMIkuMi9yjushXALX5j32/0A366WIWVzX80tsOZ90PxT6Q==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bpjj89x8h-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 09:28:49 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-88883a2cabbso22395396d6.0
        for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 01:28:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768469328; x=1769074128; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=D7O7zbR7bk0RBrH6WlI0a+LXkFPZYFN4ZGyTTHv5I0k=;
        b=UfQhKFjTV4XQX/9CKGSaWWMpdm5fblijHckOCkeuu02e/Er8orY18sHHj8iSf8REy2
         MQXXgudIq/5LcKelaepAF3Gigxm9YYsu2ov2XaRUfy2FM7m0rdLOso3LvjPCQo90YlbH
         Ku84vj8UJ7eWWYmte5go+XOWGcmUa2pJWAFeB6Ju69x9F9fbG9uuuLilbJ1uHs0IeKtW
         7MHqMUNjKx63aqyt9ztcrxN9kTuJovRHKwJuEFOcNiR3G0OjZgYmvZtw1z0wu+v7jLvC
         PjjnHjPrA7yI9LOpM9QT97Nv3UFJJx/p8bsczxyr53HvFkUkJjQ34U6zhnM+ZsaXycqk
         W8AQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768469328; x=1769074128;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=D7O7zbR7bk0RBrH6WlI0a+LXkFPZYFN4ZGyTTHv5I0k=;
        b=g2OCY9THdwfO9KgyqBhH5msbAcH0FfWt2SJyR/GGFgHyGZM4T4PVIrmbeoUALYr7tN
         x/1P2s7y43cRliLdyJj/kAY0hAn0Dr8M8gEGywkw8lXYdA/TG0SI2ZQnMmgEaFapj4H6
         3G99jY4YYpJTWowcqgFjAP3w/eKSj6lHIXl+Utzx4oZc/IIfLnG4EfS08rgFBinhWpjm
         fJVRW/DoDlVJ9Sa1yUqOnphbL69qge7Lgr7iKA9NqtIrR34ZDle191rWDXEAF1HQuZDw
         V6zz8a01+677kGmhwHceM4R4cbwOireNQGhMK91xgpBZoqyYlgT2F3dLOwgVJNYpTdTY
         NXFw==
X-Forwarded-Encrypted: i=1; AJvYcCWVCVUgnhAy+bPsiKBpGBKLtIg/i3Q9KVbN/U11g2ZqGlJnVvO/kVI+k2b0ojQosz1MbJvcl3Ulba40@vger.kernel.org
X-Gm-Message-State: AOJu0YywBwWdh4Rb87fOXadnvMHzzLd0U8aj69PalsdSgAEERbMMxXAt
	qJl7r3ZR5e1GadDphmVvyCC1MJJ/RJtIC6AHkA5jRaRnDQrGHPAAx5KYouIl+H47ooa1rC8A3xM
	MF/fZnD7YfyZ6N9eredsd9sVR5IK6xoFV4TwNb8E5nv9y/hPpUafdTeW4VaFKziQx
X-Gm-Gg: AY/fxX5ZXUIZO/eQbCuN5mcEFhAj0u4Sss3V7qlfpAPAgoSIU1Kvzrmvo96qFTSOr6I
	1v8uVRUwG8YX4ilL49Pax9nrvYj5leM/4GfxViZzN5XG4C8+bXfIH7eVBap419Ft4xce2bkVE/z
	yarohyMHi3jz+DW/nxS+Jn0EHL25ZbsgTcPJ2vIDiOpNbylpJnyVJOWObbXjrTa4zmZiA2m9sQl
	+TYc/EKVgOuIEksbbg7sQLK08JIWLDpOqV/SRoiQ3f/uDM47j4h/DNqh/M4iHgb9k75KRq3K5ci
	mQ3+5FIMUGH5Ny3Q2sWvmIlarrdrIPXAKfRIw1aePDEJX0gWC6d7hR1oJfZx4KyKrT/lEEntjFT
	uPqOOK8bgwl390NxhyIFJIemNBkfj0sNCY6IHY7z2X71yyIdjDKCDVLHxeBJm+w0ww44=
X-Received: by 2002:a05:6214:19c9:b0:88a:589b:5dac with SMTP id 6a1803df08f44-89274367ce7mr70872886d6.6.1768469328416;
        Thu, 15 Jan 2026 01:28:48 -0800 (PST)
X-Received: by 2002:a05:6214:19c9:b0:88a:589b:5dac with SMTP id 6a1803df08f44-89274367ce7mr70872626d6.6.1768469327965;
        Thu, 15 Jan 2026 01:28:47 -0800 (PST)
Received: from yuanjiey.qualcomm.com (Global_NAT1_IAD_FW.qualcomm.com. [129.46.232.65])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-892668a2419sm64388416d6.30.2026.01.15.01.28.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Jan 2026 01:28:47 -0800 (PST)
From: yuanjie yang <yuanjie.yang@oss.qualcomm.com>
To: robin.clark@oss.qualcomm.com, lumag@kernel.org, jesszhan0024@gmail.com,
        sean@poorly.run, marijn.suijten@somainline.org, airlied@gmail.com,
        simona@ffwll.ch, maarten.lankhorst@linux.intel.com, mripard@kernel.org,
        tzimmermann@suse.de, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, neil.armstrong@linaro.org,
        konrad.dybcio@oss.qualcomm.com
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, tingwei.zhang@oss.qualcomm.com,
        aiqun.yu@oss.qualcomm.com, yongxing.mou@oss.qualcomm.com,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Subject: [PATCH v6 05/12] drm/msm/mdss: Add support for Kaanapali
Date: Thu, 15 Jan 2026 17:27:42 +0800
Message-Id: <20260115092749.533-6-yuanjie.yang@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260115092749.533-1-yuanjie.yang@oss.qualcomm.com>
References: <20260115092749.533-1-yuanjie.yang@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: VbR_MxrIkFqeoE4BxN9TWVoKS6EtiwgX
X-Proofpoint-ORIG-GUID: VbR_MxrIkFqeoE4BxN9TWVoKS6EtiwgX
X-Authority-Analysis: v=2.4 cv=EIELElZC c=1 sm=1 tr=0 ts=6968b351 cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=C3Dk8TwHQYyIj7nOf9RCJw==:17
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=hYg4dbXq4j5tZlskCswA:9 a=iYH6xdkBrDN1Jqds4HTS:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE1MDA2NSBTYWx0ZWRfX9qQfhAXNOdP/
 uK0eL7vbWVWyWGxpH6a7yWdB9/jP5LtxNIo6AEl9GcWYMez785WiQ45SCz6OZMbD0wWvOZu0dNd
 5D3rCxLys/15XQg9rpz5S9QdfZiDI9paST21aS0l1WC05gWHZNpnv8Zlt1cq3UHXMTfmOzz8Xro
 hE0mpHnzMEAEzr/O92z3nrjssfnw08Jrt35zKKV2Kn8cFcji2XuVgwijeynDeVNNv4lI/GJEDkA
 5dduvhSNRxy9L1NDBRlqRqub3/WmnFZ1LUvWWzfpSyb8gbpY8RLLOwPRefk1XJxiRK+haAonI68
 sDNWRO6Pjo8IDj5vkVLp5ALkZEkUyulGvvglEBnM5T6RVjXq0k7AxEfrDEVhupI/8RHqy4oX7MR
 QvZKuvitRvXvqW6fMyKl6U+Uo9wiNP5p2+heKPyzM0CF7SHI9uUsglSepOXHxNMNck4RkwT+5C+
 7/VWuxaKlCSlbcKzgdQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-15_02,2026-01-14_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 clxscore=1015 impostorscore=0 malwarescore=0 suspectscore=0
 phishscore=0 priorityscore=1501 lowpriorityscore=0 adultscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601150065

From: Yuanjie Yang <yuanjie.yang@oss.qualcomm.com>

Add mdss support for the Qualcomm Kaanapali platform.

Co-developed-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
Signed-off-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Signed-off-by: Yuanjie Yang <yuanjie.yang@oss.qualcomm.com>
---
 drivers/gpu/drm/msm/msm_mdss.c | 10 +++++++++-
 1 file changed, 9 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/msm/msm_mdss.c b/drivers/gpu/drm/msm/msm_mdss.c
index bf9a33e925ac..7d78d16f8802 100644
--- a/drivers/gpu/drm/msm/msm_mdss.c
+++ b/drivers/gpu/drm/msm/msm_mdss.c
@@ -239,7 +239,11 @@ static void msm_mdss_setup_ubwc_dec_50(struct msm_mdss *msm_mdss)
 
 	writel_relaxed(value, msm_mdss->mmio + REG_MDSS_UBWC_STATIC);
 
-	writel_relaxed(4, msm_mdss->mmio + REG_MDSS_UBWC_CTRL_2);
+	if (data->ubwc_dec_version == UBWC_6_0)
+		writel_relaxed(5, msm_mdss->mmio + REG_MDSS_UBWC_CTRL_2);
+	else
+		writel_relaxed(4, msm_mdss->mmio + REG_MDSS_UBWC_CTRL_2);
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
@@ -554,6 +561,7 @@ static const struct msm_mdss_data data_153k6 = {
 static const struct of_device_id mdss_dt_match[] = {
 	{ .compatible = "qcom,mdss", .data = &data_153k6 },
 	{ .compatible = "qcom,glymur-mdss", .data = &data_57k },
+	{ .compatible = "qcom,kaanapali-mdss", .data = &data_57k },
 	{ .compatible = "qcom,msm8998-mdss", .data = &data_76k8 },
 	{ .compatible = "qcom,qcm2290-mdss", .data = &data_76k8 },
 	{ .compatible = "qcom,qcs8300-mdss", .data = &data_74k },
-- 
2.34.1


