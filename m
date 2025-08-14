Return-Path: <devicetree+bounces-204505-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C8A1FB25D7C
	for <lists+devicetree@lfdr.de>; Thu, 14 Aug 2025 09:34:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 90E86881BC5
	for <lists+devicetree@lfdr.de>; Thu, 14 Aug 2025 07:29:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BF30826B75B;
	Thu, 14 Aug 2025 07:27:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="MHaQhGGh"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C49E26A08A
	for <devicetree@vger.kernel.org>; Thu, 14 Aug 2025 07:27:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755156479; cv=none; b=nspB3Oa+cV75wiHlfW7MOSr9z97aT79XFEd36SD3GCjJECq5n0Oq4NmnbaZUSTsM/o/4/rZ/zdLSJOtmybbRzUjj/2CZZeF/M+T+MwM3hqcY83Ye3aWKiaNrso1ebgeO3xuYbOIugaSzxJudD0pUPWyn2e8toCqYjpkyYxHE7zw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755156479; c=relaxed/simple;
	bh=/bjpuqHO3TjQUA5KBVPNWUk8WGWQ1TzuQ9bTMQBq4tQ=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=ZQBL7wL7x8kFIV9nwCrN0Q3De6v9paA0epoAUX61uNvW6lLkcrDS/ywH/3jLJvhZgeYRDgvqBoylOtZptKz7hQSb7tX3aPayn6y2WnxIhKxpVwJJsN0yAfeYHBL9NLTMpmLTyKBZIW7GNpFjKnpH8sk1wJfQO/ZCKMrariZN+sU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=MHaQhGGh; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57DMTMN7013005
	for <devicetree@vger.kernel.org>; Thu, 14 Aug 2025 07:27:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=TPUBkYsbGccKy5GkK74Emc
	xj4XL9D1PkDssQMzlN9PM=; b=MHaQhGGhKpAl63QA8tXHtLLQpMFV5luZx2tDxy
	B8lW6RfLVT38ogcuy+zlo0orL8WTD3iB+SCI/Cmr5trkpSjeltEMQNbd4ijgnv07
	js7B7Snc4ObjIctZCz5KPg4YSKGwIeARuHaB25MFlEteLPEcd3iv4CLCVnyjuUSz
	TKpgqk2Qc/gVeBms1iCar4ajco4jCjnbcnl6ecr3HK00XLsCkOKvssf9cJIKg552
	D4xVJ+7NaX59G/6m0YNeJ2HLoenQJSthkRNX4Q2etuyT2YZrTByX14TSyOlCY6dr
	pPUvtS5v4yDs5hB1euNCleE4QYI3czPS0YaIBrlP5GOTlE9w==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48ffq6tmdt-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 14 Aug 2025 07:27:57 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-24458274406so13778735ad.3
        for <devicetree@vger.kernel.org>; Thu, 14 Aug 2025 00:27:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755156476; x=1755761276;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=TPUBkYsbGccKy5GkK74Emcxj4XL9D1PkDssQMzlN9PM=;
        b=GpV/zWPptyWFdd7dGHVT+Iue/sylywkdTn9js5mosOCBbWz7d+mQ+OaUgHB2DvPVFj
         xvvBFbzq4ENzNOpcexQm6x/fa6x4LVBCgp9uMAZgajLzRi52owhmA5fEgUHNw8qx5DxD
         yT+d95fHXzysMm07WrGjWqJ6KRsF7RRgXpZwXt4693btT0CxvPOpsf/BF9yl3IQkRK/P
         lZ3yD/5n4ILz1LRqRTetNY1JvyzEmpB47I6xR0e2PF7oJxV2liwQvpRythM8uFCltpaC
         9e3fcxG9+QN2C2/O03xcn6lTVBDcbyB552g9lvcT/l4ErV16a6p7DidxTuECJ8/Laumv
         utNA==
X-Forwarded-Encrypted: i=1; AJvYcCULr1NnbnJNIYykHRKQIrjZFC23HzoK4y/DDULpaRRlM3BJhGOpk84LJfv2JlDyZu+fmTuTygNTxKCO@vger.kernel.org
X-Gm-Message-State: AOJu0YxJ7kJ9OSimUpeMmEMBSCk1czDPBK2QZ9zI9RmgTFW9W71ZhRsK
	qfQhSMWJ4MnhSATM0/KW6TpoHQyTrzq9iS4e7JpjD18c10Q74E+F9V1ktFBCst0QjXUVhi4NsYI
	Ui/tGqXNnOd4XXM9LHVZ7/Dr12QKvNlaSnxqxbRESAfdxMWr+Nh2Gob2b9e79zDrd
X-Gm-Gg: ASbGnctBfto24Bwn8PwVTAq/QnEgsZSLWSEXN0Oo4TFEq98FZcNlNrczkCcmK/11wID
	wIj7cSrWkYBiu0uPD2IiEM2sFEuXByB+8g6DJSNe0Lnz7DN1pZnZgMElU9ZtHULycF9qDjCbO/G
	7SNulDgnvIK11KhzW96MhSzM+wwN1JSj/ak+Jk08+iHswhZzPKIijmqr1f5TuqEjMZgh3hX5IKx
	iIHcfHZxPBg2QoyYEJFCBIPATVLVUMTBsryn51RPwdHN95uSv8phj0TDliVo3ReGfejMS0tA2b+
	V6g++6+xYE5ABWPgL6gMOLNF17Pf8rpJ3ynF3vUyAB9qfhBDzQh/vdqynwMfTO7jEFpvxfB+i/S
	ku9+VOJZaiNkxV0aOLrSHGl7AnL0QFYnl3Q==
X-Received: by 2002:a17:903:3c6f:b0:240:7308:aecb with SMTP id d9443c01a7336-244586c403cmr32905105ad.32.1755156476313;
        Thu, 14 Aug 2025 00:27:56 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGlngZ/dHGdxOzb59UdlyPGZSwcCItx7kcwUCHnLF7UtfBNFyFfqFj3GQdK+zXXpEKXYVprQg==
X-Received: by 2002:a17:903:3c6f:b0:240:7308:aecb with SMTP id d9443c01a7336-244586c403cmr32904825ad.32.1755156475874;
        Thu, 14 Aug 2025 00:27:55 -0700 (PDT)
Received: from yijiyang-gv.ap.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3232f8c8e4bsm535458a91.2.2025.08.14.00.27.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Aug 2025 00:27:55 -0700 (PDT)
From: Yijie Yang <yijie.yang@oss.qualcomm.com>
Subject: [PATCH v5 0/3] Initial support for Qualcomm Hamoa IOT EVK board
Date: Thu, 14 Aug 2025 15:27:27 +0800
Message-Id: <20250814-hamoa_initial-v5-0-817a9c6e8d47@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-B4-Tracking: v=1; b=H4sIAOKPnWgC/32RW2rDMBBFt2L8XQVp9A6ldB8lFL1cC2I7sRyTE
 rL3ynahIXH6Ixg09+jM6FKm0MeQym1xKfswxhS7Nhf8pShdbdqvgKLPdQkYOBaYodo0nfmMbRy
 i2SPsvMRUeAmSlDlz6EMVzzPvY5dra1JAtjetqyfKHP7t68PxlJ8blual03VNE4dt0YbzgOYnF
 WFTfxNSMrPMtnidLyQw1HRjQMEfUGj9oYvtkNBIEEXCGS60IqCoeu9S2hxPZj+xN/l4KyexOqa
 h67/nuUcyGyxYTO5GzESMDJXecmEZZ/aBOAkuYSLWwpWouMeVNkTQx/BkM8Ktwf2SR8gQqkAw5
 jEYb/4xgNWwJhZjpxR4Qp4Y0BsDwu8hNENkBVoZDg6E/s9Ar4UVFgFrkEp798SA/Rmoxx2wDCE
 6eGtBCSlXfmF3vV5/AAeZ3KvQAgAA
X-Change-ID: 20250604-hamoa_initial-0cd7036d7271
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: Yijie Yang <yijie.yang@oss.qualcomm.com>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Yingying Tang <quic_yintang@quicinc.com>,
        Shuai Zhang <quic_shuaz@quicinc.com>,
        Yongxing Mou <quic_yongmou@quicinc.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1755156471; l=3887;
 i=yijie.yang@oss.qualcomm.com; s=20240408; h=from:subject:message-id;
 bh=/bjpuqHO3TjQUA5KBVPNWUk8WGWQ1TzuQ9bTMQBq4tQ=;
 b=sm1sGXlVS31/NLDSLwk0p1CfhYCl82hLHAIQx8uNuV0bEvFcL0sM3SWyS3btDqI55SIeE1fcc
 oXHP+eLnt11Dgt/Isy1YNb5URK103fLHqF+IjZEs+vYxEb0yzmCh5DY
X-Developer-Key: i=yijie.yang@oss.qualcomm.com; a=ed25519;
 pk=XvMv0rxjrXLYFdBXoFjTdOdAwDT5SPbQ5uAKGESDihk=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODExMDA3NSBTYWx0ZWRfX+stkzP0oQ5ST
 7WN3Y8OdCTe3GTZslQHFCbTFcnlZ1SBmbfq8IhVtXLpPstYPxxlzoXHjMlC4pYScmDRuHECLyv3
 /JnWZsDZvcwbcG0KehgcyniHPeG+9IrkEljf6rvLgHhrhSn0HPGFwuSrle+PsTPnP0Pk/r8u4tl
 jcHAITBX/jMkFtM8mHrGuNiZkQcVaarebZWBqrefoG8KG8h60RcZhLysopjIAHHhJktnk+DFI9o
 MxWoz6F2ScRlOpLlK4CZe7UY7jkmOctkydjdyLek0uEhm+rexErSz0J44ehVlJgMOorD3hqE+Kn
 dDpT98FH41wZnxwpYCHttYs60mJBm5Xikq+hEpLl0s5TGHh4hu+3ZdjinizXYKgyKY0nzIONZDQ
 TC73X71g
X-Authority-Analysis: v=2.4 cv=TLZFS0la c=1 sm=1 tr=0 ts=689d8ffd cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=ChSoQ_MQChkn1GHLaRcA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-GUID: vNst6C5Xl74zXQX096k7UAKjYMpcrYNE
X-Proofpoint-ORIG-GUID: vNst6C5Xl74zXQX096k7UAKjYMpcrYNE
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-13_02,2025-08-11_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 phishscore=0 malwarescore=0 spamscore=0 priorityscore=1501
 bulkscore=0 adultscore=0 impostorscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508110075

Introduce the device tree, DT bindings, and driver modifications required
to bring up the HAMOA-IOT-EVK evaluation board—based on the X1E80100 SoC—to
a UART shell.
This patch set focuses on two key hardware components: the HAMOA-IOT-SOM
and the HAMOA-IOT-EVK carrier board.
The HAMOA-IOT-SOM is a compact System on Module that integrates the SoC,
GPIOs, and PMICs. It is designed to be modular and can be paired with
various carrier boards to support different use cases.
The HAMOA-IOT-EVK is one such carrier board, designed for IoT scenarios.
It provides essential peripherals such as UART, on-board PMICs, and
USB-related components.
Together, these components form a flexible and scalable platform, and this
patch set enables their initial bring-up through proper device tree
configuration and driver support.

Qualcomm SoCs often have multiple product variants, each identified by a
different SoC ID. For instance, the x1e80100 SoC has closely related
variants such as x1e78100 and x1e001de. This diversity in SoC identifiers
can lead to confusion and unnecessary maintenance complexity in the device
tree and related subsystems.
To address this, code names offer a more consistent and project-agnostic
way to represent SoC families. They tend to remain stable across
development efforts.
This patch series introduces "hamoa" as the codename for the x1e80100 SoC.
Going forward, all x1e80100-related variants—including x1e81000 and others
in the same family—will be represented under the "hamoa" designation in the
device tree.
This improves readability, streamlines future maintenance, and aligns with
common naming practices across Qualcomm-based platforms. 

Features added and enabled:
- UART
- On-board regulators
- Regulators on the SOM
- PMIC GLINK
- USB0 through USB6 and their PHYs
- Embedded USB (eUSB) repeaters
- USB Type-C mux
- PCIe6a and its PHY
- PCIe4 and its PHY
- Reserved memory regions
- Pinctrl
- NVMe
- ADSP, CDSP
- WLAN, Bluetooth (M.2 interface)
- USB DisplayPort

DTS Dependency:
https://lore.kernel.org/all/20250724-move-edp-endpoints-v1-3-6ca569812838@oss.qualcomm.com/

Signed-off-by: Yijie Yang <yijie.yang@oss.qualcomm.com>
---
To: Bjorn Andersson <andersson@kernel.org>
To: Konrad Dybcio <konradybcio@kernel.org>
To: Rob Herring <robh@kernel.org>
To: Krzysztof Kozlowski <krzk+dt@kernel.org>
To: Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org
Cc: devicetree@vger.kernel.org
Cc: linux-kernel@vger.kernel.org

---
Changes in v5:
- Update base commit.
- Drop an already merged patch:
https://lore.kernel.org/all/20250804-hamoa_initial-v4-2-19edbb28677b@oss.qualcomm.com/
- Link to v4: https://lore.kernel.org/r/20250804-hamoa_initial-v4-0-19edbb28677b@oss.qualcomm.com

---
Yijie Yang (3):
      dt-bindings: arm: qcom: Document HAMOA-IOT-EVK board
      arm64: dts: qcom: Add HAMOA-IOT-SOM platform
      arm64: dts: qcom: Add base HAMOA-IOT-EVK board

 Documentation/devicetree/bindings/arm/qcom.yaml |   6 +
 arch/arm64/boot/dts/qcom/Makefile               |   1 +
 arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts      | 987 ++++++++++++++++++++++++
 arch/arm64/boot/dts/qcom/hamoa-iot-som.dtsi     | 609 +++++++++++++++
 4 files changed, 1603 insertions(+)
---
base-commit: 2016d952577e807ee89e0cef02af1f95aabbbcb2
change-id: 20250604-hamoa_initial-0cd7036d7271
prerequisite-message-id: <20250724-move-edp-endpoints-v1-3-6ca569812838@oss.qualcomm.com>
prerequisite-patch-id: c536bf9ec7fd22af9b05b695272997615dfd675f
prerequisite-patch-id: d513e5a08d3be585b9b6a737ef3a1ad275d7caad
prerequisite-patch-id: 605ef6f89dd84f810df11be9d11ee6803a6bf289
prerequisite-patch-id: 2ab2430624acbdd9011f6c0c2a77469fd19fc75a
prerequisite-patch-id: bfbb562513763ce75f2bb5da7f12e7b54ff3919d

Best regards,
-- 
Yijie Yang <yijie.yang@oss.qualcomm.com>


