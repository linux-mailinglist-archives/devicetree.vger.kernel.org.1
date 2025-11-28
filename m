Return-Path: <devicetree+bounces-242912-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 09D95C91436
	for <lists+devicetree@lfdr.de>; Fri, 28 Nov 2025 09:43:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 181354E358B
	for <lists+devicetree@lfdr.de>; Fri, 28 Nov 2025 08:40:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 095A92EA177;
	Fri, 28 Nov 2025 08:40:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="GocIyhMo";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="kujVmwEU"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F09432E8897
	for <devicetree@vger.kernel.org>; Fri, 28 Nov 2025 08:40:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764319217; cv=none; b=MF2U7169RJ2Jt7qh5CeVjZwe+X/v8HkhHX+JtUHRq5P/f+y5/ggq+drjoWZnPJKScYUIqxEgDpfQOkBjECzhnLfq4XXJvcUEL0VqFpM+blgq+KuTNKIFMLwkmyGFS76j9+svimJ8bLfni43ve96YgwM/vrgSplhB2xS1IBQ2SSA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764319217; c=relaxed/simple;
	bh=1LPipc2kKLFebvKgTNK8Y5aNJuXIWcXIdUWnSMq01L8=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=T7NztSB0QAagcVbvAjozSjiWcx+1FdTmGJmMlIWZorL3VL7Iaa0/+n0/bR+aTlP2AwmFBz5y58JfjZOa9HYvAPLwKr/jZMt2e1gBAbYGDcFk24lHp6E6D6iInXgI9WNsCnrVLCht/ZvYJC08w3vJ9Dq+077k1lt8+82mwfYTBto=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=GocIyhMo; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=kujVmwEU; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AS8P9xS2986602
	for <devicetree@vger.kernel.org>; Fri, 28 Nov 2025 08:40:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=FyjvOrT93IK0JdqBV0g7j6
	s6KnI/QOOArjhf+zENe3g=; b=GocIyhMo9coRqcRvYU9pbZB0yoRMEaW3UgBPvp
	kdrrW4iZJoV66kkoitblC1AeN2/kaEaBXu6vY3X0i79gXWVIIULM0qbrfjZG8jMg
	6ZHbsRqYxjBNpd4l2KisKFZthmPaql4mpzC07PQrZREUmgf5mndKhhnwpH8mmAN7
	Lpvif3L+deDBVz6Q+hoWkFE5emZiJ6jD2uuDCGXfaaUAMU6+ALHLgH0Qjl072QLl
	0Ckno40xpTArqOGHvcZkj5AZP3QUqcp+uxIb2GG/c+i+R/1WhwJi+RhYNmdMJk+7
	D9dUDEBvErWUe89XeJQ+kUQX9r4W/T7v1haLZ6WhBzJUk/Xg==
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com [209.85.215.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4apmvxjn2n-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 28 Nov 2025 08:40:15 +0000 (GMT)
Received: by mail-pg1-f200.google.com with SMTP id 41be03b00d2f7-b5edecdf94eso2314499a12.2
        for <devicetree@vger.kernel.org>; Fri, 28 Nov 2025 00:40:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764319214; x=1764924014; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=FyjvOrT93IK0JdqBV0g7j6s6KnI/QOOArjhf+zENe3g=;
        b=kujVmwEUeJb8uRs7eGYpflt1mOokp+t1Tz7R5drYqIPq4RV+o7nod33MnfGG+kgJjd
         EOE5lk/osuSGAVYyN2U83XzT5PfvDw47IE6OJL2RZZYWbCcEi2gP3L3nCECpfocrt2s/
         KjEzLnScy5Bn+PnBJINRVnm/fP169hGa21UJ2f7ELbX2Rq+n8SK7tnxlkXeViDfjiSGP
         SY+5ey/Y1NECumLiq6i3cFmqjwKlVwsPoOVDbZ2X6TxIosluEgrod/09Xp3By7wYYWIH
         dmFgU9geeh8JopN9+VpU0AnE7SZ6AaT8++2v9BJTa89FJbIQaPVF9sn9Mgs7f1FUP560
         wSvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764319214; x=1764924014;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FyjvOrT93IK0JdqBV0g7j6s6KnI/QOOArjhf+zENe3g=;
        b=TeNHWeRtKL2iE6I5MifinFHDyLqsA8UQmLmVutKxsFuhm6QPi29BGbij6e35cAC6q0
         hcWGGqfIzgz+B0lJb6OC2QvYwiH0kVFEP0n7edOdM/i6IwjwHpZh+oP7oZuvpWfjRMpO
         nP9y65fZoSmx4gHguPk8OW6jgScXujfPTa6TAeIR+ZDPgiEliEKZX5V7/sakJxbW1d07
         oKi+7ks5pH7YdraHHEgGW5nc9wX6E5g/yLJVHXfvSt04Xzkd60krWcbo1uGVGEnNLH+L
         zOEOs25wABCwUDmQD7uCjNS815bO8exHli0IWKiyBXlgbV5ISbKhXtSdj1iWe1SWDf/3
         n5QQ==
X-Forwarded-Encrypted: i=1; AJvYcCWXHhPQFl9K1q35Rb03N36ybxsZcHWT+33QRYiIyaOU5uCgWWXUEboQnDYMgByZETyVdAVikjOMWxYb@vger.kernel.org
X-Gm-Message-State: AOJu0YxxQNqZk4sfljg5NMQxPJqVDJHhbycMunvyndPzGh4Zh9UPncVB
	EYjyv2AC1ZAsDdVZ9/g2OV6T9L1S3Ns2vVKsC2ipOxo3cc3rxTHVrV7W6Pu0fTjtWZxBl7VaQ9n
	owvM7RWP0KpezrfICZyM/iPI/KfwgqJHnbezJUUCMIxekFTdKn3lrxafZYs05YLSE
X-Gm-Gg: ASbGncsJONqSLOxq8jgQlTjjrWZjd3D2fDZfwsQnyZh1GtEcd+dZ/8QjnK3INDF2z40
	p2CQt8eeKIR5IKzWuBzN4UwAPZlls+K/kIutNm0R3IpRGF+wuq0Obqn2RaItFoi7JbKZgP9eK7S
	dimdBVtQKED0Sbcb41w7QBPIxuxvXWj49exd4rFNbDGYKy+DY0hYaJH8Sf1Bd3opOOTaHtVuM/P
	pIuccQpYxJY3YzhrRm0K3SVuNM4cbA1cum0whMlLvXX2Wvac8fumGk/d69w4wyDzzjnVUsAj4/D
	fgCcsMrGq/p9yPO9z9vXSA4HoAEVAFJgNHB0MeiZq9MXEprJW0CAiWC8knkRPFVJTcyYfLWSJGr
	unx4AlqgdIUNrnajARU5dwsXcLqujtB6cmmhywhZYxhdGg/yI3S8L
X-Received: by 2002:a05:7300:a193:b0:2a4:5a26:25e1 with SMTP id 5a478bee46e88-2a7192a889bmr17062822eec.30.1764319214403;
        Fri, 28 Nov 2025 00:40:14 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEN/8uTe+LMmFXvJwmlKjU4p0jxVW+ltrTmlqTwd9sFpFTR2g7sd+RuqBpMD5F/Y/J+D3xkJA==
X-Received: by 2002:a05:7300:a193:b0:2a4:5a26:25e1 with SMTP id 5a478bee46e88-2a7192a889bmr17062794eec.30.1764319213785;
        Fri, 28 Nov 2025 00:40:13 -0800 (PST)
Received: from hu-luoj-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2a96560986csm21895872eec.2.2025.11.28.00.40.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 Nov 2025 00:40:13 -0800 (PST)
From: Luo Jie <jie.luo@oss.qualcomm.com>
Subject: [PATCH 0/5] Add CMN PLL clock controller support for IPQ5332
Date: Fri, 28 Nov 2025 00:40:10 -0800
Message-Id: <20251128-qcom_ipq5332_cmnpll-v1-0-55127ba85613@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-B4-Tracking: v=1; b=H4sIAOpfKWkC/x3MQQqAIBBA0avErBN0KoyuEhGlUw2UmUIE4d2Tl
 m/x/wuRAlOErngh0M2RT5ehygLMNrmVBNtsQImNUqjFZc5jZH81VYWjOZzfdzEb1CRrtLK1kEs
 faOHnv/ZDSh8Sc32zZQAAAA==
X-Change-ID: 20251127-qcom_ipq5332_cmnpll-bc27e042d08d
To: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Luo Jie <quic_luoj@quicinc.com>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        quic_kkumarcs@quicinc.com, quic_linchen@quicinc.com,
        quic_leiwei@quicinc.com, quic_pavir@quicinc.com,
        quic_suruchia@quicinc.com, Luo Jie <jie.luo@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-47773
X-Developer-Signature: v=1; a=ed25519-sha256; t=1764319213; l=1924;
 i=jie.luo@oss.qualcomm.com; s=20251128; h=from:subject:message-id;
 bh=1LPipc2kKLFebvKgTNK8Y5aNJuXIWcXIdUWnSMq01L8=;
 b=TVcFMcuwsQL16OBI9wMcCOxo4rYg1lU4kVmQaKPmdaWwepVEJ35864isGuv9o+KI2yfGP2Xzu
 t8njy/VRUmmB1Tpt/KFp/mc7CA7q9PBF54P5JcAqDaWEs0nfvcWQxyQ
X-Developer-Key: i=jie.luo@oss.qualcomm.com; a=ed25519;
 pk=gSsYMDakxtd6UDFYDdA9y9yjIs5Etp5GK/3DoXWPyS0=
X-Authority-Analysis: v=2.4 cv=Vtguwu2n c=1 sm=1 tr=0 ts=69295fef cx=c_pps
 a=oF/VQ+ItUULfLr/lQ2/icg==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=NSFUn7VNba4siFXGTuUA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=3WC7DwWrALyhR5TkjVHa:22
X-Proofpoint-GUID: D4DoVRZts-bR95X0cK_6qKyOtWhDfz_4
X-Proofpoint-ORIG-GUID: D4DoVRZts-bR95X0cK_6qKyOtWhDfz_4
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTI4MDA2MiBTYWx0ZWRfX0eXAkM0LVkDW
 y3WtgG0ZovwFaxetA4XejgKJkBTpEopqIu0A7Wnzy/BcrR0aQ67PjqLsbP7/FowbMiY72Oaqj+O
 Z5znVXozrE8rfw4YdjENZz0QVW2zs//uYWDBnOX7vb7kmPiL+4FWx4ToD5MBbGsGbybwxYiB4oB
 G6WhM84lONIC1s6XPEcqU/v6z28eyK57ZBVSSpw3wabYIZTb1LGF6NcucB1Zf8YFmGno+02LQKU
 NBH7xJ50qjEN29CZ5iPsx33UMezNu3f4k1CftushaW2dcCMbfAwM23wB4cOvyDDzfi5W4HHm6J0
 Gktymt7JxV1LdQy0/UC+BQTehpXSA53MUZlLItyauVclYUOTdfL3GgZDcY75JP+Rlo/GtumD1Ai
 L72f+EGymkhoAan1ds2O2uNG5jSPIg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-28_03,2025-11-27_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 priorityscore=1501 impostorscore=0 phishscore=0 adultscore=0
 lowpriorityscore=0 bulkscore=0 clxscore=1011 spamscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511280062

This patch series adds support for the CMN PLL block on the IPQ5332 SoC.
The CMN PLL implementation in IPQ5332 is largely similar to that of
IPQ9574, which is already supported by the driver. The primary difference
is that the fixed output clocks to PPE from the CMN PLL operate at 200 MHz.

Additionally, IPQ5332 provides a single 50 MHz clock to both UNIPHY (PCS)
instances, which in turn supply either 25 MHz or 50 MHz to the connected
Ethernet PHY or switch.

This series also introduces a SoC-specific header file to export the CMN
PLL output clock specifiers for IPQ5332. A new table of output clocks for
the CMN PLL is added, and the appropriate clocks are acquired from the
device based on the compatible string.

Account for the CMN PLL reference divider when calculating CMN PLL output
rate. This fixes the doubled rate observed on IPQ5332 and is a no-op on
earlier platforms where ref_div = 1.

Signed-off-by: Luo Jie <jie.luo@oss.qualcomm.com>
---
Luo Jie (5):
      clk: qcom: cmnpll: Account for reference clock divider
      dt-bindings: clock: qcom: Add CMN PLL support for IPQ5332 SoC
      clk: qcom: cmnpll: Add IPQ5332 SoC support
      arm64: dts: ipq5332: Add CMN PLL node for networking hardware
      arm64: dts: qcom: Represent xo_board as fixed-factor clock on IPQ5332

 .../bindings/clock/qcom,ipq9574-cmn-pll.yaml       |  1 +
 arch/arm64/boot/dts/qcom/ipq5332-rdp-common.dtsi   | 24 +++++++++++++++--
 arch/arm64/boot/dts/qcom/ipq5332.dtsi              | 27 ++++++++++++++++++-
 drivers/clk/qcom/ipq-cmn-pll.c                     | 30 +++++++++++++++++++---
 include/dt-bindings/clock/qcom,ipq5332-cmn-pll.h   | 19 ++++++++++++++
 5 files changed, 95 insertions(+), 6 deletions(-)
---
base-commit: 7d31f578f3230f3b7b33b0930b08f9afd8429817
change-id: 20251127-qcom_ipq5332_cmnpll-bc27e042d08d

Best regards,
--  
Luo Jie <jie.luo@oss.qualcomm.com>


