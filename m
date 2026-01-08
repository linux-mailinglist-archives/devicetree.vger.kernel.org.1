Return-Path: <devicetree+bounces-252681-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 08D17D02B40
	for <lists+devicetree@lfdr.de>; Thu, 08 Jan 2026 13:43:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 71B8A3057103
	for <lists+devicetree@lfdr.de>; Thu,  8 Jan 2026 12:38:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 89C003803F5;
	Thu,  8 Jan 2026 08:59:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="lakzr7BG";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="bSRGyagI"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5069737F8C8
	for <devicetree@vger.kernel.org>; Thu,  8 Jan 2026 08:59:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767862748; cv=none; b=nst18Gk6OCwIQVU+Syp0Opd+Bn5hYQcQr7WllqwIWc3Fb4imHdTrzm8f+m97FnsKy8l2QrSb7DHjIsZ154Ip0goFo1mdkD013TWR0dOM12QmEVFSrPJO4Ty+9oRdcX5B1D7l032KT79x0f1D5ygDMrpSscrgENz/2Qy8lNlzhk0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767862748; c=relaxed/simple;
	bh=xddD2MNsv1s20DTlpMntWMruk2EwI1cqCCz4ydIMiDE=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=UNBLkSaCZXXXKHN5fMSaCjbRlAAPrW+Y/c5574ab0RuV/Spl8uIYGWbchD5mFotydAo9QGkOrP6n7wLyISuxC+Z82u7LVR+VWuGWUwwbqPgbPyEjN4S3DFGMPwKBXUbLEXvAiNSdfW6Eesyv21s3aM7M1NxrUze+HEVnIUPJG5A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=lakzr7BG; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=bSRGyagI; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60846QjY2782119
	for <devicetree@vger.kernel.org>; Thu, 8 Jan 2026 08:58:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=54GDJZyJzbH
	Wm0MrtQpD7VyvgqcpHZYlLhoVJwL7bN4=; b=lakzr7BGXoXaqnX93ruFWQq4iMw
	3FynUPGHYsM9mVzpgDdFf5pLpddwJ7GenZpP+ltZ4R8/3yzsRn+W308uFf1+qDTi
	qo+f6bO2jmO98DR5VNctGhIURJEQIxjvZjlQGFOcOASOz6Rv8RwfzFVz94b9H9hy
	4Biz/48eNGIECrYhhtgWjlv1zYYhkbe72412DBdoF3izvTHyNFunpb0vdfl2s75K
	bHPP+QRzKaWkOgS2/q/NsTgjIxdlUbmfbIirV0p6aBTyPxgxYOsm7pyvcz/e5rQ4
	m0/FF2eU3sdpFLG+Bm0RsOTpW82r83AAo454CTVFAMZOKIAPaR9pTRxHyCw==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bj58ugtax-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 08:58:59 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8bb0ae16a63so346941885a.3
        for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 00:58:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767862738; x=1768467538; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=54GDJZyJzbHWm0MrtQpD7VyvgqcpHZYlLhoVJwL7bN4=;
        b=bSRGyagI3H4krAO99E2ltUM4kktpE5tqaSmEYtY3V6vKGghDl0+k1rNwt2p25VFXB/
         5ixvmHmPM4QdHHEOAwsW22krmw7qZZnB/5dunwWGe5SLrHO/dCnfGDXYdGpkkGT4LPO/
         ggfDJZgzEvh+6++nDObwmv+GpPDTe3pgfKvvouch9ghuN4HbCyiUvYn0Meoy8I8g2DIx
         T6//Qa4dx/YXp8u2QTSn3bV14h4sXiFTVzvUIchdzUEZ6i13GCbXBIeeZgr2GoU5qGXD
         TZzkDiIFnDYRJj6+bO/dZaEbvUbpdfRqly294b6AvpsYAPSHmCdrIGFPmZsYzD56E1VA
         sR7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767862738; x=1768467538;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=54GDJZyJzbHWm0MrtQpD7VyvgqcpHZYlLhoVJwL7bN4=;
        b=Pg7mZMM6AvpK4aUtv5/PSY3ibawlSts7FALTOmqfdNtmjb0x+EZk1OiKp4CsG579Pc
         YwnPF7bPpUmarJ62eXB3XWFAplxdYkBoDCb7fSY35pv8mZWwSk6dFsMOGs/j+Vj+2QfF
         ElENUvDt7pH8hpkU4bmaQQ/r3ngtsazjdYr58kIq8KLu4/MKngIXovOZ/6LGLJtMsHTl
         eq71uW8sKQFBkzEXb6be/niDAMf78SgDaCZnWDaFGCot1pXJnoaDrKBncrGtR1HCxfL2
         INtCY8r/6vIeE32R6e+Coz5gC+NO6dAyYo9P/SPx/qMUBopgXG/Vn8gE007VTet0eN5S
         4WeQ==
X-Forwarded-Encrypted: i=1; AJvYcCVnTKmPzsWLzKuLw8bKRiw1VDPhLV8VzqnNiFAvNmGnWbOPOcTwyK0MXyTfijPKeyK2xIMFov+MrRIO@vger.kernel.org
X-Gm-Message-State: AOJu0YyifesBBg19cwAvoGtc9vlnqQ46Bw7uyspWy+kcK5Jvw6537Id+
	oLSiRnCB56ONFlafnq2bdm+ZaOMDrieR4N0Uf5rZs4ZOst7tn07LpfUOCYQVK/YRjGR5mhrcat8
	Qe3w9ERbN8acdrppoAA3a1sKKasNa0bEbslE/Ro98fn0OjEiEAH1M3qBi/RibDK7h
X-Gm-Gg: AY/fxX6YaQLZB19geb65qVDfA+4YHdF/wdaU3juLRctR2H6UUnhy0fhyBoLeiqthypk
	xVYF1Yr/gMtLtaqdMX6El5zoFNPTTwIqoqu9ajGsymF6F2BQNzo6+l4PdhcbfJ5zV0fP3Nk2cYy
	TiQ4c7gsnXQR+8hBAOQ+r929ykcIdrjwM/ZMzyE0BwgYrM5xDJOSwTCMsOTIt/dZjp2du7TJf09
	DzlIJ40PHZB0ZXdyHsGordB4f6FUgHG+iRzfU6e+MJPHd9SxEjUMHzx0dTdm2O/h9L+W1qIwT/w
	WMQ/iCCYRVCFSYWTWkVzYCIGR4YdclmQ8CrjLys6IEUrr1gtBpuk+cBn4xKRBIEhVtUEUbz2uNi
	HsqvJHYo5Jt9at5nvU5x6uKwnMTNgXCzkaJjphswyIqMhqKcVN/UX+RtRBh0TVApZG/0=
X-Received: by 2002:a05:620a:f0c:b0:8a9:ef98:6b34 with SMTP id af79cd13be357-8c3893cd9e6mr665634185a.56.1767862738335;
        Thu, 08 Jan 2026 00:58:58 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFDPTpg2nfUyWmprD2xyTpkUnn0XmXeqUYRDeQUfDgMTzG3+mwfDEmQ/DqJk3PymsQw8p4x6g==
X-Received: by 2002:a05:620a:f0c:b0:8a9:ef98:6b34 with SMTP id af79cd13be357-8c3893cd9e6mr665631685a.56.1767862737861;
        Thu, 08 Jan 2026 00:58:57 -0800 (PST)
Received: from yuanjiey.qualcomm.com (Global_NAT1_IAD_FW.qualcomm.com. [129.46.232.65])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-890770cc7eesm49680326d6.2.2026.01.08.00.58.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Jan 2026 00:58:57 -0800 (PST)
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
        aiqun.yu@oss.qualcomm.com, yongxing.mou@oss.qualcomm.com
Subject: [PATCH v5 11/12] drm/msm/dpu: Add Kaanapali WB support
Date: Thu,  8 Jan 2026 16:56:58 +0800
Message-Id: <20260108085659.790-12-yuanjie.yang@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260108085659.790-1-yuanjie.yang@oss.qualcomm.com>
References: <20260108085659.790-1-yuanjie.yang@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA4MDA1OSBTYWx0ZWRfX+TZH5OWKb9Za
 C3cIg6L73bNpluyrCUl8yy+Em9tyvShHx9or+X7XoR9FHEP35V8JZJVNRrUGINPP1GG133MaDBF
 LSFGiiFmuGy8uZYaedpQg4j3f7hip1E+TgOPM1Fof4dVHpQC5TnkAgrYcCulNFw/XhxTsVUNvjP
 9hteyJftNX3BEvFmDbCM/61/OFbfUmJZDOsYDNjmXwymKZ+QoEZBc3BC64kDlWYHLT7ugAMguEY
 K/THaTrG5csqjKNdzjQO7vZeWN09G6VgZL2kzFlzPEp0HhPyhhSoLiZRiG3o2hdNnvUiZ9Yo30d
 bAiwcOP1tRcp8p+fEyEykvvud2Ue0BolJvMI9/mKFAkgrMiQtU26dHdr9dPBxo0b7EaxI7Nq4Yd
 OTRXtm2tFBZmmMGSkXyUPEoqd9ildBt+YcajhVr1Sag5hNqoTM1PEC2uyrjvt6uJ6Kwo0KMdjM9
 tY6e9ekeRvPJpRs79YA==
X-Proofpoint-GUID: K9XGo1K3G7vmHLhDCeQtbh00vA1BKp9x
X-Proofpoint-ORIG-GUID: K9XGo1K3G7vmHLhDCeQtbh00vA1BKp9x
X-Authority-Analysis: v=2.4 cv=CMgnnBrD c=1 sm=1 tr=0 ts=695f71d3 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=C3Dk8TwHQYyIj7nOf9RCJw==:17
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=kCfvZJGldO2mi53t-5YA:9 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-08_01,2026-01-07_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 bulkscore=0 priorityscore=1501 malwarescore=0 phishscore=0
 adultscore=0 suspectscore=0 impostorscore=0 spamscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601080059

From: Yuanjie Yang <yuanjie.yang@oss.qualcomm.com>

Add support for Kaanapali WB, which introduce register
relocations, use the updated registeri definition to ensure
compatibility.

Co-developed-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
Signed-off-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
Signed-off-by: Yuanjie Yang <yuanjie.yang@oss.qualcomm.com>
---
 drivers/gpu/drm/msm/disp/dpu1/dpu_hw_wb.c | 17 +++++++++++++++--
 1 file changed, 15 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_wb.c b/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_wb.c
index 478a091aeccf..006dcc4a0dcc 100644
--- a/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_wb.c
+++ b/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_wb.c
@@ -148,6 +148,15 @@ static void dpu_hw_wb_setup_qos_lut(struct dpu_hw_wb *ctx,
 			      cfg);
 }
 
+static void dpu_hw_wb_setup_qos_lut_v13(struct dpu_hw_wb *ctx,
+					struct dpu_hw_qos_cfg *cfg)
+{
+	if (!ctx || !cfg)
+		return;
+
+	_dpu_hw_setup_qos_lut_v13(&ctx->hw, cfg);
+}
+
 static void dpu_hw_wb_setup_cdp(struct dpu_hw_wb *ctx,
 				const struct msm_format *fmt,
 				bool enable)
@@ -202,8 +211,12 @@ static void _setup_wb_ops(struct dpu_hw_wb_ops *ops,
 	if (test_bit(DPU_WB_XY_ROI_OFFSET, &features))
 		ops->setup_roi = dpu_hw_wb_roi;
 
-	if (test_bit(DPU_WB_QOS, &features))
-		ops->setup_qos_lut = dpu_hw_wb_setup_qos_lut;
+	if (test_bit(DPU_WB_QOS, &features)) {
+		if (mdss_rev->core_major_ver >= 13)
+			ops->setup_qos_lut = dpu_hw_wb_setup_qos_lut_v13;
+		else
+			ops->setup_qos_lut = dpu_hw_wb_setup_qos_lut;
+	}
 
 	if (test_bit(DPU_WB_CDP, &features))
 		ops->setup_cdp = dpu_hw_wb_setup_cdp;
-- 
2.34.1


