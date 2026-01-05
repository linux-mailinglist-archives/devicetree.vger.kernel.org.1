Return-Path: <devicetree+bounces-251517-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id C7823CF3CAD
	for <lists+devicetree@lfdr.de>; Mon, 05 Jan 2026 14:28:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B7FDA30AEA22
	for <lists+devicetree@lfdr.de>; Mon,  5 Jan 2026 13:24:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CD50533E371;
	Mon,  5 Jan 2026 13:24:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="LYV8BK36";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="kTjVOV6R"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 037C933DED6
	for <devicetree@vger.kernel.org>; Mon,  5 Jan 2026 13:24:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767619452; cv=none; b=SmX+0ocjuqhv+L8Ljl9bQiSCJyf5S4WUqGklFQvxmrijWUFjuAxdrwCailFSkSGsmSmlcqaFK23IwDAzwOBNC5IgSwaJaZa9XKNjpZp2z21YVsIPhFln8TMwSPosIqNX8f9s4Z/yuGDoKbZ+KE6cV+HCBLePGj2AH+JsdLDHWBo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767619452; c=relaxed/simple;
	bh=SZMLL6envtkRQd8eBea0TMuWbkm/UcC4Ymddh/OwcXs=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=FDgzGWNepUkQxlZHWZ5Q6xP8RhNEZ3Yp9SJbMGC2e83P4ou4tuavVpkfU+AeIrkrOwuT9RcwHrERZEsqHUQdEjBIi/jUOXLZSWXlELmaVhWskdwZPZGl9zk8icoRnMc44uHCIRZuShkj5SNykEcIH/9a1r0CHLAy5yXeFaKnGho=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=LYV8BK36; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=kTjVOV6R; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 605CBgC24031720
	for <devicetree@vger.kernel.org>; Mon, 5 Jan 2026 13:24:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ohQiEFekNMtUiDlK7Tte7+x0/iQw7PLc7Lalx3fyAvQ=; b=LYV8BK36KzzLFhFb
	nKD2UD28f5/C3C93p4RokgXGJ9Eu9TvazGYLHrezeuHHv/A2mIIv4gpoius4pM/a
	I85WVK9Cb8lw/SLvzbp2NoQqd0xCEOaiDTobCrnSohSSuUOtlV23N2FhYhYLFZvU
	TxNIj7TVmij6ota1WCC8rytIWm+oKWjIKVFpodvJvZfjfeEdddtvLKFYG6rUuhgl
	WcQjXCyN0p7eCyVD5DjRr3mTuL9XsjzKXG9mXCfkhNEaPz3gfzLKEBE39klebghf
	qcvONpp8Fbiy08pdyE3jqjJLMsCVWPU+xPUzeou1QuVlY+R4W5CrTwQZhi9NS3DF
	wbC9pQ==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bg79nh9pb-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 05 Jan 2026 13:24:08 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-7b952a966d7so29785668b3a.3
        for <devicetree@vger.kernel.org>; Mon, 05 Jan 2026 05:24:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767619447; x=1768224247; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ohQiEFekNMtUiDlK7Tte7+x0/iQw7PLc7Lalx3fyAvQ=;
        b=kTjVOV6R+0u4xdzvZ7cNFo9wFAqdN+8v7bIIjNu9FlIKe36+7D2k0gHV/NUwCE1EDh
         1stEv4ssoejCfGkJczKhMR47vVmORaaKnkq6WL3zSms+xw6bl8Vc48kauv32frFPBWpq
         AXPiZ4XD7QuB8CeqAlz22F0hm6gkx8CqzFGDsgdc7HD7KETp2CN3mcWPPlpXFNPsxpeN
         K1kk7fNzOv2QeYuscvETITfQr8N8IU6U2q5VLdZwZLZLAKcLCxDifM7DrzkYsYTZTcix
         WmmWtg4tH3wFkcvyuNuhXqYX8VCeZYFNUb0PAC2WB1MGcHklnR00KpPRQG5i9hAA3vEz
         Q8VA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767619447; x=1768224247;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ohQiEFekNMtUiDlK7Tte7+x0/iQw7PLc7Lalx3fyAvQ=;
        b=SfxLmb9e3tTz1Wg775zgXtSv71ay99QdbHATOkHyLDcWRak7W871K49CLRqkaqLR8D
         3CI0Qk0SdlAicNxr6bFUejkwGTqPVOQg7rJoRGhD/BfTiZ4V/yLxpo2PzVfOWLHSW66u
         fVmcg3SlgacaoAO7np9Gd6QOoGlWl93Uh7tgp/EX3SXxP3kdcyMWAs4R4aWdtzLCoD9f
         lQqLBhn72lwhcXBDgt9v7h50ym53QESTTKboindO/MqyuB96vLCKEJuxTD0ljOGlHrJ/
         ep9GagJglGem16jqyXbSj6rdnQBmDQNFRgiIgOEUZHV3Kl9rj6rMRAfOTii+n92Zbgmy
         h3KQ==
X-Forwarded-Encrypted: i=1; AJvYcCUmqUahsfcZU0KdsySRPSTPQzDJ4vgNsuv2a0A2oa5NiEekXYap/pwgA4QMeksedALiRly4FEgEUK3C@vger.kernel.org
X-Gm-Message-State: AOJu0YzRKRL8xwIjT47T/SdrEhVfF/RSie83xk6hmG5cst+kpTTPTIjV
	8Fo2cTeTfeoHweqJSm8nbGg3ADY9WTfQxI8RaBwJJzsEW3mDuk9utbAhm7LHHDaCqROHeqX1PV/
	YWmhcw9AUYoES7vzxttnZQNs6lxa6z18z3jPr4EP+IXmunISDzBsh1ACAQDOytX90
X-Gm-Gg: AY/fxX7+D/OQbfBnyRnpT4Snu/HJtkY6syTyURAGl7guXkam5BcUeGnmPozewWZmb80
	H2h4qa2ujOuvrifkV98qMeQUe4/ulUUktRvrgGwmHXILct3Q9bAHYQReE/Va1irdm3sUs+/lPGj
	pYW1gJa8lLqtD4neBFBYVLKfrKqA7avKD4aeQ3LmIx0OltreyL+qQKmamLQSgQ8v2Ne3eewxUfT
	6TsGyYRI2c00+vqD7xGsqusWbiioRZsyrvnKTLV+BL8IbKjN826R+p3HIn7Jvo9Ua0eU17ipQPy
	oQy1Fcbt+PIK6sH1jWffC+VeWjoNH5QXk9LSC1JXbzTUy85xS970+FW1K/TukjzV+ctIAwg7IM+
	LdJg5nifMFYICAyCzqHjZodphAT0+9WYoQthy
X-Received: by 2002:a05:6a00:9089:b0:772:8101:870c with SMTP id d2e1a72fcca58-7ff650c7d82mr39707449b3a.11.1767619447209;
        Mon, 05 Jan 2026 05:24:07 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHrSy24RdLkJ6c7CQbabVzL9tb4PirLfLaJUXj19u3EireiiMIr6CF9FlfGlVHkbSwBXnGaTA==
X-Received: by 2002:a05:6a00:9089:b0:772:8101:870c with SMTP id d2e1a72fcca58-7ff650c7d82mr39707429b3a.11.1767619446460;
        Mon, 05 Jan 2026 05:24:06 -0800 (PST)
Received: from hu-mojha-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7ff7b127b00sm48426542b3a.21.2026.01.05.05.24.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Jan 2026 05:24:06 -0800 (PST)
From: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
Date: Mon, 05 Jan 2026 18:53:01 +0530
Subject: [PATCH v10 13/14] remoteproc: qcom: pas: Enable Secure PAS support
 with IOMMU managed by Linux
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260105-kvmrprocv10-v10-13-022e96815380@oss.qualcomm.com>
References: <20260105-kvmrprocv10-v10-0-022e96815380@oss.qualcomm.com>
In-Reply-To: <20260105-kvmrprocv10-v10-0-022e96815380@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
X-Mailer: b4 0.14-dev-f7c49
X-Developer-Signature: v=1; a=ed25519-sha256; t=1767619390; l=5426;
 i=mukesh.ojha@oss.qualcomm.com; s=20250708; h=from:subject:message-id;
 bh=SZMLL6envtkRQd8eBea0TMuWbkm/UcC4Ymddh/OwcXs=;
 b=/PPUDyUEow1Rl+NErMQSnDwMeIczmC1juCIWdIM2NZuQ4gc3m8I8jBR+sTXRaPvsUGBZSJSkf
 UYSWUTmynAVBWFtQ5WLdILE0NTpp3YFZi1Pc6ftLYKNa4xro0m9Qy8w
X-Developer-Key: i=mukesh.ojha@oss.qualcomm.com; a=ed25519;
 pk=eX8dr/7d4HJz/HEXZIpe3c+Ukopa/wZmxH+5YV3gdNc=
X-Proofpoint-GUID: GWMgo4HkP-WourQe_4ghHkrwNBHsnbrB
X-Proofpoint-ORIG-GUID: GWMgo4HkP-WourQe_4ghHkrwNBHsnbrB
X-Authority-Analysis: v=2.4 cv=Y8P1cxeN c=1 sm=1 tr=0 ts=695bbb78 cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=58pnfTnN0ARRJNaB1lkA:9
 a=QEXdDO2ut3YA:10 a=IoOABgeZipijB_acs4fv:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA1MDExNyBTYWx0ZWRfX5wHuucLox4r8
 lHg617i30gq4k60eBJWz3//aaK5+BAi6v6W+wHk1ITcpEYf86zJJOw00iRJAQNQpp1+oPeU+duq
 YgpSzpbBudat09K4uvaPiCMtaSA1l8UIpGjPHpa17v/lZEItuPviYwg4XXR7oKWk1HLwzvVPmSX
 9zNfjgMVEy/sAlFvRyPGAF/Uu2cmA+4XI52uZCiIYSk29WUX6BEMIk4fSbLvwepIXlai0/nCkxB
 vX9NqnfbaTqatb8G56qtwEcRwEvpqf/z9vM61ZDMjbk4TxVohsdLzowst2cgBvifA+vLfcCYWU/
 4FE7EeRvgtnlCucI7OXdpbPp5NblHRspUVx1/2K19psTme7XYTXpNefvJngrcx/+iMsM10TL47F
 Ww1nNcwJW9A2WjQ2qL2+6EGbgK+CsOs1dNBxYa3eVSIr7HQHxf7gxfYSUPHdFp/T6qtWIshX+pL
 fWKyFFOHrLgdecDoGdw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-05_01,2025-12-31_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 malwarescore=0 lowpriorityscore=0 phishscore=0
 impostorscore=0 suspectscore=0 clxscore=1015 bulkscore=0 adultscore=0
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601050117

Most Qualcomm platforms feature Gunyah hypervisor, which typically
handles IOMMU configuration. This includes mapping memory regions and
device memory resources for remote processors by intercepting
qcom_scm_pas_auth_and_reset() calls. These mappings are later removed
during teardown. Additionally, SHM bridge setup is required to enable
memory protection for both remoteproc metadata and its memory regions.
When the aforementioned hypervisor is absent, the operating system must
perform these configurations instead.

When Linux runs as the hypervisor (@ EL2) on a SoC, it will have its
own device tree overlay file that specifies the firmware stream ID now
managed by Linux for a particular remote processor. If the iommus
property is specified in the remoteproc device tree node, it indicates
that IOMMU configuration must be handled by Linux. In this case, the
has_iommu flag is set for the remote processor, which ensures that the
resource table, carveouts, and SHM bridge are properly configured before
memory is passed to TrustZone for authentication. Otherwise, the
has_iommu flag remains unset, which indicates default behavior.

Enables Secure PAS support for remote processors when IOMMU configuration
is managed by Linux.

Signed-off-by: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
---
 drivers/remoteproc/qcom_q6v5_pas.c | 48 ++++++++++++++++++++++++++++++++++----
 1 file changed, 43 insertions(+), 5 deletions(-)

diff --git a/drivers/remoteproc/qcom_q6v5_pas.c b/drivers/remoteproc/qcom_q6v5_pas.c
index e0c7bf94bfc6..46204da046fa 100644
--- a/drivers/remoteproc/qcom_q6v5_pas.c
+++ b/drivers/remoteproc/qcom_q6v5_pas.c
@@ -11,6 +11,7 @@
 #include <linux/delay.h>
 #include <linux/firmware.h>
 #include <linux/interrupt.h>
+#include <linux/iommu.h>
 #include <linux/kernel.h>
 #include <linux/module.h>
 #include <linux/of.h>
@@ -255,6 +256,22 @@ static int qcom_pas_load(struct rproc *rproc, const struct firmware *fw)
 	return ret;
 }
 
+static void qcom_pas_unmap_carveout(struct rproc *rproc, phys_addr_t mem_phys, size_t size)
+{
+	if (rproc->has_iommu)
+		iommu_unmap(rproc->domain, mem_phys, size);
+}
+
+static int qcom_pas_map_carveout(struct rproc *rproc, phys_addr_t mem_phys, size_t size)
+{
+	int ret = 0;
+
+	if (rproc->has_iommu)
+		ret = iommu_map(rproc->domain, mem_phys, mem_phys, size,
+				IOMMU_READ | IOMMU_WRITE, GFP_KERNEL);
+	return ret;
+}
+
 static int qcom_pas_start(struct rproc *rproc)
 {
 	struct qcom_pas *pas = rproc->priv;
@@ -289,11 +306,15 @@ static int qcom_pas_start(struct rproc *rproc)
 	}
 
 	if (pas->dtb_pas_id) {
-		ret = qcom_scm_pas_auth_and_reset(pas->dtb_pas_id);
+		ret = qcom_pas_map_carveout(rproc, pas->dtb_mem_phys, pas->dtb_mem_size);
+		if (ret)
+			goto disable_px_supply;
+
+		ret = qcom_scm_pas_prepare_and_auth_reset(pas->dtb_pas_ctx);
 		if (ret) {
 			dev_err(pas->dev,
 				"failed to authenticate dtb image and release reset\n");
-			goto disable_px_supply;
+			goto unmap_dtb_carveout;
 		}
 	}
 
@@ -304,18 +325,22 @@ static int qcom_pas_start(struct rproc *rproc)
 
 	qcom_pil_info_store(pas->info_name, pas->mem_phys, pas->mem_size);
 
-	ret = qcom_scm_pas_auth_and_reset(pas->pas_id);
+	ret = qcom_pas_map_carveout(rproc, pas->mem_phys, pas->mem_size);
+	if (ret)
+		goto release_pas_metadata;
+
+	ret = qcom_scm_pas_prepare_and_auth_reset(pas->pas_ctx);
 	if (ret) {
 		dev_err(pas->dev,
 			"failed to authenticate image and release reset\n");
-		goto release_pas_metadata;
+		goto unmap_carveout;
 	}
 
 	ret = qcom_q6v5_wait_for_start(&pas->q6v5, msecs_to_jiffies(5000));
 	if (ret == -ETIMEDOUT) {
 		dev_err(pas->dev, "start timed out\n");
 		qcom_scm_pas_shutdown(pas->pas_id);
-		goto release_pas_metadata;
+		goto unmap_carveout;
 	}
 
 	qcom_scm_pas_metadata_release(pas->pas_ctx);
@@ -327,10 +352,16 @@ static int qcom_pas_start(struct rproc *rproc)
 
 	return 0;
 
+unmap_carveout:
+	qcom_pas_unmap_carveout(rproc, pas->mem_phys, pas->mem_size);
 release_pas_metadata:
 	qcom_scm_pas_metadata_release(pas->pas_ctx);
 	if (pas->dtb_pas_id)
 		qcom_scm_pas_metadata_release(pas->dtb_pas_ctx);
+
+unmap_dtb_carveout:
+	if (pas->dtb_pas_id)
+		qcom_pas_unmap_carveout(rproc, pas->dtb_mem_phys, pas->dtb_mem_size);
 disable_px_supply:
 	if (pas->px_supply)
 		regulator_disable(pas->px_supply);
@@ -386,8 +417,12 @@ static int qcom_pas_stop(struct rproc *rproc)
 		ret = qcom_scm_pas_shutdown(pas->dtb_pas_id);
 		if (ret)
 			dev_err(pas->dev, "failed to shutdown dtb: %d\n", ret);
+
+		qcom_pas_unmap_carveout(rproc, pas->dtb_mem_phys, pas->dtb_mem_size);
 	}
 
+	qcom_pas_unmap_carveout(rproc, pas->mem_phys, pas->mem_size);
+
 	handover = qcom_q6v5_unprepare(&pas->q6v5);
 	if (handover)
 		qcom_pas_handover(&pas->q6v5);
@@ -738,6 +773,7 @@ static int qcom_pas_probe(struct platform_device *pdev)
 		return -ENOMEM;
 	}
 
+	rproc->has_iommu = of_property_present(pdev->dev.of_node, "iommus");
 	rproc->auto_boot = desc->auto_boot;
 	rproc_coredump_set_elf_info(rproc, ELFCLASS32, EM_NONE);
 
@@ -817,6 +853,8 @@ static int qcom_pas_probe(struct platform_device *pdev)
 		goto remove_ssr_sysmon;
 	}
 
+	pas->pas_ctx->use_tzmem = rproc->has_iommu;
+	pas->dtb_pas_ctx->use_tzmem = rproc->has_iommu;
 	ret = rproc_add(rproc);
 	if (ret)
 		goto remove_ssr_sysmon;

-- 
2.50.1


