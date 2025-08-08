Return-Path: <devicetree+bounces-202761-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 728C3B1E9DE
	for <lists+devicetree@lfdr.de>; Fri,  8 Aug 2025 16:04:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2E908A02626
	for <lists+devicetree@lfdr.de>; Fri,  8 Aug 2025 14:04:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 82D5B27EFEB;
	Fri,  8 Aug 2025 14:03:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="XkT+Hxdu"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3F6127E7F9
	for <devicetree@vger.kernel.org>; Fri,  8 Aug 2025 14:03:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754661838; cv=none; b=MjQwagdh07nF5gRn0JxDLNXCK2X490443ea7fBhXHE7yE/WB273w8SN588Urz3GcgxYRfKgER7TGzx7V82gGoDy7zIFoY3qmn8r73KaBOC5W92hhSl2Z/QvhIO+GJ9carJaibGE8eAJWLl48uazYhe32y4AsBQOzfwJd1K1jNPA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754661838; c=relaxed/simple;
	bh=NIUgvFjTnufpMaUkhepDMTHRYMdG1B9PZQLZLAxkW70=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References; b=Vj/v9JuCQeFCYFBnfWMWDhC11CPozeguiqOvbilWg8a/5bKl1Vjgx8YN7oNo+fZKuBLH/QAlLadNx3MK+RMgvvOUd+tU1HYGWRnzk2VROq8IbOh6r42u6Udc9J1u2DXApWpc/EBJYh30FlvAmsBnaXf5BBh+92iub59Gr7ZTj8Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=XkT+Hxdu; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5786rgc0020477
	for <devicetree@vger.kernel.org>; Fri, 8 Aug 2025 14:03:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:date:from:in-reply-to:message-id:references:subject:to; s=
	qcppdkim1; bh=cnwUV/QDjexBy5i2zSATpYmuz01jPJJmOp4tvR0Fjy8=; b=Xk
	T+HxduDoSB2QQmVB7zz54+Mo7dYHn/AApzxrJE1mNG/dPhFcIo2Z6QWFDef6pgrO
	PTzTqeBGVnzDaFfALKMtniB0lgPPQB2ox0Cc8LYD64IJs89LXZMEbDRS0qIzw2Fz
	gdBz1CADWa+Q7BmejfEFsB1aJAE0d5BuKoWunBjzLygXVKOkmgo2ZYV/W+vxUZrD
	3Ggkzn88o6gx16g+tDTABZYa2sHrkGqFHtFqPG4Rvo5yFN6hUUsN1pyCxke0TSuL
	rpCEMVrQog1NRx1F9HQaOW96+qY3eZ0TPwcuP4Hx20xe7hF7NRUprG4Fyl/iRXLA
	EZFEjNHNprdPInLi4Wlw==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48bpy8j900-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 08 Aug 2025 14:03:56 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-74b29ee4f8bso2530597b3a.2
        for <devicetree@vger.kernel.org>; Fri, 08 Aug 2025 07:03:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754661834; x=1755266634;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=cnwUV/QDjexBy5i2zSATpYmuz01jPJJmOp4tvR0Fjy8=;
        b=h2H86RtC0hSxHXE3kk9Wk18x/taDZd7SOj0iqcx4ChN5+mAXlvTorhlSm+55fYwKUP
         tqEqZ8G1ATnim8MJJ6s5MafBPJ7Aqd9x2htJgVGX/DUM21YmmIA8E2T+ns5Wce4lKpfy
         AkeG3mwHCPQ7KJpbEm75qK6xa7LW4E6vqt0LyulYKU2x1FiGgsMdI4Xg83nvzhircV9y
         tGyB5ZYfc4RTIfxwLyMYMz7DkftJGeJZ0+77N9DKkLMUAvzke1emVn7RieWFlbSojk3r
         s8Ns/n448FSl65JRisxAZXyllWRTcIuD1HLR+jo0X35KWrLOgv0iW/sJs1EVvL8tWX8/
         Ejbg==
X-Forwarded-Encrypted: i=1; AJvYcCWBVHJ5vq/p6NBPFW++v87tiOAyV3ZnQb6VUARDF+lKtQyPgKkLoU1tOkIubRkOOtw/gGCGqPAR7dh+@vger.kernel.org
X-Gm-Message-State: AOJu0YwKLvjNFeKZNiyRnxuSOvSjvXZeVgCs9rpgxuFNw7mS7MT8Ts5a
	7PeJ/VbqZp/6KpwUxZRQmjp1D+yBNli+bYMQIyPcpYwB8yg723qVKx1q6RRrulTIEsLnFhaU+If
	4WOLzf+FcgXoLO55e1DWmFvZgLOB+7QNGW2agczPw94IUK6hh4yLCa4zBXPuEqezF
X-Gm-Gg: ASbGncs3tbhcwljabEP0LSRoJjm++C9OR5nEh3+wkQGggaR5hetYRW5+SIBv5+VfAqB
	pk8EoHqZ8LZAw79fNDVuK9YL6LW9doRVcCRi7HYs0NDO9QkJ9KwOOcWTTLZdG291BR1nURmN/Ru
	Y6NRRRTC849hbs3/aF4zeaxh3y4OBcRIYdcho8qZScvPwsCGH7pGTkHe5Gzzh4vH/fp3a6n0GOv
	ev33ZfoE4sqQFlJTmd2tkkhlgz5MLOpQMkjbnX+H0E9wqF7f7BkCTlq0WzMTa4Lr82yq4AGoVVm
	RPnbPLSG9kaZqSeXaHqoJFnHxhtty996FBI7v9BDj1l6Hhzhc/2ElAS/aEqzIALLexiYQGXo5Q=
	=
X-Received: by 2002:a05:6a00:23d2:b0:76b:c557:b945 with SMTP id d2e1a72fcca58-76c461f7dfcmr5163491b3a.24.1754661834269;
        Fri, 08 Aug 2025 07:03:54 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHTzksWDnpE2o7+ZsFPvW6Wq4obz7S9H+b2kg5hFSWzEbMcyjh4qUMKtT2DtOoa8U5Mt9x6nQ==
X-Received: by 2002:a05:6a00:23d2:b0:76b:c557:b945 with SMTP id d2e1a72fcca58-76c461f7dfcmr5163411b3a.24.1754661833734;
        Fri, 08 Aug 2025 07:03:53 -0700 (PDT)
Received: from hu-okukatla-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-76c2078afd8sm8595621b3a.117.2025.08.08.07.03.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 08 Aug 2025 07:03:53 -0700 (PDT)
From: Odelu Kukatla <odelu.kukatla@oss.qualcomm.com>
To: Georgi Djakov <djakov@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Raviteja Laggyshetty <quic_rlaggysh@quicinc.com>,
        Odelu Kukatla <odelu.kukatla@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Mike Tipton <mike.tipton@oss.qualcomm.com>
Subject: [PATCH 1/3] dt-bindings: interconnect: add clocks property to enable QoS on sa8775p
Date: Fri,  8 Aug 2025 19:32:58 +0530
Message-Id: <20250808140300.14784-2-odelu.kukatla@oss.qualcomm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20250808140300.14784-1-odelu.kukatla@oss.qualcomm.com>
References: <20250808140300.14784-1-odelu.kukatla@oss.qualcomm.com>
X-Proofpoint-GUID: 04nlusObzoeQueH7524V-NDLC83VLzgL
X-Proofpoint-ORIG-GUID: 04nlusObzoeQueH7524V-NDLC83VLzgL
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODA2MDAwOSBTYWx0ZWRfX+rlWbGIUbsxw
 CtadPNXCXDkuSgSnyUr4Z6TuU/FDzPoY521PW3AR2I6AKSj0dk5Y8gSU+cRshsTDQuhdXaLtgv8
 CMRr9BpWuq573IwP+IHwh6wOgVU2mzhHR8HMrCEDukLlRx9yrKrxwQXy0U1YkG5a8BS58ufvtMr
 WiOIMVub4XYF5F/m6JNhkq4TI1SMQrhQZybQXtO91QlJQNO1L9QtHh8rZzeABosEo+rurq1RRVA
 WDZBXIc1QUuh08wdLy00P2KT+Wye3djSTKLiTgiYSTdWyvj2HJFwRb/n3cEGt1ElzIKAZVIPoJu
 w5bYa3YvtkeAM/f0lZuMMEEaNd/6btWfBiB1aORiMcKdwG41uAdmZT2a85QroL7PqfiSmW2cCs/
 f/q0GlEj
X-Authority-Analysis: v=2.4 cv=GrlC+l1C c=1 sm=1 tr=0 ts=689603cc cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=kq7KVtybw__Sne4F7ZAA:9
 a=IoOABgeZipijB_acs4fv:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-08_04,2025-08-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 malwarescore=0 clxscore=1011 suspectscore=0 priorityscore=1501
 phishscore=0 adultscore=0 bulkscore=0 impostorscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508060009
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>

Add reg and clocks properties to enable the clocks required
for accessing QoS configuration.

Signed-off-by: Odelu Kukatla <odelu.kukatla@oss.qualcomm.com>
---
 .../interconnect/qcom,sa8775p-rpmh.yaml       | 78 ++++++++++++++++++-
 1 file changed, 77 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/interconnect/qcom,sa8775p-rpmh.yaml b/Documentation/devicetree/bindings/interconnect/qcom,sa8775p-rpmh.yaml
index db19fd5c5708..be3d02fb73a4 100644
--- a/Documentation/devicetree/bindings/interconnect/qcom,sa8775p-rpmh.yaml
+++ b/Documentation/devicetree/bindings/interconnect/qcom,sa8775p-rpmh.yaml
@@ -33,18 +33,94 @@ properties:
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
+              - qcom,sa8775p-clk-virt
+              - qcom,sa8775p-mc-virt
+    then:
+      properties:
+        reg: false
+    else:
+      required:
+        - reg
+
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
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,sa8775p-aggre1-noc
+              - qcom,sa8775p-aggre2-noc
+    then:
+      required:
+        - clocks
+    else:
+      properties:
+        clocks: false
 
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


