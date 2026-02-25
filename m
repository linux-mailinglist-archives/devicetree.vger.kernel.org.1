Return-Path: <devicetree+bounces-268256-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cA6FM7vLnmm0XQQAu9opvQ
	(envelope-from <devicetree+bounces-268256-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 11:15:23 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 35F901959A3
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 11:15:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C47C5301C58D
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 10:12:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9CAE93921F4;
	Wed, 25 Feb 2026 10:12:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="LCg1uehz";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Xn4r73jE"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B61A7392808
	for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 10:12:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772014346; cv=none; b=t9JmDZKasLMqxulOCP75GvvADP4F1E2UmjnGE8sE7p6HdPk9JsDB1JUUAQMpOyLvAoWBKHBx9LbdrzsT2xDEKm8sJYXyEhM/yRGnSmww8ORjBoN7zQi4KjMzKzJlvRObhpcQFl+epYVWfA9omwsQH9/JElWsI4U6T9V4VlKzuw0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772014346; c=relaxed/simple;
	bh=8jpYo4YkcUmjzTfGOaiuzbQPSPd9RgyNT6SBn4G+CVc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=Z3lB4Bv3g1Xm9o26uWoXAdCoRnl06nNhJBM1jIBjKvRvkbq0u1rcBp2OCME9kXl6tS7ljvIxttSh3dKT9a2500GLFD6z7MEpj3Ni0+ikwIkQSpesEuanDLQ/KISCQZ7FyVhotg7tMuQJ9TAGSZBiT9UxR/jV1BqnE8t+rq8S3dI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=LCg1uehz; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Xn4r73jE; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61P9TAC31579425
	for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 10:12:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=KEV6Gv6OpFMz1/cpmkAVMy
	QSIesDewDASdQlYVj4AVQ=; b=LCg1uehzlDtq923nnLwauTwGSzvPUMT1xsM5nx
	vwqE3ycDT4PjRsK8lh7h5rQ+7r0IMeI6DgTMI4pYLonBVdE6kF0QJPCfEsoNP+4g
	aH047wo/lDkvT59u+e0+B348+YLahGQYkTqSf0iT83ktC65o5W/rcPJxvHR04UNn
	GrBKJ7zaHdrtTFc8wB6WIF2Pmv0uU45RudgL6AahKvxvBxMFBUYaZpoXwq7ncZB6
	V4lFMpUaajV8FB1KqfBxhPrjRN1gzE39UR3ACK+od5y72ME/l7cwZUdOv5UsYXNb
	kYev1oZllmucs0ZOXW1KVTgyA6Z6qPdgy2tgtsTWkBmciRRA==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4chg1sav0y-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 10:12:19 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2ab0b2e804cso13218345ad.3
        for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 02:12:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772014339; x=1772619139; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=KEV6Gv6OpFMz1/cpmkAVMyQSIesDewDASdQlYVj4AVQ=;
        b=Xn4r73jEUEE6OC998eTpkjAw+UKrggYSA85fk0TEdCw/mZaup1H7DM3HjKpgmY82cc
         9IFxaWEZUMkgjG0MXrDGeL/cxCs+qP73Q+L/8W1bf3UJ2S7wqGIuvz5/Pse0majOlCaa
         yPD99jxPfzkeKew9M8Vd46iN34Q25LYEttzR77zm7/HCIIFS8u7N65nIbL2ih2PI5MHb
         yCxVXBdj5+JcsKnh8AAbnyXsi35PAl6xjn4srh5rNHdJ5ZpGwlO/L9Mc1N4rhqdwWDQX
         xfiqTMyH2IGsniz8/asriAiCrxUaYiB0gauHJsP0U00jSng2FwYKl1GTLcJrhQo5hCLT
         319g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772014339; x=1772619139;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KEV6Gv6OpFMz1/cpmkAVMyQSIesDewDASdQlYVj4AVQ=;
        b=aOWtFh0+cX23dIqqwhf3O1+DfUq+c2rDEeNHoVQKfWRLSihfkJBIZePRpPHsM4+hcN
         DmN233tVLQPCW7OoOOZ0fJfxcl0+IsNO4Uicv/fZKQSOmNtiWDphVtcn3TFZTES9z0Q5
         euPQagtBYoVurgzU6l8shyx24ybb4SMJSU73GGd5dLf7leTbFmksv0rfITBWKQ6ZUeE+
         exeR6IWp3DPmuZfr4GjnckcarIOex9x2JXRDkLvbFRM5cZf1QD0ddtjQUNsuCdSOogn5
         GuCoBaRd0eVgBmv3638OpuJsQThq12tKQQ/IZA9suPiy0aQ9TgAMy2K3LqN2W/0zEkdS
         hv/Q==
X-Forwarded-Encrypted: i=1; AJvYcCUBJ3hiKOqi9sL7x0ui6JbtsxDLL/KayoT0MTKU3QTjUeZDXVRK8to8s+rHjRZoEgXa4l8Y1hjmmk8u@vger.kernel.org
X-Gm-Message-State: AOJu0YxyekPzzBRLi6nl3sIR3U/bx+i/F8LfQ2oUexzjCEDM0ASh/OAN
	bnJKn1//HIugW6OdNiq1TnNt8HS+22Ly+qkwTzidNFlO4qnYC9zFi7n9HyGG6U72li6CVbcUSHN
	rVZSbLIO7NlF9Bu6uTvTCOnzdFniFeVZetLDEbwU5jCMP1tFP2OEVXM9FyHGelz05
X-Gm-Gg: ATEYQzzgZuJCRcKBjN1lm0LYMMFTDZ/UG3lqlf61gsyQb3oK7JbqZDphKbRFFANkVsv
	+UtObpYXOO7OwVTyIGlTri93koLaQb0bI86XwCGElE94pF5Cfek/yG4RGf7IU4yv77KRpjmqu06
	s4a9SjeUC8VdxLr5cdQJMxBlRMYd4DcgusB07FN1XqyyOv2eeDsNNr7vAQmj+3+/YDnJOkQungG
	W0HlSYHNwP/aEaAxERZAQYyVS+wKQU5WwmxnlycKEcwdiNuTFOtv24Ql81IxoAh4g8TnVAs4/F1
	EseECPD5YmkG5fAyu1d9ruQpjYn/pQIVAPc4YvwPudk6Tm6KNIwnY22+q9Rbf+nk0k3tqMjKe4I
	HeiiWxcvek9XLp5rNoIDFp/GdSc1zzwoYsdC7NgPqjojVoA==
X-Received: by 2002:a17:903:41c4:b0:2ad:ad0f:bbc3 with SMTP id d9443c01a7336-2adad0fbdaemr44605215ad.33.1772014338890;
        Wed, 25 Feb 2026 02:12:18 -0800 (PST)
X-Received: by 2002:a17:903:41c4:b0:2ad:ad0f:bbc3 with SMTP id d9443c01a7336-2adad0fbdaemr44604965ad.33.1772014338448;
        Wed, 25 Feb 2026 02:12:18 -0800 (PST)
Received: from hu-tdas-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2adda769518sm14443135ad.82.2026.02.25.02.12.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Feb 2026 02:12:18 -0800 (PST)
From: Taniya Das <taniya.das@oss.qualcomm.com>
Date: Wed, 25 Feb 2026 15:42:12 +0530
Subject: [PATCH v3] arm64: dts: qcom: sm8750: Add camera clock controller
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260225-sm8750_camcc_dt-v3-1-a19d3173a160@oss.qualcomm.com>
X-B4-Tracking: v=1; b=H4sIAPvKnmkC/3XNSwrCMBCA4auUrE3JswmuvIdIienUBkyjSQ1K6
 d1NC67UzcA/MN/MKEF0kNC+mlGE7JILYwm+q5AdzHgB7LrSiBEmKSMcJ6+VJK013tq2mzCXxOi
 OUcVVg8rVLULvnpt4PJUeXJpCfG0PMl23/61MMcWCamgkEBCgDyGl+v4wVxu8r8tAK5nZh2kIY
 +SbYYUBcVa96bnUUvxglmV5Ay2fPbH8AAAA
X-Change-ID: 20251203-sm8750_camcc_dt-350a8d217376
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: Ajit Pandey <ajit.pandey@oss.qualcomm.com>,
        Imran Shaik <imran.shaik@oss.qualcomm.com>,
        Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Abel Vesa <abel.vesa@oss.qualcomm.com>,
        Taniya Das <taniya.das@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-aa3f6
X-Authority-Analysis: v=2.4 cv=ZKvaWH7b c=1 sm=1 tr=0 ts=699ecb03 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=YRkI6OSQ6ZkYtCvnlTgA:9 a=QEXdDO2ut3YA:10
 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-GUID: TfGdpR-FF8s-24_OZI69Eg8o8nAXr0bi
X-Proofpoint-ORIG-GUID: TfGdpR-FF8s-24_OZI69Eg8o8nAXr0bi
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjI1MDA5OSBTYWx0ZWRfX9tc+nLhSword
 QRFRP1wc9MY+xY8goIX/rltMPdyP4pn0oTdIzmVBJonYI6fPfmR8A00kQ1AM/TNw2j+1Q59sN4D
 lRbL90Q09IZaI0rmBR2cs88KsUia+4Z0cU+raAcyAero+99CAnWYizLxsu51UWOnBMc46iE62rh
 7jZQL7/TnZACUlQGbF7fwkmlN6MemOVMinWBi14O2F5+glqcArEDdknHUHhWvs4DaCU2lyaGKpL
 obPfff0NU/bnkQHSGL9HO0TlncLiDiO9kJL0adrBNHPAjp8It3PR/6HKsrqlUjPFGZwGlUDSlSb
 5GOH8BwWr78039o7oc6kLLfuh7xcuJrRj2gpsj3rfAzYW6KU5OGp55u6faT+ZO1hc0f/uZbo1r1
 krYR6FGiLWdLj3ITnqh1jIGMJRKQXsB+e4zOSMEIdLuH0FAgq8piztPQ1/2CBk0ngqd5CHxUVcP
 5L1LCCxOWpsinUG/BGw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-24_03,2026-02-23_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 lowpriorityscore=0 suspectscore=0 malwarescore=0 clxscore=1015
 impostorscore=0 priorityscore=1501 adultscore=0 bulkscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602250099
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	TAGGED_FROM(0.00)[bounces-268256-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[b220000:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,ade0000:email,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim,0.25.240.160:email];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[taniya.das@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_PROHIBIT(0.00)[0.27.41.32:email,0.26.219.0:email];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 35F901959A3
X-Rspamd-Action: no action

The camera clock controller is split into cambistmclk and camcc. The
cambist clock controller handles the mclks and the rest of the clocks of
camera are part of the camcc clock controller.
Add the camcc clock controller device node for SM8750 SoC.

Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
---
Changes in v3:
- Update the Mx phandle to use MXC for camcc node as it is a always ON
  rail and can sustain this usecase.
- Link to v2: https://lore.kernel.org/r/20260220-sm8750_camcc_dt-v2-1-e4b7faf35854@oss.qualcomm.com

Changes in v2:
- Update the MxC phandle to use MX for camcc node.
- Add RB tag [Abel Vesa] and update the commit message.
- Link to v1: https://lore.kernel.org/r/20251203-sm8750_camcc_dt-v1-1-418e65e0e4e8@oss.qualcomm.com
---
 arch/arm64/boot/dts/qcom/sm8750.dtsi | 37 +++++++++++++++++++++++++++++++++++-
 1 file changed, 36 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8750.dtsi b/arch/arm64/boot/dts/qcom/sm8750.dtsi
index 3f0b57f428bbb388521c27d9ae96bbef3d62b2e2..fa3d933f26600e42cedc547422871cf12bdc6778 100644
--- a/arch/arm64/boot/dts/qcom/sm8750.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8750.dtsi
@@ -2,7 +2,8 @@
 /*
  * Copyright (c) 2024 Qualcomm Innovation Center, Inc. All rights reserved.
  */
-
+#include <dt-bindings/clock/qcom,sm8750-cambistmclkcc.h>
+#include <dt-bindings/clock/qcom,sm8750-camcc.h>
 #include <dt-bindings/clock/qcom,rpmh.h>
 #include <dt-bindings/clock/qcom,sm8750-gcc.h>
 #include <dt-bindings/clock/qcom,sm8750-tcsr.h>
@@ -2046,6 +2047,23 @@ aggre2_noc: interconnect@1700000 {
 			clocks = <&rpmhcc RPMH_IPA_CLK>;
 		};
 
+		cambistmclkcc: clock-controller@1760000 {
+		       compatible = "qcom,sm8750-cambistmclkcc";
+		       reg = <0x0 0x1760000 0x0 0x6000>;
+		       clocks = <&gcc GCC_CAM_BIST_MCLK_AHB_CLK> ,
+				<&bi_tcxo_div2>,
+				<&bi_tcxo_ao_div2>,
+				<&sleep_clk>;
+			power-domains = <&rpmhpd RPMHPD_MMCX>,
+					<&rpmhpd RPMHPD_MX>;
+			required-opps = <&rpmhpd_opp_low_svs>,
+					<&rpmhpd_opp_low_svs>;
+
+			#clock-cells = <1>;
+			#reset-cells = <1>;
+			#power-domain-cells = <1>;
+		};
+
 		mmss_noc: interconnect@1780000 {
 			compatible = "qcom,sm8750-mmss-noc";
 			reg = <0x0 0x01780000 0x0 0x5b800>;
@@ -2740,6 +2758,23 @@ usb_dwc3_ss: endpoint {
 			};
 		};
 
+		camcc: clock-controller@ade0000 {
+			compatible = "qcom,sm8750-camcc";
+			reg = <0x0 0xade0000 0x0 0x20000>;
+			clocks = <&gcc GCC_CAMERA_AHB_CLK>,
+				 <&bi_tcxo_div2>,
+				 <&bi_tcxo_ao_div2>,
+				 <&sleep_clk>;
+			power-domains = <&rpmhpd RPMHPD_MMCX>,
+					<&rpmhpd RPMHPD_MXC>;
+			required-opps = <&rpmhpd_opp_low_svs>,
+					<&rpmhpd_opp_low_svs>;
+
+			#clock-cells = <1>;
+			#reset-cells = <1>;
+			#power-domain-cells = <1>;
+		};
+
 		pdc: interrupt-controller@b220000 {
 			compatible = "qcom,sm8750-pdc", "qcom,pdc";
 			reg = <0x0 0x0b220000 0x0 0x10000>, <0x0 0x164400f0 0x0 0x64>;

---
base-commit: 47b7b5e32bb7264b51b89186043e1ada4090b558
change-id: 20251203-sm8750_camcc_dt-350a8d217376

Best regards,
-- 
Taniya Das <taniya.das@oss.qualcomm.com>


