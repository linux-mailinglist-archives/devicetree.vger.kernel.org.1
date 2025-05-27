Return-Path: <devicetree+bounces-180955-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B47BAC5BDE
	for <lists+devicetree@lfdr.de>; Tue, 27 May 2025 23:05:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C270D1BA7DEA
	for <lists+devicetree@lfdr.de>; Tue, 27 May 2025 21:05:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A675521481B;
	Tue, 27 May 2025 21:05:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="FEmTkq5A"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 180B02139B1
	for <devicetree@vger.kernel.org>; Tue, 27 May 2025 21:04:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748379901; cv=none; b=jFM3dJ1iGBxqOfRrMyzAyiKodrvQVE2Nfx7R2aQsYovDwguQ78BO8HAox981J3Ac3Ae+iNKtAc0P9zvN2aKCRif138NqHZed8N3JnVISdZfGVdmnsGisLGQkr6FFh3Vf6pBDcf/qG7nu/bYPqw+QILDeBP2WnmwzOW2rxyAlmOA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748379901; c=relaxed/simple;
	bh=NhOsYBi6tADTMUAiHJ0Qk3HAGnZPId0WGmI4bIdXuV8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=aZz6KWsl+Ywch0TgF0BLT47SZ6khfMb+e9n2QbkRQIVaw7Vv5uiITWmTv+e5ju5WTQH3dxU2l5kVnMlkK2hoxGcNZWxJDmcXO1bUnmmV47FBkOPU0GXyzw0Y2S1Q+2nJPKfc2vaTlINRmkf3WcyOJGfiXB1lAetd9aJs0jnbxkY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=FEmTkq5A; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54RBMUjF020607
	for <devicetree@vger.kernel.org>; Tue, 27 May 2025 21:04:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	8gIhfclnLH073VsLY1ttHA/tXRnGUkM9HdwYW3xYCyA=; b=FEmTkq5ApBPdiyy7
	fYfR93tebQ/gtSyFOXu9QDIhyhgfbwvc6f4hTt2Wm6kIecV/JYbRXGycx+Eh6suM
	MHaef/GAhoUyd3z7Fy0l09g4yLPwaZeGfU3zp+JLI/vyh+pu27QRoN0ckzPPByNO
	mWw2yZieD6yxPQLqZ72AHmDkq8Si6nEfvWhZnsZSGu4IKJlx80icxvPhkdKJjMmf
	C+P0znTmdcovkywfsnT2Mplic/KYKztLXEcdV2PtITKXgAiZ6t90wZwfftUH1X3I
	1IF0WFfn1k0J+B2ZMR1tBNc+drLGFYDwYLKETg+XwARFFsZnGWMoJ6Dns8LjlR1W
	ttVgmA==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46u6vjr8tj-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 27 May 2025 21:04:59 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-7429fc0bfc8so187084b3a.1
        for <devicetree@vger.kernel.org>; Tue, 27 May 2025 14:04:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748379898; x=1748984698;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8gIhfclnLH073VsLY1ttHA/tXRnGUkM9HdwYW3xYCyA=;
        b=SFMbN8H7+x6QeZfmQtEgDLGpCjqAEKO14u5sCP5ulfA+XWvCDr0UaX9duGySNtdgWI
         02OTplpp0/luDjn7SolqvAvW38iAcH2cPsvhqx8BPhKE+erq/Kk3IZB2iYKEOuixmIj7
         c2bo2qZWfZs9j5GosZx8MgkobzDj6Xo6Q1WmuiaAhtWtgBLPiiJGjbikAvAsnv75//ya
         4asL1wMgyCSUmvMxQcWqC9R9DPlhDI0+TmfRDG0p2d5lB+BcOgd9K2qJk7lbpFZIlf+G
         AoRfRDbAJzIztXSvl4wEMdunMA9XHyLouIQ8//dcelLz5v7Y27hn0+J5MsvBSU9MUIr1
         yqkQ==
X-Forwarded-Encrypted: i=1; AJvYcCX/OQG6WyT+pH6NQXyj5nZcufRQN7VLDZ2ca9DU03QwYgvZriQTKax7yrZB/imjBNcdNud7/c4cb0Np@vger.kernel.org
X-Gm-Message-State: AOJu0YwJku3Z8lBmdxKVvZ0OJIiIE0CEh14mpP78OeHAkxmZwlUAxLsm
	LEXiIxpasURUnn22K55fewkv1xBCdSrd2igzU4IDjbHoqOn/zC8mYkLpIgGrv/hJGhRWx8veY/Q
	1EW5p6X5Mjs8yk5IMxc25ALDVkAqz61UsFOKLWzVKjMjrPnPv7O9yX4HhyyuzTxdq
X-Gm-Gg: ASbGncs8ganLqNsDCrZUWLloZt4UAUfpaFSqgEeQqtP057kYDXcYfqCPFiCHYchoyoy
	1eM71Efm1uA2CiU/ru98wZAUvW5M9xaRLFAitzZeHLb34GrpejdVumXfPy2gMJ2wdLLBLP8dTMz
	PAUZ6IJ4Fqed+6KpjL4uIVKcw6F5bgLPxhVKMtbTg2tUylYM1E9C3dbEkdrOvjeWoEnDRZXB/5F
	kqNVX5q+1IATI6dLipxM3LDGP1ZiLRmCBEeqA4waa5PiiAMM7C0l9TeMUUGnGkjtmzwPMd9LfzE
	8Ql1nqDRjUCnwnnh4Mdg78iPas69dTtkcCxYkgc6qRlu/8Rs4M3FwvMC7OLsGYdjCEU=
X-Received: by 2002:a05:6a00:3ccd:b0:736:4d05:2e35 with SMTP id d2e1a72fcca58-7462eae8737mr2671741b3a.3.1748379898173;
        Tue, 27 May 2025 14:04:58 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IErVuSX8VnhDC5c80QonelHr5ry9GAhDcphlE+t5DRrIAcd4JLsqfnIcR34CNcLszXepePuHg==
X-Received: by 2002:a05:6a00:3ccd:b0:736:4d05:2e35 with SMTP id d2e1a72fcca58-7462eae8737mr2671698b3a.3.1748379897734;
        Tue, 27 May 2025 14:04:57 -0700 (PDT)
Received: from hu-molvera-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7465e64836fsm29167b3a.26.2025.05.27.14.04.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 May 2025 14:04:57 -0700 (PDT)
From: Melody Olvera <melody.olvera@oss.qualcomm.com>
Date: Tue, 27 May 2025 14:04:39 -0700
Subject: [PATCH v6 03/10] dt-bindings: usb: qcom,dwc3: Correct the SM8750
 compatible
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250527-sm8750_usb_master-v6-3-d58de3b41d34@oss.qualcomm.com>
References: <20250527-sm8750_usb_master-v6-0-d58de3b41d34@oss.qualcomm.com>
In-Reply-To: <20250527-sm8750_usb_master-v6-0-d58de3b41d34@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-usb@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Melody Olvera <melody.olvera@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1748379891; l=1199;
 i=melody.olvera@oss.qualcomm.com; s=20241204; h=from:subject:message-id;
 bh=NhOsYBi6tADTMUAiHJ0Qk3HAGnZPId0WGmI4bIdXuV8=;
 b=lobSYcFGVwh8sfpUcLjkgbtPofAxzVDKJAfkDY2FUYjTHx3YXT1XBfydR+LmUIt7NbMLEs17M
 4Jec41PnZl5CSCqn6HniNcEqQYvBtscZOhyooMC3wXeStWPigeWIgmT
X-Developer-Key: i=melody.olvera@oss.qualcomm.com; a=ed25519;
 pk=1DGLp3zVYsHAWipMaNZZTHR321e8xK52C9vuAoeca5c=
X-Authority-Analysis: v=2.4 cv=UOXdHDfy c=1 sm=1 tr=0 ts=683628fb cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=qiVRAF7mJj4RLuWAUSQA:9 a=QEXdDO2ut3YA:10 a=2VI0MkxyNR6bbpdq8BZq:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: M_WgAUAmABJ1Ajy217MGRjjgmfWOSAoZ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTI3MDE3OCBTYWx0ZWRfX1wi92fNETgur
 o3gtAUoyyHhKZl2W5F82ftO2TJiHYbXaZ+xQ+U623hgMFgOlHbg9mP0JcaIaoePNiJ5yq3uad/M
 HCwW9dCX8wBtYflsTvv0YKKw/6qUBZCc+QtHSyBnFgsuyEv6E4cKTtZIQ1LxakXln01TqnO1h1A
 FwGibgPtQYmehdN9SYo6BugU7S9wiiG1lHT3Kj8y+eHsfGnumS8Q/D7DU4+URK2JemJ4VZoBSEW
 IslZdXc1JqJUVOA9ayZrga6pwHF7dZl9N6MXdST6WF8jcjSofETCQLJkV0oOw2S+ewGbMxi5GdS
 tTC2S3qlyntvzyV4nnGDABXyeMTjWUCfk1EcTdBHAr1LrxK9vtX31LR0YO7GUp1PpOg8Qmlx4C6
 wrQeMSZddaAdFPIct/C9ef6+hgrsXGN/4ku1PZNyvinzhw88K+j1odfFeGVoe9Mu6C2KHTaN
X-Proofpoint-GUID: M_WgAUAmABJ1Ajy217MGRjjgmfWOSAoZ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-27_10,2025-05-27_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 phishscore=0 mlxscore=0 adultscore=0 priorityscore=1501
 mlxlogscore=472 bulkscore=0 malwarescore=0 impostorscore=0 spamscore=0
 suspectscore=0 lowpriorityscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505160000 definitions=main-2505270178

SM8750 does not require an XO clock in the dt as it is the
parent of the TCSR refclk_src, so move the compatible to a section
where the XO clock is not required.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Melody Olvera <melody.olvera@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/usb/qcom,dwc3.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml b/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml
index a792434c59db2e6ba2b9b3b8498ca43f0f8d1ec4..298b1472ccbc4cfeb04927da29ea40b9883d03eb 100644
--- a/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml
+++ b/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml
@@ -227,6 +227,7 @@ allOf:
               - qcom,sdx65-dwc3
               - qcom,sdx75-dwc3
               - qcom,sm6350-dwc3
+              - qcom,sm8750-dwc3
     then:
       properties:
         clocks:
@@ -366,7 +367,6 @@ allOf:
               - qcom,sm8450-dwc3
               - qcom,sm8550-dwc3
               - qcom,sm8650-dwc3
-              - qcom,sm8750-dwc3
     then:
       properties:
         clocks:

-- 
2.48.1


