Return-Path: <devicetree+bounces-188907-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 29E96AE6018
	for <lists+devicetree@lfdr.de>; Tue, 24 Jun 2025 11:00:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2A6213B2187
	for <lists+devicetree@lfdr.de>; Tue, 24 Jun 2025 09:00:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A920427A460;
	Tue, 24 Jun 2025 09:00:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="IkwDwFTM"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B8172571CF
	for <devicetree@vger.kernel.org>; Tue, 24 Jun 2025 09:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750755635; cv=none; b=FQPdbiAZETc51+FvlhCm9l+lzvI4kPJ+pAX+ee9st6VgvfUK5cGxki4uiEJHy98Tfo71IPELcVuUg1ZkqXjjwlqFjaZYoEeCSnJ3DPCQGz1PKb01j4cLGkTirtzDGuLcVB6HGszGvtExdNRrcpXPi2xmWkoTxUv7ctPW+a/D7M8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750755635; c=relaxed/simple;
	bh=U2xQx0rn/8aGgc9dHIi1/pHNKm2foU2fX57mEUJHDOQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=uoPMEfqJcS+eznhTDSr+MIJzUzUTFrGpBZoDGuFGpOGgnlvSC65KwjyLEsN6utYyrsZoKz9dQqo5lJUJXL0bbITjJ66sH6AfQinAc1txFGgCkzzO//+6Jn2g0pAk3JJ+ayHxlcN8iaJi6uPjX9tR6xBiRRvSQccY1f6hyxs5N18=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=IkwDwFTM; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55O7Lqag006669
	for <devicetree@vger.kernel.org>; Tue, 24 Jun 2025 09:00:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=+NyI67ThhjfZFCRQE5F28n
	vgsys0I1SbZpACtlofh+8=; b=IkwDwFTMSuXG9jdTws0CFK7qIZG5tWP2fN3wkd
	3gRD87tpG8nMMVMvxvDuVk0VeT1ArQDxN6i9SYktiPn31zQyRmoPjGAmi0wPferz
	TTGlR1nJefA6WbMWc6g4otZeYoCy6qx7H3CxpfEpPeJwHrCeJwVRzijS+a6R/z0g
	62LYG+vB0B9SFk7NbLlVQ9nK6AtqdVSnAXNdQZgGRUB8ZlXYuNfOs/HXOldBThLr
	pchatsxw3HgKyrCb/P83EQaCf/oOVNA5vfzHn905XFrwmmw4rApFSHKBStI/uGPA
	jsLUpMenfoSWaZzjX+KnlMSbsPg0bXkUl21VFDklU4sy3ogA==
Received: from mail-pg1-f198.google.com (mail-pg1-f198.google.com [209.85.215.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47emcmn3hm-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 24 Jun 2025 09:00:33 +0000 (GMT)
Received: by mail-pg1-f198.google.com with SMTP id 41be03b00d2f7-b2c36d3f884so3831903a12.2
        for <devicetree@vger.kernel.org>; Tue, 24 Jun 2025 02:00:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750755632; x=1751360432;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+NyI67ThhjfZFCRQE5F28nvgsys0I1SbZpACtlofh+8=;
        b=ZV8sX52owarZhqjj4CdzfdfQhuoJw+i4dgLtpAm4kRqharWAWorzrmTrgceVL1Zj5Y
         wMYwliNAvWI/Zpl+N9WgwCnlwSRBAiRgq3wBbAZ2Nn4xnE8OjlWMw5TNQNCXFleBbJ4E
         RYyjhdbQkMGY3C5j56W/uHutDtCWiM4tfiWtWql4/7V3cc/Aq0MpsamNCEFpM4APo9FM
         IBkUyah5/QuGvwJLqrfxnvFdec9N9/isW2ziurTnbh3BfgomnkibtL5NzsW6QBszzUTp
         /hdMlG9TJ1GHsTbpme+Ge3Sd74GfOFIwJackksUKFPaNlrZgGqmcHLCGMzF+qAdUv+Wz
         FZ2A==
X-Forwarded-Encrypted: i=1; AJvYcCUWCTFaCgceTv1lTJIos4GUdQu/0PaXX3UhkrG3Luz60J0fDl3EzZ6GVNUs7/BAVVpl59IKhBCNN16G@vger.kernel.org
X-Gm-Message-State: AOJu0YwgXIs8a4AfrIxwysxrZz/ka8T49Fsds937K1Z/2O0JVrt4WCTL
	e0onxIdIc+1x0hLEQrNSgzGSAZCD73mmHp0/iTUvFmHSjj9uKezkgWcJAPQ3uEMk2GFkFrzhlZR
	peyHygMLXm7H0FqstTXcgRpUWHtG+Cw5dqT6sohQHIBR+oT9k/2r9mL75QXBs8UYfFz+oOdMi
X-Gm-Gg: ASbGncuidnwlyhfogW1Tze2N46gFS3pD/Z6u7P9jJxNoJtUxLWYQqd8bVenXWP3gEpO
	ftWbTRUcROh2ftAlC2mXZUaFXVMEUgyFC3ZoLWrwP+s+mIPjYxjomkKR9nsnKuw6bvkME/4SXqB
	7yf/9G3bLRrQHIx31XyEMCYzp4WpjHwKx8EE3/U1OH28UDy1u4y9Lfm4Qb6enNC3f52LwJZPgZT
	E4kgwQFzHmONPMaZIynVEQ+1P7feDw81Tz5nYtn21Wu4mWu4QbP8Y6nj4vA8oJNhUz3dPFl7Hqo
	IzIj+/nb91K0uCj9V0fAbK/LKbVDZWljHTnRIbCvKCRu8NMu0Vj5JWCmq0yS6tIskqJ9WtIRKds
	9I+Z/i8yDsIq0lcr8Qk/IWbwdH4nNPXDQUvfDtc7uyikgc2lCoVsL5xQSSw==
X-Received: by 2002:a05:6a20:6a0f:b0:1f5:6c7b:8920 with SMTP id adf61e73a8af0-22026e7e31emr24033272637.9.1750755631867;
        Tue, 24 Jun 2025 02:00:31 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGdcVenNkz5UxzXqMMWqPIWW9v1GT19pnFNZ9q4LN+b4fsLANqDhBzMgjxLlovaHaAcmWCGpw==
X-Received: by 2002:a05:6a20:6a0f:b0:1f5:6c7b:8920 with SMTP id adf61e73a8af0-22026e7e31emr24033213637.9.1750755631339;
        Tue, 24 Jun 2025 02:00:31 -0700 (PDT)
Received: from hu-kathirav-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-749b5e08d11sm1269076b3a.20.2025.06.24.02.00.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Jun 2025 02:00:30 -0700 (PDT)
From: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
Date: Tue, 24 Jun 2025 14:30:26 +0530
Subject: [PATCH v2] arm64: dts: qcom: ipq5424: Describe the 4-wire UART SE
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250624-ipq5424_hsuart-v2-1-6566dabfe4a6@oss.qualcomm.com>
X-B4-Tracking: v=1; b=H4sIAClpWmgC/3WMwQ6CMBAFf4Xs2ZK2tIie/A9DTClFNhEKXSAa0
 n+3cvfyknnJzA7kAjqCa7ZDcBsS+jGBPGVgezM+HcM2MUguNS+lYjjNWkn16Gk1YWFVI4qyKS7
 WiAqSNAXX4fsI3uvEPdLiw+fob+L3/k1tgglmlDuLlvPOcn3zRPm8mpf1w5CngTrG+AW4bRgas
 wAAAA==
X-Change-ID: 20250624-ipq5424_hsuart-8b136b39ca18
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1750755628; l=1705;
 i=kathiravan.thirumoorthy@oss.qualcomm.com; s=20230906;
 h=from:subject:message-id; bh=U2xQx0rn/8aGgc9dHIi1/pHNKm2foU2fX57mEUJHDOQ=;
 b=89q++4S8stJPzoWdCgNns6o4Lzix0HmD6nfkstc2DzbtOCEG0+3QGXanhUbYsUqdvcINowyh7
 VFneObFsUxeDfpn+lxap3tWCipkNtc14jIlwtS477HYWANAlFrM9Ar6
X-Developer-Key: i=kathiravan.thirumoorthy@oss.qualcomm.com; a=ed25519;
 pk=xWsR7pL6ch+vdZ9MoFGEaP61JUaRf0XaZYWztbQsIiM=
X-Proofpoint-GUID: jlgA8k07TeMgkTXA1nj4GaZPa4j4x5xY
X-Proofpoint-ORIG-GUID: jlgA8k07TeMgkTXA1nj4GaZPa4j4x5xY
X-Authority-Analysis: v=2.4 cv=J+eq7BnS c=1 sm=1 tr=0 ts=685a6931 cx=c_pps
 a=Qgeoaf8Lrialg5Z894R3/Q==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=EDESvqxZEWg_xnwLgQYA:9 a=QEXdDO2ut3YA:10 a=x9snwWr2DeNwDh03kgHS:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjI0MDA3NiBTYWx0ZWRfX0Zb1KY6+qQ1W
 jhiO7/PqSTyHxJX4OWwzf1f+c6qhjylPnQMeIF89XMenb6s1wDDOfmB8x38479msdnciudIGm/p
 s4aL0NH22EysbFzyD/p8GNzI6dclbY45Rpxw6kJUb5Um2w8nKrE54tYiVP1McNSeYeeGkqNt09x
 qz5vuiAi0Er8Wrz8MpUdNbLmWP4KgHc3STF6c5dBIXrZXzIV/1kDJxMn0/vUC2iRb1B3shP2J79
 qg11+RHLu46cdjcpcSv8P272Ms9izmIA8oc3u0dJGWU/E4YpYm9TiVKnpB8BeO78lGBxRfHoSh0
 4lwPsZX8+lHNapWShyzc4cXixT96gKOEdVfb8t5+EtCtkVEyfOmZ98mPqPcao8k+Zyc9Kcxlbf+
 WzieqXF+whh58qRatZpjcoIIplGWCINw/JolmuHCmsICKkpMWITODHC5tsPxaunAoVTowpjx
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-06-24_03,2025-06-23_07,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 mlxlogscore=919 adultscore=0 impostorscore=0 clxscore=1015
 spamscore=0 malwarescore=0 phishscore=0 priorityscore=1501 suspectscore=0
 mlxscore=0 lowpriorityscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2506240076

QUPv3 in IPQ5424 consists of six Serial Engines (SEs). Describe the
first SE, which supports a 4-wire UART configuration suitable for
applications such as HS-UART.

Note that the required initialization for this SE is not handled by the
bootloader. Therefore, add the SE node in the device tree but keep it
disabled. Enable it once Linux gains support for configuring the SE,
allowing to use in relevant RDPs.

Signed-off-by: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
---
Changes in v2:
- Correct the interrupt number
- Link to v1: https://lore.kernel.org/r/20250624-ipq5424_hsuart-v1-1-a4e71d00fc05@oss.qualcomm.com
---
 arch/arm64/boot/dts/qcom/ipq5424.dtsi | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/ipq5424.dtsi b/arch/arm64/boot/dts/qcom/ipq5424.dtsi
index 66bd2261eb25d79051adddef604c55f5b01e6e8b..2b8499422a8a9a2f63e1af9ae8c189bafe690514 100644
--- a/arch/arm64/boot/dts/qcom/ipq5424.dtsi
+++ b/arch/arm64/boot/dts/qcom/ipq5424.dtsi
@@ -417,6 +417,15 @@ qupv3: geniqup@1ac0000 {
 			#address-cells = <2>;
 			#size-cells = <2>;
 
+			uart0: serial@1a80000 {
+				compatible = "qcom,geni-uart";
+				reg = <0 0x01a80000 0 0x4000>;
+				clocks = <&gcc GCC_QUPV3_UART0_CLK>;
+				clock-names = "se";
+				interrupts = <GIC_SPI 339 IRQ_TYPE_LEVEL_HIGH>;
+				status = "disabled";
+			};
+
 			uart1: serial@1a84000 {
 				compatible = "qcom,geni-debug-uart";
 				reg = <0 0x01a84000 0 0x4000>;

---
base-commit: f817b6dd2b62d921a6cdc0a3ac599cd1851f343c
change-id: 20250624-ipq5424_hsuart-8b136b39ca18

Best regards,
-- 
Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>


