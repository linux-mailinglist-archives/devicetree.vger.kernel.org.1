Return-Path: <devicetree+bounces-206265-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id EA40FB2BE26
	for <lists+devicetree@lfdr.de>; Tue, 19 Aug 2025 11:55:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9FF694E0AED
	for <lists+devicetree@lfdr.de>; Tue, 19 Aug 2025 09:53:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4328C320CBF;
	Tue, 19 Aug 2025 09:52:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="n1gd3tfW"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AFF2B3203B4
	for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 09:52:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755597171; cv=none; b=QWtpar7Pm6lkctxXDlYSDzaX45Fi0/CJih4yD8qMFycrSyvVOM8+O8ps7Z3iYCN38bR9yjz4iXB2p2NmAjNSzW2PDlGGdE6UBLMw32ahZlOIE3NGvYtIm0nt8fPsVjhAlo4yNcK8cCF03yTsqpbWEXwY2Dws3AU3RlxK3tn3fYw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755597171; c=relaxed/simple;
	bh=ekdA9CVOTz1DmJofPhYI0+HcBHPnLV+Txm+2ENdkrHs=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Ul2b6SqRycr+nHsv6ryj3/V7I63+WbuBNbIcRDqQPzWq7X1az9/vHFyxzhglVTi4nqBE0dBFqV0Nv2yWu8YfkoHpAAGfqojiXQpxPDjZwMzv6XIPXiMKo2Tzu6x5SvlTjCV3uQ8gSY4GXWjRBZpdlyQQ0Kr2AZ6Q87uC7nByj6c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=n1gd3tfW; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57J90aE2029813
	for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 09:52:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	x/mJfVjavIoqW9T/ceCVgzgHEhxIAMs4Ha+bWe4V2mM=; b=n1gd3tfWgh4Lple2
	RUP0TcqfCejGVxtXIvYyxDgViyFw0n5gKq1/3QvburWZ0byEhkv0siASr08gQUJL
	8y+juCf9hO4kCtDML0dDO7bIc/ZXYY8W3URSt1G8SWGLWjR9wkwn8EwX/PQpKsbQ
	tVSy9QpSUovsa4Cr8Whfl2Vd4LPXmeLIIcwnbUJM7q//+9itjZOuEU1Qhn0rJTOa
	2FZbqFQoD+obABmuddnvgHf0qRyRfPPFmK93mx5oLv3kpfnCW9BxuA1GJhVmOjXn
	nhpbxfhdClpqYmWjPh3oDVtk4UkMv6Z4fDfStqeEyVJCwnspE1Yktmu7RjoZCqLu
	OXxGww==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48jk5mfycj-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 09:52:48 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-76e2e5fde8fso4843343b3a.0
        for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 02:52:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755597168; x=1756201968;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=x/mJfVjavIoqW9T/ceCVgzgHEhxIAMs4Ha+bWe4V2mM=;
        b=ER8cG8FR99vv8LcB2vNL7XzBCp60Ij4TZ5bdyz6cBkrL0qkEk+Nk7FnofREColpC6Q
         3+t7kJSl3G3JymqcI9Ux6gF8D4HevgCJV622pNwEzcSN76jLY+EoXEn340EZLGFa/KBw
         xvL54dThAkdZHBeZxkZdm0n+EdBiQmZx+UYedzfPkqiQkVh5VsU8TXmrvh1lFOyIfHic
         8AsSudAObrtv/b0tiYrvNvwngXIFYkJ4JLpe2Kd5WxBzrZ0X+/0QlchwdKTachC07XM0
         lXkEDjZSO/nj+uyjZXSvynCAI5Mc/hLcAzwYfMEO+5wb2RP2SU8zhMCKtD0JmvZB7tCz
         JH7w==
X-Forwarded-Encrypted: i=1; AJvYcCWoTxblFnttxT51LCqVPjmtZmdLa3JkfWDkX90kITPDhI3LrYNazfc3RoFwdsaMzMu6RWhlNIbfwqra@vger.kernel.org
X-Gm-Message-State: AOJu0Yz1e47m+QIlVyssMCF3OupxrgandZ7jg2wngdxNeJ7+gFvfrAVw
	yLQJGpJYkM0x9hQpV0njPbCcL08OrEcSCsUUgWyLH/X8rBFUNgsimm/wlwCMhzXWcaRo7jStIBM
	aoR67qurV1shuuTLrd4M7QT9gKU1NdzdRWoqN5L9aePavN3WBmxw8DyPOfk0uHoAs
X-Gm-Gg: ASbGncslfdybHCKynIz9KABbpLWiV65R5KlbaILHaEE91g1sRs1RIIEx0eTtjA92nnQ
	1/4M+bjUdkQAh1t2NorfvcWX9Vf9h+UGlvVEmhRdoYQBrb4yfP714QmRXHaCT25995iTO1KA0hS
	AUTaBetQ5RwOOv3WcK7PlgkDKqFYboX3EIbqbQoacb+iYucx0TACzrNDdel+XkxuHhqX+uKQZJN
	+e1mM4vWQpyZNFI8ppR1krfTElqYioiY3Ix7x37vOPwe/S9SO6VfXULiLBWelL8f4oG2XvR4lo5
	1jv7RDF2mJ8Npyxz1+Xnjet6UhFBqchQ4UoBVIDO/uhUw6RxLBJPkIutxerD8wDxi06eBTidtar
	QXDTjkLHTGJzucQI=
X-Received: by 2002:a05:6a00:238c:b0:76b:f0ac:e798 with SMTP id d2e1a72fcca58-76e80ec16cbmr2675710b3a.7.1755597168026;
        Tue, 19 Aug 2025 02:52:48 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IENz0VJ98WADN+joIk0/P7w0o0p+4hmpEs1o6oCjBWcA7BvrTOLvz8FOh4tQnOd04eMjoXMVQ==
X-Received: by 2002:a05:6a00:238c:b0:76b:f0ac:e798 with SMTP id d2e1a72fcca58-76e80ec16cbmr2675678b3a.7.1755597167592;
        Tue, 19 Aug 2025 02:52:47 -0700 (PDT)
Received: from hu-wenbyao-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-76e7d4f7cf7sm1998291b3a.69.2025.08.19.02.52.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Aug 2025 02:52:47 -0700 (PDT)
From: Wenbin Yao <wenbin.yao@oss.qualcomm.com>
Date: Tue, 19 Aug 2025 02:52:06 -0700
Subject: [PATCH 2/4] dt-bindings: PCI: qcom: Document the Glymur PCIe
 Controller
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250819-glymur_pcie5-v1-2-2ea09f83cbb0@oss.qualcomm.com>
References: <20250819-glymur_pcie5-v1-0-2ea09f83cbb0@oss.qualcomm.com>
In-Reply-To: <20250819-glymur_pcie5-v1-0-2ea09f83cbb0@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pci@vger.kernel.org, Wenbin Yao <wenbin.yao@oss.qualcomm.com>,
        konrad.dybcio@oss.qualcomm.com, qiang.yu@oss.qualcomm.com,
        Prudhvi Yarlagadda <quic_pyarlaga@quicinc.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1755597163; l=1172;
 i=wenbin.yao@oss.qualcomm.com; s=20250806; h=from:subject:message-id;
 bh=jt6UG6eiIFzDb1oeF0pFhVGf3jfLG0hsOnnZ5HuEIJI=;
 b=aLluycJkcVAxmTz5cJvmmczoB2nQCBmt5en2PL/z+GQMXGS1yuhRxxt+knyE5tfFmYvmM1uZ3
 3TxgHk0HhLTAUMfkAk+qLqJLStjDeG3lHUrH6iLe1j1Pj7Ojlp56vIp
X-Developer-Key: i=wenbin.yao@oss.qualcomm.com; a=ed25519;
 pk=nBPq+51QejLSupTaJoOMvgFbXSyRVCJexMZ+bUTG5KU=
X-Authority-Analysis: v=2.4 cv=Sdn3duRu c=1 sm=1 tr=0 ts=68a44970 cx=c_pps
 a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=WgZgizuZlwTqGGW0kXsA:9 a=QEXdDO2ut3YA:10 a=zc0IvFSfCIW2DFIPzwfm:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: HgnQYs3QC8Yigeab0E_kFjuBV9BICY2k
X-Proofpoint-GUID: HgnQYs3QC8Yigeab0E_kFjuBV9BICY2k
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODE2MDA0MiBTYWx0ZWRfX//RcwK4pF9l/
 cTRZogvYPUhWk7WVrtVYV5G/2xnJ3V+n0BEY7lcp5jHBiuEyffCHnYKwRZHg38Z5Kmu8wDevV5M
 kk6cjjKb0UyT/BZu3h3x4I4RJKE34L0eMe1j16HtJox2lcntzh3N48OnEVzmeMCNK3WYD1hPyDB
 9H1iCaNcdddCFHStWxmohPdsmqCt/Ym2pTa+/bJs3iU/M36ZI8Z9SjHjAA72B8e2OCsuQPxInN8
 pX9CFNRwVGuts9RySCu9wxZIPZqhcY5XHpPq1jaC+gwIMBInDjP5Hz3BvkuJxd+AT6SXm6F/LPr
 PM7aKeN03h18W6dBqGIcnw/YPJW2igSfZYvzx8VbDEcjzbnaqfVmBCHnYU0fzDGBxRgBRQfPYrK
 QN0rV4+c
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-19_01,2025-08-14_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 clxscore=1015 suspectscore=0 priorityscore=1501 spamscore=0
 adultscore=0 malwarescore=0 bulkscore=0 phishscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508160042

From: Prudhvi Yarlagadda <quic_pyarlaga@quicinc.com>

On the Qualcomm Glymur platform the PCIe host is compatible with the DWC
controller present on the X1E80100 platform. So document the PCIe
controllers found on Glymur and use the X1E80100 compatible string as a
fallback in the schema.

Signed-off-by: Prudhvi Yarlagadda <quic_pyarlaga@quicinc.com>
Signed-off-by: Wenbin Yao <wenbin.yao@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/pci/qcom,pcie-x1e80100.yaml | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie-x1e80100.yaml b/Documentation/devicetree/bindings/pci/qcom,pcie-x1e80100.yaml
index 257068a1826492a7071600d03ca0c99babb75bd9..8600f2c74cb81bcb924fa2035d992c3bd147db31 100644
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


