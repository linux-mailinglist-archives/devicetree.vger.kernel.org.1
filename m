Return-Path: <devicetree+bounces-213681-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 30EB5B46388
	for <lists+devicetree@lfdr.de>; Fri,  5 Sep 2025 21:24:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 1BB2A7B5214
	for <lists+devicetree@lfdr.de>; Fri,  5 Sep 2025 19:22:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3BF80279912;
	Fri,  5 Sep 2025 19:24:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="iq1LpPPP"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C417D278779
	for <devicetree@vger.kernel.org>; Fri,  5 Sep 2025 19:24:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757100242; cv=none; b=h+t2BJduVwdPOM/JtWSHNZGNH0+scc5U9KUU3ajaIR3cWgmksHxGDj+0whpoKO3ccWf1e5t2aVT9CzTA6ExFpY/+cXLNuB4y+VHc19bCBVEiFNx98uMAqLQVLjVsFKx0nlDO3Dg59b0yYD0IgNdYFxM3gmjjkye8QgQFa4o9o1E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757100242; c=relaxed/simple;
	bh=srGN4WhgcsLMS/KlvSz1eAaY77p1cgmpEUU/3SXesow=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=oI8tDN90IfmvNnzb1UHFlZ0ihqAw+VT9jt6bpMoFx+1pPbIJOELxeke/DjvedoRC5kV1mVC7ShjPQjLVPS2d1sGIdioOxIvEYmhNHh/XYLSd1jp9veAXk+iMZLiad0iUAcPj8DTTBFkTd9FJiu6hWhlbjUi/VFb4yqvwu6UX0pQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=iq1LpPPP; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 585GAoft023889
	for <devicetree@vger.kernel.org>; Fri, 5 Sep 2025 19:24:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=UaZY5Y1LnNR
	AK4qvayKbjf6g+d3GE+1VhtaKAe1H3T4=; b=iq1LpPPPe6ax/mbNRbfl2lJAgrk
	jdRI9PXybAIWuImTFMS8YkDOMzw9Mc/L2If0f7mFYhZNuvsIwXBUZmGOii1ywRJo
	rGK7xxM3oIF4hUdwZQeomcZqjL1VggfCviN/GKyTPoKvrK//Yp9FloFVKdVkFZEK
	gb3o/pnAsEOB+90KP1AXIUbCdAcmg+Mx/BsatB9+bSOiAZxFEbHdGZ9FBOXjHaD1
	QGhkhvkZUU7Ouc+ypnPsqSEezSeRMVXaZcEP7044AnUziZN2h8oE5j/Irzlqrws7
	WwZp/tpkecUF84YDcSHdRn70gPQC4I8YDvfCvmZGsXjYuH3TAZHvP2UWufw==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48ut2fv6ab-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 05 Sep 2025 19:24:00 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-24ca626351aso5674225ad.3
        for <devicetree@vger.kernel.org>; Fri, 05 Sep 2025 12:23:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757100239; x=1757705039;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UaZY5Y1LnNRAK4qvayKbjf6g+d3GE+1VhtaKAe1H3T4=;
        b=bOl3kUWAOiu5a64PsNZjH/1PA+QfB4VV8GwoTAohLFW2lLU1CiiUL3yf0jqHIazWeD
         g5dq4cjJjCUsysiCE9QLAFMPgGgJFb+FLs+sLKDFrp+y2EcadX3Fsq0jOKRFtcYTAzY+
         5wJCg9sW5nnnzuigIYXPKH2kBPAG3fPhKQQoedladLjHaZxUOLu0QtJKXIOgxfoqcMiH
         Can3+9BycfHdzbSxDPmTxLmAB9pMOn6IQOF5A3GQMHDtGzBD0CkHxx+NdCQHwK0Rjaq/
         +62tDr4wdfsxrj2PlydedLvPMuiu9PseeDWSBSa65pKmGA/xkROJGm3ItQ90mrr5IC4m
         6L7g==
X-Forwarded-Encrypted: i=1; AJvYcCURHKhOoG0wcUFoliIXy8hOEPUi4o+hG07lozyqr2Rjj85FFJAqupIWR3UI31xWvhIQyqW/z7Oju0ge@vger.kernel.org
X-Gm-Message-State: AOJu0YwGPcrn5EPtshvO81jGpLb8vLNP+O4QPKP3xZ/fiDeNUfG7/Ut7
	+3cBb8LJ9OgQYr1mFXGNw1LaBULWHOj/x72al/ysqhO5y6A3wlcRZN90xywyO1V7zVF+UUHKbyC
	3Kb//jHwReVNa8Qe+2KjSdif21hqU5ou4DifmIQ+HTkFINAV7LPPg8xsOOakXrWh9
X-Gm-Gg: ASbGncuqyAWB395GCUzVacYwi67NikpUboB8986OkhOnx8cEPiiZYlxhtqtNvSHCU+t
	L6Oy3hlDY2cmjoQKLPcAGP3jDkP65VxzDRIlR4dqOS+F2eU3FHP2dPWh5d1XmwqNV64G3wQW9ln
	cq3kjlyvisM+i2HcNy9s8HA2twOpTBbhH8enOv1NTbG2iPTVz7Owu+7ljOp4rrYAhMaPWgS8uXZ
	LxsZMmVFK4RfwtmVSmrCU30GoC+4DlZ/9ac5FNNvqM8S0qLsjGz+RkKBMme6j6Jmsvjn5cXIQ8q
	m19cmYdkkMON3ocIy2MBUrAl7IPZFS63CZv5WleU5FqSiDv1weOYqYEY9G62TQqfxhnqZj0=
X-Received: by 2002:a17:902:c40e:b0:246:7702:dfd9 with SMTP id d9443c01a7336-2491f113dc2mr206778935ad.6.1757100239077;
        Fri, 05 Sep 2025 12:23:59 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHmsSbG7P7sBg6yvvCEFKsVBf+CyWQn38skY3q8PaoBvPhKQ2xHKRloQaIxTAZOeMpXNWnAig==
X-Received: by 2002:a17:902:c40e:b0:246:7702:dfd9 with SMTP id d9443c01a7336-2491f113dc2mr206778865ad.6.1757100238689;
        Fri, 05 Sep 2025 12:23:58 -0700 (PDT)
Received: from hu-uchheda-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-24cc1a82a34sm52397055ad.151.2025.09.05.12.23.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Sep 2025 12:23:58 -0700 (PDT)
From: Umang Chheda <umang.chheda@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Richard Cochran <richardcochran@gmail.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Umang Chheda <umang.chheda@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v4 1/4] dt-bindings: arm: qcom: Add Monaco EVK support
Date: Sat,  6 Sep 2025 00:53:47 +0530
Message-Id: <20250905192350.1223812-2-umang.chheda@oss.qualcomm.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20250905192350.1223812-1-umang.chheda@oss.qualcomm.com>
References: <20250905192350.1223812-1-umang.chheda@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDAzOCBTYWx0ZWRfXyvqZvnV8lXLs
 VLuhZqwA/qOKmgyK4jdEZEROsLOBrmjY3MqtjgVRVU+1BvnNTzvFLU60agP5Gn3qcuod+/BDB+9
 iK2LiuoAynzW5kexuSBV/gYUU9oywAPwlHEMpbQyu5fycpvXWMBtYxxD/BQmJzCsncVdmxe2eX0
 MxHpPx7MsLVoftfrflilxzH6LKIpME0ZZlRFt4O2H0UCrlOzhpY9QzjpkqkDpTTAjsIBfGoRhTo
 qZWdNM3On/dLyKpbnqclB/iYTfB3T07TIRqN83G2ThZy9rcm8beBXyZpvcUO9ZdTKfUcXD408cD
 FV40fc/ATUI5BRQ8AlKfspOcx1we4Cq1a7eNgsY/qHEkS8MJF/Fb6gfLBzJNxboVsCgWWS/z1ip
 KsSjZjQk
X-Proofpoint-ORIG-GUID: y43eJSpMzu6uPhEe3m0jpdbc_yar2CKx
X-Proofpoint-GUID: y43eJSpMzu6uPhEe3m0jpdbc_yar2CKx
X-Authority-Analysis: v=2.4 cv=U7iSDfru c=1 sm=1 tr=0 ts=68bb38d0 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8 a=Zd15BVePnIxtF9Lu70oA:9
 a=324X-CrmTo6CU4MGRt3R:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-05_06,2025-09-04_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 phishscore=0 clxscore=1015 impostorscore=0 suspectscore=0
 malwarescore=0 priorityscore=1501 adultscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508300038

Introduce new bindings for the Monaco Evaluation Kit (EVK),
an IoT board based on the QCS8300 SoC.

Signed-off-by: Umang Chheda <umang.chheda@oss.qualcomm.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/arm/qcom.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
index 0110be27c4f6..7d47d0c04376 100644
--- a/Documentation/devicetree/bindings/arm/qcom.yaml
+++ b/Documentation/devicetree/bindings/arm/qcom.yaml
@@ -855,6 +855,7 @@ properties:

       - items:
           - enum:
+              - qcom,monaco-evk
               - qcom,qcs8300-ride
           - const: qcom,qcs8300

--
2.34.1


