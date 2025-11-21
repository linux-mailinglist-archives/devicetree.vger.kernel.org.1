Return-Path: <devicetree+bounces-241007-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E9A3C78A31
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 12:03:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by tor.lore.kernel.org (Postfix) with ESMTPS id C8BCF2CDED
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 11:03:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9CFA734B40C;
	Fri, 21 Nov 2025 11:01:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ncTj/dlm";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="B04U2B+m"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59D6834B192
	for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 11:01:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763722916; cv=none; b=YV9p56MGMO45wjHIGpzpxMEdM3R+8Db7swp1i9NVcpfyJdvAkKajW6Z1arzGNr+S147wHt+8SEC7qdCqFQwISJazht8XIVzQhdLnzNq+n8LFL6obYJk6FzWsp71bxUJwJXAi8BzMQbaULHWY9QNSvkk1+1rX3BP7FMqxY/WUhGs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763722916; c=relaxed/simple;
	bh=FAxVohbaSqYOeL1tiCXnhoUqP1k3h7eieaHb5VvFGf8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=FOYkwPHlGS6aX/dWlWKSdNFcC4SEKRggyjGrx0ltwkD6N+hShEWVddXd3UZ/PH54ep3yeUAVoh3zcFtStp8nSrsKSUgeZdO7CehFFRn4wNNeFD0cQA8rGXkoL23M7iJf1nufDJZ1FPZpTFhJNCgeEgIKKEP0l/JayCv9EGetWHY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ncTj/dlm; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=B04U2B+m; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5ALALUYw2746321
	for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 11:01:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	YGBJ3wXs+b7+nyeDhGQJtyljMMb0eEpcnD47PuoXhNo=; b=ncTj/dlmObrK0p+8
	cvvqwHE0/gzKBHz8vYC1AHvPTEy0wbN//utHbS51fU9EX+ZUsA1P773iCTQnexDJ
	yHWS8vacT/ORfn8LRWvlHGWioSRcD4wo2vIj23SNymH7Nbq693ehimRffoB8CPAM
	Ek79jnHYZdZFdP1Db480IvmaQI5wITF/6gR5v8xRDYBWmulIuOqZ/HwvVr+qNQ+L
	J2a7zI3OMdK1wXrMUpdk5eOc61kk1/cqQ0MNBUbGz2c+u1/quAocB5U+SEdzPCf9
	5wwZbNPS43ucmUqul4BO0In6R+FAlEp4Qu0YTGofWsyw2f8hmBORy/J7bwIdgQIG
	6b4eYA==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ajgeh1cqf-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 11:01:53 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-343823be748so2098086a91.0
        for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 03:01:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763722912; x=1764327712; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YGBJ3wXs+b7+nyeDhGQJtyljMMb0eEpcnD47PuoXhNo=;
        b=B04U2B+mWyT9hKzcjohGdMFO0tA5T8MByfTYj5gIMfCg8pJ//iDij+CJhfp7fp5WDv
         eJXHIBKwoDuGDj2U0D5FeIBvNeariF7gKdmq6YbIh0iUlKsXdMMZKO5wfwOPhSfKWy8C
         y4aVgZZsfFPeLVvicYCKwktQBHMd5WucjhB55JKn26mHkwMaJ4aNYzqtetPNrQjaUjRM
         VhqiO6ckpF/ZVb2RzwABlf9CoA8tLXymdHHH9arcnkJXiS8vyp0zx4BZ1hPBc8T3zNpr
         HmI8E72UZ/GHnwyadEdoYpOY+J/8Gj7QIHY6/ieXvKqGVaUSuMyqfeLzMtw6AqnXKU5w
         /g4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763722912; x=1764327712;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=YGBJ3wXs+b7+nyeDhGQJtyljMMb0eEpcnD47PuoXhNo=;
        b=fApP0/6uMYNljCC+7UDN54EnKQeC1S8KnmsLzrMO81FFqEBqsYuYsy0qWW5F0gi8/Z
         s4Ib0ctmi7IwR90bgYMyeFLBGxxjrRCAm3fV7HLgTeXphpzDLgKTsFnRh5EKTE3vG2ri
         mcotoLTtoY2IHiwKHWE4LDoNeapDnA6SAppQHYCG/id34sJM7mf/YfoYsIlu+y8QUusr
         dcE59dpe3Aawsln9XblY3E+P/rRfcH/aBHeOIJrmGJrJqr4wEk/z4nukI6bx8XXxVRh3
         TVvLMYncurFregrADuTx1ofQ7CIQStksC+JVT/TaNitdghCSnwJsuieb5FdQ/X1HOgKc
         /5WA==
X-Forwarded-Encrypted: i=1; AJvYcCVm91dTZh7qjyWZ1ROfLG9sAWjjC1ZfB04UUIVdNgyQPS6hp/cKSq9TB3Kz4+ciXRJ4YTQHKM6JzQ1H@vger.kernel.org
X-Gm-Message-State: AOJu0YwUmYmbriNbLMoRdBrP3oxJHH2FxPusqcmT8QUMmM+zGlvfUbt7
	wBJJ9x79cIEIphRbK49X/8vSj2aVhL+KnxV2UnbD0M9wQE9V4GDMGH5EsjAffWlDhMvIPOTFz7s
	4DqO1r/jvqipfLcfHiHTCp9LrfpMgNUaYDhwgXskH6RwFnLoMWB5pBiXtG0kjdyZk
X-Gm-Gg: ASbGncsu7ZdoWaaAeKbQNjb2qNsSO+lZ8NJFIrwgSem6soGMbenaASJzPL3H4LLX01w
	vApbQ1iQo+aLt407qo2HNmGYy9xGb+svg4wowMdB8IZquqDriBfhRnhGK+uK9fysIMSxYoAdouC
	2UW4RCK3fBgDo+NdN0zw7UPacQ+oNn+l4EDyn3GWrIZlVkaOibNdNoSfoQQWIFfFYSj48+UHIEe
	H8UWFAalzq4P0wYChXgBKML20RwImFg/bRx6Q3iTmOogzbegtaSYKD7JuhL3geeMHnwXlYkCLJZ
	frnvrKgAwICTnGKCpeql65RSGSiPRhkyxMiL8gYtsV0GL8e27LaxgURWe+E39335LRFJ3bCjSAB
	EPUYwG2ZAmsxhUSL4ZEfE3pV/Zz9UQmeD8ymS
X-Received: by 2002:a17:90b:5704:b0:340:dd2c:a3da with SMTP id 98e67ed59e1d1-34733e436damr1982569a91.8.1763722911774;
        Fri, 21 Nov 2025 03:01:51 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEk1A2HPA/oFoQ9xE267MbaxkEtZX82lk4pzDIT9YA07/l+tPpYZrbqWfVIeHkg6PSW6SUVxg==
X-Received: by 2002:a17:90b:5704:b0:340:dd2c:a3da with SMTP id 98e67ed59e1d1-34733e436damr1982500a91.8.1763722910936;
        Fri, 21 Nov 2025 03:01:50 -0800 (PST)
Received: from hu-mojha-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-34727d5208csm5191165a91.15.2025.11.21.03.01.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Nov 2025 03:01:50 -0800 (PST)
From: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
Date: Fri, 21 Nov 2025 16:31:09 +0530
Subject: [PATCH v8 07/14] soc: qcom: mdtloader: Remove qcom_mdt_pas_init()
 from exported symbols
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251121-kvm_rproc_v8-v8-7-8e8e9fb0eca0@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1763722879; l=3524;
 i=mukesh.ojha@oss.qualcomm.com; s=20250708; h=from:subject:message-id;
 bh=FAxVohbaSqYOeL1tiCXnhoUqP1k3h7eieaHb5VvFGf8=;
 b=D8IXEP3G83yrpTXwxQTSIbCzTYbZPzJocEZHS8XSfXdbAi6lTiJEL1D40T+5xj21S+iCzHYJ2
 3G2+hkSSmOPD90I+fTAsFLbBA9q6GxeNk2s8MLNxl+O3A25WGeipGmH
X-Developer-Key: i=mukesh.ojha@oss.qualcomm.com; a=ed25519;
 pk=eX8dr/7d4HJz/HEXZIpe3c+Ukopa/wZmxH+5YV3gdNc=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTIxMDA4NCBTYWx0ZWRfXywopXIvMLcE7
 Sihs3lo659t7XrBgtQRKHnbE5SUrJQNeehbBTftzwzNUim7j+9tBfMgMwra8khSFDk1Mwsx49uz
 /HOJAVoMC6CqfWiP7gi9hfzTRF30hdjgib1W7sIRlKw8qA7SfT+XG9ofkWSwRhS9YO6nhQZ0gTp
 AEtubFIuiMnD2eaqOdFnimqE86YnhoZNQRqGEHLZHKBMAwiQLeaEv1786Upf7OZSsSQPbYHw2zI
 oXzGUM/Adrtcy7fdlSJEXmb94X07PzCDh62djbTXTCT+58nyUXEfdLps9ZKW7SItAZS48furZ0d
 iO4DJfjfMcDBijQ8xmlMHRpmfsnW4Sv92eHhioly1cArqQN5uVsrHTpXtjjll33rYejqhPZhhI+
 r8eEkbHl1kQwqlIFBKy6ZVGoN3EPFw==
X-Proofpoint-GUID: htLSWVw15FlR7WNVQkKjIBtFZteRTEDC
X-Authority-Analysis: v=2.4 cv=AubjHe9P c=1 sm=1 tr=0 ts=692046a1 cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=Z4Sw7GGoVt5sTUwIiKwA:9
 a=QEXdDO2ut3YA:10 a=rl5im9kqc5Lf4LNbBjHf:22
X-Proofpoint-ORIG-GUID: htLSWVw15FlR7WNVQkKjIBtFZteRTEDC
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-21_03,2025-11-20_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 clxscore=1015 phishscore=0 lowpriorityscore=0 malwarescore=0
 adultscore=0 spamscore=0 bulkscore=0 priorityscore=1501 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511210084

qcom_mdt_pas_init() was previously used only by the remoteproc driver
(drivers/remoteproc/qcom_q6v5_pas.c). Since that driver has now
transitioned to using PAS context-based qcom_mdt_pas_load() function,
making qcom_mdt_pas_init() obsolete for external use.

Removes qcom_mdt_pas_init() from the list of exported symbols and make
it static to limit its scope to internal use within mdtloader.

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
---
 drivers/soc/qcom/mdt_loader.c       | 11 +++++------
 include/linux/soc/qcom/mdt_loader.h | 10 ----------
 2 files changed, 5 insertions(+), 16 deletions(-)

diff --git a/drivers/soc/qcom/mdt_loader.c b/drivers/soc/qcom/mdt_loader.c
index 50c6a3c6b2a3..054abc81e76d 100644
--- a/drivers/soc/qcom/mdt_loader.c
+++ b/drivers/soc/qcom/mdt_loader.c
@@ -238,9 +238,9 @@ EXPORT_SYMBOL_GPL(qcom_mdt_read_metadata);
  *
  * Returns 0 on success, negative errno otherwise.
  */
-int qcom_mdt_pas_init(struct device *dev, const struct firmware *fw,
-		      const char *fw_name, int pas_id, phys_addr_t mem_phys,
-		      struct qcom_scm_pas_context *ctx)
+static int __qcom_mdt_pas_init(struct device *dev, const struct firmware *fw,
+			       const char *fw_name, int pas_id, phys_addr_t mem_phys,
+			       struct qcom_scm_pas_context *ctx)
 {
 	const struct elf32_phdr *phdrs;
 	const struct elf32_phdr *phdr;
@@ -302,7 +302,6 @@ int qcom_mdt_pas_init(struct device *dev, const struct firmware *fw,
 out:
 	return ret;
 }
-EXPORT_SYMBOL_GPL(qcom_mdt_pas_init);
 
 static bool qcom_mdt_bins_are_split(const struct firmware *fw)
 {
@@ -469,7 +468,7 @@ int qcom_mdt_load(struct device *dev, const struct firmware *fw,
 {
 	int ret;
 
-	ret = qcom_mdt_pas_init(dev, fw, fw_name, pas_id, mem_phys, NULL);
+	ret = __qcom_mdt_pas_init(dev, fw, fw_name, pas_id, mem_phys, NULL);
 	if (ret)
 		return ret;
 
@@ -500,7 +499,7 @@ int qcom_mdt_pas_load(struct qcom_scm_pas_context *ctx, const struct firmware *f
 {
 	int ret;
 
-	ret = qcom_mdt_pas_init(ctx->dev, fw, firmware, ctx->pas_id, ctx->mem_phys, ctx);
+	ret = __qcom_mdt_pas_init(ctx->dev, fw, firmware, ctx->pas_id, ctx->mem_phys, ctx);
 	if (ret)
 		return ret;
 
diff --git a/include/linux/soc/qcom/mdt_loader.h b/include/linux/soc/qcom/mdt_loader.h
index 7d57746fbbfa..82372e0db0a1 100644
--- a/include/linux/soc/qcom/mdt_loader.h
+++ b/include/linux/soc/qcom/mdt_loader.h
@@ -15,9 +15,6 @@ struct qcom_scm_pas_context;
 #if IS_ENABLED(CONFIG_QCOM_MDT_LOADER)
 
 ssize_t qcom_mdt_get_size(const struct firmware *fw);
-int qcom_mdt_pas_init(struct device *dev, const struct firmware *fw,
-		      const char *fw_name, int pas_id, phys_addr_t mem_phys,
-		      struct qcom_scm_pas_context *pas_ctx);
 int qcom_mdt_load(struct device *dev, const struct firmware *fw,
 		  const char *fw_name, int pas_id, void *mem_region,
 		  phys_addr_t mem_phys, size_t mem_size,
@@ -40,13 +37,6 @@ static inline ssize_t qcom_mdt_get_size(const struct firmware *fw)
 	return -ENODEV;
 }
 
-static inline int qcom_mdt_pas_init(struct device *dev, const struct firmware *fw,
-				    const char *fw_name, int pas_id, phys_addr_t mem_phys,
-				    struct qcom_scm_pas_context *pas_ctx)
-{
-	return -ENODEV;
-}
-
 static inline int qcom_mdt_load(struct device *dev, const struct firmware *fw,
 				const char *fw_name, int pas_id,
 				void *mem_region, phys_addr_t mem_phys,

-- 
2.50.1


