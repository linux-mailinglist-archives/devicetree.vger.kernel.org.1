Return-Path: <devicetree+bounces-260097-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +J1BLa8ReWmHuwEAu9opvQ
	(envelope-from <devicetree+bounces-260097-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 20:27:43 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 6135199CC5
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 20:27:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 623AC3044588
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 19:27:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D948836D4FC;
	Tue, 27 Jan 2026 19:26:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="WVjWQJXo";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="F9kwlT6F"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AADF36D4F7
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 19:26:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769542017; cv=none; b=TELWc0p7IjDPoknLCWQi4cmubU5oQu5hyQQ6KiqyEXuee3orGfJJEBGePNoM3MQMnhHfsycweR/PR6IzYvIJ3BLrIW3mudI2mxKA1CEO4iQL/7VsAnXI0xyJOjNoRN5Ub0jEVO+WTQkcaSyhGjomziggzf0sSrddAi6s1gaT7aM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769542017; c=relaxed/simple;
	bh=Mu/RHqw+ql3i/4FBQatjVweusbMhx918FTz794GaILc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=DhbvHbunJEWWPYwWENLEL0UXABmxDr/lNytwz+Opxg9P96wK3o6B2TxS2K9TEXCxdEQ8rnnnRDa99BPczYi1hwpAb7jMLNF6yWW440CAkHvWid1ss6LmofVNJYvPgIq7eamV0W+IiBPV/3Ez/M11Cjl7PZFQ/S4J54ff7eYY6nU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=WVjWQJXo; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=F9kwlT6F; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60RH4kOE1195162
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 19:26:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	M6jxKvMra7Db1CD3KXCzTW7lxgwW9m7N4FZnaa2KogA=; b=WVjWQJXocvsxY75m
	74ui7MGzG1TFn18XbwU6WnGhjg/CuZ4qSPPr9VAckBITMsPyoBlPuSdZQSl7Ezeq
	bdQz/E/6Z1H8BHzG4ak6w1j54KLCjxN7UaDYtAIp3YnY3yiDKhedA2JJG/79DP4c
	vGxB29HbDiVohBqpWhYvLiNg0562Vd/RNxZz9YCoxqLyEFr+U9nWznig82d78b9F
	YVQhc+pe/qexh/GXlLUvtf0ucx6qIrFkK6egoX/hBclTcMlOJAhwprO4N+Xf14uA
	LvnR5uUwTsCsri37LMFAnn+KiRdhhPMDjfE31ioASVZSWJFj0R3cGiy2zVMCnhyq
	C62ikg==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4by1etgfa3-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 19:26:55 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2a13be531b2so59773835ad.2
        for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 11:26:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769542014; x=1770146814; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=M6jxKvMra7Db1CD3KXCzTW7lxgwW9m7N4FZnaa2KogA=;
        b=F9kwlT6FeuwCWrtbxcltDGo7S53Gl1IXQn/XEwEQaLTbT8cuFx+30XQrEvNTO1h/gw
         b74pjBoVm9izINQe1zpCRWfhriXt6ekl/AvGOrUom20haNnWFmBGnACtrC8j5LXyJ7wV
         PrRLey3sqFBnWxpUnWD+5FgGYvKN9Uw94ojHXEsW3ef2IzgpRbF+/tMXkln5gP9+guZM
         Dqom3QeMrbcd92o6U9NTZA1e2h1fa86iXFmVCMeV7hFKUVYpKFyFhkugvID7mPxJBI2U
         bD55/9pP+z13smR+DCKwqCsqObEInHrrQicvQdbQjQiPRnduTNp9ooMOcpaoXa+8TFKA
         zxlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769542014; x=1770146814;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=M6jxKvMra7Db1CD3KXCzTW7lxgwW9m7N4FZnaa2KogA=;
        b=j8CTmLIAvVqbpt45ynZGGZyjvY/g01Geq2P3mkSEKR6NeSJfGejinidgSGNlvfSS9O
         CDOqv0v+6+SqyoZ8cisr4xYt6lleVltqebaPJZ8pub7NkkKIEIUhPsa56FaOZ/RH2uuN
         G8sWQu+lm90I0f4xe2311NpbMDcUOM0tZCgs7sNxxLzBt3KjeQtRLgNjeVFghtZUVVyE
         DDxQs/6lDXPjU2AeQ0Z5mVNhWT7l8qFNJJ0wqDlBkNJ/iWjx9LuTqqs7DlTMxPIKXBhZ
         SnN6WC/RIwVnfreitkEIKb8BJOt3gWK57dhTaWh9us0IKeapDXppiMO15lP5T7DLysgr
         s5ww==
X-Forwarded-Encrypted: i=1; AJvYcCX97GCKN1Z2TIzTxDUYLgibaLnTkXKeOMUZ/KBGAADvBN7/iKMeVmfWWTjpJ80kuLd4UEGibE9bozeu@vger.kernel.org
X-Gm-Message-State: AOJu0Yyp8zfQy9F6lrq3b4oLUMxDYHMLfRfhpbOkQWVuRDitOsIs3aG9
	nfDtp1G2XqiUQmgSR1E5tgnIxNbYaG05AL8wiij7gej1wdoOx095VA7nP+0mahZBN+GcKhyBRiV
	lyffNlWs/uypUfS2yejFs7JffaG+LPivpM8XfLs3uVlrAGAQvKZ6jUeYDZ+NpBlPu
X-Gm-Gg: AZuq6aKiO9raQq9C5bSkoqw2eBm6HqvtUwRsRaswdNJuxp3mU1fz0LHEk8M+4dvhpN2
	1FXMyPFbKplWoR2OqKFwuZTq3Q7E6XCRea7c1wnlWFoF3aWDwsEWsXY/BxQhJnZiTxu82LkL002
	2yOfRSOfBcO1sbXo/x1M445KZhJiOR67kPFOiZKfp8xlF4mEcQeF6ve4T5g2eqlJXj6ktZMhjd+
	knxW1OBmS1NI/3Ib0YJLCGV0xS033iOhTKzAD1ZItd6n3zh93lMPRAV1w/CV5WcbS77WIc6j3Kv
	2slUHeYyosm3IKIy0tS/zSSVF/GZM77hE0iVGPLQJwWQdwt2tanIXbhE8138ll9ZMVoXfAXu1nM
	NOG6dxcrPRBGs6s/4ghPYA09YuTHxzBuoCieQgQzg
X-Received: by 2002:a17:903:2c07:b0:29f:1fad:8e50 with SMTP id d9443c01a7336-2a870d58d80mr24368415ad.3.1769542014132;
        Tue, 27 Jan 2026 11:26:54 -0800 (PST)
X-Received: by 2002:a17:903:2c07:b0:29f:1fad:8e50 with SMTP id d9443c01a7336-2a870d58d80mr24368215ad.3.1769542013482;
        Tue, 27 Jan 2026 11:26:53 -0800 (PST)
Received: from hu-jkona-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a88b414fc4sm1322225ad.32.2026.01.27.11.26.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Jan 2026 11:26:53 -0800 (PST)
From: Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>
Date: Wed, 28 Jan 2026 00:56:33 +0530
Subject: [PATCH 2/8] dt-bindings: clock: qcom: Add X1P42100 camera clock
 controller
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260128-purwa-videocc-camcc-v1-2-b23de57df5ba@oss.qualcomm.com>
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
X-Proofpoint-GUID: a8pwy1KVrhVXYornT4kk422dl8SPTMXR
X-Proofpoint-ORIG-GUID: a8pwy1KVrhVXYornT4kk422dl8SPTMXR
X-Authority-Analysis: v=2.4 cv=Tt7rRTXh c=1 sm=1 tr=0 ts=6979117f cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=-2Qx4yxcNGLJKJli3vsA:9
 a=QEXdDO2ut3YA:10 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI3MDE1OCBTYWx0ZWRfXx6yMI7PhyuGE
 DCt4eea2Y34jJX5WOZycl2HB+2VH9z8/WWryE0YKbxhFf/R4djPPlBD9PBHU6+8zVWBQFF/XkpX
 6zkBCkjygg+fP/SIHGA6OkqXWGfaR4LaTVLBOxwQrtvlYb2vJJfnFqM+ef8dnSRnQ3gMsTP+MEH
 tuWq1dtAKLJmr7LFiHroo1VkQ429YAg051K7Drw83Q+xPGuxwH+dC2j42LZYhakcoFEBxDyEhJc
 BMHgrPKrzuOg1IaJuXjwtAJZg7ZtTge5kbqXq+4t5g2ZJAeNK/gl5Ap7NKLVDZbBQQdrtN4LCF9
 f5WJnsOquHKvF20yTWejlfiiPX9Egy16WUTeTFP4tLrdRwg3gFBC6Wu7k6Gi4mmv3iAFbZIjmML
 FRJ6712MFCgsOJoQ1BBKlmvbnxEXkI2U0LN4XhTkynGpk0t/Ab+/DNO/wJbNIeDKfDB+R45fnRp
 4+VDicHHLpPVGVSnZqw==
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
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[17];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-260097-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jagadeesh.kona@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 6135199CC5
X-Rspamd-Action: no action

Add X1P42100 camera clock controller support and clock bindings
for camera QDSS debug clocks which are applicable for both
X1E80100 and X1P42100 platforms.

Signed-off-by: Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/clock/qcom,x1e80100-camcc.yaml | 1 +
 include/dt-bindings/clock/qcom,x1e80100-camcc.h                  | 3 +++
 2 files changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/clock/qcom,x1e80100-camcc.yaml b/Documentation/devicetree/bindings/clock/qcom,x1e80100-camcc.yaml
index 938a2f1ff3fca899b5708101df7f8aa07e943336..b28614186cc098268ab0d8c32b21d9dd9508c9f9 100644
--- a/Documentation/devicetree/bindings/clock/qcom,x1e80100-camcc.yaml
+++ b/Documentation/devicetree/bindings/clock/qcom,x1e80100-camcc.yaml
@@ -23,6 +23,7 @@ properties:
   compatible:
     enum:
       - qcom,x1e80100-camcc
+      - qcom,x1p42100-camcc
 
   reg:
     maxItems: 1
diff --git a/include/dt-bindings/clock/qcom,x1e80100-camcc.h b/include/dt-bindings/clock/qcom,x1e80100-camcc.h
index d72fdfb06a7c716ed2ec376e061e4f0ca35f42c5..06c316022fb0d26ec6243b28477564d97f228c8e 100644
--- a/include/dt-bindings/clock/qcom,x1e80100-camcc.h
+++ b/include/dt-bindings/clock/qcom,x1e80100-camcc.h
@@ -115,6 +115,9 @@
 #define CAM_CC_SLEEP_CLK_SRC					105
 #define CAM_CC_SLOW_AHB_CLK_SRC					106
 #define CAM_CC_XO_CLK_SRC					107
+#define CAM_CC_QDSS_DEBUG_CLK					108
+#define CAM_CC_QDSS_DEBUG_CLK_SRC				109
+#define CAM_CC_QDSS_DEBUG_XO_CLK				110
 
 /* CAM_CC power domains */
 #define CAM_CC_BPS_GDSC						0

-- 
2.34.1


