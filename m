Return-Path: <devicetree+bounces-186559-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B1D7ADC5BA
	for <lists+devicetree@lfdr.de>; Tue, 17 Jun 2025 11:08:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 615171898202
	for <lists+devicetree@lfdr.de>; Tue, 17 Jun 2025 09:08:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 040DE291C3F;
	Tue, 17 Jun 2025 09:07:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="IFsRawMu"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 84F50293C67
	for <devicetree@vger.kernel.org>; Tue, 17 Jun 2025 09:07:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750151238; cv=none; b=pbTjmxfwH8kQgw3WEl5qaYMkJHZgS88xYy1f3GbqIkoGWwgVlh6IFPiPM9cirdx9AqS9n/mjNm7GepgnELsOjTkYe3tmZNyzZzsQMOLp9Ndlo6FU93sFCjltU2CSlWNPMSBl42DpZQ0KcIcgJrANjwa1K41adnDHv456ekp9xas=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750151238; c=relaxed/simple;
	bh=I+wt0YP4rxgHnKOC40/aM4YftA0E1MwAjBk+q7eSAFw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=LknaNeqIEgw4Zu0Q2imAwq+aA90TSA7qkT+PqtnLFxkrwDFbKLT6IxLNsr/zbjv6MHkLtJ9WkclO/vjF/hG3BcW/bNGZpjP5z2l4Hssa9NyEruRyCWAiZn4k3/Bn1M452kmju6VoYqSvuyf3UCWyPsvTLK0q2QbaUJx6lWWrNsk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=IFsRawMu; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55H6m6Om022895
	for <devicetree@vger.kernel.org>; Tue, 17 Jun 2025 09:07:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=pC+/Jc/xnvj
	uhS/vhXW0LK87Vtyf3CLSWvcyQpqNldk=; b=IFsRawMu58dMwT/uAZjGcZnfzqg
	hq3bfIUs6UWgVcW4biNKvPCtTskkifaV+0iJ8zK9JzDZ24v2JL2fkUrT3d+qt2+4
	u1GrsWbn7InCpjsrH0iWiorIAspSJkyYZK0aTPPBGa9cdzTI/M9Qvsvo1lF14LOZ
	iwxkNozNhTC8LqTh3Mo6Zv3QdfN3lFsP4y1TImIYK47oaViVCjznvMw+Z7cYeMDG
	IxShuK7wvCNaq3elMPDKeDwWiYiE7BGBRC8YUZThQKct5agzkgkYX7Y4TD6DV5nC
	LT8e6Sg18OKTrWduYCEspVeELNenTdhn6qur0l+p5I3GUHGu0EMgSNWhjwQ==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4791hcyqvg-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 17 Jun 2025 09:07:16 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-312df02acf5so4980446a91.1
        for <devicetree@vger.kernel.org>; Tue, 17 Jun 2025 02:07:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750151236; x=1750756036;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pC+/Jc/xnvjuhS/vhXW0LK87Vtyf3CLSWvcyQpqNldk=;
        b=NBJxVIO/JTWmeogUILJ3BvNqs154ldA58FlAR8sqw4prD1Hs7ggHVo8WtyDERmiXr+
         cuEWfdR9a2Y3l9vdzAHglmmD5AhcG/+tXGqpAhm2kdkTMdMbK0pVFddg3STN9hIFDBKW
         sJ51Vt0as/pA0QPLFfjELDSRIPjZwLV7ymybgBmSth7Ame4plzhTRr4rS6d815DQeezH
         7aOpKUGsriZTXT3udOANinlvJBdUX9KdbKbli9JtbwZPZwm3j3FuXJRM2QFruk4/zVn5
         VyJRm30pyc+7vOhLU85PEhki+WfmTEB7eCMueUl9zjgO2YXOX/flMT9Nxlp4PykOHcL7
         dvkg==
X-Forwarded-Encrypted: i=1; AJvYcCVE2niyjFStOhaTg5H3ECQ5ofo8XW8DHzr4XbMFvmutzQgV1UPBGjjbLZ3YTQkUIXTmJcXFyXAI0RbW@vger.kernel.org
X-Gm-Message-State: AOJu0Yx0ZALH2wOjOiUBwakmnbtYv/m1y7BZYoZZ62IeVou36B/9vhFm
	rEB876eeYNnYoIcUhNB46ynOl20LV9sbuAVHcTTvqoLhnc4QJmxecApldN3xBV8GzQcEmInBT1R
	DSpGQ7DcJBkD2X7J4p89R2kQ/eOGwA5tDCHrpQ4ugjLQ8DxYKplN03LVFzdJoseBI
X-Gm-Gg: ASbGncuDxolanjy6El8HOw2vSWmTCpNyClR650ix2yOTPOqWRZPYylhsdzskkA2pCcc
	jK7OkFTjtA7N6wELk+rQ7UJLoeZ5f7/ft66yiN1oE4JnEt2Sd4NUm7KRPTuaRugu/iE4kAXFnYQ
	zLcq4NKYmYwMMk6kmi4IMu1dQ6rjq2aXQPn3uRgOgyxdLltNyqn1hKbzClt68tqRRtedbMkKjz8
	X0Fhb8Emj4wFi/hoAfINUb4jpu1t+X0i1RFFOaFjxHAk5cS+glCSiiYJjjujLWm0tW5S/535sy4
	doBg4AatHio+my97VZIz1rw0hzRvjOKnpexZoP94UMz/qc0FO5/uEUmHPGLk4Q==
X-Received: by 2002:a17:90a:e7c6:b0:311:a5ab:3d47 with SMTP id 98e67ed59e1d1-313f1be18c8mr19885659a91.1.1750151235686;
        Tue, 17 Jun 2025 02:07:15 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGYtJl9iERnvAsYVcp7IsNfFfm03vWEkJgaCuPvHhgljsPO4XBA+fuCm40CFdv2tSyTdm0tsw==
X-Received: by 2002:a17:90a:e7c6:b0:311:a5ab:3d47 with SMTP id 98e67ed59e1d1-313f1be18c8mr19885615a91.1.1750151235176;
        Tue, 17 Jun 2025 02:07:15 -0700 (PDT)
Received: from cb9a88ed5d41.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-313c1bdb39bsm10017370a91.20.2025.06.17.02.07.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Jun 2025 02:07:14 -0700 (PDT)
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
Subject: [PATCH 2/3] interconnect: qcom: Add EPSS L3 support on QCS8300 SoC
Date: Tue, 17 Jun 2025 09:06:50 +0000
Message-ID: <20250617090651.55-3-raviteja.laggyshetty@oss.qualcomm.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250617090651.55-1-raviteja.laggyshetty@oss.qualcomm.com>
References: <20250617090651.55-1-raviteja.laggyshetty@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjE3MDA3MyBTYWx0ZWRfX4TyU8NnDpXnt
 r81BTSgLwRVo2Dp939MVc1sPFLIiN5kqXDsCHZG8gGR+lyMezF6oyOLY/Hoit0SgYyHp1N08CMy
 O+tXg81Z6XtaecS5JdviELLJjeVBwq9EIOl6WSXbfSdqIqBs+R3htbOWvvHEAD5iWLq8FQUvFXo
 CMnTNbf3xzEctkeYqAQmu/VuQVxelebUYXHCk3w/gK+sTg8niP/3lbGXQvqHnuUuKru5ySAlNvY
 iVboSakUkD2ntcfHNx+AS5rwqsDf80lSK8+UHRHmV3BZ3NswsRqEP1Wjmv/hFGbMnFkBsh3gkNO
 4u6k8FKApakkVdsNKjfIknysWGEKmwc24nIRWSUc79HilorWPdG/bVCtbBN8Yb19crkR7TCyjDb
 1hpbJI9h09++/KH0SUbgPfRv95WMCx3iP7F9pKgw+fzhDFyQowsb+aDfLvxEmYqjrKFwUuGV
X-Authority-Analysis: v=2.4 cv=PtaTbxM3 c=1 sm=1 tr=0 ts=68513044 cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=6IFa9wvqVegA:10 a=EUspDBNiAAAA:8 a=jqyGqifOumdqABPgMEcA:9
 a=rl5im9kqc5Lf4LNbBjHf:22
X-Proofpoint-ORIG-GUID: kTReVJG3c870e7FFqZCd1xty0X8TvuAM
X-Proofpoint-GUID: kTReVJG3c870e7FFqZCd1xty0X8TvuAM
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-17_03,2025-06-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 clxscore=1011 mlxlogscore=999 suspectscore=0 malwarescore=0
 lowpriorityscore=0 impostorscore=0 adultscore=0 spamscore=0
 priorityscore=1501 phishscore=0 mlxscore=0 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2506170073

Add Epoch Subsystem (EPSS) L3 interconnect provider support on
QCS8300 SoC.

Signed-off-by: Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>
---
 drivers/interconnect/qcom/osm-l3.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/interconnect/qcom/osm-l3.c b/drivers/interconnect/qcom/osm-l3.c
index baecbf2533f7..d8f1e0a4617b 100644
--- a/drivers/interconnect/qcom/osm-l3.c
+++ b/drivers/interconnect/qcom/osm-l3.c
@@ -270,6 +270,7 @@ static const struct of_device_id osm_l3_of_match[] = {
 	{ .compatible = "qcom,sm8150-osm-l3", .data = &osm_l3 },
 	{ .compatible = "qcom,sc8180x-osm-l3", .data = &osm_l3 },
 	{ .compatible = "qcom,sm8250-epss-l3", .data = &epss_l3_perf_state },
+	{ .compatible = "qcom,qcs8300-epss-l3", .data = &epss_l3_perf_state },
 	{ }
 };
 MODULE_DEVICE_TABLE(of, osm_l3_of_match);
-- 
2.43.0


