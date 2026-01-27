Return-Path: <devicetree+bounces-260102-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2ArBJDUSeWkcvAEAu9opvQ
	(envelope-from <devicetree+bounces-260102-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 20:29:57 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id B119299DB3
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 20:29:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id BBC9D300E5CE
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 19:27:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 18E6736EAAA;
	Tue, 27 Jan 2026 19:27:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="JAvzHUjb";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="RU231e3U"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6388D36EAA4
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 19:27:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769542044; cv=none; b=syEKO2AVl72A8K7m/Ry12BcDc+PJbL6HiYg/OaIwaM4viki8ESk0ue4U9XIihEn+IG81USD2LTDzfNotU/pQNMR30Zy1paYkrLUl89a8hQk9+u+NdFGt2hCzle+uDAWpn/Ozy4FkC0JwUnBJ0WqPlZGOJ+qVT6JneQ42n+OqkvU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769542044; c=relaxed/simple;
	bh=iWk8Nl3a7RvnDVzv5cIlkAQy4z9nIA9ZVmLSvJ9vb+E=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=GMV7fCiL6GcDUfo2u4a49UnofbvzF40vCVD05eM/QIi83gSvSJsdiAefWb7wGXRGbNqI6ZEXyEuy3E7K0pCu5L7l/KpWcsnMnoxbeI5Ri+Deg9VwSGHsBcW7yTuHmBhN/KDWxvBODtgsCHFkMmXJ0OHUIfFnr4YSms0Xb7+xZws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=JAvzHUjb; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=RU231e3U; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60RH4rN71195374
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 19:27:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	AchfjWsMxy5/5NRTV/dSnkmbMLB0F/2QQ0pQeOqHjoI=; b=JAvzHUjbZc3BSW6a
	gn2gFevnXm9PZ5h6ibQFwq2tw7X4xnCXMPKDsutYecatnXpItq0ZRmkZK+7GMokP
	58SwnQYf/e7EA6wEgdCaw5jpd5m2PVtdnLVMkfrNNB82erI1dgfeUx1AolgzQTwB
	ne9iLKRvD77Z043wQtSFT+XMu5roSulFheMcQhk27HqYUW4Y5lCrTWz1hipyi56M
	eck7P8MOy1f+3M5toRpciCDu777Kyk8WdaahpSvOqbbTypglL//bP3LwK4WlBw1d
	SVchXQp+/Wcq2+URDPc0fpRJqpQTSpQbR6vvcNOdzR4dqbon2ptS6OAMpZ6DW6V6
	2Ga7qg==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4by1etgfbn-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 19:27:21 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2a7a98ba326so1823995ad.1
        for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 11:27:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769542040; x=1770146840; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=AchfjWsMxy5/5NRTV/dSnkmbMLB0F/2QQ0pQeOqHjoI=;
        b=RU231e3UGm0QMLep+frTmLjh+e4keckzTW90RJopRAmVHcEWRr19sTvQtKUv59ngO8
         CsxdsEITn7UxFqhvCrmquFFh2POPvEifAf+cl/pd/SIuzHNLMQjk8C73rnwHLpvo+9eX
         95RpkyRYw8o80tA8DRibAHsxXZ0FPI3qDRMv34D5w9wjzDIJgnhwxXQahcA/gGi4T9JZ
         P1ylArzQuzKGoMxmQ567Y9RGwxoYnoVVWVju4l1Ibnjh6hPqVyZFal3RLduC82cOOfk6
         DfRl0LDQFAdVALFsQWJHXn8tbMPHtpW8VWYN+PMvP+btP5Vx1VuVqV3pbW671bOtAx8g
         Fv+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769542040; x=1770146840;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=AchfjWsMxy5/5NRTV/dSnkmbMLB0F/2QQ0pQeOqHjoI=;
        b=GtbdKqdAx0rZXNWyG5X6Ii8kqv1hVlcYxta4TN5k8qnV56zgq/naTxOPNauNcgLTHr
         po5zMXL1oZmafkt7tMbY82E663fWOEXw4s763Zk/VvSVr/nWXmHWC7bCQDL3/XXxJslQ
         s+FHAFnb/71CfdzycEALC/5cks1uuVqAXBtiTDH9rP1qacaRVu6v+yPj5mK6YhB1OhUk
         IQB8I0/c0i18f0kTAPPmRCTWnZ5ZvHrspnlCc5ykuqCmwSMuywGPvR7lf0Edrf3a5cdX
         b7TAf4FQ4c6HVHxzndlqFg5y8YYngtNQCr2/1rWVDUnwt5d44RbJ5M8gasH9tJ8hZAJD
         w3SA==
X-Forwarded-Encrypted: i=1; AJvYcCXpX0GSwTBIYGj0xaGbuWjGwKUvr9rAKs6kW9G/LX8v/M80K0WAk8vWfSnF59NpQDV1wcFM15XyywEq@vger.kernel.org
X-Gm-Message-State: AOJu0YxEHTEBKYhZis46FPA+62TISNBBAqJqK1D3kl9N1jhK5U1CNUrG
	Gtn50vgxVesaTpyjIIONEegpZ55z2KC3zpcJilQT6UL+d/eBtsWDBFpa8aQdmflnVt7LvmuuPNE
	nfolJTeVt9Ht8s7dd2vzUH9CO+SurYiGYXF0Y4OCTywCOk6mV7/Y31Yh0wF8/bpo0
X-Gm-Gg: AZuq6aLEFeTwjaHjxos6QLSeaTVHy1tUuvsFlLmF0SoRGfkdENAZeZJwiJJ2yUt/q0b
	ES3oCmtoqYdTr8aIhTq8r+cjIFBPJncjjkfa0eC4QQPQFUACf8KvAYCqxiZbKDeuCBW7Ela70dz
	WR7aqoj7487+DVvMZdjdr5qXd6ZSpwTieu/mpDCWbdLEgm8ywfFkYGnGlDmMZy3mjtkbq7CmwUb
	qsG3ZcKOh1kpEUFBetqUYbd9zQVz30O4Q0wOg8KX5oaVh9lA4niErQKGaMV166ldkOcLaBr0Y2d
	2d6/KqwNqwHEn6VHeHAyPm0uaFuKMjeJCjhpmAp8omeoXMS7LLzIKE7yzpleZQTksXqAiIC1Lsk
	eTVMkhyvDX2C43JBi3WduXnhsv2xGX2Go5EIDMFvR
X-Received: by 2002:a17:903:2348:b0:2a0:eaf5:5cd8 with SMTP id d9443c01a7336-2a871267ae6mr18978975ad.9.1769542039791;
        Tue, 27 Jan 2026 11:27:19 -0800 (PST)
X-Received: by 2002:a17:903:2348:b0:2a0:eaf5:5cd8 with SMTP id d9443c01a7336-2a871267ae6mr18978805ad.9.1769542039271;
        Tue, 27 Jan 2026 11:27:19 -0800 (PST)
Received: from hu-jkona-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a88b414fc4sm1322225ad.32.2026.01.27.11.27.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Jan 2026 11:27:18 -0800 (PST)
From: Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>
Date: Wed, 28 Jan 2026 00:56:38 +0530
Subject: [PATCH 7/8] arm64: dts: qcom: Update compatible for videocc and
 camcc nodes on purwa
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260128-purwa-videocc-camcc-v1-7-b23de57df5ba@oss.qualcomm.com>
References: <20260128-purwa-videocc-camcc-v1-0-b23de57df5ba@oss.qualcomm.com>
In-Reply-To: <20260128-purwa-videocc-camcc-v1-0-b23de57df5ba@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Jagadeesh Kona <quic_jkona@quicinc.com>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Ajit Pandey <ajit.pandey@oss.qualcomm.com>,
        Imran Shaik <imran.shaik@oss.qualcomm.com>,
        Taniya Das <taniya.das@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Proofpoint-GUID: gSGRfeQAPtZgkRNxz42FtWDvA59qryEB
X-Proofpoint-ORIG-GUID: gSGRfeQAPtZgkRNxz42FtWDvA59qryEB
X-Authority-Analysis: v=2.4 cv=Tt7rRTXh c=1 sm=1 tr=0 ts=69791199 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=hE_BDuzjsuJR3tGECRgA:9
 a=QEXdDO2ut3YA:10 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI3MDE1OCBTYWx0ZWRfX7eMwkdHYM/pK
 8rkbnoyPlte6vnHbeZqD/95AHuwuu8nADkeLVLPKfknU1l7NrYRZBkZ89BOasdzuA+nU3Yb1cN7
 Eovm5ixHPr1df0IvU0lAzQY630VDoxfgek69CWMnH5gWW8xMD05QNYE+pnK0nqMCm6GAxaY+wVf
 i3dRcofwgA76D7hSjylrlpVu2pRu4k6tNMn739Pc8egOWAOqWsCwzoaS6wxE7dDekNLfmXreXxb
 mwVln+YmkvU86JNTZEn7d3bufISd273JUz523Ldtouv/a+lakFdtfA1xoXcrvYz97pByZpK0LF8
 8jNSTW4cj23/BCl63HvqNzXkpUVCMffpUJh42UcnZ4XW6FYwFJokQbsgdkDkCXiyf1XAP5SqlrE
 dcvHoOvQkF2/OfudxCPGA4vQNeAXKE36EqNfhZmdoHB+ubfo0LJPPuNUda6BPDUCQDcjGvYf8eX
 XMtc2Edq55AuYMQn2jA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-01-27_04,2026-01-27_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 malwarescore=0 priorityscore=1501 adultscore=0 spamscore=0
 phishscore=0 impostorscore=0 suspectscore=0 clxscore=1015 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601270158
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-260102-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jagadeesh.kona@oss.qualcomm.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: B119299DB3
X-Rspamd-Action: no action

Update the compatible for videocc and camcc nodes to match with their
respective purwa(X1P42100) specific drivers.

Signed-off-by: Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/purwa.dtsi | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/purwa.dtsi b/arch/arm64/boot/dts/qcom/purwa.dtsi
index 2cecd2dd0de8c39f0702d6983bead2bc2adccf9b..63599ba0a4f488d8f40f3e4d849645a8fa9ebf59 100644
--- a/arch/arm64/boot/dts/qcom/purwa.dtsi
+++ b/arch/arm64/boot/dts/qcom/purwa.dtsi
@@ -6,6 +6,8 @@
 /* X1P42100 is heavily based on hamoa, with some meaningful differences */
 #include "hamoa.dtsi"
 
+#include <dt-bindings/clock/qcom,x1p42100-videocc.h>
+
 /delete-node/ &bwmon_cluster0;
 /delete-node/ &cluster_pd2;
 /delete-node/ &cpu_map_cluster2;
@@ -22,10 +24,18 @@
 /delete-node/ &pcie3_phy;
 /delete-node/ &thermal_zones;
 
+&camcc {
+	compatible = "qcom,x1p42100-camcc";
+};
+
 &gcc {
 	compatible = "qcom,x1p42100-gcc", "qcom,x1e80100-gcc";
 };
 
+&videocc {
+	compatible = "qcom,x1p42100-videocc";
+};
+
 &gmu {
 	compatible = "qcom,adreno-gmu-x145.0", "qcom,adreno-gmu";
 };

-- 
2.34.1


