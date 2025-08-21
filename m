Return-Path: <devicetree+bounces-207352-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 79D5CB2F464
	for <lists+devicetree@lfdr.de>; Thu, 21 Aug 2025 11:46:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C581E1CE197B
	for <lists+devicetree@lfdr.de>; Thu, 21 Aug 2025 09:45:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 764BD2F28FF;
	Thu, 21 Aug 2025 09:44:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="PsAE+VEE"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2C8E2EFD9E
	for <devicetree@vger.kernel.org>; Thu, 21 Aug 2025 09:44:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755769496; cv=none; b=WrqJf9Zi5B8Qrg00JeXMk9iCxqNFKaSAjeyfCPhKVUCH2XBu8RKF7PBVR0o3bu0AWOcOkQjH2ludYb9gmmu42554uWRi6Bx7OfYkv3AVy9U7p1YYE1E1X61y4UVO91svPw2KHoMS2yHVsOzrwB5ABNmHrHFQjVp1uG9i+cx6/mk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755769496; c=relaxed/simple;
	bh=OYLGPSROlM94Y8YMfz+cAy5T78h70o72gHxUfKcZJ3k=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=HT4/JGo3uqiK6hQjw1/c9OnMv2uJNcI+mLVQKCyM5D/gDxbhG9vvtcHPpts+3N8bQtKXVUIQ4RUm5gbM6X909C12AHLjmvH4RNBrIRPFo7ZJ67GT8TBAXGxQIOU50yc7Kl6KN0jE7gtS6ST2uf9JKKvGNTGdLSnP00MDxas/9uQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=PsAE+VEE; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57L9bCAQ031427
	for <devicetree@vger.kernel.org>; Thu, 21 Aug 2025 09:44:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	4HB2uUgg4ObiGLYTjYfuAXBTtDoOjkuI+b7+MZ1F1B4=; b=PsAE+VEEmmQF2Sau
	/CClwvxDl/DVGgLZhQ/XD1sWcoKBxNTTz9sQJXrP98irkOvGQYP/k+Jj+T6NduYf
	AKOsLLeR0+oa3KLCTZ3ANXwFZFbZYHcaz6QR+NVZYqtZkiKOBFX/bYSNomh6m9S4
	GyZscyNIxj6Tbmn6u7zYDp0mIUfLA0GsIMoBm/zdhFa9Q1ALMoMwyFyVnfMyU+aj
	Y7EqOibQw+QMRhI8tm0MhxipKpFrnNLwCr12bZ6MuY7Nn56hlqN8Y5ej+/jcIiVW
	nmp+HEQ+4gwY2oE9O0KzLgwCNhmp+0Rd/nZQfsoRG93uYb4IyuGryeCtifbon48R
	iHGCyg==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48n52avuk8-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 21 Aug 2025 09:44:53 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-24457ef983fso17755605ad.0
        for <devicetree@vger.kernel.org>; Thu, 21 Aug 2025 02:44:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755769492; x=1756374292;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4HB2uUgg4ObiGLYTjYfuAXBTtDoOjkuI+b7+MZ1F1B4=;
        b=n685ecHAHNVmGRDtgenspsoMyeyckBl7KVN0vD0Od8o4+f1VWM4Ajz+uum2i6dWDbV
         JF8hm6ZWZZmgf6dP+i0Iyg9vyT9ui0zoEdbH5jvTo2nBuRBIMlBIMgi5qhbv9QSQTFrK
         FqLuKDhHp3h1mE8yC6mpy8J4mEs78W0Rma0hCt5495XBkVuNDvLAahKdGt5d82hrkPuo
         NrlEQnvQF5cETYAZft6gWz+cztu1QALDipaFxbJOXqJkgjdgtlEkX5c709MH/GHU4t3g
         yNFb5od4C/Da83QJmyU+X6FAonhwm7oj5ev3Q1UiLD8YlbeUfIgqgLQ3+T9ncrx6na1J
         4dCA==
X-Forwarded-Encrypted: i=1; AJvYcCXlNzf7/tfxCGG9QnVuImsuMvAdfdk/1fLmN8W0kMWBDTyj3ZNLMcqy3Cdb5fM5KYutVd0eNfqC4UcN@vger.kernel.org
X-Gm-Message-State: AOJu0Yy8hTZAx1bm6JKUr+bX2/OvzPeKPPvKpc8RyZmwkVqS73fneyIa
	xXSndTuJIh44AhR9kuCFg33WU2NFdtjdEg8mlyKuLvKN56d5HrrmIm//SdijJLZF8FnjNENNsPk
	13TfIAKE84tBqBZYrEn1uaLzBHFAFsOjoUKCjHjmmSX3Rog4LuS3tdlpUOtmzaWR5
X-Gm-Gg: ASbGnctiFPJ4XZzbXaJsJVOQufsFvckB3QA7uRy9ccj3TdZkZHppNeHd6+atC+TBCv8
	D51KdANRANtGN3Ud5ftVqXams+M4B8mtoVY0nr351sdkbDkO/l5bn4U8X3iBmFYJ9FRXdbOeBW5
	qZGbeXqy13xf7LQgDaOt9Yy/YCe13aPWYkHqNp/l5yogUtZOIl1bSlSE697AOA27X3AP5hZ3dYM
	C7786bUAeD5ptYiQb/pr/jdlJdv8dRayIRZqystNWa9qRK96igycIoRKeYwwliU09e+zSeWKJGM
	73XxLF6NtfdhiOIW+B4qV3dg0tPUqI4AsUKoULiKQs+SyT/YhIL99fxO5nzhqPIzlDsk8UkabHL
	Pm6kD5vgv2BGybsU=
X-Received: by 2002:a17:903:384c:b0:240:640a:b2e4 with SMTP id d9443c01a7336-245fede0b63mr26328285ad.49.1755769492403;
        Thu, 21 Aug 2025 02:44:52 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFx4GHGVHvitiI3tfieiXs12r8JEwBYJ5VY9Fy1i8PQK7RHyuxBxDvyosnXBfmKrzsdVv4Pvg==
X-Received: by 2002:a17:903:384c:b0:240:640a:b2e4 with SMTP id d9443c01a7336-245fede0b63mr26327955ad.49.1755769491957;
        Thu, 21 Aug 2025 02:44:51 -0700 (PDT)
Received: from hu-wenbyao-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-324f23d853esm1426078a91.6.2025.08.21.02.44.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Aug 2025 02:44:51 -0700 (PDT)
From: Wenbin Yao <wenbin.yao@oss.qualcomm.com>
Date: Thu, 21 Aug 2025 02:44:28 -0700
Subject: [PATCH v2 1/4] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy:
 Document the Glymur QMP PCIe PHY
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250821-glymur_pcie5-v2-1-cd516784ef20@oss.qualcomm.com>
References: <20250821-glymur_pcie5-v2-0-cd516784ef20@oss.qualcomm.com>
In-Reply-To: <20250821-glymur_pcie5-v2-0-cd516784ef20@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1755769489; l=1596;
 i=wenbin.yao@oss.qualcomm.com; s=20250806; h=from:subject:message-id;
 bh=5L5bgft0hY3UL+GD99tTktGev1AZdAzNOUPNY/hYCs0=;
 b=pdeoV5QDRCXDZmT9xtvFBUXUQoDPeo+E8tde+yev8M/WcSKq0u8DjWSJEglrEvd5uQ4Qi4ve7
 fEhDoOWl3GJB8NBi/EMSt+TPtD6W0ZX44pFzz4lXdUPAwolbJYpl/ij
X-Developer-Key: i=wenbin.yao@oss.qualcomm.com; a=ed25519;
 pk=nBPq+51QejLSupTaJoOMvgFbXSyRVCJexMZ+bUTG5KU=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODIwMDAxMyBTYWx0ZWRfX58gXcIoEhKSk
 GqgMP4Il2rav/rsTu+P6Hanrjqq4fhXj3tFGQx5dNfa5JDfxn+PDOkEeTOVS9ySYHd/wnwykEbR
 +CoG0phERoZGZ4LjvpfDFM2VQC6q/9LYxDuTShuC5ftEx/DDc/yAObogj2FqifsIALuz30U6wRB
 O0+ubgQMI2cApDH5MVPi/Wl244UXsTac6wfLu2Yn3tqB2GHJfJsZaDbH8/DZFQ2pHmaM2dtWz1e
 Lp5W/FuIfSm2H18NqhdrkyVvdiaZ+vD1x+ZFb0LyFkJBURHr7aOW2kWZs25QqIPFoq04Iv1kmz5
 hOVZctLm9AsZPVdp/uO6m7TnSqCj199OuMZ02hesXa/ze7XaNjOxx8JQbuHldkZocoM5QSYRvvi
 lUhSiMuSoKcIauMhovvfaeuohCjw/Q==
X-Authority-Analysis: v=2.4 cv=TIIci1la c=1 sm=1 tr=0 ts=68a6ea95 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=prgL3jgsdPShhDvlN2UA:9 a=QEXdDO2ut3YA:10 a=324X-CrmTo6CU4MGRt3R:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: 0AK31I-DmrHigJuMqLSBgEpHDPaaQK9Y
X-Proofpoint-GUID: 0AK31I-DmrHigJuMqLSBgEpHDPaaQK9Y
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-21_02,2025-08-20_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 suspectscore=0 priorityscore=1501 clxscore=1015 phishscore=0
 bulkscore=0 impostorscore=0 spamscore=0 malwarescore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2508110000 definitions=main-2508200013

From: Prudhvi Yarlagadda <quic_pyarlaga@quicinc.com>

The fifth PCIe instance on Glymur has a Gen5 4-lane PHY. Document it as a
separate compatible.

Signed-off-by: Prudhvi Yarlagadda <quic_pyarlaga@quicinc.com>
Signed-off-by: Wenbin Yao <wenbin.yao@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
index b6f140bf5b3b2f79b5c96e591ec0edb76cd45fa5..61e0e2f7ec7f9cb08447e4cd9503698c0a2d383a 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
@@ -16,6 +16,7 @@ description:
 properties:
   compatible:
     enum:
+      - qcom,glymur-qmp-gen5x4-pcie-phy
       - qcom,qcs615-qmp-gen3x1-pcie-phy
       - qcom,qcs8300-qmp-gen4x2-pcie-phy
       - qcom,sa8775p-qmp-gen4x2-pcie-phy
@@ -176,6 +177,7 @@ allOf:
         compatible:
           contains:
             enum:
+              - qcom,glymur-qmp-gen5x4-pcie-phy
               - qcom,sa8775p-qmp-gen4x2-pcie-phy
               - qcom,sa8775p-qmp-gen4x4-pcie-phy
               - qcom,sc8280xp-qmp-gen3x1-pcie-phy
@@ -211,6 +213,7 @@ allOf:
         compatible:
           contains:
             enum:
+              - qcom,glymur-qmp-gen5x4-pcie-phy
               - qcom,sm8550-qmp-gen4x2-pcie-phy
               - qcom,sm8650-qmp-gen4x2-pcie-phy
               - qcom,x1e80100-qmp-gen4x2-pcie-phy

-- 
2.34.1


