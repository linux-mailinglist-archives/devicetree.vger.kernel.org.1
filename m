Return-Path: <devicetree+bounces-259481-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qAupAq1ed2l8egEAu9opvQ
	(envelope-from <devicetree+bounces-259481-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 13:31:41 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DF9D8845B
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 13:31:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D080530B4505
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 12:26:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 17C49336ED8;
	Mon, 26 Jan 2026 12:26:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="BXv9ysV9";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="fY4kkcHp"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A4CF335067
	for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 12:26:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769430404; cv=none; b=NrAfy121W96LYxtXP7Qy/+Pws4zt1Fuev8anC/wgco6aPDenhoUeMG3sx0xJvKsFKHIyqskk1KZCccJHIvzWqexBNQaMhpUunEXeGNQUWwt7eN1aEE50LQGD9SwPPbJZx1aEl8D6vwiQWMnKJEZyPp5KxKODloCDMe4NPC1nqoM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769430404; c=relaxed/simple;
	bh=LisLM8o2IrxdYcIIO9+hL3LVsKTwWPx/Vp9uhneXL6E=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Ngr5/NIi1o7L7TRii337rJwqFbt72PxF/PJ96jNyWo9QaVu6J1Lvzo5tU4va7xy+qVrDw62ecF2/qotVSvB38xPUglxx4XQUFUd6SdxS6sfBriYIzDjo8n9riikCplOS/lseO5aX7vthOc72zSelC0Pjw0/05bmHbxgkvIMBvgA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=BXv9ysV9; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=fY4kkcHp; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60Q8dOC02135451
	for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 12:26:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	pUt1hiMnVbf8G3WXvMrybBKWWZSAdzLDBYLcaYIhNMA=; b=BXv9ysV99eCh4hQ9
	YAdh3KJEhaq1e1wKPUKNcqD3YBVoFLgJnXbPpL1yHo0DdHzBHW1SrC+MHOR+H71H
	t9tIpgSf/yi8KSfVpVMviAGNfcGt1DTtZQYAeQUG+d0/KCMEzbXCUhlCmkjiA+cI
	y5hd5cD8MmHL1+vyhLZJIHs5MY2sOAIilYGOGqBJLW0fApcw/kGkgmMJJK1fvLMh
	BYWu7RQRwe/jjjboDdzShpPryYIO/CHoBkzUYk2B0dRCAedMY/xP6egQGlBUQ+O9
	Gdt9JQbPMsK0sbAXZQMUvQRpExTfxVu9zL7fdUaMqJDLA0gKrubjsbHlIO2LvQ5+
	5pKb3Q==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bvq8dmgxk-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 12:26:41 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-c629a3276e9so308501a12.2
        for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 04:26:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769430401; x=1770035201; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=pUt1hiMnVbf8G3WXvMrybBKWWZSAdzLDBYLcaYIhNMA=;
        b=fY4kkcHpeC6OOdd7VKZ4AMWgv/4hmtejI2JiG72bo94tnA3ngVi55dOzZ8Il5UG4vV
         kRfKZR/TlKoZFJjFDWWdul26/NClP52+u0dyePt7uqzVGGs4g7O/fDAN2oIHkFLQrb3m
         eWITxBkzbu2b7IWwqGQqxAtCs6LR5ZKrS8SaqlWutMbN6A/esOGw3osDSO56YWbVWGvh
         Y7PU5nbI0MxgJM7ZGI5LksKi7gegnXPiFEG5PT6jnIWa+cn94vVGAL5wmokhouQzgh1v
         qGqk1Mt090TzzYPDjUZonGx0O2H0+6kE56c+qRnw0pmE7hAM2fG5HoYMvBdWcB1XAX5R
         UktQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769430401; x=1770035201;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=pUt1hiMnVbf8G3WXvMrybBKWWZSAdzLDBYLcaYIhNMA=;
        b=hLlE6qpe0ktC+YkDZQatXU5Akhqc0O7Ys5Le3NeGAg3yaVpxpae4g8nSNXmVQ/q0Zw
         4YjvctXfACZ4FuNK9idTq3NxEwPgKKKnhFSTa2xGM5g9jFSwtuS46fGf7z9QgFZ4a76q
         XsNqKpWAGel5/iiCyY3TRbq2uDrOTvXGparXSb/li6SMr2r+SrjERxSunm1wjyJdtNtf
         McDQlRMXBKSnjeGJQ1bSwuEv1sNzroByZyYDoZ/vIDesD2QJtkgDCnmpMioRQ3QjU9cH
         F2nvhGwq9JZ4J+DMhRfpoozuiWwQPYhYIrk3tNOeWG4VbmCzSgax4jALWzCla3H7x0WO
         Vx9A==
X-Forwarded-Encrypted: i=1; AJvYcCWngutH3dQlEwssPj2VBWxUpA2wWUFbp8x8TwkZDYUeqDfaahdrn6KK4BohI/T1WKxOvwUWOlP+Tyc9@vger.kernel.org
X-Gm-Message-State: AOJu0Yz/cEjVeBuXzjF9ghSVPv1zZVrTJXlwAwEXIlxM4B4HFWqJpnmo
	6KMTfRpG73oyxyBdU2z4V2ptY4lXTZQROOW6uGypEdrozk5xPJlFy2q8w1Uqhf420Y3Ll3TPy8q
	+KBxLlZdFI6oB8lDVWIUWksUkSpZ+ozbrTz7rC6n9LXnvPgRT17M12c3Kc8seda7f
X-Gm-Gg: AZuq6aLA20aQKeglPec/Y/sTr+wigLayxssbrD6+14HjCVPnYnzW1TPzXSqgiqIAjgT
	56GzvnVGnZKQsZxhpRDO7RsQMWTm5UXLDWd8VZ+Vw/NyHV3UWUXKdXx75EIGXU+wMoylhEUpJva
	THeuXr9HJ2jcHAupUzzwdN+LHEx9fRFF8roF5870er1M72Sb5YsEE1BbgacjbAl1bfKwPdAziFb
	WmNLPoBO9re4+MPJbvSVAtlKDEN8SJB9QhPXZu/ky/sYa19M9vTj656VmR+FCVonI/ltUF38YNm
	3HZFPsEEvP/XiWWFpUouB6jjqMweqHOqJWysHPIpzzKppYYCN9fag1LEwMBySfoOr9nAPGuPv37
	gaJmyRMVx0XfiiJr8Da1ZFl/YltnBM4d7o8RtpNx9KDt4
X-Received: by 2002:a05:6300:2209:b0:34d:d030:6739 with SMTP id adf61e73a8af0-38e9f15357amr4026336637.31.1769430400650;
        Mon, 26 Jan 2026 04:26:40 -0800 (PST)
X-Received: by 2002:a05:6300:2209:b0:34d:d030:6739 with SMTP id adf61e73a8af0-38e9f15357amr4026310637.31.1769430400178;
        Mon, 26 Jan 2026 04:26:40 -0800 (PST)
Received: from hu-vgarodia-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c6366644379sm6076022a12.33.2026.01.26.04.26.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Jan 2026 04:26:39 -0800 (PST)
From: Vikash Garodia <vikash.garodia@oss.qualcomm.com>
Date: Mon, 26 Jan 2026 17:55:45 +0530
Subject: [PATCH 2/7] of: factor out of_map_id() code
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260126-kaanapali-iris-v1-2-e2646246bfc1@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1769430381; l=3666;
 i=vikash.garodia@oss.qualcomm.com; s=20241104; h=from:subject:message-id;
 bh=ZpTj9qWsLnyN4rxo95Da1e9fz3tnEJ1IHU8Y7c6eY7s=;
 b=Xs61KGtP1xf6/QohXdv+2+qgdPqJTXd0nbCPTYqLgi/wUjzCUtxlAhw+hcGQVNKmohUSqdQ0l
 8b7uE2KjS/xA/BKlfbI7ATmoLurwn1QlBp3+hVQ32r+OYOunyv8lJrx
X-Developer-Key: i=vikash.garodia@oss.qualcomm.com; a=ed25519;
 pk=LY9Eqp4KiHWxzGNKGHbwRFEJOfRCSzG/rxQNmvZvaKE=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI2MDEwNSBTYWx0ZWRfX30uGhr8G06A+
 y7mvy7gMC6y/R6iF/7qozsz0Wp5pvlL54Y8uLC/eRq0uEGejeDStHlqVslEB7hORWgQjy0iFTd5
 yM9zVVf9jsLV7zs8UP9n3JeDdPkTCMrY1FbyIbBUZZy6B/+kBXykqfr4fcMWalogkWoAf+Y7NAT
 o7jprL9sxpzvmwdxWx5m6Ico0InIjoW+Jp8SvyREYAH6y/2nAT/XR32EBX6UYWI9mImQmH1blQV
 MCQNBgbT16e6GTyCvWVmbpAEBtrO9IYpBoh39DxcSteWsbkwEzIoN5e6sVz+HfVCOILEK/I5kgQ
 kz98zKIvGuQRZEb8KNMd1pWPfyOj/IzYz+mNtY9w5C3OdR68mWXbGIsvhxq4NcbF+qpetmjXboU
 /qOZabFwsFyWcSrkgrcvUCvJ0mscOrqsIBpqFVeStGgDjv/6DIaHWwc1wcpxfSq/PylRNRvdevV
 GhBXOT7/spTGzIMzckQ==
X-Authority-Analysis: v=2.4 cv=RIq+3oi+ c=1 sm=1 tr=0 ts=69775d81 cx=c_pps
 a=rz3CxIlbcmazkYymdCej/Q==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=WfhCwlpBSbr3wMVQJZIA:9
 a=QEXdDO2ut3YA:10 a=bFCP_H2QrGi7Okbo017w:22
X-Proofpoint-ORIG-GUID: EsQ5wscBwUtCqzGw-9OmFgS9sywvrQOA
X-Proofpoint-GUID: EsQ5wscBwUtCqzGw-9OmFgS9sywvrQOA
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-26_02,2026-01-22_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 malwarescore=0 adultscore=0 clxscore=1015 phishscore=0
 impostorscore=0 lowpriorityscore=0 spamscore=0 suspectscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601260105
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[25];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-259481-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vikash.garodia@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt,cisco];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 5DF9D8845B
X-Rspamd-Action: no action

From: Charan Teja Kalla <charan.kalla@oss.qualcomm.com>

Linux interprets multiple mappings for the same input ID as a set of
equivalent choices to pick one. There exists usecases where these set
must be maintained in parallel, ex: on ARM, a dynamically created child
device(s) is referencing multiple input id's in parent iommu-map.

Factor out the code where multiple mappings needs to be maintained in
parallel can be achieved through callback from this factored out code.

Signed-off-by: Charan Teja Kalla <charan.kalla@oss.qualcomm.com>
Signed-off-by: Vijayanand Jitta <vijayanand.jitta@oss.qualcomm.com>
Signed-off-by: Vikash Garodia <vikash.garodia@oss.qualcomm.com>
---
 drivers/of/base.c | 47 ++++++++++++++++++++++++++++++++---------------
 1 file changed, 32 insertions(+), 15 deletions(-)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index 0825f3dc93f2472e9947af09acdde72031ab85bc..606bef4f90e7d13bae4f7b0c45acd1755ad89826 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -2122,6 +2122,32 @@ static bool of_check_bad_map(const __be32 *map, int len)
 	return true;
 }
 
+static int of_map_id_fill_output(struct of_map_id_arg *arg,
+				 struct device_node *phandle_node, u32 id_or_offset,
+				 const __be32 *out_base, u32 cells,
+				 bool bypass)
+{
+	if (bypass) {
+		arg->map_args.args[0] = id_or_offset;
+		return 0;
+	}
+
+	if (arg->map_args.np)
+		of_node_put(phandle_node);
+	else
+		arg->map_args.np = phandle_node;
+
+	if (arg->map_args.np != phandle_node)
+		return -EAGAIN;
+
+	for (int i = 0; i < cells; i++)
+		arg->map_args.args[i] = (id_or_offset + be32_to_cpu(out_base[i]));
+
+	arg->map_args.args_count = cells;
+
+	return 0;
+}
+
 /**
  * of_map_id - Translate an ID through a downstream mapping.
  * @np: root complex device node.
@@ -2162,8 +2188,7 @@ int of_map_id(const struct device_node *np, u32 id, const char *map_name,
 		if (arg->map_args.np)
 			return -ENODEV;
 		/* Otherwise, no map implies no translation */
-		arg->map_args.args[0] = id;
-		return 0;
+		goto bypass_translation;
 	}
 
 	if (map_bytes % sizeof(*map))
@@ -2185,6 +2210,7 @@ int of_map_id(const struct device_node *np, u32 id, const char *map_name,
 		struct device_node *phandle_node;
 		u32 id_base, phandle, id_len, id_off, cells = 0;
 		const __be32 *out_base;
+		int ret;
 
 		if (map_len - offset < 2)
 			goto err_map_len;
@@ -2238,19 +2264,10 @@ int of_map_id(const struct device_node *np, u32 id, const char *map_name,
 		if (masked_id < id_base || id_off >= id_len)
 			continue;
 
-		if (arg->map_args.np)
-			of_node_put(phandle_node);
-		else
-			arg->map_args.np = phandle_node;
-
-		if (arg->map_args.np != phandle_node)
+		ret = of_map_id_fill_output(arg, phandle_node, id_off, out_base, cells, false);
+		if (ret == -EAGAIN)
 			continue;
 
-		for (int i = 0; i < cells; i++)
-			arg->map_args.args[i] = (id_off + be32_to_cpu(out_base[i]));
-
-		arg->map_args.args_count = cells;
-
 		pr_debug("%pOF: %s, using mask %08x, id-base: %08x, out-base: %08x, length: %08x, id: %08x -> %08x\n",
 			np, map_name, map_mask, id_base, be32_to_cpup(out_base),
 			id_len, id, id_off + be32_to_cpup(out_base));
@@ -2260,9 +2277,9 @@ int of_map_id(const struct device_node *np, u32 id, const char *map_name,
 	pr_info("%pOF: no %s translation for id 0x%x on %pOF\n", np, map_name,
 		id, arg->map_args.np  ? arg->map_args.np : NULL);
 
+bypass_translation:
 	/* Bypasses translation */
-	arg->map_args.args[0] = id;
-	return 0;
+	return of_map_id_fill_output(arg, NULL, id, 0, 0, true);
 
 err_map_len:
 	pr_err("%pOF: Error: Bad %s length: %d\n", np, map_name, map_bytes);

-- 
2.34.1


