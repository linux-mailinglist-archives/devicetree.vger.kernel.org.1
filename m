Return-Path: <devicetree+bounces-276783-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CPwfBBONuWnkJwIAu9opvQ
	(envelope-from <devicetree+bounces-276783-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 18:19:15 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id CC2862AF500
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 18:19:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id EC56C305E529
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 17:14:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D65B53F65FF;
	Tue, 17 Mar 2026 17:14:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ceaBeWjs";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="OD+3xGDP"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 83CB53EDADB
	for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 17:14:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773767692; cv=none; b=iCBjHxBwxnbUmeyYubpEKEAFalr0npJXAUWlJJoD251YP20aO/5+F+ao7yNGvWlxr2xZe9j+eTLZQHOp4dSYHYcnUytzfqWoxta8gHXqVYDkutPzMOwZ+7qQNO2TVQR3EUY/RH3U9BRfoyGayUuOrgG8LKRA9m/O7F2wvLgq9wY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773767692; c=relaxed/simple;
	bh=yUq8vA83pgV57rYPVhN1wFHNEzaLH5vSsRdN485+bpQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=kBiPZ4FgWhePdiBNeW2lGq3HFhz62TBBzU7ETEsEhl1utFjjyjGxc31afkRJrWq7Fe5YNbdi1dIeyL4Lmk4JPaYfb3hwiXiYofY9uUE+czdBdz32wTtv8G8p7C1KIUpTxLnrSYOUDNFZLOk1rGYcOH6BUDQPRQKuGJ5OOre1Afo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ceaBeWjs; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=OD+3xGDP; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62HFORZT537051
	for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 17:14:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	JSN1fGj+shIHoomLoHHQFmz+QmTzvHPToGcONz2oTRY=; b=ceaBeWjswIg0qZfh
	ttRV6wLp4bBUgX2DsaPJR1sSLYb/hznOZjYQ5DX7mb0NS643YkAUjtRwTzoslQ67
	pnUPfhGTokViMfxrD1edIzXc6msnSKkN5oTpZdBjztsMXbmqjyeBQw3dLwvN4OQC
	70GKEHp6tDYliNq5GdUpi9zVjngwjtaGP71dRIYiIhsQlmrWsA//tcH5LL/7BUZA
	kVSmg7bm7F+lrBYiaxumDQFr4nmmxxIP5aeoXv0SP/rxP2yCOgO3vBNECMw2UTQd
	QNxgLWt1yKU6E63HaCRGdyC51GcoWcOOWoYriZVqlD6YLVp5xVBHq/jK9nzILwNu
	WkjVTQ==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cy9jr0epw-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 17:14:50 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2adef9d486bso83899535ad.2
        for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 10:14:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773767690; x=1774372490; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JSN1fGj+shIHoomLoHHQFmz+QmTzvHPToGcONz2oTRY=;
        b=OD+3xGDPQrIHclQQ2vteeYcqichojHnpivKfdVwA3m9bN4SFgWjqTOxyrHH12S0ttW
         stydvPoDa8IpB4reHA0H4ZBkBL0TRJce2k3MowaHE31FrSARBWpCBgx5Uu9mUwBT9evB
         dF7r5kdwYfnOr1av9Hn9S+CFJBSg5nmBQqK0YcWNufBcCB2edZkofTCTPUQ4PS0KjcO6
         XQW35xjSLZQq+oEUaYAQYX3O4xWW/YgmUETuW95W/L6znBYTPoUURibyD/k3O5OtRfuS
         bi0z1OAq50rFMjRIl+w+3RpK2oO2wOQpdSDcHdH+pPh+Q7dYNHYGtZ6M0oyIvEMfkyd0
         wAlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773767690; x=1774372490;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=JSN1fGj+shIHoomLoHHQFmz+QmTzvHPToGcONz2oTRY=;
        b=C1FpZ1SW1oOModUy6J+GaIdG/dCbINIv5fnyalxgQcJqwdYpPzC7QGj9EwcHhJKg69
         +/40W7NCBSNxmufj2EwZM4YUtYx7QRcLtbhq8Crl7+CfPA5HAXlC6uVS6Nd7BRHAIZNW
         bDNMLVxXqxnei/ogTbbrb1WzW9+oMv0AOJ/aMnMtmgjkmFxvuH4HKo7JJFhzetqwrovo
         SlgYaWjPNqootwtAuNE3ioZlHJMABQxkrTTxtv8mxZHBEjHbBByTl+1nwGValGuLks7l
         EIg0O1qyKbbTcxHRj4ObblwZV7U3B5tYBietj+FRjcpfaUVs7EIaMHnYOlai0h4cLP4F
         Tr2g==
X-Forwarded-Encrypted: i=1; AJvYcCW0EAkTufYi292C4PWNtk/CklP7Jyu7AcGsrz5wlxghyc/8c4IFVqF5P+gqMl0AqmUIO/CzIhjs5M2J@vger.kernel.org
X-Gm-Message-State: AOJu0YzeoT0294vM3M65PgkW/xnj/IEtOh7gtjgq2ZSWM8C/y8kc7ueN
	4iyUq5E9H8YlmsjFtoOZRQLXmwOcqZ7MeoBPfHKvlGDVIPfXjePIp5EDM0BipOOn5YczrYFe7qz
	OybZIvWZm908LYEQjXawFZYMyXihwAKKeEerKnrzzu79MRrDCFO/QEj8k8h0+5jK8
X-Gm-Gg: ATEYQzxdKUIebo2ScotEOe+RZx9jYedad76K3lbKhUpmSl+pr9sR3YONdzfQgGyWEOR
	Rw3NzUqSP27JLDApSpYxzQppmOdn3gkP1RW7zyub885cJiY9GaR+piLxahHh8xfp1LJ/2sNQh8g
	w1NQiRyrbzEVPfuU3OMXnqeMd9mwegSBMKrHTDHDt7UpqTAxgvhJgREeFIh/rmES3GjXa/xuNKy
	bkbPIzZyQWbt35TqGICC198julygnQp80hS7ob2QFVVuGNzpjzHNWLUG9ORBRaT1UBuAye2a/VJ
	PnOqa1pLbYFQMxF5EVQTig8dUvSaPCbLhCgvON12FLCga2ZwAZRPju3F0tyOLbAfobx+GNX66Wd
	AOP3giyU5LtwD893RTGQEF4xsg29AyFBO8MKnJwP7oWNcdQ==
X-Received: by 2002:a17:90a:dfcb:b0:359:8e5e:43de with SMTP id 98e67ed59e1d1-35bb9efae55mr168323a91.22.1773767689535;
        Tue, 17 Mar 2026 10:14:49 -0700 (PDT)
X-Received: by 2002:a17:90a:dfcb:b0:359:8e5e:43de with SMTP id 98e67ed59e1d1-35bb9efae55mr168300a91.22.1773767689014;
        Tue, 17 Mar 2026 10:14:49 -0700 (PDT)
Received: from hu-tdas-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-35bb9f1cb48sm28919a91.0.2026.03.17.10.14.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Mar 2026 10:14:48 -0700 (PDT)
From: Taniya Das <taniya.das@oss.qualcomm.com>
Date: Tue, 17 Mar 2026 22:44:22 +0530
Subject: [PATCH 1/7] dt-bindings: clock: qcom: Add video clock controller
 on Eliza SoC
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260317-eliza_mm_clock_controllers_v1-v1-1-4696eeda8cfb@oss.qualcomm.com>
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
X-Proofpoint-GUID: xwaSkoMkV3LL9Zs6CU5bHXWV8WGaNrw2
X-Proofpoint-ORIG-GUID: xwaSkoMkV3LL9Zs6CU5bHXWV8WGaNrw2
X-Authority-Analysis: v=2.4 cv=NdjrFmD4 c=1 sm=1 tr=0 ts=69b98c0a cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22
 a=EUspDBNiAAAA:8 a=O5AFsRJ8ltlpu4YWMHwA:9 a=QEXdDO2ut3YA:10
 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE3MDE1MiBTYWx0ZWRfX7w7gzV8z4bDV
 5G1sQGRo4cw8Oleqh7GVJbGkMhppW3baUNpDx2ZoVLpOCsp0PzUsHy/NDoicx2Qalg74eH4MDIs
 pJ7L6vlNliL1YQeTjnSkqg+RcKi4Mkc8XzV0xvMiwBo3/BeEZGuBZCpwvYCHr3j2tkIeM6pQoez
 zg6e69tnbeIGstXgO/9tlGwTl5WdROWWvlGpYDRa7OCwsT0HtEi1dzQxQ//xf8X9WEY6EovXWWv
 gbpaywnlyhpDYvmEVKNwEF8HdCuGJVGAdLLwUBOxttkLq/itJ1QSNuUO4lsQhKy4u65scjQ68t2
 XD8gbNuacW7d55Hue5gUMOSS3/bYbUz2j31hSzL0PO8vkD/S2KDSuHHr4IOqpngF471N5ahbr7q
 c9wPNJcYjHvniJvIi4H03ps/9VR4wo4LJaQAeORIs5CCJ9IYzqYCCP7t+gYixK8FHbT59QYMvn2
 VSnOAS/iU4PNt+CSTgg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-17_03,2026-03-17_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 adultscore=0 impostorscore=0 malwarescore=0 suspectscore=0
 spamscore=0 priorityscore=1501 lowpriorityscore=0 bulkscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603170152
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[17];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-276783-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,oss.qualcomm.com:mid,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,qualcomm.com:dkim,qualcomm.com:email];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[taniya.das@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: CC2862AF500
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add compatible string for Eliza video clock controller and the bindings
for Eliza Qualcomm SoC.

Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
---
 .../bindings/clock/qcom,sm8450-videocc.yaml        | 16 ++++++++++
 include/dt-bindings/clock/qcom,eliza-videocc.h     | 37 ++++++++++++++++++++++
 2 files changed, 53 insertions(+)

diff --git a/Documentation/devicetree/bindings/clock/qcom,sm8450-videocc.yaml b/Documentation/devicetree/bindings/clock/qcom,sm8450-videocc.yaml
index 7bbf120d928cc506a4f7aaeaa1c24e5da760e450..b75dd0896e194c5a2fd132cbe51c4706899fcdf7 100644
--- a/Documentation/devicetree/bindings/clock/qcom,sm8450-videocc.yaml
+++ b/Documentation/devicetree/bindings/clock/qcom,sm8450-videocc.yaml
@@ -15,6 +15,7 @@ description: |
   domains on SM8450.
 
   See also:
+    include/dt-bindings/clock/qcom,eliza-videocc.h
     include/dt-bindings/clock/qcom,glymur-videocc.h
     include/dt-bindings/clock/qcom,kaanapali-videocc.h
     include/dt-bindings/clock/qcom,sm8450-videocc.h
@@ -24,6 +25,7 @@ description: |
 properties:
   compatible:
     enum:
+      - qcom,eliza-videocc
       - qcom,glymur-videocc
       - qcom,kaanapali-videocc
       - qcom,sm8450-videocc
@@ -65,6 +67,7 @@ allOf:
         compatible:
           contains:
             enum:
+              - qcom,eliza-videocc
               - qcom,glymur-videocc
               - qcom,kaanapali-videocc
               - qcom,sm8450-videocc
@@ -73,6 +76,19 @@ allOf:
     then:
       required:
         - required-opps
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,eliza-videocc
+    then:
+      properties:
+        clocks:
+          items:
+            - description: Board XO source
+            - description: Sleep clock sleep source
+            - description: Video AHB clock from GCC
 
 unevaluatedProperties: false
 
diff --git a/include/dt-bindings/clock/qcom,eliza-videocc.h b/include/dt-bindings/clock/qcom,eliza-videocc.h
new file mode 100644
index 0000000000000000000000000000000000000000..1e922250a7fae77f5c996208d50ff372b252aa51
--- /dev/null
+++ b/include/dt-bindings/clock/qcom,eliza-videocc.h
@@ -0,0 +1,37 @@
+/* SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause) */
+/*
+ * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
+ */
+
+#ifndef _DT_BINDINGS_CLK_QCOM_VIDEO_CC_ELIZA_H
+#define _DT_BINDINGS_CLK_QCOM_VIDEO_CC_ELIZA_H
+
+/* VIDEO_CC clocks */
+#define VIDEO_CC_AHB_CLK					0
+#define VIDEO_CC_AHB_CLK_SRC					1
+#define VIDEO_CC_MVS0_CLK					2
+#define VIDEO_CC_MVS0_CLK_SRC					3
+#define VIDEO_CC_MVS0_DIV_CLK_SRC				4
+#define VIDEO_CC_MVS0_SHIFT_CLK					5
+#define VIDEO_CC_MVS0C_CLK					6
+#define VIDEO_CC_MVS0C_DIV2_DIV_CLK_SRC				7
+#define VIDEO_CC_MVS0C_SHIFT_CLK				8
+#define VIDEO_CC_PLL0						9
+#define VIDEO_CC_SLEEP_CLK					10
+#define VIDEO_CC_SLEEP_CLK_SRC					11
+#define VIDEO_CC_XO_CLK						12
+#define VIDEO_CC_XO_CLK_SRC					13
+
+/* VIDEO_CC power domains */
+#define VIDEO_CC_MVS0_GDSC					0
+#define VIDEO_CC_MVS0C_GDSC					1
+
+/* VIDEO_CC resets */
+#define VIDEO_CC_INTERFACE_BCR					0
+#define VIDEO_CC_MVS0_CLK_ARES					1
+#define VIDEO_CC_MVS0_BCR					2
+#define VIDEO_CC_MVS0C_CLK_ARES					3
+#define VIDEO_CC_MVS0C_BCR					4
+#define VIDEO_CC_XO_CLK_ARES					5
+
+#endif

-- 
2.34.1


