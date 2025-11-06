Return-Path: <devicetree+bounces-235626-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D860C3A938
	for <lists+devicetree@lfdr.de>; Thu, 06 Nov 2025 12:30:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 0A10F4FA8F1
	for <lists+devicetree@lfdr.de>; Thu,  6 Nov 2025 11:28:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 88C0A30F7FE;
	Thu,  6 Nov 2025 11:28:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="aCcdLzIA";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="GnNiCVsA"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6E2A30F7E2
	for <devicetree@vger.kernel.org>; Thu,  6 Nov 2025 11:28:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762428482; cv=none; b=sHU9INVHrf+U4+J8i8Y2djPZoO0NJHEt7rK1hQRn+CA7QTanOoJwy6bJyDbsHeU1zMEuENtUx1vAgcg+vM4tQmtqJLkW/H7YeigY5q/FCSfLeoTKRn4648FNCzkVQaxMmwKJKF0FVaRHgVQ0CBm2MnmdVloQEHtHQmCC6pMt6Sg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762428482; c=relaxed/simple;
	bh=mwR/yFYKcstYoJ10AjG3GZOJrZ5Qy9z5Uli1etRKCUk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=mGPTArvVR2LeqKP/6PlFdUObjA3gNVpiqe23nIZx1f9yE2RPu25Mx0Z4KlWZc8vfgRZpuX6G51Sn50i+x1wSnDFGRoNp99m8BdahJXZUpvnRjDX4c0quX42zPqoJW3VXYdA7ulLBzc/KEQ5A3QSoYJ70Xr9DmkyxF9TfBWSQAzM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=aCcdLzIA; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=GnNiCVsA; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5A66tPKQ3157012
	for <devicetree@vger.kernel.org>; Thu, 6 Nov 2025 11:28:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	0TyHZHy1wRz+vL12tq/NhtcctDrNMapUBKXF5sMxJ2c=; b=aCcdLzIAq/JQ+Bna
	NR21sZPTAPHwW7WbzwJzejbApuWTU0BYO2E8syqKaFA/wTmFeTAU+QIs5QIOVbDC
	/jNrPEGOrdMch2eoA/6Ff8hu4lZlAOqAtb6wJrxi8Er8IIcJmeSr0tTyfXkZuwPT
	+DJz3mE37ERWWPs973fI6aok+8irBamnEI3QiFQdX7zII5wt1NGsGYvoUGbfhVfa
	afSGbvMclEoCZ98vhsL6QqUQ74RXRgHfC49pDBmHRXbZU0giRyOWCJtKoO0o2Prp
	GL1hGvRi8fdPL9Qcf/lliGW+ikU3Ro2n1ghGHUC56ep4LY5Du9dRACyRXVCAEGKh
	4H4YYA==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a8pu0grgg-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 06 Nov 2025 11:27:59 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-294df925293so10694815ad.2
        for <devicetree@vger.kernel.org>; Thu, 06 Nov 2025 03:27:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762428479; x=1763033279; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0TyHZHy1wRz+vL12tq/NhtcctDrNMapUBKXF5sMxJ2c=;
        b=GnNiCVsAN1wmGOZQ4CEvATXGNcxdjxdO5HNI6GcoVfBuGZk3XwS8swUwau4i2ivU9t
         2uri7oA+WpdsqkzSHG/aLI4+9b3e2zS2ZnuZubosBcPFiDVHY5+SV4ltL56TLaaONKH5
         TG1OP0Cv4FqeLnr2IeSNGedQBx17kyGIe0eURjaaJZ7o36v+AT37Nlg8yNRkIAp4mKWO
         qokHKTuYky2NMqFGGq9Ch6+CZgPW2jDDUSMnB7nRpWxSpMmKkbkPA/BsWNAowak0OEZK
         zeATCBOjz/G3ixg4K87qxSfAagkAY+Mqu+D0I4hTvfudGpqeLoDYWzPs2eQbNg9zDcv2
         pS0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762428479; x=1763033279;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0TyHZHy1wRz+vL12tq/NhtcctDrNMapUBKXF5sMxJ2c=;
        b=vKqC3736g7BX1uL7BRZANBXEzflYqxK2VoBsoX34QyaUJKz6Zsn6Ne+EyxXaeyzRrY
         dhg9SaGCCEdBqmWebTWMQrvqNuCaOINlHZtrvj0SOf1ccbCn/DWlGr+ilm0FYzyPMUEj
         5tZB+8C9CRA/bFxyc+e+BnAByJLe6RvxDcIs9WgrZyRqOuc39+ZOCPIK2c8QWKkuo5EK
         2SJGUMWWL9IrcN0PO28bty1Nn0YXGTbgVqb1ReT6SlbzjtxsKHJkSjqLSGJtrL5Di8I5
         hUmo0OyCAsHeLvtHevE+ZTyHgq5iC5QJtnIdJj7vuZwKqTM5YiEseqoCFAxgtMteNvSV
         EwFA==
X-Forwarded-Encrypted: i=1; AJvYcCXiuedWKwVHfi98jPenwkFAlqAexUSlCGBftgnwavhHUWDrAiT/nQEEzdBA23yl+9vCZIVoWU542aBd@vger.kernel.org
X-Gm-Message-State: AOJu0YxlZF/RtzHDB2pmLtEy23yg/HUx5NNL2Vmljkzt/QvVEcaBgt16
	o2PVHnYMbe/QeTNwISNts6XcIFwjiLbAHmGJFycWAK9tCWLTs75tSeN8IDL7UtppOaaZNfuayTg
	40/qc6AwNABRe3Lol94aDiy9CmgnFLCDzM78ghPlEO/iYhoquBnCyTmUvl2S2i3pO
X-Gm-Gg: ASbGncsU3fmPWo/ngaqKaimvOubTm0r37Jv0RBY9RdszBklNjdb81KvH6qFt9njlO6+
	U42bwqnPKy8v4/9Z2slaFzRzEf8IuWHi4qrNV+AvrCanIQKGahXgw4LsroGcL9uoLlUUJzb3KcF
	wp/grd1kGHEnzImpZhgNsk0nKVE9L8VtN34b5IFJlYX31f7v/PoFQUjh5eRBms43eVDf6HaiMna
	Mz1lFIU2LEqXBZR3LQkJXIbqmAOxPsH1KJ6m/+fabPNZ6BSojZKh8gtHkAELhdgJuV4CKLCkqVb
	SqojFiQ8Df/q2cZ/YyTWsDNwIXLW5WEn+x5V3NbbKrsQHGluSjLRRmnh1fT/PLIYmjdDcqm0ZVY
	cc3cOETe3k6KR0QTnCYds2nnIkV1RUQ==
X-Received: by 2002:a17:902:e805:b0:283:c950:a76f with SMTP id d9443c01a7336-2962adb9aa9mr74228575ad.43.1762428478878;
        Thu, 06 Nov 2025 03:27:58 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEU6rFo/pzsW3jk6QglGS+k+CL5s3XH40bNmasC4rf0DPFLcxK3UltT6ouJSMStoLO2JjN59g==
X-Received: by 2002:a17:902:e805:b0:283:c950:a76f with SMTP id d9443c01a7336-2962adb9aa9mr74228335ad.43.1762428478385;
        Thu, 06 Nov 2025 03:27:58 -0800 (PST)
Received: from [192.168.1.102] ([120.56.196.127])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29651c94ac5sm25577495ad.92.2025.11.06.03.27.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Nov 2025 03:27:58 -0800 (PST)
From: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
Date: Thu, 06 Nov 2025 16:57:17 +0530
Subject: [PATCH v2 2/2] PCI: qcom: Treat PHY as optional for the new
 binding
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251106-pci-binding-v2-2-bebe9345fc4b@oss.qualcomm.com>
References: <20251106-pci-binding-v2-0-bebe9345fc4b@oss.qualcomm.com>
In-Reply-To: <20251106-pci-binding-v2-0-bebe9345fc4b@oss.qualcomm.com>
To: Bjorn Helgaas <bhelgaas@google.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Abraham I <kishon@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Cc: linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1121;
 i=manivannan.sadhasivam@oss.qualcomm.com; h=from:subject:message-id;
 bh=mwR/yFYKcstYoJ10AjG3GZOJrZ5Qy9z5Uli1etRKCUk=;
 b=owEBbQGS/pANAwAKAVWfEeb+kc71AcsmYgBpDIYqtyRKrCgw57SQE0Q7ZvvkNhPB2zmoyLBJU
 PM5nitBN6SJATMEAAEKAB0WIQRnpUMqgUjL2KRYJ5dVnxHm/pHO9QUCaQyGKgAKCRBVnxHm/pHO
 9Uk3CACilUFAbi7xgGu0iPY8Cv+66AWSh0Fk1LWByEyCtwKQ0XM0Nf1qe1PIoPSkXCflCoi7Hvp
 CcRGyoOJ4Z2WUOO6N0znJ+AkNJqktzjmR39uUeKS6WWXKF154Ucqqtq7YlEhHlZwB9qipOlKTrX
 qw8jYU040Xj3Oo+glCBzR1LJbHEx//I5Wi50UMBNUfn/q1bQP6lL/sRIrRnIQ3Z1hr2xMG29drm
 oAZJs2x3M1oS9TznIEyR/Bs2/aERl+KSNLjmO5OEBZE5MDHRXaL64nSYuoW+PH5mVSllmL3TI5x
 xl6vamKq2nZjw4F/qBsOeH3hV/aUU8SUthYYDPHAsafaj4uL
X-Developer-Key: i=manivannan.sadhasivam@oss.qualcomm.com; a=openpgp;
 fpr=C668AEC3C3188E4C611465E7488550E901166008
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTA2MDA5MCBTYWx0ZWRfX0+LswrThb+AB
 srPGAdf/EBd59ytAdKr7zXbXAbf8VqUeZ1hQhbLd4qcf8d+LYghUBjClYcpsWcvvlnweGr78i9+
 5uKQpPRaKsFkkgT7sgmnH1+0FTlW3EaUl2+8LlKn0U8UheUiTNsVtHprbCfLbkD7LEd1esDBV+N
 HhYMCrpE8pEkMt3Btb7Ha8xUXwZoWwapeLTvUubyjil6kOdOXW9er1Dy8UlzExnyPLJPq9KDzhu
 mghNem44v+j7akeaXSVorqZDOlINPtavvHvYqj7+fDQqZAGmBPmuhxLsutnkkTOClFOLloaP/Uy
 DrAxpfwdA4t9sWkdGbXSQAmm6W5iSYW77fAhJfBVuQAtyB29Hfy7wB8yvxrxCqCXVY8cnhO5G2L
 PJ/N6Q5MpBKbDh7Bb7dKK3SETOH23Q==
X-Authority-Analysis: v=2.4 cv=bIYb4f+Z c=1 sm=1 tr=0 ts=690c863f cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=NqeMpCPRvvPHbudmJ2rC7w==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=Pq7zNYhhCH6MgF7pbKMA:9
 a=QEXdDO2ut3YA:10 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-ORIG-GUID: sy_RDHAq5GqWWur7RiFMIwQsPoh6yvFu
X-Proofpoint-GUID: sy_RDHAq5GqWWur7RiFMIwQsPoh6yvFu
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-06_03,2025-11-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 bulkscore=0 adultscore=0 impostorscore=0 lowpriorityscore=0
 phishscore=0 priorityscore=1501 spamscore=0 malwarescore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511060090

Some platforms like the old ARM32 IPQ/APQ platforms do not supply the
'phys' property in devicetree. Hence, treat the PHY as optional in
qcom_pcie_parse_port(), so that they can work with the new binding model
of specifying PERST# in Root Port node.

Fixes: a2fbecdbbb9d ("PCI: qcom: Add support for parsing the new Root Port binding")
Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
---
 drivers/pci/controller/dwc/pcie-qcom.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/pci/controller/dwc/pcie-qcom.c b/drivers/pci/controller/dwc/pcie-qcom.c
index 805edbbfe7eba496bc99ca82051dee43d240f359..53b41dc98f11ab953f7f4f31da642abf8b6faf83 100644
--- a/drivers/pci/controller/dwc/pcie-qcom.c
+++ b/drivers/pci/controller/dwc/pcie-qcom.c
@@ -1723,7 +1723,7 @@ static int qcom_pcie_parse_port(struct qcom_pcie *pcie, struct device_node *node
 	if (IS_ERR(reset))
 		return PTR_ERR(reset);
 
-	phy = devm_of_phy_get(dev, node, NULL);
+	phy = devm_of_phy_optional_get(dev, node, NULL);
 	if (IS_ERR(phy))
 		return PTR_ERR(phy);
 

-- 
2.48.1


