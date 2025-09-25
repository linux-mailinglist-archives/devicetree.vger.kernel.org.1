Return-Path: <devicetree+bounces-221201-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 80419B9DB52
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 08:42:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DE4174C4277
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 06:41:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0FF502FC014;
	Thu, 25 Sep 2025 06:34:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="IPkBWe7b"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54A722EA159
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 06:34:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758782075; cv=none; b=LZngUoIGwYZo63W+HLHtEL0lxDoJq6c8etCPitO39I+SaclL5R9nGAh7MbQ5Idmus8yiSikuYy5LEhzdIdR/4U2nNR6euYdvNkaGcq0YvMAnOF86gobK9sCDfK4uC8mrq38MmFehQm8YvNj7lRGK9p1qiT1rsmH885L2wBAkkBU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758782075; c=relaxed/simple;
	bh=xP3mwQRtUF+y7ngL4/MSOznuYxF3R1hx7J2yaHJ2mqA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=DmZzx3yK/IBGghzefIWoRUtkzI1+Rfmn6F3NSz8Yzwol9DPtJAsscB4Q6REQBO9hTkILRADALYJ+fzlt7uzExNmzl6n9+qve1OzdhmMHu69mf+ZBAM/TEvPtEr6d/H1yxzAXPSQX2CZaArrXa6FYAgXv2SDJJOKEsWxQ/XjNrsw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=IPkBWe7b; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58P0KfAL024042
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 06:34:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Y+ym1GIkn6KQx+5G33RyPIpJNvqhHUVvcETu0uk7voE=; b=IPkBWe7bRuJ3g5Bc
	4vXizwhjNMd2aN0MEP05rH9cw2b75/siaU2Xq6lRYc4gM9vRIrf0+v5TPkbSYoe6
	UEyz7hGptxF7Jp47ou2Ze5O4IUFXg5n1jO/JJln9/j42hbS0wzMyL0J6Sa8JVto4
	SSAskwa40tpf3EBMKx7zcATatgHSy96HQ/oUXSbaKLNPk8elpeUiFLarrqF4f07I
	pccR4FYd5dBDY3JoV/79X2nhfSrkBUC3L5kT3deW0bABbSA3/P91e3saYIKRa2NF
	VFy38LA68Wg0XpFLdjAHMyTZ9Luu9zV0eijFOYmA+MYzrdcpCA0ndyIGqtNXMVdO
	S/alDw==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49bwp0e2jg-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 06:34:32 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2697c4e7354so16555105ad.0
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 23:34:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758782071; x=1759386871;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Y+ym1GIkn6KQx+5G33RyPIpJNvqhHUVvcETu0uk7voE=;
        b=uFU3biPenLTLXS+OMsxftPVzWsabKOWuJ5zgQLYiakT47BuMxpldYbeX2On1KHxvSQ
         ltMd5j7Q8iz36SUOdbAsngW2vkpL2hjfr10KgDjTiVZGWt4AdWvE0LtTddlV6ZDqff33
         e2mPgfZGWwgSfhlqchQ+pkSzsz+rN+j1vN02jqdRknPgYj/7zrDfW8yt/zzZEn8CHnW9
         WMSiP4QXtWLO7YGpV789ocn5CjEh1J9VcIncDGgap50MmtRJLrh6i+0qdv2T3D0Fz50g
         XQwBXGcxQHc3PqofAUrG1dT994OL9eAHVBAOwcrl4Ht2Me9iSYGrFwQuR+rOH39AjV4S
         Cfqw==
X-Forwarded-Encrypted: i=1; AJvYcCXWF0mb/mx4v8OPQ82ahJ84DwgGzVgwBlicf2Gm/vWD2LxzsciDJTw9ZV9NosXJbsR2iwm6yQvL0zBd@vger.kernel.org
X-Gm-Message-State: AOJu0Yyqr1m0J5nWaE3rnn+oV44ugeuk12fFKtg+sUMZd/IbD3SE0z0I
	puHwsYnjxgOD5D4/d8UneyUurcdmdYJjP4rE6ata+vSbna0YW/vmVNwuuSw/lcM8VFocyu/Bw1p
	TaPe9hVVwnDtRmaNzGNr/qYunf6iXKoUd8jIZ8OLRT1FB2F7pq8epht8/STjTv5zl
X-Gm-Gg: ASbGncsXvI2PPcJMf6t8+16YxFVDu/qVpKOQYClx4+N6uJe8oGJcNix+q+r+P5r205f
	3Q+vIqLLplR2TyfKe1k/G/wfN7ltK3RFOXmQotLU3XGakb+LqQuWKH1Y3h+9FzQmwAm9FCPc0ea
	K4s1VqewjubKHk7QjQPORjVaNUahC+GDZkquMorVBW05/W3KFJSk/SrPq2JnclFNAn+6S63YmcP
	WlCS+I7lsDQV+XosuNrafmQJ8736PLeglAUXtDvydYgQbyOvgt2nBB98S+3GT/SoMNFdSBORTRc
	r9e1OGRseBvlMWgq804Rph56LQ4i26qdPRefSiCZsu+mvTBXfUG41eUeIwaY3HfAet5a0QeKDmn
	p3JUwMvyQi8qLhRCI891tB7csMTNyU+uIJcet+B2bNIE59LUpZzycQsEzi//8
X-Received: by 2002:a17:903:19cc:b0:269:8ace:cd63 with SMTP id d9443c01a7336-27ed7229183mr19631155ad.30.1758782071045;
        Wed, 24 Sep 2025 23:34:31 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG31AmtoC1Zn15KZMX1OzzSTQkrttrK7ACmhnzo6zvXHSNN35X6ayl1VDDbrvSae4re+QZ2oA==
X-Received: by 2002:a17:903:19cc:b0:269:8ace:cd63 with SMTP id d9443c01a7336-27ed7229183mr19630785ad.30.1758782070570;
        Wed, 24 Sep 2025 23:34:30 -0700 (PDT)
Received: from hu-pankpati-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-27ed671732asm13793515ad.49.2025.09.24.23.34.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 23:34:30 -0700 (PDT)
From: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
Date: Thu, 25 Sep 2025 12:02:30 +0530
Subject: [PATCH 22/24] arm64: dts: qcom: glymur: Add display clock
 controller device
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250925-v3_glymur_introduction-v1-22-24b601bbecc0@oss.qualcomm.com>
References: <20250925-v3_glymur_introduction-v1-0-24b601bbecc0@oss.qualcomm.com>
In-Reply-To: <20250925-v3_glymur_introduction-v1-0-24b601bbecc0@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Pankaj Patil <pankaj.patil@oss.qualcomm.com>,
        Taniya Das <taniya.das@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Authority-Analysis: v=2.4 cv=KNxaDEFo c=1 sm=1 tr=0 ts=68d4e278 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=xJZpmU4_KKqDGsKAShUA:9
 a=QEXdDO2ut3YA:10 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-GUID: Pi0UUl5PbCp3_1u5_kcsJGuLfhtyoJO9
X-Proofpoint-ORIG-GUID: Pi0UUl5PbCp3_1u5_kcsJGuLfhtyoJO9
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIzMDEzOCBTYWx0ZWRfX2mJrNCJkq52V
 2ahbAs+iHJJeJBwO2M/1ooR5mxvPA+UA34/uyzfGsy+LFdpelXKPvaLoxWhst+zR+fOgOn6z5ZH
 Flebln6bxXQRmyAzA8bRoWLPwckcMCYC9h692ehuCTq4BgNOHxftD9JsGnANWdFcIxcEJ+TReW6
 whs5NAq6gR5IomRm6K3K1XUQRPQU+Isgc7xEM2aEN5D177rW2G3U7Inxp7p+PSchR1Gnq8xkB35
 3T/D4o7Zo4x9/PW0CgD6DVYpGZHuZmO9k3sYL0LtWOE1SPiRkuNuQEBKDx49di8TE9iWVRVF7/1
 PVRbKAii2aWFiQZbHA6gLXgqR9LpPdfCmhX+ja8mKUOjrxo27WfmFH5nw9itaILGYj2DM5R8Zj9
 S4BNInkV
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 priorityscore=1501 clxscore=1015 phishscore=0 suspectscore=0
 adultscore=0 bulkscore=0 spamscore=0 malwarescore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509230138

From: Taniya Das <taniya.das@oss.qualcomm.com>

Support the display clock controller for GLYMUR SoC.

Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
Signed-off-by: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/glymur.dtsi | 30 ++++++++++++++++++++++++++++++
 1 file changed, 30 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/glymur.dtsi b/arch/arm64/boot/dts/qcom/glymur.dtsi
index 986dc385200029071136068ab79ff8dd66d5284a..8a563d55bdd4902222039946dd75eaf4d3a4895b 100644
--- a/arch/arm64/boot/dts/qcom/glymur.dtsi
+++ b/arch/arm64/boot/dts/qcom/glymur.dtsi
@@ -3,6 +3,7 @@
  * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
  */
 
+#include <dt-bindings/clock/qcom,glymur-dispcc.h>
 #include <dt-bindings/clock/qcom,glymur-gcc.h>
 #include <dt-bindings/clock/qcom,glymur-tcsr.h>
 #include <dt-bindings/clock/qcom,rpmh.h>
@@ -13,6 +14,7 @@
 #include <dt-bindings/interrupt-controller/arm-gic.h>
 #include <dt-bindings/mailbox/qcom-ipcc.h>
 #include <dt-bindings/phy/phy-qcom-qmp.h>
+#include <dt-bindings/power/qcom,rpmhpd.h>
 #include <dt-bindings/power/qcom-rpmpd.h>
 #include <dt-bindings/soc/qcom,rpmh-rsc.h>
 #include <dt-bindings/spmi/spmi.h>
@@ -2775,6 +2777,34 @@ lpass_ag_noc: interconnect@7e40000 {
 			#interconnect-cells = <2>;
 		};
 
+		dispcc: clock-controller@af00000 {
+			compatible = "qcom,glymur-dispcc";
+			reg = <0 0x0af00000 0 0x20000>;
+			clocks = <&rpmhcc RPMH_CXO_CLK>,
+				 <&sleep_clk>,
+				 <0>, /* dp0 */
+				 <0>,
+				 <0>, /* dp1 */
+				 <0>,
+				 <0>, /* dp2 */
+				 <0>,
+				 <0>, /* dp3 */
+				 <0>,
+				 <0>, /* dsi0 */
+				 <0>,
+				 <0>, /* dsi1 */
+				 <0>,
+				 <0>,
+				 <0>,
+				 <0>,
+				 <0>;
+			power-domains = <&rpmhpd RPMHPD_MMCX>;
+			required-opps = <&rpmhpd_opp_turbo>;
+			#clock-cells = <1>;
+			#reset-cells = <1>;
+			#power-domain-cells = <1>;
+		};
+
 		pdc: interrupt-controller@b220000 {
 			compatible = "qcom,glymur-pdc", "qcom,pdc";
 			reg = <0x0 0x0b220000 0x0 0x10000>;

-- 
2.34.1


