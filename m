Return-Path: <devicetree+bounces-249482-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 07E89CDC02D
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 11:35:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 375C3300BA29
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 10:35:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 37AF8315D25;
	Wed, 24 Dec 2025 10:35:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="PpKcc4aT";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="atnVxLc2"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B111314D29
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 10:35:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766572519; cv=none; b=m1xna/Z0Db4WxlPzIKthvT8PGyiGOeAZ8IuXCLURutw1CgDkKGnwdYeLZMgLtl4Sv23giMIvndphcMyRxYJt1RwxNKG1vB53DuMKgaWOtrN1YJas16MqaxOWv3qXZ7cklU4yMcxLKzMyclaf8RAnnu9Swy5ytnnROY5+nxgn14o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766572519; c=relaxed/simple;
	bh=Wg6eD+9Azbv21wHPg9hEZboPOIxk8WykQVZtGHMQ8ig=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=UCjw9IhUEMFzX8bj+IiQrQeGZ7/arSICFGHVSXZQ8ylERX8XrModU2zqQKLk4wJyU/KLol8/rHQOgOnvhdLNP62iqezZh/zTM6WCa7iXHLWrhz/OJ5PI6s7hsCaqxp2APBqjhmkErLMK6DAlV2EQGvjxHiE1ehVYNwxmHsV+i9I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=PpKcc4aT; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=atnVxLc2; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BO3wc033797042
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 10:35:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	5B7X/4st3uS1XExmmy54qb9S9vy/pEl6TnjtQgHIRt4=; b=PpKcc4aTJ96i0eKb
	u6qsFD2dJXxwt1NqKLarQOmbr/4HHs9UBOlq9qQVQ1mn9096lGM/jwdr1PeEEr8o
	P7oNCnPgF5J7ifoI7BWZrlxXWSjBYkbzj6e+pTKAc2ASTFoka5pXbVFQMGTHJS2E
	R/HeXTcczKuK9/+shmPTNNxSvXnCr+mf3FWpZieeLL542AqRzIrmIGji4hwe9tS8
	zqapWzzs9VDhF0LNpgP2CRU7QbY+qVliSmch7JWCZ9dI6LNX9zxZFRk20JL43pr5
	HPiHl3b5/QZ2ILV+mj/0hfDwQEMIXd4b8iUMN+pnqTh+W72OwvquM5q40OMz0f82
	ugSX6w==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b88r68xbk-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 10:35:16 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4f1d26abbd8so157679661cf.1
        for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 02:35:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766572515; x=1767177315; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5B7X/4st3uS1XExmmy54qb9S9vy/pEl6TnjtQgHIRt4=;
        b=atnVxLc2fRE3PWrbhVihpQXy5FHZ3R2+BkBU7zj9Xfb0RRieenvVdVs+mypFT2mzum
         vYsZ7CfwbpGCmN9CFZ3uV02RfSzjwCR1dE/9W1arYjABsR/9bgp0z50uDX29jEv8w869
         i+BiXpkgfVGEjMzA6d30qQuKCnavrV+213hTIOG9syjSWd4wR97tK8tnTUio8qk7PHDp
         l6OYt9ejypbCdcYnk45fCbjbAePI6PNLyWdt6bFViHXYkSiZzMnGn7X7UDp6G9OFrIyR
         I+2p5xKFemsn5EygOObqebUq2D40tvcJP+40oV3hFoDs+5UhBos5ix0X9k8f3v+Uwwn+
         8xeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766572515; x=1767177315;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=5B7X/4st3uS1XExmmy54qb9S9vy/pEl6TnjtQgHIRt4=;
        b=GSMGX6hSOxB+wXxvyV5KvrEpyIr5MmMSdK4Kq8Vcc+xQMIc2C+bQc5VeQ2roLK2aSv
         N7QvtmRMl2cZQAuQt+1HiG1AQtFuseUNcqpGD7FC+rcdnhjCFbfis/9pU38OyHPPJ+Y+
         igs/DnpmRGFM4m5ypPE88b6O/Wre2S/jJN58SPRhSITA7DIn5F00e4OIl0K9m+yXAHeY
         XOsAMD5jgpioFB2NmsSmVtPdUmFZ01COY3Vm1cu+m0PQmF8ijW4/ynBvXcez0nRKaBWt
         Aa2qaMz+xYrpquLU5KUvdXgd9gHfkVdEYh9OCS2zVYR+snWrWFNZFKb5S76SnBfqnRHo
         I9zw==
X-Forwarded-Encrypted: i=1; AJvYcCXydGtlXgqbpth1v1OxA5YZtc2ODqAbprm6FZujJ+oOV3xbXEz85HykbkfpD0Fc1Lb/7tysllNQG/fe@vger.kernel.org
X-Gm-Message-State: AOJu0YwvxqMW8+HSiphlHxPqQNcaP1I4y9s8torA9uiHGQ0abEuoBAnV
	ltEvratcW6Ue08kpWAyhH5ST/ibkBhoteK/yNwrSz9hmwFYW0lqbC/o+wiZtZTPsbZhdedrWaUi
	RLkU8dIEkN/LAwhZrNM6bC1RXebkuuJpeLIZOPzQhF4yNv6Zzj8AB07/N+8zvlKhp
X-Gm-Gg: AY/fxX43L2xndjWmzhi3VfDT1sbwDtaz1Qf/7n2K5gbwwxtZ1nxy2spN+/SjtBagkLH
	Z9hg4EbNrwOPUQHUXCuc47m9zDkkcW5Voom94K09F5kzGg5MmQyQHMHC/1XnxrfuLS9rr5N4OUX
	if5pd28UZHvhwIx0l31nuG0rBhg61uOgq7iHXzEluqFIgJuq42I+AwVBndY9hcPV/dXFC+rWdB0
	QfgglZC3/m8b59Qb5ot8Z9LqL3R7lEXHrqFlz5cAEILatY3qAP6/Pg8yLdFBTmVKlYl5jmBdXkb
	xtJD93j6kAGDlcjXxwtVJaM7iq2bSAIavBrPDbJjokv2CDlFbJR0YW6vfvfTFaD8FtRm5hO/p3J
	Ks+8af/RLGMg53y4=
X-Received: by 2002:a05:622a:1650:b0:4ee:2721:9ebe with SMTP id d75a77b69052e-4f4abda5267mr291904481cf.53.1766572515221;
        Wed, 24 Dec 2025 02:35:15 -0800 (PST)
X-Google-Smtp-Source: AGHT+IF8Zu0ulcRYN1mx7hv3wKsdC1QwBuowQN2q1dNCqxkOuNwf6JUdL4c53uVjCsLnu8DLDgy/Fg==
X-Received: by 2002:a05:622a:1650:b0:4ee:2721:9ebe with SMTP id d75a77b69052e-4f4abda5267mr291904161cf.53.1766572514760;
        Wed, 24 Dec 2025 02:35:14 -0800 (PST)
Received: from hackbox.lan ([86.121.7.169])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8037ad806asm1729496266b.23.2025.12.24.02.35.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Dec 2025 02:35:14 -0800 (PST)
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
Date: Wed, 24 Dec 2025 12:35:02 +0200
Subject: [PATCH v3 2/2] phy: qcom: qmp-pcie: Add support for Glymur PCIe
 Gen4x2 PHY
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251224-phy-qcom-pcie-add-glymur-v3-2-57396145bc22@oss.qualcomm.com>
References: <20251224-phy-qcom-pcie-add-glymur-v3-0-57396145bc22@oss.qualcomm.com>
In-Reply-To: <20251224-phy-qcom-pcie-add-glymur-v3-0-57396145bc22@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>
Cc: Wenbin Yao <wenbin.yao@oss.qualcomm.com>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Abel Vesa <abel.vesa@linaro.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-47773
X-Developer-Signature: v=1; a=openpgp-sha256; l=1660;
 i=abel.vesa@oss.qualcomm.com; h=from:subject:message-id;
 bh=VXpt8f6zXH/+hLrZTiSoj23lBGeVwFAS/12qWWbXTmc=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBpS8HcpS1ltDOf3TRp2VbPbueLoGAZ8D99I+0nR
 fwfWfkhJ66JAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCaUvB3AAKCRAbX0TJAJUV
 VsK0D/9V32xv6ZHYBs6PDxuE3jfxagz1nOknzloU21941ZLrbqb3burbE4CjOuD/Zt7uXY7z3tt
 25mk+SVIx3eJqfa32xsmlVAZ2aU0kj/jS24Uwqwa/74/FSAGB+iu3WHgd8CujwIEHfuOAj2Hvia
 uBIn/NT0IgTmVCjJsb62gIQm+mnkh96h2e+q5d6bRhLzkJ3J+y9+eHescGIAB8ff8WI2RSW8rDT
 NqoCQg2Wvd9VNQimPqupylbuBTYv6JIjQ15F7eKJqD+pVJKHQXbJYkWM55VpacbK8/PKEFXyPCC
 lIntQl9ZuUTLCbtLDqB3fUZJ+8xAXbr+goIpAYrnpveWiJpu/xrYItqr4wxPAiPXu92Nq8dgzFW
 l9Vv4oPqhIjgWFuKPsKC33ATyOddHzFwhBGZsWb1pSLgJ76ic61PnrIfaDTtuSVGCdtaZzt6Vay
 bBkAlTymiUeemK7fNTOpC4frV4aIJZ11/a2SYAfETEQEdVwWKIOu7BNvOQD4e5QQ4jClwF3JsYT
 xOOfRWtM+Ls1xl1uPAo3KYOLIzPzVEe+lkenPKXAEmkZe/1Z5NUrGxM4Q7Ac1Hax+/vW8Vu9I7Z
 rrwFfVs2ZOnwqULfNdpa3qcyW9kMvgBIPD1wpFZs4GQwlGR7++fSMsFi466VugAbYKHGdlc+nWC
 1k+zVAMG4tiePTQ==
X-Developer-Key: i=abel.vesa@oss.qualcomm.com; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-Proofpoint-GUID: H4kUv-8D0_u754CJX61E_-JNmp612zuX
X-Proofpoint-ORIG-GUID: H4kUv-8D0_u754CJX61E_-JNmp612zuX
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjI0MDA5MSBTYWx0ZWRfXzG0RIszWizVM
 Fue9ZKKdIpzaas3AGQGOJR0UdeVixR9rqqSlCoyduac/9uZqo7nABF3Wp89wZ3v2pQV0Bpntc/U
 o5OEewtBj3fCAWtwAJbp9xC2TxEa9nNvwXWICDLKLd1Xml7Nn88PwG5+uGq7xNUmk0hrMD5xDwg
 fYhdsZOX7/ELvCAZnw+gZEVTadUtK4rZIDeU5ZTHYVo6LSW3nJVIJhvTKRX7sr0qE+rcYlvmklE
 DZNFjmskiCS78eDoyhmC2ZwF/Tc/VPXamsn4XVVFFJ3j8aTV49KFxGmibkQZ2xRau0/3sq9rolA
 aEKugpmWkIVLjNFCaSnveX6+4Bv+xgThba/tGyoruUYKIxIsF83jDIbrIABcE3uFurIQoT2KUs7
 wErujqPQRfzL5XnIBk3ZHpqFuKv+3GV3wqf8555zbe8A8jI3itOmbluIgB9Gdc934oqJLdhPaY0
 iUhFXd9F+ituT7ctM/Q==
X-Authority-Analysis: v=2.4 cv=Qahrf8bv c=1 sm=1 tr=0 ts=694bc1e4 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=DdBtMnqNxkYIvXj6ev4VzQ==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=jLwOHZFV_4hwhF8wx3UA:9 a=QEXdDO2ut3YA:10 a=dawVfQjAaf238kedN5IG:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-24_03,2025-12-22_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 clxscore=1015 lowpriorityscore=0 adultscore=0
 priorityscore=1501 malwarescore=0 spamscore=0 bulkscore=0 impostorscore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2512240091

From: Abel Vesa <abel.vesa@linaro.org>

Glymur platform has two Gen4 2-lanes controllers, the fourth and
sixth instances. Add support for their PHYs.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index 7671aed5635f..fed2fc9bb311 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -4632,6 +4632,22 @@ static const struct qmp_phy_cfg glymur_qmp_gen5x4_pciephy_cfg = {
 	.phy_status		= PHYSTATUS_4_20,
 };
 
+static const struct qmp_phy_cfg glymur_qmp_gen4x2_pciephy_cfg = {
+	.lanes = 2,
+
+	.offsets		= &qmp_pcie_offsets_v8_0,
+
+	.reset_list		= sdm845_pciephy_reset_l,
+	.num_resets		= ARRAY_SIZE(sdm845_pciephy_reset_l),
+	.vreg_list		= qmp_phy_vreg_l,
+	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
+
+	.regs			= pciephy_v8_regs_layout,
+
+	.pwrdn_ctrl		= SW_PWRDN | REFCLK_DRV_DSBL,
+	.phy_status		= PHYSTATUS_4_20,
+};
+
 static void qmp_pcie_init_port_b(struct qmp_pcie *qmp, const struct qmp_phy_cfg_tbls *tbls)
 {
 	const struct qmp_phy_cfg *cfg = qmp->cfg;
@@ -5383,6 +5399,9 @@ static int qmp_pcie_probe(struct platform_device *pdev)
 
 static const struct of_device_id qmp_pcie_of_match_table[] = {
 	{
+		.compatible = "qcom,glymur-qmp-gen4x2-pcie-phy",
+		.data = &glymur_qmp_gen4x2_pciephy_cfg,
+	}, {
 		.compatible = "qcom,glymur-qmp-gen5x4-pcie-phy",
 		.data = &glymur_qmp_gen5x4_pciephy_cfg,
 	}, {

-- 
2.48.1


