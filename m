Return-Path: <devicetree+bounces-241006-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A0D4C78A1C
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 12:03:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 94F15356693
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 11:03:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CB05A34AAF0;
	Fri, 21 Nov 2025 11:01:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="CUIByRGX";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="BNLx2LlY"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C262234A76A
	for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 11:01:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763722911; cv=none; b=RKQosSyPJqqSgES5RRu+SAWu38aC1vkQmjy55i/JzCvjsY7aXBmJs4AQrTxpHEPXkoBbNnOVHOqY7MkLwkpwYkA1HAecMVkIaMYUeTWHrYyabZNaLlwRR8yVvX4Gj3fVh7AwQGDmLeOnmJ739WojAAK0QJGTSXZWNe1VqvUbygE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763722911; c=relaxed/simple;
	bh=P5U69w3P3RrrInJBdhiNdtUqS2lstsgQFpknD6yetgU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=P0EIjadBgGbXJjwVbUaekQFAYA/mZAMYiUByViykcqzcu+5FsWFuWr3OXHze98nLJhG1PuE+GQchd/j1uFSn0qPOB5Zb62gtEmKp9/fUC/wKHoOM69F3x/FncyoQOnO96SRWaPm817s3lkCfAGmLdpV7PyPTSbScyOnWilK5eck=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=CUIByRGX; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=BNLx2LlY; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AL8YtNs3139651
	for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 11:01:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	61/nTwA+YQVb/JWlGA+DXWSLg2PoQYRQMIcGlSkuVqw=; b=CUIByRGXvzHAS/6p
	AdBowdjNUzTQuoP5UxLdAitx8ro9jDA5CbKL/p2LvgwN5Iuze0zBWZ6OaK2RcZK6
	bJvROzhUbUFn9Y3F6P3AfMxkZXlDK621h3ot4K4iyteztzhHSNu+YC0CIjXC7quK
	8YjEcxcw/yDUAmLinOL7hCEFyd1T7YXF4xS83/8DO2gpYknPS8LOPYPKxwRsF1gh
	YFrKZYVyPswi3Wl+nUm3F0OGkQQpPv/5S9400AremwoQ+U8GJHwaXVHst7a4W2PV
	zMYhe4MLmo5My5vctgD3h2eC8iLTiujgJ2ggran2B3MLTC6vhbMYFJlhsInMzi9q
	BupfYw==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ajmppgm2b-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 11:01:48 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-b5edecdf94eso3831917a12.2
        for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 03:01:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763722908; x=1764327708; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=61/nTwA+YQVb/JWlGA+DXWSLg2PoQYRQMIcGlSkuVqw=;
        b=BNLx2LlYIAX7gDnnih244FXUl0OZY0fYC2gERvShlhU2sOpdtaH/gFvrtT5ft8nUAC
         bdwjX6RrPYelW+IAvsHBLORlhuBarA0oiqPZlgxMq7EWJBCoDemcFmojgeQbQ1eXydDA
         4/1QPMBnxFdOKWkV2Eow3n4Z6mFaJgOuuIqaY5yr9qhnGJGrDCLtUav2z1f6iY9uXOgx
         3e/L60D6rpRmGagX/Lht/IvFvzFML2UEwooErYtBGonH+8pQjpoBSsZ7HllUtidphJef
         QsTFgKpIbbU0fBl7CzI/nkvsBgZeP8JGWCzsTHBbRmbSxe57Df2/HWre/Z7/7Kx6aVkj
         3Huw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763722908; x=1764327708;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=61/nTwA+YQVb/JWlGA+DXWSLg2PoQYRQMIcGlSkuVqw=;
        b=A2tky9FlGboFE1io6eZ9dZl/olUBST3MROwg4qNWR+GXADYPVGcV+23T3XWHYlHsgd
         XsKKkndmqklxpcJcNd2RWx0dWDB/iBtu6it5lMt8u28SyX8GhCXMeWuQ+Fy0nY71evPP
         l3YhTOOCSHsweAbv1Kv9bVa9TFa7bE9pTBvHm6o/0Ir0n5AETQOC63PGS0XK9Mr+nd6T
         iZXq8dN4ZkTVviNWTK1BS/zLPrDf//rkIwHYOxYL6h0iXMKhlsNpxtR1QDpp8FZWUu7H
         ankamfW7yolZaa5BhEr9cGJenRMMey+ooRpsNSKJL6jrGLh+8is5GCiydPyR7lxMooMA
         rZ+w==
X-Forwarded-Encrypted: i=1; AJvYcCXpzdxlBpNCedb1FCTjgthvITdcm1gpchDD/zRpTqlgW/UcP3RwKJhqJIMymYG00OldbyKD1Ml0YjZK@vger.kernel.org
X-Gm-Message-State: AOJu0YxJ1J4TPm2sb5mOYElosxHQZT/7XAFyLdCMzeL9wJCxpzbE6QIy
	+XBj3/x752H4uujB4nE+eYT6FRh8sKTrGcwVJmcACRrzyaRU/ATCktZhOqYGuvMzMM7diUkOYQm
	qy0J4SVCPhZzuC9AOkyS9zxRsyucBd0zTyIvd8eywhMkMleRgSWeo27I45mQ+VH5I
X-Gm-Gg: ASbGncvZ4mu+q0CCcfWUuyed3bSRl3Es8+wYF0ysQZf/CLGQt1TayG/iuWge68rdOmK
	CHrOwvh8EW/lnu6vGWs00R+PE7s2QLdegsQ9dqjm8Y1JR01uiU3n3piQ507dKjvbKMtIxjiWDHo
	VtWRuBHXG0BwigAsD9IqoTJeNoWWzbXs/wAsXAfqFIDE1NpcCqQEmpC1fRh0SGX5xBEae50Vb+7
	0//8CD75FvFT92wGeDzD+lwK7qba9OFbGIpBRvjbi4+D74AJLpT47C/SE3og+HFn2xSXsrHfPad
	5JBZ9eLf/6F7H45zo+Dvw1GseGY5VAnsgw4UF+fXpw5zhUJUV3l6uaDKUjoBcUPx0wiQ+duzilR
	fKmdwDLHPxPrP6IxASwFBnZZ/zIEpnmxiiV5R
X-Received: by 2002:a17:90b:53c3:b0:33b:b020:597a with SMTP id 98e67ed59e1d1-34733d68a15mr2167221a91.0.1763722907552;
        Fri, 21 Nov 2025 03:01:47 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGhwcsgFYAkuaeX0Zh217forQYkU3Jj9NGxholJIUBIfCbw9zp0qKi5euy1gzSyvFRI4byGvw==
X-Received: by 2002:a17:90b:53c3:b0:33b:b020:597a with SMTP id 98e67ed59e1d1-34733d68a15mr2167183a91.0.1763722906934;
        Fri, 21 Nov 2025 03:01:46 -0800 (PST)
Received: from hu-mojha-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-34727d5208csm5191165a91.15.2025.11.21.03.01.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Nov 2025 03:01:46 -0800 (PST)
From: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
Date: Fri, 21 Nov 2025 16:31:08 +0530
Subject: [PATCH v8 06/14] soc: qcom: mdtloader: Add PAS context aware
 qcom_mdt_pas_load() function
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251121-kvm_rproc_v8-v8-6-8e8e9fb0eca0@oss.qualcomm.com>
References: <20251121-kvm_rproc_v8-v8-0-8e8e9fb0eca0@oss.qualcomm.com>
In-Reply-To: <20251121-kvm_rproc_v8-v8-0-8e8e9fb0eca0@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
X-Mailer: b4 0.14-dev-f7c49
X-Developer-Signature: v=1; a=ed25519-sha256; t=1763722879; l=5691;
 i=mukesh.ojha@oss.qualcomm.com; s=20250708; h=from:subject:message-id;
 bh=P5U69w3P3RrrInJBdhiNdtUqS2lstsgQFpknD6yetgU=;
 b=3UfxfR13JpcREfNzQtqKDrslo/BrquSvaAzCRe+OnPp3IVDUMQDoh0IUydt8hsbjSP9FcsnEe
 YPuRkYXMTQODyVS6NK49iJZd80rpKpAiSWsUZ16lSAmqvXtRHclT9ig
X-Developer-Key: i=mukesh.ojha@oss.qualcomm.com; a=ed25519;
 pk=eX8dr/7d4HJz/HEXZIpe3c+Ukopa/wZmxH+5YV3gdNc=
X-Proofpoint-ORIG-GUID: 72x7keiSeCWX3xkhf-6fNtf722u5CGed
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTIxMDA4NCBTYWx0ZWRfX1CEyNAAnHtlp
 UH4BBZFAS3C21lkf3lnqvPELKb2HF/XwH/rMZHR1xmZ4eyO3w9MTEYdDwaLEFXjw9uPY13opxS/
 teHSuO+sx7T/M0TyK1mBmi9eMEesm2RvNtOYbr4VcGHUyMZKBhYYELWdHpps+7xGYBpFHrMKsYG
 LjYAGDf0Ukao4zVSdNhNfUBzzuzLd7Y3J5DepM7mE9tvi1KvDuKHOXzYmvElgWYN1b3Dcg2NxZt
 Xd8+paaX3HX5aO0dQqfO71LaWusqto8/udlXlyC20vMC76PEh7Kw1kel7cQV3hKeJ31Zrxj+Q73
 i57oIIj51DaWPrth6Q44ouuHXCGDNukkhlJXxfLDy1AD8BbQ48oYXLxkb8Gcy/yXp1Udwq0tVsg
 IUKXwV/cM/bf5wwYhwZbselTqb4Ycg==
X-Proofpoint-GUID: 72x7keiSeCWX3xkhf-6fNtf722u5CGed
X-Authority-Analysis: v=2.4 cv=CK4nnBrD c=1 sm=1 tr=0 ts=6920469c cx=c_pps
 a=rz3CxIlbcmazkYymdCej/Q==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=lkfLrt0I0aiTJqoH1swA:9
 a=QEXdDO2ut3YA:10 a=bFCP_H2QrGi7Okbo017w:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-21_03,2025-11-20_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 bulkscore=0 adultscore=0 spamscore=0 impostorscore=0
 suspectscore=0 lowpriorityscore=0 clxscore=1015 malwarescore=0
 priorityscore=1501 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2511210084

Introduce a new PAS context-aware function, qcom_mdt_pas_load(), for
remote processor drivers. This function utilizes the PAS context
pointer returned from qcom_scm_pas_ctx_init() to perform firmware
metadata verification and memory setup via SMC calls.

The qcom_mdt_pas_load() and qcom_mdt_load() functions are largely
similar, but the former is designed for clients using the PAS
context-based data structure. Over time, all users of qcom_mdt_load()
can be migrated to use qcom_mdt_pas_load() for consistency and
improved abstraction.

As the remoteproc PAS driver (qcom_q6v5_pas) has already adopted the
PAS context-based approach, update it to use qcom_mdt_pas_load().

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
---
 drivers/remoteproc/qcom_q6v5_pas.c  | 24 +++++-------------------
 drivers/soc/qcom/mdt_loader.c       | 31 +++++++++++++++++++++++++++++++
 include/linux/soc/qcom/mdt_loader.h | 10 ++++++++++
 3 files changed, 46 insertions(+), 19 deletions(-)

diff --git a/drivers/remoteproc/qcom_q6v5_pas.c b/drivers/remoteproc/qcom_q6v5_pas.c
index 729e7b9bc183..9feee2cb1883 100644
--- a/drivers/remoteproc/qcom_q6v5_pas.c
+++ b/drivers/remoteproc/qcom_q6v5_pas.c
@@ -239,15 +239,9 @@ static int qcom_pas_load(struct rproc *rproc, const struct firmware *fw)
 			return ret;
 		}
 
-		ret = qcom_mdt_pas_init(pas->dev, pas->dtb_firmware, pas->dtb_firmware_name,
-					pas->dtb_pas_id, pas->dtb_mem_phys,
-					pas->dtb_pas_ctx);
-		if (ret)
-			goto release_dtb_firmware;
-
-		ret = qcom_mdt_load_no_init(pas->dev, pas->dtb_firmware, pas->dtb_firmware_name,
-					    pas->dtb_mem_region, pas->dtb_mem_phys,
-					    pas->dtb_mem_size, &pas->dtb_mem_reloc);
+		ret = qcom_mdt_pas_load(pas->dtb_pas_ctx, pas->dtb_firmware,
+					pas->dtb_firmware_name, pas->dtb_mem_region,
+					&pas->dtb_mem_reloc);
 		if (ret)
 			goto release_dtb_metadata;
 	}
@@ -256,8 +250,6 @@ static int qcom_pas_load(struct rproc *rproc, const struct firmware *fw)
 
 release_dtb_metadata:
 	qcom_scm_pas_metadata_release(pas->dtb_pas_ctx);
-
-release_dtb_firmware:
 	release_firmware(pas->dtb_firmware);
 
 	return ret;
@@ -305,14 +297,8 @@ static int qcom_pas_start(struct rproc *rproc)
 		}
 	}
 
-	ret = qcom_mdt_pas_init(pas->dev, pas->firmware, rproc->firmware, pas->pas_id,
-				pas->mem_phys, pas->pas_ctx);
-	if (ret)
-		goto disable_px_supply;
-
-	ret = qcom_mdt_load_no_init(pas->dev, pas->firmware, rproc->firmware,
-				    pas->mem_region, pas->mem_phys, pas->mem_size,
-				    &pas->mem_reloc);
+	ret = qcom_mdt_pas_load(pas->pas_ctx, pas->firmware, rproc->firmware,
+				pas->mem_region, &pas->mem_reloc);
 	if (ret)
 		goto release_pas_metadata;
 
diff --git a/drivers/soc/qcom/mdt_loader.c b/drivers/soc/qcom/mdt_loader.c
index b125140100db..50c6a3c6b2a3 100644
--- a/drivers/soc/qcom/mdt_loader.c
+++ b/drivers/soc/qcom/mdt_loader.c
@@ -478,5 +478,36 @@ int qcom_mdt_load(struct device *dev, const struct firmware *fw,
 }
 EXPORT_SYMBOL_GPL(qcom_mdt_load);
 
+/**
+ * qcom_mdt_pas_load - Loads and authenticates the metadata of the firmware
+ * (typically contained in the .mdt file), followed by loading the actual
+ * firmware segments (e.g., .bXX files). Authentication of the segments done
+ * by a separate call.
+ *
+ * The PAS context must be initialized using qcom_scm_pas_context_init()
+ * prior to invoking this function.
+ *
+ * @ctx:        Pointer to the PAS (Peripheral Authentication Service) context
+ * @fw:         Firmware object representing the .mdt file
+ * @firmware:   Name of the firmware used to construct segment file names
+ * @mem_region: Memory region allocated for loading the firmware
+ * @reloc_base: Physical address adjusted after relocation
+ *
+ * Return: 0 on success or a negative error code on failure.
+ */
+int qcom_mdt_pas_load(struct qcom_scm_pas_context *ctx, const struct firmware *fw,
+		      const char *firmware, void *mem_region, phys_addr_t *reloc_base)
+{
+	int ret;
+
+	ret = qcom_mdt_pas_init(ctx->dev, fw, firmware, ctx->pas_id, ctx->mem_phys, ctx);
+	if (ret)
+		return ret;
+
+	return qcom_mdt_load_no_init(ctx->dev, fw, firmware, mem_region, ctx->mem_phys,
+				     ctx->mem_size, reloc_base);
+}
+EXPORT_SYMBOL_GPL(qcom_mdt_pas_load);
+
 MODULE_DESCRIPTION("Firmware parser for Qualcomm MDT format");
 MODULE_LICENSE("GPL v2");
diff --git a/include/linux/soc/qcom/mdt_loader.h b/include/linux/soc/qcom/mdt_loader.h
index 07c278841816..7d57746fbbfa 100644
--- a/include/linux/soc/qcom/mdt_loader.h
+++ b/include/linux/soc/qcom/mdt_loader.h
@@ -23,6 +23,9 @@ int qcom_mdt_load(struct device *dev, const struct firmware *fw,
 		  phys_addr_t mem_phys, size_t mem_size,
 		  phys_addr_t *reloc_base);
 
+int qcom_mdt_pas_load(struct qcom_scm_pas_context *ctx, const struct firmware *fw,
+		      const char *firmware, void *mem_region, phys_addr_t *reloc_base);
+
 int qcom_mdt_load_no_init(struct device *dev, const struct firmware *fw,
 			  const char *fw_name, void *mem_region,
 			  phys_addr_t mem_phys, size_t mem_size,
@@ -52,6 +55,13 @@ static inline int qcom_mdt_load(struct device *dev, const struct firmware *fw,
 	return -ENODEV;
 }
 
+static inline int qcom_mdt_pas_load(struct qcom_scm_pas_context *ctx,
+				    const struct firmware *fw, const char *firmware,
+				    void *mem_region, phys_addr_t *reloc_base)
+{
+	return -ENODEV;
+}
+
 static inline int qcom_mdt_load_no_init(struct device *dev,
 					const struct firmware *fw,
 					const char *fw_name, void *mem_region,

-- 
2.50.1


