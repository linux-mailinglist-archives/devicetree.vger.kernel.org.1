Return-Path: <devicetree+bounces-261666-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wLnjJFlNgGlQ6AIAu9opvQ
	(envelope-from <devicetree+bounces-261666-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 08:08:09 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 12F12C9116
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 08:08:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0D2CF301AD03
	for <lists+devicetree@lfdr.de>; Mon,  2 Feb 2026 07:06:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A74EB30DEC0;
	Mon,  2 Feb 2026 07:06:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Fmd2yO57";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="CjH7zC0l"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 408E830E83C
	for <devicetree@vger.kernel.org>; Mon,  2 Feb 2026 07:06:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770015993; cv=none; b=IE77QfvhntiTDdv81fgjo4YWI01E7PbcO1z6AmxAXgCzIGQ42j3PtbQXsAKAdi/skvZuHDpH01HJ58g2/gL4T0UFaYi1poYqRm/A8jEg1Nd2ePnqEj5QjFNVBDv64KIhJ0h3iilxtNwSManhYYBVL5WOGN+5qxM2cEYIBLS/lbM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770015993; c=relaxed/simple;
	bh=4nikkiBRwcIj+UOuGQUPQrF566Nt8SsIWg7e17PpZmI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=L8cJJxQQgBH9K9WytPRvDPne+b805MlJlBf+GOHjSvvB8oX331cN3JZZBUrGY9CCkQfUfu34MJ7IZsGJXJceTfOgMhRf47bd8JIlfrJeaJoR0kOdatVhkey6AGxF0/Xi9lc/6Fk5LQ24tzfFs1J++SeC+3sFzcqj6hSE2XgtOts=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Fmd2yO57; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=CjH7zC0l; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 611NHIYX744938
	for <devicetree@vger.kernel.org>; Mon, 2 Feb 2026 07:06:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	eqlrYKConwWmWXVxvY+ChB3qFcGuPMtgxyGYyGIq1m8=; b=Fmd2yO57jtRzjFfw
	PSg8xIL3C3HiZA7eoyoAa4VwJtxwS7scDMpzk8xef+aY7GlMz76+fHAwnXM/nYfk
	GaqbB/tecV43Wtj28NVeHfw1k6aZ4/tOAxBLg+OrbbCSABlbDwI1eWKm0vfqF+yX
	qP5Hbsc2h3qwRaL9imG8KW1i+F2rAj9I4HOg4CwSFHu6G4aKc/8exLonqiR4ohoM
	hitd9AQKS3PrX3F0XJhA3I2AzKj4mB3/xW0j0GTBH6/xfCyi7tP6hTknd9BoEsTi
	upgG65d/54mVuPNRhL+BAgd9pXKqPQVpNwrqJy46cU+zyoOo86dmpe0kZXvHoBSy
	dWUN7A==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c1avx49ca-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 02 Feb 2026 07:06:31 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-82181ef69ceso2025682b3a.2
        for <devicetree@vger.kernel.org>; Sun, 01 Feb 2026 23:06:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770015990; x=1770620790; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eqlrYKConwWmWXVxvY+ChB3qFcGuPMtgxyGYyGIq1m8=;
        b=CjH7zC0lhPuYMKDkWjXFHqWbXk/ZwIkP1pZqZYOBtpYI2iCl7xdMRL8WzfxmITwApV
         NuoOEbu//HIaiPEDnsX6evkEiABASZrZDuhR4262dZD8cVqoIOK1bIP351dsWHKvvPdw
         KQzOsR+wmHdPJjmksL1d7Dthtn3PusUwf+DB+QXwXS/fuw3SkB2v6SVTW5Cu3auKCsjf
         Mg1cBEpv1pKm/MAIPqT5ToHP4ZfgjBrCnLBUAH/Ro5eOJSuXXUeVjNRmT+94Aw4M0okl
         gQaNmF+pqvsLWcC4ZKrRP1m/GjaJmbTaKFMNUYvVojRQ8AGW7jiFQOPWtke3Wur4uODH
         B1Rg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770015990; x=1770620790;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=eqlrYKConwWmWXVxvY+ChB3qFcGuPMtgxyGYyGIq1m8=;
        b=Ig0ZmAqIwzPNTrmD3MbOW8KBZcLl+NahUOGp6Khx/OKa6VmcYuqKMI+uVzaBX8clJm
         p6wxgsiE0h4Z1wYK6dxv3anBTEZ7oChOVmVvUVIWbOufVTImj6kV9E6rNxseHJhMwcdA
         5YKeJEMJFcikpI4p8Q74AtP20S2jLlomzz1OjLoZs08txozNVMkpIf76rwUBsFYZFKHa
         P6Wj4JYbiEyg8qKzoTVyGHGeGSpbHuDe/2NBXL/JdVJ4rjZVJNTrO1JUB31eEAJvO3Gw
         hQ4OjyQFosP7SQ7HIaVYcJ+zceIN0Lfv5vAXypgweTNUNtLrYEcSi/emiJe14Q5ix0Yv
         FK3g==
X-Forwarded-Encrypted: i=1; AJvYcCUjyI9Jrwp62an3RGLNY5FYVvGvVr7Wj3+liw51sVVCowA9PI7ZjYbMSgIe+QWOQWwvhPr0wMvIDqeh@vger.kernel.org
X-Gm-Message-State: AOJu0YwSZEwLJVDCpQ0SeIn/SymFW1ECX8ivTULs4rAAm8yl797C4teL
	/mV08DZC4lCLA4CA73ubSY0uvtfhUIe8yOYDdmiyDwDY2UjcWL7XfjArZgIl/6vb7bvTD3Slg/S
	+bcEC8djtc/4WqHpsdKEGbxB7vQUdGHMeRBzYZSIR8dY/V7Q2BnQCpLwopdY+MgP+
X-Gm-Gg: AZuq6aL1RBhysUb+7aGgaItwYxjH8riV1Zqpo6V3RjKUFFLnTIqwd2PccyZ5p0O0bM9
	rcS8AkkSfel2qKkkli6bWgjd41L8QzDVNGxgnEIGEF+LnAR5vz99/Md4Bdr3U3DMys7JHe7a0DO
	G7jlHF1GBgzQdMGlkMNcn1WJapeIiI2993/taKTLSn4RH3p9TIjyFDLr9ONYlX9ix7LGgKC3v5x
	54RbpFcgnHMUnob2f4+CwW4HklbQxOxG5g8glwAT3Q8D/MZjTpYTys1Ov3wrI0UlJyM/nWf/uYE
	z6zJhJs0w2bkauQZOochTekzt6tJosy3u4LPqZtXB4VTwunDEp8RpkMNR5bbbISIAK9g1Lp0lgM
	sFnlJU1o+ppPI7P7XEdoAj2EUCVqsyMjdLJfwMuu4F2w=
X-Received: by 2002:a05:6a00:a22a:b0:81f:4e6a:7276 with SMTP id d2e1a72fcca58-823aa40b600mr10714937b3a.14.1770015990160;
        Sun, 01 Feb 2026 23:06:30 -0800 (PST)
X-Received: by 2002:a05:6a00:a22a:b0:81f:4e6a:7276 with SMTP id d2e1a72fcca58-823aa40b600mr10714904b3a.14.1770015989631;
        Sun, 01 Feb 2026 23:06:29 -0800 (PST)
Received: from hu-okukatla-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-82379c54fcasm16265727b3a.66.2026.02.01.23.06.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 01 Feb 2026 23:06:29 -0800 (PST)
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
Subject: [PATCH 1/3] dt-bindings: interconnect: qcom,qcs615-rpmh: add clocks property to enable QoS
Date: Mon,  2 Feb 2026 12:35:32 +0530
Message-ID: <20260202070534.1281652-2-odelu.kukatla@oss.qualcomm.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260202070534.1281652-1-odelu.kukatla@oss.qualcomm.com>
References: <20260202070534.1281652-1-odelu.kukatla@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: sf4CcD4ID7-5ONmKRsheJEu5VGrVaOjZ
X-Proofpoint-GUID: sf4CcD4ID7-5ONmKRsheJEu5VGrVaOjZ
X-Authority-Analysis: v=2.4 cv=P4w3RyAu c=1 sm=1 tr=0 ts=69804cf7 cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=uL_lTmy6sO8e-wU5O2sA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=OpyuDcXvxspvyRM73sMx:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjAyMDA2MCBTYWx0ZWRfX6raxuCezGxTx
 RrLifA73vJJzco9jQDLT04uflf8gLiylXSn/4U1BolZPIBudL6udcPcKX7zsHRGT1PAvBtkCa3w
 xT7ZTm3HpwtLyeFCv3tamjK3nZNpIEd2uM+vXa/fIQS5yJjFWeIr7SlI9SyOvMmNd+bOxi49rh2
 2GSkeNM3YOGdWnlztOwt7DNlXejyphWnmCcTnRuewt+ijMo7uKQ6p+i7fYOaX/hQ413qjtsBp1R
 UbnSwosXwSGJdubMf/nLZ/1Y08hqp9MUEVV4YOMnxtnOm7LfDTdtsYAhm20A5ICk88ycN6fqKkK
 eB/ksBL4P9JtWqPV9pewF8Jz0UrpyygWX0aPDG9Oltjwf347lBtys9EBHyP5e/D36CAc6eyyRY6
 6Y4Wx91mJOWFQvhTI5G+e/JBtCMY6p11avw3Bm5Vr12204Q2Bd1qACzmwZaJLpESWmxbQ9NuMAY
 T6DdlCMBtXn1wtdRr3Q==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-02_02,2026-01-30_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 phishscore=0 lowpriorityscore=0 adultscore=0
 priorityscore=1501 impostorscore=0 suspectscore=0 spamscore=0 clxscore=1015
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2602020060
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.16 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-261666-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,0.25.240.160:email,qualcomm.com:email,qualcomm.com:dkim];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[odelu.kukatla@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 12F12C9116
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
 .../interconnect/qcom,qcs615-rpmh.yaml        | 44 +++++++++++++++++++
 1 file changed, 44 insertions(+)

diff --git a/Documentation/devicetree/bindings/interconnect/qcom,qcs615-rpmh.yaml b/Documentation/devicetree/bindings/interconnect/qcom,qcs615-rpmh.yaml
index e06404828824..096a9064cc01 100644
--- a/Documentation/devicetree/bindings/interconnect/qcom,qcs615-rpmh.yaml
+++ b/Documentation/devicetree/bindings/interconnect/qcom,qcs615-rpmh.yaml
@@ -34,6 +34,10 @@ properties:
   reg:
     maxItems: 1
 
+  clocks:
+    minItems: 3
+    maxItems: 3
+
 required:
   - compatible
 
@@ -53,6 +57,36 @@ allOf:
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
@@ -69,3 +103,13 @@ examples:
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
+                 <&gcc_aggre_usb3_prim_axi_clk>;
+    };
-- 
2.43.0


