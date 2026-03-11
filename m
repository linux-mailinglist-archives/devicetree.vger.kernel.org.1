Return-Path: <devicetree+bounces-273812-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UYLXKH3dsGkuoAIAu9opvQ
	(envelope-from <devicetree+bounces-273812-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 04:11:57 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 33AD125B4BD
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 04:11:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 8AFBC302F153
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 03:11:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9ED7D349B1D;
	Wed, 11 Mar 2026 03:11:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="NrxDAQbt";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="VByIpMyT"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D2012620E5
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 03:11:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773198713; cv=none; b=E2O688JqQstpCskE8ZtejoVO68LcWZHh33kefJZprE6QaM0F0GbMnMCPf21znhzLIn5Y/rZWTdQOCIMi3NxDbpH2DHSE6+2OAlD8FLf62AFgdWwKA77eRsGIsxsWI2v+Ch2cczWzyXWrwqE8bccn8GgLVIblrGgvw2WWvLrrlRY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773198713; c=relaxed/simple;
	bh=bZMFnwoMQw/li8/fQDaeq040/6f0tdHgOFSd7Hfm1K8=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=j8SLqawKRpku0VNN4dRag1CV7OOoTo8wKW3W+A6TpX7SNsy5xl5DtfUBbrTbgeRd7/LtB9EpVtguhX65Iya9VZqXkqroiPjwxUnK1sdEDBgv1t6qyWzKQcAVogVuqnsguzL57auCjeXgGRfJsNzQGVOrgvThVx5QpyO0tulaAnc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=NrxDAQbt; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=VByIpMyT; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62B0YEQJ1266049
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 03:11:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=elMWzm/OVR5
	ib5gP1JeMhaGSui5teeTgdUKGYYmAjHc=; b=NrxDAQbtILIBaqdVRbMtm/QBc+X
	iSWhmZ1PNOcrvLsPNMZtSuDOTuzbPF/bINonGac4as6kxUvqCyz3rbPPZ1zrHgjp
	6Mf8vakD6z+0TUEUpprHUHVK8Wv8qgH5onzxyTESp9lzNojS10JOHDYVPRgUGjEW
	k6xELJiIqitluNK22nvJCRVPov0d4wSOvCgENcnYP4vr9WSJUTZsd9zSguJtgxgH
	EaPXmXcCHcAm2Q+OVzY6KsCDTicEQuEs3A0/k9ROaOgnKtbPDhOZEwv3FNZBbCP5
	mkRRYCSLUlpgchadATt9K6mM2DodFXO1xaD60KjOhlcwLLXFATji69s3ddA==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ctpkfj2nx-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 03:11:51 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2ae669a8ff1so412521935ad.3
        for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 20:11:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773198711; x=1773803511; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=elMWzm/OVR5ib5gP1JeMhaGSui5teeTgdUKGYYmAjHc=;
        b=VByIpMyTy19dC59TnzmPnIaMA7oBH2C5hmUHn2OWctsRkL01ovEieUl1exCUTNZWRR
         pEUfl2/q9p4/gkK5EYMW9dhYvADMU5H2Wle5wtlVn/xhQSLYWqPIaigvqBSaJGxGRr7B
         +k5QAQd0AIvQnYK63J0w2rp9cQhM37/DqeuYRBCpZFBzufmsnHu7meJ9Ive23+Dco2G6
         kd9b6pOcKqg6gA6OYlUnh4Og6elOUSwRB044+4HRg2wxkFdbivSzDEjstB8FZhAcYG2P
         kYifzR7nPjFPR7v7ywtmLxQe/OZnzX1MuoXqY24vesI7Y3rQKvvX9clPq0J8ELySIBsa
         iKuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773198711; x=1773803511;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=elMWzm/OVR5ib5gP1JeMhaGSui5teeTgdUKGYYmAjHc=;
        b=KmnCfrD3ujpkYT1HUdMwwa3mlP5VA4u7CFcJK0oRh6atlMamna9TIVZJkEmmw8YJ6C
         lRl+i9AMdq3R2v68KxwBY/s4OuzlWs8W/wwnhuSYsoPBzZ3jtgHSwEXcZL6R2RfJPGYz
         D/7Mj+j/XpUMt+05a34a8HaCzTVWi2tViNF0FvNMtXrjek/gpU4zt41foNvHyQ88yc5y
         mcE/Cpljv8s1SpsVmIbaoUv+MLZ8fRu10lUggx8gKqxv5Dl4OGLisVPYUMrI9G6Bv5qD
         V9Ew7hEEs/1b+fO8QbcZ0Jp70g7FbAw0sqBaLxo274RMPC0RPXXgOe5OYL8b7q3lWSe4
         QzzA==
X-Forwarded-Encrypted: i=1; AJvYcCUue5zL5XgLEMjDv4LAuT0NvIjRSCjmOqchDO156njA2Ianfq7pl+5xLK6Tvw0rM7MIbTjJZQjlZUXW@vger.kernel.org
X-Gm-Message-State: AOJu0Yxo2Uewy4aEavvFyw0hQ28bKkW7w91apNK4MWOsEEUuzu3rcsaT
	9tKcEvsWvKMHkBtsElamZrO8GP6Ymi0lZSyUEZSGmwf7eoFx2r0ZZ/xR/lj1ziWOwxXHTikLcww
	KfLlfIEtz5pVFKP4AEu9UMCbyEsqiWyrn+fscW8+lGw01vj1ZCu8z5GgkeYoVd8kL
X-Gm-Gg: ATEYQzzoD42n5Dw4OGCpq140UjMrGuYtHFVRYMh+iMHoxRpCmbnd55yZ/fvhCtJ3UaG
	VY1dfnuEtCGHmPgsqTP5oE0sJ2KFoiCHStpYvJOwoHRSpF87+U7HxNDjNEBEewifNaS0Fiv+pFc
	g/qCJCGr1e3lPrl61f/PENRYXuTamwQ/hrZj5N1dT3es5IqkQQbnHn2i4fxgHstixXqTUhqwx3k
	7CtUVSkrfZUSOmX+PlaTlbd5+8+zHRMqV6EasITGmKf9WSOFytIq1uQseERG2h47Cv8OHO3Rv5q
	oZgLsRQawcJcCTV0W4QKFvXqFtDTjfOJL07dad7lO3EsxqK7d9ubaOHT7eDzWyWtYGNiBhGcNiN
	/qY6EEIgT+3LUr1f0rRqml8MKhfbamq4FPA3jWC26vsBIzZNirzf0oxjTAg==
X-Received: by 2002:a17:902:d588:b0:2ad:ca3a:ecb0 with SMTP id d9443c01a7336-2aeae7e0a72mr12599195ad.25.1773198711040;
        Tue, 10 Mar 2026 20:11:51 -0700 (PDT)
X-Received: by 2002:a17:902:d588:b0:2ad:ca3a:ecb0 with SMTP id d9443c01a7336-2aeae7e0a72mr12598895ad.25.1773198710528;
        Tue, 10 Mar 2026 20:11:50 -0700 (PDT)
Received: from hangtian-z2-2004.ap.qualcomm.com ([114.94.8.21])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2aeae246ff0sm8106635ad.27.2026.03.10.20.11.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Mar 2026 20:11:50 -0700 (PDT)
From: Hangtian Zhu <hangtian.zhu@oss.qualcomm.com>
To: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH v2] arm64: dts: qcom: qcs6490-rb3gen2-industrial-mezzanine: disable WCN6750 and WPSS
Date: Wed, 11 Mar 2026 11:11:45 +0800
Message-Id: <20260311031145.2285056-1-hangtian.zhu@oss.qualcomm.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20260311023219.2284643-1-hangtian.zhu@oss.qualcomm.com>
References: <20260311023219.2284643-1-hangtian.zhu@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: FAjSssJtgiFcSo-iVfcHlLFp3z0zOoOq
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzExMDAyNCBTYWx0ZWRfX1geGhUZr73Cf
 luJYIZPnA48HG7XNmkaUbFnmEB2Yp6U/rtJGvVi7fHRqC2I5XvdRuV/SYmvAJd+NXrNF+ql4Noi
 aKuSjXl6RG+vR/lnOYJrNaX8BkFOoo0BD+CjmVh/mJ/1rMzEa6sklIvw41YH6h0WF+uvINp2rC7
 46P6cWYM/39a2CF6KeEA/LDFGKZhAXffGXv9qQsvQ/Cp2MaxGywRMwYVycNpJdDexa8FBjsDmw8
 tqK6zPtVdBgWibJOf2+wLr6SO429XGmI4dxH91Ca7f92LT4AgPZ7cd2AU46R2zR1yZfcUdfs6Nv
 8bG9c0GNW31qZYplHPTWCisJtgg9HyLB5LLuepfo3mjOWAZY72+Jor5PYs7is+5A/X+BkR46aW8
 bsBvwR0fqwFlgd1DF4P297ulZ5q8bOhSOj6/EoLH+gLaDqu/23WDzik3NZKU/G1OHHxy4qAhZET
 3QGwv4DBOrjC8q/A0SQ==
X-Proofpoint-ORIG-GUID: FAjSssJtgiFcSo-iVfcHlLFp3z0zOoOq
X-Authority-Analysis: v=2.4 cv=Gq5PO01C c=1 sm=1 tr=0 ts=69b0dd77 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=Uz3yg00KUFJ2y2WijEJ4bw==:17
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22 a=VwQbUJbxAAAA:8
 a=EUspDBNiAAAA:8 a=H9-LGvTQc6I73mOXZpQA:9 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-10_05,2026-03-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 malwarescore=0 bulkscore=0 lowpriorityscore=0 spamscore=0
 adultscore=0 clxscore=1015 priorityscore=1501 impostorscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603110024
X-Rspamd-Queue-Id: 33AD125B4BD
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo];
	FROM_NEQ_ENVFROM(0.00)[hangtian.zhu@oss.qualcomm.com,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	TAGGED_FROM(0.00)[bounces-273812-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	TO_DN_NONE(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

From: Hangtian Zhu <hangtian@oss.qualcomm.com>

Disable WCN6750 and WPSS on industrial mezzanine. On RB3 Gen2 industrial
mezzanine platform, pcie0 lines are moved from WCN6750 to QPS615 pcie
bridge. Hence disable WPSS and WCN6750 nodes for industrial mezzanine
platform.

Depends-on: https://lore.kernel.org/all/20260305-industrial-mezzanine-pcie-v4-2-1f2c9d1344d7@oss.qualcomm.com/

Signed-off-by: Hangtian Zhu <hangtian@oss.qualcomm.com>
---
 .../dts/qcom/qcs6490-rb3gen2-industrial-mezzanine.dtso    | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2-industrial-mezzanine.dtso b/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2-industrial-mezzanine.dtso
index 2a2b7c2f9210..6594c7e1ea93 100644
--- a/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2-industrial-mezzanine.dtso
+++ b/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2-industrial-mezzanine.dtso
@@ -32,6 +32,10 @@ vreg_1p8: regulator-vreg-1p8 {
 	};
 };
 
+&remoteproc_wpss {
+       status = "disabled";
+};
+
 &spi11 {
 	#address-cells = <1>;
 	#size-cells = <0>;
@@ -280,3 +284,7 @@ pcie1_tc9563_resx_n: pcie1-tc9563-resx-state {
 	};
 
 };
+
+&wifi {
+       status = "disabled";
+};
-- 
2.25.1


