Return-Path: <devicetree+bounces-186557-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CFEBADC5B1
	for <lists+devicetree@lfdr.de>; Tue, 17 Jun 2025 11:07:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1E8AB3AE903
	for <lists+devicetree@lfdr.de>; Tue, 17 Jun 2025 09:06:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 01D9229188C;
	Tue, 17 Jun 2025 09:07:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Njy4D0by"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7DB272116E9
	for <devicetree@vger.kernel.org>; Tue, 17 Jun 2025 09:07:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750151225; cv=none; b=ks9Ncatzi6DWyimYRgWUfcU4zU1i32obcgZMyfEvNADa+vXy111BlWNd8qCJ4wSHh/bAvVnRI4qNpFdIMcbETQNAiJ6RKlKb2HGDfakiuQVZWnSM+NQU+KxRCx9rWovQH3yPwCqWiegYrnS2aPqJUGlDqzcOwuMZbJgWiojq9i0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750151225; c=relaxed/simple;
	bh=XNU86N9EHwH8cVHeT2hJe29cwljaIdUhr0t4VCXYkAE=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=mZD2xGEFrVYRXYTmiJEaA+ExeG76mjZqT9oW3h4nhafJZkYOKuijCFvCW67OAfS0oPH9qbESpBUuKB4gWGb4bkMfkAs5xuCebbuDSlxkMiVG6kTzsGhaFqnneIXJeriI4bsWgZDmxDAX6a/SWLKvy3CRMxs+EF84WauaPXN9cyk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Njy4D0by; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55H6VlAJ010987
	for <devicetree@vger.kernel.org>; Tue, 17 Jun 2025 09:07:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=fmqvmK9k/AKo5SNpLwgroPGZIonaKg0+c1g
	g9XdcTz8=; b=Njy4D0by1rKz8FFXMBXuK4wYuGwJAfQohg0EidBRNaXef5i83to
	7SNicNaPQogiJ+3kP5VFIu88ODWHn2bKOc/Vn9Ua/LaXULw0k8cis/1RWMI43gmi
	4/Pgi/2vlzZCl/iudMc/yMAmNj09S48uTpw1yF5Lcffs6PRRTntMW7s2fDyXNn1X
	jz0UuDA5DeSpsLC3h/kq2cN7nKRLmlNV71tlv58Y+vVfkY4iN7pegkUPzkvK7pGM
	Uo+nZnOIxIfsSs/QiKR73u4LwJ5FwZOK6pv9YrmntGuod1SdngXTS/1uJUT5K/1K
	gGLvRf2qMWNCz5fGPey0Bq4yzK4V5FukyWA==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 479qp5p9qp-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 17 Jun 2025 09:07:03 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-31215090074so7681965a91.0
        for <devicetree@vger.kernel.org>; Tue, 17 Jun 2025 02:07:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750151223; x=1750756023;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fmqvmK9k/AKo5SNpLwgroPGZIonaKg0+c1gg9XdcTz8=;
        b=i7NnVWaLjl7jkTDz0Nw4z8e/uSQIqYiVDQZmj7fIMJqS3alP96wjp+qN0GhluArbRh
         53zLBdWG+YvUiwG4HGaYdWGjxQB8/ETEqcKVG9CA+i8mDtI4Jf+7w/KuuwVQQ7o5vj4k
         wRjaLdhNjQzoO9cxR+/A19qWc68TLSnwt99B9Jt8N9LxdUeAmCxJpIqdrYCB1rKZumJJ
         EKzJqud5tRKvj/tK2nUx9KIvQlPHmd7XQLeuVlAFeRh+toccQPULO1O2cbW2l7XW6ZQB
         KZL8S/osUw9NejM27rQyN38KsQIUIJDcce3cmzOu6kBbvibDj915d3PMVXWbxwW6IH7e
         Wu1w==
X-Forwarded-Encrypted: i=1; AJvYcCWe+lXVvmAs3wdKIkta1w/bdyHf1iHv1ouivlmaJ1Bfu4VIh7+fHiXQudTdP7PmpVNVE2pisxo/RFGI@vger.kernel.org
X-Gm-Message-State: AOJu0Yy/+KKQOUZEEO1+oFw0Q5Od1jJBDf1VDbpO/eNhlzaCJaM8H/72
	GbLz/Ps19pHgZJ/XlVU2Crldz/z0+PW2r8ad/iQ0S+YaSWCvoRy6D6h/fGZ1qZQl8eltU91/nGU
	3FRwHjQbpOuBGO0ofJC4MjeHN81RLn8h64LbLtt3gd1rp1wmBloIvaGTx6WuHbYAG
X-Gm-Gg: ASbGncue9ZUnH4QOCAO3T9xaJmtbDJkVns81AzFcl0r/VNosRBQiNRinIHKyi1ho6eL
	RawNhmOoH24ntySUMJxRWL8zwxB+quSb2I+TB5t4ro07l9TQh/ZpGqPY/+jarWCrrps6txGl/ol
	gOam8ea14kTK/OulZww+zC/IaovtpIp35mIbF9j2NWb6kl9f5XC99PHgGA20Lfhnrx2grvvxr10
	lLqLdGyoSk4xwAxvkmxqEHWok69MGB60KYmZzeVZr5lpqusW15E4KvWHXrTqip5zpIdJpNU92qL
	Qp7LTjeYZPowYqYAlkGsyTVaUitJ5865EennpRng/jcVK2Rt0Me5pb5D2LTrdw==
X-Received: by 2002:a17:90a:dfcd:b0:311:c1ec:7d12 with SMTP id 98e67ed59e1d1-313f1df631amr16365949a91.23.1750151222807;
        Tue, 17 Jun 2025 02:07:02 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IENDak9/m3y1Z+lHpFAZozMSnCXvpiXSdunaaZ8aIr66QWZk842CKABwPXtHP1IzwXStJ+syQ==
X-Received: by 2002:a17:90a:dfcd:b0:311:c1ec:7d12 with SMTP id 98e67ed59e1d1-313f1df631amr16365925a91.23.1750151222358;
        Tue, 17 Jun 2025 02:07:02 -0700 (PDT)
Received: from cb9a88ed5d41.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-313c1bdb39bsm10017370a91.20.2025.06.17.02.06.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Jun 2025 02:07:02 -0700 (PDT)
From: Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>
To: Georgi Djakov <djakov@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>,
        Mike Tiption <mdtipton@quicinc.com>,
        Sibi Sankar <quic_sibis@quicinc.com>, linux-arm-msm@vger.kernel.org,
        linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH 0/3] Add EPSS L3 provider support on QCS8300 SoC
Date: Tue, 17 Jun 2025 09:06:48 +0000
Message-ID: <20250617090651.55-1-raviteja.laggyshetty@oss.qualcomm.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: vGxsFFxVIYzmTnzUlK42ACm1zAKcrbCn
X-Proofpoint-ORIG-GUID: vGxsFFxVIYzmTnzUlK42ACm1zAKcrbCn
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjE3MDA3MyBTYWx0ZWRfX5tQUR/Itrfmx
 waCvdUWkDHsv6Fbp08ZKCzVufiFv1g8CrZSvjMs+N4WDwIFYgCKfMaQHpoLPQ4kINa+KIm+XXo8
 glbiKuh0G8cIzMvT3Mt9pSgRF3pEJboxsSdikyElhAOPWGfahqWRBQek/IoMJTpUT2HIjW97sxL
 dU3GUOhYIL+B0xAFtZ90NjUph3BfSX4DHyS6OB9RDTs4lpqSlmgq+dT5d+jVJ5v45D/7sStVx2N
 SGOAiQBl/Rkdk0SVzhmQBIcuVDbhq3VZtANZ7vbLtp4XkOEMX0BFmjHhvFyY6dQtz7QAamwZJVo
 bzwTywLuzIW/gel68v3whNkaW87OWzkKbGIVqT1mB4xuJ4KIvK4Fim4Ym/DT1fp8g6oD2kD5klj
 R9JzWv5wjVhEnUkav9eHU6BLVmtFBB5bFH+IN3Rokcttu1xFwULCT0ifIT74YDGdr/FmzJtf
X-Authority-Analysis: v=2.4 cv=fMc53Yae c=1 sm=1 tr=0 ts=68513037 cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=6IFa9wvqVegA:10 a=0wEiu_sYbdzYxkl5siMA:9 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-17_03,2025-06-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 adultscore=0 bulkscore=0 clxscore=1011 malwarescore=0
 mlxlogscore=999 spamscore=0 lowpriorityscore=0 impostorscore=0 mlxscore=0
 priorityscore=1501 suspectscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2506170073

Add Epoch subsystem (EPSS) L3 scaling support on QCS8300 SoC.

Raviteja Laggyshetty (3):
  dt-bindings: interconnect: Add EPSS L3 compatible for QCS8300 SoC
  interconnect: qcom: Add EPSS L3 support on QCS8300 SoC
  arm64: dts: qcom: qcs8300: Add EPSS l3 interconnect provider node

 .../bindings/interconnect/qcom,osm-l3.yaml      |  1 +
 arch/arm64/boot/dts/qcom/qcs8300.dtsi           | 17 +++++++++++++++++
 drivers/interconnect/qcom/osm-l3.c              |  1 +
 3 files changed, 19 insertions(+)

-- 
2.43.0


