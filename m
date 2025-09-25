Return-Path: <devicetree+bounces-221086-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 265D1B9D282
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 04:29:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 09EF61BC2023
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 02:30:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E18DC2E718E;
	Thu, 25 Sep 2025 02:28:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="NU3C+jqN"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 334FE2E6CC8
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 02:28:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758767338; cv=none; b=LdBkc4peuTbFqEUFGZ31Z5Nxp+b1ptpoqYrlYQVT8Bgu1sHoabI9aUOfXzU+2igxgdeO8LLle0m5dDtXPZlvuZAs0HS34LwKFjpd/dFsoLX6B2aWLxBSOYiOYsJGYh4fw/Xuj6NYQlSELyPvTP5lWdtjlFMrX+lfuunGuFtXi5U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758767338; c=relaxed/simple;
	bh=hRao4UrERcNdb8WEbncfpT8mndQ9UcxF3KEWBpC5u2Y=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=LoL7tb5Xw+0zZ4jgkz35iNc/rYf3lqqjoAYe45Fz28hmBOLknSlkxHHKdUnyO8eN3eyQqrMBj075H1b1qKDRtU3V0OdeBADSdHFDh1GYugwWQtJ0SCMuB1VSaMHyuew0ISt1IzTJ+U/R07J/Z5Gcg9IHL9w3T5B++OsX26a+bTU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=NU3C+jqN; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58P0Wnbp020144
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 02:28:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=Xn4sEHzNAa+
	rFACXl1zYTLnQ9MM2kFlvsIN0wm59uEQ=; b=NU3C+jqNPZacV30BvLQjAJXyLUa
	Ha9UuAi21OPzL78F4peQ7R2+UpVCyq8q/RqMUrFUVZrlPTuRWRHSmou8CP/JoRlo
	GvyhSdpbulTjrwiyie7YNASuENxa73PmvIMylnmH9qetR3PBZzlovik4X+jupowx
	NNKIiODvep37KvZ1BzKIqGhrftqbvZSsb1y6aadu8LXLOoVlbdAUrQl/OF2B3CdC
	xdv3CPEUxs/aUseEejWTRyW9VOLVlCfch+i1aWoSxMStywL8JbiVIYygW64AjGa+
	/j/IpptsWSvMGYsPllwhsX6abcjP3I8wdstjVb1MAB0B+u1rNpKUycI/Z6g==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49bjpdynfy-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 02:28:56 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-32eb864fe90so648105a91.3
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 19:28:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758767335; x=1759372135;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Xn4sEHzNAa+rFACXl1zYTLnQ9MM2kFlvsIN0wm59uEQ=;
        b=rEIxuYuzSBTEgCeB3p5xg5vHoQO0p3PRC4HmG2zuwxvJnkMeC1NuxQkPAPxVZ3j/8h
         u92fhg1rQb0KJiOoatN090WNS5qbv/m4OknTXI0PZVkmRz1hVm3I3FzfzK0qOALKgFLE
         hE4wNXUgulC4uI4zvQ0Ce1gdwCi9q0SV1FvQA3cAol8xLUnM/pnyFQChE5yD802dCJf5
         Rnmpk4AAUh/SvdvgxZQ3vRirOgyKT7Buco7YFxTKrbic5FYDPz68P0OwBXVENFE5eFHO
         0Gz4Utw2fub8UVE25VX0HGdWAAWl20Va0I7eYm34mWGmCVcXl7rpP5YnWLaTKDMgtZDi
         HZGw==
X-Forwarded-Encrypted: i=1; AJvYcCUqgvhNmlTS3dqNSKqPAOZHrI3ybN3n7AYFKQljwb64x9jV0qZmPDKMoBnwK0gH3YMYV8TYAsf+mvFr@vger.kernel.org
X-Gm-Message-State: AOJu0YzXj0cLGMoIMI5Hf76XRfu+IDZBJyK+GrITqfRAFUc7FrHaOQug
	ZuGd6wEv3OGvZrCqNdeq/uLG/KFbrnAONqqJN8Fk9kS7OAKM0QKQElfN61f/yK4o4QQ+fwLW4Ol
	HUKjAA9uXZRahXguptZRp1hxx5uuw/gfADa0syAOxJtj9XxPqAdZaGD2xY0HSslT2
X-Gm-Gg: ASbGncuVUHUDVhkdNm4C3Qx+Jlfqnz5JK7dR7s0JY97O9bndP/t8Q/DkfOeK4CgkltV
	XnULY6LaV8LNF2CMUH8FceyQMtBcOPR0Xpin3a5jrbLXri44fs97xGM+xPmmoxgKcpM4qlCgrQ1
	oNfjPRXC4/nBVN5TRe0rPfyEl7GsSf+g2l+lfwhXC0MlYV7dRFU6Qe8V4Yw81bvtWE0cGEqXb4/
	mXdf2dIGTSC+ZNngfU9lO0KcAlmu75hzrwTIMp86l96JXCN4OPUSXKUGecn0cIUs5Zd5XCFFFPS
	a54wXkf3qV8Wyw7roW0j6apB93Io80sZynzotBcSNnCcDY54NY/pw4YdsAHnKQU3Gl9y69YJgtE
	F98hsn3+3xXKkunx5
X-Received: by 2002:a17:90b:4c86:b0:32b:623d:ee91 with SMTP id 98e67ed59e1d1-3342a79339cmr1495552a91.27.1758767335541;
        Wed, 24 Sep 2025 19:28:55 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEgXeMBQTVJUw09Ed16G9vpiBcqbEqjObxvR8uAyaAS4aBdffTCSPvxaIOoG4hdBmWBMeZxSQ==
X-Received: by 2002:a17:90b:4c86:b0:32b:623d:ee91 with SMTP id 98e67ed59e1d1-3342a79339cmr1495526a91.27.1758767335040;
        Wed, 24 Sep 2025 19:28:55 -0700 (PDT)
Received: from hu-wcheng-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-33471d711ecsm499881a91.4.2025.09.24.19.28.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 19:28:54 -0700 (PDT)
From: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
To: krzk+dt@kernel.org, conor+dt@kernel.org, dmitry.baryshkov@oss.qualcomm.com,
        kishon@kernel.org, vkoul@kernel.org, gregkh@linuxfoundation.org,
        robh@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-usb@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>
Subject: [PATCH v3 01/10] dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp-phy: Add Glymur compatible
Date: Wed, 24 Sep 2025 19:28:41 -0700
Message-Id: <20250925022850.4133013-2-wesley.cheng@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250925022850.4133013-1-wesley.cheng@oss.qualcomm.com>
References: <20250925022850.4133013-1-wesley.cheng@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: 9fzPfmUhRCxH73AhII8oESUg4MXCn4s3
X-Authority-Analysis: v=2.4 cv=Pc//hjhd c=1 sm=1 tr=0 ts=68d4a8e8 cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=tYbxrAoMRz_Rh0uxvwoA:9
 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-GUID: 9fzPfmUhRCxH73AhII8oESUg4MXCn4s3
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIzMDAyMCBTYWx0ZWRfX0+gS6s4H0W+V
 bFRIMU0xjREJjG5p8yrJZkeWuYvNpAYUTG2LEHRqx/lwO4nDMt8KPdPQJXncvNHmgmkmM4NFNMq
 4KwB47oCxrx/oGDJyAwbJgbg+esg6rc0Ix9npGoLnmOWx4BAsa+tx8fUri+EydEJhX14RkHclVO
 Kk8/LChP3T34Yqp/pxJ0Y4wjVb08+AzsgIOSdmzZjWEAj79N588A17lXuBwAqE4yXlNE1Rfh1pR
 hZC2dtr8YlE1xecm/lh5WQdm5l+YpurlO3e1BSmrfm9zGb6KZUHR0GGoEAZQEZrgcCJ28KBFnLa
 jn3KGl3wmhcVxW8nkh9OpNneSEvwc8OhMnGap0njoMwDq+C81zY6T100EhWomNrIUfJySHmtvF6
 DvZ3dEiu
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 bulkscore=0 malwarescore=0 impostorscore=0
 spamscore=0 suspectscore=0 clxscore=1015 adultscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509230020

Define a Glymur compatible string for the QMP PHY combo driver, along with
resource requirements.  Add a different identifier for the primary QMP PHY
instance as it does not require a clkref entry.

Signed-off-by: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
---
 .../phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml    | 19 ++++++++++++++++++-
 1 file changed, 18 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
index c8bc512df08b..2f1f41b64bbd 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
@@ -16,6 +16,7 @@ description:
 properties:
   compatible:
     enum:
+      - qcom,glymur-qmp-usb3-dp-phy
       - qcom,sar2130p-qmp-usb3-dp-phy
       - qcom,sc7180-qmp-usb3-dp-phy
       - qcom,sc7280-qmp-usb3-dp-phy
@@ -46,7 +47,7 @@ properties:
       - const: ref
       - const: com_aux
       - const: usb3_pipe
-      - const: cfg_ahb
+      - enum: [cfg_ahb, clkref]
 
   power-domains:
     maxItems: 1
@@ -63,6 +64,8 @@ properties:
 
   vdda-pll-supply: true
 
+  refgen-supply: true
+
   "#clock-cells":
     const: 1
     description:
@@ -109,6 +112,7 @@ allOf:
       properties:
         compatible:
           enum:
+            - qcom,glymur-qmp-usb3-dp-phy
             - qcom,sc7180-qmp-usb3-dp-phy
             - qcom,sdm845-qmp-usb3-dp-phy
     then:
@@ -128,6 +132,7 @@ allOf:
       properties:
         compatible:
           enum:
+            - qcom,glymur-qmp-usb3-dp-phy
             - qcom,sar2130p-qmp-usb3-dp-phy
             - qcom,sc8280xp-qmp-usb43dp-phy
             - qcom,sm6350-qmp-usb3-dp-phy
@@ -142,6 +147,18 @@ allOf:
       properties:
         power-domains: false
 
+  - if:
+      properties:
+        compatible:
+          enum:
+            - qcom,glymur-qmp-usb3-dp-phy
+    then:
+      required:
+        - refgen-supply
+    else:
+      properties:
+        refgen-supply: false
+
 additionalProperties: false
 
 examples:

