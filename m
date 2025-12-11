Return-Path: <devicetree+bounces-245804-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 4825BCB57C3
	for <lists+devicetree@lfdr.de>; Thu, 11 Dec 2025 11:17:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id BAD65301AD3C
	for <lists+devicetree@lfdr.de>; Thu, 11 Dec 2025 10:17:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2EF452FFDDE;
	Thu, 11 Dec 2025 10:17:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="GBTxvHDT";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Y59HVcUs"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 729562FB983
	for <devicetree@vger.kernel.org>; Thu, 11 Dec 2025 10:17:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765448257; cv=none; b=dmcFmXoIFTxafHwain6siZMREsKybim7JP8OYjb2M5ixQSXSqeWoMmqdMHh59Lh0UhWq9ibGWAXH6bRAlDrRpuKVtl1u98MKxY/eKOG+QDd9lEeXtCl/WFw/nyugoXAhjbu2PMZi+0tbCvBSyxcHiCw31E8ZqVMHCOlqCxLpGe8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765448257; c=relaxed/simple;
	bh=qNGWcAov8RIDoxIEP/74cO5bpg4jdNYIs6s37ZDzBc0=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=gk0/9d4vS4jN37nAyy+wpJWw94IRdBV4+iD8xG2eCQEN9aR0WTg2sJ+XS1ej4ZBZXNFN/zaW+NhiCPpwGgvK1M2HlYSCPu+/D+1ZG+KOcnVKpYNRl4qpRUlr0zP1j/W5EkQ3QxOjtIQHG5vbH3n2yHzO7+l6Aofz5RCc2PQBQZQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=GBTxvHDT; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Y59HVcUs; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BB9ZR061646877
	for <devicetree@vger.kernel.org>; Thu, 11 Dec 2025 10:17:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=yIoqupIbLitrzZ0z6uCE2i
	S5VaCJD1kUszqIjbamWQU=; b=GBTxvHDTYnb4WISoTjvwYIjPcBUXk7RCI2Aaym
	B/ztAwIrrSQwBsvC0ppDgzUnQXas4Q3pqNgRsS7TFKqByYYEepgACQq3Ig8NvtgM
	1EzltAFP23wxi6Jl5PGc3pv+XWiPMWgUXN6yki2cAnhWPRtqUr8vhloFiQ4Bc0/i
	Jf3lnPB0fDejMdVKf36S1r4i7MWIPQ5WS9QPVqENlg9uR45hi2mwvwqrX0+hAWKe
	5GFhX9KbbAPCuCBmOZht9cuY502CV227awd+ccRj0bpFAxF4z/oLwSn4j0RbQHEl
	FVHoH4Jri3PFb5tjrqWmsmN+U8rB2oQPLPA24NT1+CLaVREg==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ayt708e3u-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 11 Dec 2025 10:17:34 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4f1b39d7ed2so14937121cf.2
        for <devicetree@vger.kernel.org>; Thu, 11 Dec 2025 02:17:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765448253; x=1766053053; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=yIoqupIbLitrzZ0z6uCE2iS5VaCJD1kUszqIjbamWQU=;
        b=Y59HVcUsGhMc/sqCraL87dTi4RPjvWSONN80WKpRkzXZU5nkOSIebVU27v+tqegWMs
         1rKjv1VUvmJ2Rn1Y/KO/8cdi49h8iHrA50LTE5VNqODccO4HUgWIKCHCdmJJwrRrgapd
         GK3z2yOfvxfXgwRIQvDnLXfrWELCiqZ2wNEU+bGvdFXYVdXYbPDXleotk+eiPjiXYqwh
         ZBhrlJjmxJSC75d4DErJ3mEjvsip+ZLGQJuhum8QSDzgK0coQhNKAaJsCkMu1xiZHviV
         LFR0U21Y8eel2Q+k9R5HDVuCP5soPApb9em5SHRlMrbNEoYnawRDkKTmszPzRWZ5Sk17
         02Pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765448253; x=1766053053;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yIoqupIbLitrzZ0z6uCE2iS5VaCJD1kUszqIjbamWQU=;
        b=uNDs1S4y4BQB17Egcc1iYjwsG4w+P6Ly2KlScH4CECn2GxSrUNt/qRoQrBbzOaTA2S
         C8JI4I0/jZJIaVGDV7Ns4H6C5i1MDh3v4A7ek5kTfomI6zYjk9ANcbphiBr4osDBtXlw
         ELL7ct0i3cyhc1hLo6xSC0BjXLLX0+DuCKBLiMtiQam/xmtngxKxk2TjLqm8gcIK53xb
         cRbAuwHpirOieVYV9D72uqRcsSIPFBWOSl1QYDQoLAW4pstBCP8//iYv9AaB0ShxE8iE
         bTpUyDXp99am+BrN0S1EPDsiMYODWRGUuPgEvY/pEzOVlUHfCqsj9y46Rx0lUnLD09My
         GQtQ==
X-Forwarded-Encrypted: i=1; AJvYcCUwuao5F/kSxw/hPo0PxouDmPu3ciTb+4qOERzMF15rp+5d0o8zB9bXTDTyfBUlyNk1Iwuw4YFZUB0c@vger.kernel.org
X-Gm-Message-State: AOJu0YxNodyHC9RkhwbcblTi1drnDWuGXnQYkexw7eeOIeoAe3ZL4XRO
	olnpOCgW40kFPA7fbvLIgWNRZ1P9iTC9Jj/YJ3+wZn9ZOAKvgtggwBcO0EeB4CERuCg+tCBnXsJ
	7LypCdq4zgSd4G/TnRAZQrp9OyYLBbyzPoT1j6o5AsLOcxGyclDjGkelxawavUiO7MOegENXO
X-Gm-Gg: AY/fxX7W6wMXxULIs3hTTfXt+w8b9tivKLk2U6TOWFzZRb8TRSKmq630+uIba3pCy80
	QSqYoNfOJ1qL5HWfIjOxy+paHP7Tqx5CGvsTYvUOJzUIaag8boDt7omNn62siEDG3dL6mp5zwAR
	T/QIk3Dz1MzR7P2Ts7wUGElKT5hCAbs0ArA3pky1m6FUn8bk+MiDnBsyHoCwS5czhYr2baWx+hA
	2FBaCOE14r2xiD3wmcfBdJkeAQPVCXsGA3QJ/MRB56NaXaq6ID6SRq0yiJDueRLIGj0/E7uloF6
	QJput9GDpI5RkAAFK5AJDeQGIwM7Ft8sOqmiiUC/9t97ZSYD7K1l8yEvO2+NEVIeQ+L2KYjBuXH
	udDmOg7J7DkuvdtY=
X-Received: by 2002:a05:622a:40c6:b0:4ec:f07c:3e85 with SMTP id d75a77b69052e-4f1b1a9b174mr73152591cf.43.1765448252050;
        Thu, 11 Dec 2025 02:17:32 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFmWyqlpm4ije4EDHxWehml5rJFNcFDBMiVXFIGGIAmz/RHJ2O3FfjGRGoDAdTF/+AbtDiiIA==
X-Received: by 2002:a05:622a:40c6:b0:4ec:f07c:3e85 with SMTP id d75a77b69052e-4f1b1a9b174mr73152231cf.43.1765448251502;
        Thu, 11 Dec 2025 02:17:31 -0800 (PST)
Received: from hackbox.lan ([86.121.7.169])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b7cfa5191efsm225381766b.40.2025.12.11.02.17.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Dec 2025 02:17:30 -0800 (PST)
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
Subject: [PATCH v6 0/4] phy: qcom: edp: Add support for Glymur platform
Date: Thu, 11 Dec 2025 12:17:21 +0200
Message-Id: <20251211-phy-qcom-edp-add-glymur-support-v6-0-5be5b32762b5@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIADGaOmkC/43NTW6DMBAF4KtEXtfI4x9sZ5V7VFkYbMASxMQOq
 Cji7jWR2kZiQTcjvdHM954ouehdQufTE0U3++TDLYfy44Tqztxah73NGVFCBdGE4bFb8L0OA3Z
 2xMZa3PbLMEWcpnEM8YGpUQDSalopjbIyRtf4r1fD5zXnzqdHiMurcIZt+2PzQ3sGTLBTrC4rb
 YCL6tL7m4mhCLFFGz7Td1AfgzSD+VgwpsBxaXcgewMBjkGWQaiVAM6AGSh3IP8FgQD/H0ilpIp
 JwqhrdqD4AykRx6DYQAJSMl2WDTSXkFJxn0yfn4YiD3Rd1/UbNaLMdRkCAAA=
X-Change-ID: 20250903-phy-qcom-edp-add-glymur-support-2a8117d92b89
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>
Cc: Dmitry Baryshkov <lumag@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Abel Vesa <abel.vesa@linaro.org>,
        Abel Vesa <abel.vesa@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-47773
X-Developer-Signature: v=1; a=openpgp-sha256; l=2664;
 i=abel.vesa@oss.qualcomm.com; h=from:subject:message-id;
 bh=qNGWcAov8RIDoxIEP/74cO5bpg4jdNYIs6s37ZDzBc0=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBpOpozCmZkhn6r19tDW4FmYUz2BDWzqJhHzIgiA
 JVyNzf026+JAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCaTqaMwAKCRAbX0TJAJUV
 Vs5+EAC2FidAFarc4PYMxFqe7Q1B60XvbdKZHvLTSrOrTvBe/U5gKU0xfVK/rYz73sAD8iyIlPW
 VBFT/990/H4ytLpYfwn1PbEOqfsL0BiPEnHbsKKIVa0xdPmphucrCXWMD/k4Ia6yTj1zaeeJy51
 Hn4nWxStoM2/B9yfRgVSIfmKk2EYTk6ruywN7WStwlBpNA+Aqdq2kQJQUKze6mYglkoa99kqciv
 ANg0k4sp/IIQBPsA5MXsgGk0kEuHgPxqRoa/mcd6bw/eO3XmVvU0y25rknSC0qcPoyHEAGAfBPP
 aFKs9HrA3UWvYzKReh4yJfqRUPcQq8XaK8YgprbYJ7qwXq3gKh/QoRfDigJtZwxhjAJEEXSqaCe
 9tLTAaqcXiaAR9aLM/NlBqFna0lVVgH7/29nBiSIrCVjTNo++g6Mt7lpoi3DaFE1RN/Kg/9UJLt
 eHp5LcYFs+UTQsaO71bp7PzI26jB+q0lmi9PuBGd/kqVrK65iU+dcKDfOxtI4kSOh6qErqX4/Tk
 UA4sttl7QhijV9hdJm9JnNGE04JlDRuUE7MoZGnk2OZrhOnViUubVvKjciM8kXI2Abhm7BRy6dR
 7DoiXzmGYIqGDzoxWHQmTtUr+GIzomIH/N3T5qn4cht+7IoyTXkZ/NdAypF/WS4/eN2+e0NIpqQ
 QZTPmVnw5gboFIw==
X-Developer-Key: i=abel.vesa@oss.qualcomm.com; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjExMDA3OCBTYWx0ZWRfX585YmMbF3eoT
 Fg+8P/kEa1fsJBIC9ROJEqjckWI5GXSAoIDz+LcmyhSeDkVed7/JDmkKtkUiap3zYSoAZTjmtgr
 C5nERhPfhEO7GZ7XbHmMKS0x4WPBLvJvnd75lm2ErfcGe0PmTzmRPvkJRzEJfJKS3P0zwQM1x06
 +Lj5kCIEVVzMgkrLHIDfANJ4Jnt3ZhquqIyZKDRS8yFgn0HEQE1gy+sq51u6kFuRba1K/nhW4rv
 X/E1+Uyhod9VEl/DPyzGPPq9HV1ALG213neiAzks2eYuJxNy7QoCDTNU+Lml8sMr9YEPcPIXUeZ
 3MTbV8y7+7bzrLD70FRgGvrT5Bsbw3yNn57+K8z4WJjBPpMJ70u7H+ioVYnBie35gXjt2/TiMoR
 JHmUPJcLrWNKsKznHum7I+YhGcO1zQ==
X-Authority-Analysis: v=2.4 cv=WYIBqkhX c=1 sm=1 tr=0 ts=693a9a3e cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=DdBtMnqNxkYIvXj6ev4VzQ==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8 a=bC-a23v3AAAA:8
 a=EUspDBNiAAAA:8 a=rv5esH4l-LSXXVRZdzkA:9 a=QEXdDO2ut3YA:10
 a=uxP6HrT_eTzRwkO_Te1X:22 a=cvBusfyB2V15izCimMoJ:22 a=FO4_E8m0qiDe52t0p3_H:22
X-Proofpoint-GUID: mVU10oJQyKSV8zgMI5AIbF6mzUPXzMIJ
X-Proofpoint-ORIG-GUID: mVU10oJQyKSV8zgMI5AIbF6mzUPXzMIJ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-10_03,2025-12-09_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 suspectscore=0 priorityscore=1501 adultscore=0 impostorscore=0
 spamscore=0 bulkscore=0 lowpriorityscore=0 malwarescore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512110078

The Glymur platform implements the eDP/DP PHY version 8.
Add the necessary registers, rework the driver to accommodate
this new version and add the Glymur specific configuration data.

This patchset depends on:
https://lore.kernel.org/all/20251030-phy-qcom-edp-add-missing-refclk-v5-0-fce8c76f855a@linaro.org/

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
---
Changes in v6:
- Added the rest of the values for the AUX_CFG arrays for v4 and v5
  platforms, and re-worded the commit to explain why. 
- Added proper values for the VCO_DIV for v8.
- Picked up Dmitry's R-b tag for 2nd patch
- Link to v5: https://patch.msgid.link/20251205-phy-qcom-edp-add-glymur-support-v5-0-201773966f1f@oss.qualcomm.com

Changes in v5:
- Renamed phy-qcom-qmp-dp-qserdes-com-v8.h to phy-qcom-qmp-qserdes-dp-com-v8.h,
  as Dmitry suggested, and addapted the include guard.
- Added my Qualcomm OSS signed-off-by tag.
- Link to v4: https://lore.kernel.org/r/20251014-phy-qcom-edp-add-glymur-support-v3-0-2772837032ef@linaro.org

Changes in v4:
- Force fallthrough for 5400 and 8100 link rates in qcom_edp_com_configure_pll_v8,
  as they use the same values.
- Picked up Rob's and Konrad's R-b tags.
- Link to v3: https://lore.kernel.org/r/20250911-phy-qcom-edp-add-glymur-support-v3-0-1c8514313a16@linaro.org

Changes in v3:
- Split the DP_AUX_CFG_SIZE change into as separate patch, as per
  Konrad's request.
- Re-worded the dt-bindings commit, as per Krzysztof's request.
- Link to v2: https://lore.kernel.org/r/20250909-phy-qcom-edp-add-glymur-support-v2-0-02553381e47d@linaro.org

Changes in v2:
- Sorted alphabetically the both the compatible and v8 specific
  configuration.
- Prefixed the new offsets with DP in order differentiate from PCIe ones
- Link to v1: https://lore.kernel.org/r/20250904-phy-qcom-edp-add-glymur-support-v1-0-e83c6b9a145b@linaro.org

---
Abel Vesa (4):
      dt-bindings: phy: Add DP PHY compatible for Glymur
      phy: qcom: edp: Fix the DP_PHY_AUX_CFG registers count
      phy: qcom-qmp: qserdes-com: Add v8 DP-specific qserdes register offsets
      phy: qcom: edp: Add Glymur platform support

 .../devicetree/bindings/phy/qcom,edp-phy.yaml      |   2 +
 drivers/phy/qualcomm/phy-qcom-edp.c                | 229 ++++++++++++++++++++-
 .../phy/qualcomm/phy-qcom-qmp-qserdes-dp-com-v8.h  |  52 +++++
 3 files changed, 274 insertions(+), 9 deletions(-)
---
base-commit: 801584822345ed46c0443c1a66ead9173a47c723
change-id: 20250903-phy-qcom-edp-add-glymur-support-2a8117d92b89

Best regards,
--  
Abel Vesa <abel.vesa@oss.qualcomm.com>


