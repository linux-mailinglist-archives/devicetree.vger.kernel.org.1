Return-Path: <devicetree+bounces-251510-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D6623CF3D0D
	for <lists+devicetree@lfdr.de>; Mon, 05 Jan 2026 14:32:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id CA6F83016ED9
	for <lists+devicetree@lfdr.de>; Mon,  5 Jan 2026 13:31:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 553F333CE82;
	Mon,  5 Jan 2026 13:23:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="fxwU/Qwf";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="akQwRG37"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B281F33C52C
	for <devicetree@vger.kernel.org>; Mon,  5 Jan 2026 13:23:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767619422; cv=none; b=Riif7WCEiB8X128yqTAVhuH2XNwymQwKPsBkr3VCkLJeKCDh+yoZ+QXBi8BFbZxpnS1WnjbNs3l6I6wyGfwlbyfaHvsT+rL6sK0TBvjztzhpqax5mTMdyA6XdIC3mZRBD00xKGtzMnEWq6nE25BkGOw0I7u6/RyYQFqF2jNpSzs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767619422; c=relaxed/simple;
	bh=6F8K/zkrX0qeC580/xJB2YdjtX5REOOH8FpswaScz30=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=neWxvURUve1zWvz6tcuXxvkztEmoMl9x6aa73m19qP5XpwBXCIQJ57gf2AL0wH3pVkMNVWchSibG65tOxQ2qbFy2l6NeTTvipRz7/R+JUnZL2ErfF1nyyymnX2aVjZ7cVsZjLWGbTEPc1o3tUCWtn6TfkkNTVAKr7KLm3Zq/KyU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=fxwU/Qwf; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=akQwRG37; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6058L32U3652262
	for <devicetree@vger.kernel.org>; Mon, 5 Jan 2026 13:23:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	786iM0/9dnDx7bEo0CycJSZKYjOjPKU4LuDUpimk85w=; b=fxwU/Qwfgd0UBLls
	+NuF/Px+fyXcrBbuGIFJYg9mRkWl8XSjoxD2VSeZDJ46RjYEy2MdNQNWxOr7/F/z
	je9D1DNFC6eOcrRrIMZOMlOO/DKxwjMqtLLmHx6sV/s41NO7kV75SiesCe6pJbXp
	GTkkjvgKZ1Z+m/UEUsMK7drlaKWkjYN3XTWvtEAYTiP9A39FrxfbgllFLnhvQ+5R
	gK80BJjjmotTct8iskzbWpeQQJj3zksCX159g+gTKusAhWDmoZqnIeklcvq9dMFY
	BT4l+LVW/VWBuWdljSmxT0lA5ZWeApLtrtU7vPlBHTf2OPkA5/14Ki/d83gbGWY6
	Lp7TFQ==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bet2qvrx7-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 05 Jan 2026 13:23:40 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-7d24bbb9278so28349363b3a.0
        for <devicetree@vger.kernel.org>; Mon, 05 Jan 2026 05:23:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767619419; x=1768224219; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=786iM0/9dnDx7bEo0CycJSZKYjOjPKU4LuDUpimk85w=;
        b=akQwRG37blzklcTsc9zXYpKBStHvU3LHtoVVjDrr6fgmd6uDJhWU+utRtkmfCh1Xhb
         ONAgW8Lm5FDEFRtir/xhBZKcOfqzSKuyVkaLuuXqkCv35POWXsmfCIMNkubWPJpztOon
         qWdgdKpcJZ34woJ0vYuOKB3NA4uWzr25pAT8g4NDRue2500c42xDD3VreFMlw2c6fz/7
         VLdrWFAr87OHr9s68M6pGJDGRhC/6xn7vdcSWP7yh2oLYjUKUALYTw3PwljZCaMTDDC6
         dPMIUUGj908+XeseOChqqiVCUm15Xq5G/byP2md5fHEQwotbkhiJH7Idctkkyew7HaJS
         al/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767619419; x=1768224219;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=786iM0/9dnDx7bEo0CycJSZKYjOjPKU4LuDUpimk85w=;
        b=GT5qfMZV6YT75sFUm0WiOxw1KPb46mOglMUoXLuWCJxoY7H1++Rl/TeJ1szLJKOlCL
         Gngk14XZElSTlA5ARglc5cQZtt0yRFFKpzJFVNsaFBzQQh1Oz+ka2XFyQ83jn42qHUyF
         NdICoGf4RBmQW1eHBV02eDfWObjRKYjaHkyL0n9fFS5FbZ/3sumYy+vvfzbRhl5Ut3IL
         Ego4qnzFs30hrpslDEL96sMxLLtEQYCTZeHUz8Qc04vN7jP0vOxAH2TqjAsY0DiZpJZ1
         /YqrURPHa/7bhyHyskDC0XN9wAU/jee+3D9ux03u1/I+6X/m6VUG7iut12oIHvlfHSMb
         FBaQ==
X-Forwarded-Encrypted: i=1; AJvYcCWDe5IadjjcsL9wAMOTTLgeC5/U0xPBDMXrAEV4+cAjLJXl09cnxtzuWRGy0pSQ6xyYZ+6mw5REXlo/@vger.kernel.org
X-Gm-Message-State: AOJu0YxkXEEn4OQnjqvehSLsnWjaevSAyp3l08z3Mx0VJRViIXq3dA/q
	nqTSZNoxHGHq15F5R9tSiY+lRNe6xNNAu5wqE0ap/rwwy9TEmuB8jtGDL5JHYXZeyd3kX2+cFdS
	3Teqd4+GEoP6gQkokgG1vb8GDAedYkEZ+0l8HPe1kJVVM3ntLmB/ZBsQpDhgVZ+js
X-Gm-Gg: AY/fxX4ofcuOj8sBFOyzmR3Rk5oGfY1tLqzmJNklNvnDhaBVOt3MwYNVZPdgOeyoJi0
	LDmwsWDTs4E4Jdo3S07VY5kxnTAuP2vZPQYHQEEa1b5lLgwsFghiJGAZYvHmj28h89ycADXzEjM
	QOVoTNBZhLOxbHZLTj2Wvux4XK5x4pzvXP9RCd9OXs9PSp7U+oAIcnt2AaASFAJUa+LcXak8xx+
	hCStuYRqr0y73ZRnSncII3TFP+8KXm/o+iQE997zcMKbxbQwDVrldTxfvxKXS6zxE1Eg6H53W4A
	4QQtYVg2FtYdyQyGywVmJR5T6BNI9Al4UWpsPafOsVJoVEw7O0gfr9MqixH2DUVtOq0xcWRUnFg
	RBWshMGwxfPTVa2PUFjxISyXpraUv57D0Cpsg
X-Received: by 2002:a05:6a00:f99:b0:7e8:43f5:bd20 with SMTP id d2e1a72fcca58-7ff6735e9b3mr46962687b3a.53.1767619419230;
        Mon, 05 Jan 2026 05:23:39 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEuVefsR2CDF2pOtSOxIMU7dFGADO+VJZnfcBcQcKgWwgx09OqvSjEAwaGj1ItkWmczTrEjYA==
X-Received: by 2002:a05:6a00:f99:b0:7e8:43f5:bd20 with SMTP id d2e1a72fcca58-7ff6735e9b3mr46962645b3a.53.1767619418601;
        Mon, 05 Jan 2026 05:23:38 -0800 (PST)
Received: from hu-mojha-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7ff7b127b00sm48426542b3a.21.2026.01.05.05.23.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Jan 2026 05:23:38 -0800 (PST)
From: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
Date: Mon, 05 Jan 2026 18:52:54 +0530
Subject: [PATCH v10 06/14] soc: qcom: mdtloader: Add PAS context aware
 qcom_mdt_pas_load() function
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260105-kvmrprocv10-v10-6-022e96815380@oss.qualcomm.com>
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
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
X-Mailer: b4 0.14-dev-f7c49
X-Developer-Signature: v=1; a=ed25519-sha256; t=1767619390; l=5691;
 i=mukesh.ojha@oss.qualcomm.com; s=20250708; h=from:subject:message-id;
 bh=6F8K/zkrX0qeC580/xJB2YdjtX5REOOH8FpswaScz30=;
 b=AyWDM7qKzCG9bSdB4r9xf038RbNG4tvqzleWMIxbq1tZB45arvB9pdFxRl/uaA4t8SOpJBPQF
 VoBXliEgbDfApb8ifY20Ri3Y/rYdwxMyGf+4f89r+UvX8lizLNvnHm9
X-Developer-Key: i=mukesh.ojha@oss.qualcomm.com; a=ed25519;
 pk=eX8dr/7d4HJz/HEXZIpe3c+Ukopa/wZmxH+5YV3gdNc=
X-Proofpoint-GUID: OEAXz1pchxBjALegXz4KZ7dPL5MtO28V
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA1MDExNyBTYWx0ZWRfX8Rd95h3NQMdW
 QYfVyFnIwL9VQvDOnSNVSa6LY4OS2TLSODC12SmBMgb+X24ahDrfVYL+d9DLtzRhtwTs6uv6Ae/
 Rdiw3IIoMIWKeeH3C7sGvyseGd8MSArY7mRzHCqINSx2d9hyrz9ubVK1gfgvlnbgxxa0i/Pat3x
 v3bw6MbjpN1lk76xUCWPsaw8azpLyicTrHovHDiyzSm2BNx7ZYi+KEqWB6SYgTU7a7X72FIFKMj
 RQIcAFbbdCIja2ExpiltHgk65RdZrJdjeatiChLCMEuee6P0AU3ned+FwYPbbMgW6a32ohxEu/i
 9cqGe/8aPQELlMQQaKb5E/tnTRuu31gNsLqblfifTIEnK5M1H+sVnjSrdTJh7dCpjM2Xkm8KgTT
 ChTABZCU9g+6DUmFZ2mopqabyknjZiIMyilDBbYnw/amaOERyZsSYlh0cGp78MMWOo1dHKjXelT
 0+dj9Kl6Y9uu9FvM7lg==
X-Authority-Analysis: v=2.4 cv=RKK+3oi+ c=1 sm=1 tr=0 ts=695bbb5c cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=lkfLrt0I0aiTJqoH1swA:9
 a=QEXdDO2ut3YA:10 a=OpyuDcXvxspvyRM73sMx:22
X-Proofpoint-ORIG-GUID: OEAXz1pchxBjALegXz4KZ7dPL5MtO28V
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-05_01,2025-12-31_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 impostorscore=0 malwarescore=0 lowpriorityscore=0
 priorityscore=1501 suspectscore=0 bulkscore=0 adultscore=0 clxscore=1015
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601050117

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


