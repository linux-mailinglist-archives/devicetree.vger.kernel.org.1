Return-Path: <devicetree+bounces-263461-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aNF/FLQohmmSKAQAu9opvQ
	(envelope-from <devicetree+bounces-263461-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 18:45:24 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E32DE101519
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 18:45:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 35EE33073F62
	for <lists+devicetree@lfdr.de>; Fri,  6 Feb 2026 17:41:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C546942189B;
	Fri,  6 Feb 2026 17:41:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="PxT89Rws";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="HKwGvyhH"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 789DA3ECBC2
	for <devicetree@vger.kernel.org>; Fri,  6 Feb 2026 17:41:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770399699; cv=none; b=lIUnCuH9svm4xATZfyErRHXwxyAuZioJn3k5coJY9VcNrTnTKf9ahpAJDjiwV+1iKfbnd0kfFBnduFg6X89m3tAB4769trLenh405oUeEz5PxVqYgQCvUz3WosW2QltBQW+tVbSNI8hcWqgtMMstr+peCHia157R0zudXUoZ1b4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770399699; c=relaxed/simple;
	bh=85mnIBih5TefJNp/bHk7qTk7tspz31Q1DwJ4d0ufNMs=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=ngk9zUpt1REUenWtNT/AK0XEWUA/U9uvdWf4x0yu6Uhnc5pJwDLPZTP04sHZGvopjqPYrHbFUBnkzFg6ZfqztDadotFEJQFlZ3X0sLMLrFc4qrwbUnpTFbiNTe6A0xoXmaI95e5OJ4sqKShup06jckibUAcZKaEQhOitokSawZM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=PxT89Rws; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=HKwGvyhH; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 616CEXZs3011797
	for <devicetree@vger.kernel.org>; Fri, 6 Feb 2026 17:41:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=GkgK+E57psN
	HC9wkY83ywNIDVuH2SOJteZ2XuiMuHCw=; b=PxT89Rws7YMT1YLT2mfavkWPCrb
	1yOK9dRKKuWLQnSc8S1hn67RlNQPty+vKgafSvbyCu9V7tPnKqTrF1wqHeQBkqwy
	RtFJDVXSpee4mg6dcynUfi7eR7VLBBhplHBvDYh75StxacRZrA8HgpQ8LgiiPKg6
	q9YI5AuWrL91gkgdciLVlM4jDOas4EFhqhktlj2GkR5MDw69/PET/KePceVJuWtZ
	R78hHxIWszluHEOolL9QDCMt31n+4wjnkGs8bqobxDeT8vSP7oUBAW8cogmyTqno
	9UvNecGdrzQGlWJ5fGcMVlWIX6NdXGhMVCpQU5iDldeh6pcRs5s4YKuXEPA==
Received: from mail-pg1-f198.google.com (mail-pg1-f198.google.com [209.85.215.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c59ukj7yr-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 06 Feb 2026 17:41:38 +0000 (GMT)
Received: by mail-pg1-f198.google.com with SMTP id 41be03b00d2f7-c61dee98720so576484a12.0
        for <devicetree@vger.kernel.org>; Fri, 06 Feb 2026 09:41:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770399697; x=1771004497; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GkgK+E57psNHC9wkY83ywNIDVuH2SOJteZ2XuiMuHCw=;
        b=HKwGvyhHN1spm/g0zLwBcKERNQmqcj1FVD7wNlUkxPi2CHRwY4bW+DlaM+ZciJV0bh
         SvygjDmbFrzkGTsfWOBKI4cGmAZ8c35FRSBk5qkdqY3Li26WEDvkPte2vgJfwx900sRY
         efN54Ey5+BKnIrLJ4HuwB8Su5wHtaEpBh/ZXxuvFkMarH9ngaUhw5KhdVVPXYvbQKFa1
         JC1CSqQ+mZuLXOqvC1bZ7s37jpDmDMDpB9YupnVSDFn3X0KVpNZMCzoilETe92f40bH3
         shbT5A32VWmfu5Tfq2F0MWY4wJ9M5ZoNdfmUgvTvIbWaeS8xU/ETXiAceYzku2pmrE1y
         A3TQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770399697; x=1771004497;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=GkgK+E57psNHC9wkY83ywNIDVuH2SOJteZ2XuiMuHCw=;
        b=tn1Ghk3VNdObTrmdxEc73jeg/KY5wsmJlybpTApzwoOOvWMO08/uMA89fbHAr79yvg
         K1gh4dVSqYYj44PQHoqZH6HamPAVjzP5O395O6CYUiVct68Zhzodh2MNraRPlnGD60mj
         ErTn4Qh+ttZ7pDf3xapBNwo9f92E4eNPpKY75O2js37Y0sSkFgWzjwGR0tmeO/SDvHIR
         anMbd22DMfnWsomrPLvBvXaRb1J6zlYb37k9+OblEr/j5JYs4dYvSPMw/W9QS3m0ifzT
         qwnCLjXvJndVYSAyDQ+QT1opeqgdfPK8mWvluI2bK/7fLbqnI7UMFWMsCTGH/hNah9To
         CCPQ==
X-Forwarded-Encrypted: i=1; AJvYcCWog8nAbkEhQsBMrCC/BKjKPqaGwGKdrcHiq95t8FMhSA62duP4oCcSpHk7zvUPmI1F/vgHFAiD+Gzz@vger.kernel.org
X-Gm-Message-State: AOJu0Yxf6aFNBowfjpmP8JFfduzcpg7p98flCdcg6Vl74dfBJNlsrCiZ
	Ft9+tMJfNPGK/B7OPcevZK6Vt7gO38EfX7ma9acTT3ULupcfTk4fX+Tr9YvuWtf4S4YtH8ChDgY
	z73ZyFIzOWVT7D67wIKcZ//4sy+jkgmfh0keDyBsQYzmAeDEmY9C3PX9vlmbsucha
X-Gm-Gg: AZuq6aL9jtXAvlVuf6DYVb2BNRw1299t4B41hEERW4CTKevaQ6wBHpR1w0/NenVgTAA
	bUnjzIY7cvDKpYjGD6AiwAI6DhTsR6eZZdGX8TjvoLlvRpZ/4dKgGlepNvowssqXnuEbtL8QuBx
	Dk2N8pZPxodqhPFzwtgeTU+CMUE9Q67ypGBKmLqZLdURjc6cPG1YV2slr6CBxy7sg+MDwyILalS
	ZybOEXnxywpIExkmqSv3+DT8DnjqlbcgmrSKR7Nqt+jL4rPpRXv851lANHzT3khhQKrQMe3fBlk
	W4Qz8psIBT6lhBE7tTa22B369NCuawBUourb7UnF6oPUOVHM5t9UCY8JIBinDbOxHzdqKUUdwg/
	KW1zgUHxyRckMREVIMbUT7WKd+TYeWfD29I1JJvDTak4=
X-Received: by 2002:a05:6a21:6d9b:b0:38e:9ae0:3d5f with SMTP id adf61e73a8af0-393acfd32f7mr3821803637.17.1770399697255;
        Fri, 06 Feb 2026 09:41:37 -0800 (PST)
X-Received: by 2002:a05:6a21:6d9b:b0:38e:9ae0:3d5f with SMTP id adf61e73a8af0-393acfd32f7mr3821776637.17.1770399696631;
        Fri, 06 Feb 2026 09:41:36 -0800 (PST)
Received: from hu-ptalari-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c6dcb5eccbdsm2639387a12.19.2026.02.06.09.41.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Feb 2026 09:41:36 -0800 (PST)
From: Praveen Talari <praveen.talari@oss.qualcomm.com>
To: Andi Shyti <andi.shyti@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Mukesh Kumar Savaliya <mukesh.savaliya@oss.qualcomm.com>,
        Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Praveen Talari <praveen.talari@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-i2c@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        bjorn.andersson@oss.qualcomm.com, dmitry.baryshkov@oss.qualcomm.com,
        konrad.dybcio@oss.qualcomm.com
Cc: prasad.sodagudi@oss.qualcomm.com, quic_vtanuku@quicinc.com,
        aniket.randive@oss.qualcomm.com, chandana.chiluveru@oss.qualcomm.com,
        jyothi.seerapu@oss.qualcomm.com, chiluka.harish@oss.qualcomm.com
Subject: [PATCH v5 02/13] soc: qcom: geni-se: Add geni_icc_set_bw_ab() function
Date: Fri,  6 Feb 2026 23:11:01 +0530
Message-Id: <20260206174112.4149893-3-praveen.talari@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260206174112.4149893-1-praveen.talari@oss.qualcomm.com>
References: <20260206174112.4149893-1-praveen.talari@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=OM0qHCaB c=1 sm=1 tr=0 ts=698627d2 cx=c_pps
 a=Qgeoaf8Lrialg5Z894R3/Q==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22 a=EUspDBNiAAAA:8
 a=BVB3BO4C9w_THQaB-9MA:9 a=x9snwWr2DeNwDh03kgHS:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjA2MDEyOSBTYWx0ZWRfXz7pDr+UJzXgO
 MR6fiMQCtLL98YChnQShiz1NaypgjMMTGYPAmzSasoypuubfUXmonCL5WjRa6cl7n6014T1SyiO
 t9OnxZaqu79rHr/YEYLCDXQ8HRNJmAPWH/3T3X5yfmb/j0zXuyhDzNL1tcCBY5jDG9sYnz6AukU
 Rb79NRYhWABS8mtrupHgjaVgQ+dniAuDnGjWH4edi1IoTV7gHX1imv/BKHOOMv3iaMZlPxQFMQ2
 UjeaKsO3hejHBdnu/xnRm0/BapiINUkUXqC/8eXj/ThB2pf+anbo9jdH6r5aDlIpZQuBebAK9pc
 m2Fz72UjaA3+4pe4VcUUT65Jh3/EzrNHB+D8tlrji9Che2EN5E8Q5xcFzqSyngmKvfSIcgFGjjW
 j2BD7tXVCa8UMwGbp3jspMmh67LTnJrdGTLoVBrDsJ56+UyFQUyTku00FmaKVqicGQFdC8qqoCw
 ALa9OHznhEJJOpiQp1A==
X-Proofpoint-ORIG-GUID: p9iqdhj78vOpsWDJxp9xIOsaTQZlMaAm
X-Proofpoint-GUID: p9iqdhj78vOpsWDJxp9xIOsaTQZlMaAm
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-06_05,2026-02-05_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 clxscore=1015 priorityscore=1501 adultscore=0 lowpriorityscore=0
 phishscore=0 suspectscore=0 impostorscore=0 malwarescore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602060129
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-263461-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[22];
	FROM_NEQ_ENVFROM(0.00)[praveen.talari@oss.qualcomm.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.999];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: E32DE101519
X-Rspamd-Action: no action

Add a new function geni_icc_set_bw_ab() that allows callers to set
average bandwidth values for all ICC (Interconnect) paths in a single
call. This function takes separate parameters for core, config, and DDR
average bandwidth values and applies them to the respective ICC paths.

This provides a more convenient API for drivers that need to configure
specific average bandwidth values.

Co-developed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Praveen Talari <praveen.talari@oss.qualcomm.com>
---
 drivers/soc/qcom/qcom-geni-se.c  | 22 ++++++++++++++++++++++
 include/linux/soc/qcom/geni-se.h |  1 +
 2 files changed, 23 insertions(+)

diff --git a/drivers/soc/qcom/qcom-geni-se.c b/drivers/soc/qcom/qcom-geni-se.c
index b6167b968ef6..b0542f836453 100644
--- a/drivers/soc/qcom/qcom-geni-se.c
+++ b/drivers/soc/qcom/qcom-geni-se.c
@@ -946,6 +946,28 @@ int geni_icc_set_bw(struct geni_se *se)
 }
 EXPORT_SYMBOL_GPL(geni_icc_set_bw);
 
+/**
+ * geni_icc_set_bw_ab() - Set average bandwidth for all ICC paths and apply
+ * @se:		Pointer to the concerned serial engine.
+ * @core_ab:	Average bandwidth in kBps for GENI_TO_CORE path.
+ * @cfg_ab:	Average bandwidth in kBps for CPU_TO_GENI path.
+ * @ddr_ab:	Average bandwidth in kBps for GENI_TO_DDR path.
+ *
+ * Sets bandwidth values for all ICC paths and applies them. DDR path is
+ * optional and only set if it exists.
+ *
+ * Return: 0 on success, negative error code on failure.
+ */
+int geni_icc_set_bw_ab(struct geni_se *se, u32 core_ab, u32 cfg_ab, u32 ddr_ab)
+{
+	se->icc_paths[GENI_TO_CORE].avg_bw = core_ab;
+	se->icc_paths[CPU_TO_GENI].avg_bw = cfg_ab;
+	se->icc_paths[GENI_TO_DDR].avg_bw = ddr_ab;
+
+	return geni_icc_set_bw(se);
+}
+EXPORT_SYMBOL_GPL(geni_icc_set_bw_ab);
+
 void geni_icc_set_tag(struct geni_se *se, u32 tag)
 {
 	int i;
diff --git a/include/linux/soc/qcom/geni-se.h b/include/linux/soc/qcom/geni-se.h
index 0a984e2579fe..980aabea2157 100644
--- a/include/linux/soc/qcom/geni-se.h
+++ b/include/linux/soc/qcom/geni-se.h
@@ -528,6 +528,7 @@ void geni_se_rx_dma_unprep(struct geni_se *se, dma_addr_t iova, size_t len);
 int geni_icc_get(struct geni_se *se, const char *icc_ddr);
 
 int geni_icc_set_bw(struct geni_se *se);
+int geni_icc_set_bw_ab(struct geni_se *se, u32 core_ab, u32 cfg_ab, u32 ddr_ab);
 void geni_icc_set_tag(struct geni_se *se, u32 tag);
 
 int geni_icc_enable(struct geni_se *se);
-- 
2.34.1


