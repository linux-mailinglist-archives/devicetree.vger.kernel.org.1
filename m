Return-Path: <devicetree+bounces-273431-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qOkkEhDtr2nkdAIAu9opvQ
	(envelope-from <devicetree+bounces-273431-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 11:06:08 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id E6AEB249101
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 11:06:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 39C6F3145B6B
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 10:04:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1AF3F44BCB4;
	Tue, 10 Mar 2026 10:03:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="EUrmS35C";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="fFRvFCC5"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57188441033
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 10:03:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773137038; cv=none; b=M687Mp6ZMbRVnNqZsinTlp+afjBGHk+gz6SeFsBp2x/4szAOEKUPX50pPi5I+GbIvOHbGQr+7NnXKIntD5MEZiQY1t6+ZhUe0TeAWYnN016YFk/9W9u+BKxdTp5lvsexRPGecpkgY0bgQ0wBNcG69sEsiMRWxC2ufc1xXay7loU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773137038; c=relaxed/simple;
	bh=gZbvYWxtnltp+9V8OICF8P4ygq3AOAwfyaCIqwTHoxU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=tD+5dDS6gsJcleGhHz3Xhrmw6KdoI7Fj7GX3bLbKpoDNHmc/JwfqkoO7RupEvKOD52tEynt5E6Qp1/Jn2qo3Ew38GmA2HnESH84LNVx6+IAUpDTA/ccf8buDNjttg0gnPbdqSvfVDi69CHSRjOH/NQgtvXkwFStjpst82ujmmAM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=EUrmS35C; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=fFRvFCC5; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62A93eR42020760
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 10:03:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	OFptXoNQy3MKnCAaLmFatsHFB8MF2GLKpS3f5re0I1Y=; b=EUrmS35CpQatMFFJ
	Fa3xclvIkrBLk7+8cvVhVbfp8Hot/oobQLBLQqGfS+6wAI5tfSRmbYlWy692REmX
	CxjJkEiKTNlVpKbJ53HaWgFuW/rfcBnSYU8wLNuQBgkqS9MDUu/DVke4FVbH7vRK
	lqnsKZGtOLDXoJUlQnGUdMjtZz3OfgmI19PdCRDybv0OwzYsZHAzDmOs7g8E41WE
	Zlcwlji+xi8OoudNWE9Vr91+WpcQbIVg9I9MHRbQ0jDwy/SOXd7CNuUq90BExW9N
	g5Xb4Fj7zsfWHPiohWFVt3ekjs8yojUwuZXjfIIinZOy5se+BrBpq9TiYyaf5OeC
	1j2pdw==
Received: from mail-ot1-f69.google.com (mail-ot1-f69.google.com [209.85.210.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4csyhbupj4-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 10:03:52 +0000 (GMT)
Received: by mail-ot1-f69.google.com with SMTP id 46e09a7af769-7d7536294fcso11474514a34.0
        for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 03:03:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773137032; x=1773741832; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=OFptXoNQy3MKnCAaLmFatsHFB8MF2GLKpS3f5re0I1Y=;
        b=fFRvFCC5a60w5r6ycNnVjDNMLVQoEiHaEf5isCMkwspQeMbTD4CyoO9dBmXrsc6W6g
         uvdHaw1Ox7h7saDrrI8FGRxyLClPs6bLD9ntu+85Hm3zrfv0964qGt/3Iy0hvKAB1u63
         8BUTgZUCU6dfBTcHlodQPI4tcNw5zBxZ+HdKmck5S4TjmKBzJKSUo2UeQjrbc2AA3gY2
         gF5brEu7UKRVQs3FHCjgdKW9nfjvzIYDTCfJAxWWcXInrYLOul+hq7D/lRFTB9HQ97Ry
         ypIdhvfcfCzpmzwZ72mgEcYp+SqoIiMXl0GgdrKZz3S9/yCTiF9qEWS2WU7nQAoP1KB7
         WDxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773137032; x=1773741832;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=OFptXoNQy3MKnCAaLmFatsHFB8MF2GLKpS3f5re0I1Y=;
        b=iASM8xGWjp12i6HpqLe1iq9vR9pEn226DmN6yC/fEfIR5qBCgJhkm7qFQibCNPDnVa
         CQHGkPoevyosKnseH/Uphwu9a8WykC166sck305cG+mdnY31B/Ow2JzOtVHj1pTQEb6b
         xGXQQpI5OX8Tt7Jz2yRHEcIA2pIVATMjbChLeTEeglfV1qMyVP1q76bwaBatKj/3Mkd8
         H1gVtzZ9BKRyG4e/KXrk0RkDfvkM4zpsFCgb5irg+gxzQ32M1sdB70g8RMpeyPdoNDzG
         QBfzkNzuOoi5bhfU2MqlamKzEujlg18VKIzFXzYs+VMyjH6eXX4TwoTr0AsfQiy443/x
         QK/A==
X-Forwarded-Encrypted: i=1; AJvYcCVyAnop5RDcgFRo3cE6MiFwIp8hgVyxSdVGqCvc0xXucZ/j5XpjoAamRag/fTACZsMdkrB+kAQjIW5l@vger.kernel.org
X-Gm-Message-State: AOJu0YxPava3mWBBQpjDNFLAL4tWtvohS3RptIYl3B0hyV7mthWlxLnE
	O7yxf+Clpe7UjzxIsQNg7wgPmthuitUG44N4JO/Lj/1M7k/o0X1ioVQ3GDDPRtjlELfR9lhQ/zO
	egd2QxBWAsQETpBnjHv5/o5PtHHd/sZ6AOBqUItAyKH0zBfdyKQrgX0w6oNNRY6j7
X-Gm-Gg: ATEYQzx9H7MdUJPTZTTF5QYk0yz41vae/yqD0j3+IYuDOfuAw7lKQ9AaHi21NFYaYx1
	1J2L47+9ID4QuXWuuDzUwsAT61jbLoklhdSJqGnyGIXHbj+Dxgs9RA03kSDOfjPVTB2n7gOOf+T
	Hd7ee948B9X3dqLny+b2IEMX4B+lwuuYSCz6mawkU0vdbwbQh204pDm32TXd9/3mDTrEd+eeJO7
	2irnQ2mey3jHlrlFqS81oe1DxSstY/OUY8NEEbS3eKrr8sUrWtBwTXV4kuyIp+QN2+cK8C9UIfF
	YYfWNRZpjNiJGFVTG+tyxpbP8rljna2i+qaRburlVpcBkhZK9lZ+F99a2nOnO+qVbpSK2ciO/n0
	r50pmjHFCCk5Uygo2qJ2zywDN5HIcMlDrnW9v6SNYL3MQWUQfgV/1TLwELzF+ATYlL3oryLPD
X-Received: by 2002:a05:6830:8289:b0:7cf:cbff:85e6 with SMTP id 46e09a7af769-7d759b01ca0mr1760789a34.12.1773137032445;
        Tue, 10 Mar 2026 03:03:52 -0700 (PDT)
X-Received: by 2002:a05:6830:8289:b0:7cf:cbff:85e6 with SMTP id 46e09a7af769-7d759b01ca0mr1760775a34.12.1773137032126;
        Tue, 10 Mar 2026 03:03:52 -0700 (PDT)
Received: from hu-jingyw-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7d746bdecbfsm4337611a34.10.2026.03.10.03.03.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Mar 2026 03:03:51 -0700 (PDT)
From: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Date: Tue, 10 Mar 2026 03:03:17 -0700
Subject: [PATCH v4 1/7] dt-bindings: remoteproc: qcom: cleanup
 qcom,adsp.yaml
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260310-knp-soccp-v4-1-0a91575e0e7e@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1773137028; l=2735;
 i=jingyi.wang@oss.qualcomm.com; s=20250911; h=from:subject:message-id;
 bh=gZbvYWxtnltp+9V8OICF8P4ygq3AOAwfyaCIqwTHoxU=;
 b=nnlIQkEY1s8hcXkzRR+Eh6R7DeJfAHlqsWXsssc7kSeNnxeTIoagGOKUomve+vyqkq61estpT
 bGh9e5qZyEfCbwrpRBt43TAqJlMlOKL8JdqKme9tD3/sej7BXizSwYo
X-Developer-Key: i=jingyi.wang@oss.qualcomm.com; a=ed25519;
 pk=PSoHZ6KbUss3IW8FPRVMHMK0Jkkr/jV347mBYJO3iLo=
X-Authority-Analysis: v=2.4 cv=Rcmdyltv c=1 sm=1 tr=0 ts=69afec89 cx=c_pps
 a=z9lCQkyTxNhZyzAvolXo/A==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22
 a=EUspDBNiAAAA:8 a=VspIq9AKIDY_7iLw7w4A:9 a=QEXdDO2ut3YA:10
 a=EyFUmsFV_t8cxB2kMr4A:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEwMDA4NiBTYWx0ZWRfX67SGVdW1ZLON
 8zKVzgd5ueeK+jvn59jVgbEhGZCxya7V04EBvqOEXxhYo8uz3fZxLAeocyC82AVHgHXSYTjfblZ
 eMY+leE8ziEoQ0N1t4VVYpKC80dir/Dsgaa1AWuEhnj5PtRIyJuV4gFvKaRyOVDUSz6OD7akNVz
 lPmurj5Cf2/2D4n1FSBlLtvKoGXOrJQQf1oVEsJjaHher02dH4S4y9d6RAnjO7tVnhEasG53Zq9
 6OhvOvCEJQJZkH/06o+QMrUl55Vqd4K001YIHn19+IJ2ykXCKb8lgdgkv5lFM7+L3IDyNGKCKYF
 6bbe+Yf8bAcwtBE9XMtFdXf1Zza+lALWPYAZxQU9ZD1w3G+10E8eaLzSJWsvLOCqkXrA9PP9m/J
 taeUt96Zl2yFChAsjYUi8p5shjJck93Q9V+sToqDnHOZaMEqJxo/Q3ePOHGxw0eqvO5u4REHuhs
 1TXfGqsp4B/p6yLBwnA==
X-Proofpoint-GUID: uyW-XW5G_idSAtsx1U-cKYeEEE-mOUr6
X-Proofpoint-ORIG-GUID: uyW-XW5G_idSAtsx1U-cKYeEEE-mOUr6
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-10_01,2026-03-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 adultscore=0 suspectscore=0 spamscore=0 priorityscore=1501
 impostorscore=0 clxscore=1015 bulkscore=0 phishscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603100086
X-Rspamd-Queue-Id: E6AEB249101
X-Rspamd-Server: lfdr
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
	RCPT_COUNT_TWELVE(0.00)[18];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-273431-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,oss.qualcomm.com:mid,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,qualcomm.com:dkim,qualcomm.com:email];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jingyi.wang@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

Items in qcom,adsp.yaml have common clock and interrupt properties, move
these out of the allOf section to avoid list the compatible repeatly.

Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
---
 .../devicetree/bindings/remoteproc/qcom,adsp.yaml  | 64 +++++-----------------
 1 file changed, 14 insertions(+), 50 deletions(-)

diff --git a/Documentation/devicetree/bindings/remoteproc/qcom,adsp.yaml b/Documentation/devicetree/bindings/remoteproc/qcom,adsp.yaml
index 16a245fe2738..a270834605da 100644
--- a/Documentation/devicetree/bindings/remoteproc/qcom,adsp.yaml
+++ b/Documentation/devicetree/bindings/remoteproc/qcom,adsp.yaml
@@ -32,6 +32,14 @@ properties:
   reg:
     maxItems: 1
 
+  clocks:
+    items:
+      - description: XO clock
+
+  clock-names:
+    items:
+      - const: xo
+
   cx-supply: true
 
   px-supply:
@@ -49,6 +57,12 @@ properties:
     maxItems: 1
     description: Firmware name for the Hexagon core
 
+  interrupts:
+    maxItems: 5
+
+  interrupt-names:
+    maxItems: 5
+
 required:
   - compatible
   - memory-region
@@ -57,56 +71,6 @@ unevaluatedProperties: false
 
 allOf:
   - $ref: /schemas/remoteproc/qcom,pas-common.yaml#
-  - if:
-      properties:
-        compatible:
-          contains:
-            enum:
-              - qcom,msm8226-adsp-pil
-              - qcom,msm8953-adsp-pil
-              - qcom,msm8974-adsp-pil
-              - qcom,msm8996-adsp-pil
-              - qcom,msm8996-slpi-pil
-              - qcom,msm8998-adsp-pas
-              - qcom,msm8998-slpi-pas
-              - qcom,sdm660-adsp-pas
-              - qcom,sdm660-cdsp-pas
-              - qcom,sdm845-adsp-pas
-              - qcom,sdm845-cdsp-pas
-              - qcom,sdm845-slpi-pas
-    then:
-      properties:
-        clocks:
-          items:
-            - description: XO clock
-        clock-names:
-          items:
-            - const: xo
-
-  - if:
-      properties:
-        compatible:
-          contains:
-            enum:
-              - qcom,msm8226-adsp-pil
-              - qcom,msm8953-adsp-pil
-              - qcom,msm8974-adsp-pil
-              - qcom,msm8996-adsp-pil
-              - qcom,msm8996-slpi-pil
-              - qcom,msm8998-adsp-pas
-              - qcom,msm8998-slpi-pas
-              - qcom,sdm660-adsp-pas
-              - qcom,sdm660-cdsp-pas
-              - qcom,sdm845-adsp-pas
-              - qcom,sdm845-cdsp-pas
-              - qcom,sdm845-slpi-pas
-    then:
-      properties:
-        interrupts:
-          maxItems: 5
-        interrupt-names:
-          maxItems: 5
-
   - if:
       properties:
         compatible:

-- 
2.25.1


