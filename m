Return-Path: <devicetree+bounces-219657-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 25965B8D5F3
	for <lists+devicetree@lfdr.de>; Sun, 21 Sep 2025 09:11:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B30CF44268B
	for <lists+devicetree@lfdr.de>; Sun, 21 Sep 2025 07:11:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C92792D062E;
	Sun, 21 Sep 2025 07:11:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="LmneTwd3"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E275C1E5B78
	for <devicetree@vger.kernel.org>; Sun, 21 Sep 2025 07:11:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758438697; cv=none; b=jg05GW8LDfZfSlmEbmQN1Bd+dClFV2DEfGmRbQIkLt7udk8EU6sOW0p+WR98QJILpw6L6FL5H3Xu+Tp5JvdMFJADddiPu6g3XmYf1QROWgjqVlJ224qJoYw48MfSqAtKjagD+9rvYGHjcWAaeRQ58rSdfZjyIHfTxquc8psA+WM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758438697; c=relaxed/simple;
	bh=qCBUZH6H2gcrsKaJFR1+rygBnZPeE1GPMLWvNkY/i+M=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=HbKwwVHj4OhaJ9Ep80N/bxDMf29q0eq8NkSbih+w5JJE17UEXWFyk9Y+gv9+oYxDHH9SM9Dt3qMi0nEg+OFl1bsa7WxMHCTnW0fS7zpFJR+kNrpxmtXd+69mHkTtVXzOj4jttezCzFGv0im1DPV3ddQSEixjxCGB/UZM5W7IUuQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=LmneTwd3; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58L3w7LD004646
	for <devicetree@vger.kernel.org>; Sun, 21 Sep 2025 07:11:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=675tRa9BLzBeTvCVeI0XOe
	bRmK0iVzgJEs7KBylFXRQ=; b=LmneTwd3M91yPEiCecmzJtBCuFhsKqHM6jDqza
	L+ShO0odPvNOCmb9ErJqR2Vrbs26OjaNWXwAzk42TsA7MU8SbXW/Cz0nvAjC3BDt
	Fcu9tQt9AoMRqXCr6eRA4AFufZvhfoxxMQkWGKMHKgKErmR04lTCP90sRsenDYTy
	BdX+9UH/tA76tNYllEwBOlJUDjWY4CWtzqtCYowR8ATEg9EjmtVZRl0LI4ryqS1k
	rITvqH3EmeSGxHCpHEaFvN/gqTqz7rXfPRCKS/miQD6WRBELTPEoPomHbA55Q5UQ
	q/oPKRtPewlatnd8Mc0L0iW3CeaycIrsH0VS9A3gUgEK40dA==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 499k7ssxaa-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 21 Sep 2025 07:11:34 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4b5e91fb101so100407121cf.0
        for <devicetree@vger.kernel.org>; Sun, 21 Sep 2025 00:11:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758438693; x=1759043493;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=675tRa9BLzBeTvCVeI0XOebRmK0iVzgJEs7KBylFXRQ=;
        b=dghEO42l8tq9ejN8xUl8Sw169npH8ev0BQKDPQOj5W8O5vOhi7NG7VZXOFvsknP3RM
         kER1OyFPsTIFxvISR2pMXRnWkPq4TZaj6pWxkpQgiCLVEV5lDI7++YeQD6b1bUB4g4kQ
         hF1H2lo3JhvJAFgx45SGedqbca+s0+S1wmr3Ma89sA2XwSA9Hi+UcfFgqPY0aqbUIDz1
         KTRbMI1HNF4fQ3da6Xenbuv1MwE2cCkxZlsYw24rP9NhBmnTPg/MobMSFhCrhCNnmFkV
         naCkOIMDK4ygt1ug16yfeibke/eQpFMqJsUdXyPIZFeOgmWKxwXnSxnyimXdwsI3LG6u
         Evyw==
X-Forwarded-Encrypted: i=1; AJvYcCXtatrL/QVduyDCUpBbqHh6IrYvydra3VoUPcJQ3HIotaHmA5QF5W8cD4E97+3q/+HNhmsgyOsS6isz@vger.kernel.org
X-Gm-Message-State: AOJu0YwH4KFLHkBlYYEYcSISu8EVmseAO0Jz5As6j8g2rXuF9aIshria
	3/C+J76SyqI1htQ3jnU9KzblK9M6x8DpU1uYNbhPhZez4xuFUEd0sYRFKZ5gEVPaOSv6hnoqKGQ
	raBeQwFsfqzlKnU6SbWGEcpS+/h5uJ+zySsBlGxFXzARXNpt4bVczEF1BHsyQXMkf
X-Gm-Gg: ASbGncssd6Lldo7lN7lOOec5rlk8QKSnTFFxwt/RKlv5d4UIOqvuCBZPPcrwUEhYvIF
	wdiVSV2s8Vxua0KmVZ0cE5QT/Lyh4ts3HCXXJDvtzDfJw9pBux0vugzDRhSLJngDpMv2Mje6gI8
	zFfS1xjAvlb4F/Y8V38q846mwOVNOOcHb2iy9Sq/4N13xq5tdmVwu6RoZGFQ8uDEnpWbzjVW6t3
	tAUBRYHd6TUsMmprdugSGhJb7i+mixayvXN5aBmhNisbXSlkdeklgtByvI2+kKnnuxj4pLXxpi/
	FCvfccHdZ37Jq6TZkepAjKHddwfcSuiPXFopHUTAMRhuaFdjzKkNSbVDjuHytj7r8Nb22Rs0GtW
	NZlTiNJ8VjSaEzX1ou8KGyWNfqjOGtkonBdyaL1SmnnUw488T3itg
X-Received: by 2002:a05:622a:5c93:b0:4b6:2ca5:2035 with SMTP id d75a77b69052e-4c07416be64mr110892701cf.81.1758438692661;
        Sun, 21 Sep 2025 00:11:32 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF6a/nr7VJ5660O8pA5uGtxJd95HVUds2QIGHx6/8ri+YcRxb/26sTse9rVPDU8C2VnT/uCww==
X-Received: by 2002:a05:622a:5c93:b0:4b6:2ca5:2035 with SMTP id d75a77b69052e-4c07416be64mr110892471cf.81.1758438692257;
        Sun, 21 Sep 2025 00:11:32 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-57e06875c2csm144031e87.4.2025.09.21.00.11.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 21 Sep 2025 00:11:31 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Subject: [PATCH 00/14] arm64: dts: qcom: add refgen regulators where
 applicable
Date: Sun, 21 Sep 2025 10:09:16 +0300
Message-Id: <20250921-refgen-v1-0-9d93e64133ea@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAJ2kz2gC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDI1MDSyMD3aLUtPTUPF1LC8MUAyPzNJNkc1MloOICoHhmBdig6NjaWgCoDWN
 yWAAAAA==
X-Change-ID: 20250920-refgen-981d027f4c75
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        cros-qcom-dts-watchers@chromium.org
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2330;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=qCBUZH6H2gcrsKaJFR1+rygBnZPeE1GPMLWvNkY/i+M=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBoz6Ugg6uQb3dQUMhj7mY9NTbD+ccrO5lCRouqT
 lQkZHHdlNaJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaM+lIAAKCRCLPIo+Aiko
 1Q0QCACbQOwQac8SR8RN18wAZAPDfujqsWIbvKwhvgsAeAJ4+LDpyZImczUTVHBDTCyovVUVYA3
 yq6gp7lwp7NpTlR+uhUWkLf2P7srIW19/+w7jc112Tl2IhMlerwhX6d+htFu0MHvKhcevsy9Cfs
 JV+/OHUZTHcso0Y2QBsrhFmG73h3o719rdWaYtDceZZB4ZsBdzSgJbpFTQZ9Z3nn9k5ZQL3muf7
 za8uKKnzabY8T1K/7PzB/zEeK2RawLTuDhigmBGMRD4T9UctJE98xjTA+Mlhe/Bf5C8LsEEN0MQ
 sJIIaiWtuvbKIZ59vu/u/DWd2HMpQ0XrTSUrhM4+CHuACH8k
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIwMDAxOCBTYWx0ZWRfXyeP6C8SmMLyO
 GiwgQ6XO3x/B8B8ZY1Xje/XK3qlLRbucTa5V1u2E+tx2/lqF1BaOTr4XCu1DUlIufbkHk/GAIoI
 2pAK2P5a4MLKcJw+ApMpFrxg/IGCBeFSFEADWMqXJvMkD9r74rx5tuXeFzhmQ+/3ktnwn6597Mq
 WgrSd3HW/Y8gwRIS8gqBDb5sYO1WrvP6UMdIJ+S/09SWKDsyYQ2+bq+mirLzsPwvLSG7QKELKyJ
 4VaJLaSvCt6hZZkdekmQkLIB/1tj8l7LvYqqSh+nqQE/W3tCfu+oKydoOhCTswECbaJ0Gobx7DG
 4WehIz7YPRYvUzaNCyrI1Dp+sBSbiP/MziJTINnSWESompstBbM5kBYi/05BVi/3Nlk9sszQyVj
 6jv8sy1V
X-Proofpoint-ORIG-GUID: 3XbKG-Sv1G5Xv9Q9XimIWTSzpmGaxtPq
X-Authority-Analysis: v=2.4 cv=bvpMBFai c=1 sm=1 tr=0 ts=68cfa526 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=qtLNUSdA59iILLCgdDoA:9 a=QEXdDO2ut3YA:10
 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-GUID: 3XbKG-Sv1G5Xv9Q9XimIWTSzpmGaxtPq
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-21_02,2025-09-19_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 phishscore=0 bulkscore=0 clxscore=1015 suspectscore=0
 malwarescore=0 impostorscore=0 adultscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509200018

On several Qualcomm platforms the DSI internally is using the refgen
regulator. Document the regulator for the SDM670, Lemans and QCS8300
platforms. Add corresponding device nodes and link them as a supply to
the DSI node.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
Dmitry Baryshkov (14):
      regulator: dt-bindings: qcom,sdm845-refgen-regulator: document more platforms
      arm64: dts: qcom: lemans: move USB PHYs to a proper place
      arm64: dts: qcom: lemans: add refgen regulator and use it for DSI
      arm64: dts: qcom: sc7180: add refgen regulator and use it for DSI
      arm64: dts: qcom: sc7280: add refgen regulator and use it for DSI
      arm64: dts: qcom: sc8180x: add refgen regulator and use it for DSI
      arm64: dts: qcom: sdm670: add refgen regulator and use it for DSI
      arm64: dts: qcom: sdm845: add refgen regulator and use it for DSI
      arm64: dts: qcom: sm6350: add refgen regulator and use it for DSI
      arm64: dts: qcom: sm8150: add refgen regulator and use it for DSI
      arm64: dts: qcom: sm8250: add refgen regulator and use it for DSI
      arm64: dts: qcom: qcs8300: add refgen regulator
      arm64: dts: qcom: sc8280xp: add refgen regulator
      arm64: dts: qcom: sm6375: add refgen regulator

 .../regulator/qcom,sdm845-refgen-regulator.yaml    |   3 +
 arch/arm64/boot/dts/qcom/lemans.dtsi               | 110 +++++++++++----------
 arch/arm64/boot/dts/qcom/qcs8300.dtsi              |   6 ++
 arch/arm64/boot/dts/qcom/sc7180.dtsi               |   8 ++
 arch/arm64/boot/dts/qcom/sc7280.dtsi               |   8 ++
 arch/arm64/boot/dts/qcom/sc8180x.dtsi              |  10 ++
 arch/arm64/boot/dts/qcom/sc8280xp.dtsi             |   6 ++
 arch/arm64/boot/dts/qcom/sdm670.dtsi               |  10 ++
 arch/arm64/boot/dts/qcom/sdm845.dtsi               |   9 ++
 arch/arm64/boot/dts/qcom/sm6350.dtsi               |   8 ++
 arch/arm64/boot/dts/qcom/sm6375.dtsi               |   6 ++
 arch/arm64/boot/dts/qcom/sm8150.dtsi               |  10 ++
 arch/arm64/boot/dts/qcom/sm8250.dtsi               |   9 ++
 13 files changed, 153 insertions(+), 50 deletions(-)
---
base-commit: e5a7b3109c05f8aae05357fdcdaa3cfeaa99d241
change-id: 20250920-refgen-981d027f4c75

Best regards,
-- 
With best wishes
Dmitry


