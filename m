Return-Path: <devicetree+bounces-224256-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id BA0B2BC2282
	for <lists+devicetree@lfdr.de>; Tue, 07 Oct 2025 18:50:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9D6E619A5151
	for <lists+devicetree@lfdr.de>; Tue,  7 Oct 2025 16:50:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8C7AE2E92D6;
	Tue,  7 Oct 2025 16:49:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="SfJbtc7L"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3F5E2E8E1C
	for <devicetree@vger.kernel.org>; Tue,  7 Oct 2025 16:49:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759855774; cv=none; b=Ryj5jELqJGw5YRReYDfuc5iA81A3JKxWs0c9x0OD6HrTn24Uz49EQ7Slk1tAmP62+rmj3KpfqTp1drKLlhBM+F7Vk6UGKmr6nQat89ggLD1V3TGQVlTuOcEV6az3zX4fOsQjjG1VwS9XQnoQO67GnQXWbWz/pLIwNAptlP4oAA8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759855774; c=relaxed/simple;
	bh=5ySg3oqdhTBFKhYF19nJktUPZz2jX4cWgK5IfIezTP4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=JAexX7acvM18ghEzVknak0VUD4doyDSwZTEaSmMkGxC+xDQtBjBTVPgizXiGvgLaFXrQmJs1bRbnQHtc9OyoRukJVgV74ZipZGyjRh/4+q70fbrC1xDZJ8SFSogLehK5TGxldS/T4rg40TjbBrmO1yyfI4/BhZrHY+VIaiSBr4o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=SfJbtc7L; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 597ET60e026578
	for <devicetree@vger.kernel.org>; Tue, 7 Oct 2025 16:49:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	qdsdQmoQzXdnVBOtp02PaRgYLFkPY2o3v41AlXFLZR8=; b=SfJbtc7Ljo0j9IXj
	WDHpgM5a7S/9carLBFAm/rdBLcwCky/CXcz8bSmZ61y9UFsQHZ7416nB3+I95ayE
	gFXmyPrTXGudDupDBqZxPpnMvJL1gG0ouJCc8RtRBlN5+MPrZltH0XEqXewLbTE9
	ui45G+NwVdIl8d9XNwMvWc6sFjosxkDy91K/8L0/PLjnct7qiHfKSs/bsWx3tYMC
	ZYXxBTi/rWfLeDwLC2I7gvMLim08YTCE1/+aMZtSQ3XZjJEzKbsJzQLLJSuA+hbK
	DF42Ls9yIa8Odeb4hDbShOYf/V6mnXuvzLdXLl24XeJ9YgEnnWIsutkteqGbkGfB
	vorUSw==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49mgd0kq48-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 07 Oct 2025 16:49:31 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-26985173d8eso111411185ad.1
        for <devicetree@vger.kernel.org>; Tue, 07 Oct 2025 09:49:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759855770; x=1760460570;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qdsdQmoQzXdnVBOtp02PaRgYLFkPY2o3v41AlXFLZR8=;
        b=TtkF2vwrlwZcUV+H0qv5OJyPbRQKJjheLrLBt81P+WDArFdBDZ1mjEDeOiy28TfT1b
         lWO6QnmuGwiSsa93Uw0hCBNu0mWSncAko0aGxOO9HyG6ubrLE09UDYuUvPpVfD6XALLf
         IrsUnB3MSCEQ5dQ8J4dp6BdjQW1EM54n2R8Jy2RSWBHngpjgheOoQ+sog3IJunUhiZfP
         gnm77CDiiAkZN1uvfKUVCryUBLdKyAzT7i3YJG9LUpB4sLKoWGnik0pnsGSUlAjDpOLV
         pZ2+kOzFLk3HuigNfpzsBBSopC2uCunfm5Q1yt5QZBU1fYjM4M+N8yMdbUtsmNMfHtOH
         9TsQ==
X-Forwarded-Encrypted: i=1; AJvYcCUAT8KZUGT24EBBFzSCSNC8NpbONOLrYZutpaIPujG078NHBlvX6TozrBziiIAvxup9be71Gv8rsyu4@vger.kernel.org
X-Gm-Message-State: AOJu0Yyt+Uyv0D9/8RYw3s8yu96dOeOTcWQ452H2XAZ3NAk810OXVMWI
	FoxbSDZpHayInVK2wDAVoDw2Cwc10gec62yZNJT9awoCs7ntZWXa1uBII0sM9s8OSTAMTvzlvOO
	l96a6WwGJvkpwZZfcN0MR5poz+RQK2odcId/pFkpy2xjLiRDN7x3fecHzypHa6ioS
X-Gm-Gg: ASbGncvB9nyKr6MMZonJ5o0Uil/0wb0onVjqP712reKMywoDU2ZXkutLBXdMQHmN9Ws
	VTUFFIVEhXG+zt/u+qG2P03gPVWD1HoA9J2oqm3jfrV5IV7CJBsPuOY7xhYC1ZlTQjQJAZYquiW
	PUkPF9TDyjLB1jomj0jZ87DMGY1kQSNi5WSaNWbgBr5ud9zpUF96G5iSm2J2JdVe8y7v1lrjl5k
	ME980aFPcXh54i4zkZQLirLqjjri6oo0l3HwFwm06J+SDrZ1dZ7u2oETRJ5u4R0Vs858NF5YMwD
	x+ObRhWeRvrf2zcsbMVyqxWBM2A9v/v8bFKZvcix62Q4xy1z1K99XGYXsIlS0Q33W3R5j3tO
X-Received: by 2002:a17:903:1a23:b0:271:479d:3de3 with SMTP id d9443c01a7336-290272152eamr6280175ad.12.1759855770351;
        Tue, 07 Oct 2025 09:49:30 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEVotSHakAVyij7LAvIdycipiWzTF0uipwSGfGoro8jW/NvSSXvJ3fMuHUryk7LKXY/WOybJw==
X-Received: by 2002:a17:903:1a23:b0:271:479d:3de3 with SMTP id d9443c01a7336-290272152eamr6279705ad.12.1759855769818;
        Tue, 07 Oct 2025 09:49:29 -0700 (PDT)
Received: from hu-mojha-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-28e8d1261e2sm171990825ad.38.2025.10.07.09.49.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Oct 2025 09:49:29 -0700 (PDT)
From: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
Date: Tue, 07 Oct 2025 22:18:49 +0530
Subject: [PATCH v4 04/12] soc: qcom: mdtloader: Add PAS context aware
 qcom_mdt_pas_load() function
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251007-kvm_rprocv4_next-20251007-v4-4-de841623af3c@oss.qualcomm.com>
References: <20251007-kvm_rprocv4_next-20251007-v4-0-de841623af3c@oss.qualcomm.com>
In-Reply-To: <20251007-kvm_rprocv4_next-20251007-v4-0-de841623af3c@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1759855751; l=3541;
 i=mukesh.ojha@oss.qualcomm.com; s=20250708; h=from:subject:message-id;
 bh=5ySg3oqdhTBFKhYF19nJktUPZz2jX4cWgK5IfIezTP4=;
 b=dranwIFmcuDiq+3Qde4Iv70b2uPlZfq+4LBNMZ6WAwX9GPmAAUFsITTiomvc+Du/xD5GeuOak
 qLYnyxHXFi7CC6chA4+Pn+wBq5i/NGIIlKGy3Nxattu4kcAUucLKP7z
X-Developer-Key: i=mukesh.ojha@oss.qualcomm.com; a=ed25519;
 pk=eX8dr/7d4HJz/HEXZIpe3c+Ukopa/wZmxH+5YV3gdNc=
X-Proofpoint-GUID: roXB3WsVfAv7Gv8FxRfqvF3jaZNMUtau
X-Authority-Analysis: v=2.4 cv=T8aBjvKQ c=1 sm=1 tr=0 ts=68e5449b cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=EUspDBNiAAAA:8 a=fdpGjgpQmjpGYtS5oBMA:9
 a=QEXdDO2ut3YA:10 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-ORIG-GUID: roXB3WsVfAv7Gv8FxRfqvF3jaZNMUtau
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA2MDEyMyBTYWx0ZWRfX3AQsXpA/Om2M
 fgEBZSc5hpfV912TK2Z7OVAd1BQcDVBLLVGRSLzQ5z7ZT5HT3WAhlwCwzcT/M266+OKgLe/6lfa
 DN6m8seJVCvxc3MEFzTzUSRcitbpVL53SmlDnjU69T9fkVI9QMzL8tvLldg0xYyaWwRdHqd8lhA
 tCrP+IgPFATZ8rTca6rlc4rW9r7G3TBePlqSI0l1U1i7OCU1NavVvj8m1Z7fEHY6OqI7ECbMGg9
 I7K0bZU2gOOT3ZPwk9hdp9TAr19adzY2uqJNmt+2fmUVn92U2Ul1F8Q+OpbKlqGYbGANyGOONDo
 aYw4atxPUXf5s8xkoqIINX6KugqcYceVAwe9Vn3BHpBF0MTgzTMG1pNKaHU/OC/sbOCB+aTq3zg
 JDpCqeQouDesphLL+fDqm2dm4AdhZg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-07_02,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 adultscore=0 phishscore=0 clxscore=1015 priorityscore=1501
 impostorscore=0 lowpriorityscore=0 suspectscore=0 bulkscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2510060123

Add a PAS context-aware qcom_mdt_pas_load() function for remote
processor drivers, which can use the context pointer returned from
qcom_scm_pas_ctx_init() to perform metadata verification and memory
setup via SMC calls.

The qcom_mdt_pas_load() and qcom_mdt_load() functions are almost
similar. Clients using the PAS context-based data structure can adopt
qcom_mdt_pas_load(), and in the future, all users of qcom_mdt_load()
could be migrated to use qcom_mdt_pas_load() instead.

Signed-off-by: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
---
 drivers/soc/qcom/mdt_loader.c       | 29 +++++++++++++++++++++++++++++
 include/linux/soc/qcom/mdt_loader.h | 11 +++++++++++
 2 files changed, 40 insertions(+)

diff --git a/drivers/soc/qcom/mdt_loader.c b/drivers/soc/qcom/mdt_loader.c
index a5c80d4fcc36..31855836b251 100644
--- a/drivers/soc/qcom/mdt_loader.c
+++ b/drivers/soc/qcom/mdt_loader.c
@@ -486,5 +486,34 @@ int qcom_mdt_load_no_init(struct device *dev, const struct firmware *fw,
 }
 EXPORT_SYMBOL_GPL(qcom_mdt_load_no_init);
 
+/**
+ * qcom_mdt_pas_load() - load the firmware which header is loaded as fw
+ *
+ * Client should initialize the PAS context with qcom_scm_pas_context_init()
+ * before calling this function.
+ *
+ * @ctx:	PAS context pointer
+ * @fw:		firmware object for the mdt file
+ * @firmware:	name of the firmware, for construction of segment file names
+ * @mem_region:	allocated memory region to load firmware into
+ * @reloc_base:	adjusted physical address after relocation
+ *
+ * Returns 0 on success, negative errno otherwise.
+ */
+int qcom_mdt_pas_load(struct qcom_scm_pas_context *ctx, const struct firmware *fw,
+		      const char *firmware, void *mem_region, phys_addr_t *reloc_base)
+{
+	int ret;
+
+	ret = qcom_mdt_pas_init(ctx->dev, fw, firmware, ctx->pas_id, ctx->mem_phys,
+				ctx->metadata);
+	if (ret)
+		return ret;
+
+	return __qcom_mdt_load(ctx->dev, fw, firmware, mem_region, ctx->mem_phys,
+			       ctx->mem_size, reloc_base);
+}
+EXPORT_SYMBOL_GPL(qcom_mdt_pas_load);
+
 MODULE_DESCRIPTION("Firmware parser for Qualcomm MDT format");
 MODULE_LICENSE("GPL v2");
diff --git a/include/linux/soc/qcom/mdt_loader.h b/include/linux/soc/qcom/mdt_loader.h
index 8ea8230579a2..2832e0717729 100644
--- a/include/linux/soc/qcom/mdt_loader.h
+++ b/include/linux/soc/qcom/mdt_loader.h
@@ -11,6 +11,7 @@
 struct device;
 struct firmware;
 struct qcom_scm_pas_metadata;
+struct qcom_scm_pas_context;
 
 #if IS_ENABLED(CONFIG_QCOM_MDT_LOADER)
 
@@ -23,6 +24,9 @@ int qcom_mdt_load(struct device *dev, const struct firmware *fw,
 		  phys_addr_t mem_phys, size_t mem_size,
 		  phys_addr_t *reloc_base);
 
+int qcom_mdt_pas_load(struct qcom_scm_pas_context *ctx, const struct firmware *fw,
+		      const char *firmware, void *mem_region, phys_addr_t *reloc_base);
+
 int qcom_mdt_load_no_init(struct device *dev, const struct firmware *fw,
 			  const char *fw_name, void *mem_region,
 			  phys_addr_t mem_phys, size_t mem_size,
@@ -52,6 +56,13 @@ static inline int qcom_mdt_load(struct device *dev, const struct firmware *fw,
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


