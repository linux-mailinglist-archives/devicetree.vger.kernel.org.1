Return-Path: <devicetree+bounces-195424-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E9A4B019AD
	for <lists+devicetree@lfdr.de>; Fri, 11 Jul 2025 12:26:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id F0E2E76239A
	for <lists+devicetree@lfdr.de>; Fri, 11 Jul 2025 10:25:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B608C283121;
	Fri, 11 Jul 2025 10:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Dr58cQa8"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC8B628136E
	for <devicetree@vger.kernel.org>; Fri, 11 Jul 2025 10:25:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752229553; cv=none; b=qbED4z4bND0tJ7JVLxBFAlpOZ3P9/ubrZquO7hgLjuyoI5LWmDeb55OBu+yCoCvIg9+D7LLSg7SVz/KwyXDQC9EcRkDHsVq6sV+bRoUvLomEyrMjcOffcMzEuMUcVNwrWBVMTUvoVHogtKv1oKlyw2FrAZ9x8pbhh/B5rgDGg/8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752229553; c=relaxed/simple;
	bh=PUWLtICbEV4L4aRlWDR0eUg09UFWc4K+vrBGp32riA8=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=DsjNFMlIX9N262LB56gbcoIjoEsnSb83lUArqUpTI3jIiY9+r/zAZhqpspzIkI/73a3u3tqH+G4fGsfoECyIhPArtOsV6YeJsGfTkLr2MFtttUqCRafy9ehen8RXBRzfr1jl0uvpQ8n219LvQihR2Kn7Byj6OS89i8tTaFOf+IU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Dr58cQa8; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56B1XBVZ021908
	for <devicetree@vger.kernel.org>; Fri, 11 Jul 2025 10:25:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=H0BE0LBDOrjuC7B70yCc4WxoF2P4/T4YLOW
	BcDkRgnE=; b=Dr58cQa8Au9Kq//IpQjchEEbWX1jbEuhhQ6vnGT8GyJDavRhvm6
	DQ621XqYWv/b+54bZLCNGBKeJBM+5gmeifYtVGVs3LqF05EZdSYORvh9c6Oxbn5x
	iSRESzFgOhPypXGtAQ1sQmc53dkovUIU8IF5SuEvFr05Ieohwz3fRZJJwv4uDg10
	76Ir76RyeFwXEn84Y5Q3Glygvc1gNl7INc3AuuJeQHylBC0K/zBL9BIFjBOFkJds
	DfabjTMqYPuRePcjr20ECWuOv4O/JjdA6Z7sKvpXH/Cualeyo8GLtgccq0iBjfNN
	EWB1AzrO6aznxESkx72chff2IS9w4qSGhUA==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47r9b198fb-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 11 Jul 2025 10:25:49 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-237f8d64263so19388475ad.1
        for <devicetree@vger.kernel.org>; Fri, 11 Jul 2025 03:25:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752229549; x=1752834349;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=H0BE0LBDOrjuC7B70yCc4WxoF2P4/T4YLOWBcDkRgnE=;
        b=OCyqPj+VyqiwC5ugUYAqO6JioueuXK1no9yPYf1qY7mg4ovLV8JUSIF44utXLMawk4
         KAqsuWvxH7TGwr6lwGWhQDIanrN1r6rdcDW3zUKEeSW8C8YpjlZp+tG17pHjU1L/ujRu
         op7GKxe761gDbIvNg7ssBA/5Vwh/FSzhYVUG/6Yw9Y1vPnCMZBlMaBVMCM+wR419Bd69
         J0jKGDCKnpb76E24pjU7a/gqkTcyB+RTrRAgHrqeenqzfumgCwfSak15E4Fb0o93Xyuw
         mM61Hh+54rKJnCR87xhWhV++VKUeINM6WcbKYXL17ePJuYS7LvK8NEJ+ajDQFC0uMpk0
         8Qrg==
X-Forwarded-Encrypted: i=1; AJvYcCX0o7uieBraKgZcGM0usURTWkYCfjwV8ZEsoAnVZ5rEqMJ4DgB4JT7V2lx8BTfS2GAdoIAnUHuMQjC/@vger.kernel.org
X-Gm-Message-State: AOJu0YzKsCTS29DQjlSG1NSfT1rUga8vfldlByvsUdRpk6sbqRj1IjeC
	TcQp0/43pwYd/GFAE3gCtIyLCpxJXsL70aRfKBZL1WthjNUKSjd3W2737ulI53tAX/b1DJbwbS9
	HsJlglF2qioRO7z7GjMW5D/MW7Ll2JF71z88GoLdMBfX/GchhhKnFrWBUGeWRc1ht
X-Gm-Gg: ASbGncsCdSBe0Td6+hdcrqNeIb+Y96rovwzKk+ChPN9P5sRptOKfCBPamPAKI4+0dpm
	vuEk/L37KxeNTLSjBcIjpH2rCsp4kDQbRCXjGCCvzx6B7Xp+fBW+zHZZKwJNerBbwa+f03IcOhW
	06LKOjUPibbbKW5dsdCpiVC8ACvMtJplzPjUk9rq3nPqlMyVsC5rWdey6QmhY1Whnj6VPdAKWDf
	HfmcrZqtyc/erwlimaOH80e6NXBGuVGnnh8YrtuSTSUT+Qqa7wsEmE5H1GRdEKTAxEDH/0Qdbvs
	bRwXJWZ8r1VaOXcvudLeoOqQviw+j3puPAf1Tys+1xiDL7UHFN4XsyeeZOTxmE9elqDqCt+yQt6
	+Go4=
X-Received: by 2002:a17:902:e88e:b0:23d:d0e7:754b with SMTP id d9443c01a7336-23df0831355mr23342105ad.18.1752229549002;
        Fri, 11 Jul 2025 03:25:49 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEMWhYRTz9DHMwDnknPY8+YaEh+l+tNPzBDYHrBCVYA0fm1baC/+C2SiR09t+a0HEd6eQzK+w==
X-Received: by 2002:a17:902:e88e:b0:23d:d0e7:754b with SMTP id d9443c01a7336-23df0831355mr23341885ad.18.1752229548626;
        Fri, 11 Jul 2025 03:25:48 -0700 (PDT)
Received: from a10065738a1d.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-23de436839bsm42861375ad.253.2025.07.11.03.25.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Jul 2025 03:25:48 -0700 (PDT)
From: Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>
To: Georgi Djakov <djakov@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Sibi Sankar <quic_sibis@quicinc.com>,
        Odelu Kukatla <quic_okukatla@quicinc.com>,
        Mike Tipton <mdtipton@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>
Subject: [PATCH V2 0/3] Add EPSS L3 provider support on QCS8300 SoC
Date: Fri, 11 Jul 2025 10:25:37 +0000
Message-ID: <20250711102540.143-1-raviteja.laggyshetty@oss.qualcomm.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=dYuA3WXe c=1 sm=1 tr=0 ts=6870e6ad cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=Wb1JkmetP80A:10 a=3bDbtYyfCIv0pmMcAUEA:9 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzExMDA3MyBTYWx0ZWRfX32DA7dDH0N4Z
 /oU9ni83xlsHcIMdXTIYXkHwXnpeFSiNJAqeaLJZQYBanu+7B0V0TZMBxlHXRSDdqi+61sb5RAW
 Mf+QrLclzWrkfMm+j8AI2VeM05ZSvPtMjWPLinDmnsFVrsmnibADVtEbVOfL5vkN1u4InrE5U0P
 Pwyh9na7NC4Zc/h/M8VY4YMUk89AmAio1VXDo85PqY/mmJCB72eC2EpQUFb2uQNoO5CmaBqEWJg
 c5k8mSi3qFqRWy9fRxrqantLOUV9uER7TQYfL3C0+C2FD2vy5apH05C0Vh3PqeAbodSGPo2p5Q5
 CVy/Sr9nzhalMo4a0dOi9dAEbid4jXMShGTDdmr1KM0s6rXqKHO7PXaQT7q3r0MiDbR7PVUYTap
 Jc0Hr1KzWaPs6c5+tEotwdEkleD4qgy0qDt9JQVXFgkDLbVRBoBvW2Hd+DSL98lfZZc5ABzl
X-Proofpoint-GUID: YNzRwaAlX2SxxcpQ6e-RZrMnazBnZUxZ
X-Proofpoint-ORIG-GUID: YNzRwaAlX2SxxcpQ6e-RZrMnazBnZUxZ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-11_03,2025-07-09_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 suspectscore=0 clxscore=1015 impostorscore=0 lowpriorityscore=0
 priorityscore=1501 spamscore=0 adultscore=0 mlxlogscore=999 malwarescore=0
 mlxscore=0 bulkscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507110073

Add Epoch subsystem (EPSS) L3 scaling support on QCS8300 SoC.

Changes since v1:
 - Removed SoC specific compatible "qcom,qcs8300-epss-l3"
   from driver and used SA8775P SoC compatible as fallback in devicetree.
 - As the EPSS hardware in QCS8300 and SA8775P SoCs are same, a 
   family-specific compatible string for the SA8775P has been added to the
   bindings. This avoids the need to explicitly listing each SoC in the
   match table and the family-specific fallback compatible can be used 
   for SoCs sharing the same hardware.
 - As suggested by konrad, added EPSS path handles for CPU nodes.

Imran Shaik (1):
  arm64: dts: qcom: qcs8300: Add CPU OPP tables to scale DDR/L3

Raviteja Laggyshetty (2):
  dt-bindings: interconnect: Add EPSS L3 compatible for QCS8300 SoC
  arm64: dts: qcom: qcs8300: Add EPSS l3 interconnect provider node

 .../bindings/interconnect/qcom,osm-l3.yaml    |   5 +
 arch/arm64/boot/dts/qcom/qcs8300.dtsi         | 301 ++++++++++++++++++
 2 files changed, 306 insertions(+)

-- 
2.43.0


