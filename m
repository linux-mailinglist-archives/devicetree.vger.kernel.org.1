Return-Path: <devicetree+bounces-270395-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YJ42B5espmn9SgAAu9opvQ
	(envelope-from <devicetree+bounces-270395-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 10:40:39 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 715C51EC027
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 10:40:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 497EC308832E
	for <lists+devicetree@lfdr.de>; Tue,  3 Mar 2026 09:35:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8269038C43D;
	Tue,  3 Mar 2026 09:35:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="IRplpQOu";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="PK0OR1MN"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43EFA38C434
	for <devicetree@vger.kernel.org>; Tue,  3 Mar 2026 09:35:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772530545; cv=none; b=hnhImznSkzpQ9eDkrH1giu6r+5Rd1Djpbb5raTJxxd2hPb50EkuzLtwD+vxaGPpHQePWP272M26htQjAIrT38t+fwF31SzrGs/bMGrn2bK9E9BWdNCCJP/ykYFnb3kuhO/pabAXld/xkgyFglNl6poxFDfzd+4Yqso7PPE3QSZw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772530545; c=relaxed/simple;
	bh=m/VQMn2jp2mMRtt+R0rOjpAEwbBaQz/MuT9q1xzP0mI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ZVzySi2Q7vJ4Rcg5SLUdVdoa7i32rh4Y1q7ibi+npQzSViJwgRja8eg0ksQFcPRNEhLl3BWPFZkhNLcaHNMBsSIFdZWtvN/H1ki3kyNdVmgz72baanux0OEhtCrEf26QcgWhAOR/1wiikl0JY2iUX2OLBwNpGKUnCd6tdjKyCro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=IRplpQOu; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=PK0OR1MN; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 623532rb3358616
	for <devicetree@vger.kernel.org>; Tue, 3 Mar 2026 09:35:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	8f2M8NDjO2Tnl5mGOoz4d4V+Wo7DeMPNXbyqK36ibgI=; b=IRplpQOudnlOUVB/
	wgacD1kdqwkL8qIqUxMv7b/zNJaY3FkDnbnQqZooovZuGi28xmPq4H6z/aCovIg4
	6xVtbDWmzCrmNZxZ7yTKmL/tv8mIZAuQBIj4ph4+NAeeL8rKMUC2LEdCDs9BV0OR
	vwn3iymlLyGfmTKebDXnlW/CaQnn+y1zI+5rfNLpqaIb6qABdqI7xLIx3gYl+kHO
	HNQNQWIC/0ynTNppfvD1vhoOZWzm0dKIhWoo/C0iWClnuEkPkoYN2Axjmxoss+P9
	ldy0WmsSyJLFsh5awONGJtIABZoe2KBMDqp/dbC8qiIT3x2L4IU3DFOQdW8CMqBa
	Yheirg==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cns5frwmj-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 09:35:43 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-824a02e4d29so2264004b3a.1
        for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 01:35:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772530543; x=1773135343; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8f2M8NDjO2Tnl5mGOoz4d4V+Wo7DeMPNXbyqK36ibgI=;
        b=PK0OR1MNDAntoouaFBEu0besRpsJS/qJtroMNGGuP1+rjfgt5y/sQKoWiN3uvemdKm
         p0/OzKr+ylNROBDZaqliwMx4DGtf/j6x0OY1eyP7HAVEm+NceR971mQo13inX4U05Diy
         AqfdtgdYcQ4GZOvFA4n0hKcQ9wEvqFUSO/PE4l0sPhXls4ev1RorkYuAu3BLPCViF1s7
         CoLv0N5dMeoXwA60kdW2Y5HrzNDY94pjqS/ALdHmyi7iChRljEzsG49z1K3lglzyE08R
         HGa9XwwpYwVQxYwfXxVdAAEIk0DRNieD0hT29D1eHQXgfiAOys6ebBkyN4PMbnC6KEHt
         G5Pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772530543; x=1773135343;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=8f2M8NDjO2Tnl5mGOoz4d4V+Wo7DeMPNXbyqK36ibgI=;
        b=oMuv5F2tvlkbh2as53gSaXYORdG01+jlkbhh0iAvlk48cQ4LCgR4orL+6Nb3iUwhlK
         t55eZXqloDPGG1ZibHmNFwGPOlCvAM91mE1l0USjtbl5qfWPOYDX1FT2z5PFL5qmyntL
         i5roze3YF3zfeiWkO5d7XjRPWfhJ0RkIc7W/Pe3Q6Fbd6FJNzLFT17h04LkRMYHDdblY
         B5y8VMabFqa+gYtwA7J9ibBCc6L5QuiyrgW7V5Xm5q03Y42xpbJ/62Shx6JKdGAuKHPJ
         LF4U51G5O8quCWClf9WEP+vB/Sz3sAko1Pkjea+SCEeIOhBp5/gV8OUODMMY2gjQ3VWc
         0TgQ==
X-Forwarded-Encrypted: i=1; AJvYcCXXJmSWxyJWbtHlRyaoC6GG1WKquzjlSSPOoUIoygVcok6CNnk2KLkB2e4bNghuFEOr/RzMuwFRj6eX@vger.kernel.org
X-Gm-Message-State: AOJu0YwJ4JCmoem5mr89XrEeovrm2w//mDsstjZ3ZQxlAsXIdrs/5DwM
	GQo+FTvcGx4/SLmpppWipTyx76hqCoPIS280y5Nldbvpqcdl5T/tFgq5u62lS0sXJYwfUxSc2Cb
	XMwIStqU7aoyctk51vNc7StPMU9bHQHMzXvgb9uVnzq/054wWHq7seIkhTZ3FGsTzWLYDkmWK
X-Gm-Gg: ATEYQzw+6aEE1/2gbT5uLEcpRJKndT/zhldZqIbFrrMCJ9FTrEH0D64TblaBtHgtGOk
	cOH99ehLdT9IMIKQt/M1kj8gKEIaQrguf7p63y49/gReOI/JEAflnfJdFXrBnt1ZnhFjJ4xDnpP
	A47JbSx5lmhWJRkzwOhoYW3FvMll3cdY1MXLJ406ecWrPUX0I1GlBP5Ltp+6ziW7qf/Rm+3AntE
	pSAi5TNHz42m/MJPg18SrTr29JiOk6D4WFUhl02g//QArqsJ+rJ6JD7P89CYkMKdwURIjikphao
	iR4vKADzLZ/t1tEVbyYFyMWt90NN1mHS7aITU6nLWdXHiHVSiZnnkJlO3YAXmkWq2dPAsgeSEcB
	cckXJ5SoWm72sAfSbWd0QLi706KlfhBrvvNZO2OWWl+GN1A==
X-Received: by 2002:a05:6a00:4143:b0:81c:c98c:aeb7 with SMTP id d2e1a72fcca58-8274d972743mr12354314b3a.7.1772530542770;
        Tue, 03 Mar 2026 01:35:42 -0800 (PST)
X-Received: by 2002:a05:6a00:4143:b0:81c:c98c:aeb7 with SMTP id d2e1a72fcca58-8274d972743mr12354283b3a.7.1772530542133;
        Tue, 03 Mar 2026 01:35:42 -0800 (PST)
Received: from hu-tdas-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-82739ba6275sm19644212b3a.0.2026.03.03.01.35.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Mar 2026 01:35:41 -0800 (PST)
From: Taniya Das <taniya.das@oss.qualcomm.com>
Date: Tue, 03 Mar 2026 15:05:25 +0530
Subject: [PATCH v4 1/3] dt-bindings: clock: qcom: Add SM8750 GPU clocks
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260303-gpucc_sm8750_v2-v4-1-2f28562db7c9@oss.qualcomm.com>
References: <20260303-gpucc_sm8750_v2-v4-0-2f28562db7c9@oss.qualcomm.com>
In-Reply-To: <20260303-gpucc_sm8750_v2-v4-0-2f28562db7c9@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Ajit Pandey <ajit.pandey@oss.qualcomm.com>,
        Imran Shaik <imran.shaik@oss.qualcomm.com>,
        Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Taniya Das <taniya.das@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-aa3f6
X-Authority-Analysis: v=2.4 cv=Pv2ergM3 c=1 sm=1 tr=0 ts=69a6ab6f cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22
 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8 a=lJl75u3uZd5g0oXYmjoA:9 a=QEXdDO2ut3YA:10
 a=OpyuDcXvxspvyRM73sMx:22
X-Proofpoint-ORIG-GUID: AHNvoHKl2xTo0H62m5dEAniD-rBYT6eW
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzAzMDA3MiBTYWx0ZWRfX7J4Rli1V2nwl
 qqvtnXKFvSSkLLtSCCuNqobagB+TwwjBqaR4M9vfO3N3K0yeRlzYWCUJV9dCi486IJjPU0P1tm3
 h01U+e9APdTOFku0mwVWw32v0YzaqH4Gge4ONsIRxQM2WQinE8UXo4uDpd+sdPbhW2Z7HqjkuSt
 YLo177pVKfZFr86KMgMrY5qtlN5uXDprddzgStIp1wfq+IIXWanmAisDGcGhM0KTGP1YMhpfFcu
 RwVCZooHlYWyhVrTO6ivmQbQc0TMGdAovhec8nY7rDzXsQ7QPloJy/NL6Bbo+PTLUV1eKMw/9Jm
 vnu2jG3jQ6Ghd3WdJGsyefjrc1dJM1Ysib0JyGdlhKnTBMvMOocJJzPmbSwzgH0Cts0RbkTMsLF
 DJcv3wPvdVPTfxdNLNN5IKJN8+jYl4ioB6eJ0vR1MiTWQI/ZfYTr9JQmaArGbZWN5g911Lz4uBl
 X5RU3xpQuLJDQXzLMhw==
X-Proofpoint-GUID: AHNvoHKl2xTo0H62m5dEAniD-rBYT6eW
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-02_05,2026-03-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 lowpriorityscore=0 impostorscore=0 malwarescore=0 spamscore=0
 suspectscore=0 adultscore=0 priorityscore=1501 phishscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603030072
X-Rspamd-Queue-Id: 715C51EC027
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[17];
	TAGGED_FROM(0.00)[bounces-270395-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,qualcomm.com:email,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[taniya.das@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

The SM8750 features a "traditional" GPU_CC block, much of which is
controlled through the GMU microcontroller. GPU_CC block requires the MX
and CX rail control and thus add the corresponding power-domains and
require-opps. Additionally, there's an separate GX_CC block, where
the GX GDSC is moved.

Update the bindings to accommodate for SM8750 SoC.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
---
 .../bindings/clock/qcom,kaanapali-gxclkctl.yaml    |  1 +
 .../bindings/clock/qcom,sm8450-gpucc.yaml          | 23 ++++++++++
 include/dt-bindings/clock/qcom,sm8750-gpucc.h      | 50 ++++++++++++++++++++++
 3 files changed, 74 insertions(+)

diff --git a/Documentation/devicetree/bindings/clock/qcom,kaanapali-gxclkctl.yaml b/Documentation/devicetree/bindings/clock/qcom,kaanapali-gxclkctl.yaml
index 5490a975f3db7d253a17cc13a67f6c44e0d47ef3..1876f23c174e4ede590847d80222e49b4200d8ba 100644
--- a/Documentation/devicetree/bindings/clock/qcom,kaanapali-gxclkctl.yaml
+++ b/Documentation/devicetree/bindings/clock/qcom,kaanapali-gxclkctl.yaml
@@ -21,6 +21,7 @@ properties:
   compatible:
     enum:
       - qcom,kaanapali-gxclkctl
+      - qcom,sm8750-gxclkctl
 
   power-domains:
     description:
diff --git a/Documentation/devicetree/bindings/clock/qcom,sm8450-gpucc.yaml b/Documentation/devicetree/bindings/clock/qcom,sm8450-gpucc.yaml
index 6feaa32569f9a852c2049fee00ee7a2e2aefb558..d8828f905bc017172eb8442a8bb760781feb372a 100644
--- a/Documentation/devicetree/bindings/clock/qcom,sm8450-gpucc.yaml
+++ b/Documentation/devicetree/bindings/clock/qcom,sm8450-gpucc.yaml
@@ -8,6 +8,7 @@ title: Qualcomm Graphics Clock & Reset Controller on SM8450
 
 maintainers:
   - Konrad Dybcio <konradybcio@kernel.org>
+  - Taniya Das <taniya.das@oss.qualcomm.com>
 
 description: |
   Qualcomm graphics clock control module provides the clocks, resets and power
@@ -22,6 +23,7 @@ description: |
     include/dt-bindings/clock/qcom,sm8550-gpucc.h
     include/dt-bindings/reset/qcom,sm8450-gpucc.h
     include/dt-bindings/reset/qcom,sm8650-gpucc.h
+    include/dt-bindings/reset/qcom,sm8750-gpucc.h
     include/dt-bindings/reset/qcom,x1e80100-gpucc.h
 
 properties:
@@ -35,6 +37,7 @@ properties:
       - qcom,sm8475-gpucc
       - qcom,sm8550-gpucc
       - qcom,sm8650-gpucc
+      - qcom,sm8750-gpucc
       - qcom,x1e80100-gpucc
       - qcom,x1p42100-gpucc
 
@@ -44,6 +47,16 @@ properties:
       - description: GPLL0 main branch source
       - description: GPLL0 div branch source
 
+  power-domains:
+    items:
+      - description: A phandle to the MX power-domain
+      - description: A phandle to the CX power-domain
+
+  required-opps:
+    items:
+      - description: A phandle to an OPP node describing MX performance points
+      - description: A phandle to an OPP node describing CX performance points
+
 required:
   - compatible
   - clocks
@@ -51,6 +64,16 @@ required:
 
 allOf:
   - $ref: qcom,gcc.yaml#
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,sm8750-gpucc
+    then:
+      required:
+        - power-domains
+        - required-opps
 
 unevaluatedProperties: false
 
diff --git a/include/dt-bindings/clock/qcom,sm8750-gpucc.h b/include/dt-bindings/clock/qcom,sm8750-gpucc.h
new file mode 100644
index 0000000000000000000000000000000000000000..e2143d905fece19f4ef5cf413724f1597daa85ba
--- /dev/null
+++ b/include/dt-bindings/clock/qcom,sm8750-gpucc.h
@@ -0,0 +1,50 @@
+/* SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause) */
+/*
+ * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
+ */
+#ifndef _DT_BINDINGS_CLK_QCOM_GPU_CC_SM8750_H
+#define _DT_BINDINGS_CLK_QCOM_GPU_CC_SM8750_H
+
+/* GPU_CC clocks */
+#define GPU_CC_AHB_CLK						0
+#define GPU_CC_CB_CLK						1
+#define GPU_CC_CX_ACCU_SHIFT_CLK				2
+#define GPU_CC_CX_FF_CLK					3
+#define GPU_CC_CX_GMU_CLK					4
+#define GPU_CC_CXO_AON_CLK					5
+#define GPU_CC_CXO_CLK						6
+#define GPU_CC_DEMET_CLK					7
+#define GPU_CC_DPM_CLK						8
+#define GPU_CC_FF_CLK_SRC					9
+#define GPU_CC_FREQ_MEASURE_CLK					10
+#define GPU_CC_GMU_CLK_SRC					11
+#define GPU_CC_GX_ACCU_SHIFT_CLK				12
+#define GPU_CC_GX_ACD_AHB_FF_CLK				13
+#define GPU_CC_GX_AHB_FF_CLK					14
+#define GPU_CC_GX_GMU_CLK					15
+#define GPU_CC_GX_RCG_AHB_FF_CLK				16
+#define GPU_CC_HLOS1_VOTE_GPU_SMMU_CLK				17
+#define GPU_CC_HUB_AON_CLK					18
+#define GPU_CC_HUB_CLK_SRC					19
+#define GPU_CC_HUB_CX_INT_CLK					20
+#define GPU_CC_HUB_DIV_CLK_SRC					21
+#define GPU_CC_MEMNOC_GFX_CLK					22
+#define GPU_CC_PLL0						23
+#define GPU_CC_PLL0_OUT_EVEN					24
+#define GPU_CC_RSCC_HUB_AON_CLK					25
+#define GPU_CC_RSCC_XO_AON_CLK					26
+#define GPU_CC_SLEEP_CLK					27
+
+/* GPU_CC power domains */
+#define GPU_CC_CX_GDSC						0
+
+/* GPU_CC resets */
+#define GPU_CC_GPU_CC_CB_BCR					0
+#define GPU_CC_GPU_CC_CX_BCR					1
+#define GPU_CC_GPU_CC_FAST_HUB_BCR				2
+#define GPU_CC_GPU_CC_FF_BCR					3
+#define GPU_CC_GPU_CC_GMU_BCR					4
+#define GPU_CC_GPU_CC_GX_BCR					5
+#define GPU_CC_GPU_CC_XO_BCR					6
+
+#endif

-- 
2.34.1


