Return-Path: <devicetree+bounces-257842-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SAptCeWjcGlyYgAAu9opvQ
	(envelope-from <devicetree+bounces-257842-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 11:01:09 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id DEAD054D36
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 11:01:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 3A1FB6035F7
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 09:52:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 01C17480971;
	Wed, 21 Jan 2026 09:51:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="DTo6k5pF";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="SRIAMuOc"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3815848097A
	for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 09:51:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768989073; cv=none; b=Hh+cVMu/55wQj53dqqWwNURK/CB/j6rKVpybQ9IPV4I6t3GwgJNkzl99Gv5XXxDibnNVOWFstCsbmBfkuJaqdlo/0jRH/WN6+7mBB27wGXYKztf+hBrA/aom3PLtaajQO1ZdCx70C8qOqwht+vBtDTd4z7kUtT7YbuBVjnIPv/o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768989073; c=relaxed/simple;
	bh=iIFQSPf41OaAvM8iise5edInA3f/VqBobQtOAR8O3tw=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=KMI0FmXRSFycx00vrpQmwhbe6USELMknEozu1cYUF+MCerLYxhsRibL2Ghzl9BkgLZM4VYzO03OF4PGCejUaaJkFwkS26p58BETUKILvOU59mF6nmmQ2jEJ3pieAyExXc3QqU42DkwtsjB1iRf9Sj2w2mZS7zVVFROuZcakeqCQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=DTo6k5pF; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=SRIAMuOc; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60L9Zhps3991326
	for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 09:51:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=g02eooS4X37
	Eg3/73OINNWI5q5Qo0hRIZrYjs1jrqxc=; b=DTo6k5pFfIkP/b1kAGFTkw+T4Cl
	PwQG8YYPuETSEi1ixptZh2+t7jEOu/b3ayvXmuvJP5bFHSQ34nuoBfRYELjJR4H3
	f04Pg7owgJgL3naHdYeVyFQZ9iQXCy36/ZSov7xDmpPNuufARg8/5IdKLeW4TZto
	1UGSa02lRFKm2zAMygETnOIz2/Wwb6qCbbzpL+9aaugCZ0DYrBb01HRVlzDPyKhj
	JIbzVbulxIhZ5l4HchkD+NqZWuCISSIY3HhAKf8jaG/7+xE4Bp2beTpa4qPZk++9
	AFOtfyu5WV0qrKihZ/lXSv3h0l+o21ZLvbHeZjAt0O5z/xDdK8WC/E8ECEw==
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com [209.85.215.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4btpm41m2d-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 09:51:11 +0000 (GMT)
Received: by mail-pg1-f200.google.com with SMTP id 41be03b00d2f7-c52779e9e65so3442233a12.0
        for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 01:51:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768989071; x=1769593871; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=g02eooS4X37Eg3/73OINNWI5q5Qo0hRIZrYjs1jrqxc=;
        b=SRIAMuOc+5Kqyd7f6zI6je0t4JABTOaQk/442/Y6OPy8pHIC5tWqJZKXj+ymsmflZq
         WfF7Zl1B5WNe9d+Qyzf0p2tfUH/d8v2reObQyw1kCMxc971mgI6yRGlONhgj1ZJroWXS
         ZxFIEykH8xxdxgBXJBMwSAX+Oz8oEnJzUBykMWDyOuPBmSRSC1QFzvHfNFn/SmkL/q2B
         wrpgYvDhV3AdRODquyQQWrkr9BDqdqW3sSYLnZxNN1OxBOuBlaIh2e9hSv8oSsaii6EJ
         yHpaKxFTgoGLpbaWAbpw5C7UPEqpBdPh5OvCv4Q/JZWV83R8OSr+owngLqp6rIHtqH/X
         gl4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768989071; x=1769593871;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=g02eooS4X37Eg3/73OINNWI5q5Qo0hRIZrYjs1jrqxc=;
        b=DiykKOmooazBwDv/bV3whg2TYDFtxbm8ARnPvX5lIB9rVeobOmDN3kofdNGMvqCKNW
         5j8qi4T6St1Z5ayu5/sFYH7DonaJin+Giv9S7VeJgT+O9HbW7peecUBpOlBD+XGpu+1p
         GjPz8ggtf+3bngfIymrpKcl8OnXSojIkb+m0/ziY3jsg+xd6LXcSDeKBbyyQhMVFT5US
         pDbPgCS0VPVZrwPpuX8VLoThbsHPoZjG9BcdWwioSt8OfRelAatBHKhCd2LBrNcSQY8G
         meToLMGdJ+f5KdxIY7satF6nzLXic6WV87xKbb2IsJfNZ53d5bgIdwDIPOrBhSeJySQT
         EFUw==
X-Forwarded-Encrypted: i=1; AJvYcCUEhI89WhOJcB+mBoq4JREdNOoy6gNC/bXx68uWdhbqNMo07oUyhZbSFUjRx93Dwj3NHWw/7eqljb9e@vger.kernel.org
X-Gm-Message-State: AOJu0Yz6eXIboIMwjQott/P3Smd3Y10inPBSYopM5jJgvGeXPUCiOImn
	BqfcHHRre8RDdMI/EZA+v1TBljjfzP7vbSNRwl0NSEopM1+pJdHbLkW1OkM5VLFCy56j0wossOc
	8BMCshyS1Yiu+Cbz8pjhX35Mcv4zwvUGmqaG+2J9RcHsglionvoPbeRnAYAfsKjv+
X-Gm-Gg: AZuq6aKtNtuN8TremNUk+A8MZG5oxPCbvZyU9IoND88qko3McSax9kQSMowucKZuaq4
	eFVci0Aef1QG2gt1ezV+iDGSE//WU63mvugKcCaErHNgoTWklwznZ0reqdXYJyOkAEgj5aM/cmb
	ZI8mzo1gKobMNu8NtBVkptlXiTrl3xlLvnT4+trBP1CHyYCdIqRtBGvVDGt6tFq8uFh37BbHqO7
	bQX8tkyjLMSDe7sES5cTVH7/kx4cozrqCw2VkhtUuiaJI7YNBgYUkbgQvEPDrdMrnlYRA2218Dm
	lFNrnpxYqtE0ThaHemjYbwIaAbJOZ8o1ltNSwC+DyiijtVSrNWN09IRte0M73mw3o7DT3gNjCnc
	EaSR5L9yjk9ydpdePdnkB9FQ0svL2WKKx1NwH45c5Ed1pSHtPpZnxaitZNWOp13BNHQPV
X-Received: by 2002:a05:6a20:7485:b0:366:14af:9bbd with SMTP id adf61e73a8af0-38dfe7c965amr15559373637.71.1768989070508;
        Wed, 21 Jan 2026 01:51:10 -0800 (PST)
X-Received: by 2002:a05:6a20:7485:b0:366:14af:9bbd with SMTP id adf61e73a8af0-38dfe7c965amr15559346637.71.1768989070019;
        Wed, 21 Jan 2026 01:51:10 -0800 (PST)
Received: from Z2-SFF-G9-MQ.ap.qualcomm.com (i-global052.qualcomm.com. [199.106.103.52])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-352678af047sm16997295a91.10.2026.01.21.01.51.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Jan 2026 01:51:09 -0800 (PST)
From: Miaoqing Pan <miaoqing.pan@oss.qualcomm.com>
To: jjohnson@kernel.org, johannes@sipsolutions.net, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org
Cc: ath11k@lists.infradead.org, linux-wireless@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        jonas.gorski@gmail.com, krzk@kernel.org,
        Miaoqing Pan <miaoqing.pan@oss.qualcomm.com>
Subject: [PATCH v4 ath-current 2/2] dt-bindings: net: wireless: ath11k-pci: deprecate 'firmware-name' property
Date: Wed, 21 Jan 2026 17:50:55 +0800
Message-Id: <20260121095055.3683957-3-miaoqing.pan@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260121095055.3683957-1-miaoqing.pan@oss.qualcomm.com>
References: <20260121095055.3683957-1-miaoqing.pan@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=Jv38bc4C c=1 sm=1 tr=0 ts=6970a18f cx=c_pps
 a=oF/VQ+ItUULfLr/lQ2/icg==:117 a=b9+bayejhc3NMeqCNyeLQQ==:17
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=gumsBO624h-QSWVlTkIA:9
 a=3WC7DwWrALyhR5TkjVHa:22
X-Proofpoint-GUID: GXfrJDQUg_4NKS9D7B5JyY_9jZF0N1Ks
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTIxMDA4MiBTYWx0ZWRfX/5NWENBtiEpI
 wNNasj8lLC3paKIWwmtzPgXkZyMRavSNpwoTNuY22qH9qdE2zsSLQPDvEyX8lq0y+RvMZVuFO68
 PpxVLWJaBWFxEDaXNwXpkOiT4eiz45+m2tXRX8VAaI9JBGbtsPDN8Yh9tBjn524rVVAMN6+moeC
 lX9lmKhYIbOXcpkJXc0AWcJH36JXED1i+ZPLjx3Ks/DwpTd7NDSJffASVa5BdbISyvF+JBw8DI6
 svcO8SrRmJZDOBYgCUhOjCOltN//OSUmS+FHx+qNY/nqx8cKVpbIyk8poNNoGjEuwOMtBVzl4d0
 yDcho5QqKm60Qq/x/cBZlY8MAS0teytwcAoKlFpxG0LCrim0Dfjvykmx/zL1n9bdwQ7VNqD9ZJJ
 vTD7eqjmCG0GCS6TYMGotmOh0/8QzNd28BBTyIdYdJBkx64qW9/Al0CDOyWWI2WpBPugcrUB0qd
 KE4kAR+sXVfEnN3aKbQ==
X-Proofpoint-ORIG-GUID: GXfrJDQUg_4NKS9D7B5JyY_9jZF0N1Ks
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-21_01,2026-01-20_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 bulkscore=0 clxscore=1015 spamscore=0 lowpriorityscore=0
 suspectscore=0 malwarescore=0 adultscore=0 priorityscore=1501 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601210082
X-Spamd-Result: default: False [1.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-257842-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ams.mirrors.kernel.org:rdns,ams.mirrors.kernel.org:helo,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[lists.infradead.org,vger.kernel.org,gmail.com,kernel.org,oss.qualcomm.com];
	RCPT_COUNT_TWELVE(0.00)[12];
	FROM_NEQ_ENVFROM(0.00)[miaoqing.pan@oss.qualcomm.com,devicetree@vger.kernel.org];
	DMARC_POLICY_ALLOW(0.00)[qualcomm.com,reject];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	PRECEDENCE_BULK(0.00)[];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:7979, ipnet:2a01:60a::/32, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: DEAD054D36
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The firmware-name property was originally introduced to allow end-users
and integrators to select use-case-specific firmware for the WCN6855.
However, specifying firmware for an M.2 WLAN module in the Device Tree
is not appropriate. Instead, this functionality will be handled within
the ath11k driver. Therefore, the firmware-name property is now
deprecated.

Acked-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Miaoqing Pan <miaoqing.pan@oss.qualcomm.com>
---
 .../devicetree/bindings/net/wireless/qcom,ath11k-pci.yaml        | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/net/wireless/qcom,ath11k-pci.yaml b/Documentation/devicetree/bindings/net/wireless/qcom,ath11k-pci.yaml
index e34d42a30192..0162e365798b 100644
--- a/Documentation/devicetree/bindings/net/wireless/qcom,ath11k-pci.yaml
+++ b/Documentation/devicetree/bindings/net/wireless/qcom,ath11k-pci.yaml
@@ -37,6 +37,7 @@ properties:
 
   firmware-name:
     maxItems: 1
+    deprecated: true
     description:
       If present, a board or platform specific string used to lookup
       usecase-specific firmware files for the device.
-- 
2.34.1


