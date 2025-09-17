Return-Path: <devicetree+bounces-218185-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 42A02B7CA1B
	for <lists+devicetree@lfdr.de>; Wed, 17 Sep 2025 14:06:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A425A17992F
	for <lists+devicetree@lfdr.de>; Wed, 17 Sep 2025 06:10:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 39D42261B92;
	Wed, 17 Sep 2025 06:10:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="k6IkzPHl"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 828C426059D
	for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 06:10:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758089449; cv=none; b=LNGCiakF6lEtXXOLsQFML2KbkR2DI3sNOd8py3I0pVuP6oiH2WvXD+5zpOIua5EofLMre3h9Q6pCiomqKkHFRKrgf2YBF8gvVE4DX3XK0IC/AS8g+7B124ummGxYv0IaSxJKHA1yLGZj0IkngBo/MPpX/0I0GTeibpMQHWJVka8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758089449; c=relaxed/simple;
	bh=tIK0PJHjHLhCI3CxumCBN3sQ6R8rmUvay1Tdd6ERBbY=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=az6XDu19894R+M06s44GQ8Kby+WQrT8wqn0lRf7B5YFCVlN36F+7azLnxPMhcYDzKs2U3PFtMEpibk9F/l9sV50hwZgTUxTjrKnISmOAQXk6espN1XuQgacaJulDUWcgtoCaIEXOH9D/zsM8wa5xoOQc83OojHP4SpOVmPGbmqE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=k6IkzPHl; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58H5SFtf014983
	for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 06:10:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=CmNtqpmUuDi/GJf/fp3CpD
	cNF/feREiz3DtoDKcniuA=; b=k6IkzPHlcHfYTZAxQ/ttGDsuj3QsoHeqQLrA/T
	7eaQUqVf+l/G/9Eu8C7OeQLe3Ux7MkMXWHKnN4skz4N4W7wT7tTlxh1MIRE+G4QM
	WAf2OifqDvkvL1BEW1Z6ww95IXhBFt2W/bOzU7zmaY5uy/rAKs0Meo6C6tzF5kwx
	gk/ONMk6WqldrCrpxE0nmn0QG5+XwiUercGoRTIqyFAx54ATAvQauo7cJhWaYDnC
	fck6FoxRyVMu6MRuepP3O3je1YlRsAJM+uivhN2Uun/hx+KV/Tf4Zp76acuE2e+1
	Gxy4iZ7w4UCyIakltw0JIV7PbSnnX7pmDihMGh560XY/4xuw==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 497fxwh4mx-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 06:10:46 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-77615793f06so4988690b3a.0
        for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 23:10:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758089444; x=1758694244;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=CmNtqpmUuDi/GJf/fp3CpDcNF/feREiz3DtoDKcniuA=;
        b=e29xG+yG9HZY/beCqcPTs+00Cl1w4ziF5Gxyg1TWt3cZbvN0rOZQ+0R4WUpRzGETGP
         WsR9bM+Wbb2KlCKiOkWG8McvAjYx4Ehwt+kl+uJ/IwhgeJHa/me5pgF89xMFGPtnVuvK
         Lt76wVPyeNgKSQD3HV4JvvrZRNQSlx7cityI5UFoSXfjt/cNcR2Dl2ZJuCcs+3xW9tJV
         6xFhR4LdAl9WZoJCrcGnqdDCvOBQ4ORlFLtqI6xQc5/UrXZqSGhlyg4I9Lm2tgsNSGdH
         lxMegICaPqYro96p6EtSniQtdgpD0rcxx3ydvxh3lXcoW2y8b/u/DYI543a8COznHLni
         dbhw==
X-Forwarded-Encrypted: i=1; AJvYcCVvsVPnTyxkUPaQgTMjHzG99OPA1f0/BBCUFtKVFc1mq/e+eOt0V5Uew0hqHX0DE/zWCabNIeiRbbGf@vger.kernel.org
X-Gm-Message-State: AOJu0YxdcI7QzKN/J5STyPph1rSfVxblfdndXzmnb66MsU/eGUAYcRht
	gwv2m9jAAY8IhaUmPYdOZIMFniaB8mloZxBx9OeDVIY3QEU0ubulLP5rYS05cjPFw7xCUOpQzO1
	Xt9LY5VXxX5ov4MDuCPmYtM2ZEa4vKaJ6pZN2u4jnAQgq4cm2exgX2qmBEeDGe5g7
X-Gm-Gg: ASbGncui6YaWqVXX9h7+HMrM4qWGyGXQNqB2vyVSejKSpLCFKX1n94xMz1vqwpNEZwh
	FEnWxf0S7gMofbr3xpKIIGnah6WLs2Y7nQ3sNYyV2qNA7/pzIbQxOF4ruHK+Mt0rwQaO2o2rjM6
	1L61xiwozgWBF5KfOvX92riAD3+5GOPXHN+3+1KG+JIWkSw+Dk/AHUC8MsCNyYz//rpRSssIxdr
	n7/wiDwEqaNHz934qsKzaKu/zeqiBUJpm7LZdLxfcKhV2JJK0ZOxZthpr+YgmJhMeEeoA4sDzKv
	fe6/ZxzRVFVfwGeptVsOXm7rsOVw/YOUaqf1N+H/uR/XXf149uXSIeUd0GHLYn0cGYb749I=
X-Received: by 2002:a05:6a00:3c89:b0:772:823b:78a4 with SMTP id d2e1a72fcca58-77bf72cbfacmr1039251b3a.13.1758089444192;
        Tue, 16 Sep 2025 23:10:44 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG1rbzawJhcyJMjajZgJ1THLDlRFB+xangzzowj1QlWDOrj3QurbHGJqOH0zJ8WIcqutQKpjw==
X-Received: by 2002:a05:6a00:3c89:b0:772:823b:78a4 with SMTP id d2e1a72fcca58-77bf72cbfacmr1039219b3a.13.1758089443709;
        Tue, 16 Sep 2025 23:10:43 -0700 (PDT)
Received: from cse-cd01-lnx.ap.qualcomm.com ([114.94.8.21])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-77607b1917dsm17966812b3a.52.2025.09.16.23.10.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Sep 2025 23:10:43 -0700 (PDT)
From: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
Subject: [PATCH v6 0/2] Enable DPU and Display Port for Qualcomm
 QCS8300-ride platform
Date: Wed, 17 Sep 2025 14:09:46 +0800
Message-Id: <20250917-dts_qcs8300-v6-0-5c862aa80f64@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIALRQymgC/22Q3WrDMAxGXyX4ei7+txPG6HuMURxZWQ1Ls8Zp2
 Ch999lpR8m6CxtLcD4d+UwSjhETaaozGXGOKQ6HXJinisDeH96RxpBrIphQXAhNw5R2R0hOMkZ
 VUKKumbGSGZKJzxG7+LWkvb5d6xGPpxw6XZukx5T8EtpUzzlTs5pzesvb9SElOnNBGdWdDcwaF
 K3j2yGlzfHkP2Do+02+Xsqw1iekpROnpoJsYEGAdJIbkNgxLo00UMvgvXAa0fj8QFK09jFNw/i
 97DyLxevf9eYiwoX2reBWWNdu8y4QD1AcisKNMo8Ugguqa42G1q+oMn+WvzM141ytaZnpkLsAG
 pXv6kda3en88Wtala9DEQLPpzPhkdZ32rE/5jrThoHWCkHWVq3py+XyA656ftYvAgAA
X-Change-ID: 20241225-dts_qcs8300-4d4299067306
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Yongxing Mou <quic_yongmou@quicinc.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Yongxing Mou <yongxing.mou@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758089438; l=2931;
 i=yongxing.mou@oss.qualcomm.com; s=20241121; h=from:subject:message-id;
 bh=tIK0PJHjHLhCI3CxumCBN3sQ6R8rmUvay1Tdd6ERBbY=;
 b=8foHqZfnEDUUksvnaoTMqj7BEIpL0FYkSYzLFBmbnwQQBAdTr1eEuZD3bp1EfS+I2gz3VHzhd
 oZIgpyD7qVtCq8vi1ySZs66owuyFallCQV8LkNXecQMOrNwv0CvW3FL
X-Developer-Key: i=yongxing.mou@oss.qualcomm.com; a=ed25519;
 pk=zeCnFRUqtOQMeFvdwex2M5o0Yf67UHYfwCyBRQ3kFbU=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTE2MDIwMiBTYWx0ZWRfXwSgtBzCyaeuZ
 ekBYdW2ZCh1OgP2yWg1WczImeV6ajBjIjSOLIsx4euxPUIkFtVMAZjh8v9OVWrX5Tr6K4P3dBb1
 5Mjzlj9YDfD/9VzTzDJdTwyeVokrKj7kz6znxOm3C7hiRlv0T9nD9Q7kx4salVeWtlgHD+2biT9
 +txRG1RyklfUtz3oyQNjAJX4LySLIFRby2CPSqA/aEuQCXnuYwlPwg2/FlvBeH81Ap+TxRdpbwg
 vwOoDFmj0XPLMAiUnLLtItTKdjIJpm+UIRwt77SiqRvREey8h5zlpY8Hdi4X9Z2zX2muTOU8NVf
 Rmz4mLdDAImbQxCdSksyy1mdxKEbAbopHVV0oNVrII2yKR7h1KA/H54LIKXzBrDpIEYtHrZ19cY
 fXml1ZKA
X-Proofpoint-GUID: E6ViY2QHzcL4ZNZUrQxBNH2a3aUkpAlH
X-Authority-Analysis: v=2.4 cv=ROezH5i+ c=1 sm=1 tr=0 ts=68ca50e6 cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=Uz3yg00KUFJ2y2WijEJ4bw==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=COk6AnOGAAAA:8 a=D2F59OIt-Y2HKLVK1h0A:9 a=QEXdDO2ut3YA:10
 a=OpyuDcXvxspvyRM73sMx:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: E6ViY2QHzcL4ZNZUrQxBNH2a3aUkpAlH
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-16_02,2025-09-16_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 suspectscore=0 bulkscore=0 spamscore=0 phishscore=0
 malwarescore=0 clxscore=1015 impostorscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509160202

This series adds the MDSS, DPU and DPTX0 node on Qualcomm QCS8300 SoC.
It also enables Display Port on Qualcomm QCS8300-ride platform.

Signed-off-by: Yongxing Mou <quic_yongmou@quicinc.com>
---
This series make top of:
https://lore.kernel.org/all/20250911-qcs8300_mdss-v12-0-5f7d076e2b81@oss.qualcomm.com/
---
Changes in v6: Fixed comments from Dmitry.
- Rebase to latest linux-next and remove merged dependencies.
- Modify DP controller compatable to use fallback.
- Link to v5: https://lore.kernel.org/r/20250806-dts_qcs8300-v5-0-60c554ec3974@quicinc.com

Changes in v5: Fixed review comments from Konrad.
- Use interrupts-extended to introduce interruptions.
- Sort the dp_hot_plug_det node by pin number.
- Link to v4: https://lore.kernel.org/r/20250730-dts_qcs8300-v4-0-5e2dd12ddf6d@quicinc.com

Changes in v4:Fixed review comments from Krzysztof.
- Add the 4 pixel stream register regions and the correspondings clocks of the DP controller.
- Change DP controlller compatible to qcs8300-dp.
- Rebase to next-20250717.
- Link to v3: https://lore.kernel.org/r/20250114-dts_qcs8300-v3-0-d114cc5e4af9@quicinc.com

Changes in v3:Fixed review comments from Konrad, Dmitry.
- Correct the Power-domain for DP PHY should be
  RPMHPD_MX.[Dmitry][Konrad]
- Correct the interconnects path for mdp and align the property order
  with x1e80100.dtsi.[Konrad]
- Rebase the patch to latest code base and update the dependencies in
  the cover letter.
- Link to v2: https://lore.kernel.org/r/20241226-dts_qcs8300-v2-0-ec8d4fb65cba@quicinc.com

Changes in v2:Fixed review comments from Konrad, Dmitry and Krzysztof.
- Reuse eDP PHY and DPU of SA8775 Platform.[Dmitry][Krzysztof]
- Reuse DisplayPort controller of SM8650.[Dmitry]
- Correct the regs length, format issues and power-domains.[Konrad]
- Integrate the dt changes of DPU and DP together.
- Link to v1: https://lore.kernel.org/all/20241127-dp_dts_qcs8300-v1-0-e3d13dec4233@quicinc.com/
~

---
Yongxing Mou (2):
      arm64: dts: qcom: qcs8300: add display dt nodes for MDSS, DPU, DisplayPort and eDP PHY
      arm64: dts: qcom: qcs8300-ride: Enable Display Port

 arch/arm64/boot/dts/qcom/qcs8300-ride.dts |  42 ++++++
 arch/arm64/boot/dts/qcom/qcs8300.dtsi     | 220 +++++++++++++++++++++++++++++-
 2 files changed, 261 insertions(+), 1 deletion(-)
---
base-commit: c3067c2c38316c3ef013636c93daa285ee6aaa2e
change-id: 20241225-dts_qcs8300-4d4299067306
prerequisite-message-id: <20250911-qcs8300_mdss-v12-0-5f7d076e2b81@oss.qualcomm.com>
prerequisite-patch-id: 59af38ff68afe283dccd4295951153e59e512bfc
prerequisite-patch-id: 05fc429deb58c4aadd82f7d0d714af7d34d8399e
prerequisite-patch-id: 52ee61224c7589b2122799998a8e99829d06eb47
prerequisite-patch-id: f664581f48278298bc3501eecf637d1eb16dbf9e
prerequisite-patch-id: 465ab53516efbbe38f85409e7ccb3793b05402c6

Best regards,
-- 
Yongxing Mou <yongxing.mou@oss.qualcomm.com>


