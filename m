Return-Path: <devicetree+bounces-161107-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 97C9CA728E0
	for <lists+devicetree@lfdr.de>; Thu, 27 Mar 2025 03:51:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D4ABA179D5F
	for <lists+devicetree@lfdr.de>; Thu, 27 Mar 2025 02:50:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B13F91A8F9E;
	Thu, 27 Mar 2025 02:49:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="KHutvdpL"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28A271A315F
	for <devicetree@vger.kernel.org>; Thu, 27 Mar 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743043795; cv=none; b=WAvcjXXReHDhDQL28/nrUFUOhjV7q6YZ8AnJoj+8YrIzvrSQhmZgW2vSdJi+BDg0k7Osu6LlUmngFFNeS8Kow/sWGdL7OhTTwychzLrbN96YSR20UTUdMjXxAoaAWyVEdnhxCXlalasKzSTBFPiz0fuqpANwV3dU8378msWnEgc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743043795; c=relaxed/simple;
	bh=EHLOgzhH6O2Rn7iaTj9DxsI7QCCalqfBeAAtjxKhXjU=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=KPFhO7+YppNdcG1SOq2Y+kWjWrihVaT3vGHGj1jOdBjqnQCnWukyvxNhxjilIcZdYbwJODqjFBLhYNSGyivwlWhXXV1rljCpOVZeepcOCbnEowUB6tTEPC55PVebFA8keIVdrVuf44yxM9HUFEC3ig0Ui7TKgUPpyHJfqB0MFKw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=KHutvdpL; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52QFJhic006151
	for <devicetree@vger.kernel.org>; Thu, 27 Mar 2025 02:49:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=EOG4RdX/l1J1UWKeCN8ca/QQMrmD6lUuCmW
	X0hkRM/Y=; b=KHutvdpLqul3Bc70JQhVxWydZqLy9WnaOMTbRUl8wAOgjnaLDQs
	ZCW42Kvh6w1UNQSYMOdCnvo74bHhy1K5pZSrzeP/mHoa/su4/DyXvghIo/Q2zeLP
	N0r03DW0/Z1SAYVKIrdd6mYxfutiqwQ9hTBtsMMzetYxmEjMRDqyilavi/ZtMoO2
	fdTkZgfJZ1LBcpPpOKDlG+j94/saRc/Dhbno0M3vV/RrSwAAUXKP3T8OnBWjTdpZ
	RGEqW8eFUNBS5YIOkROPszYA3C6WSkeYwvMAODo1PLPLDSeloQHgr66Z3zUlPPT3
	f24P0Rl26R49kdisfNgk97IZsNUHYI7vOQA==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45manj3dqr-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 27 Mar 2025 02:49:52 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-2ff5296726fso1272864a91.0
        for <devicetree@vger.kernel.org>; Wed, 26 Mar 2025 19:49:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743043791; x=1743648591;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=EOG4RdX/l1J1UWKeCN8ca/QQMrmD6lUuCmWX0hkRM/Y=;
        b=sVP8HFEP7qJjg+6YJRKZhIAc4Ac/OZV+D+bAXVPqWXnKTZ2ro7qC5Ahq70A6zmdqyh
         w4WgXJFb2M/6ixZkElmh5sW3HzUNnp/5btWj1ppjSzcuDerFcYOek/cOD3X90VGZIZe0
         wb8oKcMqZowswjkwlIuaiIyUa0HRaDqGJCUN+go0lSW/PKYFoCSisC7lznbgCcv/Gic4
         LwNW46X6hK1TTI6h/8V1O1NVr6ySNZcO/u8XeuMhqoER9S6CVydgKWNsIbloBzSURC7g
         0UYJTgOOK5ep7pmUHMRLjhWv8Ok9kc7hqRFLwP45BsGgCLhYsDb80nUsmE/zwYXWqYBU
         WhCQ==
X-Forwarded-Encrypted: i=1; AJvYcCWRZ7oChLEXg7YkhaXnWgf5Ovmp1zXixImM2sYMr1VHialANASogfSxcH6Io3VrPzkQ2hvsXrBpfIa7@vger.kernel.org
X-Gm-Message-State: AOJu0YyKr0k/ZL5tQpUnObYzjS++5LS0sAxE+vBlafnorJzbdQiKETRS
	SnHMDjEMdiHCLnc/eaXPBbXRwu49J5AG67bJjYlM3CB5CFeCPpDGBz7yIBlcjI/oIBscGld2pBV
	q76feLK6RVgtuxH51v0v+xLacN3SWM7FuIYzhjg2Ya4nK0AwWx0fW8LRZ9OU0
X-Gm-Gg: ASbGnctLRidn3MVTFU1zhtp95qx5JfdDpzd2sNMqdRfhEmMMAnFjaySuSAIrA3duB2T
	vxqv6uruvbY814zjkVbrJ1pn3E/xYve7rb4I5KCpHYjDNJxm2jaQoUu6sB2y8AmJQT7Lsf0uv2d
	jOV3wLpayisVErlnaOm23COq5xbIvhJYgr7gvjrntjyIhzk2Yk16VfMuPsNBvT3pMtLAKDWSN6r
	kP7Y36jhvEyfchtWwQkM64K45R+h+OMR6ekIX2QKy+x0ARgfRc5bwXrfGgQ5XF+D7FWwGD36q5e
	G31yLdtTU1dadzEGc0ARJonBoVIwOCe9t3FoEdTp+aaL3eQzJ0B+NpxQnQz7wjShw1w1vIzGeIk
	=
X-Received: by 2002:a05:6a21:3381:b0:1f5:a05b:c741 with SMTP id adf61e73a8af0-1fea2d91d81mr3854469637.18.1743043791489;
        Wed, 26 Mar 2025 19:49:51 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFKIPaRy8lsd7Z3F6l+Js80wTB1uu+1FA4rXbfx6w06EiixINvcfPYB5I4rA70fIfkCmCtFsg==
X-Received: by 2002:a05:6a21:3381:b0:1f5:a05b:c741 with SMTP id adf61e73a8af0-1fea2d91d81mr3854434637.18.1743043791018;
        Wed, 26 Mar 2025 19:49:51 -0700 (PDT)
Received: from jiegan-gv.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7390615874csm13511878b3a.143.2025.03.26.19.49.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Mar 2025 19:49:50 -0700 (PDT)
From: Jie Gan <jie.gan@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: Tingwei Zhang <quic_tingweiz@quicinc.com>,
        Jinlong Mao <quic_jinlmao@quicinc.com>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v1 0/2] Enable CTCU device for QCS8300
Date: Thu, 27 Mar 2025 10:49:41 +0800
Message-Id: <20250327024943.3502313-1-jie.gan@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: Dm1Up0kCZAwfUG_9HHm5jRpwgzN4f4qj
X-Proofpoint-ORIG-GUID: Dm1Up0kCZAwfUG_9HHm5jRpwgzN4f4qj
X-Authority-Analysis: v=2.4 cv=KvJN2XWN c=1 sm=1 tr=0 ts=67e4bcd0 cx=c_pps a=RP+M6JBNLl+fLTcSJhASfg==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17 a=Vs1iUdzkB0EA:10 a=pe-aGEEqWberZWJlMgsA:9 a=iS9zxrgQBfv6-_F4QbHw:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-26_09,2025-03-26_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0 mlxlogscore=798
 malwarescore=0 priorityscore=1501 clxscore=1015 mlxscore=0 spamscore=0
 impostorscore=0 suspectscore=0 phishscore=0 lowpriorityscore=0
 adultscore=0 classifier=spam authscore=0 authtc=n/a authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2503270017

Enable CTCU device for QCS8300 platform. Add a fallback mechnasim in binding to utilize
the compitable of the SA8775p platform becuase the CTCU for QCS8300 shares same
configurations as SA8775p platform.

Jie Gan (2):
  dt-bindings: arm: add CTCU device for QCS8300
  arm64: dts: qcom: qcs8300: Add CTCU and ETR nodes

 .../bindings/arm/qcom,coresight-ctcu.yaml     |   9 +-
 arch/arm64/boot/dts/qcom/qcs8300.dtsi         | 153 ++++++++++++++++++
 2 files changed, 160 insertions(+), 2 deletions(-)

-- 
2.34.1


