Return-Path: <devicetree+bounces-188628-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A29EAE463C
	for <lists+devicetree@lfdr.de>; Mon, 23 Jun 2025 16:15:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id D08377A905C
	for <lists+devicetree@lfdr.de>; Mon, 23 Jun 2025 14:14:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AEE81254B03;
	Mon, 23 Jun 2025 14:14:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="naGXnuY5"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14B76253F13
	for <devicetree@vger.kernel.org>; Mon, 23 Jun 2025 14:14:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750688062; cv=none; b=QGqVWh6eT1WgTey15tbTeE0eXKq1inQaWQIWHSCe69Cnu5aTTZNeERqU0taom+u61BQvZee9oPe3rGdKhnIUPLdSEIZ45G1YgdGxB9SoN+Py08BuFIP6w5eVkE1AJtjGfbZlvYPcgOU7bIB6h2T+vhZmerlV4wEGOERCuqvU1BM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750688062; c=relaxed/simple;
	bh=TCFdV3fJCtM692nAUJeh6Kg61bWHn7h/r/7bivD1ZOY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=t9xtZ3cSo2Tqbrht1u5FSS9Tmr1wgt2Ga7szqqeGETx0EA1crXfNYsdU9CNxRD0fzpiVGdAvHlwyYRC78Bb7ExcQGr2DZ5BAJj86Bz2dvZ34ieSUovc/7x+lwCoiDMmuNuD7I0IROsjBH8GoFc/l9yl46DCtYCxLE9Tiq4Wu3M0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=naGXnuY5; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55N9adL9030835
	for <devicetree@vger.kernel.org>; Mon, 23 Jun 2025 14:14:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	NtfhK5w7Yo+a5z54EUc7Xp1UlRoMo3u4slEdBn91UUE=; b=naGXnuY5npw8Z1Eu
	SABjSFnHk7x5gWyiwyNUahSEUH8bKSqsv7pFKXm/WhVLMLkCyHQAo4gHMSTXloFv
	O1Rt282vcukJDHGbP45RoPRmsv4XN6uI1LVfvYw0zQxirykQZDv5eYf/8LT1Uxlr
	2XuAwI7OMSOJEuGqf8+I73CXv9V+4qhtiu0dBGLk85m8tdkOyPByQEiXVQzJQy/p
	pvFZy+x1A5pJxLFxLOJHFOP19zT8XaTo81Rynce17c6i1jFdgB3FBeMYrQkK+C8h
	S0jds8VF0KPXcUFGar2mSdMwuA+Hcw8hBKTIxfxbuv9VU3W4Vdd7HiIs/BMF5kDH
	fLCHFA==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47eah7u5tg-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 23 Jun 2025 14:14:19 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-3141a9a6888so3927275a91.3
        for <devicetree@vger.kernel.org>; Mon, 23 Jun 2025 07:14:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750688058; x=1751292858;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NtfhK5w7Yo+a5z54EUc7Xp1UlRoMo3u4slEdBn91UUE=;
        b=TTjuHWyCpzg3+UOM2hwqB4xb4eBmSeo54VcUtbzWJaOjMNEc3TdfkUGTsmsXUov2Kc
         pW//jxYhMJpEvtTjHEDSxwoCiSGXWwHIL5IJNt/oXLYiQpMpWRLPc+813Mvs0WKpDcKx
         wp2XykEW1sk6nxjuwGv7tu1dIEwa9Yp80FEhoVHz1JXddpw1Ao2UenffhG7yjbCmZ2Ty
         VyW0+2JP+H2+iV5RE7y/ksg9pPeBFIeJYUQOgt1hI04C97JyuBdINqNOHqrO7qVq2/PL
         YzqfPYA0wu6vvtLNDSnmWNWZnM+rmi0I9FIb2PbGF4X+RbAGAiMMCDviDYQm+tRHzc1g
         7Qcw==
X-Forwarded-Encrypted: i=1; AJvYcCWqa1HsmHWxb9Sgv4uaoCNUvWjhoOyUFhdI3W+ZGU5BDwbZsKyHmtABHPZ9FQf0ssCdjb+1d6NGEjWI@vger.kernel.org
X-Gm-Message-State: AOJu0Ywxcdx+zlsKiPpujl9YK/3Clonz0mnXKgn93TY7HH2mqhcaFNdV
	nF42om7WAzKcFNjWBrR1IUYPaziFzMJjL3e4UIFbnRtd5kjyxV4ADqTnYEog2XDOJt8Ztu7dXRZ
	uMAF8/hS4KNhjYf5OiBYXft58E3+QMlN3JhhVszr3sBVnOib3uSj8Xan//fg3D+Rd6DP+EuwL
X-Gm-Gg: ASbGnctgYctMJSBMWWmYEtozCd52cau3imgmUkys3ku3qoaCx8tq+gM0ckswZeuRJYA
	oAeEHSPsvFJtJ3i2GJh6PoR3Q5iSPcRjDReJvf2ieD+h6TIPrmJn4J9C5R+tRZ5zFkYgrkEYqPe
	KfqU7F6DEl+P3+O80e0/wY12o7bwjuzZ/Wwj/zZFqh+hlu9/hMzdcz8b85VhBywtDQwGXfOd606
	yQyDkf9ZuZIStDEBRMJHAiU7sqLqAnpzYcrZggyzHaA8kVIRL0jyOsuWIEleoR18A0b/camoskj
	Y7p/Z8JMGCaUD9Fm7kQYhK3HWuax7U5o
X-Received: by 2002:a17:90b:3506:b0:313:2f45:2fc8 with SMTP id 98e67ed59e1d1-3159d8c7c8cmr22958705a91.18.1750688058183;
        Mon, 23 Jun 2025 07:14:18 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE36OaUgAuAzm1zkswuN/1LVRm779C8aiQthxLaXOxOz/CZTu4jbvzkHS2TORWEEglAA5uAtw==
X-Received: by 2002:a17:90b:3506:b0:313:2f45:2fc8 with SMTP id 98e67ed59e1d1-3159d8c7c8cmr22958623a91.18.1750688057492;
        Mon, 23 Jun 2025 07:14:17 -0700 (PDT)
Received: from [10.213.111.143] ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3159df71c4bsm8112049a91.2.2025.06.23.07.14.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Jun 2025 07:14:17 -0700 (PDT)
From: Akhil P Oommen <akhilpo@oss.qualcomm.com>
Date: Mon, 23 Jun 2025 19:42:06 +0530
Subject: [PATCH v4 1/4] dt-bindings: opp: adreno: Update regex of OPP entry
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250623-x1p-adreno-v4-1-d2575c839cbb@oss.qualcomm.com>
References: <20250623-x1p-adreno-v4-0-d2575c839cbb@oss.qualcomm.com>
In-Reply-To: <20250623-x1p-adreno-v4-0-d2575c839cbb@oss.qualcomm.com>
To: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
        Rob Clark <robin.clark@oss.qualcomm.com>, Sean Paul <sean@poorly.run>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Viresh Kumar <vireshk@kernel.org>,
        Nishanth Menon <nm@ti.com>, Stephen Boyd <sboyd@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-pm@vger.kernel.org, Akhil P Oommen <akhilpo@oss.qualcomm.com>,
        Jens Glathe <jens.glathe@oldschoolsolutions.biz>,
        Viresh Kumar <viresh.kumar@linaro.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Aleksandrs Vinarskis <alex.vinarskis@gmail.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1750688040; l=1923;
 i=akhilpo@oss.qualcomm.com; s=20240726; h=from:subject:message-id;
 bh=TCFdV3fJCtM692nAUJeh6Kg61bWHn7h/r/7bivD1ZOY=;
 b=ETabZqcXTpK9ISzvEMm1GGFzT3eN0ByVbCE60cr/JNzTmMAlrzM1bK2CWqhi3ZP4d4IF96zRT
 FJvZjKgub0OD0uTow4rTdGcZTwcRlp+OTMjAwTcNRLZTA2pOJL+p/8Q
X-Developer-Key: i=akhilpo@oss.qualcomm.com; a=ed25519;
 pk=lmVtttSHmAUYFnJsQHX80IIRmYmXA4+CzpGcWOOsfKA=
X-Proofpoint-ORIG-GUID: se71Zz4xvQavjQPdfDrndjN5zQ_SE4gu
X-Authority-Analysis: v=2.4 cv=PpWTbxM3 c=1 sm=1 tr=0 ts=6859613b cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=gxl3bz0cAAAA:8 a=KKAkSRfTAAAA:8
 a=pGLkceISAAAA:8 a=EUspDBNiAAAA:8 a=PEQATVZ-5NWm0mRdv2wA:9 a=QEXdDO2ut3YA:10
 a=rl5im9kqc5Lf4LNbBjHf:22 a=kiRiLd-pWN9FGgpmzFdl:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjIzMDA4NCBTYWx0ZWRfXw6NDJX6YyJS9
 iuISY0jHDP/PknxVLDE3Erd5zheGCesD9/JpQ25j3LLWqhojWzwvSlmdB/jxGtmHPD8ugg12XQQ
 irf9+EiyPP2QbAhePIcFVCI3FhKxNG4gqxZaUeId8YIsr1a+1TZqcdITOaEZNnD3nVwLB5wa/uj
 0uHVgox9cZMP3oyuFDhHKN9RRA0WGauB++9M5Y49GG6rUMot9sQ2H+4dQ6dbsWIbdnStG9cD3kY
 Z8W8uYc1zECM6MhO+THSfA/nZNk6fZDgTLMZ4P0/Rb9ZtUDZIL/HTb7RmkTc9K6VG7t3thRFvwS
 u7e8CQkeguVHfTjnhlpaPCnZqitCWPcrv/yYJuy8FFDb/i7/Vz4sMIUmGiiieKeOirvw/wUozFQ
 ig0gbeNkpxiINEFRaAu2LaDFHKVJikeDS+my5inJ0vun9O3Nk//TkMijy76hiM7dtijj4Crr
X-Proofpoint-GUID: se71Zz4xvQavjQPdfDrndjN5zQ_SE4gu
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-06-23_04,2025-06-23_05,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxlogscore=999 clxscore=1015 adultscore=0 mlxscore=0 priorityscore=1501
 impostorscore=0 lowpriorityscore=0 suspectscore=0 malwarescore=0 spamscore=0
 bulkscore=0 phishscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2506230084

In some cases, an OPP may have multiple variants to describe the
differences in the resources between SKUs. As an example, we may
want to vote different peak bandwidths in different SKUs for the
same frequency and the OPP node names can have an additional
integer suffix to denote this difference like below:

 opp-666000000-0 {
         opp-hz = /bits/ 64 <666000000>;
         opp-level = <RPMH_REGULATOR_LEVEL_SVS_L1>;
         opp-peak-kBps = <8171875>;
         qcom,opp-acd-level = <0xa82d5ffd>;
         opp-supported-hw = <0xf>;
 };

 /* Only applicable for SKUs which has 666Mhz as Fmax */
 opp-666000000-1 {
         opp-hz = /bits/ 64 <666000000>;
         opp-level = <RPMH_REGULATOR_LEVEL_SVS_L1>;
         opp-peak-kBps = <16500000>;
         qcom,opp-acd-level = <0xa82d5ffd>;
         opp-supported-hw = <0x10>;
 };

Update the regex to allow this usecase.

Tested-by: Jens Glathe <jens.glathe@oldschoolsolutions.biz>
Acked-by: Viresh Kumar <viresh.kumar@linaro.org>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Tested-by: Aleksandrs Vinarskis <alex.vinarskis@gmail.com> # x1-26-100
Signed-off-by: Akhil P Oommen <akhilpo@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/opp/opp-v2-qcom-adreno.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/opp/opp-v2-qcom-adreno.yaml b/Documentation/devicetree/bindings/opp/opp-v2-qcom-adreno.yaml
index a27ba7b663d456f964628a91a661b51a684de1be..0bd7d6b69755f5f53a045ba7b5e1d08030d980e6 100644
--- a/Documentation/devicetree/bindings/opp/opp-v2-qcom-adreno.yaml
+++ b/Documentation/devicetree/bindings/opp/opp-v2-qcom-adreno.yaml
@@ -23,7 +23,7 @@ properties:
       const: operating-points-v2-adreno
 
 patternProperties:
-  '^opp-[0-9]+$':
+  '^opp(-[0-9]+){1,2}$':
     type: object
     additionalProperties: false
 

-- 
2.48.1


