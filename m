Return-Path: <devicetree+bounces-255497-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 2530CD23A5D
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 10:42:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 61AD23085322
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 09:31:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A48A13612F0;
	Thu, 15 Jan 2026 09:29:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Fngj9iO2";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="iTpnHjHZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C66638B7B4
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 09:29:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768469379; cv=none; b=A7DrBHkAoHRRw/L8i+Z/vqf7YolJVhDMLJbGPpSQiUqqEDzGllHAffZ8Naa1ezeoCdnSXSUDcup4/iNzlz7LjHN63JJoO5Zd1FAXPmgGyW3G1PlhMnvqQnI6S+U50x83MhlgshL7EnpqTjwdjqQyW5Jh5z/AGjli15IgsegyzFM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768469379; c=relaxed/simple;
	bh=VNGjZmnG2NosKSvdk7t2xoe7LfqUSp5bkIZ1Y4r7mlY=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=ttZN6/zoomllXAwKq6YAKj92+m75YgVGVLZkSxRI4x/oCuyU7HuK5Hqto4n4XZvUWvfrqZmvAjtFNIClhASGKbT085zK/fSCSnecTjmEaPH6Ofw6Mzc8V3fOmblzm0VsoPy6r48fE53kr6bKzPWNYJw4PaDxknSRK7Ts6eDiBBM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Fngj9iO2; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=iTpnHjHZ; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60F6ffvV1744856
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 09:29:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=ROM7fWPFWUz
	cmTgkmDPvcUNBg1ta7vfdGwJEX44Q0B4=; b=Fngj9iO2ztJCKq0RZTyVTe+d7HU
	3m8wcb9vIxsO4XFUBQRggRwPSIx3lJ5yaFO3vgT48pD+fVJqBnBxqi8uXFBMzc1q
	aSTSpIe+WBTg2ehIWrxprqvJsA0qHnIiX8gbDtifMow8mcGm+67E5NNajjF3nDjE
	3KJYO49INrlbWdicwP712CabM7h3uqfnYSsFGcP0oYRcpCPDSrrGcFtfyN99mJ9j
	FMWDi0phLFY3lEm+HFDhryI54Nv/Bz76bSfMorgznch6LLGSIrp/99peZwqss0Im
	u21pLMGdd/FQnZWynlj3QV/VtTeXIGvwHOKFh01e5v7cYx41C/TR/VMFwtQ==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bptu2gj90-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 09:29:36 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-88a316ede50so16565206d6.0
        for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 01:29:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768469376; x=1769074176; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ROM7fWPFWUzcmTgkmDPvcUNBg1ta7vfdGwJEX44Q0B4=;
        b=iTpnHjHZ0diGF3vtDSa4V0uyOsJMQGWcR1SbZeGZPHBR/yzhnWzji/MUkOvW0vNmfH
         Mtafxn7oYTW6mnuCdWC78zbgIyZ37or0Rq6owj49FHJ2naEp0pIP05eO08L6ml8mIcqo
         ZCx7dLifpqyMrqYAVxncCuuoXTgMMI2y1NTNrv4c7HykCBkI6Y+gb7N/N1cJk/kkXloO
         NPTi/6kitSilCNIQIe4MFOK0mTx36mK+hwsBFTDyOMs5SIaH8RGx1/jK3MDxCiqyjY4g
         pT7p7m9ccFhqZzNoPpC80ab8rGLTAMPMt2a+HZQo0QBxUDUEO71GmE3uBS9V6dL4sS8y
         SsdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768469376; x=1769074176;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=ROM7fWPFWUzcmTgkmDPvcUNBg1ta7vfdGwJEX44Q0B4=;
        b=l8CHqEUkqbKqF33brO/W3c1/L9GXeeX4B6BqSolY7KeoaRE/Ub6t7ISjzf3yyeaDM6
         gejXCAlNIY0ICkQZ5kOTrqS8Bb+T59/7wXTwNM+F/HiJ1QnsqQj6Rbznwm3gQ6ngoWsz
         uVjXjMoHU+aSBNBcix1qz3AVUgGzvWr1g4CoEgB/OQGFgz2W/V2H9Qi2zWSwOo/uU5Mj
         isL95kFsX4oCy8hHZTvyf4E/1+k2VIAEeCPo9Nyo4t8+OBGo6zHi+moj09VDQXEBftkF
         K6mHu8u8URCyq9spKpStxcOe7/o3jbKtS4v4IEUqe0t8EJNYN+HBsC5W63IgIjH/DA+c
         a4Cg==
X-Forwarded-Encrypted: i=1; AJvYcCVBrjkDt6MsunduRnXotmi9o3QJb0fLrFFXLTAkmKidRUUl7MGFFt5Ck5Jx7natjHrQ45/D1h8HuiG7@vger.kernel.org
X-Gm-Message-State: AOJu0YxkWeB+OutMDtidozVoD++IRWVN+17OD1d1witv1GUHZtd0UR+9
	1Mb8+mOL8vTI45lQITyHhD50rD+zacW48bbMyt+f6SYCU5qnp35SdjbKXS11wkFLtN43aI1Onkb
	VyDssrpFirGquy1YAAnkxKfHfcfgNw/jMNWvWExbSVqdFEPjzfeCBPMBpZi9p/1er
X-Gm-Gg: AY/fxX4QHM+BB8ADGcwE9WfXP2pE7M734nfVYLc7Uc1y82r5ZN4oBKkDPeTRPB6gBtY
	jNiCzU+DSOUkZJcWdES8r3d8zuPqXy6VPbr5cVZzJWZ5cnqeS/BgXbpeP/EbAjXahRy6IEtZZhZ
	GxwvcUFoPgC3Q2F5iaMJPYzme/w/ebHTCJpSNB3GDRwQt3PmoA/jIkz+PxetAm0Ox0bZMTxtgtk
	8tu5AF26HkF+oVhVIGnPe4FY+qYEiCfZUp8UbjfL9FYC0sv6DtBBFgaLj+Qt6YpcLJ+WnSL2oRg
	KNB8Mo3Cs2d/lJpxELrLOQ5Tz+jAj6MT1DAl3Ks9aLdzYBKzF3zkIWblBWW3jc1KmYlrMGGxdsh
	8Lr0AAOegSceJE3pL2+cJGTOXGXagSmBO52VZOMIln0wMPTpVzLWs1n6p5HeRLOEQtLI=
X-Received: by 2002:ad4:5e87:0:b0:88a:2444:36e9 with SMTP id 6a1803df08f44-89275c87512mr75285386d6.67.1768469375912;
        Thu, 15 Jan 2026 01:29:35 -0800 (PST)
X-Received: by 2002:ad4:5e87:0:b0:88a:2444:36e9 with SMTP id 6a1803df08f44-89275c87512mr75285086d6.67.1768469375520;
        Thu, 15 Jan 2026 01:29:35 -0800 (PST)
Received: from yuanjiey.qualcomm.com (Global_NAT1_IAD_FW.qualcomm.com. [129.46.232.65])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-892668a2419sm64388416d6.30.2026.01.15.01.29.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Jan 2026 01:29:35 -0800 (PST)
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
Subject: [PATCH v6 11/12] drm/msm/dpu: Add Kaanapali WB support
Date: Thu, 15 Jan 2026 17:27:48 +0800
Message-Id: <20260115092749.533-12-yuanjie.yang@oss.qualcomm.com>
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
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE1MDA2NSBTYWx0ZWRfX6RGePAEZWyRJ
 HsueasZkzFhtnLaVwNyJATgoV4Uck0XLst2gN5kzVFcIRr0c68DjJk7KnEb9XQ2nmWbqi+GY16h
 EwggBkFb5S0zEov1iK11mAmXN/xXLHegeAV/Ck9xS7sjGM9nmrZPxx5uka4sF4jo+eMxHmpsklf
 bBKX8r9BlZAi/xhUfZhRYwi2fL8k4pCRKJDLw8lRJ5nZtljC8iQGH1L5TlThjHe964N0VX9YtjV
 2UczpgBrVJ7apB4tPrNYfvGyZKQyJX9kyGTl0YQ80fXzrmtBcbLaK67KQN37WBnH82yvt6LJmAx
 78kNRiZUxfjNF+oTdbuxWbTgjkJt/A7iRo6thCLX/AacihY2G1oXIxPfBntMFTqA9dN+TH4e2su
 ScLk4Jlxtx2KG034V1RSt29sC1ceRoCob9XVTTpQSbKal2QZk+7hVMbDFSg19CITySqqL35kkPv
 w2Zy+uooyX4v5ikZQBQ==
X-Proofpoint-ORIG-GUID: 0AY9fU1-7wIgPA5lcXXlezw8Hl5qHrQb
X-Authority-Analysis: v=2.4 cv=W6Y1lBWk c=1 sm=1 tr=0 ts=6968b380 cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=C3Dk8TwHQYyIj7nOf9RCJw==:17
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=kCfvZJGldO2mi53t-5YA:9 a=iYH6xdkBrDN1Jqds4HTS:22
X-Proofpoint-GUID: 0AY9fU1-7wIgPA5lcXXlezw8Hl5qHrQb
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-15_02,2026-01-14_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 priorityscore=1501 phishscore=0 suspectscore=0
 lowpriorityscore=0 spamscore=0 impostorscore=0 malwarescore=0 clxscore=1015
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601150065

From: Yuanjie Yang <yuanjie.yang@oss.qualcomm.com>

Add support for Kaanapali WB, which introduce register
relocations, use the updated registeri definition to ensure
compatibility.

Co-developed-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
Signed-off-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Signed-off-by: Yuanjie Yang <yuanjie.yang@oss.qualcomm.com>
---
 drivers/gpu/drm/msm/disp/dpu1/dpu_hw_wb.c | 17 +++++++++++++++--
 1 file changed, 15 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_wb.c b/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_wb.c
index 478a091aeccf..4da4bd6a997c 100644
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
+	dpu_hw_setup_qos_lut_v13(&ctx->hw, cfg);
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


