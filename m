Return-Path: <devicetree+bounces-201538-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D065B19AEF
	for <lists+devicetree@lfdr.de>; Mon,  4 Aug 2025 07:06:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A29623B490E
	for <lists+devicetree@lfdr.de>; Mon,  4 Aug 2025 05:06:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D2B7921B9FC;
	Mon,  4 Aug 2025 05:06:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="muXpCsr/"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 700E718DF62
	for <devicetree@vger.kernel.org>; Mon,  4 Aug 2025 05:06:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754283982; cv=none; b=ZpxSw0cTQkV2wlRVQEmK94q+iJWxka/c3O0cOo+tJkjfHlTVRwo9nNcWzwPnYyAT90Ea7UkNcvC86EV8UVwwMOFyxk0JZnQU5iBMblkATybxBQMMXHCwZ8C6JctA7/RLnOutkbQ6BoTxJXSzzTIMv+3IVwx0nsiVy7UjP2BL9Ck=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754283982; c=relaxed/simple;
	bh=o+KKhqjgceUKc54+3lwvh9D2uZKZYubKBJvC6PvrxDU=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=IneV7RMdhIKdF/FaNBkb3H6p7z0jk/wE6oW8wMfB4NMe+CWSGtTLP8m8rCJHLDmZp3WRrF9Tsd+25S8q4Rk2qi8QAkzhpQviEn/exdbLYLaifPq8vSlh98hAKGPHBc8oF7LqXXUaCQ/fBrhxUeUOMcpZHItRzO8o+2JshXWbewE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=muXpCsr/; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 573NT8d7031483
	for <devicetree@vger.kernel.org>; Mon, 4 Aug 2025 05:06:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=mFgAZJ7P3Zm+6XkWFs5BVvgYy6OJo2QLp+7
	HH563RNs=; b=muXpCsr/zsFbL166dtN8CxzUqtxQo9GaQvp56QrnjHQiI/nJsSE
	j4C6ztRwWvDL+KNADD66Y8sC2T+7sbnMhQPJzbKrrnGgUFg1Ri4F+jvP2zSdVQL4
	TAdmceULpyCPOYYHqG/hJEEGkglnseIR2t8BdB4avGLPLfmfYntSXfi1qv7esaxV
	45hNtxjeFI9mg66jFAkkJcmwVBINQXcrupnNlvKJKqdIDAoDRpLSKju1Af2Hf2ym
	h1EwWyguCa38yFDky7HOliATiKugyCqNboBBjFaqhDHZeXVbuHXGvVGvEsQ04w1E
	4jGkOnp3PYZlhATLYhkNmhtJKb0A1BEVrmw==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 489bek3fqy-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 04 Aug 2025 05:06:20 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-31ea10f801aso6539256a91.3
        for <devicetree@vger.kernel.org>; Sun, 03 Aug 2025 22:06:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754283980; x=1754888780;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mFgAZJ7P3Zm+6XkWFs5BVvgYy6OJo2QLp+7HH563RNs=;
        b=k39StgucJIc4kmrNCiRKSfl6ptQFHNLtxPB3V+yZGz5085kQLlkxGvipSrTq+4+dhQ
         XbdTAt+xeLcts2J2B7OZuOTb7ER7F5oCbZr0G/BXgrYlNdcLKjywvX25IElcU+zyNxhd
         VKPoi0fDqh3rVGgFvkQ95QUX2UTA6ryaf+t0O1FEeo6KLd/9SiPDD1HVYpS2V21C2RSF
         nm4CODCBdwWDaNJppmNgh5n/uE0Jem6kbKg0LPpGeMIOU7+cETxOO4vCdYzM2+KcDXCx
         wqb1Axc7Ll8mJopMOtEs+UHr1izZwdQqDdt5RWO46JVdbxeBw6kpZDb1i5t8jOfwfkqu
         YShg==
X-Forwarded-Encrypted: i=1; AJvYcCUtCYF+86h0bePpRuYVUWzUeEa85ar83nlCNkEHwxfjI13lMYdGSp9xmMB7mEYPl0qUTjg/ISOc0aY+@vger.kernel.org
X-Gm-Message-State: AOJu0Yzedr4cGFlat94teXdbVnwD6Pm6Rqa7Ze8Qfg8qBaFch/pWaE92
	JA/b5G/ygrwJVBQomxHL55BklkmrQyr3jOr9UP1HDb9paPDaet1Tyw2ijkmonD6oqAg18JpLGPm
	6PWA/exfTA+qbWXrj2g3eqQiWMeOqUXohba00ud3qRZ8Tt9ogEDja19vjXFATmVA9
X-Gm-Gg: ASbGnctRce2bKmlObWTUTaRTMxTOFhtbVxxQPwlA3sMFvFOum52nQv5yZqTdgys14vV
	HdGzGmcTKFTQccr9nDHaESQJnXnjqrXqEsSaehj4GNF9aT8iEhu86FD7nA6KPEfKSEapqNVeDa3
	NaZtu5eLX6zrOoxofKjo05+9RM40CfmRCh7BeeP6BrDU1+RuSbzvTnb+o8waE2DcBe0MmOpEAs5
	lBXWMXGDmAK4g5MleRydloXrmx5sBR1mvGD1ap4z1cilFTFbH1NmBJ7dRgXL95NqS7dbWKW0j/u
	qTKJUT6iP3xuer8Mjt5zTwqwz8Q8HZunHjW73pJYoQUU+eNvtWE5N2u56SaXWeu3wbO2kJG7UBV
	nIp4=
X-Received: by 2002:a17:90b:3b45:b0:31e:ff94:3fa0 with SMTP id 98e67ed59e1d1-321161d6078mr11744946a91.6.1754283979760;
        Sun, 03 Aug 2025 22:06:19 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFGWeHm4SZUpqc8ezy4PspRdFA/54Q0jokeRMGEtdsPupU2NKwBbTJIGQaIB1gJqcWLAo0wvw==
X-Received: by 2002:a17:90b:3b45:b0:31e:ff94:3fa0 with SMTP id 98e67ed59e1d1-321161d6078mr11744914a91.6.1754283979290;
        Sun, 03 Aug 2025 22:06:19 -0700 (PDT)
Received: from e0cec1fbb194.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-241d1ef59b2sm99705135ad.7.2025.08.03.22.06.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 03 Aug 2025 22:06:18 -0700 (PDT)
From: Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>
To: Georgi Djakov <djakov@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Sibi Sankar <quic_sibis@quicinc.com>,
        Odelu Kukatla <quic_okukatla@quicinc.com>,
        Mike Tipton <mike.tipton@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>
Subject: [PATCH 0/2] Add OSM L3 provider support on QCS615 SoC
Date: Mon,  4 Aug 2025 05:05:40 +0000
Message-ID: <20250804050542.100806-1-raviteja.laggyshetty@oss.qualcomm.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=M7tNKzws c=1 sm=1 tr=0 ts=68903fcc cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=2OwXVqhp2XgA:10 a=VdEDuztqGucW-MqrkSEA:9 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODA0MDAyMyBTYWx0ZWRfX7VlIJ6r/gRMa
 T/rShYPoZwjxlwy10mW/gwRpIOeLYU2HwENPHrJEoF89dgsdONAy68+5o/+RlZqn4oEWZcIGjHk
 9wY11quCbYYRtzzxI4hl67cjFMghljSR9VAfhAhVwpvGqEY3EeWSapye8PSsGdNJr4Xj3d6fl8g
 YABr2XBPGGDPaIvme2GSaE1H0NyDAcmEIJRqXvICmsUQW2uI3TFFBvxTUOb7ISqvHyS5RygxBzF
 ELo68Des7Mps/Rf85jULoZAEHBaEBWiqSdNqE1LH84k3Bjm87KdVK7uIPeJEftRoytpO2plAj//
 rSpwRH+MXuXb8D/YW9uB6Y3zRdoDuz+TiOpFRbaTovP6/njStctuNkLBm4zpmb5H9PYInaiVS5s
 fLwYvM8iIqxS5lIXD1Hy8txBrQE7Ni+ayMLaQxj4ZKxiWXW+flG0ddoHQXh+Mq1/SkEhMejx
X-Proofpoint-ORIG-GUID: 7GRms_gfqbGK2WPoOb_UZ4m2v6uOdsZB
X-Proofpoint-GUID: 7GRms_gfqbGK2WPoOb_UZ4m2v6uOdsZB
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-04_02,2025-08-01_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 lowpriorityscore=0 priorityscore=1501 malwarescore=0
 clxscore=1015 mlxlogscore=999 mlxscore=0 bulkscore=0 spamscore=0
 suspectscore=0 phishscore=0 adultscore=0 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2508040023

Add Operation State Manager (OSM) L3 scaling support on QCS615 SoC.

Raviteja Laggyshetty (2):
  dt-bindings: interconnect: Add OSM L3 compatible for QCS615 SoC
  arm64: dts: qcom: qcs615: Add OSM l3 interconnect provider node and
    CPU OPP tables to scale DDR/L3

 .../bindings/interconnect/qcom,osm-l3.yaml    |   5 +
 arch/arm64/boot/dts/qcom/sm6150.dtsi          | 148 ++++++++++++++++++
 2 files changed, 153 insertions(+)

-- 
2.43.0


