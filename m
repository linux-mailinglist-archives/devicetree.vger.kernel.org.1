Return-Path: <devicetree+bounces-206310-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id CC0A6B2C04A
	for <lists+devicetree@lfdr.de>; Tue, 19 Aug 2025 13:27:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 57D881886986
	for <lists+devicetree@lfdr.de>; Tue, 19 Aug 2025 11:25:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 216FA32A3F1;
	Tue, 19 Aug 2025 11:25:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="GiCN2wLW"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 98DEC326D72
	for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 11:25:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755602702; cv=none; b=bNk8qlD7PqT62AXKmEWhXXwEie9ofimaoIs+lAGIy3vMU3lBQATbb68Qb11VYHA0kK1AO3LMM6nGYNvgGYIkm+P4ot9flxRJW3b3ud8iEYd9/lqJIJfoOKxWXVvb+CkF1bVvqX3Yicz9KBXE0DcQx5THAiIs1yXqOccey8BYgsg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755602702; c=relaxed/simple;
	bh=jfFVMew13aow9LdiRL7XgiGeNSFwWq+iSxzZgyk6PJU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=m2Ggiwhc7mYW6VCQFgxtA3CuNAesieR5tiwELKWvp4Vywrpjw3DzOsck+YIPGjYqm6oUdeJ7umMxV9e5dSO6jiY8erAWVKe2IM1iwu82BmvId8340BJfZwX10rysKWYDZicxGr5T7RH3nfExK43MM+LIPlPZX7KZ2De57oS2HCk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=GiCN2wLW; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57J90a6Y030852
	for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 11:25:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ylwnfePZhDFnBtzP9R6qdkGXQk7pZlCHWwEtxVPDs/4=; b=GiCN2wLWXZoVgDfs
	stxoqHqyku4mAKBsijfyWxc5WVTIOoboBVDDr0PGY/tggKGqyPeqJpcqv4CSH81n
	0LDsiGFU//+iViRO+1dUk4J9igxdo0JK6iuEErpivW/zAX173KvQFagg9Pw7ahEZ
	bAwsC9epKHMRu1M3kXIbbhSyQQifZAioEFQpmRTnzmKm10EjJM4206Sp6r8Nheau
	eQL6dqJqkWdcfkhmgWPs/wTrIjSdK4xZOv6tNckGttSKk5X9mdYj6Q/ei3F4145v
	60N5hNd9hsNykmDrqcgfYdq6bUktvUOcRTzshhHxlMmEasH6lmna+UoFEui/NLJC
	aV3Jiw==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48jgxtggu8-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 11:24:59 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-76e2e9a98b4so4614457b3a.1
        for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 04:24:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755602699; x=1756207499;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ylwnfePZhDFnBtzP9R6qdkGXQk7pZlCHWwEtxVPDs/4=;
        b=AQq12EmKcgjZiqGDvik68sHuwR//ne3kUvLQi9dnqYaztw6+tuDX7b2ar3k0YVeO+R
         qPfHWCqfW/J/YpjWA69EFW31mh/GwMHJsOqH6AqnWkKTchVHI/YXewIvTTcEDt4FrsRH
         KwGoUikk3pR0QmH/EXcfFRRVwT0342D3CnjcJPqed/o7O4viNQ7CaFSJVQYXOjKeNATm
         leF9bmR9n5sw8Q1B2xVxGyKWcZpUJgxyiZn6OgzfKkwY9d9IJSW8vaRYUrxVo/TAUgVg
         hmEE9Rjzr45kNzQwwNtAoyS/AX1VG3cpYtpmyzKcAKPGgsuuRpCSxDU9AuMB67Ncmuqu
         qUBg==
X-Forwarded-Encrypted: i=1; AJvYcCUjVQqMDT2+jk9OcHsO2qt6EabyMnJPMgnGpqywjnAbqI491/s+uUQuAwE4QME9a3vCxm4OnOSbyneH@vger.kernel.org
X-Gm-Message-State: AOJu0YwzNX0b0YrXfoWt4srBp4Yc0xwSihTrXevbXKCyk/EUlicTRUvC
	jIk5sbYKIbzXVJ/mdKvcp3RJD1TdxryompY9qvp/WeZMYCV9+Nith4/xm2iNjZyXZN4IUm+Y6jS
	JfWenzLfMu3dEHcmgbp+EStQzKeK/mPrPeYGfjtazjtdwf/rxreiSyhQWZ+JTP9/W
X-Gm-Gg: ASbGncvVjEscrFJZusM+pqmL74eO5JBGlagrh6pWltZkfN+jFs5gVs1t7eqQIk048Tn
	kl+A3bqQrRj7kJo8WXRJmzGWB5dT5smyH8w4NGswBEpEd17JC9suhhLDBVN4YKFKWCbzNJXqDZs
	u85CWWBopEj4SrVefTbVEw9yr8oCQI4yAE74A88fR5ke+HyAqA1+hwHaluw9Q01CxX87vbEVVYn
	nTYnpNRIbpiWPnXomeLmLtYOuc/jKjZrR2HBVqMm3pyD7ytB7hWbquEI9ft0KCD/geDuGtQ300b
	fFlLFuAi4FteF7spzsR6jbonuUlq+zR8EgWGdMXePd3k1o7cAvHREBNiDcIr9OE=
X-Received: by 2002:a05:6a00:4b46:b0:76e:7aba:cb41 with SMTP id d2e1a72fcca58-76e81a1848cmr2455147b3a.13.1755602698949;
        Tue, 19 Aug 2025 04:24:58 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGMOHVGcTe73LweODTfsXqIUxD7/Iwwz6sW8zqb7EGuvXAkkHJ30P27NxGICxJsbheDjqrKJQ==
X-Received: by 2002:a05:6a00:4b46:b0:76e:7aba:cb41 with SMTP id d2e1a72fcca58-76e81a1848cmr2455114b3a.13.1755602698489;
        Tue, 19 Aug 2025 04:24:58 -0700 (PDT)
Received: from [169.254.0.3] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-76e7d4f7cdfsm2202258b3a.63.2025.08.19.04.24.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Aug 2025 04:24:58 -0700 (PDT)
From: Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>
Date: Tue, 19 Aug 2025 11:24:46 +0000
Subject: [PATCH v3 1/2] dt-bindings: interconnect: Add OSM L3 compatible
 for QCS615 SoC
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250819-talos-l3-icc-v3-1-04529e85dac7@oss.qualcomm.com>
References: <20250819-talos-l3-icc-v3-0-04529e85dac7@oss.qualcomm.com>
In-Reply-To: <20250819-talos-l3-icc-v3-0-04529e85dac7@oss.qualcomm.com>
To: Georgi Djakov <djakov@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Sibi Sankar <quic_sibis@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Mike Tipton <mike.tipton@oss.qualcomm.com>,
        Odelu Kukatla <odelu.kukatla@oss.qualcomm.com>,
        Imran Shaik <imran.shaik@oss.qualcomm.com>,
        Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Proofpoint-ORIG-GUID: Q2qMCa0W5xT8JJXx1LRo1x6Nqsb1I5dn
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODE2MDAyMCBTYWx0ZWRfXx2020F5+jDhg
 VFngjCOthXoaHzfbwlsqQbw9TZiLluY+Jr744714KAy7dyF3nC1BXthYBlQxemNth8p/IjJ3FaL
 0X5W1gEXQQvHv+rTKgx46F9oMRtZNjebCRaYJtF9LiFMGTHWvqQ3qw3VjEEGLpmFvDz1WPFB48S
 QvYG+DXIm5RkgBG6VaGyOsMFS3Z3xn4Hl61bcQ+PJZUxo34D8B+JLZdAKoaJtcgukLjjc6zfzh8
 sjAZfpZ73qLQjkM1WYmdtgdeyQsU8zy01+6vmdPCHx8VtJ+HB+tWjfKdvHQecKLlhyScTqbuNeJ
 B2EumL3RwdJbYCJUytLCmjRFMuh4zhYZIWbk0r2D2f+6dt+Z1P1keVKREBxVvSNBWyO0L74nO6Y
 Qg6l+3V5
X-Proofpoint-GUID: Q2qMCa0W5xT8JJXx1LRo1x6Nqsb1I5dn
X-Authority-Analysis: v=2.4 cv=V7B90fni c=1 sm=1 tr=0 ts=68a45f0b cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=bpSexm00WYn9fMQEYZEA:9
 a=QEXdDO2ut3YA:10 a=2VI0MkxyNR6bbpdq8BZq:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-19_01,2025-08-14_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 malwarescore=0 adultscore=0 clxscore=1015
 suspectscore=0 impostorscore=0 bulkscore=0 spamscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508160020

Add Operation State Manager (OSM) L3 interconnect provider binding for
QCS615 SoC. As the OSM hardware in QCS615 and SM8150 are same,
added a family-level compatible for SM8150 SoC.

Signed-off-by: Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/interconnect/qcom,osm-l3.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/interconnect/qcom,osm-l3.yaml b/Documentation/devicetree/bindings/interconnect/qcom,osm-l3.yaml
index ab5a921c3495298546e4bd34ed3b9e4e85d3c747..4b9b98fbe8f22258c209e8337bb4517e5f5888e8 100644
--- a/Documentation/devicetree/bindings/interconnect/qcom,osm-l3.yaml
+++ b/Documentation/devicetree/bindings/interconnect/qcom,osm-l3.yaml
@@ -41,6 +41,11 @@ properties:
               - qcom,qcs8300-epss-l3
           - const: qcom,sa8775p-epss-l3
           - const: qcom,epss-l3
+      - items:
+          - enum:
+              - qcom,qcs615-osm-l3
+          - const: qcom,sm8150-osm-l3
+          - const: qcom,osm-l3
 
   reg:
     maxItems: 1

-- 
2.43.0


