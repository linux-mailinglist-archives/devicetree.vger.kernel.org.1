Return-Path: <devicetree+bounces-215322-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id CAACEB5120C
	for <lists+devicetree@lfdr.de>; Wed, 10 Sep 2025 11:03:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7555A3B92D3
	for <lists+devicetree@lfdr.de>; Wed, 10 Sep 2025 09:03:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EC30931282E;
	Wed, 10 Sep 2025 09:03:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="OUnUZoo7"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD889310628
	for <devicetree@vger.kernel.org>; Wed, 10 Sep 2025 09:03:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757494985; cv=none; b=Nwgjhd0yPJDY+MyWzh/CEfRjlepVREsZ/Iy3QWAUYC0QFu9Ub+/KAZdFm4nBVep2p1/fjTy45WZp9E/qmpaAjQ+tzJFSv6SRbmx5rMkjH6s4ngDl8AXUKzGJHVCRSRJKIYExyd3YPl3FaRS5N2zarLkxkBShoSwUrwvMPJdVwHA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757494985; c=relaxed/simple;
	bh=iygfp2FLmyHMlYNE06s1pLsxgC91NyUBh21VJODUkds=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=TFHq7qFpIOiJftwl9+IX2lMzCqyfN0fyeLnMZOvX9DQg4Su528oBwlSazU+wrQ2OygqSgjMcDQKa+2B93HFJJHj+LiYXEEo1C3rEz4q9mpoIo5Hd2R/V4AR0Dz5j56v8SAj1E4DMXxIFeJSD76HC7gbayKv/vk6q6J9tTSdKb14=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=OUnUZoo7; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58A7cmuR017095
	for <devicetree@vger.kernel.org>; Wed, 10 Sep 2025 09:03:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=9JcM8tm2w70x93VPdHPPUv
	gkj0Etp6YMvrIgsZqB0VI=; b=OUnUZoo7Rh32YZOM7HH8sGsJflp3ddoWwN32e9
	6ipEyELx6o9Ih6ezpvA62eKPhUw88M9vhflCSQH9GPVBO18Mk/pC5GbQkqHIHPQX
	qyV7pCo779jwgiLKzrW63vGJCR2uD3LVYNr7DtsyNct1FeEAG7y+mnZHv1Mm/OAD
	kceyKD1RTdjb7w/Gu4+nmFsk7dwcopE0/p1SR1U8ND5rFeJ6LdUwY/8/UD21iHEi
	YrshIMwuNh2872AyxPBacFH9OmtJkUGXBkEXnnwI1ajZ4+Im11wPIyeyWJp6BSCV
	BswMjgfKgaY0vi0TaNB7A6ZAQuxu38gnIFxkZU3J61XkdfOg==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 490db8ka7t-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 10 Sep 2025 09:03:01 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-24cc4458e89so151594805ad.1
        for <devicetree@vger.kernel.org>; Wed, 10 Sep 2025 02:03:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757494980; x=1758099780;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9JcM8tm2w70x93VPdHPPUvgkj0Etp6YMvrIgsZqB0VI=;
        b=OZ0UOe3wWFLxaVyrl0mWGozVqcXGyv+Cfj8nUbwkIWG5orxIlKDw3pScijrFuNeQBD
         V2e2hEMbXhaPyp6CkP6NQxNC2BZ5LrYS3FZ7/8l3j9WuZ7MrUiw/aNrXdNa3kWQnTiIy
         jLA7Q0s0zZgiDzdK1SVboJUsIKL3iRa65GZT9nCNaL/gkEqZz1c4BcSPtAz73FEsXgsF
         99Qa9XUMDGCa257hamgltXGotf5msRWFQ9jymax7x6JI/bX2fJROnLjuJoTIScAlNGcf
         b67MI5T0ys7NqQq4HLqOJPi+ylrux377lNBxPgL7A+l4siVfxJUzmbGmfj6DLARl332j
         H6Gg==
X-Forwarded-Encrypted: i=1; AJvYcCUXJz5CQDGAHT/V9ByahpGpOQNrg4trhRRG9LHam614YShD9i04I0uSyEtWWh5lpYoKA3+Dpv9DLc+m@vger.kernel.org
X-Gm-Message-State: AOJu0YwvseUXZFq9xk49d1YJcK508Qx7y5gXWR3gf52Ukwak93VwyRLt
	9Ge70Y040DuBxK1DmDNtt3IdBkjI1hru5Q5x5QLNjPXXKFuX8v1yoTzU9qM6fKJmYfr37dVUuK2
	08rUm+2td0r/pnipqS/m1GgZcwVBCRO8bRGWq+ZJuhvEAtgIdJuK0/WpphdtTF0TU
X-Gm-Gg: ASbGncuhHmLnCqMuY6F7vsXSSCnbl+N4c3TwF6lBUkrv7PvdhBz1XHRVUASnBJsylj0
	NyDDKs2aYX+dq0ZeX5aqNIWowu57oTOBzbc0GaG/0KcwuWj2kIlwDzjOD+LqngVbq360+Y68ErY
	YtVL3VPmfPFiZ/cw93+I08VmytGwdjGTRf+qwCAX3Ukh1r9+QUR154EBNHC5j5AVAoUEvqC6Y2g
	NNQtevk0h/n1GVZ+oRf2lvQ8zMtKep8NFkcVrX4ZsSpOcgCqkEYkKwPU9CH2VetvAkb4zPRWSOl
	mBAtP7q148YaACRQ4DxWjFlLG1wLDl0gkfzWn080d6GbVXM/tOjH773P2LuZZvDje7SWvWPXFe6
	2hSLcY+YOr1Tr2Po9hemln1ZVyRQAsmgaTA==
X-Received: by 2002:a17:903:320a:b0:248:79d4:93a9 with SMTP id d9443c01a7336-2517408dcdcmr177463695ad.55.1757494979821;
        Wed, 10 Sep 2025 02:02:59 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGFZll1G9bSel7LGXLaN2Uf9uCbc9GQUQwlW/FGJKzNiXxxPDMiE6h3wRcl1xoZ2NIiXRkcoQ==
X-Received: by 2002:a17:903:320a:b0:248:79d4:93a9 with SMTP id d9443c01a7336-2517408dcdcmr177463285ad.55.1757494979230;
        Wed, 10 Sep 2025 02:02:59 -0700 (PDT)
Received: from yijiyang-gv.ap.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-25a27c029ccsm21089155ad.41.2025.09.10.02.02.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Sep 2025 02:02:58 -0700 (PDT)
From: Yijie Yang <yijie.yang@oss.qualcomm.com>
Subject: [PATCH v11 0/4] Initial support for Qualcomm Hamoa IOT EVK board
Date: Wed, 10 Sep 2025 17:02:08 +0800
Message-Id: <20250910-hamoa_initial-v11-0-38ed7f2015f7@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-B4-Tracking: v=1; b=H4sIAJI+wWgC/32S22rjMBCGXyX4eh00Oo0UytL3KGXRyY0gsbeWa
 7KUvPuOnUJNHPfGIHn+bz6N9FmV1OdUqsPus+rTmEvuWloA/NpV4ejat1TnSBsVZ1wxzWR9dOf
 O/cltHrI71SxEZEJH5AgVZf72qcmXGfjySmvvSqp979pwnChz+KuuT+8f1G+4Fd8qQ3c+5+Gwa
 9NlqOeWltmp/pxKcbPMYfc0/0ByuQDt9LnUI9RQBwECo0WbpHg+5db13b7r335Xk8gxl6Hr/80
 HHWHu+IWBuyMRi9WOSF5pL5X0z10p+/cPd5rs9vSZhG5h0I/CjW5UZI11oMU6PNmMfGlwP9SRE
 0QYrqWMjLvofjDgD8MWPGPBGB4BNgzEwgDUPUQQBBtujVM8cG1/MrCPwobpxCxHY2PYMJDfBmY
 9A0kQsCl6z41G9BsQtYDACqImE0Bng04mStyA6AWEr96DnmbBk0wMnKKL3YDgEoL3EJzehfUGo
 tKSzrQBMUuIuYcYggQbAQWN3amtwdpviF0P1hIkouAgGodKbpkAW1JWdwyMMCkAYwqbJsRHmOv
 1+h9voTugYQQAAA==
X-Change-ID: 20250604-hamoa_initial-0cd7036d7271
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Yijie Yang <yijie.yang@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Wangao Wang <quic_wangaow@quicinc.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-5bbf5
X-Developer-Signature: v=1; a=ed25519-sha256; t=1757494974; l=6160;
 i=yijie.yang@oss.qualcomm.com; s=20240408; h=from:subject:message-id;
 bh=iygfp2FLmyHMlYNE06s1pLsxgC91NyUBh21VJODUkds=;
 b=Cw1j6eU3N+pjv0SGVPS4bvbNyikpM7BMu8wkjXTmchs9OvRpgW+WmYxmjRxMaviH3LtjXOLHQ
 JDcKQmmyot3BW2A6zOrcmOzReaSL82MQ2YTulAWs4Y+1sqc3/f3mYxl
X-Developer-Key: i=yijie.yang@oss.qualcomm.com; a=ed25519;
 pk=XvMv0rxjrXLYFdBXoFjTdOdAwDT5SPbQ5uAKGESDihk=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA2MDAzMSBTYWx0ZWRfXzaSWqQhb8HYr
 kzuiw1XJ1fIiPtlxw1uHqndqpzdKqtzD4lrp4Pjsvuj9zDCI32fCrMF7uYwScx6QuJ0IncLYUcr
 qBhnF49NCK59QPWXyXJ0BUXXq1ioWW6aasz9M4eyZcPGL4kVustsg4NW0lfj1cT9zwBJpkvlzG9
 /77vujjZmtzhY8VlApR9jQCl+6yOYV2wSOJjGeEVEH56m6xZNyojOqEk7c6UO2dXoAgUZNT3dDM
 4vsygNnZGaoT1x9wUcoGManAk+2f2bq77Aehk00xpo9Df27pdDabUUKPLOwtR5JkiR6eXmYAik7
 RE1gixtM/jwDaOknCWP4tii303LBpzUqnkN/Ti39IWWPtNoAvRO0XPj8b+ehZFuqF5J5jNiO3yc
 7XtFk9Ik
X-Proofpoint-ORIG-GUID: ux6kugW6wTKLky-XHS13BZIG-k2X5agF
X-Proofpoint-GUID: ux6kugW6wTKLky-XHS13BZIG-k2X5agF
X-Authority-Analysis: v=2.4 cv=VIDdn8PX c=1 sm=1 tr=0 ts=68c13ec5 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8
 a=EUspDBNiAAAA:8 a=COk6AnOGAAAA:8 a=hsIpd76ykShK3axuoLUA:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=uG9DUKGECoFWVXl0Dc02:22 a=cvBusfyB2V15izCimMoJ:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-09_03,2025-09-10_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 malwarescore=0 spamscore=0 suspectscore=0 bulkscore=0
 phishscore=0 adultscore=0 clxscore=1015 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509060031

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
- Graphic
- Audio
- Video

Depends on the following change to ensure compliance with the Device Tree schema:
https://lore.kernel.org/linux-arm-msm/20250704-x1e-iris-v1-1-c3137d979e43@linaro.org/

Signed-off-by: Yijie Yang <yijie.yang@oss.qualcomm.com>
---
Changes in v11:
- Update the high-speed PHY repeater for the USB MP to the correct one.
- Update base commit.
- Format the audio-routing property and the i2c5 device node.
- Link to v10: https://lore.kernel.org/r/20250909-hamoa_initial-v10-0-ec10057ffcd2@oss.qualcomm.com

Changes in v10:
- Update the commit description.
- Remove the redundant space in 'stdout-path'.
- Move GPU nodes to the SoM's .dtsi file.
- Integrate the changes that enable video support into this patch series.
- Link to v9: https://lore.kernel.org/r/20250904-hamoa_initial-v9-0-d73213fa7542@oss.qualcomm.com

Changes in v9:
- Sort the nodes within the root node in alphabetical order.
- Add WLAN control pin to the PMU.
- Link to v8: https://lore.kernel.org/r/20250828-hamoa_initial-v8-0-c9d173072a5c@oss.qualcomm.com

Changes in v8:
- Change the style of how collaborators are listed.
- Link to v7: https://lore.kernel.org/r/20250827-hamoa_initial-v7-0-f9b81d564bb2@oss.qualcomm.com

Changes in v7:
- Configure the EDP regulator to boot-on.
- Change back to a year‑less copyright statement.
- Update base commit.
- Link to v6: https://lore.kernel.org/r/20250821-hamoa_initial-v6-0-72e4e01a55d0@oss.qualcomm.com

Changes in v6:
- Restore the full change log for each revision.
- Merge the changes related to Audio and Graphics into the patch series.
- Link to v5: https://lore.kernel.org/r/20250814-hamoa_initial-v5-0-817a9c6e8d47@oss.qualcomm.com

Changes in v5:
- Update base commit.
- Drop an already merged patch:
https://lore.kernel.org/all/20250804-hamoa_initial-v4-2-19edbb28677b@oss.qualcomm.com/
- Link to v4: https://lore.kernel.org/r/20250804-hamoa_initial-v4-0-19edbb28677b@oss.qualcomm.com

Changes in v4:
- Update commit messages.
- Update base commit.
- Update the format of the node mdss_dp3_out.
- Add comments to clarify certain nodes.
- Update the configuration of regulator-wcn-3p3 from regulator-boot-on to regulator-always-on.
- Link to v3: https://lore.kernel.org/r/20250729-hamoa_initial-v3-0-806e092789dc@oss.qualcomm.com

Changes in v3:
- Add compatible string and dt-bindings for SOM.
- Restore PMU-related regulators to comply with dt-binding rules and enable kernel-level power management.
- Adjust commit description accordingly.
- Link to v2: https://lore.kernel.org/r/20250724-hamoa_initial-v2-0-91b00c882d11@oss.qualcomm.com

Changes in v2:
- Merge the compatible rules and remove the compatible string map.
- Align the ADSP and CDSP firmware paths with other x1e80100 platforms.
- Remove the regulators on the M.2 card, as well as those managed by UEFI on this board.
- Merge another patch series that enables USB DisplayPort functionality on this platform: https://lore.kernel.org/all/20250723-x1e-evk-dp-v1-1-be76ce53b9b8@quicinc.com/
- Link to v1: https://lore.kernel.org/r/20250716-hamoa_initial-v1-0-f6f5d0f9a163@oss.qualcomm.com

---
Wangao Wang (1):
      arm64: dts: qcom: x1e80100: add video node

Yijie Yang (3):
      dt-bindings: arm: qcom: Document HAMOA-IOT-EVK board
      arm64: dts: qcom: Add HAMOA-IOT-SOM platform
      arm64: dts: qcom: Add base HAMOA-IOT-EVK board

 Documentation/devicetree/bindings/arm/qcom.yaml |    6 +
 arch/arm64/boot/dts/qcom/Makefile               |    1 +
 arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts      | 1221 +++++++++++++++++++++++
 arch/arm64/boot/dts/qcom/hamoa-iot-som.dtsi     |  621 ++++++++++++
 arch/arm64/boot/dts/qcom/x1e80100.dtsi          |   82 ++
 5 files changed, 1931 insertions(+)
---
base-commit: c62a516303b963817a9d008c432013b18581997e
change-id: 20250604-hamoa_initial-0cd7036d7271
prerequisite-message-id: <20250704-x1e-iris-v1-1-c3137d979e43@linaro.org>
prerequisite-patch-id: 037bb113706198fca6a87000e46907bc23f9d7e2

Best regards,
--  
Yijie Yang <yijie.yang@oss.qualcomm.com>


