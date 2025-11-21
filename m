Return-Path: <devicetree+bounces-241012-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 96FAEC78AD3
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 12:08:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sin.lore.kernel.org (Postfix) with ESMTPS id 875202BF2C
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 11:04:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 439E834D38B;
	Fri, 21 Nov 2025 11:02:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="kviSVaAU";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="JbHI0ajd"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71B8C347FEE
	for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 11:02:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763722935; cv=none; b=ePC97toY0H5bkIbdhCQYUaRNxtQWVei1PO5EjUwiPa6YobmqPUCaRFfwDc22PUP65f74+TMAVxA0ZOnQ8WL1guEJfa1cy+qyjuH1QRzQh3+EzbbCnqQv/BAX79lQVaB+j47NLcRw16J6KtRIG5t5L7ZiQNFQ6/sE+I1H2KNLpr0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763722935; c=relaxed/simple;
	bh=i0l1yd2psvmNReSCrh1wM3fGQJyLpQp0JIKKuUcUls4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=IhJseM/4xaJg4T8hLC6+ZN9JFYTLQsDMXAO3NXi65NJsuFWRxYwd+z8zP4oXVyYfuxHfZMwY225pU5BNcfflO0QsQahKf4wvUOb2uLWPaefr/ebhDpn/+HH74TXrl8Ys4T9AwN/mm7uI0APjcPdhWiJiASXh9c6QAOQdcenVdek=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=kviSVaAU; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=JbHI0ajd; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AL9qKQN2006033
	for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 11:02:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	V/FS2O3qT/9Oj2CvSpEkadXBrxFneX0U/N5cD0ePce4=; b=kviSVaAUfDQH/BhY
	Nu2qrz5q0Q5T3gvMwL3ho7vlE6ev/WE99AHH3mUjPGyPUU+28/ylf0YaRLfNBT8D
	k5k7PaSFwTn5TY3swoBdolVAoLe09cdhA/y91Houeg9isaGpvW3+zmR30CiwtFaR
	d4h4atkL5KxATiyp56hUvG209emkMitQmFIvIN4e4YsCt2uW0BkAUDx5JlfOb7LB
	pnWZ4q6D95IdtOSGs968gm5sgrBWEqdWSQihcRPjZPt1F/zOKlnPuCL+BW/Afwx8
	U+WZGWkOdVqVvBBUGeDrixodM9dMNG1g/WnMgF9cv9ftfWWnfViZiB7Jd+GtAJky
	Kd6MUQ==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ajb53275b-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 11:02:12 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-34176460924so1646085a91.3
        for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 03:02:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763722932; x=1764327732; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=V/FS2O3qT/9Oj2CvSpEkadXBrxFneX0U/N5cD0ePce4=;
        b=JbHI0ajdoiyPjH8KmV4aPjrRrR//J6lAeaD3c35xR1yyw8Y0kK8IWiCRoeS/W3rEfy
         cf+pOZS865JEK8GXU38Yil/9/X+m0WWCyyPqCG/nycSZiD59pxkHWYhl3OTXsk7B1ohf
         cGBxThx+wTPTcsyqMKuYO22empi4BhS74fiwmDKI/+MLxEdZWZjtZv1yI1Rk0Jwu3ZsI
         c+bnXCA5AyQ87XqdBi5k8EYySuf0nG/YuvcsGIA5057AFJfFSt1y+zBIGlDbEuWAAWSh
         LOxe/o95JvlRzAbW79ADdSy9xkdXc0RXQtPiwK8mHctKcq47JogKJw5/OGEMyY4Axfaq
         ynkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763722932; x=1764327732;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=V/FS2O3qT/9Oj2CvSpEkadXBrxFneX0U/N5cD0ePce4=;
        b=ZbzbEjh+XZ/xJ9qkUxrGKWvrLNPIOBfClZP/BvmPUUccnEn993P4YotlKPmuhU5Up1
         X69QRi/Goewugf84bIpFELgkDOTrnU9l7C/opBa74U3SJ1rV0qQFJg31h3hHo448JGAF
         sXsgk1tT0pJbb41j5QOCg1wcKNQW8d/D/cYRXjuLC4NMlTP21JtdyfFYNhzxSy4s6hn5
         YDIqv67gV0leuBmWOhwCr1phCLUQDrb5mxL8ypZtREoQu3NnklTp/BpwpQBGsxLvj3C6
         OK/Psicvsjxddjntd3Pl+dxTtZHGs2uSXw5uHkSj3jt1RfV8ecV6xcQWWE6qxRz3UUvC
         5iLw==
X-Forwarded-Encrypted: i=1; AJvYcCXKynE5Nbt+eiv+cJzOKxwF6fPzMyls1dgOu1ZIWaZVYxp9UEWujsoSUpOfUjMcdJWYXW+5IN2aN8Y4@vger.kernel.org
X-Gm-Message-State: AOJu0YxbN4PnNlYzaNckg6i8PTHX8uPYHnJOSEBX7gRKZ7/Av/3ocNBe
	GjlxhkJQGXOJfIAWgknfE9ODlJ6l6K4k/L41mu8DV6ntEzVHJZvenjgdHInHBGieKeKn+dq69hc
	vrrcqZpOkm128CiyEf+3nN+QvXpgVDnHa5M3tq/jXkhFe1D0fPOohB/Ttcg6+jOY9
X-Gm-Gg: ASbGncu8evK5CLGZBltbwlbqy+Vxbak524ftoa7ds+sIqsbyq3f0QjhCq5c/UpmGurk
	7ZKu7bQAYltwNv1b+a5jvyHVI2nSa5PyUX9q2+N3IRReqHR4vlUduhicPcEN51lDwwOkg2itTDj
	M1C2mJIL1jCwLgDmZ03oNHxuNgw19pQIxoBDEG4KLChTLGp7wmg6u5MwfYortXRywZZUs9CaQby
	cyu9MyIgwczthHF2anIcLPA7RqJUGuYMPbVAIS5p1q2nAkHvXzfm8Lwh3+/QN+IdB6ln/GoOlDQ
	4mUlaVi9JX9ogS7rT6fQBm2wNKYY1QQpFsWPJrOwT/8JI+XLXLMHbr3oZboJfb9Spm2+ibXEDs+
	BkVBVIAVHsASwMy/B+5csXsqlL9/2fRcysC8V
X-Received: by 2002:a17:90b:578c:b0:341:2141:df76 with SMTP id 98e67ed59e1d1-34733e734f9mr2018549a91.13.1763722931534;
        Fri, 21 Nov 2025 03:02:11 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGZyBfliX1taeiA8tYnXeLxjLCQb9p3ax09FQZM7jo0MPAhWPaVofZjyYvJfymsad1E6zSGrg==
X-Received: by 2002:a17:90b:578c:b0:341:2141:df76 with SMTP id 98e67ed59e1d1-34733e734f9mr2018499a91.13.1763722930831;
        Fri, 21 Nov 2025 03:02:10 -0800 (PST)
Received: from hu-mojha-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-34727d5208csm5191165a91.15.2025.11.21.03.02.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Nov 2025 03:02:10 -0800 (PST)
From: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
Date: Fri, 21 Nov 2025 16:31:14 +0530
Subject: [PATCH v8 12/14] remoteproc: pas: Extend parse_fw callback to
 fetch resources via SMC call
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251121-kvm_rproc_v8-v8-12-8e8e9fb0eca0@oss.qualcomm.com>
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
        Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
X-Mailer: b4 0.14-dev-f7c49
X-Developer-Signature: v=1; a=ed25519-sha256; t=1763722879; l=4665;
 i=mukesh.ojha@oss.qualcomm.com; s=20250708; h=from:subject:message-id;
 bh=i0l1yd2psvmNReSCrh1wM3fGQJyLpQp0JIKKuUcUls4=;
 b=LYCjqV9aANLxV2tv1O9a0YYowzUv+ssFnf04PIj1dwISr7QrZKNripbfjHn5pN95Gw2cAYkyF
 hdM6iv1GdWCBJ7uzbJrXyMZW9PyZryoGGHTxyiEaRSaZFyAvvMXvnFR
X-Developer-Key: i=mukesh.ojha@oss.qualcomm.com; a=ed25519;
 pk=eX8dr/7d4HJz/HEXZIpe3c+Ukopa/wZmxH+5YV3gdNc=
X-Proofpoint-GUID: AcY4GEN4zw_B5DbGeiBexluRol8dATxg
X-Proofpoint-ORIG-GUID: AcY4GEN4zw_B5DbGeiBexluRol8dATxg
X-Authority-Analysis: v=2.4 cv=Wugm8Nfv c=1 sm=1 tr=0 ts=692046b4 cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=KMz1R6K7GWUeRkMKapkA:9
 a=QEXdDO2ut3YA:10 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTIxMDA4NCBTYWx0ZWRfX1ocZyHeQ5EbU
 puSfchHZ8c58hsa4WdnLQYrx49bk0Tuw+x3P1ts+6p0v2kOkDwlwg8yvlZpX/kvYT4BU9Po0n0o
 BU8e5aI8JgNuqVTWXRusFErErLpQAZm6urlf+U2u6QdX9GSuV6lxtacqNJlDHhhCj7ujA1FJj3s
 /EeVBy/2wmaEV08fTyC7HTWSjlvbf8NPcAJTkzTeb7NZljb59P/yKGUKDdXoPsKphkxvtzqAbHb
 bXyJkIkyWpLA3yzgmhhCl9zm7XXNOfzS8DhiAAhLo/zmJ8zmYfJEW/e6pQgbwNDEPgcvG+gylBJ
 MAQJixSiV90iBgpQYEYFjZG/3g8RCGXy1K0P/42lHR2cnCLDz6W8VI2PQTFamqRld9OvstGvdAY
 TRL53g84HAbh1A4nkLVlodBQAEeHLg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-21_03,2025-11-20_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 clxscore=1015 phishscore=0 bulkscore=0 adultscore=0
 suspectscore=0 impostorscore=0 priorityscore=1501 malwarescore=0
 lowpriorityscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2511210084

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

Signed-off-by: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
---
 drivers/remoteproc/qcom_q6v5_pas.c | 60 ++++++++++++++++++++++++++++++++++++--
 1 file changed, 58 insertions(+), 2 deletions(-)

diff --git a/drivers/remoteproc/qcom_q6v5_pas.c b/drivers/remoteproc/qcom_q6v5_pas.c
index 9feee2cb1883..186a90d6c83a 100644
--- a/drivers/remoteproc/qcom_q6v5_pas.c
+++ b/drivers/remoteproc/qcom_q6v5_pas.c
@@ -34,6 +34,7 @@
 #define QCOM_PAS_DECRYPT_SHUTDOWN_DELAY_MS	100
 
 #define MAX_ASSIGN_COUNT 3
+#define MAX_RSCTABLE_SIZE	SZ_16K
 
 struct qcom_pas_data {
 	int crash_reason_smem;
@@ -413,6 +414,61 @@ static void *qcom_pas_da_to_va(struct rproc *rproc, u64 da, size_t len, bool *is
 	return pas->mem_region + offset;
 }
 
+static int qcom_pas_parse_firmware(struct rproc *rproc, const struct firmware *fw)
+{
+	size_t output_rt_size = MAX_RSCTABLE_SIZE;
+	struct qcom_pas *pas = rproc->priv;
+	struct resource_table *table = NULL;
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
@@ -425,7 +481,7 @@ static const struct rproc_ops qcom_pas_ops = {
 	.start = qcom_pas_start,
 	.stop = qcom_pas_stop,
 	.da_to_va = qcom_pas_da_to_va,
-	.parse_fw = qcom_register_dump_segments,
+	.parse_fw = qcom_pas_parse_firmware,
 	.load = qcom_pas_load,
 	.panic = qcom_pas_panic,
 };
@@ -435,7 +491,7 @@ static const struct rproc_ops qcom_pas_minidump_ops = {
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


