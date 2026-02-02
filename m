Return-Path: <devicetree+bounces-261758-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sOvSEzGDgGnE8wIAu9opvQ
	(envelope-from <devicetree+bounces-261758-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 11:57:53 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 08BD7CB530
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 11:57:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 991363008094
	for <lists+devicetree@lfdr.de>; Mon,  2 Feb 2026 10:57:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 13AF735CBCA;
	Mon,  2 Feb 2026 10:57:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Gl58j5km";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="kUPp55+8"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9255035CBD5
	for <devicetree@vger.kernel.org>; Mon,  2 Feb 2026 10:57:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770029828; cv=none; b=nwm/ACFOC8wOwKmAIxA4q+8i7LZO/laXWwL8VFFpGXxlRHqie1fOmSzzsFjqXV8fkNUEWuEGXYNANYRDymqYlKnpsFtvIpH/CVW5s8rwjMFE9A/YD5WzXyv4sLvz8wqjTSejHo7g6kP58f8E8zd8Je+aKcVanQjQqZm1qxLLMPI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770029828; c=relaxed/simple;
	bh=cHCPLXQpZgOGWiQ9cqlN02EhhMLJIwoEMGitXXLzg34=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=lxlsfu6DMQVHKD0ZViWQRfXL1guaikjyLes4ELdmUbWm6dkTMZRJ2C9vo4JmjbyhqwbYuUZNO8v7dioxpSfKtsbRvz03AacWtkGJpVUzbJ60TXKZLMyDbAOkZSMpyXmBUR67OKX+kE1OzgNeitwy596MCzbslN71rs5HypNkHpc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Gl58j5km; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=kUPp55+8; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61284uEb704738
	for <devicetree@vger.kernel.org>; Mon, 2 Feb 2026 10:57:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	TXnE7KlVVJV6vCllj6TWQGH1jIaQsMLhoWpK/hIRFgc=; b=Gl58j5kmWwhny2U6
	rebL4XEm3Q9wKWFJCfmT5eoh0KCbR5l5XVHjJb9X6CCR45iybMoNZnAm2aZO783I
	EWtAccV4rMfrSm0+ZLz77oG9vvJin2lucmQsiXbjStWVCAJoK2V0AD6jLTg4im9D
	Xdb01hj6aNkLNnzueeo5XZ8iyiI0cA9aQAA8ukZJJSikA3sWXlJfX3C/mSyqb2zZ
	Y0Mq2Zem08wmDSd1hUeGTW1BH6yCUQaIxp2hxQA0I5lk3/YIHx7x+lgg2qtv0bYo
	TYcJ2bCJsboJWzDMeTTtETbLT/2cuM51YoOmIEh9rFRm89JRhra8TnY2u6CEBrBH
	1oL+Bg==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c1avx52nj-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 02 Feb 2026 10:57:05 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2a76b0673dcso44292955ad.0
        for <devicetree@vger.kernel.org>; Mon, 02 Feb 2026 02:57:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770029824; x=1770634624; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=TXnE7KlVVJV6vCllj6TWQGH1jIaQsMLhoWpK/hIRFgc=;
        b=kUPp55+8xqyd7iEaBe1NYdlvNL0kEd5gOwp1ogTIYDVmphB1aBeTN9JXNO8s0E/hg/
         KytTfBWuSj2HiLFsnLxFPeuCFt/4FM/LiuiBuQETyQzGMBThxNq+6ETtOi1ZMsVdEwaC
         gjt9T2oEPcyCrJZFcWVfza1y+f6J2tVgO085TOufKAFBUSWB0K7Nu6syz/b5OqHGd3d/
         JsA3KMEUNvJzizzj7BbMYO3r7UhXzZBw12uRJ67Dw+cooxG45FDIonrMcb/U6zAe9I3L
         VCBZxkEW7FoKISr9CboCMojB5YWZNVJB1jWpOKbXd5GQRURwQJKNbEgrMEEEdil2MO9x
         pQ5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770029824; x=1770634624;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=TXnE7KlVVJV6vCllj6TWQGH1jIaQsMLhoWpK/hIRFgc=;
        b=pjFz5/MvOViTwzNqApcU2cpqRQzCmQGeXH2zyRdKCd8qaCJzBs/jjjPRj1XEtXezm8
         Z8IoSuj34m+KW2PQzGBtlOJQjv8zuL0CYjIbd35udWg2Mmd0TFWjCpI8Q4FS3aOr3AKZ
         lEHnH00bIvh7T8FM113n/mwGf0WOW+0TLM1ownlneBLYWJehn9SvLewcgUlgoaddfAQv
         Julrl0xrBoiP3VQbzTmUShtJ8dIhDMjOdNkNyQBN2iy24Y45xmBh6pijM1zBDwTIXXHj
         NGqPAO6gvCniiJHKE7cI/NbMkbeTvzxSt2nk3CHQr3GYXa+SZnDQPbxdoKoHQeXlWZVA
         Mm7A==
X-Forwarded-Encrypted: i=1; AJvYcCX0WHeVMjHwRs3CBPn2QoQWiZFqkpyJq/ak4uv3Dp8sRXDoD9+u301OZrSC6HqqQQTabrQiQ4gIX7yY@vger.kernel.org
X-Gm-Message-State: AOJu0YzO+tFS1MVO7lYs7OaEL+hDoMUJj3F/pD8bww1nI9QKg1o6DXQ/
	XEfPTUfal0yckLkviX0+l1TuzzSi4SeaOjxlD3JqZRVmZ/LOVMV2gUa2Vecaa+FS7fx7vim/GjP
	FGWn9A1BjTKn83zh3iFzi1VUjLqyTI3+V9TsJlTI5Flp9CgU3CX/qJ9rxBJu4HUMx
X-Gm-Gg: AZuq6aKN3ymubQnPe7aCtviNKYnYm68VRaxZ6RBI9RkMV6jxOTgaWVIX/I3sRTSjdGI
	SC1e0Gs3iQOXgTzLcJl62383RbgJrjw4p/Ml5XVS2PMZBCPQOKS6Gw6fH8JnpZmugu7Lr02U+Fv
	Srv/fUpJq3WQerK8ljW1a0yqq+LzAxXS2wKPQieuAkjjXUzHSMkfJmGw77sx3f9rRP39X6Hb3DX
	V9YtlwN+VT2/oezjzTD4EGIw3hN1FOSjXySGpNBLH/5kMcGLEdi07U82ZVmXnCsZh+hiDyHc5AP
	EfRRZRKF99UHs98kijcnShfFjF1Ie8OUztPgW5DlvRQTavLCo4c3jAAV5SDQ16ed3cGGEi+LXLa
	6r0Va1KHx2SpuhScu0WsYgQObGSatWNkZZQ==
X-Received: by 2002:a17:903:3b8f:b0:2a2:d4fb:2e4 with SMTP id d9443c01a7336-2a8d7eac07emr102189585ad.3.1770029824252;
        Mon, 02 Feb 2026 02:57:04 -0800 (PST)
X-Received: by 2002:a17:903:3b8f:b0:2a2:d4fb:2e4 with SMTP id d9443c01a7336-2a8d7eac07emr102189315ad.3.1770029823785;
        Mon, 02 Feb 2026 02:57:03 -0800 (PST)
Received: from hu-tdas-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a88b4c4665sm143981225ad.64.2026.02.02.02.56.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Feb 2026 02:57:03 -0800 (PST)
From: Taniya Das <taniya.das@oss.qualcomm.com>
Date: Mon, 02 Feb 2026 16:26:50 +0530
Subject: [PATCH v2 1/4] dt-bindings: clock: qcom: Add GCC video axi reset
 clock for Glymur
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260202-glymur_videocc-v2-1-8f7d8b4d8edd@oss.qualcomm.com>
References: <20260202-glymur_videocc-v2-0-8f7d8b4d8edd@oss.qualcomm.com>
In-Reply-To: <20260202-glymur_videocc-v2-0-8f7d8b4d8edd@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Jagadeesh Kona <quic_jkona@quicinc.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Ajit Pandey <ajit.pandey@oss.qualcomm.com>,
        Imran Shaik <imran.shaik@oss.qualcomm.com>,
        Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Taniya Das <taniya.das@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-aa3f6
X-Proofpoint-ORIG-GUID: 05NAfjv1DExchmRWKAQ9fXEsA-yDAeJL
X-Proofpoint-GUID: 05NAfjv1DExchmRWKAQ9fXEsA-yDAeJL
X-Authority-Analysis: v=2.4 cv=P4w3RyAu c=1 sm=1 tr=0 ts=69808301 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=h3uFTQrF-vKaECCUKRQA:9
 a=QEXdDO2ut3YA:10 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjAyMDA4OCBTYWx0ZWRfXwitkrN0GmW4P
 sTq9g4ggWBqkPbDkRuyDyLQe5/UXsgAl5UjtB0AXWQc241uz4XnVp97ISQ60K807VbbJii+E/hv
 IntMMvkvz85HYhY3KXnGXWjKt9REEm0HtKhscb2NIaAIxdsFavxot+0rOWXY1yab7wJk37Ky3yl
 Qzf0cxVH2rdt5pcivvIEbEVuJFzAqenSMatr0DxqjDPesbvLpLujj/42C70Jm2lgmzQ3P8IlWVB
 Ndrs/yAp/6lvT+0lIi13ASaJr9GYPL5J8g9twjoptBrfOYHFhcypaButSyr9EMPfQ6qGWYWSSzH
 oVqeOcm8Gnkf/zHTb7pq0gGQChuggVB7220m4/RGHv5/XxmTOHPirPX8MgWJH6m6kNwcVe9gFP8
 3EbAkpWjRIcOv1XcdXmW9+LlZ037kx3/s2EhF8JEkY0a7EHS8TXV68/U+XbQlJG1u6AtTdhOxeE
 rc4pOplBWKAD9rMCdZw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-02_03,2026-01-30_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 phishscore=0 lowpriorityscore=0 adultscore=0
 priorityscore=1501 impostorscore=0 suspectscore=0 spamscore=0 clxscore=1015
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2602020088
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-261758-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[taniya.das@oss.qualcomm.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 08BD7CB530
X-Rspamd-Action: no action

The global clock controller video axi reset clocks are required by
the video SW driver to assert and deassert the clock resets.

Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
---
 include/dt-bindings/clock/qcom,glymur-gcc.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/include/dt-bindings/clock/qcom,glymur-gcc.h b/include/dt-bindings/clock/qcom,glymur-gcc.h
index 10c12b8c51c34c5931c34b4437be03aea098ba53..6907653c79927f0ff32c98c75d830b719ce14d51 100644
--- a/include/dt-bindings/clock/qcom,glymur-gcc.h
+++ b/include/dt-bindings/clock/qcom,glymur-gcc.h
@@ -574,5 +574,6 @@
 #define GCC_VIDEO_AXI0_CLK_ARES					89
 #define GCC_VIDEO_AXI1_CLK_ARES					90
 #define GCC_VIDEO_BCR						91
+#define GCC_VIDEO_AXI0C_CLK_ARES				92
 
 #endif

-- 
2.34.1


