Return-Path: <devicetree+bounces-247598-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A92FCC8DFE
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 17:52:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 3824F3049658
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 16:45:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5706734EEFA;
	Wed, 17 Dec 2025 16:35:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="TEfSZCf0";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="KW29utnr"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F20334D931
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 16:35:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765989332; cv=none; b=Qh1pafLG5TD7XRmUKhgXXjOCRmnYZ04jorKWMhDO/4vHdR1wjoOcYoETMQBo7/lyyj2GnKAgVmCIhfwzGTUoCFdkZQGwaaX9VRsJYia7IuG/ia3niEkEHvae8KLTmdH/WrSA0rvYizZf2cVeNaPMjfGcbu1hVRFLiaY2XOTcBqc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765989332; c=relaxed/simple;
	bh=6F8K/zkrX0qeC580/xJB2YdjtX5REOOH8FpswaScz30=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=MKgFGTbV1JqcUInoRV/OzcXXOZDN7QvuyuGpDmDq0ea76VDWzh+n6XgM+UgIjBF+dPbc7oUfgSRjOTAn5iZ+nXDeGjAbxaWZEAfLPtGJggYPfsi4zDmxMwczghF7smV4gkoSEXZEHfP/IWj/JcUO5zKDImjTZFYhLn+6RV3tAEs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=TEfSZCf0; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=KW29utnr; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BHCL4oe331028
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 16:35:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	786iM0/9dnDx7bEo0CycJSZKYjOjPKU4LuDUpimk85w=; b=TEfSZCf0zni3Jk7Y
	6Gglc7j851J8LIPJTssUoaXG4XuwsF9x0RO/O1O00Lnq9Oh9mk/WuCRpE33CaKOR
	D6iHYdt6fzDrgso8/FKZ8H8YvG2WbaFPjMVXVtGqmbwAhUzJDu6NCnfnVv1c0yJj
	sGCWYZeePF7VHbDkAQvnfeG/ZXg+U9tHp+k+LyehLN5NPGk9szfcw4dzL3lPWApb
	QiO/Je6W7EI41KyIkMKyPkd3XXtV5aTWjbmNq3LBQx1UiZOra/FRb2qD69Uzyjdx
	xwY0dIJ45w9Dg857V5hmN/0J9Ae6EyVAO0/ktTIC4NUrAfyLJgXdOUd9KQZl1s2a
	GWzaIg==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b3t8e18sq-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 16:35:29 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-29f25e494c2so9411335ad.0
        for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 08:35:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765989328; x=1766594128; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=786iM0/9dnDx7bEo0CycJSZKYjOjPKU4LuDUpimk85w=;
        b=KW29utnraKGSrH3yW2ckqglEVR8oejBsfa5HJrU4wD+pjgY6o32YrCd3W0IIzixdJy
         RZINxGS5wecObn0shdS4SVi08TZlSYNG0r9JYyywsgV7uCYV8EhMoERtq1030FdimYgg
         uVkUQx/HyH2cUeWUQziZ/LoSfDl+LFM94buBvbgjELSrw67QraEtOYsEbUWOP/bMW9Yu
         +JBGHnQY/J4cN9+Pxsb7Vs5xJPoLonFgize+kma+rs3nDgFVDkY9UJGRaiSQw2HgXZBR
         FsJVE37aRqdpQFOAJxkXYZsec3Dfp+jplFpomUTxf0ohLMiLDaENIdUPfzqJfOXy4dnY
         sggA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765989328; x=1766594128;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=786iM0/9dnDx7bEo0CycJSZKYjOjPKU4LuDUpimk85w=;
        b=hu3x4TEX/o1E3FfziWYFielx3EPoo/j9Qzhh9ZJejFGJYTmqT9BrmF3pbp7h2mj7Wa
         9D8zJWoDUDy89KPZCnZTXWYEssG/anDBMqZmjuLPArbvWjMBB9gqf2o2sHKxVQ6uDuWt
         HzOQfROxhrOsLZ5l3F3sXb1739Lu34TbCifVa7S4ZPbRRt6+3PQDYpq2MNmxEV7nCzyw
         6gF4bIjHGNITetkGDVLq8+/lz85r0j0iLZwx5xHFEKOeaY/eljXMudWwOUTo3vmGS3Cq
         V9hv10fMYzqKBWqknW7SnbI2UDwLsdfR9OzfXFR6NFbwqhWiQQSK0lz2BmF3EzkStvb6
         8IQA==
X-Forwarded-Encrypted: i=1; AJvYcCWWl9mRC6OXe1+pKiHjT1KduqQz5+I/iF8cYXAV09fyopXYz/F/1LLwOqdD1hrF3rmnjNrPmG0vMOq4@vger.kernel.org
X-Gm-Message-State: AOJu0YwlbfOZy+pbQX2RXjYALm++72FEGyMwKMeDn6jWXuTMsigNJ6xW
	BwXeF8YIqqm5Hl38xKYDnS6f+l5dEqiFCrqTJWiG6tKmzwyyYBbf2YO9D7AMiTMfCd2M3+Bwqwo
	wTht5Z9u60cdi+KHPQj6dLJN1niTVPkoDCfGvcQBPLMn4QkwxZyzi6ujkfqQGUuox
X-Gm-Gg: AY/fxX5i0jIJ2BH5E5e0/o7E7e0ZMfoOSpM51oSq586Mc+KGN3DlP+HaUQm6b4et4i+
	kzXWoxSPT2plmqvXv3U8SfRoBPSb8WWrRoDXLskNit2ngn8OKoAy395s5Gj3KxuhNxlgRWaYQn7
	3dD+SvBx3EAuKf6CcLpog1bWWxiQSNeIx64MD4W65Md+6lBISxEzk0xUeVzRLHivphmcqCfKU2w
	81yTq8y8fEwUVAbmvLc1DUhSddjloJWi9115BiMDgtyTfwH/GQS+1Wj3Kx2Rh01W80Fnf2Kq0ju
	2L9+dUGkuSEI1SBTFhq2EQ4oE+x9NveC6oTs9l1SFKKkUyDNFqj0/wL1pnXX2KQNy7ddm9usepZ
	Ky0de/xMmRLJxRPR0xJTqa8Z7vgMulvWraCBf
X-Received: by 2002:a17:902:e542:b0:2a0:f0e5:74eb with SMTP id d9443c01a7336-2a2cab2bd2amr81075ad.28.1765989328115;
        Wed, 17 Dec 2025 08:35:28 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHsXaMJdpsrhK5fLovOkWw7stgnK2NdCk0m7p1NGBrLYBj77YlQmcA22h8/7HFWHsnBETbGPQ==
X-Received: by 2002:a17:902:e542:b0:2a0:f0e5:74eb with SMTP id d9443c01a7336-2a2cab2bd2amr80645ad.28.1765989327492;
        Wed, 17 Dec 2025 08:35:27 -0800 (PST)
Received: from hu-mojha-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29ee9b36af7sm204721055ad.18.2025.12.17.08.35.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Dec 2025 08:35:27 -0800 (PST)
From: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
Date: Wed, 17 Dec 2025 22:04:42 +0530
Subject: [PATCH v9 06/14] soc: qcom: mdtloader: Add PAS context aware
 qcom_mdt_pas_load() function
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251217-kvm_rproc_v9-v9-6-ab7ac03e0ff1@oss.qualcomm.com>
References: <20251217-kvm_rproc_v9-v9-0-ab7ac03e0ff1@oss.qualcomm.com>
In-Reply-To: <20251217-kvm_rproc_v9-v9-0-ab7ac03e0ff1@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1765989299; l=5691;
 i=mukesh.ojha@oss.qualcomm.com; s=20250708; h=from:subject:message-id;
 bh=6F8K/zkrX0qeC580/xJB2YdjtX5REOOH8FpswaScz30=;
 b=21fsj2CTmQL9BwFKV88aPEWlIJfrq8cTzidFVBR8fysHYqxSR7N7J3RJ+SdwPUJga1Bz2aLJK
 rmUov0+y2QCATZLqgAmf3pFqOh3OXL4RIC1DSISd2K6dNGPXH6SziIx
X-Developer-Key: i=mukesh.ojha@oss.qualcomm.com; a=ed25519;
 pk=eX8dr/7d4HJz/HEXZIpe3c+Ukopa/wZmxH+5YV3gdNc=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE3MDEzMSBTYWx0ZWRfX3zPeg0cmoCyB
 x/bFvi77yVAdh4lZmVd7iA6ot+NfCS/+ZjyWwjTfcfKnf3lXwAFmvooBEzeJemIJxXGdidGH+ZB
 rxSYGGXyr4Eqn83lb++T86nVuNHpnz1ZUOdE1gZNcE6gCklJ7Y8AQ5Uo99rLwAikIPEE5ebtt/O
 nPZb+439tmBuWidDBdzyjVHSlfb6xPyQbTH1BBuI2oTUGhJ+KHUzi1MmUwB3waWHYJ6SHcLolP4
 /LlbMwsI54pg4oSYrMtQIHYa1sriCwBjVJyirKWvf4S6BrIhyC8Sp48bahmGvAsPl9FitN0G35p
 mOngDyFNxh7kDRr7alP9dAv2tIqz5voAGIVP4r29dZDFSvxwI7Jmtpq0Em5/5K4FZM1N+3ISkxg
 FPvRB58O5XM6TsDngVCUCe/fh0gHog==
X-Proofpoint-GUID: iWUjRh29c8xwr9Ur3CJw7l64tmWldSbS
X-Proofpoint-ORIG-GUID: iWUjRh29c8xwr9Ur3CJw7l64tmWldSbS
X-Authority-Analysis: v=2.4 cv=EsHfbCcA c=1 sm=1 tr=0 ts=6942dbd1 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=lkfLrt0I0aiTJqoH1swA:9
 a=QEXdDO2ut3YA:10 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-17_03,2025-12-16_05,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 bulkscore=0 priorityscore=1501 suspectscore=0 impostorscore=0
 clxscore=1015 lowpriorityscore=0 phishscore=0 spamscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512170131

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
index bfcb65aed008..f746d2f39a1d 100644
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


