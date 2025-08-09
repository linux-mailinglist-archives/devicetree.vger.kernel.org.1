Return-Path: <devicetree+bounces-202924-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F20FBB1F3F4
	for <lists+devicetree@lfdr.de>; Sat,  9 Aug 2025 12:00:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 702F97B3B05
	for <lists+devicetree@lfdr.de>; Sat,  9 Aug 2025 09:59:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A1A6726FA4E;
	Sat,  9 Aug 2025 10:00:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="jdFO7fwK"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21557257451
	for <devicetree@vger.kernel.org>; Sat,  9 Aug 2025 10:00:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754733602; cv=none; b=SvltyNH3meI6MUHgBwDczyf+3rXaM5BfszpOreApkjtIkoerc59Tx9sFCuCmtWuMdSvVFRPpAajO7yDDju2n4q9YuNQawroxfq5+1ofjzXOlz+v2kk3RAWFCSg8i2bBoq4HYpv3ZxFyOf7UURXs6OXGH29TcLDa13ewsJP9qiWM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754733602; c=relaxed/simple;
	bh=D98uYM9Z60IMUSi6ICuga1Gz5L3qO2+oE/TUIJZiRHI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=G5gaJWiDyw/PrwO362AB6g3YuugyYIC5riiVJUk+CYH36BTwCXScjkKEPfsyuXQ01vJdyjaoS9FOKa3iUntLn9twySgvtbB8Eir1WeMfwY81cqS4KScuAl+AUGDpm5PuUt1/Yw11bccUIImPtl5m6IdKE7j/67j7YIMTR9gYP9A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=jdFO7fwK; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5798RaWr020269
	for <devicetree@vger.kernel.org>; Sat, 9 Aug 2025 10:00:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	o84ehtqBVBZmVKt19QIWtMIRk8uHsOjkSCs7whgckXU=; b=jdFO7fwKcoFS04Uh
	l1TAi96gPHVqHpox9gHpMTIt+lV+9g9oeEEt5UCZabhIYSaP1DNIlwjqcodAXRDc
	ad5iS+khF6Qo/sTtLQFV1Rws9s9WmHrifedCdOWMQPuEPCgMKRPx71t5Apu07+wE
	GBf5P0mhjdxSn2JG4/avFRVFWWRL+2lq0RU7X3HKgUMowjRE5Y7+lSEenj/rGPcP
	1jpITAes9wMbEHIOTSQ0PHksD0xTolo0GPQIjGf0ZNTuuGlieM8UoaIDZqSKqYlY
	3uFi6I4oArVNrYmSsAEYtkW4DRUKn4eDOmrKt5XOypoB98OZS6P9j2n5TPCXJO8Q
	ptZzUw==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48dwngrgh2-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 09 Aug 2025 10:00:00 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-2403e4c82dbso22862485ad.0
        for <devicetree@vger.kernel.org>; Sat, 09 Aug 2025 03:00:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754733599; x=1755338399;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=o84ehtqBVBZmVKt19QIWtMIRk8uHsOjkSCs7whgckXU=;
        b=oeKdndAqUUuawjvgq6gj9j1NOnUVIVpxypBj1DZxzUBRmAnP+E05fEoHogE45gTG9f
         WtUGydLMuNLoT8m5Tdx1IdeiMFbs2hPUK7km/SmUJWtTloztjRBStOm4uf5pf0KX+lA3
         +gNyC4/IeJGGj7orV0b3r2mxcm/Z07MUIVrucxm6/dv3D/m7nJxQn5SNl7C7Az9ZoFwM
         aHVAk3Adtgys2cUJAIsh6b4XIFw+sy0YLpwLEyU1CUxPQwCjMe8jMSB8rS2lNiPDXM+1
         l5aiVsPaMvNLC/qeDSrG89gxsGM+0HxWZ1bjYYNFYaoAY88AFHaIGEhNEQWYs+rgaSSI
         bjiQ==
X-Forwarded-Encrypted: i=1; AJvYcCXI701hmdELJkb9NopGfpZ0irTOPiZ5Y+F+U6/8bATHSoW7T8hOEQ36j+5T1FFFxkMQdVwaoTidkGnw@vger.kernel.org
X-Gm-Message-State: AOJu0YxtfxHaJCdRcJdbzmOVLJiqfiFpGFudWYLMSNP56A/+umeZgHv2
	UjKfv1f+gXU0H9Ia4gM3mkixoRHZBMokorpU3gxdjx85/wgYdHACdvH4XrvqtSkY3VT6rutbNHO
	9gEJcQcWrfx6cylF6z1ZqU5oodhg1+Y89wQeszH+8LUNbZgP/P5fOFaxWTTSg8WQJ
X-Gm-Gg: ASbGncusX11PfagWYs6Ne5f1frfLVjl9h3qZEUtL8SbTmF67dxpmC6nswqTp5b1wn4y
	tdros5yNzegEyfECun3MdrW6U8rWlF44l7iPeJixmcQrFCYA2yHOj6yk2Tk1yBud4I2LEMwuHAF
	G+tndzL2AzK61QTbMBzDkKkN5ZEEnNEtQzfmcu00F9zikEO+RzEvPqB18k2NF6x7VZKHnyXyKiX
	Ct+jFkefb+xgc5g3JHiZz7fN1eRXNnCcUhJffGItXLJpVVoIv5ICL4tGUaFwViDhhJ0ynUPHYT5
	sHCmWUHSh6jHOySsq3+F4oopDnygRc9hOSlQerRO25uSh57LSbFRaPzhtA68XQa7nVhDh7ACNIQ
	=
X-Received: by 2002:a17:903:40cc:b0:240:3f0d:f470 with SMTP id d9443c01a7336-242c20440bemr81620945ad.20.1754733598892;
        Sat, 09 Aug 2025 02:59:58 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFI8IHqimLHr7wh2wQyI+Q0XVDvkBIylGOeXLKFZACnOrlfoFT+ysYaqiBD387svYbfkd+bJg==
X-Received: by 2002:a17:903:40cc:b0:240:3f0d:f470 with SMTP id d9443c01a7336-242c20440bemr81620735ad.20.1754733598457;
        Sat, 09 Aug 2025 02:59:58 -0700 (PDT)
Received: from hu-krichai-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-241e899b783sm225962845ad.133.2025.08.09.02.59.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 09 Aug 2025 02:59:58 -0700 (PDT)
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Date: Sat, 09 Aug 2025 15:29:18 +0530
Subject: [PATCH 3/4] dt-bindings: PCI: qcom,pcie-sm8550: Add SM8750
 compatible
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250809-pakala-v1-3-abf1c416dbaa@oss.qualcomm.com>
References: <20250809-pakala-v1-0-abf1c416dbaa@oss.qualcomm.com>
In-Reply-To: <20250809-pakala-v1-0-abf1c416dbaa@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pci@vger.kernel.org, quic_vbadigan@quicinc.com,
        quic_mrana@quicinc.com,
        Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1754733575; l=894;
 i=krishna.chundru@oss.qualcomm.com; s=20230907; h=from:subject:message-id;
 bh=D98uYM9Z60IMUSi6ICuga1Gz5L3qO2+oE/TUIJZiRHI=;
 b=gwn0lQcGmzLXQ2MXzzYuJm+/nUNsSuse+BknbwSa3jTeXGEUH9LwXwJokOA4GGTXYiB0fuw4P
 GdXwSPgi5sMCf+G5eNlCvWOacfyXIUz8Jdwc3r/BLfu1OH6ZQTtDlg6
X-Developer-Key: i=krishna.chundru@oss.qualcomm.com; a=ed25519;
 pk=10CL2pdAKFyzyOHbfSWHCD0X0my7CXxj8gJScmn1FAg=
X-Proofpoint-ORIG-GUID: hDHmS9v6-P40uufejRTcnph35ut5wIm_
X-Authority-Analysis: v=2.4 cv=RunFLDmK c=1 sm=1 tr=0 ts=68971c20 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=ly1VyIkaSgMpB_u5KqwA:9
 a=QEXdDO2ut3YA:10 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-GUID: hDHmS9v6-P40uufejRTcnph35ut5wIm_
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODA5MDAxOCBTYWx0ZWRfXzNYFanpR2eJH
 Di7jjzYVg7qh/oM+keoj7ZqsqRTBbZlqVqCQvU7vUfuiokapLZd+Y3yw8D82FAZ3mlp2pXBpFwZ
 3hZlsUWc6PUGQQy0YQY5OJvXLSQSXS+7btEwkYk7ixjE+3hkXLuNiKKSfGe1LAabv7JS1SWAJql
 cBrjhyTSsVux6PjHnFeWu7wVOKD2kU4aaFo5AWYHFe+1F5Wh5e/VSjEUkgeJHUxlVjpUsMOSXe4
 X1Sqbg3ryYD4lf6pvfhpj4mnx5SVbuS00Gpr+1ciJ8lKQuenA5IecPb+cq602+mZ5BM4TKMlGKL
 GLJkzj46aGldnGgwygCOO50xMKBREZ9VK+5vyh+oB1MEnu11q2oIcIoZ7qifgpYpin6GpNO+TNH
 gyRxAvwb
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-09_03,2025-08-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 clxscore=1015 impostorscore=0 spamscore=0 bulkscore=0
 phishscore=0 adultscore=0 priorityscore=1501 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508090018

On the Qualcomm SM8750 platform the PCIe host is compatible with the
DWC controller present on the SM8550 platorm.

Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/pci/qcom,pcie-sm8550.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie-sm8550.yaml b/Documentation/devicetree/bindings/pci/qcom,pcie-sm8550.yaml
index dbce671ba011c8991842af6d6c761ec081be24cb..38b561e23c1fda677ce2d4257e1084a384648835 100644
--- a/Documentation/devicetree/bindings/pci/qcom,pcie-sm8550.yaml
+++ b/Documentation/devicetree/bindings/pci/qcom,pcie-sm8550.yaml
@@ -22,6 +22,7 @@ properties:
           - enum:
               - qcom,sar2130p-pcie
               - qcom,pcie-sm8650
+              - qcom,pcie-sm8750
           - const: qcom,pcie-sm8550
 
   reg:

-- 
2.34.1


