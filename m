Return-Path: <devicetree+bounces-259482-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cI+KOeZdd2n8eQEAu9opvQ
	(envelope-from <devicetree+bounces-259482-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 13:28:22 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EBA488361
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 13:28:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id D5D273037C35
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 12:26:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 49D82336EFD;
	Mon, 26 Jan 2026 12:26:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="MKmoR3Gw";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="JzOsdHID"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 166483358D0
	for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 12:26:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769430416; cv=none; b=GMD6ya0n3lhHSgC7vdhTgoMwrH6qqRaqUgEZLlkC65Ul2/fzRMkjCG/8QBvbmwP6PLd3VsjRtwmVjpP6lzghsX1LBEKe9T0E/Gtsm/V9JHL++16tNHR7S66096QS7MsXdr91fR8KIXoNR48wJTQqxZhiT3///Ws9GA5Ik0odqfc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769430416; c=relaxed/simple;
	bh=IqJsRexS/6twiyjUn6Ip0MjRVU5qD6SvEyWdsCIv7Ak=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=RAYgQVMKBqluBlEKkLvi040P7cgq8/C8xA67zL7HV48j+z/Gg5cWebKmkxCNNqAfjSfP4+fgN9Yz4gk+5A72E9gJiaQrM79iMh5tKv+FhZLSQX8MEbfp6C0d385iagchwG3Gb83tq2Ydjz0Z/JhVW88b4x1qlTWP+J70gfQy5/U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=MKmoR3Gw; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=JzOsdHID; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60Q8U8CJ860194
	for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 12:26:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	pVCkh/W6bHIxppZtdEhqPaJQn9q3J1ln2hdlI6R74MI=; b=MKmoR3GwMLta2QG6
	7ouqrxlRyeLGJRWZ1YoNshe9RR2Km53S990v6p0oeNU1f046/1wcci0o4gCkJjta
	xJU8K+/QVcrIniRtpN04e2DmDBtIxveg57oouRcbxnrRy1ATUeCQspKrteb9OmPJ
	6i24yJOk69yw+RdWl8m7G5xq0Iknyf/kIUZ+ymfvMYNNwnxDLmJiUvh7s115dw33
	FGQ0o9eeiK5Qjvw5l/Do5B/ISV9YS2ksI2Nnoof2vw2WOgNaGZjk4s0D4JXkyF16
	OH7uXj7WUDwO96Ywger38BM2RNYPrq9YSgV1Z0lGOv+PlhsiMAPOz6pGfzQXM2bD
	oPJ2zQ==
Received: from mail-pg1-f198.google.com (mail-pg1-f198.google.com [209.85.215.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bvwtybx7b-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 12:26:50 +0000 (GMT)
Received: by mail-pg1-f198.google.com with SMTP id 41be03b00d2f7-b630753cc38so8050253a12.1
        for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 04:26:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769430407; x=1770035207; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=pVCkh/W6bHIxppZtdEhqPaJQn9q3J1ln2hdlI6R74MI=;
        b=JzOsdHIDkHjBSkqyTpJCxUuvrM1um2b0DyP6i0Ok7fvr+9Kcm7Uw9Zbv5Vxtejdjzj
         AdTtRad5bvzmA5NnYFeX6sgN/psvnzxPfsS8C8hh+MVEvgFfzjZK3Z24oyOivdrjY63r
         5eJZ1k7hzpMyzxCZL7ZupdU7WdbHCsf+kemj9CqWUx4Qltdlq7X/tMCLXinSBv8IP/kq
         FuvyZZjKP8WcHvKQ/fc8UxS5y4Br31YrCzN6PxEj9GALp4Jc3qfKo8Ecl+L9dr3GLOTQ
         FyCOeP7hdT21rjgqCs7KxlB1dB4MQdSVAoFc3Rq2hcHBTLLOm1tZXAtsu2b0SuyuPsbu
         XY7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769430407; x=1770035207;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=pVCkh/W6bHIxppZtdEhqPaJQn9q3J1ln2hdlI6R74MI=;
        b=qAsUhv5SoDYkjm1axdCSGE8ASHhF9yWE4ltvYAN3n3DvubevPfSHGtItaXiHT2xhOe
         N6ehFtIz4mauhto13N6Mp9dc8tes1WRxRN12WARrpjZesI881o0HVqlBF4/i+48WGiy+
         iScCu+RX51pgWO47CTPYksmZX2Wcq8Omef6GBLdlzS3G/maHeszlidXi4dTzBD5VJnH9
         XDM81Yb55n+n1qCGNZbZJeCcYM0EbaVJLKA8F9H9rHlPr9CyEmh8TJxNr16kIP66MXDg
         Lugb0pnh9bw0Y0LV0aebGVTxa8r5PkBkqna3wEGY5YrZUt0pU+MQIFwzBxMthVPr1Mon
         worA==
X-Forwarded-Encrypted: i=1; AJvYcCVnNRCDJ9n2p06g7jAf+c1AnobljX0HDQrKnjuhitnlKy5ouiPojePsKGqgzNLbBnB1UZ5u5dtFQf19@vger.kernel.org
X-Gm-Message-State: AOJu0YzPN5QPUckZkwaVzDyJQd7re7GEYfw6WIUMTWKjIFvTp0jabR7Y
	jwQjzLyNRphfkDk+IHzuUcnbGraa5xCrupTFVEUWb49GF2LkVjCz60oFt7UuRUiXe+TsZC4DsM2
	8pxaDn6PkxXYYfLqJEqt6aX/dYxchsZ5iuwFSnwAKu6eEu3Jx2WY1YvE+DMSMBLLz
X-Gm-Gg: AZuq6aJodFFA+6DHX9dfezbr6LEwTGdWLF834iaFCI2cZzOmaTbiistZ8wNT38LIn88
	gzmEjpqhW+7Jd9Om1UsXXj37o6ZjUKrCVRusGXT66U0sadT9km3OT2ARxpzxgr3mpMOaOoYsbKi
	SuvqZdpILmm3gbVMT6/GUJBv3YjBKHpUlDANa8eVyXSmSt+AEVUa5FNVdJZucau11h1kvSIu+L2
	27fbrbfcxUmIjTZoITXFxATeD5oWvlERofDahdRY8Xt7rDmHQS81C3Va8ROEq2frTwYhwjoRcmr
	tp6Mr7qA6X65D/VgczL8Bt3HZBgJt8Rzislp23cdv3r/MJLlo2Vay40ousfemzVDbnS9YTIdZJz
	PxfGBLKXEqS4AXlPTQe9M4AmnOaI3s+wqoc/IxQ3+hkK1
X-Received: by 2002:a05:6a21:9082:b0:38b:e944:3e94 with SMTP id adf61e73a8af0-38e9f2853c7mr3680234637.39.1769430406956;
        Mon, 26 Jan 2026 04:26:46 -0800 (PST)
X-Received: by 2002:a05:6a21:9082:b0:38b:e944:3e94 with SMTP id adf61e73a8af0-38e9f2853c7mr3680213637.39.1769430406447;
        Mon, 26 Jan 2026 04:26:46 -0800 (PST)
Received: from hu-vgarodia-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c6366644379sm6076022a12.33.2026.01.26.04.26.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Jan 2026 04:26:45 -0800 (PST)
From: Vikash Garodia <vikash.garodia@oss.qualcomm.com>
Date: Mon, 26 Jan 2026 17:55:46 +0530
Subject: [PATCH 3/7] of/iommu: add multi-map support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260126-kaanapali-iris-v1-3-e2646246bfc1@oss.qualcomm.com>
References: <20260126-kaanapali-iris-v1-0-e2646246bfc1@oss.qualcomm.com>
In-Reply-To: <20260126-kaanapali-iris-v1-0-e2646246bfc1@oss.qualcomm.com>
To: Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Bryan O'Donoghue <bod@kernel.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Saravana Kannan <saravanak@kernel.org>, Joerg Roedel <joro@8bytes.org>,
        Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
        Stefan Schmidt <stefan.schmidt@linaro.org>,
        Hans Verkuil <hverkuil@kernel.org>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Vishnu Reddy <busanna.reddy@oss.qualcomm.com>,
        Hans Verkuil <hverkuil+cisco@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        iommu@lists.linux.dev, Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Vikash Garodia <vikash.garodia@oss.qualcomm.com>,
        Charan Teja Kalla <charan.kalla@oss.qualcomm.com>,
        Vijayanand Jitta <vijayanand.jitta@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1769430381; l=6265;
 i=vikash.garodia@oss.qualcomm.com; s=20241104; h=from:subject:message-id;
 bh=EUkaNWa1MVcCxEdOynQtZlG6RF2qb9JysfZNRjrcwmA=;
 b=hkULUopyIT1ZocwCpTifqAIj8RNy7i9ZYw7+k3+dPNzOWShp4cRUCIJ1vuWPWmD/tBaRW/bhO
 vogZYGvX3WIDylxFZDGanvOPh9o6JBGQqHrETtLMF1xhjZwksaFX4s8
X-Developer-Key: i=vikash.garodia@oss.qualcomm.com; a=ed25519;
 pk=LY9Eqp4KiHWxzGNKGHbwRFEJOfRCSzG/rxQNmvZvaKE=
X-Proofpoint-GUID: F1b9b_0I-YFXdp_GmZk2GnHzUavotE-w
X-Authority-Analysis: v=2.4 cv=BteQAIX5 c=1 sm=1 tr=0 ts=69775d8a cx=c_pps
 a=Qgeoaf8Lrialg5Z894R3/Q==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=vJTt6mY4ybVYvk96TFUA:9 a=QEXdDO2ut3YA:10 a=x9snwWr2DeNwDh03kgHS:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: F1b9b_0I-YFXdp_GmZk2GnHzUavotE-w
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI2MDEwNSBTYWx0ZWRfXw270J5mBIpMC
 IY8USjtN4rENMnGb0cxq1CM8M9fmvRmtty3FHbWu4rT5vPBb6S6s1qgslZX+B1+kxeydqUC5B+q
 sBPiNBgj3a2goHn+BH4j5xYBG4yzxo2PpnnlFAHPBggD/uKrlagDsRdpkO8MOnL4FMoh4MzsBWP
 emgjTAyJ/C7aOcsvVXPoPn5kgNXj+KV2DeZyA09dn5uGM5YVGbuty9sscMkArg8iNteU1Xu/d98
 qpVtzDE69QtCHIvUuL1LE6ERHhJRiuRCNiivZ54recVgLA7c2/AAUpXL9T6e3One7cZcgwbxVHl
 uk1QzZ1KzRhl5FRPNtFSg/QmZfLSAJk3DUO0GhGEkL5yHUqBhtljCXJ7PC4xZhkwaUa98sj52kJ
 sbJMZRxivxtGIFNhH2CBDphfQnPZboiv9MJ2edfKBYUouRod5Ac3Fd70+PoAV1q03V7KeDvqr2r
 jKhayUfs+tvqGqwLXQA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-26_02,2026-01-22_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 priorityscore=1501 suspectscore=0 clxscore=1015 phishscore=0
 lowpriorityscore=0 adultscore=0 spamscore=0 bulkscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601260105
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[25];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-259482-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,arg.map_args.np:url,qualcomm.com:email,qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vikash.garodia@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt,cisco];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 9EBA488361
X-Rspamd-Action: no action

From: Charan Teja Kalla <charan.kalla@oss.qualcomm.com>

When multiple mappings are present for an input id, linux matches just
the first one. There is a usecase[1] where all the mappings are to be
maintained in parallel for an iommu-map entry of a same input id.

Whether multi-map is needed is reported by the callers through the
callback function passed, which is called for every input id match.

Since the requirement in the usecase[1] is for platform devices, not
sure if it is really clean to maintain this decision on the bus type at
the of_iommu layer or further to be from the respective
iommu_driver->impl_ops().

[1] https://lore.kernel.org/all/20250627-video_cb-v3-0-51e18c0ffbce@quicinc.com/

Signed-off-by: Charan Teja Kalla <charan.kalla@oss.qualcomm.com>
Signed-off-by: Vijayanand Jitta <vijayanand.jitta@oss.qualcomm.com>
Signed-off-by: Vikash Garodia <vikash.garodia@oss.qualcomm.com>
---
 drivers/iommu/of_iommu.c | 36 ++++++++++++++++++++++++++++--------
 drivers/of/base.c        | 38 ++++++++++++++++++++++++++++----------
 include/linux/of.h       |  6 ++++++
 3 files changed, 62 insertions(+), 18 deletions(-)

diff --git a/drivers/iommu/of_iommu.c b/drivers/iommu/of_iommu.c
index 768eaddf927b0700b2497b08ea21611b1a1b5688..067bb2298973671e1eaf01bb2ea52df3d2a52a44 100644
--- a/drivers/iommu/of_iommu.c
+++ b/drivers/iommu/of_iommu.c
@@ -16,6 +16,7 @@
 #include <linux/pci.h>
 #include <linux/slab.h>
 #include <linux/fsl/mc.h>
+#include <linux/platform_device.h>
 
 #include "iommu-priv.h"
 
@@ -41,22 +42,41 @@ static int of_iommu_xlate(struct device *dev,
 	return ret;
 }
 
+/*
+ * Callback to be called from of_map_id(), that tells if
+ * all the mappings for an input id to be maintained in
+ * parallel. Should this decission be from further layers,
+ * iommu_driver->impl_ops?
+ */
+static int of_iommu_configure_cb(struct of_map_id_arg *arg)
+{
+	struct of_phandle_args *iommu_spec = &arg->map_args;
+	struct device *dev = arg->dev;
+	int err;
+
+	err = of_iommu_xlate(dev, iommu_spec);
+	of_node_put(iommu_spec->np);
+
+	/* !iommu_spec->np may be from the bypassed translations */
+	if (!err)
+		err = (!arg->multi_map || !iommu_spec->np) ? 0 : -EAGAIN;
+
+	return err;
+}
+
 static int of_iommu_configure_dev_id(struct device_node *master_np,
 				     struct device *dev,
 				     const u32 *id)
 {
 	struct of_map_id_arg arg = {
 		.map_args = {},
+		.cb = of_iommu_configure_cb,
+		.dev = dev,
+		/* Should this be pushed to iommu_driver->impl_ops? */
+		.multi_map = dev_is_platform(dev),
 	};
-	int err;
-
-	err = of_map_iommu_id(master_np, *id, &arg);
-	if (err)
-		return err;
 
-	err = of_iommu_xlate(dev, &arg.map_args);
-	of_node_put(arg.map_args.np);
-	return err;
+	return of_map_iommu_id(master_np, *id, &arg);
 }
 
 static int of_iommu_configure_dev(struct device_node *master_np,
diff --git a/drivers/of/base.c b/drivers/of/base.c
index 606bef4f90e7d13bae4f7b0c45acd1755ad89826..a1c3c5954ec7e8eb3753c8fd782a1570f9eb9c17 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -2122,14 +2122,21 @@ static bool of_check_bad_map(const __be32 *map, int len)
 	return true;
 }
 
-static int of_map_id_fill_output(struct of_map_id_arg *arg,
-				 struct device_node *phandle_node, u32 id_or_offset,
-				 const __be32 *out_base, u32 cells,
-				 bool bypass)
+/*
+ * Fill the id_out and target for the of_map_id() caller. Also
+ * call the callback passed to the of_map_id() as part of the arg
+ * that decides if to continue further search.
+ */
+static int of_map_id_fill_arg(struct of_map_id_arg *arg,
+			      struct device_node *phandle_node, u32 id_or_offset,
+			      const __be32 *out_base, u32 cells,
+			      bool bypass, bool *multi_id_map)
 {
+	int ret;
+
 	if (bypass) {
 		arg->map_args.args[0] = id_or_offset;
-		return 0;
+		goto output;
 	}
 
 	if (arg->map_args.np)
@@ -2145,7 +2152,14 @@ static int of_map_id_fill_output(struct of_map_id_arg *arg,
 
 	arg->map_args.args_count = cells;
 
-	return 0;
+output:
+	/* pass the output for the callback, callers may further decide */
+	ret =  arg->cb ? arg->cb(arg) : 0;
+
+	if (multi_id_map && ret == -EAGAIN)
+		*multi_id_map = true;
+
+	return ret;
 }
 
 /**
@@ -2179,6 +2193,7 @@ int of_map_id(const struct device_node *np, u32 id, const char *map_name,
 	int map_bytes, map_len, offset = 0;
 	bool bad_map = false;
 	const __be32 *map = NULL;
+	bool multi_id_map = false;
 
 	if (!np || !map_name || !arg)
 		return -EINVAL;
@@ -2264,23 +2279,26 @@ int of_map_id(const struct device_node *np, u32 id, const char *map_name,
 		if (masked_id < id_base || id_off >= id_len)
 			continue;
 
-		ret = of_map_id_fill_output(arg, phandle_node, id_off, out_base, cells, false);
+		ret = of_map_id_fill_arg(arg, phandle_node, id_off, out_base,
+					 cells, false, &multi_id_map);
 		if (ret == -EAGAIN)
 			continue;
 
 		pr_debug("%pOF: %s, using mask %08x, id-base: %08x, out-base: %08x, length: %08x, id: %08x -> %08x\n",
 			np, map_name, map_mask, id_base, be32_to_cpup(out_base),
 			id_len, id, id_off + be32_to_cpup(out_base));
-		return 0;
+		return ret;
 	}
 
+	if (multi_id_map)
+		return 0;
+
 	pr_info("%pOF: no %s translation for id 0x%x on %pOF\n", np, map_name,
 		id, arg->map_args.np  ? arg->map_args.np : NULL);
 
 bypass_translation:
 	/* Bypasses translation */
-	return of_map_id_fill_output(arg, NULL, id, 0, 0, true);
-
+	return of_map_id_fill_arg(arg, NULL, id, 0, 0, true, NULL);
 err_map_len:
 	pr_err("%pOF: Error: Bad %s length: %d\n", np, map_name, map_bytes);
 	return -EINVAL;
diff --git a/include/linux/of.h b/include/linux/of.h
index 9efa6f93712c6024f05476f9fd39f3294f942ec1..abab73a76682351f5635c1127a6c899917525050 100644
--- a/include/linux/of.h
+++ b/include/linux/of.h
@@ -25,6 +25,9 @@
 typedef u32 phandle;
 typedef u32 ihandle;
 
+struct of_map_id_arg;
+typedef int (*of_map_id_cb)(struct of_map_id_arg *arg);
+
 struct property {
 	char	*name;
 	int	length;
@@ -76,6 +79,9 @@ struct of_phandle_args {
 
 struct of_map_id_arg {
 	struct of_phandle_args map_args;
+	of_map_id_cb cb;
+	struct device *dev;
+	bool multi_map;
 };
 
 struct of_phandle_iterator {

-- 
2.34.1


