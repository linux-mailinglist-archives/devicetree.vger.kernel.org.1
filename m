Return-Path: <devicetree+bounces-250485-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A5370CE992E
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 12:48:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id A22F83016903
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 11:48:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0BBF92EA143;
	Tue, 30 Dec 2025 11:48:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="b4EV8odo";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="OGc3bYBR"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8FDAC2EA158
	for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 11:48:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767095334; cv=none; b=DjpRod9zd7jkg75tdrNZ6UOtMtHz+BQ9Q0NA3um/XY4exD3t+utgZsaWYSRNv92J6n3jqXueY0DP4i1YFe56mAAB/zqSLxsRFgQ5jE4Y55FtJ4b7S8uVHUOJYlr+jcQgnLjcYkGKwYVpFfowJHO8NdvlQ83FcaZOs0Y6EScudB8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767095334; c=relaxed/simple;
	bh=lAyvgKKpxUpCZonkIlZPIQ67jJXIdL9qvmQBennlyWA=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=PEHlvsPrRokcLG3ydA5y2klE0BseGKnIeoh0hiPz377b7j5MlrT5xpZ0+KEgAuDX/rEKhFWPOf8oAhKGp6tTohHVpzLh/yfScg8vuIBzMuP3Eyi959CjBGPWFZk0UyyCYfT2+EqWs93feHvQNDwB+mz4jFmSlbsX7rIoL7lG+kc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=b4EV8odo; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=OGc3bYBR; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BUAFDuC2557810
	for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 11:48:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=6gblwXdx1w6zeAfSq0Ah8UQfgC2QXdkAi6Y
	w+qrgTSs=; b=b4EV8odobWNQ3gyKq8GaYk9NBDr5mhm5tc+ZN3zjcdfLWukMy98
	2hUobZVtGI9z8Il+MZ9xOP+ncZ1VT6NoaJOjLA77L7rAUdf8NqKHdEcho8+ZGo18
	9uLH1Jn60kVzEwfdvn0Urb/vUXFZuzSnruvuz+rbJGxktWZXj9aX8WNV4rTZebl3
	wBzeQh36XgMGD6PyP9VRDh0R3puZBYFe1ZX2uDpFjSEcBxsRxxDcPeM/H5h6bxm5
	mOzS+KcmHncXZ/2oCnJd7B8oJZ3CMAte2TBuIX2g1kp68NuPoajQp5c8vkOiujgG
	TEUunEpURRL7HVxuN5nAItjpdtECl+fAIQg==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bbqk1b1wj-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 11:48:44 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-88a2cff375bso227468666d6.1
        for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 03:48:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767095324; x=1767700124; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=6gblwXdx1w6zeAfSq0Ah8UQfgC2QXdkAi6Yw+qrgTSs=;
        b=OGc3bYBR39YZe83KQzDW9rYVu1zmb3eue8bB7voHOPNLSYjaO5jX5pUbmJf1DKKvRU
         UTzTb2aLkikbnoO8sWXwpMivIsHSLz5C5qtdyVtQE+va7C4ztkUukrD99jiEnIOLDXRB
         W+43g9/Ht+tBlW+aSgBvAp+59SbpgDu98TU+SybYJIvb/2KissUPJ5WMD1U8agVZMqcN
         Ipl5F76s4Nh3FQ6Pyh1lpBzNQDNWVrExZEcLMZjlpbVKHDC/aqS7j6QO6QjOQKZt48Wq
         il9RhhGjcwnqSOLvkZKMZqAJLoJEGXNv68D8EDJ3NPQfky/8sxv+bv7+ixHYEn0UCKT2
         A0ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767095324; x=1767700124;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6gblwXdx1w6zeAfSq0Ah8UQfgC2QXdkAi6Yw+qrgTSs=;
        b=At7UIEXBTGHZOHA2gcElawneIetL02LEYiTuJyDPJjwP1SY4FLnjaG+saVcIIbw/Gy
         tPZ5uhFpWk7eg0wsANG0x6ylQpkdOoRMBweWpQLlbgL77DhoG90Cj8OZXGHPr0v/dxOb
         vhrMwpEGJOYOzTR4/LvVU+p6F3MVHQxNHSR4joNjOn0p0OMYD6hA1zqAmx6oc9V1wfQ9
         HDrvWqPt5kPWaZG9snVwNF1EuC+mSmsbCHvbsndPEXsj/Pmowb06CauOWF47PkFoCuRV
         DO+RhXBH6e3hTTSaDu2Y/5X4tTahB71SowuaIaPzXZT+cwa22xA7FbSveMLCZOW/TVeB
         Banw==
X-Forwarded-Encrypted: i=1; AJvYcCX0aBgBKgWq8T0Ss24dPHvNJ7wMom+xESnndMYn/HA533uUVxjOXW3PoBlbNdl0HuC8CnNr3R3LOTKy@vger.kernel.org
X-Gm-Message-State: AOJu0YwSNYHqhra4expP/auyEchT3v57avRZua8LG/vsLxUmjxKCV0wy
	V8jUufsHsfSaG0Ldjgs/JsO7YlO4eNBtfefhq+Nm+2OVdmIz1m9HnfIQrSAl3j+yTJs8GiQHCbb
	detF6f/Vpj1g7/9e3xga+bQYJVAqAhaY5gAHsVD4i+VRzJsn33Fi72lQBsErUpZho
X-Gm-Gg: AY/fxX50GHElln/DyIYLlF38kLMhdwUkokDJBsq43V0XXg6GROp3zCl8/3LvEoXGLdV
	TAmpcUSuFcczGsYLNsD6mP1ELEZI1wYSTBf38L6lMenqyvF48FREJi5Z74W1meIjtA0y8sO+PdL
	UFNFc28tXXv0EMmLVVaT8UoJR4oPhduxAP2x6L2jbWnu2T60Iu/msCDemCJu4YBUzblF+ZfLglY
	DVg8jNhudLPPfkkSCBhzMcQzIAGaUh29BUIJ9OgT1ODzzCB/aUqw+CvRi4sWgqlrvGDqM4dGDcN
	wB8g6N7BQbWLsCjNvhkjZ0NfCihNBQiSHipj8inRuaJ+rM+FiduZs8kff+ryrXV46haVJgtbdY7
	FuIxRalKZZ6XTMLU8Et78QLnl4g==
X-Received: by 2002:ac8:5d14:0:b0:4ed:e40c:872d with SMTP id d75a77b69052e-4f4abd93b38mr420088181cf.59.1767095323918;
        Tue, 30 Dec 2025 03:48:43 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFT2CyFCv0kChh+/rJ7qFH1ir6g/EgKmb5547xvY2AGQtQgM6N/P6krs/2LT5m1Gxwmi5VU4g==
X-Received: by 2002:ac8:5d14:0:b0:4ed:e40c:872d with SMTP id d75a77b69052e-4f4abd93b38mr420088001cf.59.1767095323509;
        Tue, 30 Dec 2025 03:48:43 -0800 (PST)
Received: from quoll ([178.197.218.229])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43277b0efefsm34802877f8f.25.2025.12.30.03.48.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Dec 2025 03:48:43 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
To: Johannes Berg <johannes@sipsolutions.net>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Jeff Johnson <jjohnson@kernel.org>,
        linux-wireless@vger.kernel.org, devicetree@vger.kernel.org,
        ath11k@lists.infradead.org, linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: [PATCH] dt-bindings: net: wireless: ath11k: Combine two if:then: clauses
Date: Tue, 30 Dec 2025 12:48:36 +0100
Message-ID: <20251230114835.52504-2-krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1042; i=krzysztof.kozlowski@oss.qualcomm.com;
 h=from:subject; bh=lAyvgKKpxUpCZonkIlZPIQ67jJXIdL9qvmQBennlyWA=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBpU7wUljIvkOtmX+Z+bkysoiEVpeQbXRIwAvk2Y
 skPD9L6LM2JAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaVO8FAAKCRDBN2bmhouD
 13heEACBodmZ41wf1yFk7HyKQ/dqO+OqYHQb4hCGMPfwrvEGpumQa4LNARPBc3Rfl5ST/aXDazD
 XGYt8Yuqx72rApNn0vyIe6mo5ef0kaNGY9WbtqcwJdrYdFzwI5eauiGzeecvp2BiNSX3OtrjiZD
 xoefzt0D3irAEYutb2Yvz6kD0bbdbgj+TKH98kjwP4pBlByXn+S6iCtmtU898RVHSIk6hEEw7S7
 UJj1X+a96nUIwCprSM33lfpuC4Gt4IFBeXRMHyG6JNV0+ojjVVnlCybmzOIY7QR9IKXyDJMJtSr
 Rl9k6W5bCIFmzTuVL595TB43lI/FRGGlb5mgqb/nK74sBIpzm2RQRmgxmzgojS/djO7NoV1U2p8
 IGRe5mrVisqJO52SNRsjB02C2VnJ9+VpQ6nZBrBHiskOyZp18OhC18sCUsjIKfpE6d4IdMPxqcz
 kTdE9EYfJkI/IitJ0uanDBLapC+J0JEADt3NyYpgbbqIQewZS8WMsp8lDtCsRwuIN2jUKT3kbft
 Q0Ld0Ipw/BYns8/3rZZvJaDfaoq1XCZWPnSkSCCk6HKBabldhIQGjeWbf5r+PimzZL/foCgBaX3
 fZMwV3LYu0Z4KLX+anXtLIrHat5WE7pmJcuWKwiTW496IKDi394+oLM9U/DPdiCcBEWoApN8bz3 6ziFiMHMlj+e7mg==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp; fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: 1mC17h_1HI-26kSSvM8qjB_XKaP-NGlJ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjMwMDEwNiBTYWx0ZWRfX8Ce4Rw8eXjAr
 lazZ13IxPSLevPTZhCvtGiQITMjbcrtB7oDtZGL+Vpb7+6HYqV646wvCTK7IqT39V/Rcm8WHoYm
 WGXCbopu4X11AkkOwNeIgBHXaoIc3khffuPP7GWbCDWxV7kiBxh2Tq8lUu+grFifZ0QFm3YO3mq
 GxrmuoECcl4fAVpGvarVqPvR6uOyfPwA4IOv7QnwMKYprhbqz8vuJAnyfPzWB8G01Ikn9NFH34i
 n61IUIIOtGLllrhApcDwDqYbu1pRsBHi5fC0k2LVSPAoW8JQfWPdmadGJw6GM1sNQszN8R/1Gav
 NTm374wq5hQM6lFjuLq7/XHVXdAFFyottD7GmJim5oOFZaq3fIOM7AtHFxESt4IohWfGXtgfSJj
 tzDkcVtgb2d+cUBsV+ak61VbSphBEOFoE3Ko/CU3BarVh7N8A2aLFMwJZk5Czfpi43UjdU7qyb2
 dJqtlk4LmiEMt1//OyA==
X-Authority-Analysis: v=2.4 cv=Tf6bdBQh c=1 sm=1 tr=0 ts=6953bc1c cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=Eb9f15NH/cHKzfGOmZSO4Q==:17
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=pcR5wRsarG8z_4OSWGYA:9 a=iYH6xdkBrDN1Jqds4HTS:22
X-Proofpoint-GUID: 1mC17h_1HI-26kSSvM8qjB_XKaP-NGlJ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-29_07,2025-12-30_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 clxscore=1015 impostorscore=0 suspectscore=0 malwarescore=0
 spamscore=0 lowpriorityscore=0 phishscore=0 priorityscore=1501 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512300106

Simplify the binding by combining two if:then: clauses which have
exactly the same conditional part.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 .../devicetree/bindings/net/wireless/qcom,ath11k.yaml    | 9 ---------
 1 file changed, 9 deletions(-)

diff --git a/Documentation/devicetree/bindings/net/wireless/qcom,ath11k.yaml b/Documentation/devicetree/bindings/net/wireless/qcom,ath11k.yaml
index c089677702cf..0cc1dbf2beef 100644
--- a/Documentation/devicetree/bindings/net/wireless/qcom,ath11k.yaml
+++ b/Documentation/devicetree/bindings/net/wireless/qcom,ath11k.yaml
@@ -214,15 +214,6 @@ allOf:
             - const: wbm2host-tx-completions-ring2
             - const: wbm2host-tx-completions-ring1
             - const: tcl2host-status-ring
-
-  - if:
-      properties:
-        compatible:
-          contains:
-            enum:
-              - qcom,ipq8074-wifi
-              - qcom,ipq6018-wifi
-    then:
       required:
         - interrupt-names
 
-- 
2.51.0


