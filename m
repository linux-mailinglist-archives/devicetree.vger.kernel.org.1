Return-Path: <devicetree+bounces-228337-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 37CD1BEC3BC
	for <lists+devicetree@lfdr.de>; Sat, 18 Oct 2025 03:34:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 2C5CF4E4EED
	for <lists+devicetree@lfdr.de>; Sat, 18 Oct 2025 01:34:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DF179205E3B;
	Sat, 18 Oct 2025 01:33:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="jsMNkZE1"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47C821F3FE2
	for <devicetree@vger.kernel.org>; Sat, 18 Oct 2025 01:33:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760751231; cv=none; b=h55T2Ldo5cAnf4Kr5R6l30OcSxzrsd0qM+37Gr2UqrHKv8E2aKeRBL/hRXSuJYN8uyKzQJLOsRfp0D1BS0cF1GUk8sNcH7jFd/vUGcBwuZMKye2Dguhpxb+vr9CCu2vHzO2OTPcknGmYIZodM3Akc9Wq5ROj0U8rx7/CD2Q986w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760751231; c=relaxed/simple;
	bh=JjTidZQB/64meRBY72wsiS5dDWqoy5vboHdQPrUMssk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=YDbn8d7mKY3ieTTnXxnYZi7QMLAzdCJUV3wPPP8ZJpimzJ5sTYe+Yjj4wQUt93Ckw1jX6fC9ZdLUaB9I8hc3bp6/jXc+pWbRJl0hzS/s6VyrU9ZQeUYW7OsCTA04UeHvvA+7SosNz+3lRzsa+uQowoeV2vCbxL1WIyYRwLAqoU0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=jsMNkZE1; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59HJG9Tf016168
	for <devicetree@vger.kernel.org>; Sat, 18 Oct 2025 01:33:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	yL7Iw1H1yxY1RKY9O3NOo5NRWkBTocM3EwLCw3QQ0Xg=; b=jsMNkZE1AyDKc34D
	7f9nENu6iufATV1LGrWEQhTnNa9FIDfrd9wDwnGUJsG6qP2DSVv3gz9kGpm9udkn
	tzNTO1UaW2P9JjTJTkvsbZsVUkZyo+YiCcoXjenXcCqdgYhsFonSQImAsKqhN596
	NQlJrMqTplXEFbjM5ga+Z9K2wYeyQw1N1LJ/sW2B6CFiaPcIuVGAeRj3SqSt0t4u
	rsMzxDWlH0YPh+BM1DCi91T0QirrlqAULlEHNIWKmiP7kZEjym1+2YQmBNAZ8yOd
	+1T+JlwHxu7kqViaFTrfihKfUqzyG2aveaY1ri7kdlzpCTwVRw74fKtdPi8Le/M2
	WI37Vw==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49uqun9kam-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 18 Oct 2025 01:33:49 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-29085106b99so25774555ad.1
        for <devicetree@vger.kernel.org>; Fri, 17 Oct 2025 18:33:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760751227; x=1761356027;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yL7Iw1H1yxY1RKY9O3NOo5NRWkBTocM3EwLCw3QQ0Xg=;
        b=MM+DSC9MmElwAN75/BecaXwqo5vgZMj2pN5j1QzW9q3tVbbFzgkROolU2hcEo4CHBQ
         FGIY6V8sSozw4CSjQUNXjAFli4VbPKKScSk4K6ESkqcNGnOkEGMbfw22HeWWtS8qTs0r
         QBtSqy55wlWhAWULC52cYTHhtXBcT4GscBOl/sX8M9NBAPSNV+YaRLEvYvpkHfJ39C8F
         LyBtBk8iAWMZJMn9bGsmmKnJOLgtPtu6WXdFb6yFqplaNcwzmuK4Tifh8s2jGRuHVLUZ
         a4tG9ryBdScQR4PL/2mnPLbCe60jHbDNuUlOd0rOdlrRv1Wd28hBnwFXYuSg8zWW/2DY
         vGhg==
X-Forwarded-Encrypted: i=1; AJvYcCUHAODVfQiAT573RNXrPK1KqJ/neSeWNWMgUK4Uk51OG4m0KYLYmh4UIc5PcVTTBd/PmInq4u+C+JgL@vger.kernel.org
X-Gm-Message-State: AOJu0YyVf4XhuL7TrDH85WNmJn6UdQi8r/xy84z8/g4eJgzWLK1k8uiN
	rp+IMaH1xs9zfmwWp8hZ60l9OSi9/cE/wjdu8tBx+Y6Rlo+kookFe1sJvFEJXIiBoxprOOTKix0
	PfTsGEY4WidkIPceUHgFyUy25HuLm1mDsEBlDgS0xdF1bMmDRc6mu72e0bi2FMJvO
X-Gm-Gg: ASbGncv3Ah45WGXOQ/W4bcsUYBhJib5wz7GoNpy1FlABtv3+tROP3EhRHej0ySSVwmM
	yvYuDN4QRZICEBwShb/So5J9CaQO4YLzCK/HbefvgyJ/5nBQfC3boxRlZT7AA7e2cif+lSUd/tv
	dZFPsE2drymHG8EArytcMxImEGFIr0aoRMqvYnYZTw6UdtdGVDTtoUB9MGWpKjhGydeepAAroOO
	JGftlptNlT84vcC9OKVeOK+NLAz7/SLOT/b2vIJu3iDUHugGAp3JBvxxVava1ap7PJX93VJkI4b
	2kdiJ1gsslxa6MdahduFSpDmA0TkE+emZyqpoaVxE861MCIrlGdVgoF+MCE691Dt6EZQqyGaQpT
	FC+MoJ6NL9heW+Pw9pUePQmw1fbl1KWmM9tsqfeB4V1rXvA==
X-Received: by 2002:a17:902:f78b:b0:290:ab61:6a4f with SMTP id d9443c01a7336-290c9cb367fmr58341705ad.15.1760751227364;
        Fri, 17 Oct 2025 18:33:47 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE9hDmHjEaPzyblYMvIXbWGcSrq2rVVNWtCtuBRPfBhjjoQkGpW+JgacHko1My72hwjOFIDGg==
X-Received: by 2002:a17:902:f78b:b0:290:ab61:6a4f with SMTP id d9443c01a7336-290c9cb367fmr58341445ad.15.1760751226941;
        Fri, 17 Oct 2025 18:33:46 -0700 (PDT)
Received: from hu-qianyu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-33d5ddf16bcsm791695a91.4.2025.10.17.18.33.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Oct 2025 18:33:46 -0700 (PDT)
From: Qiang Yu <qiang.yu@oss.qualcomm.com>
Date: Fri, 17 Oct 2025 18:33:40 -0700
Subject: [PATCH v5 3/6] dt-bindings: PCI: qcom: Document the Glymur PCIe
 Controller
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251017-glymur_pcie-v5-3-82d0c4bd402b@oss.qualcomm.com>
References: <20251017-glymur_pcie-v5-0-82d0c4bd402b@oss.qualcomm.com>
In-Reply-To: <20251017-glymur_pcie-v5-0-82d0c4bd402b@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Bjorn Andersson <andersson@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pci@vger.kernel.org, Qiang Yu <qiang.yu@oss.qualcomm.com>,
        Prudhvi Yarlagadda <quic_pyarlaga@quicinc.com>,
        Wenbin Yao <wenbin.yao@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1760751221; l=1272;
 i=qiang.yu@oss.qualcomm.com; s=20250513; h=from:subject:message-id;
 bh=HOWusfNTWzHipvZF7Qt0wgwXwhNMDSpIrgzW11n9LBY=;
 b=8pimNyDGXNzEl9GUpN7Z7wb3o2a3g+9Fung2WFtYQIGnL7Kk5LNNsPZGGf4IeLUil+4UCHuX9
 65P3erQLPnkAJHXTPIo3PfSQ08IYzKF9rHQm7V7C/JPhAyowoiw8Kki
X-Developer-Key: i=qiang.yu@oss.qualcomm.com; a=ed25519;
 pk=Rr94t+fykoieF1ngg/bXxEfr5KoQxeXPtYxM8fBQTAI=
X-Authority-Analysis: v=2.4 cv=aM/9aL9m c=1 sm=1 tr=0 ts=68f2ee7d cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8 a=eBPcRD9z0Nary0_f1DAA:9
 a=QEXdDO2ut3YA:10 a=324X-CrmTo6CU4MGRt3R:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDE3MDEwOSBTYWx0ZWRfX9oaocl3p15Yl
 KFWDv6vAAmGN65blgIzDZTzjLQ7ITZLyr8rS4oHODVCOvnzVLGNAD0uwyCJZ9TjAolkL7c/BqEQ
 5RiV8J7X2tr36UsmaRuGLhBBNkPz+W65i+/N99xiy0+vHGJC7pYSUjmWMk2u3glMxJSeD0wvHgU
 udha8N8JSUUAUvCp+XjEPeKK/tetewwO/Aqzf8xRsv6hOleQhcLicys06xdfN3ItwBry4j5g32L
 NmFtMR/DxVLhUvxfg4VKERUFP+lYvdbgG6rHOMIjibZ1/cRNh1KQQBF9wsuiY7IOrJQsaElg8vn
 diL4bTy4CmB02K5/Cgr1JXhy33Cmez8hSJlFMplGqceuRZ0ou6E08PmHrXzXUVRkDoiJi0Yaguu
 nBq7ezqj2TeS8lQhNsmWXjNqpHYUzw==
X-Proofpoint-ORIG-GUID: sNPnmtRUtGL5fKMUXmcHdgBwvTeXhcql
X-Proofpoint-GUID: sNPnmtRUtGL5fKMUXmcHdgBwvTeXhcql
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-18_01,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 phishscore=0 clxscore=1015 malwarescore=0 adultscore=0
 lowpriorityscore=0 spamscore=0 suspectscore=0 bulkscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510170109

From: Prudhvi Yarlagadda <quic_pyarlaga@quicinc.com>

On the Qualcomm Glymur platform the PCIe host is compatible with the DWC
controller present on the X1E80100 platform. So document the PCIe
controllers found on Glymur and use the X1E80100 compatible string as a
fallback in the schema.

Signed-off-by: Prudhvi Yarlagadda <quic_pyarlaga@quicinc.com>
Signed-off-by: Wenbin Yao <wenbin.yao@oss.qualcomm.com>
Acked-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/pci/qcom,pcie-x1e80100.yaml | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie-x1e80100.yaml b/Documentation/devicetree/bindings/pci/qcom,pcie-x1e80100.yaml
index 61581ffbfb2481959344490e54daea001aaa4ca3..59be6c66b39b5e78418194ea4d8686956303c8f1 100644
--- a/Documentation/devicetree/bindings/pci/qcom,pcie-x1e80100.yaml
+++ b/Documentation/devicetree/bindings/pci/qcom,pcie-x1e80100.yaml
@@ -16,7 +16,12 @@ description:
 
 properties:
   compatible:
-    const: qcom,pcie-x1e80100
+    oneOf:
+      - const: qcom,pcie-x1e80100
+      - items:
+          - enum:
+              - qcom,glymur-pcie
+          - const: qcom,pcie-x1e80100
 
   reg:
     minItems: 6

-- 
2.34.1


