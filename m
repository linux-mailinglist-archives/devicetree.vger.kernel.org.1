Return-Path: <devicetree+bounces-253110-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id B4F3BD07AA9
	for <lists+devicetree@lfdr.de>; Fri, 09 Jan 2026 09:00:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id D52E13009D54
	for <lists+devicetree@lfdr.de>; Fri,  9 Jan 2026 08:00:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C38472F83D8;
	Fri,  9 Jan 2026 08:00:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Tg5Jkn34";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="UEAynr56"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A6952F6910
	for <devicetree@vger.kernel.org>; Fri,  9 Jan 2026 08:00:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767945603; cv=none; b=JF3DDVrGKBH2RocGGSxq7fEzMxRcvXrMsgoT8LFXc2RQ1ybUUmp7NZrVvpghJwgdYgi/gfMHhSeiE8/uQq0nId+c/yoNPaRmEatNY8PE+P16GzH2KHIvV1HoEpNE8trTOPIbsM63R3uXxsVEgbZGmcpdzOjjz61gHpnKuL5vavo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767945603; c=relaxed/simple;
	bh=TNMwj0w5Q5SfwPHpyUxl640AxQh8MESbcA/FXNdIwI8=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version:Content-Type; b=h0wNRbH2Ezjc3qKYE3HHyqL0YDYP9YT2B8D9OoY4Xi7R0hUsF//DWaFeStUkXL/k250VpEtGz92Rtp9n8p7OZ08OhImWMP8FYeLTzD5o3LPl9TXX/cJKgaWD2jnWJdpCnjHB9PzYijoQiNH8Cv0ktD6lG0di369+G1el6chCaXQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Tg5Jkn34; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=UEAynr56; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6094TiIU3165826
	for <devicetree@vger.kernel.org>; Fri, 9 Jan 2026 08:00:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=OCALrOCtTbJnG9HYOckAkG
	2t/IwFExzqSTmJr8CdjC0=; b=Tg5Jkn34N0m+R+8krFdOGLOke8v8IKysqPqM35
	mlVjN1As4Q2eaw0JNnivmOxLRIZcEiUv3WHrR4YqVtOl2o60PsgOrpzeoWggQRav
	nZEScfNLcDpph7gzwgRtTIxphBdixRUr95gVWEJPej0VjZxuV0CX/8KLjhmwBh7x
	oAFl6gYviZHnAb4S7O0Ayiduc2/pmPk741nYeAimuj0yqC5KFP9X06QuWvihVY+I
	Z0zVLAOApC+7KWQo5ZixPV/X9q8s/UpS4ndCK2wQpayw37GDA1yb/YbHORoH2csh
	vQkYs2JPV4DbiP3Wl699+7XTMAEsnUt1R0yn783nopgt0fEg==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bj892424h-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 09 Jan 2026 08:00:01 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-29f27176aa7so61327795ad.2
        for <devicetree@vger.kernel.org>; Fri, 09 Jan 2026 00:00:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767945601; x=1768550401; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=OCALrOCtTbJnG9HYOckAkG2t/IwFExzqSTmJr8CdjC0=;
        b=UEAynr56ShTIYhsaVw87bNG6xPpsBNfZuTMMCfb6hg6mT+a+eSUZPx+wGXgtoJFH3S
         UCU1Vcshp+lPgWdB58WYuP/WzTuPRuV9yUL/AldOIp9+Uf0dRPVEefX64KTg9jd5Y7uS
         xuvjFNHhBc2j2GkJsU5dYFsmMeI3SSu2iIIYEVvboWUwIkots1Izdm1IiJsBmCaeTcQX
         0py/Z4JqCRLSqNn7rYE7HOhby/An9BjunsRCjb2LxI96rUQCNPbpewT4G+LxXfjjYElF
         KFgpRRrVbhIAed7+3tOb8nGitEiX8bD91HDz1+NG3WvciCZJg5wdjKUScbFsAJ1DiRgZ
         nncA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767945601; x=1768550401;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OCALrOCtTbJnG9HYOckAkG2t/IwFExzqSTmJr8CdjC0=;
        b=aID7hl7Lw80TilKkTSf70ALFao0tX7ifx6q2YaaodkBAJpTuMVXqyaEIlmc9A+yuYH
         9KWy8nl/J4nIG5TQv7p9pKVjLQ7wYpSeuQ4eKOIG7K3Q9dVE+REyADsMZrczaoigCUc6
         LJLKNLMxCgw497IYcwV9QLXvbJRPDOKNCvXerCfXKvQxfGrWTce9ytu7sGJbVX3w+dlW
         ujXeKru7zsT0mK8SJKF1npUsBmbxX+azeMPnvfCqrqJY7UNmZB3p/0mQmi8tJBGWHL9/
         M4snuBenRQt8vDYr71vSVBSGql3HHTsnPQGWVbeU/yioOlL3NRGUdl6IAZfEp+hP23ne
         ipGA==
X-Forwarded-Encrypted: i=1; AJvYcCWaP2y0VwQE7iUftbo4iPrM5zLYxilwnuOlUb4ugKdMBygt2ALW0/mMbo6oa2qge1252MWZ6bvq+K3N@vger.kernel.org
X-Gm-Message-State: AOJu0YwaQuRHRVLOsz6x1LwxP83LcowQg0KRjeL0lKRVMyFUuRnus+CA
	IzPEkoPZq/6kJlWOl1Obafx6ZE3yMi4LfTqNtpXYO/O6SsfgwBGS9OClfj0OQ+XQKTwbPxUZZa3
	ZEEhcZGhfcGDtH/S/IQymA2y4SSlNahUL5W22Se4RqxvfeWb9jXLs9dSYdDSn6oF3
X-Gm-Gg: AY/fxX6QmBCKJKNHvbYOjtYqfFEuzOhcvClI4ZVKJZX3cF9EsJyCzql0/Z5EsXlqLen
	5qbAfZrm4cd2POh3+7+0g5JY+xusBYH5+zzZUcy7WBYFptSJPJWrMMlo4UNSlTjNnZpyCFju6d5
	ARpIccP6WqqP2cbrWITlM7roKKIg6ozpoAJsfFEboJ4j5ZQLoJFrXm0uTcsz2HcXTQtf69kgUPJ
	oa183KP6stdDBuRa3J8AP7ZK3e/nNah+r7LO9qYW9noCuFSmkczYjCwjgiYc6UtsjbrwjXnko2K
	quJ0tmoP2PZMTetekQ3ekUMQcncLn+eYnhb6kVTkmvze0iq61CyVxKQCqtZSjBIjOP47wW7Mmxl
	IOYdSdgY+eAKnPwyLxfRf7r2R7IPSywckHd6u4yTXYXNo+JdJN3Ieqqftgu9vgHAB6AhtEt6Gay
	w=
X-Received: by 2002:a17:902:e552:b0:2a0:de4f:c96 with SMTP id d9443c01a7336-2a3ee4290famr84535645ad.18.1767945600723;
        Fri, 09 Jan 2026 00:00:00 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGFSK+Lku1ZSX+jQhjpLO5QfKKpxzvZHLY9XBYT3Bk1LV+uUP1O6CYHVtBlEnSQXQM0N12anQ==
X-Received: by 2002:a17:902:e552:b0:2a0:de4f:c96 with SMTP id d9443c01a7336-2a3ee4290famr84535405ad.18.1767945600191;
        Fri, 09 Jan 2026 00:00:00 -0800 (PST)
Received: from yijiyang-gv.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a3e3c3a56bsm96808445ad.20.2026.01.08.23.59.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Jan 2026 23:59:59 -0800 (PST)
From: YijieYang <yijie.yang@oss.qualcomm.com>
To: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, yijie.yang@oss.qualcomm.com,
        krzysztof.kozlowski@oss.qualcomm.com
Subject: [PATCH v2 0/4] Initial patch set for PURWA-IOT-EVK
Date: Fri,  9 Jan 2026 15:59:50 +0800
Message-Id: <20260109-purwa-v2-0-f39ee10684cb@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1767945329; l=2690; i=yijie.yang@oss.qualcomm.com; s=20240408; h=from:subject:message-id; bh=aOH3bXRekoCLDNLFUKzyXEeZAT1Eqc2C/tBCqc66vw8=; b=yWNxT9luVsGQSoQq767+JP6gsuQJzEWneFltAVU6FJFIZ7/jHbQWkOytsT2KVfukeCRezJQcF /OxKmK0L1O7BitXmE7ONQU8bsnJ8YgWbJosGgGLEF7j5eRAZwugwGqY
X-Developer-Key: i=yijie.yang@oss.qualcomm.com; a=ed25519; pk=XvMv0rxjrXLYFdBXoFjTdOdAwDT5SPbQ5uAKGESDihk=
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=M45A6iws c=1 sm=1 tr=0 ts=6960b581 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=Jn1IuHGNbmyHqfI9sl8A:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-ORIG-GUID: VPT-mkV1DDX5y0deq6uMKtMXUNM5SVjp
X-Proofpoint-GUID: VPT-mkV1DDX5y0deq6uMKtMXUNM5SVjp
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA5MDA1NSBTYWx0ZWRfX8fqAHg4irYNR
 bkAHlpY6SHgVm/DFu4paOkyoL2YIWu3okI2anFODhzRp9C6LWZc+UyiGbZCt4E2EguG31wt3igT
 tcds3QH41d5YfpBwhiURZh0W8HtbtDfZiwQ50bpwM4C3jJy3KRy4aqevcA9JC7KSPi0spgOodU1
 CyEgPfoQnrjvPLdbHfrQKhetfiR/T8ugu/cToBs2IBy73b9CBa083I7I4WrALtqDgU0vUzGiZXA
 tCRlqGfGmgpfqs3AmZdaIM9eav9YQNA8I5WzwnNSEzZO8djDlrCStnlQKnmQAa8e468LcJctKag
 aw76GP77wNM+5oDaH66Opkr9qmpoN42D3htru7vcf58dXvGapYdQu0qTASB/RKXzLUEBP5Y8GqH
 8vnptMepknwZUTKfcziAg+VI7DrJk4/z9AWvQSAzpw8hx+RBCeEZoI2IsPTk5+MKyVeUwlSNwQh
 bEtS6Orl3MW1RmU+gLQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-09_02,2026-01-08_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 impostorscore=0 lowpriorityscore=0 bulkscore=0
 phishscore=0 suspectscore=0 clxscore=1015 spamscore=0 malwarescore=0
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601090055

From: Yijie Yang <yijie.yang@oss.qualcomm.com>

Introduce the device tree, DT bindings, and driver updates required to enable
the bring-up of the PURWA-IOT-EVK evaluation board. Focus is on two key
hardware components:

PURWA-IOT-SOM — A compact System-on-Module integrating the SoC, GPIOs, and
PMICs. Designed for modularity, it can pair with various carrier boards to
support diverse use cases.

PURWA-IOT-EVK — A carrier board tailored for IoT scenarios, providing
essential peripherals such as UART, on-board PMICs, and USB components.

Together, these components form a flexible and scalable platform. Initial
functionality is achieved through proper device tree configuration and driver
support.

The PURWA-IOT-EVK/SOM shares most of its hardware design with
HAMOA-IOT-EVK/SOM, differing primarily in the BOM. Consequently, the DTS files
are largely similar. Both platforms belong to Qualcomm’s IQ-X family. For more
details on the IQ-X series, see:
https://www.qualcomm.com/internet-of-things/products/iq-x-series

Hardware differences between HAMOA-IOT and PURWA-IOT:
- Display — PURWA uses a different number of clocks and frequency compared to
  HAMOA.
- GPU — PURWA integrates a different GPU.
- USB0 — PURWA uses a PS8833 retimer, while HAMOA employs an FSUSB42 as the
  SBU switch.

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
Changes since V1:
- Update the GPU firmware path.
- Update the description in the cover letter.
- Reorder the patches.
- Use separate DTS files for Purwa and Hamoa.
- Update base commit.

---
Yijie Yang (4):
      dt-bindings: arm: qcom: Document PURWA-IOT-EVK board
      firmware: qcom: scm: Allow QSEECOM on PURWA-IOT-EVK
      arm64: dts: qcom: Add PURWA-IOT-SOM platform
      arm64: dts: qcom: Add base PURWA-IOT-EVK board

 Documentation/devicetree/bindings/arm/qcom.yaml |    6 +
 arch/arm64/boot/dts/qcom/Makefile               |    1 +
 arch/arm64/boot/dts/qcom/purwa-iot-evk.dts      | 1313 +++++++++++++++++++++++
 arch/arm64/boot/dts/qcom/purwa-iot-som.dtsi     |  614 +++++++++++
 drivers/firmware/qcom/qcom_scm.c                |    1 +
 5 files changed, 1935 insertions(+)
---
base-commit: beff4beeeb2760405ad49de2a6a1bdab8fb1aec3
change-id: 20251113-purwa-907ec75b4959

Best regards,
--  
Yijie Yang <yijie.yang@oss.qualcomm.com>


