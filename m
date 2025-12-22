Return-Path: <devicetree+bounces-248650-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D779CCD4C2B
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 07:05:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 87A91301EF99
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 06:03:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9AF3330497C;
	Mon, 22 Dec 2025 06:03:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="doB8901X";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="cl8FNImL"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB8702522A7
	for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 06:03:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766383419; cv=none; b=qxCyT6VZ9nS4jYZbulxrgwaJK43cUVSTMzTqRxCpiwHXf9/FkbQBAN/V0uKCJiygGkZIUPMCvTOUR9qzpr6kQfqvmJomBhJ9PqMbrNLOpSAJPQ3irjF+UaMhliietvB+1ARO6BGS9mZH/BX5q/UuzXsT4hm3moH2dNOmyU2ssSI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766383419; c=relaxed/simple;
	bh=gAlux7lAziCE4oTDK3KPENbYwptBvXCPl0DClAT77Rw=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version:Content-Type; b=mXWQXQuSV0YJHXpmLH/0p/dMAnR4YoUsRK3tfj/OLrgCHClJFRP6uTEETWTRgeCSe/aGTFWXux06uD+p+ELz5PeMrWjBVQZH3+1M8idE+xOBhfhj8oz0wSn8Rjymfq7j8NHd0VmDbmB1v18QdOckiS7FguH0AnYw3LF273uLDA4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=doB8901X; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=cl8FNImL; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BM1iUUe3962884
	for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 06:03:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=6hu25zxmhXZntuPiVUz2vx
	sMajsKOY6P7UhsCY2Ez90=; b=doB8901X+DQmwlXv8HZGZ+GbzA55AdieCtboLO
	3hNQh/L34VWfTuWT6sSDP3eONTRRE6XrXCP3eNlaRpnMT8a+8VBpsdG+6FCo8Cfj
	AZQGppROHp1WPcTiPD4wd/B/VLcN8VZ9ulnl1fQ1enUQm/J8Y/CYqtzY6dv8gVQf
	8mQ0BdJRLS+oZUITjQrlORzHaT5g1abj9hs33ThU7BD/a/Qxai1gHaBBCppp57zj
	cN+HYk+xLdPuWVjeuSGAlVjtRdd1CT/JrPVDlUtP/Cmz6tYZ4g9xyTFoF3BTPzfX
	qu76Kp2pcWr5SAhHZ+sieHJ3OSR7QcEbp3BX56yowJtdpSKA==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b6vk6gmgx-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 06:03:36 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-34c6cda4a92so7517041a91.3
        for <devicetree@vger.kernel.org>; Sun, 21 Dec 2025 22:03:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766383415; x=1766988215; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=6hu25zxmhXZntuPiVUz2vxsMajsKOY6P7UhsCY2Ez90=;
        b=cl8FNImLWPAZC3aj408yCAhXkDJ4obiep5D6zrExN32m4oMpErJ3OiJpqFn2buW550
         r0KQILizXsMPiZ5fJUozgoffJR9lOolfSHG8KxsBhnZAbpC59KfbeD9tksO6sytWgJbu
         IHuZc4Cp/iS5Ij3O50BtECc+xCEN5zB3f2O/gI4bOFmyH71Yr4Snhx+kiM3BItGdymfR
         p9qQjSpuwTqrlaerTBY1vsTKvUV1ri/kEiO8Ps08lMux+pVeT8vlpg8VAc4g5LahkJrJ
         dH6vBuT1qfSJ+I/LpgqWghcn6f32WlwAOeg1FjjR6D2Q/C9Z4KLbdboxV9rFyu/a3ngL
         qGEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766383415; x=1766988215;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6hu25zxmhXZntuPiVUz2vxsMajsKOY6P7UhsCY2Ez90=;
        b=bMzyflveYzTETw4ZquSTc0Ry2S/UVOeLrHa9+DeLzFyzqxNTRPETHEZUswFMhGJjVw
         7fzuXXzwjF979tkVucA/DigzWnwqsqrtROhqUiJ4qMVqqswLjZrUln4ZH6FtA0FLVrgt
         PXqH3N9xNt44WmoabPsjVomiE7fJNXrYGA0SFJgAItLHHmAZYE30Y7RaJWFQjo4fOiD8
         KPHQaxfzjtVGcywFHcGKZ+H4yiCK3s0wCruGIjraqFS/n/gVl4HJldWxwuv4ACrB33NQ
         tHIsQJd9f7fwe9U23ULvjQoxcEUB5JXKXLQoQTeysDVWGF8HmuXYG9Py9HgUEk0yrAco
         8m0Q==
X-Forwarded-Encrypted: i=1; AJvYcCV9lXUHYljb/EIGeRop8VOxVqLKc05JlXdinaHu7TdfTaalIm5X4guatgKbwZI3pRo/mV83ydhv4S7n@vger.kernel.org
X-Gm-Message-State: AOJu0YwSujt69VftxEZ3JMGHv4kDUKhAcuOmd9nsq4ngmnb4q0AUUmZ1
	jZBGA6KUEpMEYi7WKjD6zb043NNCam29iyD2YdmPvGu+qKgb21Hycwc6qpNhtk23Q121rxzCmMK
	eM7qdWZo9vGe5Eu8vLpKjmf/R8DHoOH32qDgXDXhoJLo07gAEZkqS/CnupYeDjr6D
X-Gm-Gg: AY/fxX452qryabc1a+4ZfN2jkY+wYwKiAF+d4qzycu405JMreKeaZCY7MIt1dAur33A
	6gwWqRhTtnHxiI03PHnnH7LsWyDOJG6tAvTlVKXot9tZp5Nilq3RZhp9hMmmM4Os7OOa3Ua245u
	Zt9/PC5QaRirIeP65F6Q/KU9DouTljXyAObSBt+iD5EJM1ZE+kzS4O8j24KFYEOLkQ62kTLrH/G
	UF1XXzB3DBvp63RIgyeo1Vm4/2DNBp6VjJ91a67wStUVmljz4VxNSkJZf0Uty/ws3bWU3fMCieL
	8QgxyXE6KrYPm6h3NBz0zA6YiJozALJ+xwa9km36IqB4YdzU5knpkVytTGYOMPz5Wglcdq8tn21
	RTbPekyhzqtOwKIEplulDa5bzNuI9ONC52f50I3Dbce8tjPE7/tlFeVApmVsx7vNXoCjW+uMv5Q
	0=
X-Received: by 2002:a17:90b:2e0c:b0:34a:4a8d:2e2e with SMTP id 98e67ed59e1d1-34e921b7ca2mr8408768a91.17.1766383415312;
        Sun, 21 Dec 2025 22:03:35 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEN3ZnzQaO8Bp7dru6pT+9IKCWsaIfRNF27mKoA1q6vxsoenc4Yf7M9xKUwtNchkQaUZR40jQ==
X-Received: by 2002:a17:90b:2e0c:b0:34a:4a8d:2e2e with SMTP id 98e67ed59e1d1-34e921b7ca2mr8408748a91.17.1766383414837;
        Sun, 21 Dec 2025 22:03:34 -0800 (PST)
Received: from yijiyang-gv.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-34e769c347asm5846668a91.0.2025.12.21.22.03.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 21 Dec 2025 22:03:34 -0800 (PST)
From: YijieYang <yijie.yang@oss.qualcomm.com>
To: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, Yijie Yang <yijie.yang@oss.qualcomm.com>
Subject: [PATCH 0/4] Initial patch set for PURWA-IOT-EVK
Date: Mon, 22 Dec 2025 14:03:25 +0800
Message-Id: <20251222-purwa-v1-0-14ab9316e5ff@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
X-Change-ID: 20251113-purwa-907ec75b4959
X-Mailer: b4 0.15-dev-56183
X-Developer-Signature: v=1; a=ed25519-sha256; t=1766383185; l=2948; i=yijie.yang@oss.qualcomm.com; s=20240408; h=from:subject:message-id; bh=oorgR9LETBK1TGlnKXsZ5XmnZnFjahHvpfgKKD1aBHQ=; b=MyKntVP3lWYy3glGCW+k9ktIzbZdB2iH5UAqqP41xOXxr4tbys6UR6raReXdNbA019LqedfjI Or72NJK8EQQAwabP5syb8nK2TlMBm+PcUf88hQWLMC5AIcGCK3GUpTx
X-Developer-Key: i=yijie.yang@oss.qualcomm.com; a=ed25519; pk=XvMv0rxjrXLYFdBXoFjTdOdAwDT5SPbQ5uAKGESDihk=
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: 5b1Yz4xVieluP1kSpblgnW3rI3drtN0t
X-Authority-Analysis: v=2.4 cv=cuuWUl4i c=1 sm=1 tr=0 ts=6948df38 cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=z2TZza4qrHSu2oSKIfMA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjIyMDA1MiBTYWx0ZWRfX1CsJDs25YzHE
 LNke/rHOrAAHVwKi2nc52r2ET63HMkPgFB/3hqxQHUhrjYzazWpC3MgqCCCinlLsDYbrFDvpgtE
 q/117ufNlOf+POPRSW1N3qf+dXPTRgZeTsWZxKF9pXPY55zRqiOVKI+Skufe3wEaB+iUTAhJsKj
 CfZQbjSD1Igt79mjdkNpbgDrsYhpFaQpIBwHer9kAcDormZRDfwq9BaV8oPYOb6l0flK4iwP+TT
 5KGiM8KZzlLHwL450eufL3W4slruy0JIPi1x7IJfH/WVaJ/N/SzZRNU0YKIHZFR1JewdrhkkEZh
 ohw3if5GNuy0rkhLfWDVqxJjxG/7oBfDIqd/CCIpAALFpqsZPsr5nFa6D1q9XTJn19lHt4DRJD4
 pgE/7hiCSWf4D3RrDZvFlxDnChXK20DkQVkW+ET/sTaBPnxyjghR2AOcarKJkm/lOPpG5JoDPsa
 nJu9X9qz8kVNcgJI/zg==
X-Proofpoint-GUID: 5b1Yz4xVieluP1kSpblgnW3rI3drtN0t
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-21_05,2025-12-19_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 lowpriorityscore=0 adultscore=0 malwarescore=0
 priorityscore=1501 spamscore=0 bulkscore=0 suspectscore=0 clxscore=1011
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2512220052

From: Yijie Yang <yijie.yang@oss.qualcomm.com>

Introduce the device tree, DT bindings, and driver modifications required
to bring up the PURWA-IOT-EVK evaluation board.

Purwa and Hamoa are IoT variants of x1p42100 and x1e80100, both based on
the IQ-X SoC series. Consequently, the two common files in this series are
prefixed with 'iq-x-iot' to reflect this relationship.

PURWA-IOT-EVK shares almost the same hardware design with HAMOA-IOT-EVK,
except for differences in the BOM. As a result, most of the DTS can be
shared between them.

The changes focus on two key hardware components: the PURWA-IOT-SOM and
the PURWA-IOT-EVK carrier board.

Hardware delta between Hamoa and Purwa:
- Display: Purwa’s display uses a different number of clocks, and its
  frequency differs from Hamoa.
- GPU: Purwa requires a separate firmware compared to Hamoa.
- USB0: Purwa uses a PS8833 retimer, while Hamoa uses an FSUSB42 as the
  SBU switch.

The PURWA-IOT-SOM is a compact System on Module that integrates the SoC,
GPIOs, and PMICs. It is designed to be modular and can be paired with
various carrier boards to support different use cases.

The PURWA-IOT-EVK is one such carrier board, designed for IoT scenarios.
It provides essential peripherals such as UART, on-board PMICs, and
USB-related components. Together, these components form a flexible and
scalable platform, and the changes enable their initial bring-up through
proper device tree configuration and driver support.

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
- Graphics
- Audio

Signed-off-by: Yijie Yang <yijie.yang@oss.qualcomm.com>
---
Yijie Yang (4):
      firmware: qcom: scm: Allow QSEECOM on PURWA-IOT-EVK
      dt-bindings: arm: qcom: Document PURWA-IOT-EVK board
      arm64: dts: qcom: Commonize IQ-X-IOT DTSI
      arm64: dts: qcom: Add base PURWA-IOT-EVK board

 Documentation/devicetree/bindings/arm/qcom.yaml |    6 +
 arch/arm64/boot/dts/qcom/Makefile               |    1 +
 arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts      | 1188 +----------------------
 arch/arm64/boot/dts/qcom/hamoa-iot-som.dtsi     |  607 +-----------
 arch/arm64/boot/dts/qcom/iq-x-iot-evk.dtsi      | 1174 ++++++++++++++++++++++
 arch/arm64/boot/dts/qcom/iq-x-iot-som.dtsi      |  609 ++++++++++++
 arch/arm64/boot/dts/qcom/purwa-iot-evk.dts      |  100 ++
 arch/arm64/boot/dts/qcom/purwa-iot-som.dtsi     |   11 +
 drivers/firmware/qcom/qcom_scm.c                |    1 +
 9 files changed, 1920 insertions(+), 1777 deletions(-)
---
base-commit: bdedd93e9fe243f01c8277f81314560e352eeca8
change-id: 20251113-purwa-907ec75b4959

Best regards,
--  
Yijie Yang <yijie.yang@oss.qualcomm.com>


