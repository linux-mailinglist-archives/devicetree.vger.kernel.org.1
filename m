Return-Path: <devicetree+bounces-232676-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 388DBC1A0F9
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 12:36:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 349F9568422
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 11:31:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B745B33A010;
	Wed, 29 Oct 2025 11:30:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Fc70GeIB";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="VJX99EVn"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 868B1339B47
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 11:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761737435; cv=none; b=B7ML98P2X5Whjz9wnCgm+BoWB1HvNOVoiCayvkPODEYLem6IWISmtJdymhkBxbaPD951oVCKU3eozR+B8jqblofdSo08xkaHLR9hNcgoKq43ha5Qv4jHJfjZG6QwNESxaCBIWDaAzM9FfEoMuEUCBoo5U+p3idFUL3cIHM66It4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761737435; c=relaxed/simple;
	bh=0ISk1zo5mbRe9LxvVD2vadNQhbkjLDQVBj/SNxnxtpA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=HykyU+OIMyDJgPjSBnpdUJ1xOOyovL3YsP4m4JHHHH9uDG14FKk1OXGuyoPW1RNmlK/iAPRl+rKERW6KRmZ5OmdcjYNIagrMh7MCfsnCvglUJHh7k76XCYJT9zTu3M987J3E1Qt+qFYeTnERCTM3qkAZGmvpvmdu1eTh7pcmCc0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Fc70GeIB; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=VJX99EVn; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 59T4uuoD3642920
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 11:30:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	O9iELXAHflmw8+ZgJ3dYI+WWKiAnqwwPtj78oi+ZNss=; b=Fc70GeIBGwxokD80
	gTwd2frpgXYsUgFR9D+UQYKXzs64EokyWRZq+SB4BEwJubyeto6Y6PkIX5vO1rCn
	IgLA+UTVKypmQTtWxmD4OTLZIolhf/WV8m380wBk5VNl/Q+UvIepon/z2CFq4efl
	VhIGwp7TbW5xiekkftvfRqGEtumtugjrhyV3sSKs9b4PwDmMeoy7ooF6imYNKVHg
	x2ER9A0YYhT1ooPD1tPu/P8QDN7z/Nya819lZ46SPxRMBmqGSU6flUcIuhQ6HoPi
	La18/FE97HY/Pbp67ept8J7xFwDYJTDFO8qLq7rtS+aV6GBXr23dw1Dd7w91upoy
	l84cCw==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a34a1jchc-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 11:30:32 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-2930e6e2c03so75410985ad.3
        for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 04:30:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1761737431; x=1762342231; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=O9iELXAHflmw8+ZgJ3dYI+WWKiAnqwwPtj78oi+ZNss=;
        b=VJX99EVn0qgb2QczArTvKf8obLWgQzmCZ/ifMmkmcF6UEvO5GZiaqr4N9L4uvKe9hK
         m0vbl8qpSqZv9XlYUFmcc3HmqRZjX6RnHdy+FwCfcIBqJh4nY/AbXPbcr+NjgymLLxAV
         y01l4lpEsklMPEub8e9TEbi2ChSg98VOt6HSjalLawIMigkIGBckwgVk/bGtlF2q8sbJ
         Tt9DZ1JS2Zx5fzDyItxyjXAYarimmneHzpMZ3VdVSOd5EUdfJO/GdBcsJCz4uSjQqSxB
         UoSNcF9T/yJxk+4X7FrsqJrap0oy1xT+px5ZKFnxbOGV4BX1SCBzivl9Qme+Gv7Vv3fK
         A75Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761737431; x=1762342231;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=O9iELXAHflmw8+ZgJ3dYI+WWKiAnqwwPtj78oi+ZNss=;
        b=V33JfsqMPkOTOz7Bz1O8443I+DbW73ihU89CxCdeJggzOB+MgT+TzYLcm4v1LVaeN9
         oUbSyd4Jtujsufzqj78M2OSF6pAX/PriPtf8CjfW8J6MzGbUCHFeivhhYjkAnvtUqxZw
         ynRBFV1/vjLrgablPgLI4TK+8gQ9f4wyD1E6xv0dZphLouopmTqZXFl8864pU1ELmLVv
         N32WaqSZ7opwYnIURXcjAAdrZz3FECkfNDP2SLlzOhMGestiXycJJwHf0E/l3f5EUjpB
         1PBlIuCvvaexvvoyYRIJhZrRF1a1GXyvSs/GuliuExrz6iCxPbZhmmdtL8DP6Nv0iIzd
         gj8g==
X-Forwarded-Encrypted: i=1; AJvYcCULvrYl2iePbL4pzqoaGr1+A++LBQhh4ziSLN46XnPAJ70fxvdbSubjr2KUtelQPPeWl9C+dexQ6USX@vger.kernel.org
X-Gm-Message-State: AOJu0YwI8P4IrhF/n6mDZWiW3V3VvKuQypns9UtLiP/tpCKx6bN23HkA
	j26112EuZun4wHGyPf2fjztmHY30AH6a2K01Yvcm2IzwieH8a3oY+LTHjRHtsvp6azyu5WLrh2x
	WECoD1plpCwFtBEX/yjECEH7l8AFYXndnl7rCQjAZRPW3iDKUoTt4fw0RJzf/9RZR
X-Gm-Gg: ASbGncuXvYDG84/uL1QNif4yTCeO1R+EWLPay7ZK2jz3nLD1C0T5ZaFA14rJ6yD2X4w
	dyoniDuoI95c2k5xD6Y6JHYZEz9smPLxyneOG0tPNxkya6Z7k/2OZ+bhPz1gJihbfPJxG8UQo0q
	/UYETzp7XnWvZIOaUpltKObtJPcUfJIpTfBP7mtxCXhPkCgMiLjuIsVMEo2++oLKqVsUJpAh0Q4
	syB0F0l4HvXLNhWKySJ1bgzc2Hgv+fLM+/NfxE9jsOUOBwfHhhbYaa0o2pE7yeLPzhv0Ie9Guwv
	X4m+9ziFNkiVF4yv3674MwH+0MH31TDwTGtFo5m12DUooi+l6ObM00aVE89V4hzcSqvh7eqxdml
	n9ii7nuMWwZG+fFl8SF86SpNYir5h1ZMRDA==
X-Received: by 2002:a17:902:d2ce:b0:269:a4ed:13c3 with SMTP id d9443c01a7336-294dedf443fmr33996935ad.5.1761737431323;
        Wed, 29 Oct 2025 04:30:31 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHzD3E0IZm0JLmQ6eTP7Lq7ar8FKXrfNnuIQJfcHUciek8CdlXU+uEBlYoC0IXK5Nyb/Xjdwg==
X-Received: by 2002:a17:902:d2ce:b0:269:a4ed:13c3 with SMTP id d9443c01a7336-294dedf443fmr33996485ad.5.1761737430778;
        Wed, 29 Oct 2025 04:30:30 -0700 (PDT)
Received: from hu-krichai-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29498d429c6sm152154935ad.85.2025.10.29.04.30.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Oct 2025 04:30:30 -0700 (PDT)
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Date: Wed, 29 Oct 2025 16:59:57 +0530
Subject: [PATCH v7 4/8] PCI: dwc: Add assert_perst() hook for dwc glue
 drivers
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251029-qps615_v4_1-v7-4-68426de5844a@oss.qualcomm.com>
References: <20251029-qps615_v4_1-v7-0-68426de5844a@oss.qualcomm.com>
In-Reply-To: <20251029-qps615_v4_1-v7-0-68426de5844a@oss.qualcomm.com>
To: Bjorn Helgaas <bhelgaas@google.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        chaitanya chundru <quic_krichai@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        cros-qcom-dts-watchers@chromium.org, Jingoo Han <jingoohan1@gmail.com>,
        Bartosz Golaszewski <brgl@bgdev.pl>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>
Cc: quic_vbadigan@quicnic.com, amitk@kernel.org, linux-pci@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, jorge.ramirez@oss.qualcomm.com,
        linux-arm-kernel@lists.infradead.org,
        Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1761737398; l=1362;
 i=krishna.chundru@oss.qualcomm.com; s=20230907; h=from:subject:message-id;
 bh=0ISk1zo5mbRe9LxvVD2vadNQhbkjLDQVBj/SNxnxtpA=;
 b=kOSo+nmmPNadAjOdB06SfSAKWKG/olLMaKQnaw1Yrr90I/zKaUVLNSJ2NCiJnpG3h7DLefx82
 JJ7r2dS3VeABWmKmDzJ4i+yI+7xbpWJl/11xp4sC19PcUt3eyhvpgJE
X-Developer-Key: i=krishna.chundru@oss.qualcomm.com; a=ed25519;
 pk=10CL2pdAKFyzyOHbfSWHCD0X0my7CXxj8gJScmn1FAg=
X-Authority-Analysis: v=2.4 cv=dbiNHHXe c=1 sm=1 tr=0 ts=6901fad8 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=Py5lcOcq67Lbq8UMOfUA:9
 a=QEXdDO2ut3YA:10 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-ORIG-GUID: 2c2RFUFIOB2Kd-euUo1FlhLmm4mJ0nUt
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDI5MDA4NSBTYWx0ZWRfX66Po7l9l3ST/
 FAQdX9hZOASMHyJ1TQ33k2uzuvuazQM6dZHZEtCw07pStfDfGRPCsXv+CQbsGN1knLTZJYYBqDM
 ELluoN4esGMNdx+B0mPZQpmb6cgFqXgQxu41wQvNlnShYQ0tTeKTleA27JvAmhUYxPcTKL54kND
 wFOZH2g0wurfefZ0JB9fe2jOOfeZAKX57Jy4R7CyMdzltRkCgsjnT7N2vV11gBIVyi8ZXuCzQv7
 sDvY1hhI0NylKfqM3HFgY3IsfVh1smD/Xt+tnaaqqpgDAoeSR+uGEnE/ktHef+TtvgbK9CEy0Hq
 pOoG3GBaiFzjF7eGI1jw566780xcITfs07WHHSyolr+ID+DGueBdfNHKmntnE/LEgw1eJkgNvax
 y4YbyIVbTEaps3A8Db2LnoSAPXO9Vw==
X-Proofpoint-GUID: 2c2RFUFIOB2Kd-euUo1FlhLmm4mJ0nUt
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-10-29_05,2025-10-22_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 suspectscore=0 lowpriorityscore=0 impostorscore=0 adultscore=0
 malwarescore=0 bulkscore=0 priorityscore=1501 clxscore=1015 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2510290085

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


