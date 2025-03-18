Return-Path: <devicetree+bounces-158571-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F457A674EB
	for <lists+devicetree@lfdr.de>; Tue, 18 Mar 2025 14:24:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4FEAD189A91A
	for <lists+devicetree@lfdr.de>; Tue, 18 Mar 2025 13:23:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7776220E030;
	Tue, 18 Mar 2025 13:22:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="d96vf3+N"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1191C20D4E3
	for <devicetree@vger.kernel.org>; Tue, 18 Mar 2025 13:22:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742304132; cv=none; b=KtXaWslIe/Dl4V/6QTWJ/bYf4uztjF9oYIF0wiMxgQ4t4puU9CEEGKjL9dhs9K4bcJFiVCYvrAUN6mDkSsh/Jdu1VrAWi6maTwnkJm3n3DCrGLd/fNIHPluS7v5tWE14GrjZ5m7zrurAq4gD8Htr7WFgvYNRsDXkWb17AkqbxGw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742304132; c=relaxed/simple;
	bh=BRp8ajWiZ3GoKRS/wFU2oNiCDwEre0XdpX0f4IeiHvE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ECF1TL+2NOw15tZrFSfxM0UHSBQw2H9Gcql5Z4Pf7tj/bKO4ja6W//gjcdHba3QImXDoefhbzO4JICJqzMbHwspOXg4FrGeo5m2axDbG22SnjpniTNe4ndQKq+QUTiQjh5td0Grs0DHGgtWALvDp8BdUiDuZ4dRxMPp2T0rKM1E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=d96vf3+N; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52IArbB0020735
	for <devicetree@vger.kernel.org>; Tue, 18 Mar 2025 13:22:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	7upYdJ6N1NsAA6K8KEn3cSwjep8M82X8zV+sP22K8jk=; b=d96vf3+Nyrwbkf3v
	IxFpEpsrzOzQK7/SLK59qX33IrMkDo1YaPNHntbWXmgKgRe10oSARvD3oFftUkCH
	Flq52dYs/1eDqxaCTONHF+pMT0sKBM/5De0BEF7xIPgQaVgCvqLGIEfqW8T5ub9n
	UBOb2ZHQns5UHcYezcLyT3WKb7IvIu0HA961QW5iD+HZFpn31j95gc0FvAKrkMxP
	vj49lCQlXagPq7uKiPAbovjNlPUPcJjKvHHJlKe15iZkhOxMsKL/dZ5jY0tKqs2u
	fe/622IgiG1IdGBeqY5ZudeoW685gp4fNLoPlwXuCoCwox5ChQJLx11Q4G1kXzS6
	uYQmoQ==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45exxbhxfv-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 18 Mar 2025 13:22:09 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4767816a48cso162883831cf.3
        for <devicetree@vger.kernel.org>; Tue, 18 Mar 2025 06:22:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742304128; x=1742908928;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7upYdJ6N1NsAA6K8KEn3cSwjep8M82X8zV+sP22K8jk=;
        b=V46W3um5zxVDkY9Srbg7W5PMxxSydFaSrennTd8jaByoW8J0+8bH9kOtU/Kw3fL+v/
         8VSmNLofjUt/fxeHMNPGFOV3DpuLafJKOA14vat0nahytnrYBm3/0OTwlxs6mnntdKfM
         KADp+jt1SGBsQqQsa8fc9kFnDChV5R+AX7+27R6UW+IHJ9iLIblad8BJUOMbXzL2pqLy
         OiOZM6fY9XZXRCuRO1Jpiu4Zr9yFVqSPyQ0ixC5iIvg5KEORWFxlr6mdBP53uONMUxq5
         S5CN44wxh/w2h70ypvMxZTNbXNprz7WCD+/rKvIqnJG5QRdE3bHZwo7/ejGfd+QMRSlW
         b/Eg==
X-Forwarded-Encrypted: i=1; AJvYcCVRI215yO9eTzJvzjd5Lk9b9B3292R9bUlkgj6r8XeYi/e8P2eo2KnFfZK8lnKfiLFq1yxOUjXl58sM@vger.kernel.org
X-Gm-Message-State: AOJu0Yzr7dOLIFPPItctfDckq0WfGvoy5WlZqN1f1VgQwYH/CEIPkBqG
	5UfIRzI6UzZHXjSn+a+Hbtq4/NHs3zbKnHHpmgKVJf5jyphKxTbCJXNKrUfP0MMrAz1CnHjPmeD
	cx0rcLHn+/OiNstJoIftpqnqPrRJTnaceJLq3Zl0p1d3SEYT/vMsxtNM9tbn/
X-Gm-Gg: ASbGncs2Z/ZukDrz8sJFeAA88IqrMP7fn/COFl2OXjhWx6FJW7W71gWaFwy66MUl/bQ
	vsU9spbsk674IdP+CwclmjDp837CLZq9pELMvr386LjF0paBFUOJ8NsLf5fQZrjB939uRFm6rC7
	rJWiGiqXPnAExFVDjh6SL0BhuIk+VNZz0JOIEnxq9+vEZT3A0D44pJ3mbn4AWr5wecBba0hJUPh
	nPrvkrgn3TY9FWjF3PzL8hpm6Hin2/msgwEGnuc8ybhaP04ifz8hX22XDCmx9py/J0NSadKYUZs
	/VEibAdMUn/9Vlr3+SC+HgUXS7CQolvWJLx/awwkTaJaJYY8zLrDD3GMoiGmrTt0WKLN851Fwak
	hmErcYI8tlT5a4AHRIt+NPktwDiWP
X-Received: by 2002:ac8:7d14:0:b0:476:9e30:a8aa with SMTP id d75a77b69052e-476c81b8083mr237297241cf.38.1742304127786;
        Tue, 18 Mar 2025 06:22:07 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHyjFpZgE4AvVRtmbsyhAdFg8jsqIKxx0eZ9NIiT1apJ6WBsEKHhpnpfBGf/aSEao+g0riIZQ==
X-Received: by 2002:ac8:7d14:0:b0:476:9e30:a8aa with SMTP id d75a77b69052e-476c81b8083mr237296911cf.38.1742304127430;
        Tue, 18 Mar 2025 06:22:07 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-549ba8a79c4sm1664831e87.226.2025.03.18.06.22.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Mar 2025 06:22:06 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Tue, 18 Mar 2025 15:21:57 +0200
Subject: [PATCH v2 04/10] dt-bindings: mfd: syscon: add
 qcom,apq8064-sps-sic
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250318-fix-nexus-4-v2-4-bcedd1406790@oss.qualcomm.com>
References: <20250318-fix-nexus-4-v2-0-bcedd1406790@oss.qualcomm.com>
In-Reply-To: <20250318-fix-nexus-4-v2-0-bcedd1406790@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Georgi Djakov <djakov@kernel.org>,
        Lee Jones <lee@kernel.org>, Suzuki K Poulose <suzuki.poulose@arm.com>,
        Mike Leach <mike.leach@linaro.org>,
        James Clark <james.clark@linaro.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Leo Yan <leo.yan@linux.dev>, David Heidelberg <david@ixit.cz>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, coresight@lists.linaro.org,
        linux-arm-kernel@lists.infradead.org
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1154;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=BRp8ajWiZ3GoKRS/wFU2oNiCDwEre0XdpX0f4IeiHvE=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBn2XN1WbdvxuNPjibDFM2fVqXm5cN9LXfh95gmK
 NG/CBLuHLaJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZ9lzdQAKCRCLPIo+Aiko
 1coNB/4j4qf66Vdg53zrAGhVZa9Tk/yd2qYYnPAaO2sqDfaZwxpHJKCZ+YOYVBQi2P9yiPAOOUR
 uDf9GVf78TdxK5ZWe3OxPHkvBDW6DXlaFS2w8bySrqpyGcxZDVZwT9LnD8QfLSEI73LmfSRcDhx
 0m8c/0wFJHcOfj+H/vrs05P80MZR1xrHKh1r79bhLfDEajwLek2X7tN4gVK9/XSG+s/71bwxf9w
 J/rexdi9kFAoE//gdW+xVpjMZzX8/gTTj6pJF6vxm+ve1MCA60IK8mlZ3aH8WsPaCxrHGW5/JXC
 UUhB+72pCgni91F4HxSBG+SRmJe7NTgzaWH3vp1CHFhYzE5r
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Authority-Analysis: v=2.4 cv=QN1oRhLL c=1 sm=1 tr=0 ts=67d97381 cx=c_pps a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=Vs1iUdzkB0EA:10 a=EUspDBNiAAAA:8 a=Gjla_oY5Z_Fy-GYXBTcA:9 a=QEXdDO2ut3YA:10 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-ORIG-GUID: LEqgpeD931m38NLlAreDLixJX6ylXZkn
X-Proofpoint-GUID: LEqgpeD931m38NLlAreDLixJX6ylXZkn
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-18_06,2025-03-17_03,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 clxscore=1015
 phishscore=0 spamscore=0 impostorscore=0 suspectscore=0 mlxlogscore=652
 priorityscore=1501 lowpriorityscore=0 malwarescore=0 adultscore=0
 bulkscore=0 classifier=spam authscore=0 authtc=n/a authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2503180099

Add compat for Smart Peripheral System (SPS) Interrupt Controller (SIC)
present on Qualcomm APQ8064 SoC.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/mfd/syscon.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/mfd/syscon.yaml b/Documentation/devicetree/bindings/mfd/syscon.yaml
index 2836e4793afc918067d3ef93baf5bc7096f72f12..0d2530bd05b8c114232926e3ba8b0fed99e276f9 100644
--- a/Documentation/devicetree/bindings/mfd/syscon.yaml
+++ b/Documentation/devicetree/bindings/mfd/syscon.yaml
@@ -95,6 +95,7 @@ select:
           - mstar,msc313-pmsleep
           - nuvoton,ma35d1-sys
           - nuvoton,wpcm450-shm
+          - qcom,apq8064-sps-sic
           - rockchip,px30-qos
           - rockchip,rk3036-qos
           - rockchip,rk3066-qos
@@ -195,6 +196,7 @@ properties:
           - mstar,msc313-pmsleep
           - nuvoton,ma35d1-sys
           - nuvoton,wpcm450-shm
+          - qcom,apq8064-sps-sic
           - rockchip,px30-qos
           - rockchip,rk3036-qos
           - rockchip,rk3066-qos

-- 
2.39.5


