Return-Path: <devicetree+bounces-233969-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 3463BC2772C
	for <lists+devicetree@lfdr.de>; Sat, 01 Nov 2025 05:00:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 3CF574E24E2
	for <lists+devicetree@lfdr.de>; Sat,  1 Nov 2025 04:00:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8B08026ED41;
	Sat,  1 Nov 2025 04:00:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="QXyvL2Ko";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="B2PzB9vw"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA75326E714
	for <devicetree@vger.kernel.org>; Sat,  1 Nov 2025 03:59:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761969602; cv=none; b=gkyOvK7K4FOgqznKmTl7oG85r3N9LzC8HXqVBnn7h0fQJ9IH0Zo/KgK7SZrgA4M7KI7ixJdMN17NPQe0iOeSB061CJWt1uzRPVVNfxq6dmRgBfHc7Y2oWMCpZHLdc2I7V2374nD7zJKzaahB002myy8DOG4WUKVuvp4xTrsR/mk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761969602; c=relaxed/simple;
	bh=0ISk1zo5mbRe9LxvVD2vadNQhbkjLDQVBj/SNxnxtpA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=FSZUcM+juUyoDFesBwlqd4h7UJyCOkY0UDTLWixBVvIwrUftNCLKVBvdx0H38E37sPVdRoHaZCTcZDdyTBdTicLlCUyMORM9b3OJXB8uKwxXWfjgeCmXo33KkwOeTe2pNkhEdcVzmgKQYLq+iYPj15opjFT3rwnMFaUsDI2zC2E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=QXyvL2Ko; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=B2PzB9vw; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5A13kiQG559501
	for <devicetree@vger.kernel.org>; Sat, 1 Nov 2025 03:59:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	O9iELXAHflmw8+ZgJ3dYI+WWKiAnqwwPtj78oi+ZNss=; b=QXyvL2KoRZKxfRTJ
	cvMABRkrG0rdyUxPGP4PzRibuen36GV43WC87dkgRY8HK6Ofziy+pRZHsIezQ4BA
	mB0MgNo67uyQ1NYf4STNyv8H/G8WrvQVyPqf+Yzl4ePZPcVvaWbwikquKoYw1KK9
	FvuOctD0Kz1ajs86HGIGL9/lLuzgTPlequnNvoFavVhj3Ls3MgvM3H70VaNy5yDi
	KYt1ox4EZ8wZvHyXVGYujZqirjOeKoHjZs2GgLqQzaiE3Y1yEoDioIKGw0T8XaS2
	2d7eWZTCBIELa+qMoAzsB5m9oyj+O4GqjkdLub2Z2l6fURK2EyoiE7YJgjINgMeS
	RJikpw==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a5ak8g0f8-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 01 Nov 2025 03:59:58 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-290ab8f5af6so28178075ad.3
        for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 20:59:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1761969598; x=1762574398; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=O9iELXAHflmw8+ZgJ3dYI+WWKiAnqwwPtj78oi+ZNss=;
        b=B2PzB9vwanaO/susS7kzX9B6rcxuVubYoTS+cTtJD6hRMmhQ/DTpMqlM1V5cad1CUZ
         pyELkqm8wxzTpmml1clMH7zz1hwzEJQ6yDRMK2kwZqtuWjAzfVnoU3nxfceP4DUynLod
         AoLEUT/fZSmIGm9l1lnsonTbi1TZ2Iz17iSHUu9GSOvV85bMyrGFzAXktqD4/PsrLSpo
         QwX1h20Zj36V1MTxqCRYWyhCaYwXN8PmpOn6AY1EU32r6biW3Mn/OMYYsscAEV+Vr5qw
         7R91DnWVG5jgoPPLPyklMbFPwbvechumS6U8fRtSRSNTmphJ3l8/7V12X6qiIppRl+eg
         I7MQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761969598; x=1762574398;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=O9iELXAHflmw8+ZgJ3dYI+WWKiAnqwwPtj78oi+ZNss=;
        b=ZfB4PXpl/BAH4Bk5lOFxzwy0QXZO5DP2jbR4IgnL0C/OTf97po3okDYTpN+5gBUa7F
         n5HHtkIkAVkgeZm32S0ObAsi8bw3Y6pF6sJieb8WetR6JaPA009SrJ2zkszWA3kgOc3N
         MWPvdZfNdt1Jy1kOFXo05nFfuSwKc8ak4MZGmhfwYppQya66KVUfqCiyAgkJ2Fd9FA6Q
         C05uRwKdW+Oq5kS8wIYGKQACQTRulL/aaT6849eAbZbChGP+ABb9U85e2aaO7WkkKo1K
         TEFcXxySOgMwLnff2MHmrgAanYBnfHjimJIfoso1iFTj0fQWtjQo1o7NdCH8kKEy8sTV
         Pi/g==
X-Forwarded-Encrypted: i=1; AJvYcCXDwxQRFQ5FRoVfvdKOF5H/PvjUEHZWj3o0ZAXWes7mEiK3Dj5vYvkvyBe6Oa50JaGNDYksoh8YKjNw@vger.kernel.org
X-Gm-Message-State: AOJu0Ywp2kMv8rKL0YNR9cvxhkAboUhAoIXYRK23drVk2Bf8nluhKQcz
	R4wINXhDIV3zj5l6sGT6HF/Drssyx2mrzt2tbwENqROfaUTPb9qHxmA5vW74KqraWJg36ZIIS+s
	Tz2Pi26n/lqNpErqvvOIFPkVSVyIa/7+olDU/f9HxPNLF/lm/Denqd3IIESJ+LDVL
X-Gm-Gg: ASbGncsQrJzvV2wZSPMdd2altuKiO3NtJk9F1jkslBaBkp3+wVt740bofv1F/4V3MuB
	mus1Ncd3cPHzMaUQ7k3W5AXHQLRpfNl0DrZ97x1Ln/BlAaaRpuDu2pzDoAh3cC8MC3u9Du9MS9b
	yJnYY501S+30uYwgBOaG77hT+CLLCODaIAE+3LQLOLSeHstsFeSUsokrHZPZdWSygshAZ6n5Bj7
	WsIUkFvq+EPw3SoSY0/lCaQXINDXPNk4FIZkwE/mgh5c1dBaxSPVGiJI7CmvQbNr+/BdEFghVzT
	8YepP5igKmaqNigcirfyfryM7w8jSvTYH///fpSmP8F3ec13vjHvqv0RjhCA3PfmNL2dYC0hnTc
	obskdYi4UjR9lpmxyGQWklNbjmzBGh+7yZg==
X-Received: by 2002:a17:902:c947:b0:295:269d:87d1 with SMTP id d9443c01a7336-295269d893emr49212675ad.52.1761969597810;
        Fri, 31 Oct 2025 20:59:57 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEJc8g/476xtMo1z1kMshWvFgOL9ZnM1ggtVT7FaVakM6XhShCNST3snp68LNvZ2gl9YcoVDw==
X-Received: by 2002:a17:902:c947:b0:295:269d:87d1 with SMTP id d9443c01a7336-295269d893emr49212415ad.52.1761969597358;
        Fri, 31 Oct 2025 20:59:57 -0700 (PDT)
Received: from hu-krichai-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-295268717ffsm41490725ad.2.2025.10.31.20.59.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 Oct 2025 20:59:57 -0700 (PDT)
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Date: Sat, 01 Nov 2025 09:29:34 +0530
Subject: [PATCH v9 3/7] PCI: dwc: Add assert_perst() hook for dwc glue
 drivers
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251101-tc9563-v9-3-de3429f7787a@oss.qualcomm.com>
References: <20251101-tc9563-v9-0-de3429f7787a@oss.qualcomm.com>
In-Reply-To: <20251101-tc9563-v9-0-de3429f7787a@oss.qualcomm.com>
To: Bjorn Helgaas <bhelgaas@google.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Jingoo Han <jingoohan1@gmail.com>,
        Bartosz Golaszewski <brgl@bgdev.pl>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        cros-qcom-dts-watchers@chromium.org
Cc: linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1761969577; l=1362;
 i=krishna.chundru@oss.qualcomm.com; s=20230907; h=from:subject:message-id;
 bh=0ISk1zo5mbRe9LxvVD2vadNQhbkjLDQVBj/SNxnxtpA=;
 b=5hoG2lVfjcLdohSHpM4iCeuSiCiha0smcKSS9Zwrty/Rdaz1tc9AqhNjVCwmZk5gbLJ5LkNAs
 2oricXxhAPwADqvJwtlzr2twoSpmYYyJr3rpbzwhKqorhO2GKO3K/AL
X-Developer-Key: i=krishna.chundru@oss.qualcomm.com; a=ed25519;
 pk=10CL2pdAKFyzyOHbfSWHCD0X0my7CXxj8gJScmn1FAg=
X-Proofpoint-ORIG-GUID: XRKu_Der92aGvIAiKhLXqqfcPl074axG
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTAxMDAzMCBTYWx0ZWRfX99aZT79Qh8Wo
 zsQsf/63YYMVhjcKkwQSwxuJn0vCUtd1oggM/JVP8TOC+cJcn4fU3o7Bl9yp9xOjyJuzjjVye2l
 7olT4cx/SAPXc3wxwcB5Vc8GPPIJ46RATVPiurG6H5kxQYy2swat7P6gNNKF+WIjLjImuG7WNVB
 n6lISSEu15C3iRa14aDgDacNb6BRCmslUT745m7pbZmAP2j0Lb7q4yXSIPqYOIEuPZQSd+5Etlt
 O1n+aGnV1/Z3k8gK2cEh9QXaumfg6DxuiBxtUVRWdRFYSBsAYly1yhgHb+SHxDVr+eg/5GQzQ4B
 HyF8ztLZVlw8h/AI+JsrHa/0aulJsOjQlWHIzbLwYc2jSiXfo3mzrHZrqlwLygPAFIUfgtIgMKf
 Mkh8xKQ6+NI8p9xRrCJzXwVMRa2Apw==
X-Authority-Analysis: v=2.4 cv=ZZEQ98VA c=1 sm=1 tr=0 ts=690585be cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=Py5lcOcq67Lbq8UMOfUA:9
 a=QEXdDO2ut3YA:10 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-GUID: XRKu_Der92aGvIAiKhLXqqfcPl074axG
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-10-31_08,2025-10-29_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 spamscore=0 phishscore=0 lowpriorityscore=0 malwarescore=0
 adultscore=0 bulkscore=0 impostorscore=0 suspectscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511010030

Add assert_perst() function hook for dwc glue drivers to register with
assert_perst() of pci ops, allowing for better control over the
link initialization and shutdown process.

Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
---
 drivers/pci/controller/dwc/pcie-designware.h | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/pci/controller/dwc/pcie-designware.h b/drivers/pci/controller/dwc/pcie-designware.h
index e995f692a1ecd10130d3be3358827f801811387f..99a02f052e1c8410573ecd44340a9ba4f822e979 100644
--- a/drivers/pci/controller/dwc/pcie-designware.h
+++ b/drivers/pci/controller/dwc/pcie-designware.h
@@ -485,6 +485,7 @@ struct dw_pcie_ops {
 	enum dw_pcie_ltssm (*get_ltssm)(struct dw_pcie *pcie);
 	int	(*start_link)(struct dw_pcie *pcie);
 	void	(*stop_link)(struct dw_pcie *pcie);
+	int	(*assert_perst)(struct dw_pcie *pcie, bool assert);
 };
 
 struct debugfs_info {
@@ -787,6 +788,14 @@ static inline void dw_pcie_stop_link(struct dw_pcie *pci)
 		pci->ops->stop_link(pci);
 }
 
+static inline int dw_pcie_assert_perst(struct dw_pcie *pci, bool assert)
+{
+	if (pci->ops && pci->ops->assert_perst)
+		return pci->ops->assert_perst(pci, assert);
+
+	return 0;
+}
+
 static inline enum dw_pcie_ltssm dw_pcie_get_ltssm(struct dw_pcie *pci)
 {
 	u32 val;

-- 
2.34.1


