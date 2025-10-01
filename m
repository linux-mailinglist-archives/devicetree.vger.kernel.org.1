Return-Path: <devicetree+bounces-222920-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BEE3BAF6B1
	for <lists+devicetree@lfdr.de>; Wed, 01 Oct 2025 09:34:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 120DC4A40ED
	for <lists+devicetree@lfdr.de>; Wed,  1 Oct 2025 07:34:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7661C2749E0;
	Wed,  1 Oct 2025 07:34:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="YNRpy4Rr"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE1332309AA
	for <devicetree@vger.kernel.org>; Wed,  1 Oct 2025 07:34:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759304055; cv=none; b=t/L5AkyjOd03z4zOj802dNpUtF+q74JIHjFkDZTWC93iVQgs1HkMALhOTW2Ly8cH9OAjKFSEXgFQ+d08AMY3eOE6GvvBNWSQ9f+CtoBiaDm9ZUj6ZGikpzUbg7O7ly1FRXuoz38Y8CIjvpLpj/9Lhw7Qza6sHJmJhFj3aRp84ds=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759304055; c=relaxed/simple;
	bh=8fCLXWu3MGxxQqh4/DRKlu28a5eh5vLEq8h4kXwAYfk=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References; b=ESzQC9BFCSb/dg2k0E2YkiglS+1HChyeE8rRNCpeN1nl7g3tvYNP3xOhCZrYGVU2mCLbjs6/gEp5Xq4yCVgxZG606LI5revLowxUuDe6jE6/Tz3rY8LWCv/yq9LZRNQ8+wnZ++oCnBThZLNww+FQ/ke4gm0s4mzsXx+cWYoxTKc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=YNRpy4Rr; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58UKp8q3014790
	for <devicetree@vger.kernel.org>; Wed, 1 Oct 2025 07:34:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:date:from:in-reply-to:message-id:references:subject:to; s=
	qcppdkim1; bh=YVYgJqy9pl6Jh6Ezns5hMgLaW2BpmEvKFteq7/wkIuU=; b=YN
	Rpy4RruWMCkE7UPl5goJo5Kc1WvrH+MwRjgHQqDtciTdBcWmdDcGBneKOxPa4zuQ
	G7I4RvfzbxXOjkkMnzy1VsdPHTHZ5Ypae2He39laEfogU36l7tvxqsTdWPFyJZJz
	LSJo42y8tFDiBU52viKjsUTl/31q0SkEeNlHXXN8PG7hDWhoJEfZhZ+1HM664BF8
	nFdaG0An01hlCSWCy/TURar45oNjQ6IOGz+ocZAH2snxCb2AmKzcz43ql87BEd98
	64aSFA3pyFNnuTT8hTqawcL0/oykvlffU+3nrHE7oTbSbt5rhOnf+mmreqj1l8E/
	rJ+2hBFUhGZNqkMZwPhQ==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49e6vr3qf2-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 01 Oct 2025 07:34:13 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-27ee41e062cso66210835ad.1
        for <devicetree@vger.kernel.org>; Wed, 01 Oct 2025 00:34:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759304052; x=1759908852;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=YVYgJqy9pl6Jh6Ezns5hMgLaW2BpmEvKFteq7/wkIuU=;
        b=lrQ4c011g7ODBQ1RRvpNs9OK0JA0vyInZu86k3mdpIgnfYEszLz+KmZ3u1v215+8ZK
         NeBG853qeh7Y54Zs04AC3dkMacHvUVQsNIRW2Odbu8cYXmxO1GMLpjBF5X5KEMbJ5XsB
         zaGjwhIGMp2cJ2xYmeRfXuCKCdutfdpYvWrAvVYOeevD3jQq7ChzXH4GKd6W1tTvLtzZ
         fpK7i8mZ4cAMWfhLC67F2/2FP05wnLQ3yMRi69giHraP9IPURrml3KWHoi3/0HKRWqTn
         b/hj3qKquktC88IrSKnkbWwEIlg5wEK8NG8mRyzL4zIdFJ1nrP2dThY6YgvuC17aukL8
         5qSA==
X-Forwarded-Encrypted: i=1; AJvYcCW+HiA3wWrhsYK7VYIBWobpKHOCxDxRorW0kukDEIf+yYXdQlHR9CjrRRbNU1inJzbCEpEA6ws1Eu18@vger.kernel.org
X-Gm-Message-State: AOJu0YyHDapET2OM284ohUFTcSHTRpo8uplQN/T8Ln/jt1MbihR2k/aB
	zJW5scGiQMoR2L2x8vdRjauYJVUZnkVvfJJbNKytJbqeSZSRfMiZjmuGAsBBh2o8gfJOltbr1+T
	oDKMeHV+SQwq+v2aex6DoSll8KKm/jBf8UiPDCPZPv9wXOtIo4ouGOaxyT4Ujvnne
X-Gm-Gg: ASbGncuo7n4NOiTOi+yVyn3V4ZAR3dLrwkkOXPt0HuHXu+0LEHHC2V7P4ui/roq60Wz
	l7Hy/dAWC9P8oh775GwVYJER+opxOzopJVb2lg4Vr8erfbonGLYYoIyMrxz8ZBpiiYnWpCrwjSf
	0YnmEenw52b1PUY/cR1eA4Mp1hJyY4YQBlnpWKO2m4oJOKlS+3U8aXcXsv7ybPePqpvOVXimiiX
	MH47h7qBL+GSrt2RIcuF0LIRjaJUppWcBVYlQ+vBnguiuVytzVT97epKRD9+dWl5lRBezAwKAWJ
	SvwJ/YyyRO643apWb6Vij7pRKx0FRn43JfbPjy0I8vLv79MV9Mo7FsOc6FIdnyr8wHKVlU/mqE4
	qEII=
X-Received: by 2002:a17:903:1b24:b0:267:6649:ec17 with SMTP id d9443c01a7336-28e7f2a37c3mr29063415ad.23.1759304051947;
        Wed, 01 Oct 2025 00:34:11 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHCLP1TOKpobDKWLKfNm9Qikln5EHMckIY7xiu+WSlRq7tmz7s1XxvSY8y3mjf7W0+v35p0Ng==
X-Received: by 2002:a17:903:1b24:b0:267:6649:ec17 with SMTP id d9443c01a7336-28e7f2a37c3mr29063155ad.23.1759304051505;
        Wed, 01 Oct 2025 00:34:11 -0700 (PDT)
Received: from hu-okukatla-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-339a6effe77sm1642127a91.17.2025.10.01.00.34.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Oct 2025 00:34:11 -0700 (PDT)
From: Odelu Kukatla <odelu.kukatla@oss.qualcomm.com>
To: Georgi Djakov <djakov@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>,
        Odelu Kukatla <odelu.kukatla@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Mike Tipton <mike.tipton@oss.qualcomm.com>
Subject: [PATCH v2 1/3] dt-bindings: interconnect: add reg and clocks properties to enable QoS on sa8775p
Date: Wed,  1 Oct 2025 13:03:42 +0530
Message-Id: <20251001073344.6599-2-odelu.kukatla@oss.qualcomm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20251001073344.6599-1-odelu.kukatla@oss.qualcomm.com>
References: <20251001073344.6599-1-odelu.kukatla@oss.qualcomm.com>
X-Proofpoint-GUID: RaBT9GK49lK7M5jv52LeiKMYC_UqRuYH
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI3MDAxNyBTYWx0ZWRfXwL2AZWRzFcYY
 OhqaK8tE7x5o+aDmmK9qDial5154igA8T56akgp9sGDyOOzm/UMQETKqsTH+E3zLJRn0Y1b/F2a
 PsHmtr27qW2K7aZByP37knSbg1EHD9h9N0RsV80CKNikAtpKPGV/J8hn6RG80rLtZ/Bzq0mteqs
 VRbxsZRj2/Lh1nnVFwCI1xUSV7t/i+k1zb6SS5so/ulcRbNC685i5MvqJOKFmBXINTmq84k5GFf
 DQxgCvl0nR6hMVUfxJDvzfpvSFyPqNCUejXfVwUaKOLe6F/moBNwg5ZADex4bDhJ89vu7WOeRix
 MDbD/MRCmzdkzKKqgXip/VQ6Ci4qUJTbB59ItVE3QrES8tHrIcofaveNts/EruSfyz6jab8Rn+9
 f7Rpazgbi37BqDu5zPuHnmHTAYdQMw==
X-Authority-Analysis: v=2.4 cv=IeiKmGqa c=1 sm=1 tr=0 ts=68dcd975 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=x6icFKpwvdMA:10 a=EUspDBNiAAAA:8 a=8b92ao9AcM591oi5rHMA:9
 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-ORIG-GUID: RaBT9GK49lK7M5jv52LeiKMYC_UqRuYH
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-01_01,2025-09-29_04,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 clxscore=1015 priorityscore=1501 bulkscore=0
 suspectscore=0 spamscore=0 adultscore=0 impostorscore=0 phishscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2509150000
 definitions=main-2509270017
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>

Add 'reg' and 'clocks' properties to enable QoS configuration. These
properties enable access to QoS registers and necessary clocks for
configuration.

QoS configuration is essential for ensuring that latency sensitive
components such as CPUs and multimedia engines receive prioritized
access to memory and interconnect resources. This helps to manage
bandwidth and latency across subsystems, improving system responsiveness
and performance in concurrent workloads.

Both 'reg' and 'clocks' properties are optional. If either is missing,
QoS configuration will be skipped. This behavior is controlled by the
'qos_requires_clocks' flag in the driver, which ensures that QoS
configuration is bypassed when required clocks are not defined.

Signed-off-by: Odelu Kukatla <odelu.kukatla@oss.qualcomm.com>
---
 .../interconnect/qcom,sa8775p-rpmh.yaml       | 50 ++++++++++++++++++-
 1 file changed, 49 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/interconnect/qcom,sa8775p-rpmh.yaml b/Documentation/devicetree/bindings/interconnect/qcom,sa8775p-rpmh.yaml
index db19fd5c5708..71428d2cce18 100644
--- a/Documentation/devicetree/bindings/interconnect/qcom,sa8775p-rpmh.yaml
+++ b/Documentation/devicetree/bindings/interconnect/qcom,sa8775p-rpmh.yaml
@@ -33,18 +33,66 @@ properties:
       - qcom,sa8775p-pcie-anoc
       - qcom,sa8775p-system-noc
 
+  reg:
+    maxItems: 1
+
+  clocks:
+    minItems: 2
+    maxItems: 5
+
 required:
   - compatible
 
 allOf:
   - $ref: qcom,rpmh-common.yaml#
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,sa8775p-aggre1-noc
+    then:
+      properties:
+        clocks:
+          items:
+            - description: aggre UFS PHY AXI clock
+            - description: aggre QUP PRIM AXI clock
+            - description: aggre USB2 PRIM AXI clock
+            - description: aggre USB3 PRIM AXI clock
+            - description: aggre USB3 SEC AXI clock
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,sa8775p-aggre2-noc
+    then:
+      properties:
+        clocks:
+          items:
+            - description: aggre UFS CARD AXI clock
+            - description: RPMH CC IPA clock
 
 unevaluatedProperties: false
 
 examples:
   - |
-    aggre1_noc: interconnect-aggre1-noc {
+    #include <dt-bindings/clock/qcom,sa8775p-gcc.h>
+    clk_virt: interconnect-clk-virt {
+        compatible = "qcom,sa8775p-clk-virt";
+        #interconnect-cells = <2>;
+        qcom,bcm-voters = <&apps_bcm_voter>;
+    };
+
+    aggre1_noc: interconnect@16c0000 {
         compatible = "qcom,sa8775p-aggre1-noc";
+        reg = <0x016c0000 0x18080>;
         #interconnect-cells = <2>;
         qcom,bcm-voters = <&apps_bcm_voter>;
+        clocks = <&gcc GCC_AGGRE_UFS_PHY_AXI_CLK>,
+                 <&gcc GCC_AGGRE_NOC_QUPV3_AXI_CLK>,
+                 <&gcc GCC_AGGRE_USB2_PRIM_AXI_CLK>,
+                 <&gcc GCC_AGGRE_USB3_PRIM_AXI_CLK>,
+                 <&gcc GCC_AGGRE_USB3_SEC_AXI_CLK>;
     };
-- 
2.17.1


