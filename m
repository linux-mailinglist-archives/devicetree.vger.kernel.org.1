Return-Path: <devicetree+bounces-210219-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BD6C0B3ADAD
	for <lists+devicetree@lfdr.de>; Fri, 29 Aug 2025 00:48:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 85E4C171678
	for <lists+devicetree@lfdr.de>; Thu, 28 Aug 2025 22:48:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B68132853F2;
	Thu, 28 Aug 2025 22:48:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="beQPK2U1"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04C3D17A2E1
	for <devicetree@vger.kernel.org>; Thu, 28 Aug 2025 22:48:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756421303; cv=none; b=HjrXm9GDmtqiLRUayw40w2CY6DT1IPjlkOHaUS4VJrOOH1Z0Aqqknut0JlqI1F5DNYnbXtuC/0yoOHLL74521EJc6BzT5x/f16SXfBNkxny8W4qXL048CJtHvA4ic38sfNt1U0WpmE2znR1rwPnbW9WHVUJVBeFueQZwx3VLWYM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756421303; c=relaxed/simple;
	bh=FOA+nFwy00hIT0YcjAiu0uAEFt+KYDwqUWC8bfIWO/w=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=VlEsClpOSvSwM+Ae8cyE6UF9BpT/RX/KXhdZZUoxyWclIvvzQa1xsvwcpfdMwsxgjETpuvLYgGOatehkeyssUFF7u4iWGZzPEYhtp3JvoXfAn96ar+VFELRGp2y7swHMeN2vMBqkvagy1gsXd1swjFaVvTKe8j67nOw7batm2Lk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=beQPK2U1; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57SLWYbG024730
	for <devicetree@vger.kernel.org>; Thu, 28 Aug 2025 22:48:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=/dao4LU7+//F5YHnY52ZzA
	UJu4s3jN0lCeKuP230rBo=; b=beQPK2U1MnYvVM511WZb01Lg/ieE32xecCxTM6
	RyKRmb0uHZ/mtDB6XGd30W2e8xlghv74eBxc9k+wP3ZknLNYKkTNsPn95vo1DDvZ
	sotT3OEVa0KRSgm8n2oHcd6c70hlvo4YrAUdwUlLQ2oYsB9cgNwHSZL9OrDYoilG
	tZaZVganpvsDtp9PmKjTXfFR+71Z4SqqM2JHY5FwFZpTq/pN/bVz9zCqn3yzkw9N
	WYdGg447FK84qGbgjN1mtLMEt6HvUvzAdMJii62ZJYiK+tzqbRNshDuB3Pig3BqG
	5nd4KDkyCATAELjSL9PFiu7xTLT7FvfjH6ySX71RjcXjBV1Q==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48q5up1v1t-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 28 Aug 2025 22:48:20 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4b10993f679so35053201cf.0
        for <devicetree@vger.kernel.org>; Thu, 28 Aug 2025 15:48:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756421300; x=1757026100;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/dao4LU7+//F5YHnY52ZzAUJu4s3jN0lCeKuP230rBo=;
        b=LLTvgMVxW0wnZTxdZuxlBziFjlZfDqH6uPMWifpi61Uhix6lQ/iTd8uTYnMEKDqOEe
         PVvCo9k2Ohf/qZPsN0eI9sD+NVcWFTm2nSgI+k/zjsk7uJ83ccOJe70CeRd12PjqnEUV
         4vxG835M+nRdhTitwU4RWsFl2g7G9TMo9aAth9EN+FhORdQdFgge37vWApwaxpMHgC+n
         dqtXjejWGmcRvprZZmY6/Fj/ctcz+9aViHyu8veTxAHpYaU2GHMWhJoGTgNGSVTnMay9
         MevsygPuS4e9sGbVKF2bryMBHCPwwF3W7ADxDVfWu78+yzexzSLWzJ99pJ2uKfrYoinv
         DTQw==
X-Forwarded-Encrypted: i=1; AJvYcCVgKEUoLX+FJJXWo+GehJeh6HPqw6de1jD2H+hB2tG0yt/lSwe0lBJPbsK3aOarCA4hK6z0zKRCz3VF@vger.kernel.org
X-Gm-Message-State: AOJu0Yzz9UhWHK2r8UXe4iRxK+D1K6bZOoqN8fGMs+/vwlmfecj8SnXv
	2OqlLDWdJP3mb6t6ivroq2+mzXlQUiV6U+4gf8H4IpibyefHCekcjQ71+94FYRMKyqj/uwNhuDj
	XQCi9A1UPYlOLoF2RcsEwn15q43Pq4S6LGiA4n5E+AqzE1j8g7c0dBdc9dVOhv/IT
X-Gm-Gg: ASbGncsLSjN5rUnUEi/vXeGVnYQIAWsvaiIg7gIS84y6C3INW6VqCwPAq0/1tRBBwXq
	SaJHwZGCNSHmRNZQsE3ZJI9M8cgSBYjQiE5DLBefS1s3XwdngBzkOgQ0FRqPpTBObRLnUXPqCDz
	zYmCiA8BymvPpX7huCRcNt3jhNPg+Gnyuh8momrtFgbI42jNNQ1bcD/2lV5FO77dY+GoPqxvrE7
	xYStA1myCY4VE6xHUNocbtTlqh4OF/g4aL4aB4Eldh3wHurgMsn0xVwpss3uNUmK02LALSAb5zB
	QSK74X+M2nytKXAni7u5Q0hB8dz2wCeYpYYTqhgOLsR4S3wkCHVZdezzY2h+hfQzmolbmzN2rIz
	DAYR0KRzMF75ExEw5dulD5StN6zhDjNTBEx/ebNhXA+XBX8K5S8f0
X-Received: by 2002:ac8:5807:0:b0:4b2:e015:ce20 with SMTP id d75a77b69052e-4b2e015d7cfmr153052161cf.68.1756421299931;
        Thu, 28 Aug 2025 15:48:19 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IECWSf+7YieR4fzeodYoAQjIh2hO4P0pcfZdQKc0kMSyFKRgzpWjBG4bjgo6TCO8R2n4X9PWg==
X-Received: by 2002:ac8:5807:0:b0:4b2:e015:ce20 with SMTP id d75a77b69052e-4b2e015d7cfmr153051671cf.68.1756421299359;
        Thu, 28 Aug 2025 15:48:19 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55f678452e1sm143807e87.85.2025.08.28.15.48.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Aug 2025 15:48:18 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Subject: [PATCH v7 0/9] dt-bindings: msm/dp: Add support for 4 pixel
 streams
Date: Fri, 29 Aug 2025 01:48:13 +0300
Message-Id: <20250829-dp_mst_bindings-v7-0-2b268a43917b@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAK3csGgC/4XR3WrDIBQH8FcJXi+d3ya96nuUUTQ5tsJi2mhDR
 +m776RlZJCFeSH85fg76LmTBEOARLbFnQwwhhT6iMG8FaQ52XiEMrSYCadcMtzK9nzoUj64ENs
 Qj6k0Smjvm9oC9wRvnQfw4fYU9x+YTyHlfvh6NhjZdLpujaykZW1rK4Wjmku7u1xDE2KzafqOT
 NrIfwRFlaBLgaPga66klq3gttr1KW0uV/uJQjczYmYMM0tGIGN4A7TilTJUrDByZipaLxmJjHO
 CadACJbnCqH8YNTGsUh6UkV6sPUr/YphaMhoZMEw5XEpU+g/m8ZrgAPjxKeTXGImzCcqpKORtE
 eGW3zubMgxY//gGrSklIkICAAA=
X-Change-ID: 20241202-dp_mst_bindings-7536ffc9ae2f
To: Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>,
        Abel Vesa <abel.vesa@linaro.org>, Mahadevan <quic_mahap@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Krzysztof Kozlowski <krzk@kernel.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=4552;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=FOA+nFwy00hIT0YcjAiu0uAEFt+KYDwqUWC8bfIWO/w=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBosNywzGxvQVKQyj7Al85XsV7UJaWc5WxAS73Pf
 XG4iPHfKMyJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaLDcsAAKCRCLPIo+Aiko
 1cviCACQIuuKEwAmwCNQg1L+PsEQQyppipRlvEWUsAAZ7jjq4m2cAnD8z+TKelc+uiveoCgewuN
 jsbIeOp/U7Em8mdlVDpz7VW+eP6vcyW1lqum880nFoEOUrMpmxRitbzX0JI+GTjzjpNISOxGNXa
 c7CFO0tgxFo6AAy4+3b3YxN7IQNM0rYShwsdSUXv/VZRrpC6zAv4vRZ4oYxnpZnIyrkJYUtQODF
 iyfoG6gErAuOTFxb4v996SCOE84PNPsJU4vg04U6fAEQohHVp3fTzTQFp568PQWLz6/6NeihrSL
 BCffDEG+ofQu2S2V9ljsKZAzenFA3dD3IkAGT1qzHQJ5myEX
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-GUID: NBgOkswu290L9uKLerS1Q6Johxg2oPkt
X-Proofpoint-ORIG-GUID: NBgOkswu290L9uKLerS1Q6Johxg2oPkt
X-Authority-Analysis: v=2.4 cv=JJo7s9Kb c=1 sm=1 tr=0 ts=68b0dcb5 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=2OwXVqhp2XgA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=COk6AnOGAAAA:8
 a=rtwBFDCfVmBUUsGphOkA:9 a=QEXdDO2ut3YA:10 a=dawVfQjAaf238kedN5IG:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODIzMDAzMSBTYWx0ZWRfXyfU4grF43fmO
 1a1vazvm9uVcc3oaQUrVQ548af3z0Ag0vnDYbZEP1Hps4F6tTr47gAvHA2aW0YmT5+yy4e7hagG
 0Sv7vBu+YPO9eAaHrNZacCGE0jDarfyab2o6RTvgNUFUFSYXfZLvHWAPd6p1K+6G3k6bPOcudRM
 xuJOt+YfF6oAes8/De/HIMeBQa/Urx/qWvFINNF7UHMjvo4b9B1jWsMi9cuv2IK541jzilLFsGr
 QeZbkUVggggrgWz4qxJOTcwegAErXUA6xcyy525c7kK+20XPDkFmQdrU2neskcYulYh96krCYcj
 Yka4fLLMJY7n9L5ZI+1JFh4Acehoj2+YyHuk6uOb5Y22G+psUzMsMPDplN8UdTGBUgW8iU8fe0D
 nYTHdVUB
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-28_04,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 adultscore=0 bulkscore=0 spamscore=0 impostorscore=0
 malwarescore=0 clxscore=1015 priorityscore=1501 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508230031

On some MSM chipsets, the display port controller is capable of supporting
up to 4 streams.

To drive these additional streams, the pixel clocks for the corresponding
stream needs to be enabled.

Fixup the documentation of some of the bindings to clarify exactly which
stream they correspond to, then add the new bindings and device tree
changes.

---
Changes in v7:
- Changed fallback compatible for SM6350, it doesn't have MST
- Reworked MST schema in order to remove nested ifs (Krzysztof)
- Didn't pick up Rob's R-B tag since the patch was heavily reworked
- Added P2 / P3 / MST2LINK / MST3LINK regions
- Link to v6: https://lore.kernel.org/r/20250815-dp_mst_bindings-v6-0-e715bbbb5386@oss.qualcomm.com

Changes in v6:
- Switched platforms with different MST configrations to use single
  properties entry instead of using oneOf (Rob)
- Link to v5: https://lore.kernel.org/r/20250809-dp_mst_bindings-v5-0-b185fe574f38@oss.qualcomm.com

Changes in v5:
- Removed SC7280-related comments, it has no DP MST support
- Link to v4: https://lore.kernel.org/r/20250809-dp_mst_bindings-v4-0-bb316e638284@oss.qualcomm.com

Changes in v4:
- Picked up series from Jessica by the mutual agreement
- Corrected Rob's tags (Krzysztof)
- Split X1E80100 DP patch (Dmitry)
- Removed SC7280 changes
- Enabled the MST clock on SDM845
- Link to v3: https://lore.kernel.org/r/20250717-dp_mst_bindings-v3-0-72ce08285703@oss.qualcomm.com

Changes in v3:
- Fixed dtschema errors (Rob Herring)
- Documented all pixel stream clocks (Dmitry)
- Ordered compatibility list alphabetically (Dmitry)
- Dropped assigned-clocks too (Dmitry)
- Link to v2: https://lore.kernel.org/r/20250530-dp_mst_bindings-v2-0-f925464d32a8@oss.qualcomm.com

Changes in v2:
- Rebased on top of next-20250523
- Dropped merged maintainer patch
- Added a patch to make the corresponding dts change to add pixel 1
  stream
- Squashed pixel 0 and pixel 1 stream binding patches (Krzysztof)
- Drop assigned-clock-parents bindings for dp-controller (Krzysztof)
- Updated dp-controller.yaml to include all chipsets that support stream
  1 pixel clock (Krzysztof)
- Added missing minItems and if statement (Krzysztof)
- Link to v1: https://lore.kernel.org/r/20241202-dp_mst_bindings-v1-0-9a9a43b0624a@quicinc.com

---
Abhinav Kumar (4):
      dt-bindings: display/msm: qcom,x1e80100-mdss: correct DP addresses
      dt-bindings: display/msm: dp-controller: add X1E80100
      dt-bindings: display/msm: drop assigned-clock-parents for dp controller
      dt-bindings: display/msm: expand to support MST

Dmitry Baryshkov (4):
      dt-bindings: display/msm: dp-controller: allow eDP for SA8775P
      dt-bindings: display/msm: dp-controller: fix fallback for SM6350
      dt-bindings: display/msm: dp-controller: document DP on SM7150
      arm64: dts: qcom: sm6350: correct DP compatibility strings

Jessica Zhang (1):
      arm64: dts: qcom: Add MST pixel streams for displayport

 .../bindings/display/msm/dp-controller.yaml        | 134 ++++++++++++++++++---
 .../bindings/display/msm/qcom,sa8775p-mdss.yaml    |  26 +++-
 .../bindings/display/msm/qcom,sar2130p-mdss.yaml   |  10 +-
 .../bindings/display/msm/qcom,sc7280-mdss.yaml     |   3 +-
 .../bindings/display/msm/qcom,sm7150-mdss.yaml     |  16 ++-
 .../bindings/display/msm/qcom,sm8750-mdss.yaml     |  10 +-
 .../bindings/display/msm/qcom,x1e80100-mdss.yaml   |  20 +--
 arch/arm64/boot/dts/qcom/lemans.dtsi               |  46 +++++--
 arch/arm64/boot/dts/qcom/sar2130p.dtsi             |  10 +-
 arch/arm64/boot/dts/qcom/sc7280.dtsi               |   3 +-
 arch/arm64/boot/dts/qcom/sc8180x.dtsi              |  23 ++--
 arch/arm64/boot/dts/qcom/sc8280xp.dtsi             |  72 +++++++----
 arch/arm64/boot/dts/qcom/sdm845.dtsi               |  15 ++-
 arch/arm64/boot/dts/qcom/sm6350.dtsi               |   2 +-
 arch/arm64/boot/dts/qcom/sm8150.dtsi               |  10 +-
 arch/arm64/boot/dts/qcom/sm8250.dtsi               |  10 +-
 arch/arm64/boot/dts/qcom/sm8350.dtsi               |  10 +-
 arch/arm64/boot/dts/qcom/sm8450.dtsi               |  10 +-
 arch/arm64/boot/dts/qcom/sm8550.dtsi               |  10 +-
 arch/arm64/boot/dts/qcom/sm8650.dtsi               |  10 +-
 arch/arm64/boot/dts/qcom/x1e80100.dtsi             |  30 +++--
 21 files changed, 364 insertions(+), 116 deletions(-)
---
base-commit: 8cd53fb40a304576fa86ba985f3045d5c55b0ae3
change-id: 20241202-dp_mst_bindings-7536ffc9ae2f

Best regards,
-- 
With best wishes
Dmitry


