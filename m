Return-Path: <devicetree+bounces-244542-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 81D6BCA63BA
	for <lists+devicetree@lfdr.de>; Fri, 05 Dec 2025 07:33:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id EBA353179541
	for <lists+devicetree@lfdr.de>; Fri,  5 Dec 2025 06:31:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A2E202F39A9;
	Fri,  5 Dec 2025 06:31:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="pxVnqhVH";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="TxjUv4UJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6975812B93
	for <devicetree@vger.kernel.org>; Fri,  5 Dec 2025 06:31:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764916313; cv=none; b=GGRuqGJLdAlY4r6M+bp9vnCH7MHjXO5uZiPXHXN92uI7VkGVKTHKGomAwPD+d80cG59CFBjNcdKnwlIzEd8uijE5rynIEW3b10lC8NguNvXshxOYtHr0TUrbJ2FLvuwmVHzjT0h8gr0nk2Mr++upISmcWc5012Mbu7eimMjl9nw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764916313; c=relaxed/simple;
	bh=TV4Wh8DuBFLSn9iqiPpF9Yb11GTXnanrJJ/+jf2C6Ns=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=Tc5C2NTM4hAaqYfcOV0IyqPmSfdus2OwpHbm6SHuPTx/d3sfUt5aUa68DpDmIhHiH5kMiyvr5/3zh7t7w0OI6VA1WfIBnwXXAgrjBA7Uz88Yk63bacyb/TGkrA05nQVV1GX0KIOh00exyYs/leMOmZQs8p1GfdDHVEgwqEWLQRU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=pxVnqhVH; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=TxjUv4UJ; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B54554l1915927
	for <devicetree@vger.kernel.org>; Fri, 5 Dec 2025 06:31:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=Q+9AHN9kEIgA2gD31kEpBA
	MjAzdaS6BKpf4Y3DogFgs=; b=pxVnqhVH/ziEvYkWHKXSKnBLJ5vooi+PqlZGsY
	OT+9rue+Ln3uv0/Bdv4rO0WXGimLpko0UWuTu3nXHtuPR3jXiPW+56lpi7kg++3v
	FIb47MUe5Zs+bLr+dTrwGc+HGEvFdYlaMsswBedtBytxeOZZXfMbd6MohnpMt+IW
	ZyPzfqxBCFX5CrMbZ1xUJ7sC4YIB+VKqALC7G6utAhlP1yyOBGdPZ0vQ7/B780q9
	O6sqKoolfBaJIU5rPACBRTMuSfeuzDxDiOmYutWEF6bDjGRv/x5FbKEJ5DLIIsKI
	63WHI5dor3VKYYyGhEVYpgICv8zUK9XXb7jsQ6eXLVgrdETg==
Received: from mail-ot1-f72.google.com (mail-ot1-f72.google.com [209.85.210.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4auec1svuv-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 05 Dec 2025 06:31:49 +0000 (GMT)
Received: by mail-ot1-f72.google.com with SMTP id 46e09a7af769-7c70268301aso1451609a34.3
        for <devicetree@vger.kernel.org>; Thu, 04 Dec 2025 22:31:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764916309; x=1765521109; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Q+9AHN9kEIgA2gD31kEpBAMjAzdaS6BKpf4Y3DogFgs=;
        b=TxjUv4UJbfqFwtx2gZxe6LY24R6F0nJDv9M6WkI71KyILx1N807dWg++LVr24/u9aV
         KaDtwvxW7Edhu+L1g7Utgn1b7B1DjOkTbqdQD1CqVyFGDV/U6p0AtTrd5eRyJT4FLnhb
         Wg2Q4EPdWY5ti9Nq5T55SNDZqUkPJ0u5fdcL97sSVEPeOA40Z9UJxh4O5i8oY7pZE2Fg
         Jcp+D/uod0dv6XMfdK4dbRduiC38IezHy3MARAk5AxrLcNIkcOvrC6yMzGiJSiHzbbeH
         uyTupmOaPdK9/mOH/TeF8ta5wJORGdgLECfacMk+PW1Wbl61cXEXKq1gJjAf1FrqGd4a
         XKYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764916309; x=1765521109;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Q+9AHN9kEIgA2gD31kEpBAMjAzdaS6BKpf4Y3DogFgs=;
        b=TlP1Syo6tYk6UR4eX92zZpXHowsmnNIF75ezkyjvRRDuZcfYHBwyD+0VbtvcrIrASI
         5F6Sbj/hUkhxCpXRFZkolQ6sRxqL6G/3duBefmV9MHW+brqzuxyGQmLtxKXpko6HFHLt
         yRXB+/LdsLhyjVaNHowwmcoAeTbm7f32X7/nXofv80j/EFXXMkmd7MENJQHKGZdY03If
         Ph23gaBomQgs5+GSZmP4IcWBpV9DayGmvCDhFNyLX4L1vU377711TihPMNgNh86rDdvg
         KslcMy9iKqcUwDZSwKujRpyhpr5el1jxdnqaLlBaCf4j+vSY/1kOFMetYy4UsiZDh5xA
         nFiA==
X-Forwarded-Encrypted: i=1; AJvYcCWqqL0c9pRdA56QDBDIwxoxAm2hBrjd/qF8aKzVAenfXePV8Kp+WLIX3hQc/Zv8dtKn7gTXedzPU3xT@vger.kernel.org
X-Gm-Message-State: AOJu0YyX/H4p+tUmor1X1pwwi9g3k14cF02tYZMr6vd45ZtkHzZ9zTM7
	snabx43jEC41o2wwwZwb+mjxy2vpr7V4pNiilfaKW4lgwA5c7isXWlzjxGQ2C9IFzeQXqu3L+KE
	GZ8Bs416/q1sZU37nFfzVrKZS42xrj37CsGktE8ZNr/jNNPYp16Mycg1FjmFFQaDy
X-Gm-Gg: ASbGncusGHvnnhB0cpO2fNrIv4cUrI1Fq5uR8g+yVqAv4yPd3ufe6Cq/8Lh2RujmIX5
	JQwXen15U4M7NIimLgqNqmYhdkjUw6ai0Jts38c3ByTW4/ISDDTUxzWvFcBMxZvbZmvLZR3g9rU
	Q6/THOgJpZw8HMqWtbNI9hUIbYfcnkUCrySfakascZOmub8knj1IZb9G6aJ1qjfaAWpYO118CLU
	sQB90hISRZ7GcaHhjTwwbRATi0adyzgkQltmJTW94nFKZBte5nUH8KWlO3yZN91JZfNSMRSrMXf
	xxMsKXNXnZW+KmmKrROLJHteJbXGMmn/ZvvjpGkea7MLq8Z2LkRL87ovgAGQiTIbdqFUVUmPC48
	8CW0tNQ7r9+ZYpRGB4NgABdXygkZnT7L2sWY0yoEWKhvshKdKy1A/N8PCAAOf
X-Received: by 2002:a05:6830:44a5:b0:7c7:7882:8ec6 with SMTP id 46e09a7af769-7c94dc9477amr5038702a34.36.1764916308728;
        Thu, 04 Dec 2025 22:31:48 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGPVwES8GudKU0XEQvtFkd+1ki6b8AxbY/heLLd/ribBnNo7ujSYR1Vdj1ZUGH5dWz8ehKZjg==
X-Received: by 2002:a05:6830:44a5:b0:7c7:7882:8ec6 with SMTP id 46e09a7af769-7c94dc9477amr5038679a34.36.1764916308295;
        Thu, 04 Dec 2025 22:31:48 -0800 (PST)
Received: from hu-jingyw-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7c95a8f85e7sm3223326a34.4.2025.12.04.22.31.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Dec 2025 22:31:47 -0800 (PST)
From: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Subject: [PATCH v2 0/5] arm64: dts: qcom: Introduce Kaanapali platform
 device tree
Date: Thu, 04 Dec 2025 22:31:18 -0800
Message-Id: <20251204-knp-dts-v2-0-596d8398c6d3@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIADd8MmkC/31RS07DMBC9SpU1gzxjJ7Gz4h4IIXvstBY0MXEaU
 VXcHScgyoKysfSk9x1fqhymGHLV7S7VFJaY4zgUQHe7ig922AeIvuCKBNVIQsHLkMDPGZT1jQj
 Y1o2qq8JOU+jj++b0+FSwszmAm+zAh1VftHKlHWKex+m85S24kjdrYehqvSAIkL13rJwJ6PBhz
 Pn+7WRfeTwe78tTPX18RU7h7VQ6z1+518plwVoYCWHP/Pxi7WCTfY2wSLDOYEDR1M6rblHV76n
 fOkF6axMTMzROoTZ9u7p1i/ybjxs/eQZp6kAohMe67xb6j87p1JcFIJUyjjWTQHVDgut9flYkj
 gHS4QwSTaMdOTLY3NiCJLewPDK4OPg47ME0gVqjPfc+fMu2/1rvG+du54ip1Yqc1bWshXbCWyF
 Qt7YtKDhpTcO6b8s/fHwCT2P9NUMCAAA=
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: aiqun.yu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        trilok.soni@oss.qualcomm.com, yijie.yang@oss.qualcomm.com,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, phone-devel@vger.kernel.org,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        Tengfei Fan <tengfei.fan@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-99b12
X-Developer-Signature: v=1; a=ed25519-sha256; t=1764916306; l=4508;
 i=jingyi.wang@oss.qualcomm.com; s=20250911; h=from:subject:message-id;
 bh=TV4Wh8DuBFLSn9iqiPpF9Yb11GTXnanrJJ/+jf2C6Ns=;
 b=X15Z+ZePnMC3JvXj0M4a+GlgGjuMkCJNavQpfV3PDxeTgUDjBmXQo0M9mMlLMSu2O0NQnLcZi
 C+vh8gvs5epBdtOui+AlAByJrfIfD+dyxML6qoXuBzu40pLGhCLF5gg
X-Developer-Key: i=jingyi.wang@oss.qualcomm.com; a=ed25519;
 pk=PSoHZ6KbUss3IW8FPRVMHMK0Jkkr/jV347mBYJO3iLo=
X-Authority-Analysis: v=2.4 cv=HeAZjyE8 c=1 sm=1 tr=0 ts=69327c55 cx=c_pps
 a=+3WqYijBVYhDct2f5Fivkw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8
 a=bWsk7nGGAifYO06aIhUA:9 a=QEXdDO2ut3YA:10 a=eYe2g0i6gJ5uXG_o6N4q:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjA1MDA0MyBTYWx0ZWRfX/Se54gDrXLE6
 Qezt3UGTY3+wr6hVlUL3nZ/w73phQDac0EFwXAyUqUeef3fqH1wRpxgOa3McdiUFoW0ApDCEPTc
 pOmdqUkAYH9mqPwYxhHo7LfhR216iS2yfHHUvLyZg5iP78+8J0ym30Qi26oWCUo5iSoFS0NBoIQ
 7kdiRR9+0wA9sHBHbUTEPgfzD92tpVLFaX30D74RyHMv7hzXJ0DVu/A/dIp923yQ5BpfMFGAL/a
 IoZgTDlVoN4PZoBcKF3vw8DARopkgRelbS9gA4ArY3s4ViqSvbEgQfW2qO4EQW1oxku5SziDrXh
 SAy/Q0l7TNJl5oJJx+t4xrq1GhGIG0ALbv0gD+hR3dSWF6HV/tu/7J7nDxLF+wRzuAf4ranjPp7
 oJ7uuPs6ZhENhujxmc5P+DBjzoypoQ==
X-Proofpoint-ORIG-GUID: AH4trf0EfA85iltkw247hkoIpU-oQPbA
X-Proofpoint-GUID: AH4trf0EfA85iltkw247hkoIpU-oQPbA
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-05_02,2025-12-04_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 clxscore=1015 suspectscore=0 spamscore=0 bulkscore=0
 lowpriorityscore=0 priorityscore=1501 phishscore=0 impostorscore=0
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2512050043

Introduce the Device Tree for the recently announced Snapdragon SoC from Qualcomm:
https://www.qualcomm.com/products/mobile/snapdragon/smartphones/snapdragon-8-series-mobile-platforms/snapdragon-8-elite-gen-5

Add device trees for the Kaanapali SoC, MTP (Mobile Test Platform) and
QRD (Qualcomm Reference Device), along with the corresponding defconfig
and binding, providing initial support to boot to UART shell with UFS
enabled.

Features added and enabled:
- CPUs with PSCI idle states and cpufreq
- Interrupt-controller with PDC wakeup support
- Timers, TCSR Clock Controllers
- Reserved Shared memory
- GCC and RPMHCC
- TLMM
- Interconnect with CPU BWMONs
- QuP with UART
- SMMU
- RPMhPD and regulator
- UFS with inline crypto engine (ICE)
- LLCC
- Watchdog
- SD Card
- PCIe(enabled on MTP board only)

build dependency:
- gcc: https://lore.kernel.org/all/20251126-gcc_kaanapali-v3-v4-0-0fe73d6898e9@oss.qualcomm.com/ - reviewed
- ipcc: https://lore.kernel.org/all/20251031-knp-ipcc-v3-0-62ffb4168dff@oss.qualcomm.com/ - reviewed
binding dependency:
- pdc: https://lore.kernel.org/all/20251021-knp-pdc-v2-1-a38767f5bb8e@oss.qualcomm.com/ - reviewed
- cpufreq: https://lore.kernel.org/all/20251021-knp-cpufreq-v2-1-95391d66c84e@oss.qualcomm.com/ - acked
- pcie: https://lore.kernel.org/all/20251124-kaanapali-pcie-phy-v4-0-d04ee9cca83b@oss.qualcomm.com/ - reviewed
- imem: https://lore.kernel.org/all/20251123-knp-soc-binding-v4-1-42b349a66c59@oss.qualcomm.com/ - acked

There is one remaining open discussion about the CPU compatible naming
which is not specific to Kaanapali so we keep the "cpu,oryon" compatible
for now.
link: https://lore.kernel.org/all/20251119-oryon-binding-v1-1-f79a101b0391@oss.qualcomm.com/

Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
---
Changes in v2:
- reorganize patch, merge initial features in one patch
- update UFS clocks in GCC
- fix nodes order in boards
- enable CLK_KAANAPALI_TCSRCC for clk driver change
- merge tcsr and tcsrcc nodes
- change imem fallback to "mmio-sram"
- minor code style fixup
- Link to v1: https://lore.kernel.org/r/20250924-knp-dts-v1-0-3fdbc4b9e1b1@oss.qualcomm.com

---
Jingyi Wang (5):
      dt-bindings: arm: qcom: Document Kaanapali SoC and its reference boards
      arm64: defconfig: enable clocks, interconnect and pinctrl for Qualcomm Kaanapali
      arm64: dts: qcom: Introduce Kaanapali SoC
      arm64: dts: qcom: kaanapali: Add base MTP board
      arm64: dts: qcom: kaanapali: Add base QRD board

 Documentation/devicetree/bindings/arm/qcom.yaml |    6 +
 arch/arm64/boot/dts/qcom/Makefile               |    2 +
 arch/arm64/boot/dts/qcom/kaanapali-mtp.dts      |  754 +++++++++++
 arch/arm64/boot/dts/qcom/kaanapali-qrd.dts      |  712 ++++++++++
 arch/arm64/boot/dts/qcom/kaanapali.dtsi         | 1606 +++++++++++++++++++++++
 arch/arm64/configs/defconfig                    |    4 +
 6 files changed, 3084 insertions(+)
---
base-commit: b2c27842ba853508b0da00187a7508eb3a96c8f7
change-id: 20251204-knp-dts-4ad60e175645
prerequisite-change-id: 20251121-gcc_kaanapali-v3-ab91e1065bd4:v4
prerequisite-patch-id: 9a9cd779ee23419a023893f357decbe09da1e42f
prerequisite-patch-id: b7d46739fd97b16bbf635569018bdd809fd30966
prerequisite-patch-id: 0baee9ea7681fe6b4ab1c69f1e087427ad0050e9
prerequisite-patch-id: a7ee79adf85ce9c5aedca168a561a9560fa59b44
prerequisite-change-id: 20251028-knp-ipcc-6b4189f71121:v3
prerequisite-patch-id: 6cf08b941741eff023e37a6a8afd5478bdf0788d
prerequisite-patch-id: 0ad500fc45e104a874839181b5ae59a4867ba1cb
prerequisite-patch-id: 628073856ba29bc3ed64f801dda4c9c7d767f327
prerequisite-change-id: 20251021-knp-pdc-395e2100d15f:v2
prerequisite-patch-id: 91797dc6f0e455a546d73254df87fc0ca22aa142
prerequisite-change-id: 20251021-knp-cpufreq-3449bc8c2014:v2
prerequisite-patch-id: 6c96544a929e0633c39eec84bd77f872fa3327ed
prerequisite-change-id: 20251124-kaanapali-pcie-phy-31968b2b2916:v4
prerequisite-patch-id: 265d61c5de05beea27297c10299239faeef55816
prerequisite-patch-id: 94e3936a21c0e19e5f1990a5cddcb1474b9adc95
prerequisite-patch-id: 69f436a719908a2210b4a4074a0b92bdfef2efd3
prerequisite-patch-id: f0c39c4a4de3b45a66ec8916e8d86a8ad059ade8
prerequisite-patch-id: 389060752aa271d1016ec115f19c0edfd1f831f6
prerequisite-change-id: 20251123-knp-soc-binding-96e2798dcfde:v4
prerequisite-patch-id: 789208c9126c28643c289754cab1681ef3bd396e

Best regards,
-- 
Jingyi Wang <jingyi.wang@oss.qualcomm.com>


