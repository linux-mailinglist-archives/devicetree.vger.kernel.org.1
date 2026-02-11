Return-Path: <devicetree+bounces-264670-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yBn5Lt9HjGkHkgAAu9opvQ
	(envelope-from <devicetree+bounces-264670-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 10:11:59 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A803122957
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 10:11:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id C57973015FDD
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 09:11:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 345DC354AF3;
	Wed, 11 Feb 2026 09:11:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Ien1jnAB";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Cyayvm9h"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CB7F3557F6
	for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 09:11:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770801101; cv=none; b=hG0qahm7tGL2wEl0hQ2XZR8GKQMcjzvGR7oas21HnMsWZqtqHvzbB24N3Y/OKLOb32Tad3A6+A3wZRJZLt/bo7mGI3xmRlZxbZ5fK334ECw7zwDgfwh6jsaWi4miidNphAAA2DsxCFpYklhu3VtG/F2T8W2vdL9OU3Dl9hOtEZU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770801101; c=relaxed/simple;
	bh=y2LDrcpWGXmTO0G+kwd/+jD2J36Z3krWDEjHfX7H/RI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=gAMIkbhHMBw2FAm8hlfk9AYEGPMAUUO9TbhMjGo1TCWdbD9aBZGp3Ut/x1uvPuf+eAyY+d3Sj2m3uzqdggyCNQjr0nBKQHK4AGQQdQXp+2+sqGLFp3Z9995/qFKi+8jSKS3FaD/CfiXwAtdWM/MYoy6fMnRxDH+QvF0oDGklnP4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Ien1jnAB; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Cyayvm9h; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61B8pVZH4177622
	for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 09:11:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	sNNy/hzsDXZWkSQU5v82c7mhpIWyXVRx6d2pcs/jdp8=; b=Ien1jnABVQqCDYZQ
	jMQa0hKOO3ruUn66Llf1xoHjORx/GMdA68+GwEYTEBpWjJ4DYCGs1DxJRgEfoaMO
	KC8i3vx07qMJnhWvnzEfZI2v37iTT93Uu5u5zv+29RtRQbYsQy5TPq50ImjL8CZP
	jGUJS9FFVKH3D4NSfkzFlekIj+1yIHqIyDbFLMY27XliJoLSx6sLZ6CibFKZsLw3
	w1UQCtanVSm133qgsxSZW4W75IPVg0SvFP0mPFlbfDmHxfGSppCRF2Uuon3njPmQ
	i+QtZ/al5f+xe7d/KTi1FExeQc3wwaKi+VrhiJkQSTfg5znfXONeSDmQZqpS64fN
	iXshnA==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c879mk3q2-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 09:11:39 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-c67e92aad79so1132210a12.0
        for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 01:11:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770801099; x=1771405899; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sNNy/hzsDXZWkSQU5v82c7mhpIWyXVRx6d2pcs/jdp8=;
        b=Cyayvm9hogCPzMZEhg8wlJt7BrjNuNNN5dkjrQOdme6rNk46sMPW69H4BmIu8LpPVS
         oHf6R64ZAIsV213RlLK1vZXF+R7gcfebFcf8zodZjt9UbNoeHt2IADPem9MLS3d1Tq7N
         mcnIMjG/O0J/3WJCDAe5LH4V9pVbTYwh+7mjrFPuiaZdBrrNwarHlzSfAM68JDi3bCyk
         MNDKLrtHotvfHVshAwCa8sdHo33X7Mbr5dZJ1ou76sa5PTlXZruVJzogf6uoR3A4qSH0
         yrB2jDbbbFLCBkE+6rPITno3uwd59HSFn7YsMPDdSEtL0+tEWv6FlL1CRGO/g8M+toEo
         VHpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770801099; x=1771405899;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=sNNy/hzsDXZWkSQU5v82c7mhpIWyXVRx6d2pcs/jdp8=;
        b=YQfG7L0e6xbCMlBKNPh/9iz1SZa9VOa8dEp1cmunLGZOsUhEDn7c7bWm4sIHWJzl6Z
         zWDY3F4M2YlAijOR49rZX3C1WcxyG6qzq72U7BIocZ6Pcm5njB1YmGrpYctTJ1fxiXg2
         eeEtNRy5ycPBydywcXAn9qXHigF6EVnpOvccXXBpBSLoteJKkLz1GBIk6chgoMlO8JXc
         QB5r7pPe5XFYbNh4cZWhgqmvOrS8//5XBgCfU+8H8yOyWZt07KYE53OsbGI0ye+iqxl9
         xeBecVcOi+H1Pkn/0oyXVLPTixBPijY8jPlzgKX5pU/iH4/y0KK1X/DkvcDuZ/hXcdpt
         DLSA==
X-Forwarded-Encrypted: i=1; AJvYcCWU98hQ+XckbOHFDcvVwG2xpyKbbmF4H3y4m9fLjcWyw2y+DDEFmwtpRzMyBnWPWMpg2ZS6WsGO10rN@vger.kernel.org
X-Gm-Message-State: AOJu0YxEmt20X6r2gl2Rmb0s4xf0z40NqYgyLu1CgbsdpTm6bcEh5Ewc
	1vBBNgZ+NIgoN6GiR7Lltr0ZYWydQiqXkZs+K7L5OHwwP0nSkpJ1VjhQ1F4KE6Fk9uEAWH+6oIA
	2zXdojGgxb/lI6cS5dbos4rMQWQ8FSuGYh0fUiTCRZ/06jY/JDYga+vyMY2KwvUHx
X-Gm-Gg: AZuq6aIwgrq2gvBEuXvrJFKz/PKevnIU+vOuU2DaApv1HnXklCMmhSPwXjSbsSwU3m1
	O2+T5jI+sXWkUTf5xgG6VvrTrsQSp3eLuel2jN9nPAG8w3qfge7PWj1vRGrH/Rz0yW/HxSzNYqi
	RxIkDfk014mApXSiKkcyUGrcsTyTF/DepeqYZPQaLGMqmYZ5oIGiL5mnjijWgSJlXvx+z7XNj/t
	L8o8oAO7f+ORzpnPxMo7iSpj9m3qFNAlvgw4xTaaTWQuuBKc7f2Qd4ad3dvTTcEf0KbjboT3ju2
	KzSyOnCnGz94vhEFWetQ/P/DCy4RT2ibdW4DmfkR5WYotk9TMLiYGjgJs471OHuCPKf9gw5Pyun
	FC/IEPFLcE0kTomc8kDIANwVbZ//ss7n9AVp2AmYZjlA34r2gAy6i+KA=
X-Received: by 2002:a05:6a21:48f:b0:38d:f2db:ea50 with SMTP id adf61e73a8af0-393ad3a27camr17778692637.73.1770801098541;
        Wed, 11 Feb 2026 01:11:38 -0800 (PST)
X-Received: by 2002:a05:6a21:48f:b0:38d:f2db:ea50 with SMTP id adf61e73a8af0-393ad3a27camr17778671637.73.1770801098083;
        Wed, 11 Feb 2026 01:11:38 -0800 (PST)
Received: from hu-okukatla-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c6e1981512bsm1521481a12.31.2026.02.11.01.11.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Feb 2026 01:11:37 -0800 (PST)
From: Odelu Kukatla <odelu.kukatla@oss.qualcomm.com>
To: Georgi Djakov <djakov@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>,
        Odelu Kukatla <odelu.kukatla@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Mike Tipton <mike.tipton@oss.qualcomm.com>
Subject: [PATCH v2 1/3] dt-bindings: interconnect: qcom,qcs615-rpmh: add clocks property to enable QoS
Date: Wed, 11 Feb 2026 14:41:10 +0530
Message-ID: <20260211091112.3285626-2-odelu.kukatla@oss.qualcomm.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260211091112.3285626-1-odelu.kukatla@oss.qualcomm.com>
References: <20260211091112.3285626-1-odelu.kukatla@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=UKjQ3Sfy c=1 sm=1 tr=0 ts=698c47cb cx=c_pps
 a=rz3CxIlbcmazkYymdCej/Q==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=EUspDBNiAAAA:8 a=uL_lTmy6sO8e-wU5O2sA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=bFCP_H2QrGi7Okbo017w:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjExMDA3NCBTYWx0ZWRfX3t19H4oSBt2n
 fu0k3QTvua5BDTdwq7sYf4FBcbuI720lLVeZaCKHAnGuh5hAd0pyMTHTd7bE1n5hDPg6LxIT//l
 3OYkXhkADz6ey+rY/ARN7XM/kLFf6nEk5LmLQCJuRw1iBx4h6/EasPAJu0tmrPZyabuOZZviIpZ
 AH6sI50cPIaR8pdn4vseaywCd7G4dJA3FCzVIXqsRvmhrFVXh729sX7TyxVksJNgkGMVl3gurD0
 VxwlFs8+9yR2Tk4e4e3GtCzImnvKyLAOTpgIRqNReMxHFCTohkZiGlI0zvwcU939/YdTsKYhRLz
 DgzddvHnea2cl2AjvxfG5LoTCnzOjTNRk2CEn5v+VufHaIeMWuoqqMVXbLO/QEqQhMaXjugIXt3
 e3raJlyL2clyiCpvf6qeqRVCv2wdx8OMcYuFzhvA4sOlTTJkYbDybFp1JTcVE13k8gTPlleFdWC
 qI+hE5X2eb69YWzM0/Q==
X-Proofpoint-ORIG-GUID: fi7XQNtYXPYuV4bkgrlIceMtmyXCubi-
X-Proofpoint-GUID: fi7XQNtYXPYuV4bkgrlIceMtmyXCubi-
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-10_03,2026-02-10_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 spamscore=0 impostorscore=0 lowpriorityscore=0
 clxscore=1015 bulkscore=0 phishscore=0 malwarescore=0 adultscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2602110074
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.16 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	TAGGED_FROM(0.00)[bounces-264670-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,0.25.240.160:email,qualcomm.com:email,qualcomm.com:dkim];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[odelu.kukatla@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	PRECEDENCE_BULK(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 3A803122957
X-Rspamd-Action: no action

Aggre1-noc interconnect node on QCS615 has QoS registers located
inside a block whose interface is clock-gated. For that node,
driver must enable the corresponding clock(s) before accessing
the registers. Add the 'clocks' property so the driver can obtain
and enable the required clock(s).

Only interconnects that have clock‑gated QoS register interface
use this property; it is not applicable to all interconnect nodes.

Signed-off-by: Odelu Kukatla <odelu.kukatla@oss.qualcomm.com>
---
 .../interconnect/qcom,qcs615-rpmh.yaml        | 46 +++++++++++++++++++
 1 file changed, 46 insertions(+)

diff --git a/Documentation/devicetree/bindings/interconnect/qcom,qcs615-rpmh.yaml b/Documentation/devicetree/bindings/interconnect/qcom,qcs615-rpmh.yaml
index e06404828824..42679deb4607 100644
--- a/Documentation/devicetree/bindings/interconnect/qcom,qcs615-rpmh.yaml
+++ b/Documentation/devicetree/bindings/interconnect/qcom,qcs615-rpmh.yaml
@@ -34,6 +34,10 @@ properties:
   reg:
     maxItems: 1
 
+  clocks:
+    minItems: 4
+    maxItems: 4
+
 required:
   - compatible
 
@@ -53,6 +57,37 @@ allOf:
       required:
         - reg
 
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,qcs615-aggre1-noc
+    then:
+      properties:
+        clocks:
+          items:
+            - description: aggre UFS PHY AXI clock
+            - description: aggre USB2 SEC AXI clock
+            - description: aggre USB3 PRIM AXI clock
+            - description: RPMH CC IPA clock
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,qcs615-camnoc-virt
+              - qcom,qcs615-config-noc
+              - qcom,qcs615-dc-noc
+              - qcom,qcs615-gem-noc
+              - qcom,qcs615-mc-virt
+              - qcom,qcs615-mmss-noc
+              - qcom,qcs615-system-noc
+    then:
+      properties:
+        clocks: false
+
 unevaluatedProperties: false
 
 examples:
@@ -69,3 +104,14 @@ examples:
         #interconnect-cells = <2>;
         qcom,bcm-voters = <&apps_bcm_voter>;
     };
+
+    aggre1_noc: interconnect@1700000 {
+        compatible = "qcom,qcs615-aggre1-noc";
+        reg = <0x1700000 0x3f200>;
+        #interconnect-cells = <2>;
+        qcom,bcm-voters = <&apps_bcm_voter>;
+        clocks = <&gcc_aggre_ufs_phy_axi_clk>,
+                 <&gcc_aggre_usb2_sec_axi_clk>,
+                 <&gcc_aggre_usb3_prim_axi_clk>,
+                 <&rpmhcc_rpmh_ipa_clk>;
+    };
-- 
2.43.0


