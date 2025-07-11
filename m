Return-Path: <devicetree+bounces-195657-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 172C4B027CA
	for <lists+devicetree@lfdr.de>; Sat, 12 Jul 2025 01:43:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D4D6FA47F87
	for <lists+devicetree@lfdr.de>; Fri, 11 Jul 2025 23:43:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 225B12253FE;
	Fri, 11 Jul 2025 23:43:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="jdrK+Uzj"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8918E229B1F
	for <devicetree@vger.kernel.org>; Fri, 11 Jul 2025 23:43:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752277404; cv=none; b=aBXL0iMeo6w4QMXHnnnLyuknRLDtvV1w3jrMNHNvbPpdwGfuuBnKDNTDJfFUnjlR4vwv9M6t2mdqpp3MdCjIRhYnDks3iKQ9wINbHXbupn9gzhmESP9dy7jIW/dpFzvDOpsISTJ7UHMh+bmacBbVC0cNsL2hraxsM62eCZSLYQQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752277404; c=relaxed/simple;
	bh=VApOdYdcIcGsjxQz18hzzta0BjkroIslxQvJ91rRnDc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=MxtdUREuAkWcyG72xjozavj0acrrz5hiNAEbMIU7rvJ/bql1fBhsujYNuGWGKTd4GiuNiHPY0HiHny6W8Q5nqYWHiv+fSYnqoqEGjJYkkDoftIguihecKAMgS/P47HrWKWpSGsNNaWjB+v60fxOH4JH38g/MVAKdUc1W3aGomCc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=jdrK+Uzj; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56BAkHgx031141
	for <devicetree@vger.kernel.org>; Fri, 11 Jul 2025 23:43:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	AKPr8YppJhWZXY5nU95xm+IYbu7XiW0DjkBfDCJ5EMw=; b=jdrK+UzjvL/E3jCd
	sobHx1hG2+zp8pDF0U5w2dEl+/wwqS9ROkRFQU4xiOG8CY0/jiJhsOdMvOPVgTNA
	iBTNG6YbxcjfVagLWaqLhBlUy38IgK90ZmmNXUycIaBLnhR9ooSt+IaVfb6yP1LT
	Q4jIaJ8wo9hcgXFEwj9P2StAdBs/RDT1R1pdq3DnhEGkCzPNWAWwySfwgxeTdhPH
	+rELYQv4JP5e93M08QeYR/hkob7zMc3cAPCEEf7IJOEvufF7p5u9NM2oEbs+4jov
	xwC2+JMehjjswYO43SxUjuQmqbzOd8+9rhxjENIphkKXLaLF3vL8h+V7Hjmr7Ix2
	kdpiCw==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47u15asubv-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 11 Jul 2025 23:43:21 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-748a4f5e735so2533336b3a.3
        for <devicetree@vger.kernel.org>; Fri, 11 Jul 2025 16:43:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752277400; x=1752882200;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=AKPr8YppJhWZXY5nU95xm+IYbu7XiW0DjkBfDCJ5EMw=;
        b=VNyXMGgPNabTFFs5MSiI8TnNpkpT/AUKuKFVXOQ6v8T7cGif6bi1q5WnXYaLP9Pjuh
         vfjGsqBzSdMoL2v0jarSmuILoYRKqVdxhtc+RjX9CpGUNBQz9FWVmqeTt3B1zLJmBD32
         mruwjmMcUC/gXXjeLijCjxv9f7k5hr2011Mc13SibNJ4jgouhCI8bERdicS0Z5L3oYt+
         7yhX8gmowUocxo+dX2JKqoNXRhnsGb7aboSxVpB0YTTxHMUNb5ix1XAexfB4+xADNPQs
         6lS9v3vN1N0X5+eJb4WpQe6VDvp+982PI8cK4c7gU5hZ3Cv+YI49WXiFwvxbHemlEA8D
         kG8A==
X-Forwarded-Encrypted: i=1; AJvYcCX4fBRMHkSn2TAcHRER9/kPfS2fQo1qM6JtF9GZH6zKzJ85Kwwdh8uS5N9xf68Y9hi8T8Uemzx3sEZg@vger.kernel.org
X-Gm-Message-State: AOJu0YzUzyoWjDW+PCEjWXN136Iu5gkXbTciLBhIZ5IEn0RooOrM0Tpo
	/bYuwl4hyL1+/QobXcsKDsWK9kD6HcC8diL3E9kILGnhd2outYXxTQgwhEWRdCHKPrixthHYhQR
	5lmOFwGTI3rOVjS8VwpPYjIWekjroWDTes2blM+GLef1Cm7z9FuWSKjfe1Cvw4qrX
X-Gm-Gg: ASbGncsaUdxyS9vakd8uekUT5SwKUOt83bwoFUhb4kzuAfTIG2BZObavihb6wdzClxG
	FmcMNXas7/H2JRYgLbhezxnVDfasqQkKJBfo8/E8+Kkzb+AsB1dWPwZPO2H5NdxImAHCgD0s0/w
	XwoTs61RaucUR+JBGyfKSRV9KBf28DmzKLxMu6zQFfsxhJA7JW+1DF6u5sraLOljNBqTlpXH0CB
	3hEYSfAnr+XelT1wIjworgrI8IhMZs2Kbuv4H0MG8a/6Fv1SBXVUNZofPLvJIp08bAEp+m41Hr/
	MF2H9G0TUL+Rfa7hLlGAhXaorkzzkTh80FW0V3IQhyeZcZ9Yhn+wXxg/DkxfeEIrjLmnxnkc/GQ
	=
X-Received: by 2002:a05:6a00:b90:b0:73d:fa54:afb9 with SMTP id d2e1a72fcca58-74ee07a860amr6783008b3a.7.1752277400116;
        Fri, 11 Jul 2025 16:43:20 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEb06xUgDKc6nvtu6F7d1FFcwYCWZk/21iviJxFEIvxpjW4Il8TzccgU8iuj1gs2UF1mWMStg==
X-Received: by 2002:a05:6a00:b90:b0:73d:fa54:afb9 with SMTP id d2e1a72fcca58-74ee07a860amr6782964b3a.7.1752277399654;
        Fri, 11 Jul 2025 16:43:19 -0700 (PDT)
Received: from hu-krichai-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-74eb9f1a851sm5869781b3a.82.2025.07.11.16.43.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Jul 2025 16:43:19 -0700 (PDT)
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Date: Sat, 12 Jul 2025 05:12:38 +0530
Subject: [PATCH v6 2/5] PCI: dwc: Add support for ELBI resource mapping
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250712-ecam_v4-v6-2-d820f912e354@qti.qualcomm.com>
References: <20250712-ecam_v4-v6-0-d820f912e354@qti.qualcomm.com>
In-Reply-To: <20250712-ecam_v4-v6-0-d820f912e354@qti.qualcomm.com>
To: cros-qcom-dts-watchers@chromium.org,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>, Jingoo Han <jingoohan1@gmail.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
        quic_vbadigan@quicinc.com, quic_mrana@quicinc.com,
        quic_vpernami@quicinc.com, mmareddy@quicinc.com,
        Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>,
        Manivannan Sadhasivam <mani@kernel.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1752277383; l=2000;
 i=krichai@qti.qualcomm.com; s=20230907; h=from:subject:message-id;
 bh=VApOdYdcIcGsjxQz18hzzta0BjkroIslxQvJ91rRnDc=;
 b=DBLoVj2yl3UK6SydTaV5OzErfZ3Z/qouU/xtsz0ugPY9sudY8Hw/jiPQ69nIm81Bc2ZsRHccE
 ajH2rmO3Y5EAHz2dqXcrb/neCpc/DDx+X0EkbJAZqhYhGDqdZ3mUmDV
X-Developer-Key: i=krichai@qti.qualcomm.com; a=ed25519;
 pk=10CL2pdAKFyzyOHbfSWHCD0X0my7CXxj8gJScmn1FAg=
X-Proofpoint-GUID: svqZcQ6ZalWxznq-JvwfxcifDQNsIWJL
X-Proofpoint-ORIG-GUID: svqZcQ6ZalWxznq-JvwfxcifDQNsIWJL
X-Authority-Analysis: v=2.4 cv=RtzFLDmK c=1 sm=1 tr=0 ts=6871a199 cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=De8H20xVS9kR4mXr8yMA:9 a=QEXdDO2ut3YA:10 a=IoOABgeZipijB_acs4fv:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzExMDE4MCBTYWx0ZWRfX/KBdTWAh1hXn
 xJb0WkmqWiX2quOgtFXxMeaNA1RhSfzdhpT8E0ij4k4mfrvdgScUsdl8dN1j0MJNJ2a7EQdHI72
 6E9t/4/CDHJ9Gj0RqbnmRXVBTRndVqTIJaHtvh27uZWhQYYkTH48daEGuY487IpS7MYp+ElscZ1
 uaVe/B7alsFdDRRLxU4+ViwOYUvXlW0Vj5x40rjpO/t03VbphFzl2r30ifEPMGhwREYMirDZTK0
 MTwiYyVclWylhtfvTvA8Y9N/weREfkCzkUG25s4k/uEhH1JmU+IUewoOszc0Blys9vBZ7lCvmoR
 KBcb6k4r0qfI4qrfJnM2fbEjK08UWfgMu2PjA5z80n4C236MUbqoB1cvA0Y2tIpc4xHStGTEEpy
 IoiD+32uqJKXZhC/QLSgc3HfAOoSONsQF9KRK2CYpma7oGSQuE+o34VVR5D3KJRUSnxg+e47
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-11_07,2025-07-09_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 mlxlogscore=999 suspectscore=0 adultscore=0 bulkscore=0
 clxscore=1015 malwarescore=0 mlxscore=0 impostorscore=0 phishscore=0
 spamscore=0 lowpriorityscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507110180

External Local Bus Interface(ELBI) registers are optional registers in
DWC IPs having vendor specific registers.

Since ELBI register space is applicable for all DWC based controllers,
move the resource get code to DWC core and make it optional.

Suggested-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
---
 drivers/pci/controller/dwc/pcie-designware.c | 9 +++++++++
 drivers/pci/controller/dwc/pcie-designware.h | 1 +
 2 files changed, 10 insertions(+)

diff --git a/drivers/pci/controller/dwc/pcie-designware.c b/drivers/pci/controller/dwc/pcie-designware.c
index 4d794964fa0fd3531e2f35f16a8a765c00f9b416..f7bbfd91b03b5e18031983ff4ebd829f450b8154 100644
--- a/drivers/pci/controller/dwc/pcie-designware.c
+++ b/drivers/pci/controller/dwc/pcie-designware.c
@@ -167,6 +167,15 @@ int dw_pcie_get_resources(struct dw_pcie *pci)
 		}
 	}
 
+	if (!pci->elbi_base) {
+		res = platform_get_resource_byname(pdev, IORESOURCE_MEM, "elbi");
+		if (res) {
+			pci->elbi_base = devm_ioremap_resource(pci->dev, res);
+			if (IS_ERR(pci->elbi_base))
+				return PTR_ERR(pci->elbi_base);
+		}
+	}
+
 	/* LLDD is supposed to manually switch the clocks and resets state */
 	if (dw_pcie_cap_is(pci, REQ_RES)) {
 		ret = dw_pcie_get_clocks(pci);
diff --git a/drivers/pci/controller/dwc/pcie-designware.h b/drivers/pci/controller/dwc/pcie-designware.h
index ce9e18554e426e46f0376af22ffc99e329c2ccb8..31b2a7e9dafa4ab481434068bde0775837babb4f 100644
--- a/drivers/pci/controller/dwc/pcie-designware.h
+++ b/drivers/pci/controller/dwc/pcie-designware.h
@@ -497,6 +497,7 @@ struct dw_pcie {
 	resource_size_t		dbi_phys_addr;
 	void __iomem		*dbi_base2;
 	void __iomem		*atu_base;
+	void __iomem		*elbi_base;
 	resource_size_t		atu_phys_addr;
 	size_t			atu_size;
 	resource_size_t		parent_bus_offset;

-- 
2.34.1


