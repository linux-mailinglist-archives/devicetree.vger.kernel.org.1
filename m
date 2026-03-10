Return-Path: <devicetree+bounces-273434-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YIS8Im7tr2nkdAIAu9opvQ
	(envelope-from <devicetree+bounces-273434-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 11:07:42 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 359BE2491B2
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 11:07:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 011443188FC3
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 10:04:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B2FFD44E05A;
	Tue, 10 Mar 2026 10:04:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="D7/Y7R60";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ZE+weRHi"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C29544CAE0
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 10:03:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773137042; cv=none; b=WPWIchR8LEsq7j6CG782fFpQtysxLCSE0NK/FgxGqRHTdr9MfQU7SrzE68QQEbcO6EbbAeAh3Crz7AnYVeSUw+3lG7XWYDXR87QyZINvCEAH6BW7TZbBXXVAGBUZpOkUXG/E1n6vxwOfDblkWDt5JYwMFastiLH1c7C7rJn8dJ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773137042; c=relaxed/simple;
	bh=/c/UyI7L81ltfFwZEetruAY+F+wzy4xXdRI7ph5h4hg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=LDS/ciB7vDDsCaSBZlLckVqw5F0h3E4TQxJVPvThFXtjbRB7I8E4/X76LPX10mgtdByLL7+IGGQAK1iYsZjanLrIYux8P0WcBItDUU2Awfo+6M/6ezpbDx1PgS/gcKuDvC+fR/S+huGHsIOi3SxVF2fySFDboftuCuOpWcsHOxs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=D7/Y7R60; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ZE+weRHi; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62A5lLH6568795
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 10:03:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	0kJorjAJ947XMRE2ZD4Kr0S5lPFpMeg40ohfoNG0QyE=; b=D7/Y7R60AMRpfP/L
	V4GJzmC7HarC8IIQX8i1eZ7VSLlMRITfstmdeUVb1jz+jwDLRbzl/dQBXgdZ1+Tx
	7nBPtEBKkiqN1hbvCXUXKvuG3Hz9zgfuWALUsyaMTVzrlH+/mODNassVz4thYs6l
	AxXTE/cHUl6RCP7bFloqKyijh5Ynk4LAbzQcrq+5czmzvvqN4X/EzVmhzzEg3kw2
	TLRPm3W0zJDuq0TKVOwynpTM8Ovx0nJAZw9LQPJY4TB/9HXg2h+r3w/5j0xGUvYj
	3lXFUROpXu49jAOA+eLqQ1OcUigEZpMmKD9pLLZ1Wn4KmHcNs7axL/DnZQNjPOUL
	81vEJg==
Received: from mail-ot1-f71.google.com (mail-ot1-f71.google.com [209.85.210.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ctdf8gwc8-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 10:03:57 +0000 (GMT)
Received: by mail-ot1-f71.google.com with SMTP id 46e09a7af769-7d4d4db1523so56695807a34.1
        for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 03:03:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773137037; x=1773741837; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0kJorjAJ947XMRE2ZD4Kr0S5lPFpMeg40ohfoNG0QyE=;
        b=ZE+weRHikNsJZgr9zsI72JEJtyvzpfhhTBMSARUAtGTswaHJRGeUIfU6kgM0cTRmuU
         1IyVP2bNHL7pD9wkM26JDUfApD/sCCZgecFXD4oRiMeNlBPsroTaWnEYRoDPZQbc72aT
         SnnlSLWqbWfvggYZgs0fOJN3J6CXI9uV30sWVyUO2ngU4oV9z9qUlKFGBmHXD/fN6fd/
         Sc4QjJwvyJY9DYEiDcFI3HnJKfVPp4IoYsFV/qSq0kqA8Qzu34XeqTV8CB5E7qiwyIzb
         VTEVz159TQS5ydi6VjvYd9yBGz/i+kGk2CNdKWoFGBy6hYl10YlZ1xZFN2JsJZsrRPrc
         qUfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773137037; x=1773741837;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=0kJorjAJ947XMRE2ZD4Kr0S5lPFpMeg40ohfoNG0QyE=;
        b=CfdrVHD/88mZXtkG/myaaOkqxmyu8qR2ZHmkv6faP/klvZdAXB08iN9rsYEcFUfjZ7
         m2WO9sqQEzPKpiDyPKZwwljQsh/aWeA2ymZyeVAR4q/k9gtIcWqiq/QkczoapTbSrRZs
         h1xU5/iS1/7ggUZBb6WRtHgSB4Huvi34Ich+50L0XV3yPY0y3jhUtdBpjtKy/X4wS3nD
         rj+sgE1mYiRyDRAyoxntWoLI6hktFBPSVDaKaPfdmw5LsHpU6hI0FEa9x8rTXTxaRdzK
         RvVJByDnAI3NhfqXjzu3d6OcVimtFWb7Ru/zghWuj9j/nrEHzIi41jcxDNJy5/ACyrBs
         toHQ==
X-Forwarded-Encrypted: i=1; AJvYcCVVtfrMAWiRYFI59ygbpYiHTV5ccTkNPntUzedaRsZcaKJhVM6RVFfLTV9TCfdQUJboP0Y7xxWDUctR@vger.kernel.org
X-Gm-Message-State: AOJu0YwsXUcWH9qsRbNmTwUAdtTIG/SgBEtPeoYOIqOaRBorgVbPOn0/
	h0l2dwgBHetSeNNR8cZWLooJFkhOCbVbQoT24N9vC/7wpg4PL4re4f7rFOLJjZUr4kO3JCiaxfI
	4DoIAuMbSr5fNsggh566E5Wa/cabkeRjCdQeuQauYZYdzZ6yyy6hbGBVdYeOehCSH
X-Gm-Gg: ATEYQzzvxzJ6SmyJhqvRxtDaF+IGdoeMralr1SNQTPjzm05rOekajHP9/8bG6dWn+Qd
	0JJ1CZUIwNOy1zJ6F1zZWQGqq8mFrzJp2l2c/Zcemjy3OQkfFnngGr3ngjiP6tnkQCjjndmvFT7
	ex62dbR5SwXZ1ejUpKBUgUfqOLT2xjqvBauNbV5dvn19dPcEIahpsT/EHZkMmiB3W3f1a2yCbJL
	eMIKzlikQBitSCwSgELDW/2xLP7032WdpE2JwEQyyt3XM8HpMJt9VDkOxGP1M6Sf4GJvbGO9FVT
	sTK8QDM2NTzW/2x5PhAM9gV0g2uu+N2R/n2Qa9gzsw5+SEjqOemC7NPgZoDmbn9HYISoseJwcbe
	O9MfpPbD6fy/u+/9H5IP4QxHwK4EMgYv9Lq53eAxU7KKPHe6/NIHaEq6YL6krgGeoOCoukhk5
X-Received: by 2002:a05:6830:700b:b0:7d7:5405:193d with SMTP id 46e09a7af769-7d754052448mr2742103a34.24.1773137037363;
        Tue, 10 Mar 2026 03:03:57 -0700 (PDT)
X-Received: by 2002:a05:6830:700b:b0:7d7:5405:193d with SMTP id 46e09a7af769-7d754052448mr2742083a34.24.1773137036960;
        Tue, 10 Mar 2026 03:03:56 -0700 (PDT)
Received: from hu-jingyw-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7d746bdecbfsm4337611a34.10.2026.03.10.03.03.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Mar 2026 03:03:56 -0700 (PDT)
From: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Date: Tue, 10 Mar 2026 03:03:20 -0700
Subject: [PATCH v4 4/7] dt-bindings: remoteproc: qcom: Document pas for
 SoCCP on Kaanapali and Glymur platforms
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260310-knp-soccp-v4-4-0a91575e0e7e@oss.qualcomm.com>
References: <20260310-knp-soccp-v4-0-0a91575e0e7e@oss.qualcomm.com>
In-Reply-To: <20260310-knp-soccp-v4-0-0a91575e0e7e@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Luca Weiss <luca.weiss@fairphone.com>,
        Bartosz Golaszewski <brgl@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: aiqun.yu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        trilok.soni@oss.qualcomm.com, yijie.yang@oss.qualcomm.com,
        linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-3d134
X-Developer-Signature: v=1; a=ed25519-sha256; t=1773137028; l=6431;
 i=jingyi.wang@oss.qualcomm.com; s=20250911; h=from:subject:message-id;
 bh=/c/UyI7L81ltfFwZEetruAY+F+wzy4xXdRI7ph5h4hg=;
 b=uTT2hPoQzbTro08TGhUpZgQUL/HS1hwALCyGHzyyIahXYdqXuGDdh68j8ViuQ1J9iMbfr8DXn
 VpNLJZTinW1Ai4gCXfFi+SHmTNe1WvybWzsHi2zimDMawtBPkmCZtfs
X-Developer-Key: i=jingyi.wang@oss.qualcomm.com; a=ed25519;
 pk=PSoHZ6KbUss3IW8FPRVMHMK0Jkkr/jV347mBYJO3iLo=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEwMDA4NiBTYWx0ZWRfX38GNCnn3mPmD
 2wrNP3hGKEgCjDDbF6TU1OXYsf7xlrcmfsIl/Gy8ICZKoEJHD3QV++4bgPufX8KUDcikbOiFNWH
 Fu7c6wwwz9Bul0omzgv0GRt7WPXIHiBg/EkjUdRWd3Zu+ZbFwlfgQfSnGoUI4XkqhhBAPh6kjJa
 7lCygLnwPW1jQQHc52PMJi7amLW2zuorFO5UhqMFyPr1IrMnYQ/6C9z+5CXoCSFwM06KMqPcclT
 mRUynciKa49jEj8N679vXBbp5KZh4w1/OYNAi/Nw5TAdUst7FhOHBGPJHnI+g3CynTVPP7U4DdN
 56/0B81Bw7gxZGNPZf/MA5t+pz1N/SkI/3mtv3f9OqY1cVToVkoYuHa92o8R26sL0YM3g15hLxI
 6xUFoEWtJz0RbsWQcHX2EKBTf7acRfsA8/mt9Al8gYIC6azGgB5rYIfsR5oYi991WpI/HAYZgfX
 crdo5SECJI9PnHkIfvw==
X-Proofpoint-ORIG-GUID: JnewIgR_djS-26gLw0WtvDYXx3r6DTfK
X-Proofpoint-GUID: JnewIgR_djS-26gLw0WtvDYXx3r6DTfK
X-Authority-Analysis: v=2.4 cv=b+W/I9Gx c=1 sm=1 tr=0 ts=69afec8d cx=c_pps
 a=OI0sxtj7PyCX9F1bxD/puw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22
 a=gEfo2CItAAAA:8 a=EUspDBNiAAAA:8 a=W4aiDoSXCVw5puFLoXQA:9 a=QEXdDO2ut3YA:10
 a=Z1Yy7GAxqfX1iEi80vsk:22 a=sptkURWiP4Gy88Gu7hUp:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-10_01,2026-03-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 adultscore=0 suspectscore=0 phishscore=0 priorityscore=1501
 clxscore=1015 impostorscore=0 malwarescore=0 lowpriorityscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603100086
X-Rspamd-Queue-Id: 359BE2491B2
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
	RCPT_COUNT_TWELVE(0.00)[18];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-273434-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,oss.qualcomm.com:mid,devicetree.org:url,qualcomm.com:dkim,qualcomm.com:email,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jingyi.wang@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

Document the component used to boot SoCCP on Kaanapali SoC and add
compatible for Glymur SoCCP which could fallback to Kaanapali. Extend
the "qcom,smem-states", "qcom,smem-state-names" in the pas-common.

Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
---
 .../remoteproc/qcom,kaanapali-soccp-pas.yaml       | 154 +++++++++++++++++++++
 .../bindings/remoteproc/qcom,pas-common.yaml       |   6 +-
 2 files changed, 159 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/remoteproc/qcom,kaanapali-soccp-pas.yaml b/Documentation/devicetree/bindings/remoteproc/qcom,kaanapali-soccp-pas.yaml
new file mode 100644
index 000000000000..ce18460a949f
--- /dev/null
+++ b/Documentation/devicetree/bindings/remoteproc/qcom,kaanapali-soccp-pas.yaml
@@ -0,0 +1,154 @@
+# SPDX-License-Identifier: GPL-2.0 OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/remoteproc/qcom,kaanapali-soccp-pas.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Qualcomm Kaanapali SoCCP Peripheral Authentication Service
+
+maintainers:
+  - Jingyi Wang <jingyi.wang@oss.qualcomm.com>
+
+description:
+  The SoC Control Processor (SoCCP) is a small RISC-V MCU that controls USB
+  Type-C, battery charging and various other functions on Qualcomm SoCs, somewhat
+  analogous to traditional PC Embedded Controllers. This document describes
+  the Peripheral Authentication Service that loads and boots firmware for SoCCP.
+
+properties:
+  compatible:
+    oneOf:
+      - items:
+          - enum:
+              - qcom,glymur-soccp-pas
+          - const: qcom,kaanapali-soccp-pas
+      - enum:
+          - qcom,kaanapali-soccp-pas
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    items:
+      - description: XO clock
+
+  clock-names:
+    items:
+      - const: xo
+
+  power-domains:
+    items:
+      - description: CX power domain
+      - description: MX power domain
+
+  power-domain-names:
+    items:
+      - const: cx
+      - const: mx
+
+  firmware-name:
+    items:
+      - description: Firmware name of the SoC Control Processor
+      - description: Firmware name of the SoCCP Devicetree
+
+  memory-region:
+    items:
+      - description: Memory region for main Firmware authentication
+      - description: Memory region for Devicetree Firmware authentication
+
+  interrupts:
+    items:
+      - description: Watchdog interrupt
+      - description: Fatal interrupt
+      - description: Ready interrupt
+      - description: Handover interrupt
+      - description: Stop acknowledge interrupt
+      - description: Pong interrupt
+
+  interrupt-names:
+    items:
+      - const: wdog
+      - const: fatal
+      - const: ready
+      - const: handover
+      - const: stop-ack
+      - const: pong
+
+  qcom,smem-states:
+    minItems: 2
+    description: States used by the AP to signal the SoC Control Processor
+
+  qcom,smem-state-names:
+    minItems: 2
+    description: The names of the state bits used for SMP2P output
+
+required:
+  - compatible
+  - reg
+  - memory-region
+  - power-domains
+  - power-domain-names
+
+allOf:
+  - $ref: /schemas/remoteproc/qcom,pas-common.yaml#
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/qcom,rpmh.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/interrupt-controller/irq.h>
+    #include <dt-bindings/mailbox/qcom-ipcc.h>
+    #include <dt-bindings/power/qcom-rpmpd.h>
+    #define IPCC_MPROC_SOCCP
+
+    remoteproc@d00000 {
+        compatible = "qcom,kaanapali-soccp-pas";
+        reg = <0x00d00000 0x200000>;
+
+        clocks = <&rpmhcc RPMH_CXO_CLK>;
+        clock-names = "xo";
+
+        interrupts-extended = <&intc GIC_SPI 167 IRQ_TYPE_EDGE_RISING>,
+                              <&soccp_smp2p_in 0 IRQ_TYPE_EDGE_RISING>,
+                              <&soccp_smp2p_in 1 IRQ_TYPE_EDGE_RISING>,
+                              <&soccp_smp2p_in 2 IRQ_TYPE_EDGE_RISING>,
+                              <&soccp_smp2p_in 3 IRQ_TYPE_EDGE_RISING>,
+                              <&soccp_smp2p_in 9 IRQ_TYPE_EDGE_RISING>;
+        interrupt-names = "wdog",
+                          "fatal",
+                          "ready",
+                          "handover",
+                          "stop-ack",
+                          "pong";
+
+        memory-region = <&soccp_mem>,
+                        <&soccp_dtb_mem_mem>;
+
+        firmware-name = "qcom/kaanapali/soccp.mbn",
+                        "qcom/kaanapali/soccp_dtb.mbn";
+
+        power-domains = <&rpmhpd RPMHPD_CX>,
+                        <&rpmhpd RPMHPD_MX>;
+        power-domain-names = "cx",
+                             "mx";
+
+        qcom,smem-states = <&soccp_smp2p_out 0>,
+                           <&soccp_smp2p_out 8>;
+        qcom,smem-state-names = "stop",
+                                "ping";
+
+        glink-edge {
+            interrupts-extended = <&ipcc IPCC_MPROC_SOCCP
+                                         IPCC_MPROC_SIGNAL_GLINK_QMP
+                                         IRQ_TYPE_EDGE_RISING>;
+            mboxes = <&ipcc IPCC_MPROC_SOCCP
+                            IPCC_MPROC_SIGNAL_GLINK_QMP>;
+
+            label = "soccp";
+            qcom,remote-pid = <19>;
+
+            /* ... */
+        };
+    };
diff --git a/Documentation/devicetree/bindings/remoteproc/qcom,pas-common.yaml b/Documentation/devicetree/bindings/remoteproc/qcom,pas-common.yaml
index dc5a9981c12c..e81ef400555a 100644
--- a/Documentation/devicetree/bindings/remoteproc/qcom,pas-common.yaml
+++ b/Documentation/devicetree/bindings/remoteproc/qcom,pas-common.yaml
@@ -46,13 +46,17 @@ properties:
   qcom,smem-states:
     $ref: /schemas/types.yaml#/definitions/phandle-array
     description: States used by the AP to signal the Hexagon core
+    minItems: 1
     items:
-      - description: Stop the modem
+      - description: Stop the remoteproc
+      - description: ping the remoteproc
 
   qcom,smem-state-names:
     description: The names of the state bits used for SMP2P output
+    minItems: 1
     items:
       - const: stop
+      - const: ping
 
   smd-edge:
     $ref: /schemas/remoteproc/qcom,smd-edge.yaml#

-- 
2.25.1


