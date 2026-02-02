Return-Path: <devicetree+bounces-261759-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8BSKEWWDgGnE8wIAu9opvQ
	(envelope-from <devicetree+bounces-261759-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 11:58:45 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id C206DCB57E
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 11:58:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 533AA30360BE
	for <lists+devicetree@lfdr.de>; Mon,  2 Feb 2026 10:57:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4B0CC35CBCE;
	Mon,  2 Feb 2026 10:57:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="MeUN4lip";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="cTJd9spj"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CEA232DC350
	for <devicetree@vger.kernel.org>; Mon,  2 Feb 2026 10:57:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770029832; cv=none; b=G0CGVbk/Of3bHMspyVSZwB8vNybDE/sVYy7bG8R3tCNdmAjBk3tPMFv6bD/iKIuZzCa7jF1o63/IVtRkhMMYcTgGqXSP8kw0UAlo4VoE5aHvGdjig9fnFVCitr8AioElw0/7pwkrRuDJcvsh8kK5CUTPQSZxMfn1tBBwodkeqfw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770029832; c=relaxed/simple;
	bh=q5Nr0YGXSWa363HoQmNNcuQRm+ZXYvrUDrddq3fS3yI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ZKgXhgA1lR52dQcVjjKCh+zc3yAQp+GDefgDOxZNOadwGcogWybfA2G1GHmhwweQAU/B94vxR0M9TQ0saade88hu66ZYShH0a0yLr7PxdneZgNcZc7fqCGufLA+U3ZmBtpj/Nk+PeSTF9BIOI/Ax1RtubnQOHiRCuDKkHaAC+Hk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=MeUN4lip; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=cTJd9spj; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6127x4YF1657605
	for <devicetree@vger.kernel.org>; Mon, 2 Feb 2026 10:57:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	T9xirun4JgZY0u+rP7AnHfkkrmrXi9PZys9owwSZyA8=; b=MeUN4lipNkYHNXWH
	BzVbnCvcXx5DwzCs8OaDTui1za2KXhDXi1grZUoA9KQVz2kXUYXluj1kTfejYlfF
	6g5wAGnavjXjx1rQj8kGv/wMUJPtSx9PqUJVKjxjpFnbZCZlEyVkXvuRDw1f/eOR
	kvc/IP0mkDyTYIXOTG8Y5asRXAblNyoRaOLGeA1e73teauphrausf4D+hKTywRt6
	SCrikk5PFWgfFTc9xHlYXsYw+X2cy7Mybj1BQqDLYexu+ofpoug8QVojBIBe8shc
	j6wo7yt6OXJ1pDLOE3qvyROBR/b3mmACfYZ39K4mTgLjuWQ2V6yE+Bo8XqMa+cFR
	UPebnA==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c23h1juq5-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 02 Feb 2026 10:57:10 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2a7701b6328so115353295ad.2
        for <devicetree@vger.kernel.org>; Mon, 02 Feb 2026 02:57:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770029829; x=1770634629; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=T9xirun4JgZY0u+rP7AnHfkkrmrXi9PZys9owwSZyA8=;
        b=cTJd9spjLUhXSrYbBmSI8qa/s9tLq4JLxDXD7lSIpGoqPftfmHJcaXJZ+61fc6yyGz
         X3lPNA3vvVeMqfcFhiXt390IWIBnE4VnO7Gm0dSTWMKUlLyMxnpRbwGGHnBpRc2DBNw5
         kE5W1vpN4BddQzsCBNqLMC6Q46PJMaANMAwfahBlnHykPHrh4B49usydNL4DMwypUwjc
         s/EBGJ7aZFgoLBqwPNPIujeRmQgMe+wmU/+muPT0tdRdSoewclR6EIIDtGtMmszJZZPn
         5QbfeJqvzkLhwAiUMpvyl4Cfe7b3s9tbYJr0LY8eFLJvyxt0nnLPNujpxxLuYvJxm5lX
         xWug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770029829; x=1770634629;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=T9xirun4JgZY0u+rP7AnHfkkrmrXi9PZys9owwSZyA8=;
        b=J8T7U0fmDW/q8d0E0B3Z+/gVv24B7RiJCna26MBjZw7BYi//5sevIAd2izUwEMXtS4
         w4oVpra0kDXiPC5zzJMjFRa/i/6VcgaZAWoaz0iwDw7otF18rRKUrfQiFUIMXg95amyA
         kAD3i7WxXnZWbRQqg+A9peIk/WKzO5Q2IEcSDBYSMjeub52VsG9YFpbf4Ws4CeW7Zz8y
         0uLLaQ0fUstpDcWcxdAtnfjon31vFXGrpJilTCRDKZ2F3CrvmW71uHuQ49hbQXfoGVEk
         fjLlDjYnc/IKrjGgHiUNn3iicMLMKIFpXEbg6gyp0c3Mjiu5ihquSWjvdEV9TvAwZSfN
         88iA==
X-Forwarded-Encrypted: i=1; AJvYcCUltsAJtIr+SLpjFDkgBKMDdIbmZypoKe84AVIv4GfznR9908gwyVAVb0qlY8xxr1Fjelh89uZzp9xH@vger.kernel.org
X-Gm-Message-State: AOJu0Yyf0fptdWMI/DjiioF90sRE9+krCiuxP1KmufHGJGm8sWQQHohS
	wT2Pea8RRw+NHqIFFX+WzjuYaZ5j2xbd+6DzXO08MKTpV0HCY0JN7acCubbT8n1WR1zEO72/Pvy
	tX3qLZwwULcKdGZgo6BEleFpghE0keEdOfn5hROKeodu+NTjAx4tAowxQGrWiEJ0X
X-Gm-Gg: AZuq6aLD4zBBFh1x77TdX7Y2bAkHH26ZvyT0u6YsTbDYVuV+Lc0PdRyzY9PayeuP10Y
	3L4qMFduOCKxwmPL7R6XNb4gWU/uq0g0xm0AYmdUJhyGL3wURe/gM0d58pu12BcIBpLn4i+3R+R
	8B/C6RXG/8zwoPhD9bxVhHTStelr4rJnh5bXk8EfP7nqOqGtbqRtxQs19/tB5TPDTV7kdUPRYoc
	r3K/GSbz1+cAPXkviHF5IrX9WmjhlmUaQWliE7LcQW9iOEfeHbB1GD0CO1HujcakkZSU10WAexr
	kDMO9WzdMsbVJrLQlHcWTkKdf0mzIeAXQWhLTpyHUXBtaeS3s/uojHD9knhFK+6jeWTl+HgqBiH
	vdmyrfj+subMYAG3qZ6zymYr5Q5pzxgciwA==
X-Received: by 2002:a17:903:2acc:b0:2a8:fd0d:ae94 with SMTP id d9443c01a7336-2a8fd0daf26mr59385695ad.19.1770029829516;
        Mon, 02 Feb 2026 02:57:09 -0800 (PST)
X-Received: by 2002:a17:903:2acc:b0:2a8:fd0d:ae94 with SMTP id d9443c01a7336-2a8fd0daf26mr59385375ad.19.1770029829021;
        Mon, 02 Feb 2026 02:57:09 -0800 (PST)
Received: from hu-tdas-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a88b4c4665sm143981225ad.64.2026.02.02.02.57.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Feb 2026 02:57:08 -0800 (PST)
From: Taniya Das <taniya.das@oss.qualcomm.com>
Date: Mon, 02 Feb 2026 16:26:51 +0530
Subject: [PATCH v2 2/4] dt-bindings: clock: qcom: Add video clock
 controller on Glymur SoC
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260202-glymur_videocc-v2-2-8f7d8b4d8edd@oss.qualcomm.com>
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
X-Proofpoint-GUID: hse269gAYUXvgOgnBTXSsJ4DZHaZTiyp
X-Proofpoint-ORIG-GUID: hse269gAYUXvgOgnBTXSsJ4DZHaZTiyp
X-Authority-Analysis: v=2.4 cv=Fu8IPmrq c=1 sm=1 tr=0 ts=69808306 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=i4ogSa-0-Ooxq5hEEv8A:9
 a=QEXdDO2ut3YA:10 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjAyMDA4OCBTYWx0ZWRfXwjPIazMTiI5Q
 /I3A+3dSDA73Lrd4G8m1wYbEpShaZwigUoSp6uToo5krDMLOh4pYVuMYOzae/h9QXywIbGe2jGA
 lkO8qeJW2V7WrVU/yzMyI4LbaKoC5KDTjYXL93P/IGqPTY21bOP2irMYx0QkMM5JwUGtScd3f7F
 AzOxJRQDNxTSeOHcYeJJGxCjNuHgV+ryOXhuqVdd2GnjhcxVPkToifcRmHTb47sdCdXkCU0CTgB
 02CPShiW+d71rM688WUXExKljd2MI1dhA+9N5Ak4gKbWNyK5AO2WGORN2BgQDW93WV1acL57FLD
 tPEsRnuu2QYq/Wmg+xh+fG3HUcy1tO/Z8d4oUAI+pa1qWOQ1gLjr2I2wU3YV6D566qFfDQorCsq
 G1e04C+aKXwObnBt9OprNQ8dlyz6jNrKcDCstQHrTaKtXFuokNW3Ot7qQpvMfEt0gQoVynnmkaa
 U8glCYG5s0UTfNJHKUg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-02_03,2026-01-30_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 spamscore=0 lowpriorityscore=0 priorityscore=1501
 clxscore=1015 suspectscore=0 bulkscore=0 malwarescore=0 adultscore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2602020088
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-261759-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[taniya.das@oss.qualcomm.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: C206DCB57E
X-Rspamd-Action: no action

Add compatible string for Glymur video clock controller and the bindings
for Glymur Qualcomm SoC.

Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
---
 .../bindings/clock/qcom,sm8450-videocc.yaml        |  3 ++
 include/dt-bindings/clock/qcom,glymur-videocc.h    | 45 ++++++++++++++++++++++
 2 files changed, 48 insertions(+)

diff --git a/Documentation/devicetree/bindings/clock/qcom,sm8450-videocc.yaml b/Documentation/devicetree/bindings/clock/qcom,sm8450-videocc.yaml
index e6beebd6a36ee1ce213a816f60df8a76fa5c44d6..7bbf120d928cc506a4f7aaeaa1c24e5da760e450 100644
--- a/Documentation/devicetree/bindings/clock/qcom,sm8450-videocc.yaml
+++ b/Documentation/devicetree/bindings/clock/qcom,sm8450-videocc.yaml
@@ -15,6 +15,7 @@ description: |
   domains on SM8450.
 
   See also:
+    include/dt-bindings/clock/qcom,glymur-videocc.h
     include/dt-bindings/clock/qcom,kaanapali-videocc.h
     include/dt-bindings/clock/qcom,sm8450-videocc.h
     include/dt-bindings/clock/qcom,sm8650-videocc.h
@@ -23,6 +24,7 @@ description: |
 properties:
   compatible:
     enum:
+      - qcom,glymur-videocc
       - qcom,kaanapali-videocc
       - qcom,sm8450-videocc
       - qcom,sm8475-videocc
@@ -63,6 +65,7 @@ allOf:
         compatible:
           contains:
             enum:
+              - qcom,glymur-videocc
               - qcom,kaanapali-videocc
               - qcom,sm8450-videocc
               - qcom,sm8550-videocc
diff --git a/include/dt-bindings/clock/qcom,glymur-videocc.h b/include/dt-bindings/clock/qcom,glymur-videocc.h
new file mode 100644
index 0000000000000000000000000000000000000000..98c0debef8fa9d67a2fb86a0e42d6e207ad89c09
--- /dev/null
+++ b/include/dt-bindings/clock/qcom,glymur-videocc.h
@@ -0,0 +1,45 @@
+/* SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause) */
+/*
+ * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
+ */
+
+#ifndef _DT_BINDINGS_CLK_QCOM_VIDEO_CC_GLYMUR_H
+#define _DT_BINDINGS_CLK_QCOM_VIDEO_CC_GLYMUR_H
+
+/* VIDEO_CC clocks */
+#define VIDEO_CC_AHB_CLK					0
+#define VIDEO_CC_AHB_CLK_SRC					1
+#define VIDEO_CC_MVS0_CLK					2
+#define VIDEO_CC_MVS0_CLK_SRC					3
+#define VIDEO_CC_MVS0_DIV_CLK_SRC				4
+#define VIDEO_CC_MVS0_FREERUN_CLK				5
+#define VIDEO_CC_MVS0_SHIFT_CLK					6
+#define VIDEO_CC_MVS0C_CLK					7
+#define VIDEO_CC_MVS0C_DIV2_DIV_CLK_SRC				8
+#define VIDEO_CC_MVS0C_FREERUN_CLK				9
+#define VIDEO_CC_MVS0C_SHIFT_CLK				10
+#define VIDEO_CC_MVS1_CLK					11
+#define VIDEO_CC_MVS1_DIV_CLK_SRC				12
+#define VIDEO_CC_MVS1_FREERUN_CLK				13
+#define VIDEO_CC_MVS1_SHIFT_CLK					14
+#define VIDEO_CC_PLL0						15
+#define VIDEO_CC_SLEEP_CLK					16
+#define VIDEO_CC_SLEEP_CLK_SRC					17
+#define VIDEO_CC_XO_CLK						18
+#define VIDEO_CC_XO_CLK_SRC					19
+
+/* VIDEO_CC power domains */
+#define VIDEO_CC_MVS0_GDSC					0
+#define VIDEO_CC_MVS0C_GDSC					1
+#define VIDEO_CC_MVS1_GDSC					2
+
+/* VIDEO_CC resets */
+#define VIDEO_CC_INTERFACE_BCR					0
+#define VIDEO_CC_MVS0_BCR					1
+#define VIDEO_CC_MVS0C_BCR					2
+#define VIDEO_CC_MVS0C_FREERUN_CLK_ARES				3
+#define VIDEO_CC_MVS0_FREERUN_CLK_ARES				4
+#define VIDEO_CC_MVS1_FREERUN_CLK_ARES				5
+#define VIDEO_CC_XO_CLK_ARES					6
+#define VIDEO_CC_MVS1_BCR					7
+#endif

-- 
2.34.1


