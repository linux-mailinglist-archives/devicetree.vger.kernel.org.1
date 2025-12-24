Return-Path: <devicetree+bounces-249492-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C0846CDC150
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 12:11:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 62BF63042483
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 11:11:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1EABB31AA8F;
	Wed, 24 Dec 2025 11:11:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Zv5J1DSE";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="L7idV+Ze"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B36D2EBDC0
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 11:11:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766574664; cv=none; b=PLwZ0tLzkgamRU6ql5R0rfLMTWqImRkSICS42Bf2q7IwWmuhn7skc+VDaHo1qt4qluGsUjOQDFca1EnrM2h/1V/fdsivoeuI5USSzwGsWb5aGLajuFpucKaep6qTbG07Zrp9+brHQCy+cXzJtQoFI8tzxjeVSalhuT7ShQ0qTwI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766574664; c=relaxed/simple;
	bh=D+uTSNaECmJZICpMJm7ATuyq7f15JQFPv1mvQdAQrTw=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=A0sVuOJVYjF8VGRrLdNKiPo9OTA+2E4jpuXDKautyS+kiQu1HGqhfnL2POI2JEubdX+6kJqV/B8J732UhlWTy80KNey1ZOqQvN/JVebXfSbQa4OTUNR9vnDLslIafrN6cnOS4bqTOnkyNeLyBkKYjlrgogHjuCPxxFvCA2dzo18=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Zv5J1DSE; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=L7idV+Ze; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BO3h7C54134029
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 11:11:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=eND4k2bQNoHugRX6xP9D08
	AEi9x2YTwmh5SQPR0G+Co=; b=Zv5J1DSEKKOLUYzjE5HhWVMaNPPy00jNHX0d5+
	YkQexr5KVYA8ijehv6KxCRGWQYJwc8bqmocll5HlwNnpFWdXOK9Neeb8O7zCvKmV
	jN3faPN5kQtaA4V4E+06jezZsP8xqOYE+pCs+Ehe7abGZVtf4PE0IkklXUHQHxvk
	d06ImpSZDiekPbzX+7HEERrmL2u5KRzu9JGWfQWou2LQ1rna7RV8U31M5qfUb9KI
	m/R3TB29NnpO4z/XAVP0gc5lKdz7SCjURmCshEo4BLzmNZXkyFJH/wnhUslGPRiU
	oVnPd11ZVgdIpdGTNf3IILQtikajbExnf3Y9KYCaiGMqbPWA==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b7x46tv6n-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 11:11:01 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4ed79dd4a47so123977241cf.3
        for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 03:11:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766574661; x=1767179461; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=eND4k2bQNoHugRX6xP9D08AEi9x2YTwmh5SQPR0G+Co=;
        b=L7idV+ZeGMhSv65qqrsp1VDX+1/mHVvq4gORZ8SLtz2NQlv3KFLXm4iVJo4uKSnQyc
         QFerBELRQhSlzgITPhTNJN8NALYS7rW7GtPy0UVTL+yDgwvqW4Y6wPyvm89T8BeXQ3Kp
         lABtE0UnLaHNVRccjHBc/IkjvI15N51B+H5K64+QH4oLNqvxHCYTsa7YGibTKAnVr0hs
         VYivMJYhINAYkSgk2ZtIZMhOfhJnLlhqkMcjZUKNz1r9G0DsdPwJRM68jpleVGwvkki+
         bx1xtYNbO7zt2HFi1hm+tnn8/2hFjWbRgEwJJSFvMw62fki2bxls3wiGQ6Bo6pea2Yu3
         O9aQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766574661; x=1767179461;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eND4k2bQNoHugRX6xP9D08AEi9x2YTwmh5SQPR0G+Co=;
        b=E9DXk8cj7ZR3w6nf4Idm/19neKCmQVSJXZ8VNqlVbY4/XNr37x/MffaBKy+wKixjJA
         zGwLYqHoCp7NwnIuDENQzBt8rMxdgJ2WTLzr/fOPFuqM9kJhnoMYBlMDX+d/ixdlQmUI
         9c3qZ9s/29Ivz2S5VGFPnGoWkeaBvuLzz2MyvaOS8OehvAAERRDnMBmjivz9fS/CihPr
         gsdKRqlOSAqcOTXplH4XllI4vDpyESqsOqKZYHHhf2gzFSl7lBJSkY7ogjlMoHPDwf8s
         KDaNvOy4K1Q2GpFP+qfBW624dQB1Xgg0cBdLiJpb/U8MRVpSvfOxGGAZ5BQ6c0KhX3VQ
         4eWQ==
X-Forwarded-Encrypted: i=1; AJvYcCX2ixk2nZB+IxnGzrUPyCBi+GCX/i6VOE0fuKvqCqIpAU08J2PnB4VFEqis1fPhh+PYyNxwaBjEQr17@vger.kernel.org
X-Gm-Message-State: AOJu0Yw4woMtBxnQXVnENZRfEdPPr31Mq08gfFw4HVBKvEVKozrKlA/N
	zr6DVZOw8SbPHBlABqr17RuRSEQZjFj3xHUWPLOEITlIMeaOtVog32qkfvXuTc0LYrBCPIjBswl
	i+PAbYtea3wPH2ugvikYhx9gGv6ZOJSZQpm0XACQFNrJnCFnAz+G1vUR/RfSAWXTv
X-Gm-Gg: AY/fxX4B+j4T6Iud/KiZ0p+lhsjk7DqGmgB2nU3sHKmsSqhy4hneM+7+AQ5cQKEEp48
	mlfURmNQPMPw0MnO+8fkVT52AXvRmk+vgjDvLiH1ist1AUarycSpSYALJ6rjOMJABBP607yKnfd
	VBQnurp+WenmBwIuxkRdLL98yE182xDIwvWsEvgDm1dxdDwW2U3C5z+N7QefQern+b2Eh7jkgom
	Gttz4oyRWIiC0LQ810Ev6nVilsAjff2sBPZc1ijCvimJIh6GnFVE7+OpeH1UnIWTRyW5HTff++K
	3usC3VS1fGZazL72xyJeYDyD76nET/WEfoLoXHKDvbB0JGUcawXQHNGX0Jv1gltRhcvEV4eJQk8
	SIFMH7Vi3LILEek0=
X-Received: by 2002:ac8:5dc8:0:b0:4e8:b446:c023 with SMTP id d75a77b69052e-4f4abd791d1mr267213151cf.49.1766574660478;
        Wed, 24 Dec 2025 03:11:00 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEKZA1S/GR18OFt56AFX/nEIr8aiQPN8OYdNz+QT6DinhQ5AkVKJzhs/ZSnwnjoOgIlekCgfg==
X-Received: by 2002:ac8:5dc8:0:b0:4e8:b446:c023 with SMTP id d75a77b69052e-4f4abd791d1mr267212671cf.49.1766574659919;
        Wed, 24 Dec 2025 03:10:59 -0800 (PST)
Received: from hackbox.lan ([86.121.7.169])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-64b916adc61sm16799036a12.31.2025.12.24.03.10.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Dec 2025 03:10:58 -0800 (PST)
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
Subject: [PATCH RESEND v6 0/4] phy: qcom: edp: Add support for Glymur
 platform
Date: Wed, 24 Dec 2025 13:10:43 +0200
Message-Id: <20251224-phy-qcom-edp-add-glymur-support-v6-0-4fcba75a6fa9@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIADPKS2kC/43PzW6EIBQF4FeZsC6GCwLa1Sw62y7aZdMFCo4kK
 g6Mpmbiu5fapjWxibO5yeHnO7k3FIy3JqDHww15M9pgXReDeDigslbd2WCrY0aUUE5ywnBfT/h
 SuhYb3WOlNT43Uzt4HIa+d/6KqcoApM5pkeUoKr03lf1YGt7Qy+n19PyE3uN5bcPV+WkpHmG5/
 elIdztGwASbjJWiyBWkvDg2tlPeJc6fF3ykazDfB2kE42POWAYmlXoDshUIsA+yCEKZcUgZMAV
 iA6a/IBBI7wOplDRjkjBqqg3I/0BK+D7Iv0ACUrJciAqqowshuQyqiZ/aJI5vVqzYexYXkeWF4
 QWjUtCC/8PO8/wJMUmaU3gCAAA=
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
        Abel Vesa <abel.vesa@oss.qualcomm.com>,
        Abel Vesa <abelvesa@kernel.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-47773
X-Developer-Signature: v=1; a=openpgp-sha256; l=2903;
 i=abel.vesa@oss.qualcomm.com; h=from:subject:message-id;
 bh=D+uTSNaECmJZICpMJm7ATuyq7f15JQFPv1mvQdAQrTw=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBpS8o68JRKhNasBuwj0ePI4f/AzXv68GOwEOecq
 Ct3e/mtwEOJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCaUvKOgAKCRAbX0TJAJUV
 VtrSD/9rMJU1PStDCSNziaNhiDcahqEgNsKrHPEWZ9xa64+3h/SkVaCun+UihaWGsk3W2B6eI+d
 zr7oaK9A1+NI7Tzg0qqm01h3HmPYpvkFp3L09AA0/74A00LcfTCJ+gu/Cx8wYxT5bDItknWBQwf
 bCRjR1Qd1qTT9susNE+mmVqwoe+GU3YD801ByWxcCWPvZ6/UHqgMY2aJbnFhmR4AA7II8Gto5Ci
 9pjxrj8quDwGY4AGfJAbQo1ISPrgfPA8S/JPhcQWYg/eoGGPcEfNRQWbsM6BXwugA52hjY2/S46
 cU0U4IFDBg12yK35KSJAA0Iei0OYwFVmMQYEnjxv1zjVK7CumyM8lWQ9v4qYxdgZYun8a4hTG0N
 X44YnvmB3nJKsmraclyt5P+nCxDt1XdrNyTHzj4Frlj4GaeYoPhHh12nsPG3NYVis1/wkCrqWJE
 kLAB6FaETOFtVrsH1ey2fWaIUXSNSsoxA1HWZX9hTr8Q+5GHuNQHsZ1qiWRkCOKrHXFG7ZDVC8+
 ClkNTfabW1UO72lNZgxTvgj9EMhbv9Q6BY5D6NvfLs6C01Z59Ez1i1gKLChDCZ/81Ops+bgWFtd
 hqEzqyYaM/KhXccljARFvtPzHEnTI/MrvcQO9Ps9OnAV2w2pYNtiPiDF/BXWo5C+FNVubShgTWR
 wkrPSCnHdT2L+Fw==
X-Developer-Key: i=abel.vesa@oss.qualcomm.com; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-Proofpoint-ORIG-GUID: wIcsaRztkaR5M_1-C3ATctI0q5Aq555g
X-Proofpoint-GUID: wIcsaRztkaR5M_1-C3ATctI0q5Aq555g
X-Authority-Analysis: v=2.4 cv=aOf9aL9m c=1 sm=1 tr=0 ts=694bca45 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=DdBtMnqNxkYIvXj6ev4VzQ==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=bC-a23v3AAAA:8
 a=KKAkSRfTAAAA:8 a=rv5esH4l-LSXXVRZdzkA:9 a=QEXdDO2ut3YA:10
 a=a_PwQJl-kcHnX1M80qC6:22 a=FO4_E8m0qiDe52t0p3_H:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjI0MDA5NyBTYWx0ZWRfX+7kDqL6IeT7y
 sVcvB7Tod+DrLgQAmZIG63TSdh+A/CYPryG3fQHc38t6+SXF5asFtvvUmcn/LnVePSCs4BEo8g5
 zB5XAAdQA0UNIxlZU8pTmbq9PV5/fO7Vortwd+GJfmltoV7jpOGWgYFRXinIugJ18MFbV+8isAq
 Qu4/Fnzbbx55/0J6WEP294wuNJgOmUHhdBVeHZyI+mYZ5h7rDpkYVzoSwWQINe+hVTn80pKCH1m
 5RRCb9CEcLbQDLMCOJCEWrZhC//mBkSHRmGYjlGPkVAClAHVfaYU3+v4IipFkrahQlh/HwUOcmk
 DwoY+UZ/EdhMa96fZ7mH547iEckP4UxLS2f6+lcEAzVbppPW1Zc44QV3gPKVhI7/8TGdXHzv3H2
 semvAe5JxQTbjtEYUf4TKpVb1rq+Gj04vVT0WwCN/q9ou/m66xtQJI16JChfXuvvGvrImaxfH0M
 5EKd/Pb9jtqGh5kkbPA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-24_03,2025-12-22_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 phishscore=0 suspectscore=0 spamscore=0 bulkscore=0
 lowpriorityscore=0 malwarescore=0 priorityscore=1501 impostorscore=0
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2512240097

The Glymur platform implements the eDP/DP PHY version 8.
Add the necessary registers, rework the driver to accommodate
this new version and add the Glymur specific configuration data.

This patchset depends on:
https://lore.kernel.org/r/20251224-phy-qcom-edp-add-missing-refclk-v5-0-3f45d349b5ac@oss.qualcomm.com/

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
---
Changes in v6 (resend):
- Picked up Dmitry's R-b tag for the 4th patch
- Rebased on next-20251219 (+dependency)
- Link to v6: https://lore.kernel.org/r/20251211-phy-qcom-edp-add-glymur-support-v6-0-5be5b32762b5@oss.qualcomm.com
 
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
base-commit: f8beda16dfb950d9ec35e7a195251361e98ebea5
change-id: 20250903-phy-qcom-edp-add-glymur-support-2a8117d92b89

Best regards,
--  
Abel Vesa <abel.vesa@oss.qualcomm.com>


