Return-Path: <devicetree+bounces-180953-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DB6BAC5BD6
	for <lists+devicetree@lfdr.de>; Tue, 27 May 2025 23:05:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 667CC9E1C50
	for <lists+devicetree@lfdr.de>; Tue, 27 May 2025 21:04:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 23DB2211A29;
	Tue, 27 May 2025 21:04:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="OyTIxGaN"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F9D620F085
	for <devicetree@vger.kernel.org>; Tue, 27 May 2025 21:04:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748379899; cv=none; b=C3UyKxan/5MeaAO2p9b96DPBrP4vMZX8tYLYk2MgMXdzXo0xDrkdWiPXt8YxUjHm6E8rFAY3o6trLUj5ALin5HekIwt6tvSiH2SxtC2Xq9L2oIWL3hy4K49tIt9ggvy2h5Sz/CpfV9MqLa84EVUZtlNVsjyxfCZSK2kjT48aAkM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748379899; c=relaxed/simple;
	bh=5FExpQUZ/FHZEchRY6UIA2qfjFJXzxNKpcsVYOWNwso=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=NP2gkpKtRMC8lTfukOEF8dz2PYdKDrdT5kDVHUZhuh7CRR1ZIm7kRClebrT2ceiLLhn5O8esXLV5xYUYPem08DNeeWgyhBJTMgwseIiddo9k/FHIzLZHIk29JjKLxP4+PDZVEtadGUnlaranH6aiOa7C/hKBjjpvl9smRzPO1FU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=OyTIxGaN; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54RIHnJY003458
	for <devicetree@vger.kernel.org>; Tue, 27 May 2025 21:04:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	63TelnMaZLywwjt0ZE9rQRxentiOmbDDz3cY3YJGWYQ=; b=OyTIxGaN6HeRDMcx
	xggCgzI1x739zuaZPZkK/Z17fZFI0xZzNM/YZTFgTheQtJbDdNXhYKBxKf+W5MN2
	DX8XrPOieMGaVw9TjzUVF4PkLqbtw5/UOSGvxncP4jZB4c+ONewBgvuoXu/L4LMS
	RsVbMLBofHwDTxffM9mQV2K24JGIDxD8dXqbpYoYLqfHpWrJmehsl1O5ZhwyHgI+
	PAnUyDcepMBh4K5Xs0pqa6+UZZCPwpClbD1RYn9hv8bOjITC9PG6585FidoNAWSK
	aSzs98QMYwA0XAQESPVxSAqKW1RLbIFbSw7z7WslNtOr+t5ckkJkntlD807oyV0f
	Y6Qzjw==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46u66wgf4p-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 27 May 2025 21:04:56 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-742c00c9044so2957853b3a.0
        for <devicetree@vger.kernel.org>; Tue, 27 May 2025 14:04:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748379895; x=1748984695;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=63TelnMaZLywwjt0ZE9rQRxentiOmbDDz3cY3YJGWYQ=;
        b=ae1YzwvwmbsgylqFYWlLljI3Piw0bjlJoySAEptxStYzy32/QYQapTTN1uzGRb97s8
         /uVnNNi2ocOR4mLM1Hjb2hgI0AIh7W/ygiFLv86b93BvWfem5BwtsTwkkvclPgZrTeyv
         idrlYqh99jlW0opS2psx4NvldfVj9PHQWB2aFI/+/htstafZu4ueMpRaLdANMtePT1CG
         Ddk4NKsG1M3BqECW1vVwq6bzu6D01IFBkJ515WPXOea2kicJbSJ6nTeMCu4XZiLG+jC+
         av2Oj10zjUrbBNck1sOubHW5oU2bR+beol30fJidJAe4oqc5yRMU9cv7As6i20S1LuHn
         JZ/A==
X-Forwarded-Encrypted: i=1; AJvYcCVe4DU6PCxhMgFDslV0cBgHP971GJTsl7FaudGXsUOgPgRD6tf2sSqdiIXyDH5fvpf8lTwP1qNoLWTa@vger.kernel.org
X-Gm-Message-State: AOJu0YyZ4LDLWRPY9bwHsHVHweUCbjdf3C/+Z6MvpOKqUZifwgco/OZ0
	flUxHS5zWNEfEUndkalfChlqXyct73KlAbDDIb6vc1lrqIpdXtAC0XFvVyTY8SLRamP2C0ZAufB
	Mq5OQHsyWJkJmfuchuAdLnLBliiuCyFj1k6YusjkSgM0pPHJKVSScZUvFpg7cknph
X-Gm-Gg: ASbGncvmd3R6K2vMpaoJmRWFSadRpilch0eJt3NhRo4Wh1iRLfoD+n+AAw/OcOXkGzk
	sR5bQBFwIna47te2a0KSwFP9pEJvI1GMoa0xrVr8zPz8C/1ax4jr+AIa4aPF3AepPXPZokhVRwx
	NOW0sKQMJuHxfjWkGTwox8pcycC7wNo757+HFFAutpOS+99XYu6tMbqcaScIFNdZbMA3Gz2TjLe
	G8axAmsrcmP+KpYGAT/T2tqJn/i0xMNYb9ezhmr8y7SMH8eooJtEuOYwWNhXqsL8aH2+IIjcCfQ
	Tg6Yjofl0+unSg5IXcIisXyxW/KfJD4N4/j+GHjlzzwlYH/8/BCp1D2R/T+RfrJf9VA=
X-Received: by 2002:a05:6a00:a22:b0:742:a82b:abeb with SMTP id d2e1a72fcca58-745fdf3f47amr20526686b3a.2.1748379894987;
        Tue, 27 May 2025 14:04:54 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEVTU4ArnKS3XUx/KYBpdSClXfXaPefEciMMvAQUuS6TJ1WcP5QX4l+NUAEE9Sq/8WhMbuLTw==
X-Received: by 2002:a05:6a00:a22:b0:742:a82b:abeb with SMTP id d2e1a72fcca58-745fdf3f47amr20526638b3a.2.1748379894549;
        Tue, 27 May 2025 14:04:54 -0700 (PDT)
Received: from hu-molvera-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7465e64836fsm29167b3a.26.2025.05.27.14.04.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 May 2025 14:04:54 -0700 (PDT)
From: Melody Olvera <melody.olvera@oss.qualcomm.com>
Date: Tue, 27 May 2025 14:04:37 -0700
Subject: [PATCH v6 01/10] dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp-phy:
 Add SM8750 to QMP PHY
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250527-sm8750_usb_master-v6-1-d58de3b41d34@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1748379891; l=1370;
 i=melody.olvera@oss.qualcomm.com; s=20241204; h=from:subject:message-id;
 bh=8DqyV8lJU3L/SgQ/5n/G4b54XOO0JVKsEdNPv+HKEao=;
 b=o1YRULItzlopd45+R1RF7yTgwH4zsRX84NLJyscueOAZIq8dR/2R1drH5MEiKT449uZdTpeo/
 nk9NUMT8WM6A2HSBqhs2UW4zZJSmRT2pJUyfWqLzvb98NRmaK1BG1O9
X-Developer-Key: i=melody.olvera@oss.qualcomm.com; a=ed25519;
 pk=1DGLp3zVYsHAWipMaNZZTHR321e8xK52C9vuAoeca5c=
X-Authority-Analysis: v=2.4 cv=aYJhnQot c=1 sm=1 tr=0 ts=683628f8 cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=COk6AnOGAAAA:8 a=KKAkSRfTAAAA:8
 a=EUspDBNiAAAA:8 a=bbY3M6C_flAL0yJJl3cA:9 a=QEXdDO2ut3YA:10
 a=2VI0MkxyNR6bbpdq8BZq:22 a=TjNXssC_j7lpFel5tvFf:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: fmFGK80bR06Pv4LVFNIgoVRdvVxTh9St
X-Proofpoint-GUID: fmFGK80bR06Pv4LVFNIgoVRdvVxTh9St
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTI3MDE3OCBTYWx0ZWRfXz5MPb/Hsqiab
 XgNIB4ozk0Ft+mhjigvtQVKFXVsQEPqUPXQFkHuwRxdp7WW8X8m8naptDnJClsgfZ71bnkKq0Hm
 VFyJmEtTOWaOs5aolvAemPWJaDZVIpW+WhjL1lgYV2eY0PE0rHC5MrKRhO8iShy2q+LbE4v+8Wd
 yZvjSuYuKluSyQPuqfxeh6OQ2R7SGaGK1JfcyWu3FEFRWt6GxYzUVK9BRmu+22v6sgW/z38OcRt
 H8E+u+3UV6vE42XZENgvgoJxuQT4EQHJXKNvatDoQvn36IMmYIet0m+FjgYjmqQt54XZXyKkkl0
 m8e+ZgNBDozVPIgV4ZGOdeaBi/mnGjP1F3DjFWBkaPs3teak4ZQjTDNXVwyGomnNiw7QWftavEw
 mFJLOev9kxcoMNkrmgpwwJmGjeKrJWbdBINjxvXp6P/wZ3WCfCT+wENm7AaX8hXCRNZZkpC3
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-27_10,2025-05-27_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 suspectscore=0 impostorscore=0 adultscore=0
 mlxlogscore=875 lowpriorityscore=0 malwarescore=0 mlxscore=0 spamscore=0
 clxscore=1015 bulkscore=0 phishscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505160000 definitions=main-2505270178

From: Wesley Cheng <quic_wcheng@quicinc.com>

Add an entry to the compatible field for SM8750 for the QMP combo PHY.
This handles the USB3 path for SM8750.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Wesley Cheng <quic_wcheng@quicinc.com>
Signed-off-by: Melody Olvera <melody.olvera@oss.qualcomm.com>
---
 .../devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml          | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
index 358a6736a951ca5db7cff7385b3657976a667358..38ce04c35d945d0d8d319191c241920810ee9005 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
@@ -29,6 +29,7 @@ properties:
       - qcom,sm8450-qmp-usb3-dp-phy
       - qcom,sm8550-qmp-usb3-dp-phy
       - qcom,sm8650-qmp-usb3-dp-phy
+      - qcom,sm8750-qmp-usb3-dp-phy
       - qcom,x1e80100-qmp-usb3-dp-phy
 
   reg:
@@ -133,6 +134,7 @@ allOf:
             - qcom,sm6350-qmp-usb3-dp-phy
             - qcom,sm8550-qmp-usb3-dp-phy
             - qcom,sm8650-qmp-usb3-dp-phy
+            - qcom,sm8750-qmp-usb3-dp-phy
             - qcom,x1e80100-qmp-usb3-dp-phy
     then:
       required:

-- 
2.48.1


