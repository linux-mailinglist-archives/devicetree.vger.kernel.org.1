Return-Path: <devicetree+bounces-204138-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 0905BB24378
	for <lists+devicetree@lfdr.de>; Wed, 13 Aug 2025 10:00:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6A55D189E083
	for <lists+devicetree@lfdr.de>; Wed, 13 Aug 2025 07:56:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9C8532EA172;
	Wed, 13 Aug 2025 07:56:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="NR3o+EJb"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09A642E9752
	for <devicetree@vger.kernel.org>; Wed, 13 Aug 2025 07:56:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755071763; cv=none; b=bXik6dp9f2tfI6lbip5/TTAATAfcOwqnpx0SXXNaVMjnDaDhuhnhHfHIQzm9/uZWxfxS4QMVRNv6N7SrTdcTcWod/7Af2lyz22+/BFjnOu+HZJEjN+r9VG+bPKn8hxgMUsZcEUWwLls5ZwTiqOkTkfRrnZVU7yTJSL5t8XKG6jc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755071763; c=relaxed/simple;
	bh=D07Jua3uhs96Js26Ok23Ar/4/MvIJ5BYb7yr7CLyRNk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=I8j98z2+xUSxaXYweoeur3eolUuzAlGg0ZStrG2mhWmimhyW3xNDaKu+jkpNQuUpXwvUiPFYd5VoPJ0oy5Cp4OZJnEZn0yM0h3zsTqU92x5Y5m8d+EkszRbofMOYip07Zecsl25OgevizQT1DtgYVOaUDr57xooXXTkgLe7pbe4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=NR3o+EJb; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57D6mOYG008771
	for <devicetree@vger.kernel.org>; Wed, 13 Aug 2025 07:56:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	m7q8BR9F5OBMsEZzbyywFRTwDIso+RrsEIi+fPUY/e0=; b=NR3o+EJbKDDtp+mM
	WqvqKrsep2fZg6tXDy2VxboBE/Cwnm9RJ9KZF+IybjXsCRhZ0AtjEaQjp+fqCQmb
	R2nNI9tV3bCL5zttpTVJy1rONst15lSE5JW0B3P+a8m9FHEFTsaMNpQbsfZwUBcE
	BRC4LlizN3M6EoxwdXd3KIKa5vagfaGon69ggDXAIhoofKYJNUqceTWgwQcJNJmx
	tHGPTLVBKeulYfEd54EKRaXM5WxkPJn652+are4cAIDnjD+5ZeZMEx+CtD8tHcTT
	Doo/awXIkwiG7CByUUGlu7guQTb/QHSAtyvDWNaAgCeZuvEiZWgFvoWRTYkg9XVw
	s9hlMA==
Received: from mail-pg1-f198.google.com (mail-pg1-f198.google.com [209.85.215.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48fem4exqj-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 13 Aug 2025 07:56:00 +0000 (GMT)
Received: by mail-pg1-f198.google.com with SMTP id 41be03b00d2f7-b321087b1cdso9714117a12.2
        for <devicetree@vger.kernel.org>; Wed, 13 Aug 2025 00:56:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755071759; x=1755676559;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=m7q8BR9F5OBMsEZzbyywFRTwDIso+RrsEIi+fPUY/e0=;
        b=QpUeKHk2qdSv/MnOQSa+vV3NJL9aREsmeQHolLtx+66AZLqZMABIcmk4EsrrsmkLC6
         jdLXct/xW6/LN/PCh/pykiHlVTyAdzclVGyPEesz5DDXCP50jTXStia0++JTCEni8iJk
         WriVDPDQ5NZUpTm3HgPTCrkqIvOnFUCTGRefFCW1GNCQyVeKTriM9bQbM6X9Ums23QXP
         vekWPe+CjuqMLTo19uWDwS6x+x/EQyhXUfIlq3jBuPhBAj9D8DiHrL8bTRgsaaGwxgBB
         3HFs38A95nx17Qq1Scqv9c0mKkDgmxi584qVWAcZtVqLGW870LFSofIZTumbMctAWAfP
         HUsw==
X-Forwarded-Encrypted: i=1; AJvYcCV+LIhRGjcwf3ffLM72gDDjVLwt1LLxj5AE9+0mKM2o/FdX3iYOEyRNAojEjMLzlzaIY4IODOAC4zSM@vger.kernel.org
X-Gm-Message-State: AOJu0YxeARz6hbYTRH2HhOwYhb+1XPoB8mee+/pGfWtaTye6tCPHGQAk
	842PPFydaZ4BKpR2HMgthNx7GmU0nsLNAL3K/orAxTK675RRGJ64wxs1h0R2cc1rdJcdHqXBegD
	nZoNGnijYf4FqXixCszRLjoEA2O0XrEzPGd8IcT9lUK5Kb8IRXGMGWfATHJAWwW5h
X-Gm-Gg: ASbGncupw4Ev8U8ZQKgZHj0Kj2fXyX/RsP9vEZAhrfgr8q6lIms6Emg8aKKa0R7kgx4
	0qgcNzjHY/Fv5IHq1yRMLYNLg1bqnbE0UyROzxmkxiHzq0HNaYjB1cS6lMQvuMqRlsHI9CsQsWB
	ISEeA51E3Wjm7sk/ZfbBYYpPgWm3V//SCugm+kCwktdG5tqdFwEq8k9+WyKe86goSWsTMAfTMwy
	plzUvI9TfyPYbPaqT6jzIiTw4OJCOwLRQUvK/g2NmrwUWDeVzaEh11px8B6Kk6uelLEP8eUct7I
	Bjm8/5cxgu1yCMK4TTnlC78J8w3QrZpyLLz3OHW35Tr3fu+eRMuJzgfMFiTJib3P
X-Received: by 2002:a05:6a20:9185:b0:224:c067:66f8 with SMTP id adf61e73a8af0-240a8b57048mr3545293637.37.1755071759577;
        Wed, 13 Aug 2025 00:55:59 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGdYTtuNK9Ef5PQP9T+pU7CHZDwI8WmNAk7Iws2gqgqkZgmeLbgTRT90wMOoMIIfYtKtYpH6w==
X-Received: by 2002:a05:6a20:9185:b0:224:c067:66f8 with SMTP id adf61e73a8af0-240a8b57048mr3545254637.37.1755071759151;
        Wed, 13 Aug 2025 00:55:59 -0700 (PDT)
Received: from hu-tdas-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-76bccfbd22csm31395754b3a.65.2025.08.13.00.55.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Aug 2025 00:55:58 -0700 (PDT)
From: Taniya Das <taniya.das@oss.qualcomm.com>
Date: Wed, 13 Aug 2025 13:25:17 +0530
Subject: [PATCH v4 1/7] dt-bindings: clock: qcom-rpmhcc: Add support for
 Glymur SoCs
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250813-glymur-clock-controller-v4-v4-1-a408b390b22c@oss.qualcomm.com>
References: <20250813-glymur-clock-controller-v4-v4-0-a408b390b22c@oss.qualcomm.com>
In-Reply-To: <20250813-glymur-clock-controller-v4-v4-0-a408b390b22c@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Taniya Das <quic_tdas@quicinc.com>
Cc: Ajit Pandey <quic_ajipan@quicinc.com>,
        Imran Shaik <quic_imrashai@quicinc.com>,
        Jagadeesh Kona <quic_jkona@quicinc.com>, linux-arm-msm@vger.kernel.org,
        linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Taniya Das <taniya.das@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-aa3f6
X-Proofpoint-GUID: U23nBpDRoAjhVC2JYWFfL7cQd60_3DcP
X-Proofpoint-ORIG-GUID: U23nBpDRoAjhVC2JYWFfL7cQd60_3DcP
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODExMDA2OCBTYWx0ZWRfX5zFONlzJs0EC
 14FynqQBr0Gu0S4N3gCEynfnFvLcfY2EFSF94OnZvJT2LJWWkaShZRyyAfbGFOkmJwGKeWq0+/l
 E8oaWwfbaXGSTOi5B3BSzJ7c3jvRkK/r87A2Pm5xCZmjzCSRJ2g4Y/8CTOOA9pDqgmye6MJ2euJ
 XYXyQB8NGoYkweeUaxXI8cYfhdDBaVjMNp5kc8GYZuLgCGnmSV5UvnxTcKiwRdIZLgwnIx6FGiz
 6nvqnU09hGPDUgH1nit5+YzSGlFM2YQZbqKxEtrfmzPmpBNfRNAX8wpAGlhr3KSgN9K7z00JNsG
 kS8qIYgoRZRCaeCKj2W8ymMaAlFvtJkCTbMZqSdk5DTpSB7QtPzLLzRUZeDcrgQPtZOm2DAlsRB
 TSMQId8c
X-Authority-Analysis: v=2.4 cv=YMafyQGx c=1 sm=1 tr=0 ts=689c4510 cx=c_pps
 a=Qgeoaf8Lrialg5Z894R3/Q==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=ZmWPdgOBrplkPgKrADIA:9
 a=QEXdDO2ut3YA:10 a=x9snwWr2DeNwDh03kgHS:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-12_08,2025-08-11_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 clxscore=1015 priorityscore=1501 spamscore=0 suspectscore=0
 adultscore=0 impostorscore=0 malwarescore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508110068

Add bindings and update documentation compatible for RPMh clock
controller on Glymur SoC.

Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/clock/qcom,rpmhcc.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/clock/qcom,rpmhcc.yaml b/Documentation/devicetree/bindings/clock/qcom,rpmhcc.yaml
index a4414ba0b287b23e69a913d10befa5d7368ff08b..78fa0572668578c17474e84250fed18b48b93b68 100644
--- a/Documentation/devicetree/bindings/clock/qcom,rpmhcc.yaml
+++ b/Documentation/devicetree/bindings/clock/qcom,rpmhcc.yaml
@@ -17,6 +17,7 @@ description: |
 properties:
   compatible:
     enum:
+      - qcom,glymur-rpmh-clk
       - qcom,milos-rpmh-clk
       - qcom,qcs615-rpmh-clk
       - qcom,qdu1000-rpmh-clk

-- 
2.34.1


