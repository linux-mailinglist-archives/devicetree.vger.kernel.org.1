Return-Path: <devicetree+bounces-198317-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id AF314B0C657
	for <lists+devicetree@lfdr.de>; Mon, 21 Jul 2025 16:31:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C63D47AEAC4
	for <lists+devicetree@lfdr.de>; Mon, 21 Jul 2025 14:29:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5484E1C68A6;
	Mon, 21 Jul 2025 14:31:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="L+WMDxcw"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B26C9189BB0
	for <devicetree@vger.kernel.org>; Mon, 21 Jul 2025 14:31:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753108262; cv=none; b=ieR6TF7OLHP8/jG0DaQiCvtwQGu7SzT+iMwShMI7CAqJWafkQWPF68BrXvPZD5w2CTgct0I3a9CmIxD23LXSiO3X/w06hlbznAsb0MAMiUaCDW88r46XKgig+VSGA+/Nr8wp1LNSpRwdg9yQw6t4fFsQLETVeAvt3nXaq+y/5zA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753108262; c=relaxed/simple;
	bh=fZh+W/ZwxHCAw9UO9J/kStJAdZaEn8DxlAbvEqkaCIs=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=l3cq8xwx8s4t2yab4JsgJzUzgTUS9w3eW6ccp40WLnYAcbWUWVttPNqfEADGFtGVvEEKrglnmoHlKOHT8Zb5gcEu+O/HPTQQQ8/q8YAh4j/rTmSuQjzQmhv5JE2w9e1nuw52950lDtRPDz9tE0N0TotQYBc5lA1kEmvqkyr8H+I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=L+WMDxcw; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56LAJACr029269
	for <devicetree@vger.kernel.org>; Mon, 21 Jul 2025 14:30:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=fB17acm6tcauz9EWmhrWe24ExKFYj74gkCn
	0R6MI3YU=; b=L+WMDxcwc2/AOpU7X4q3PWQ6UfG2odLvmQgoQ5CBCefVM23hI2G
	nUg2FjsGEI4iE3ygzXqho+/6BRVqxyNjslqWbmHsggHzq5OA4ORsbXavHwfvLOXI
	yeiRURCZ7iJ7hcpVTLDqnhgAuSkFLq6Yh/yI2uZ989aru0v8XZG5zdkVkFP3bYn/
	n3C4hF0lNRKfbNdDDJRP3D3ZrhNx3z3UjiUVb7XHuEtiKyeYWA+0CkG4I01FPEJu
	TQzWEeJBP67MCQrbETx6qPr6ROieyfPqPzZ98wkJObN3Iyf8AfcM0cT+Xj2Tbinn
	is8TEITIYfGjLhu4tj+QBLYftbaKy1+Ik8Q==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48048tdh83-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 21 Jul 2025 14:30:59 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-74d15d90cdbso3802144b3a.0
        for <devicetree@vger.kernel.org>; Mon, 21 Jul 2025 07:30:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753108258; x=1753713058;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fB17acm6tcauz9EWmhrWe24ExKFYj74gkCn0R6MI3YU=;
        b=IhpANC1cXWtxKf8ROPxpcYG03yl8M3gOJsRv9Gpm397fZ+DITaSEVmVIhN9mVRW/n+
         DItYLGoznCrRhC76bA3DpoHRix+q2JAqJQPfhuledc4hD7k5rPiSW3x3SqTJnmzwtnYa
         wLCxBOmz4a9X1H36Dpe9/fIGQZQiqZ/IfFTEfPSTxMoR2dW/nIHsb0vjwvrbMM5IBAq3
         Hg9BjH8mFJJSgTGG/vhUrojeBP7fjOf7EEDwROxp3BmkCMtxB5+zXJhx21j2x4qMEqzX
         lzvA49OtGceCHZF5u63dChONGqBVTtn9I1OoMsVrd1KPpBVvbZykdDxQBLS2t/SSoShE
         0tag==
X-Forwarded-Encrypted: i=1; AJvYcCX0V6uNBCFETiFZ12BeChtZFykU5sqdtxTfx7NhDWkDqZjVDV4Gq3OoCBWYNW69rYkqbbGM0lANsjAM@vger.kernel.org
X-Gm-Message-State: AOJu0YzvNidvILZzkRdq5oZcQ9TrBAFp+ZHMJtl2zkmRz6VG4kJE9QOl
	dNtOoPRZXBDyKLjkFfjXMNie8FoDFLqVnfS/abPJsgmDmVMKQ/L3HIli789QjlSBcdLAP7Wk+Xp
	tBchtRctD4Eo7IGO/f7+kNfA00Qur74IH9650RPnbp2gYYhtdQclue3FEgHWQOQJA
X-Gm-Gg: ASbGncsGiMVlXJdra5Y31QIWy5SN7pRqpk3kUpAR9OidM37TdSED5ZlI/BwpfcYNNLj
	2/9B/Sc7LRs7kB1qXaHJP73oIDOz+gnw/m66lOfr+yhonJBkNE0ZJfFluxnJaTFMfacG7y1BcE/
	bd5cRQcdRrWzl5hwfloewL3ECd8V7GuDFf4zuseiT8vxhJGkgKCyifQu/QAMU//Ys8dVY6uylmi
	f/Njgtg065do7+UsNHMGy3qOOHozuO0e4MfsbK5XgtFW3Y3dHp3w4lAjD7RjWwobZuUsDggzNYT
	dep3BlKhEH4MhRJ4UIO9RSnEDGFkHjsWIWOg/JFugZFsaG1MC+7SuIKDCvIO31K35erMPcsA+ku
	4ko70yq8v+shAfST2+5NZNiCKdNtKLSO0dEbslTqGY9IxQqnmJu4S+0VDXyDb
X-Received: by 2002:a05:6a00:3392:b0:73e:10ea:b1e9 with SMTP id d2e1a72fcca58-75722869545mr25840343b3a.6.1753108257973;
        Mon, 21 Jul 2025 07:30:57 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGG6I7/YN/GntNBhpwxtH5G52Yy/1kSXDgvLDtnnNoxskhMPb+YeGocnDXdtpvZVJoL8l6lgg==
X-Received: by 2002:a05:6a00:3392:b0:73e:10ea:b1e9 with SMTP id d2e1a72fcca58-75722869545mr25840277b3a.6.1753108257287;
        Mon, 21 Jul 2025 07:30:57 -0700 (PDT)
Received: from hu-pankpati-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-759cb155e1asm5750110b3a.74.2025.07.21.07.30.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Jul 2025 07:30:56 -0700 (PDT)
From: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
To: andersson@kernel.org, linus.walleij@linaro.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, quic_rjendra@quicinc.com
Cc: linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 0/2] pinctrl: qcom: Introduce Pinctrl for Glymur
Date: Mon, 21 Jul 2025 20:00:35 +0530
Message-Id: <20250721143037.20983-1-pankaj.patil@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzIxMDEyOSBTYWx0ZWRfX5nmxsQ6WWFDD
 joIVxW3ci1GmYEMXQVsU6sn2H9RmPem37k8CUnwhXqPOpXwfc9zZCylGLsPYstCd/OnFG/I8/eQ
 1M4kIacKz/y2oOIzQQ4NAdvIw+JkpwDGbsYzrMu1gR+S35EL1lJSLBJpSMqmZMrDZtmLB4MYuu8
 RXnouXjnUHyLsd58cUdjHVKJWD5hy9orrWfkBToyVvc4HtmmiXC9qtAOO+PsctmPz5nynd5B+Nt
 rO7oJjbLgMyJ4VjDSxXWhlGGAsP6u2rpcvwb1tnPwFexsBOxsnKDkt3S+uLm++9efSN1P4xqGbd
 HzhNuK+vo68OpFvnn89QhvI6MBBjVXL3RUHR2ClRwfPot87P83GA6f5nTY6gEXihlp0SPz6mTv2
 jz+jrTGorqvt08T4ICIWuXCEt9zrLoGerClWOVuWHmI3utCWRTuVXlfZA7ld2fDQyDCkeWpG
X-Authority-Analysis: v=2.4 cv=Jb68rVKV c=1 sm=1 tr=0 ts=687e4f23 cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=Wb1JkmetP80A:10 a=TVyXueylgh4vxAmsgxgA:9 a=IoOABgeZipijB_acs4fv:22
X-Proofpoint-GUID: 9iRAAPyHQLH4iY6QKe13FzYvF1nMNa89
X-Proofpoint-ORIG-GUID: 9iRAAPyHQLH4iY6QKe13FzYvF1nMNa89
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-21_04,2025-07-21_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxlogscore=863 adultscore=0 priorityscore=1501 clxscore=1015 phishscore=0
 lowpriorityscore=0 suspectscore=0 bulkscore=0 malwarescore=0 mlxscore=0
 spamscore=0 impostorscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507210129

Introduce Top Level Mode Multiplexer dt-binding and driver for
Qualcomm's next gen compute SoC - Glymur.

--
Changes in v2:
Fixed dt-bindings error from example node's reg propery
Fixed gpio-line-name maxItems
Driver UFS_RESET macro updated
Removed obsolete comment for pingroups
Updated ngpio to include ufs_reset pin

Pankaj Patil (2):
  dt-bindings: pinctrl: qcom: Add Glymur pinctrl bindings
  pinctrl: qcom: Add glymur pinctrl driver

 .../bindings/pinctrl/qcom,glymur-tlmm.yaml    |  128 ++
 drivers/pinctrl/qcom/Kconfig.msm              |   10 +
 drivers/pinctrl/qcom/Makefile                 |    1 +
 drivers/pinctrl/qcom/pinctrl-glymur.c         | 1777 +++++++++++++++++
 4 files changed, 1916 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/pinctrl/qcom,glymur-tlmm.yaml
 create mode 100644 drivers/pinctrl/qcom/pinctrl-glymur.c

-- 
2.34.1


