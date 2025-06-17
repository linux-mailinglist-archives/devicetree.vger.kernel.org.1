Return-Path: <devicetree+bounces-186558-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 43155ADC5B5
	for <lists+devicetree@lfdr.de>; Tue, 17 Jun 2025 11:07:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B09473B83DB
	for <lists+devicetree@lfdr.de>; Tue, 17 Jun 2025 09:07:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 84122293B5C;
	Tue, 17 Jun 2025 09:07:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="V1KirzYT"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05C8E290D8B
	for <devicetree@vger.kernel.org>; Tue, 17 Jun 2025 09:07:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750151233; cv=none; b=LMoAaDfbWEgtoH8l6yn7mVsf1EntUv/KbY5kIJAAO2Kn97oL6D9Qcw8TGNocMSBL83ClkwxFZwu16YJqec6xe3KcGDa0R3ZX4dV9MokIWsyXpSZ+P9WkBJPSqXIuqjpqqkPvCLJbAmBN/Ww4kJCJeIiSkuNAqCFRcIt8OR0wt1M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750151233; c=relaxed/simple;
	bh=Vn5omH7xMvt1iEtCLJWJvK4XrcA+3vcYMlQkxOXLM/Y=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=f2TISyasYKf+3OkoT1UPff1P+iyJQdTAwnyxdWALEnJobdQDDQhZMcyI7dAYIpCwBi5NOPwwthesxFgYQgWD90x+6LG5Df+kNyCcWv/XqSq0Z8Df9tPreO4ZzkfNlCm9MAikPLpN5iq8pylJLUt0vXs8iOEZbupwGhpcDPw4Rzs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=V1KirzYT; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55H6kZ1W028015
	for <devicetree@vger.kernel.org>; Tue, 17 Jun 2025 09:07:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=Qly2EdwvT9V
	KNW+eXeSW4hrs+ShzHfZ0sLmUFke1LiY=; b=V1KirzYTdvewPve4ZhqqrTPVYAh
	mR1kMmckSPeVElmcI24KcJbXd8tH6RKYDWkGlaYzNM9W0LSeqCDEbux+idDTi4z2
	vKTJRXKaiisaRl2n/Dd2A48lUSsengNgNHMm6+9bVpEFPDA0e/UMQ3OZcb7nmBHV
	1klalkHEX14NbZG1X+CI8PibVAdmq8o6IZGwuGMAav0xikj4QZwTl9ZIUIqm5sO5
	24WeqDLkrTYX21MIN6bfbQyon2eXQxU3CYubO2R+QFTq9yueB1IiJfkNmnJuUwEt
	/g+BSkoPsxdaNnIuiaplrwBoxVGDFECNQV2Xi1Lt5RLS+93EXxsElpu+mHg==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4791f77mt8-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 17 Jun 2025 09:07:10 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-235c897d378so46286245ad.1
        for <devicetree@vger.kernel.org>; Tue, 17 Jun 2025 02:07:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750151230; x=1750756030;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Qly2EdwvT9VKNW+eXeSW4hrs+ShzHfZ0sLmUFke1LiY=;
        b=Ll4Aw3TF9wBXmxjwrOQPztYwdflfLPyY6RoTCdi6MlGYHjYWas6W6x/4ruROajNbAQ
         odYGqOb15+s7IU1XoCsYre+KN5Jf6JqW6M7oByE0m+qk95N9eEXYks8v3eDvGqe9HbCp
         IFztsWor/nQBXhPSGPtE9ecVOBnAPE1s9MReHv37u5b4i4ndDDLpV6DLBiWGiDSBzhsE
         QoUJqpur0T+gLdpX2vSvEZ2w7knuSabvkFw1p90xuFkqz83T5XEm95tevLY1c0DWw37l
         zsxHjbDm3UUr6/wzsxTgp4IpRgr7n/yau3DHbsudPRxGz29AR4rczpJCBRSlhjqoCKKA
         nWKg==
X-Forwarded-Encrypted: i=1; AJvYcCVtUajs2SA4l4LF2sHvV/6buvoS/G8ioTRRCpWYrc0+8U60aP9nYSPmtMxr7sLgORIk/j4AnhqCXsEO@vger.kernel.org
X-Gm-Message-State: AOJu0Ywv63DqtyVWREpA6ZHN07JIh0ZrEusqov6bTL1Uc0wQqWZaHqrY
	wKgDZa3mEkjmlZ4hwoj+uddUkl9n3zrzjS6PExPrhFrYKkTQ++2xI/FFRh6VbHUwv4o3/ez6pod
	Ez7pgQIm1wwnFSsf+Npnl0LVRWpzKbS61qu4Pa4Pv4Gr+6u1/h/R9t8WdUjE3cuJV
X-Gm-Gg: ASbGncuCGcuHY4cKoKlNv7Dne4PleBY1IYCKwPLPqXW9iTq0cTz+PlB1JhlpMgKEjIE
	0T16lDSfIo/59d97tGTnOJ7d3Msm/MJF7LSovrvQk+mcwuqBaKY0YRDS0XYouoVQUcg8Rd0PVOU
	mQPhcCyo+i4LIrdlRhfntFKQFXwcOcPWZCZtjxzsxVDNpKnRZCAVwMvipzIoHEOLa5BGOdWqQIx
	QlhDN0M+BfAFBAx0aWsVaotMmaC8LEKxOl1i+bAIO/Nv9kgW6CwAyjPsdTVw+wdIft23J3Hnlkp
	zM7/D17/7Wn4JTZnGQ4JbGGv7rSF30E2CbNgvVZB4CZJ9HQxleBBBZgG2pXXBA==
X-Received: by 2002:a17:902:ef45:b0:234:a063:e2b5 with SMTP id d9443c01a7336-2366b1224a8mr179419765ad.30.1750151229660;
        Tue, 17 Jun 2025 02:07:09 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHOtX4HvuLhem2kJyZ83xaYVvt9E2oOIf3GftGjva6d/NVHBthTT2N3GFudpNlTYUanrft4LA==
X-Received: by 2002:a17:902:ef45:b0:234:a063:e2b5 with SMTP id d9443c01a7336-2366b1224a8mr179419395ad.30.1750151229257;
        Tue, 17 Jun 2025 02:07:09 -0700 (PDT)
Received: from cb9a88ed5d41.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-313c1bdb39bsm10017370a91.20.2025.06.17.02.07.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Jun 2025 02:07:09 -0700 (PDT)
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
Subject: [PATCH 1/3] dt-bindings: interconnect: Add EPSS L3 compatible for QCS8300 SoC
Date: Tue, 17 Jun 2025 09:06:49 +0000
Message-ID: <20250617090651.55-2-raviteja.laggyshetty@oss.qualcomm.com>
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
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjE3MDA3MyBTYWx0ZWRfX4w8SRZfTRUJZ
 jr/3EuPX9LN83cxr+DeZphUiELv3/Xa4xWVceZi+zQ3LHBlydqFVEUEdtBr8RiEFBnce6srP+UW
 5J4NtsI5CqQZTr9fGVUdwgLhvCiODPiN4cxTbGVcCH67f8ePCSgDLW4FT4Ho3hCw1Rw5kX2aN5V
 eFI/0s+Z7EA/RW1ngXpHfuycJ79FT9FjOgGtzNtzcc8gsD7LlgknjfgLQsDq+BvmTjs67gQCd0s
 7pnOiPXwyMadpyyC0A90BWE4pvVFEmxgkYJ5X2q5yFW0Sm73xoesGw6CyvCl22iMmZ2mRwuMY70
 v8NNJ6PxXKNwg5WveVl3fypCH2m/q1j7Rj8AOtWHhlt2YotvaDZ0OfuTr3dZ34nRrwT3nrGCsiU
 rZ4BU02UrrCvViY/RhXdH9wDaYWCli5slvGjOS8xitEgg/d8QWnp0Ep1maQgKNEuPNkAE38P
X-Proofpoint-GUID: ItQpMLaFv2ZPmPdy38ZLu_PxouWnfPrz
X-Proofpoint-ORIG-GUID: ItQpMLaFv2ZPmPdy38ZLu_PxouWnfPrz
X-Authority-Analysis: v=2.4 cv=FrIF/3rq c=1 sm=1 tr=0 ts=6851303e cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=6IFa9wvqVegA:10 a=EUspDBNiAAAA:8 a=n01AJKLZCHBDCBjb8ZAA:9
 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-17_03,2025-06-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1011 suspectscore=0 spamscore=0 priorityscore=1501
 lowpriorityscore=0 adultscore=0 mlxlogscore=999 bulkscore=0 impostorscore=0
 malwarescore=0 phishscore=0 mlxscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2506170073

Add Epoch Subsystem (EPSS) L3 interconnect provider binding for
QCS8300 SoC.

Signed-off-by: Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/interconnect/qcom,osm-l3.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/interconnect/qcom,osm-l3.yaml b/Documentation/devicetree/bindings/interconnect/qcom,osm-l3.yaml
index cd4bb912e0dc..64ad3898abb6 100644
--- a/Documentation/devicetree/bindings/interconnect/qcom,osm-l3.yaml
+++ b/Documentation/devicetree/bindings/interconnect/qcom,osm-l3.yaml
@@ -35,6 +35,7 @@ properties:
               - qcom,sm8250-epss-l3
               - qcom,sm8350-epss-l3
               - qcom,sm8650-epss-l3
+              - qcom,qcs8300-epss-l3
           - const: qcom,epss-l3
 
   reg:
-- 
2.43.0


