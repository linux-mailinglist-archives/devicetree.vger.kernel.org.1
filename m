Return-Path: <devicetree+bounces-276784-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iDbpLxKSuWl3KgIAu9opvQ
	(envelope-from <devicetree+bounces-276784-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 18:40:34 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 20D092AFF4C
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 18:40:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id BC310332AAD9
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 17:15:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C63D33F7869;
	Tue, 17 Mar 2026 17:14:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="eyKXgEM0";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="h730Q+l7"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DDC63F54A5
	for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 17:14:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773767699; cv=none; b=CiYpyKubPAjWkTPE3W4ekBA4fSXHZglr5DyKQA1akXF4XrnR7TfssTLuPEQnCzGfcCildZIygGOrPqnItN2/ne8dYKts6Nzj4x+CIeXKymON8CQfjOIdQbaT5IPdX5hmgBY9fcG/Um7h2SzDV9E6nhpEiLhdnIourWcJAUrPMk8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773767699; c=relaxed/simple;
	bh=4pHAiCPa/I4+70l4WTTxBfo7ZLYJXjIsYdQ2M+8BWJg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=cWhSPaDR//2Ybwxl75u/A/OZy19UVR/YPrJKXeVnYMmZdUdp8zf43LE7BoYAwD4MvwKBMGNeoNeSeLwZVJzZPOjBWkp1oD4zmp/26qiwfnilr6TdCOMaccQk0pIdDt/l5CuEwNHg8ixhsTjwOZR4MwnuoKrTMdsmRCbEFEaBnCg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=eyKXgEM0; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=h730Q+l7; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62HDq2Zt3124255
	for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 17:14:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	yB6RmntczqRFUMYtWGGfsH29TNbbMgoNZLAW4MMdSzo=; b=eyKXgEM0zh7blzXR
	SHJm3B+Mn799uS8qpnMberp7gCI+VvfvCiEzMVhovFwnjIbYYqF6HX0ygmAQ8t7A
	rGedOd7x0B96e/LwdClJwthk0ybiLp82Ph0mK7Lk57WERIsqqMfylT0AORBuFq7s
	MdW+ZCQ1s2QI0P5KOI70te7hWZ/rdf1Xom0g0xspnYu7DluUnM5xK/P0qRQc0oe3
	rLOZOYoQpjKP59F6geaEq7rDxng9CIJleW8dJ+4RR0F1+8t7Z+4b0RPlXNFPlPB9
	QCjhN03fAHm8fuFuLqm0sKaaGU3/09q0ir8YKUre08eVwVa1XHNabo4yiQurZot6
	H/Q/yw==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cy2fbt7jc-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 17:14:57 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-35b9246248dso3163141a91.0
        for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 10:14:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773767696; x=1774372496; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yB6RmntczqRFUMYtWGGfsH29TNbbMgoNZLAW4MMdSzo=;
        b=h730Q+l72ITONiELt9Y5q6Du0WvHdKagrUbX5JcHWc+7poTKRlZf7rqXV8tzqUq37E
         /01i0svXAvulfJG/rdiHxNRMMWcXSe+lrvqj1Khi0quXdR26cEimTRNp8rQqm9Epl6xz
         Jcifgu4NpwNyYjipaCd//JlKxXaA7kXGMtYwTfbDW9bSsoZsllsTJZdL4J0iyJR1xhm+
         QRxkvS4PBwIhWhzGV7TKypCKXOhmB0rNmqMYfr5o6o2/xc/B+167MxipSw/Y1Awh6JX6
         GkcgONltTAQ4WAgrIoC3t7czvPPYHhI6rzPU9p7SHQBb2MLch8Fu7Uc3CcSBaW7m4S39
         8KXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773767696; x=1774372496;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=yB6RmntczqRFUMYtWGGfsH29TNbbMgoNZLAW4MMdSzo=;
        b=OnTmv9/hUaZdf9W6qlwZASEXnA01t0c0MVzerI5Gyqx5DCwsPA/eB6imp8ixGCDRUG
         cyAojNeGyPvSqzyEv/T1G+2B2IxhtIPbf64WS4q0w9VSyp5JnZNTsRonPf0Xe/HbkcGO
         G8M1MczA540f9Knss7/STny2NT90TUvvjsSVFpbmWZje6jzUpvfA6TYNvT4ltXmmz6h4
         z8O+/Cr3rxLbQem0QJsMlkzqFGaGgU/+OJaB8h30j+Ogdd2cUNxaNGYkNT+TG2HZWdHz
         dL1ArOWbq3666j9qO+E93rTC1e4cAYsDIvtZxzFUS9+r0r8VzMjp9vDezhSPyn7b546E
         VPBw==
X-Forwarded-Encrypted: i=1; AJvYcCUbLChWueIWNFEOE9JulqoL0fZ5KSMCFvsD6y//B/tDPC5qwwqBVCT2SpSsEF3vZheQFqF2D1GIpqBQ@vger.kernel.org
X-Gm-Message-State: AOJu0YwgqrqXGmoh9SE0XZTxFCYBI7kyoFtmHK4V3wpKTmwvVAR1tiGv
	lUrvKFyFQ2O4XUvqX/f15CEF2B+kvLQ6mU5VS9E4KSAt3NnCh+h8pi6PRKODrqC4hyNZUbVfVTL
	BeyoPDMpoMzsLMXEA9qt3JR5/3j5ZmuWMVqhvwSr87CDcqOkGrynFjZmpixYgGIDL
X-Gm-Gg: ATEYQzzp7T804+PYoCThS+Eksnq+ReaFW2B2v9hsS0lSU1CLH7mpPcUh+qV+iFj4anl
	0hrmjKgNp/q8ziMO1RekPyo/jJjuZRf/y39cwDumYrXrpb82etDpP/PqJyJYrp87UMQQ3bfXQXk
	eWtmfEpclasaLKESmn4NdHSQsr3G9+r7h8TUqfhm68/K8iljY36EvpMIXp7Qls8yoq69NRJSvy2
	pViXBqSYDrsMpiOyMsyUUrL0wg+77POgiRgTqPTtmiCKCZl45L5mJrtE3KBXj8GIVfh+jSy2juT
	suHqvfhsf9wnnx15Gcx0LR3K3XkEAmrjOzrpXAMb2rjJ950KY3hFbHtPDZOp1HEcV6angnSCJKT
	mIqMRgZsgOGjRurgREeD64m4yf//oVEajTrUYexWZvij7vw==
X-Received: by 2002:a17:90b:2f84:b0:359:8c01:674 with SMTP id 98e67ed59e1d1-35bb9ef5f24mr191410a91.22.1773767695183;
        Tue, 17 Mar 2026 10:14:55 -0700 (PDT)
X-Received: by 2002:a17:90b:2f84:b0:359:8c01:674 with SMTP id 98e67ed59e1d1-35bb9ef5f24mr191376a91.22.1773767694568;
        Tue, 17 Mar 2026 10:14:54 -0700 (PDT)
Received: from hu-tdas-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-35bb9f1cb48sm28919a91.0.2026.03.17.10.14.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Mar 2026 10:14:54 -0700 (PDT)
From: Taniya Das <taniya.das@oss.qualcomm.com>
Date: Tue, 17 Mar 2026 22:44:23 +0530
Subject: [PATCH 2/7] dt-bindings: clock: qcom: document the Eliza GPU Clock
 Controller
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260317-eliza_mm_clock_controllers_v1-v1-2-4696eeda8cfb@oss.qualcomm.com>
References: <20260317-eliza_mm_clock_controllers_v1-v1-0-4696eeda8cfb@oss.qualcomm.com>
In-Reply-To: <20260317-eliza_mm_clock_controllers_v1-v1-0-4696eeda8cfb@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
Cc: Ajit Pandey <ajit.pandey@oss.qualcomm.com>,
        Imran Shaik <imran.shaik@oss.qualcomm.com>,
        Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Taniya Das <taniya.das@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-aa3f6
X-Proofpoint-ORIG-GUID: KeYTt4980QIn3VSE1YyHCu8rmBMv47l0
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE3MDE1MiBTYWx0ZWRfX+D4bl56L2KuJ
 563YpXDsvrFSXHau7Cx5qCiWi+f5hhZToGUHdZN0TOrQ22HHEoVNx9R9u+ErqXB7uSSqY1cxlup
 Pr/jiHkBuFxSPIvXcqIKh8KW+q02uR6AubsyIYLNKr9Ak2wTphd02nSMjtWXdAm0x+NtFdaq4s9
 vh8NtrPCC+Q2pkm2G0a+k1BIcdGiZXPDCpUeM5zhBCz7y7iMoS9UuYEvvAcfGOCiaij+ROyV9MR
 h7vdekch2Wcs4TVweQ5rlxXgZn+L+TZJH/WIe9JxXUzNZlHF7XoWBJayxUIXj82Q3Onm+STPOyS
 nTHljEvT9kAKGfx4ebdJtBw/Zj9uyzHZufA6J+ND9kD+4xVnLmdax/6A3AVhu9HIWS+XGnJXgWb
 4VGQ/HqEP2qsnUDcYgF3M5Lnux6bJMviOa7GUm5gjOWeB0axSsg0P5EBlj7YSJU+QK9uK1JDrcm
 nIHfkkkV82n/+1Zkopw==
X-Authority-Analysis: v=2.4 cv=fa6gCkQF c=1 sm=1 tr=0 ts=69b98c11 cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22
 a=EUspDBNiAAAA:8 a=eqSiwPykCNIpSPSkj8oA:9 a=QEXdDO2ut3YA:10
 a=iS9zxrgQBfv6-_F4QbHw:22
X-Proofpoint-GUID: KeYTt4980QIn3VSE1YyHCu8rmBMv47l0
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-17_03,2026-03-17_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 priorityscore=1501 spamscore=0 lowpriorityscore=0
 impostorscore=0 adultscore=0 bulkscore=0 malwarescore=0 suspectscore=0
 clxscore=1015 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2603050001
 definitions=main-2603170152
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[17];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-276784-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,qualcomm.com:email,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[taniya.das@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 20D092AFF4C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add bindings documentation for the Eliza Graphics Clock Controller.

Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
---
 .../bindings/clock/qcom,sm8450-gpucc.yaml          |  3 ++
 include/dt-bindings/clock/qcom,eliza-gpucc.h       | 52 ++++++++++++++++++++++
 2 files changed, 55 insertions(+)

diff --git a/Documentation/devicetree/bindings/clock/qcom,sm8450-gpucc.yaml b/Documentation/devicetree/bindings/clock/qcom,sm8450-gpucc.yaml
index fdbdf605ee695637512ce4f98c9b6fcfacb9154f..734bab762a30800bda94c726f48013679f9ec542 100644
--- a/Documentation/devicetree/bindings/clock/qcom,sm8450-gpucc.yaml
+++ b/Documentation/devicetree/bindings/clock/qcom,sm8450-gpucc.yaml
@@ -15,6 +15,7 @@ description: |
   domains on Qualcomm SoCs.
 
   See also:
+    include/dt-bindings/clock/qcom,eliza-gpucc.h
     include/dt-bindings/clock/qcom,glymur-gpucc.h
     include/dt-bindings/clock/qcom,kaanapali-gpucc.h
     include/dt-bindings/clock/qcom,milos-gpucc.h
@@ -30,6 +31,7 @@ description: |
 properties:
   compatible:
     enum:
+      - qcom,eliza-gpucc
       - qcom,glymur-gpucc
       - qcom,kaanapali-gpucc
       - qcom,milos-gpucc
@@ -71,6 +73,7 @@ allOf:
         compatible:
           contains:
             enum:
+              - qcom,eliza-gpucc
               - qcom,sm8750-gpucc
     then:
       required:
diff --git a/include/dt-bindings/clock/qcom,eliza-gpucc.h b/include/dt-bindings/clock/qcom,eliza-gpucc.h
new file mode 100644
index 0000000000000000000000000000000000000000..706e1c93240a8234dd8017ee181d19e58091fd6d
--- /dev/null
+++ b/include/dt-bindings/clock/qcom,eliza-gpucc.h
@@ -0,0 +1,52 @@
+/* SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause) */
+/*
+ * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
+ */
+
+#ifndef _DT_BINDINGS_CLK_QCOM_GPU_CC_ELIZA_H
+#define _DT_BINDINGS_CLK_QCOM_GPU_CC_ELIZA_H
+
+/* GPU_CC clocks */
+#define GPU_CC_AHB_CLK						0
+#define GPU_CC_CRC_AHB_CLK					1
+#define GPU_CC_CX_ACCU_SHIFT_CLK				2
+#define GPU_CC_CX_FF_CLK					3
+#define GPU_CC_CX_GMU_CLK					4
+#define GPU_CC_CXO_AON_CLK					5
+#define GPU_CC_CXO_CLK						6
+#define GPU_CC_DEMET_CLK					7
+#define GPU_CC_DEMET_DIV_CLK_SRC				8
+#define GPU_CC_FF_CLK_SRC					9
+#define GPU_CC_FREQ_MEASURE_CLK					10
+#define GPU_CC_GMU_CLK_SRC					11
+#define GPU_CC_GPU_SMMU_VOTE_CLK				12
+#define GPU_CC_HLOS1_VOTE_GPU_SMMU_CLK				13
+#define GPU_CC_HUB_AON_CLK					14
+#define GPU_CC_HUB_CLK_SRC					15
+#define GPU_CC_HUB_CX_INT_CLK					16
+#define GPU_CC_MEMNOC_GFX_CLK					17
+#define GPU_CC_MND1X_0_GFX3D_CLK				18
+#define GPU_CC_MND1X_1_GFX3D_CLK				19
+#define GPU_CC_PLL0						20
+#define GPU_CC_PLL1						21
+#define GPU_CC_SLEEP_CLK					22
+#define GPU_CC_XO_CLK_SRC					23
+#define GPU_CC_XO_DIV_CLK_SRC					24
+
+/* GPU_CC power domains */
+#define GPU_CC_CX_GDSC						0
+#define GPU_CC_GX_GDSC						1
+
+/* GPU_CC resets */
+#define GPU_CC_ACD_BCR						0
+#define GPU_CC_CB_BCR						1
+#define GPU_CC_CX_BCR						2
+#define GPU_CC_FAST_HUB_BCR					3
+#define GPU_CC_FF_BCR						4
+#define GPU_CC_GFX3D_AON_BCR					5
+#define GPU_CC_GMU_BCR						6
+#define GPU_CC_GX_BCR						7
+#define GPU_CC_RBCPR_BCR					8
+#define GPU_CC_XO_BCR						9
+
+#endif

-- 
2.34.1


