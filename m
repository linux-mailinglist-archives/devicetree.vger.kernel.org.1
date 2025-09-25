Return-Path: <devicetree+bounces-221021-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 714AEB9CD50
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 02:17:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7E0FE1BC3874
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 00:18:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7C9CC1519A6;
	Thu, 25 Sep 2025 00:17:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Ihe6JRv9"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 86A8285C4A
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 00:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758759455; cv=none; b=oMtjOJDuHdWR0EtF8RpNPeOUUnLprOZ7jOC/QqUjXjxHx3yvCTbMJBh2+bGlogdJ/PICiT2iNCLfdLPyGdcVE1yC8dWqoKOYDIiO2V5Ey5ZU0No6vU7rJrj2zJeksnv0ry2BX/VmR7unv4E8ZVBnJsvmMbZU8R3lnG3kahvgEdg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758759455; c=relaxed/simple;
	bh=1Slhr9ERZIcI0tadoCZpX7ihSjrncVgCXNr8B8yU8uk=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=TGifrLVVgyVGQZNsAHgyIr6LrZYY6uGzDhhuklkHDlvXFV4uVFsyG2pRoRs7enrqin5FBSswK/3W+dwu530JXbiqdYthJhOH8wooAsuk9JvGjPFeeIP9f1vYK5ALdmi+7zwNiTFnZ+Bv8kL/Bx8/LuUcQDn3mvsvXiv6mnvAQFI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Ihe6JRv9; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58ONiVPA029044
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 00:17:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=FHUGNwkRb2SXOZNiPj3Ebj
	2KX406CegzHSbFTrEVwK0=; b=Ihe6JRv9ZRq1ojMv1zmwsWdxpJnzECExWlk8bn
	VPv1WL20pMn0OSsdL3kqi7xsHBPCxs9yDfFJQE1GjebrPPZ8JotwyXmi9C+rDro0
	cPDwcswozrP0NlzmipVap7mgXsc56lnVtOFsQsR3tIF2RXfDz+fKj/+xku+RcFr2
	oI3lQOg5EbPG33EuzVzFlvz0kK0dweNDDmUhozxluBYaPPL6qgVrJq5LdOaU14h0
	VLWfXLAzJcf5Jb3tTYvRqvpK1l4r7T7zwLsxRpO7wxpvVjV2dUO/gblAUW5mBYWe
	Xi0taGWo3lWjTEUUQZM5wvpLTB3Q8JYVYujVTD4jqzJr4d4Q==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 499hmnxg84-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 00:17:32 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-78104c8c8ddso17747b3a.2
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 17:17:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758759451; x=1759364251;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FHUGNwkRb2SXOZNiPj3Ebj2KX406CegzHSbFTrEVwK0=;
        b=inh/U/bSX/u7t0u/UF21euUilBli/RF5gIBoydOTtsxgd3eZDSlbIWEtB9CpQQm5pX
         mHpKAevOK6oQLhpkBADNcaNeAzZf+dhceUhgeliMtao8ENFZsTL5WlW9tqK5Z4RXNMjL
         8gkVBaVO3KKhUZDordLxL39U+C55mAF4caBDXtgzJE+kUqp4yJXk9ag5GA2G4oaKKAJd
         R4hd9IiVH1RJ9uUuknRceJbX8Nq07qH5mPSYAdK9aKKUgLjw9s3fJFO+R54pAK+LOApP
         B63U3SE7Dq2hu4R2XA0TX2x9H8PMaBiumyv/fyyBLkS5qp/nrakxTXUb2SlHT1f0cj9U
         eS6A==
X-Forwarded-Encrypted: i=1; AJvYcCW/ZMtUCR5vHJNlx5R72U9d5l2aI8u6XmABbnPrT8ihPVxB8zjAgnzYvM2jJ5qWuFaKsrs1XErJd6zN@vger.kernel.org
X-Gm-Message-State: AOJu0YxUxrEvC5eBrfOuRXiqI0yKaYRoLx7QNF0GATmt1omZaqde8z4S
	u4BqEmtfnwW7bR91RlQPCRolYqzI1LPgsFYM+XQ6sQtbB10ftkmi5xJC6QZDtC6gjsYhtobKWRV
	K/Xy48GZdO14pS3mTSSQQv3UxfNp6yXJIX8KbL2iSIuqWO7lPdlbkhEK83s+K1p+K
X-Gm-Gg: ASbGnctoqhhkuEpt275doWLTA0bwAYkcKdq+NrWCLXFsEw2Jvq0CmKuSquI0mzTpqT+
	xqEVnBOPhPcvQHHgEuWCVqSx91z887oBI4A9IWhqaFXZLbx7CGqpWBSSoZpxt8x3tqIFpU7ofvI
	KegA8BYiyK53gfCZO0l5tN12RyFT2yV35gUa13KecCCc3WbXI8rgxy8flAb2LDqwSr2KLf+prTa
	C8pi6zuSHBchDgH9F9vfeIuxvL88VQJP358uT/G0Au2KRldnPWcnfC/SOQowh2wC79GkUYzyAGP
	+OOiFhk4cb85jXHNQA/heAFhxeTfjPxZxqz66VrV2dTKGHvtH2ZiX5V4h4to0G5UQvyMDWV9/uc
	UvlwHMZ5Iv7k6pI4=
X-Received: by 2002:a05:6a00:21c7:b0:77f:1ef8:8acb with SMTP id d2e1a72fcca58-780fce1f022mr1702635b3a.13.1758759450977;
        Wed, 24 Sep 2025 17:17:30 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFDtt708d88kyU5Pau11PaLDVQZBEt1RxiXMDa/KIbcJ6jKtx8cvPLpBVWQ9TNb7jiU9zyQlw==
X-Received: by 2002:a05:6a00:21c7:b0:77f:1ef8:8acb with SMTP id d2e1a72fcca58-780fce1f022mr1702601b3a.13.1758759450345;
        Wed, 24 Sep 2025 17:17:30 -0700 (PDT)
Received: from hu-jingyw-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7810238e6fasm262748b3a.1.2025.09.24.17.17.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 17:17:29 -0700 (PDT)
From: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Subject: [PATCH 00/20] arm64: dts: qcom: Introduce Kaanapali platform
 device tree
Date: Wed, 24 Sep 2025 17:17:17 -0700
Message-Id: <20250924-knp-dts-v1-0-3fdbc4b9e1b1@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAA6K1GgC/x3M0QqCQBCF4VeRuW5gVaytVwkvRveYQ7TJjEQgv
 rtblx/852zkMIXTrdrI8FHXdy6oTxWNs+QHWFMxNaHpwrWO/MwLp9U5ICZpp8sZsaNSL4ZJv/+
 ne188iIMHkzzOv/1LfIXRvh+p58JGcgAAAA==
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, aiqun.yu@oss.qualcomm.com,
        tingwei.zhang@oss.qualcomm.com, trilok.soni@oss.qualcomm.com,
        yijie.yang@oss.qualcomm.com,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        Tengfei Fan <tengfei.fan@oss.qualcomm.com>,
        Qiang Yu <qiang.yu@oss.qualcomm.com>,
        Manish Pandey <manish.pandey@oss.qualcomm.com>,
        Ronak Raheja <ronak.raheja@oss.qualcomm.com>,
        Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>,
        Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>,
        Jyothi Kumar Seerapu <jyothi.seerapu@oss.qualcomm.com>,
        Prasad Kumpatla <prasad.kumpatla@oss.qualcomm.com>,
        Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>,
        Vikash Garodia <vikash.garodia@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-99b12
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758759448; l=7439;
 i=jingyi.wang@oss.qualcomm.com; s=20250911; h=from:subject:message-id;
 bh=1Slhr9ERZIcI0tadoCZpX7ihSjrncVgCXNr8B8yU8uk=;
 b=aSVq5MMhEjKdKOlAf9y8jzYj6m4BID1M73wECze8A6SDaClhLau8oQqbTZMjllYx8Bqi+9hDt
 XrxLE3xmGCbC3J6Y82oxy9Dk62F0MocOGuRFfpQFScBMhTG3nENb91o
X-Developer-Key: i=jingyi.wang@oss.qualcomm.com; a=ed25519;
 pk=PSoHZ6KbUss3IW8FPRVMHMK0Jkkr/jV347mBYJO3iLo=
X-Authority-Analysis: v=2.4 cv=YPqfyQGx c=1 sm=1 tr=0 ts=68d48a1c cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8
 a=qC_FGOx9AAAA:8 a=nrb-eYeC1vcmNSdgpO0A:9 a=QEXdDO2ut3YA:10
 a=OpyuDcXvxspvyRM73sMx:22 a=fsdK_YakeE02zTmptMdW:22
X-Proofpoint-ORIG-GUID: Jt27tID4ZDFCPRotE4pIQC7F94FGfg6l
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIwMDAwMCBTYWx0ZWRfX1aEFxUsh7e+g
 jWVbioOiyi1YPlO9su9nqoLRbF0gNeVY5jqYBysw7QCbkQN3nc+7LfAyHGNZ/U77XdCrdIuqt5X
 3RPaJC8e9hhkb0NnTwsaVqRYITkwDMtB6ztIAIKKDb7G8mM8NAefkhKQx7/Dm7r8LMJSYmDeZvb
 vyU30+RB2HNmcdxATAsZWt2b6l9kYsSrI1EKAAf59U8fIJKKUkIN4Frb84yqCf4R+IG1NM0QjrR
 43qIkpkAtFJTuSQgRE77SbZ0qZ5KQzTCo66SQ9wdc7Z/rlMCRGPU3O+EgpJp6SZuKbuQpWLoy5O
 wR0oL+/+xBFzrOIAw4y7vmmoJJuWAe3uE8ZxuWAZTZFj71Q5wvQg6kI+UfXj4ts/MEBGllRwXQL
 cttn6YwI
X-Proofpoint-GUID: Jt27tID4ZDFCPRotE4pIQC7F94FGfg6l
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 bulkscore=0 priorityscore=1501 phishscore=0 adultscore=0
 clxscore=1015 impostorscore=0 spamscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509200000

Introduce the Device Tree for the recently announced Snapdragon SoC from Qualcomm:
https://www.qualcomm.com/products/mobile/snapdragon/smartphones/snapdragon-8-series-mobile-platforms/snapdragon-8-elite-gen-5

Bindings and base Device Tree for the Kaanapali SoC, MTP (Mobile Test Platform)
and QRD (Qualcommm Reference Device) are splited in three:

- 1-3: MTP board boot-to-shell with basic function.
- 4-16: More feature including PCIE, sdcard, usb, DSPs, PMIC related, tsense, bus, crypto etc. Add QRD board support.
- 17-20: Multimedia features including audio, video and camss.

Features added and enabled:
- CPUs with PSCI idle states and cpufreq
- Interrupt-controller with PDC wakeup support
- Timers, TCSR Clock Controllers
- Reserved Shared memory
- GCC and RPMHCC
- TLMM
- Interconnect with CPU BWMONs
- QuP with uart
- SMMU
- RPMHPD and regulator
- UFS with inline crypto engine (ICE)
- LLCC
- Watchdog
- cDSP, aDSP with SMP2P and fastrpc
- BUS with I2C and SPI
- USB2/USB3
- Modem(see crash after bring up)
- SoCCP
- SDHCI
- random number generator (RNG) and Qcrypto
- tsens
- PCIE
- coresight
- Bluetooth
- WLAN
- Audio
- CAMSS
- Video

For part1(patch 1-3)
build dependency:
- tlmm: https://lore.kernel.org/all/20250924-knp-tlmm-v1-0-acabb59ae48c@oss.qualcomm.com/
- gcc: https://lore.kernel.org/all/20250924-knp-clk-v1-0-29b02b818782@oss.qualcomm.com/
- interconnect: https://lore.kernel.org/all/20250924-knp-interconnect-v1-0-4c822a72141c@oss.qualcomm.com/
- rpmhpd: https://lore.kernel.org/all/20250924-knp-pd-v1-0-b78444125c91@oss.qualcomm.com/
- config: https://lore.kernel.org/all/20250924-knp-config-v1-1-e2cf83b1932e@oss.qualcomm.com/
binding dependency:
- ipcc: https://lore.kernel.org/all/20250924-knp-ipcc-v1-1-5d9e9cb59ad4@oss.qualcomm.com/
- smmu: https://lore.kernel.org/all/20250924-knp-smmu-v1-1-c93c998dd04c@oss.qualcomm.com/
- pdc: https://lore.kernel.org/all/20250924-knp-pdc-v1-1-1aec7ecd2027@oss.qualcomm.com/
- cpufreq: https://lore.kernel.org/all/20250924-knp-cpufreq-v1-1-1bda16702bb1@oss.qualcomm.com/
- mfd: https://lore.kernel.org/all/20250924-knp-mfd-v1-1-6c8a98760e95@oss.qualcomm.com/
- watchdog: https://lore.kernel.org/all/20250924-knp-watchdog-v1-1-fd8f3fa0ae7e@oss.qualcomm.com/
- llcc: https://lore.kernel.org/all/20250924-knp-llcc-v1-0-ae6a016e5138@oss.qualcomm.com/
- bwmon: https://lore.kernel.org/all/20250924-knp-bwmon-v1-1-56a9cdda7d72@oss.qualcomm.com/
- ufs: https://lore.kernel.org/all/20250924-knp-ufs-v1-0-42e0955a1f7c@oss.qualcomm.com/
- ice: https://lore.kernel.org/all/20250924-knp-ice-v1-1-1adfc2d9e83c@oss.qualcomm.com/
- regulator: https://lore.kernel.org/all/20250924-knp-regulator-v1-0-d9cde9a98a44@oss.qualcomm.com/
- misc soc related: https://lore.kernel.org/all/20250924-knp-soc-binding-v1-0-93a072e174f9@oss.qualcomm.com/
others:
- socinfo: https://lore.kernel.org/all/20250924-knp-socid-v1-0-fad059c60e71@oss.qualcomm.com/

For part2(patch 4-16)
build dependency:
- ipcc header: https://lore.kernel.org/all/20250922-ipcc-header-v1-1-f0b12715e118@oss.qualcomm.com/
binding dependency:
- pcie: https://lore.kernel.org/all/20250924-knp-pcie-v1-0-5fb59e398b83@oss.qualcomm.com/
- sdcard: https://lore.kernel.org/all/20250924-knp-sdcard-v1-1-fc54940066f1@oss.qualcomm.com/
- usb: https://lore.kernel.org/all/20250924-knp-usb-v1-0-48bf9fbcc546@oss.qualcomm.com/
- remoteproc: https://lore.kernel.org/all/20250924-knp-remoteproc-v1-0-611bf7be8329@oss.qualcomm.com/
- tsense: https://lore.kernel.org/all/20250924-knp-tsens-v1-1-ad0cde4bd455@oss.qualcomm.com/
- crypto: https://lore.kernel.org/all/20250924-knp-crypto-v1-0-49af17a231b7@oss.qualcomm.com/
- bam: https://lore.kernel.org/all/20250924-knp-bam-v1-0-c991273ddf63@oss.qualcomm.com/
- spmi: https://lore.kernel.org/all/20250924-knp-spmi-binding-v1-1-b4ace3f7a838@oss.qualcomm.com/
- pmic: https://lore.kernel.org/all/20250924-knp-pmic-binding-v1-1-b9cce48b8460@oss.qualcomm.com/
- pmic-peripherals: https://lore.kernel.org/all/20250924-knp-pmic-peri-v1-0-47413f8ddbf2@oss.qualcomm.com/
- bus: https://lore.kernel.org/all/20250924-knp-bus-v1-1-f2f2c6e6a797@oss.qualcomm.com/
others:
- fastrpc: https://lore.kernel.org/all/20250924-knp-fastrpc-v1-0-4b40f8bfce1d@oss.qualcomm.com/
- spmi-gpio: https://lore.kernel.org/all/20250920-glymur-spmi-v8-gpio-driver-v1-1-23df93b7818a@oss.qualcomm.com/

For part3(patch 17-20)
dependency:
- multimedia clk: https://lore.kernel.org/all/20250924-knp-mmclk-v1-0-d7ea96b4784a@oss.qualcomm.com/
- config: https://lore.kernel.org/all/20250924-knp-config-v1-2-e2cf83b1932e@oss.qualcomm.com/
- pd-mapper: https://lore.kernel.org/all/20250924-knp-pdmapper-v1-1-fcf44bae377a@oss.qualcomm.com/
- audio: https://lore.kernel.org/all/20250924-knp-audio-v1-0-5afa926b567c@oss.qualcomm.com/
- camss: https://lore.kernel.org/all/20250924-knp-cam-v1-0-b72d6deea054@oss.qualcomm.com/
- video: https://lore.kernel.org/all/20250925-knp_video-v1-0-e323c0b3c0cd@oss.qualcomm.com/

For convenience, a regularly refreshed linux-next based git tree containing all the Kaanapali related work is available at:
https://git.codelinaro.org/clo/linux-kernel/kernel-qcom/-/tree/kaanapali?ref_type=heads

Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
---
Hangxiang Ma (1):
      arm64: dts: qcom: kaanapali: Add support for camss

Jingyi Wang (9):
      dt-bindings: arm: qcom: Document Kaanapali SoC and its reference boards
      arm64: dts: qcom: Introduce Kaanapali SoC
      arm64: dts: qcom: kaanapali: Add base MTP board
      arm64: dts: qcom: kaanapali: Add remoteprocs for Kaanapali SoC
      arm64: dts: qcom: kaanapali: Add misc features
      arm64: dts: qcom: kaanapali-mtp: Enable more features
      arm64: dts: qcom: kaanapali-mtp: Enable modem
      arm64: dts: qcom: kaanapali: Add QRD board
      arm64: dts: qcom: kaanapali: Add iris video node

Jishnu Prakash (4):
      arm64: dts: qcom: Add PMK8850 pmic dtsi
      arm64: dts: qcom: Add PMH0101 pmic dtsi
      arm64: dts: qcom: Add PMH0104 pmic dtsi
      arm64: dts: qcom: Add PMH0110 pmic dtsi

Jyothi Kumar Seerapu (1):
      arm64: dts: qcom: kaanapali: Add QUPv3 configuration for serial engines

Manish Pandey (1):
      arm64: dts: qcom: kaanapali: Add SDC2 nodes for Kaanapali soc

Prasad Kumpatla (2):
      arm64: dts: qcom: kaanapali: Add support for audio
      arm64: dts: qcom: kaanapali-mtp: Add audio support (WSA8845, WCD9395, DMIC)

Qiang Yu (1):
      arm64: dts: qcom: kaanapali: Add support for PCIe0 on Kaanapali

Ronak Raheja (1):
      arm64: dts: qcom: kaanapali: Add USB support for Kaanapali SoC

 Documentation/devicetree/bindings/arm/qcom.yaml |    6 +
 arch/arm64/boot/dts/qcom/Makefile               |    2 +
 arch/arm64/boot/dts/qcom/kaanapali-mtp.dts      | 1601 ++++++
 arch/arm64/boot/dts/qcom/kaanapali-qrd.dts      | 1212 +++++
 arch/arm64/boot/dts/qcom/kaanapali.dtsi         | 6315 +++++++++++++++++++++++
 arch/arm64/boot/dts/qcom/pmh0101.dtsi           |   45 +
 arch/arm64/boot/dts/qcom/pmh0104.dtsi           |   33 +
 arch/arm64/boot/dts/qcom/pmh0110.dtsi           |  109 +
 arch/arm64/boot/dts/qcom/pmk8850.dtsi           |   66 +
 9 files changed, 9389 insertions(+)
---
base-commit: ae2d20002576d2893ecaff25db3d7ef9190ac0b6
change-id: 20250918-knp-dts-0e8da3f76e85

Best regards,
-- 
Jingyi Wang <jingyi.wang@oss.qualcomm.com>


