Return-Path: <devicetree+bounces-247595-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 77C06CC8D5C
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 17:43:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D642F313C034
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 16:35:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 29FC5361DCD;
	Wed, 17 Dec 2025 16:35:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="WlbvmvgQ";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="L8JcdEAH"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54908358D03
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 16:35:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765989320; cv=none; b=kyt6wIWN+eElHh7cshnmSYxmtmnY3tlqAC/CltY7aATPndRg7Fqrdb6vjVwtGKos0CCjamLQ7Csi9Ts00NmaHQORuhfLvDOvx8DBwxmtkA49GBTQvRZagtjB1hOwftvkCuKylvvF6ql7HVMdKY31mq2z2qUdcrU8dZ3b6Ezv+nk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765989320; c=relaxed/simple;
	bh=DXdutyHAGcYbnJrVjnnSAQBl6WcuD1qzcR4ar6uGI8g=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=W+0s/1fvLyI+7122xwFH47NPiOb+AxDDVZ8U1Bzhm8dO6SPEOeqq3vtZ1kHBd7ybpvCy/zfUkE9iiHRvBRQe5b6LDw2r54vpwNGUa0udFYYk07CMl/p6RSMfAP7J1IPH2tjwYem8+MSba+PziBvp0V2V7UW6qNLeb2UrgUbMElc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=WlbvmvgQ; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=L8JcdEAH; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BHCKo4V2683497
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 16:35:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	jYA8LoV9oh1HLOGoD/V4Psqum98OyLmu1K1Z5QHU490=; b=WlbvmvgQbfHOfcja
	isLWUW2mJ0yFdd1LZImhTQM4+A5XIPZCkTkHhcW5o02fkiwNsyeLs57o4NZ/G/BS
	wqPLme1VMU9CpSzwpf6J422tAQXfas5XQIpQkplZ0BEZIr1JeoC5QbyDP/+cSkTZ
	pE6MqwPAn0pp1Uv3qeG1YXiPUohVzXMlASKKqS3xFvLXsx1PuCsNlS7ELLLJ8geT
	bBKM4IrSEcmBeMOxEEw/zj9+Y4H/PSv9iBGOBK+X3xARf4btxbkRLaULjm4Slfnt
	s9bKM+Hsodz7WfgzMUlfMgoG9hVQFDXhbIeWhz6bOH4kae0MquUCCFLSO3OGT6WB
	ZNQxJw==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b3kketm2w-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 16:35:17 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2a0bae9acd4so39793985ad.3
        for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 08:35:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765989317; x=1766594117; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jYA8LoV9oh1HLOGoD/V4Psqum98OyLmu1K1Z5QHU490=;
        b=L8JcdEAHMuj5LS6L4wyXCmzjYci3/tbXv16QI77mpeTs3KvVVaFGZsbBZ4Sd7StWs2
         3NdQpsy/MXp0ZK0NWqEe5+ICnsWhl57bGATbggstrG2MFm/G6EaH87dfDwtABivVT3W7
         Z5Xhp3Tpp1iPLzMntt3+GM7WhdEDP0jBUq2M6Wp0J2jRSpobICSF8YRMf3TOsDd3IN+8
         98h6rgm1C1h/l+SSjtX0SeFEexEUATQ6MQK8CPviu/truO5PtnjGUADrs+jVxurN9pXs
         P3xUQy1fO0WiMYC+9BeYep8fPsVZuZ8UdcL4xpLB4cwTEpiRdRUDVECpYBt7JKOLpKTB
         raGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765989317; x=1766594117;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=jYA8LoV9oh1HLOGoD/V4Psqum98OyLmu1K1Z5QHU490=;
        b=ppolgYEGN0D6Q/0ZDxiBkAK10EvFjQS+saBZnebWua8b/t6gKKBVxtW6XIn6RelOLk
         siUvttXWQSTEy5xGB6hYEepA2IJjW/E8LdYops+su96tg7Dz/YyJ/TPVgN0x+Jwogokr
         rWNoA+NhYoSBKPsVlytnCkaYihb11gDo19n55pGKuktgY7BsQXmEodIxSuLe7D7Po7l9
         zCwmY4niQ4Y+V56DACh+KqDCR1l7PqUz6pN+BNOqOi82DjlaADrd6CAfIm9lO9tCUFnS
         ARPA8ndjs2J91mVdZHNQ8RbovB0QbgPCzcijfyew4Mn/y8xigqy6LolMYji7he5q6fS4
         oyUw==
X-Forwarded-Encrypted: i=1; AJvYcCWNLJ9XBznvrA9vHzwte7HNk49+lHauxLOVinOzm1tBvuFyD/2ilBZ3SZzpnfq5+UVLqHtzdbIMMpVo@vger.kernel.org
X-Gm-Message-State: AOJu0Yw2VWValhqPM+iIaYPOJugnW3VEKVvL6jw7wt2nde+btbdpV6Ez
	oN3e1bsBhTKKc0+saFSIbBylswKSfJa+YVdZDHXxNb5tGi8B6Vpr1eJ9DE6v5VLyod/C42pTw2p
	xj7q/8I0yK+BeXZXtBs+bKHkHwJ7a5Pvhs/bJ8zasN4lvLqagiuwj+GCe3R/A0ove
X-Gm-Gg: AY/fxX7bi2W+eTBwOCwV0jiZ6IZgsGHt5/30TwCkExkX2S9Di7CdcLRP8+XbnS8sl1G
	qaGQkTXu9dO4MN+NsUOiwz83itJxiPBv9NHAJEt21wFq/Q4ft9xpbtw9fjc2BoU5m0ea0UF8H/m
	YrmstmY/rsJvausjGi+qg3KLZ6oQIxWwlouh6kdg0yrRxv938j8yHVwc8be8RN432v11HLQFBwd
	2oRAh6LG37E1ICB265+apW4wLqzZsXHw9egaTR5hoUdQxlOkdSaboO4yz67HRrAxpL+iBl8eYi2
	qRJBlftFDo1Euntm2uQzJI1dd8OpVNMoy9EnC2l3OIVYaYpoEjJtrOP7i9unAqF+yA05ORw+BRg
	WGGiElgNxdhA3N8NdZLoD4y7Dmv4vm5L2fQAt
X-Received: by 2002:a17:902:e94d:b0:295:6d30:e25f with SMTP id d9443c01a7336-29f243879d8mr183053395ad.53.1765989316357;
        Wed, 17 Dec 2025 08:35:16 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEmKEFM+BwlVSmYcrEzhY1oJ+NNet8XTffvuffrvJ2KSerrby1UaksydNS0f3S/KAtKvq2nlg==
X-Received: by 2002:a17:902:e94d:b0:295:6d30:e25f with SMTP id d9443c01a7336-29f243879d8mr183052975ad.53.1765989315650;
        Wed, 17 Dec 2025 08:35:15 -0800 (PST)
Received: from hu-mojha-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29ee9b36af7sm204721055ad.18.2025.12.17.08.35.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Dec 2025 08:35:15 -0800 (PST)
From: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
Date: Wed, 17 Dec 2025 22:04:39 +0530
Subject: [PATCH v9 03/14] firmware: qcom_scm: Rename peripheral as pas_id
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251217-kvm_rproc_v9-v9-3-ab7ac03e0ff1@oss.qualcomm.com>
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
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
X-Mailer: b4 0.14-dev-f7c49
X-Developer-Signature: v=1; a=ed25519-sha256; t=1765989299; l=6116;
 i=mukesh.ojha@oss.qualcomm.com; s=20250708; h=from:subject:message-id;
 bh=DXdutyHAGcYbnJrVjnnSAQBl6WcuD1qzcR4ar6uGI8g=;
 b=1Y3hAZdmBvnICDXoSOp4PzRSVuCgqtnfRuzaw5VMvNY9KVu7PqddbDIJiQNlG0395ZqeV5Pon
 FmzOQ1VnkEVBrW/sDThCH9ndaEwNQIn2OcjONb1JyBu+zsDH2oMHzPv
X-Developer-Key: i=mukesh.ojha@oss.qualcomm.com; a=ed25519;
 pk=eX8dr/7d4HJz/HEXZIpe3c+Ukopa/wZmxH+5YV3gdNc=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE3MDEzMSBTYWx0ZWRfX2xiR9DXvxYMB
 Oug9H+3yWsb3RLKR/AqvlUKpYE0HOoWzc+KJWVt9L4wkgP2SE/l/+Ax8t1t2zTmnGdoODNHNI7h
 UVXNqKwVQkccP/hd6SfirBJTqNBitEVNRZLUU5N93Z9KTUyJpzmh4deQeEWw+rOtIkzx85MtFlT
 mQjkelUkGLme/7AwD9wjKTbbGDWiQCSYVnPROZxuZ+7XXLcI9Qc1Yj38L9X0iSWKZBBBKILy8hx
 B9BIprf4uK7z6x9WMT9J6m9JAxcB6AijgHx65vaxZBcQJBieTmdtv71GSSSC/xCI7E4mo/t0/L8
 nbVrz9YiO9Gp03Pji1DVUZN9KSmnTc974KcLF1r5Og2JMe8NS310PDKU7m9lw+5gcZvU/MGD/df
 l52aanyFDX40soWYyphH188mNFLg0w==
X-Proofpoint-GUID: qIR8OHcQeB5JquZAq3CQT3hCAigL-bHc
X-Authority-Analysis: v=2.4 cv=Fcw6BZ+6 c=1 sm=1 tr=0 ts=6942dbc5 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=bcWw3dkznkfw-y6_B5AA:9 a=QEXdDO2ut3YA:10 a=GvdueXVYPmCkWapjIL-Q:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: qIR8OHcQeB5JquZAq3CQT3hCAigL-bHc
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-17_03,2025-12-16_05,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 clxscore=1015 malwarescore=0 spamscore=0 suspectscore=0
 impostorscore=0 priorityscore=1501 phishscore=0 bulkscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512170131

Peripheral and pas_id refers to unique id for a subsystem and used only
when peripheral authentication service from secure world is utilized.

Lets rename peripheral to pas_id to reflect closer to its meaning.

Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
---
 drivers/firmware/qcom/qcom_scm.c       | 30 +++++++++++++++---------------
 include/linux/firmware/qcom/qcom_scm.h | 10 +++++-----
 2 files changed, 20 insertions(+), 20 deletions(-)

diff --git a/drivers/firmware/qcom/qcom_scm.c b/drivers/firmware/qcom/qcom_scm.c
index 6461408c58a3..1e1057638e98 100644
--- a/drivers/firmware/qcom/qcom_scm.c
+++ b/drivers/firmware/qcom/qcom_scm.c
@@ -562,7 +562,7 @@ static void qcom_scm_set_download_mode(u32 dload_mode)
  * qcom_scm_pas_init_image() - Initialize peripheral authentication service
  *			       state machine for a given peripheral, using the
  *			       metadata
- * @peripheral: peripheral id
+ * @pas_id:	peripheral authentication service id
  * @metadata:	pointer to memory containing ELF header, program header table
  *		and optional blob of data used for authenticating the metadata
  *		and the rest of the firmware
@@ -575,7 +575,7 @@ static void qcom_scm_set_download_mode(u32 dload_mode)
  * track the metadata allocation, this needs to be released by invoking
  * qcom_scm_pas_metadata_release() by the caller.
  */
-int qcom_scm_pas_init_image(u32 peripheral, const void *metadata, size_t size,
+int qcom_scm_pas_init_image(u32 pas_id, const void *metadata, size_t size,
 			    struct qcom_scm_pas_metadata *ctx)
 {
 	dma_addr_t mdata_phys;
@@ -585,7 +585,7 @@ int qcom_scm_pas_init_image(u32 peripheral, const void *metadata, size_t size,
 		.svc = QCOM_SCM_SVC_PIL,
 		.cmd = QCOM_SCM_PIL_PAS_INIT_IMAGE,
 		.arginfo = QCOM_SCM_ARGS(2, QCOM_SCM_VAL, QCOM_SCM_RW),
-		.args[0] = peripheral,
+		.args[0] = pas_id,
 		.owner = ARM_SMCCC_OWNER_SIP,
 	};
 	struct qcom_scm_res res;
@@ -656,20 +656,20 @@ EXPORT_SYMBOL_GPL(qcom_scm_pas_metadata_release);
 /**
  * qcom_scm_pas_mem_setup() - Prepare the memory related to a given peripheral
  *			      for firmware loading
- * @peripheral:	peripheral id
+ * @pas_id:	peripheral authentication service id
  * @addr:	start address of memory area to prepare
  * @size:	size of the memory area to prepare
  *
  * Returns 0 on success.
  */
-int qcom_scm_pas_mem_setup(u32 peripheral, phys_addr_t addr, phys_addr_t size)
+int qcom_scm_pas_mem_setup(u32 pas_id, phys_addr_t addr, phys_addr_t size)
 {
 	int ret;
 	struct qcom_scm_desc desc = {
 		.svc = QCOM_SCM_SVC_PIL,
 		.cmd = QCOM_SCM_PIL_PAS_MEM_SETUP,
 		.arginfo = QCOM_SCM_ARGS(3),
-		.args[0] = peripheral,
+		.args[0] = pas_id,
 		.args[1] = addr,
 		.args[2] = size,
 		.owner = ARM_SMCCC_OWNER_SIP,
@@ -697,18 +697,18 @@ EXPORT_SYMBOL_GPL(qcom_scm_pas_mem_setup);
 /**
  * qcom_scm_pas_auth_and_reset() - Authenticate the given peripheral firmware
  *				   and reset the remote processor
- * @peripheral:	peripheral id
+ * @pas_id:	peripheral authentication service id
  *
  * Return 0 on success.
  */
-int qcom_scm_pas_auth_and_reset(u32 peripheral)
+int qcom_scm_pas_auth_and_reset(u32 pas_id)
 {
 	int ret;
 	struct qcom_scm_desc desc = {
 		.svc = QCOM_SCM_SVC_PIL,
 		.cmd = QCOM_SCM_PIL_PAS_AUTH_AND_RESET,
 		.arginfo = QCOM_SCM_ARGS(1),
-		.args[0] = peripheral,
+		.args[0] = pas_id,
 		.owner = ARM_SMCCC_OWNER_SIP,
 	};
 	struct qcom_scm_res res;
@@ -733,18 +733,18 @@ EXPORT_SYMBOL_GPL(qcom_scm_pas_auth_and_reset);
 
 /**
  * qcom_scm_pas_shutdown() - Shut down the remote processor
- * @peripheral: peripheral id
+ * @pas_id:	peripheral authentication service id
  *
  * Returns 0 on success.
  */
-int qcom_scm_pas_shutdown(u32 peripheral)
+int qcom_scm_pas_shutdown(u32 pas_id)
 {
 	int ret;
 	struct qcom_scm_desc desc = {
 		.svc = QCOM_SCM_SVC_PIL,
 		.cmd = QCOM_SCM_PIL_PAS_SHUTDOWN,
 		.arginfo = QCOM_SCM_ARGS(1),
-		.args[0] = peripheral,
+		.args[0] = pas_id,
 		.owner = ARM_SMCCC_OWNER_SIP,
 	};
 	struct qcom_scm_res res;
@@ -770,18 +770,18 @@ EXPORT_SYMBOL_GPL(qcom_scm_pas_shutdown);
 /**
  * qcom_scm_pas_supported() - Check if the peripheral authentication service is
  *			      available for the given peripherial
- * @peripheral:	peripheral id
+ * @pas_id:	peripheral authentication service id
  *
  * Returns true if PAS is supported for this peripheral, otherwise false.
  */
-bool qcom_scm_pas_supported(u32 peripheral)
+bool qcom_scm_pas_supported(u32 pas_id)
 {
 	int ret;
 	struct qcom_scm_desc desc = {
 		.svc = QCOM_SCM_SVC_PIL,
 		.cmd = QCOM_SCM_PIL_PAS_IS_SUPPORTED,
 		.arginfo = QCOM_SCM_ARGS(1),
-		.args[0] = peripheral,
+		.args[0] = pas_id,
 		.owner = ARM_SMCCC_OWNER_SIP,
 	};
 	struct qcom_scm_res res;
diff --git a/include/linux/firmware/qcom/qcom_scm.h b/include/linux/firmware/qcom/qcom_scm.h
index a55ca771286b..a13f703b16cd 100644
--- a/include/linux/firmware/qcom/qcom_scm.h
+++ b/include/linux/firmware/qcom/qcom_scm.h
@@ -72,13 +72,13 @@ struct qcom_scm_pas_metadata {
 	ssize_t size;
 };
 
-int qcom_scm_pas_init_image(u32 peripheral, const void *metadata, size_t size,
+int qcom_scm_pas_init_image(u32 pas_id, const void *metadata, size_t size,
 			    struct qcom_scm_pas_metadata *ctx);
 void qcom_scm_pas_metadata_release(struct qcom_scm_pas_metadata *ctx);
-int qcom_scm_pas_mem_setup(u32 peripheral, phys_addr_t addr, phys_addr_t size);
-int qcom_scm_pas_auth_and_reset(u32 peripheral);
-int qcom_scm_pas_shutdown(u32 peripheral);
-bool qcom_scm_pas_supported(u32 peripheral);
+int qcom_scm_pas_mem_setup(u32 pas_id, phys_addr_t addr, phys_addr_t size);
+int qcom_scm_pas_auth_and_reset(u32 pas_id);
+int qcom_scm_pas_shutdown(u32 pas_id);
+bool qcom_scm_pas_supported(u32 pas_id);
 
 int qcom_scm_io_readl(phys_addr_t addr, unsigned int *val);
 int qcom_scm_io_writel(phys_addr_t addr, unsigned int val);

-- 
2.50.1


