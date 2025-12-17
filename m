Return-Path: <devicetree+bounces-247604-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0844BCC8E5B
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 17:55:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 9F0E430521FC
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 16:49:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 790A7359718;
	Wed, 17 Dec 2025 16:35:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="LeRcMR69";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Tl2NmB2g"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE7E23590DD
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 16:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765989355; cv=none; b=Qr0K4JmL3gV3qFIgMjlZ0AfbuPcgyGcgSEKgda0rV6VoBRS67wNhhPyHW3apXOVBiMx/jbYAtIRzEh4B9x7g7hTwbWJVolAC57aN4IHiNUtJ1cJZAH1OpzFYNVLb0UwlUArpN9pjXGVIQPrKWIblvqGetIpxsnNhw1nssWZRj7o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765989355; c=relaxed/simple;
	bh=qYuaoe5yZlmgj0Bqbs68hLea7hvaqBZAkEyE9xnmPwE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=H0C8y6mciic8dZ3PIzuqKEtZ8J7FvLN6e9lMqIRDaG6LIDG7NAUqlIOQCGUaMmfhPgwh7nsijWwBpSEV3WN8vlNxyb23Go1PyhPFsVYekLlYKWLfHpqw2IHwtbhlDfkI4yVifneVxBEjC11+asH7PIvtU0XRGyMuoez2WuS5w44=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=LeRcMR69; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Tl2NmB2g; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BHCKo3o2465113
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 16:35:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	UvAnEUJpoxlkuq4/g/vjfhu/EQszMNOrrroegkLM09Y=; b=LeRcMR69RuQaAT9p
	imvRH6nlFTabwJHI3LhkizY3Xu5dOnYhcB0s2mRjdi03RBchhxsFPdsuw62yjxUg
	gEexRwnxOslHsfazap3OcejqqXwYSM4BtpilxMLiMIPqSmNsYIoTvW+Q2DhRI+tu
	tzjofFZPIzj99AoLNCn46DAdUbsPsSaZiUgMa3VdwNRlOTf+unpOWxo055VntdZ/
	r/+TKgfyeMZ0CdY9aGY5U3Bq/TAfMemwiK0wcopL7fciB8tfmKF2f0czKv3agiOY
	GimEhcngOxJwOqMueVkjSTDY21PiHJALjPGVq3OQtMSAsMov19o11NWuOUtVfvQB
	7e4WIg==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b3fe2b7nn-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 16:35:53 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-2a13be531b2so41978685ad.2
        for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 08:35:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765989352; x=1766594152; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=UvAnEUJpoxlkuq4/g/vjfhu/EQszMNOrrroegkLM09Y=;
        b=Tl2NmB2grNAQAopo629RsFxt201R6u/lb3irgENkCpK3D7lFCycO7kAmv6XYN7HnCR
         7YqMRIvAfJP98rgg2WMZk9k2oAVLvpkI7FUPBfMAj3E25tNZh6e6Rb3xdilvZ5KrN+Yc
         FGJJcyU757Nv31ZCK54l9dzb70Hcft6N63pDy7AnEpO3HcVyHujjyu0SKLTOoNrQz/Qu
         Sll9SurakKyzYpfNhtvk/sqgDXgrxqdEcuuliCLwGgBxoe4ir1x1zsUhP5X0KaAn7e5D
         0JLQYTUR8fnH2dBUphxg1I9c63xi8jxwOJudH6CmEjODYFJW7TYv1E94ENvZ75ntJFV8
         aAKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765989352; x=1766594152;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=UvAnEUJpoxlkuq4/g/vjfhu/EQszMNOrrroegkLM09Y=;
        b=JqZ9afKKqVUmN97NPVOaN6s9LyTUyZM9+60Qb5PF0KNkgQYQEsgtuztwy4wAioBdcs
         UyJPNLagNE95tKvjrFGMA80vCGBTdqmKsxyawuc1GV/W97meLli4RUzamX3J6/HA0yLA
         IJgGSAOs45BmYB8fyvSZZNMm1tf+pBBOZNke88OeM8qb0q4YQDMdz8UynQnjjxfrHQG1
         E5krLvEDRSugOLemMsfKujW0Sdebz/JVQR0NUFuzDpOQcyeyXHIQgeAxoBMzwcOEHB2D
         IAwr5n8RTDP62XdLLpuJTnjylRYzgjPQLnXHarHex4++sqnSI/QGBQfevuNADi9qpw1C
         1vzQ==
X-Forwarded-Encrypted: i=1; AJvYcCXVKSxw/5ck5FqdHyU2a2thmJFk8ATy70wz1cIThMRo0NpmjaH/lLLpYIEcr+3C1EHL8/F9Wo3caTcq@vger.kernel.org
X-Gm-Message-State: AOJu0Yy1JEKOn7eoujoly4dyevLKWGhoIows00ktpU7a4f4mXC+NXkGP
	SA509zijcrndWP4xO0mNLwKppCFC+ozmrs6zmiUTii3FfoGwdAy/bklR/2X6F+blTVCJx3mbvak
	cx4jfxDARH33F9Z047Vwaw76TFaKMIvz9zYMrZdFPOwOWTB4SUOcZ49IlHblvxhESX/FM1fho
X-Gm-Gg: AY/fxX6FQkHQPv/8AoHMvN+aepU1ic2uk+0+pjWRcVL1orXBNHHsYC8bAVc2MYR4jk6
	vELDjprb6mtYzmnwFu/QR7XTMSd4OgXRT/4PIBfEip/DG5kJKvK+BKYAibKV//0wyMs9HX/dn1k
	yqlX2Pk8oxPoq3P53mQCHrYHicPOI8S8x/5D9TdsRS6vUVk7jTGDoGIQS2Trtr4cvCmigjbyGvH
	E3pQR+cGweHUJgE8988Dll7QAS19mCPGZZfaj5983JXRVtXENjsnVfKgN2nqeF2UGEC6r0npFhU
	7kQDPGUk1963ANOpm2WIJePXAS2BU8/17h1ERnuT9W93ZIax/SfBNMbn2aSyLZ453HxV47p1x7D
	EgAxbCbkZNx6ZXwzS0MPi+pLGRNX86RlxFz9r
X-Received: by 2002:a17:902:f68f:b0:29f:2b8a:d3d with SMTP id d9443c01a7336-29f2b8a256fmr159984355ad.4.1765989352154;
        Wed, 17 Dec 2025 08:35:52 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFbEQIOV0Z75PS6fp8HMNstrAnUoha1SBavGLgV2mvlvTEanQzsq6SMQStWX8B2Ob55H5y14w==
X-Received: by 2002:a17:902:f68f:b0:29f:2b8a:d3d with SMTP id d9443c01a7336-29f2b8a256fmr159984035ad.4.1765989351502;
        Wed, 17 Dec 2025 08:35:51 -0800 (PST)
Received: from hu-mojha-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29ee9b36af7sm204721055ad.18.2025.12.17.08.35.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Dec 2025 08:35:51 -0800 (PST)
From: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
Date: Wed, 17 Dec 2025 22:04:48 +0530
Subject: [PATCH v9 12/14] remoteproc: pas: Extend parse_fw callback to
 fetch resources via SMC call
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251217-kvm_rproc_v9-v9-12-ab7ac03e0ff1@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1765989299; l=4517;
 i=mukesh.ojha@oss.qualcomm.com; s=20250708; h=from:subject:message-id;
 bh=qYuaoe5yZlmgj0Bqbs68hLea7hvaqBZAkEyE9xnmPwE=;
 b=w2iYpcGrgPsXPlh0Vs59+sqeE25cPEZgnkmEiucxeuLP6n3ygOGFsnS+qQwl++CgSsywsjp90
 AngiZjKfU6qDlrb7TvyfKzIgL/ZAk3NulAWQ34Lyn4iJogmJfwDbjI7
X-Developer-Key: i=mukesh.ojha@oss.qualcomm.com; a=ed25519;
 pk=eX8dr/7d4HJz/HEXZIpe3c+Ukopa/wZmxH+5YV3gdNc=
X-Proofpoint-GUID: v3kwX9pMDbARzXfGnJfZK2WlD1h5wMc8
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE3MDEzMSBTYWx0ZWRfX4abBJbwopibX
 pY1djdpsQ0jdo8HwTl+ZmkK3FFTV+3yp+1XR/TEcnkDPxcVanxsNkki5SESqap47zPY1QPgSmXC
 en3xMZD3Q94MU0JJhI611UxJN1uKuxRMpnDUvFKakK3xrvws4NRrp7EY5sPTF3D+rfyz9HFkv1B
 pNOUMrdg6YeiokLNw7BmohqbXezNBY9XxNEfh4Zwurb1sjvrTCVX/H5zqjB4q1xclUkZvAQ6/06
 CtXHfoQ9LFy6UiPFglXPKn6mxhNwiNfskTiYa/WnLs8w/KASmPM9TIViaW5nwhaS2zBIs9tdHY+
 q032VO4e6x8GogAXH8ivmSakLKTyOHviget+oLxvOyXyi3NXOHGyeXARVT+G/BBEy1yj1/ZMVgz
 nuPosMdZzHfvWthWA/Zt8RZhAAMwlA==
X-Proofpoint-ORIG-GUID: v3kwX9pMDbARzXfGnJfZK2WlD1h5wMc8
X-Authority-Analysis: v=2.4 cv=HpN72kTS c=1 sm=1 tr=0 ts=6942dbe9 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=KMz1R6K7GWUeRkMKapkA:9
 a=QEXdDO2ut3YA:10 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-17_03,2025-12-16_05,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 bulkscore=0 clxscore=1015 priorityscore=1501 phishscore=0
 suspectscore=0 lowpriorityscore=0 adultscore=0 impostorscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512170131

Qualcomm remote processor may rely on static and dynamic resources for
it to be functional. For most of the Qualcomm SoCs, when run with Gunyah
or older QHEE hypervisor, all the resources whether it is static or
dynamic, is managed by the hypervisor. Dynamic resources if it is
present for a remote processor will always be coming from secure world
via SMC call while static resources may be present in remote processor
firmware binary or it may be coming from SMC call along with dynamic
resources.

Remoteproc already has method like rproc_elf_load_rsc_table() to check
firmware binary has resources or not and if it is not having then we
pass NULL and zero as input resource table and its size argument
respectively to qcom_scm_pas_get_rsc_table() and while it has resource
present then it should pass the present resources to Trustzone(TZ) so that
it could authenticate the present resources and append dynamic resource
to return in output_rt argument along with authenticated resources.

Extend parse_fw callback to include SMC call to get resources from
Trustzone and to leverage resource table parsing and mapping and
unmapping code from the remoteproc framework.

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
---
 drivers/remoteproc/qcom_q6v5_pas.c | 59 ++++++++++++++++++++++++++++++++++++--
 1 file changed, 57 insertions(+), 2 deletions(-)

diff --git a/drivers/remoteproc/qcom_q6v5_pas.c b/drivers/remoteproc/qcom_q6v5_pas.c
index f746d2f39a1d..07754f3a4ef8 100644
--- a/drivers/remoteproc/qcom_q6v5_pas.c
+++ b/drivers/remoteproc/qcom_q6v5_pas.c
@@ -413,6 +413,61 @@ static void *qcom_pas_da_to_va(struct rproc *rproc, u64 da, size_t len, bool *is
 	return pas->mem_region + offset;
 }
 
+static int qcom_pas_parse_firmware(struct rproc *rproc, const struct firmware *fw)
+{
+	struct qcom_pas *pas = rproc->priv;
+	struct resource_table *table = NULL;
+	size_t output_rt_size;
+	void *output_rt;
+	size_t table_sz;
+	int ret;
+
+	ret = qcom_register_dump_segments(rproc, fw);
+	if (ret) {
+		dev_err(pas->dev, "Error in registering dump segments\n");
+		return ret;
+	}
+
+	if (!rproc->has_iommu)
+		return 0;
+
+	ret = rproc_elf_load_rsc_table(rproc, fw);
+	if (ret)
+		dev_dbg(&rproc->dev, "Failed to load resource table from firmware\n");
+
+	table = rproc->table_ptr;
+	table_sz = rproc->table_sz;
+
+	/*
+	 * The resources consumed by Qualcomm remote processors fall into two categories:
+	 * static (such as the memory carveouts for the rproc firmware) and dynamic (like
+	 * shared memory pools). Both are managed by a Qualcomm hypervisor (such as QHEE
+	 * or Gunyah), if one is present. Otherwise, a resource table must be retrieved
+	 * via an SCM call. That table will list all dynamic resources (if any) and possibly
+	 * the static ones. The static resources may also come from a resource table embedded
+	 * in the rproc firmware instead.
+	 *
+	 * Here, we call rproc_elf_load_rsc_table() to check firmware binary has resources
+	 * or not and if it is not having then we pass NULL and zero as input resource
+	 * table pointer and size respectively to the argument of qcom_scm_pas_get_rsc_table()
+	 * and this is even true for Qualcomm remote processor who does follow remoteproc
+	 * framework.
+	 */
+	ret = qcom_scm_pas_get_rsc_table(pas->pas_ctx, table, table_sz, &output_rt,
+					 &output_rt_size);
+	if (ret) {
+		dev_err(pas->dev, "Error in getting resource table: %d\n", ret);
+		return ret;
+	}
+
+	kfree(rproc->cached_table);
+	rproc->cached_table = output_rt;
+	rproc->table_ptr = rproc->cached_table;
+	rproc->table_sz = output_rt_size;
+
+	return ret;
+}
+
 static unsigned long qcom_pas_panic(struct rproc *rproc)
 {
 	struct qcom_pas *pas = rproc->priv;
@@ -425,7 +480,7 @@ static const struct rproc_ops qcom_pas_ops = {
 	.start = qcom_pas_start,
 	.stop = qcom_pas_stop,
 	.da_to_va = qcom_pas_da_to_va,
-	.parse_fw = qcom_register_dump_segments,
+	.parse_fw = qcom_pas_parse_firmware,
 	.load = qcom_pas_load,
 	.panic = qcom_pas_panic,
 };
@@ -435,7 +490,7 @@ static const struct rproc_ops qcom_pas_minidump_ops = {
 	.start = qcom_pas_start,
 	.stop = qcom_pas_stop,
 	.da_to_va = qcom_pas_da_to_va,
-	.parse_fw = qcom_register_dump_segments,
+	.parse_fw = qcom_pas_parse_firmware,
 	.load = qcom_pas_load,
 	.panic = qcom_pas_panic,
 	.coredump = qcom_pas_minidump,

-- 
2.50.1


