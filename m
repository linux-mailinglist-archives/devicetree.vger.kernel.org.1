Return-Path: <devicetree+bounces-184286-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id AE1CBAD39AF
	for <lists+devicetree@lfdr.de>; Tue, 10 Jun 2025 15:45:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 47FB83ABC96
	for <lists+devicetree@lfdr.de>; Tue, 10 Jun 2025 13:45:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 301D128ECFC;
	Tue, 10 Jun 2025 13:45:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="N3FtDsyt"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8CD6D188CAE
	for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 13:45:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749563132; cv=none; b=nqJVN8jit9AWix3tIOcvkjuqgsMmE/r/iCkRylPqr8b0yYBRuWcT467tpL4s7dhKOuq3PdBus5vj+c6oS1RvLh5fjHPnqVyxUGtFxq5yMBzU37jO4M7TbH6jxFkekxVd97kUTyZBE3wmBieZDVYx33yr5C5b6RV34WiJ6mdTHFo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749563132; c=relaxed/simple;
	bh=dv3Hvk9p48gd7VFAefP+8+Vtb7cmVN0Z2O9TcNsN42s=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=a+DfTz2hn/3SRxT5Sb2GN27I43o4LuMy8cYTPxHeU+FwV6OrKiQLbPA903nxCjbi2hxQpIu33Uqug4rWSI5cvBTZ4hfVOk8EXKiDEkN7XqefxPqeKP73DB8m9/E3o1JzUcs+PPLVhgjPpQleKr+eZWWG/FGYxMCe+f5pknvOIs4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=N3FtDsyt; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55A9t6sC021751
	for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 13:45:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=xH2KQv7sgrK758uLs/6IyR
	Mr+4xC8wLvLt9nlR+5ejE=; b=N3FtDsytXAVpxCWCKXP2+Q5k5L9my8aJNzN5Ht
	CPm3XspNcY9tcYLDtcLcRto8wBwmv0iwNhs/T7QzQ1dVpJOaO4A0V+VAHQ/AaGov
	F3gtYW9fkhJGu476Igvd5in7fzEO4zMAz1BIVhRtCGRNVWUIPTAbIqZugJmfb1BS
	7hlEX0mWkQQzdbkuxWC63YodLi4t6fQylCEMkPcCHbR7URu8FMLMWJso49Os5jQb
	WHd77RMMYvCejL60RvVynfvE+SmjVn91l96mYo4phST1/NqypRhvl5ZQStdraFfI
	xHfVsl9yjcgPYHADV2y2BDUoUVSBIaUTdMmuD41cR7SzX3EA==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 474ce9snsu-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 13:45:28 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-7391d68617cso4806041b3a.0
        for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 06:45:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749563128; x=1750167928;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xH2KQv7sgrK758uLs/6IyRMr+4xC8wLvLt9nlR+5ejE=;
        b=cGQ5yLlUQ0X2pdxkYa224icsFGFMCX7P3vxqRT3mAbmsWpWIRkpTpc1nfjJJTKFvHX
         cG267QWZn4CJVBLPZ4RvjvClMpBlx1f0eEhc6Dt58y8s+DrWjzOTo6z5PisGR0NBpkzF
         xY7EEFLO7zTVJ/DP6FemWlvSsz+qw4NjgDdJbdnw7qhwesjoVl1rLcj24E5Me4+iJUFb
         moaZvaj/ceb2TZmSQXD28Y+knTaxWt0MSCo1wWUsghovs/kxHdJDijKHmmKrKK2PNoEQ
         LIr54MOncngrInQJ1HT3q2ok8ewLZXudknWHUaR2PheGNiOQIDJ6XL79t+PAgKG7Jy8S
         kV8A==
X-Forwarded-Encrypted: i=1; AJvYcCVYptI8WHE3cvPXIG3bShP5gJ6QBTC+QL5SC7mjzKUk3FpDgZZrw28qV8lNS+/qI8iPbkTJvlaTGQ59@vger.kernel.org
X-Gm-Message-State: AOJu0YyhjGt99jEDyEOSQcj6tjx6v6bhPUkOAXs05gb7jTeASuNcjvOx
	eh+Do6rAPuVky5mKn+suQSrh07UdUpRJ6GZvP7rq8bLdhO3ENanglsAGxgDv8ztK1PdEM90pZ4z
	nUIpXthh2yniZikQd5gzeGJosCBAyyFw4mob8Sjc4rBQ/v/qjZBYDVS7lfuBvZgDi
X-Gm-Gg: ASbGncuMJBagmH2BsK8915ckojQm73INAPwp8CBS8FEVHN64D/hWwdjRPwyajUT8kkg
	9Gg2HdmCyE0xUY2UwSRRRlrhYar9WEzqbLUdr9gsSAueHNdEt87MJVmlj3X3cKwJq80RNFMkcRI
	n8OLbtOOETNOMW6jvHH87S8bybOq45zgKdweLg0MScsXuzzIlb3USkR6+oA4cto0mxa2AqqnY1D
	X3/B33ADDS9HZL5ErOBI4OLDK2686sULcl80SUqJuoV9aV6u2fqS4w3/nR09nHiOHlJNlWRxKmL
	pzhx1MBpgpsRICCHjdoFhVRgYNlkRhkfOcgFplfJAjFcCtj83KEVgTKQamrwCmX07PWr03HaOFb
	VMePgzAK9O9eySuQkCwOKaeqmxCV4qnK2Uys9vZ+b2UVxAajRISA3gwuFFA==
X-Received: by 2002:a05:6a21:6d92:b0:215:d64d:412e with SMTP id adf61e73a8af0-21f7698b308mr5987086637.20.1749563127490;
        Tue, 10 Jun 2025 06:45:27 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHGcARb34ssWxbNot4ia6+tBWBCtiJuSosdEn5XdfGATdAMmEq5BIaiIvEbLrX9hwPwFyDoGA==
X-Received: by 2002:a05:6a21:6d92:b0:215:d64d:412e with SMTP id adf61e73a8af0-21f7698b308mr5987045637.20.1749563127072;
        Tue, 10 Jun 2025 06:45:27 -0700 (PDT)
Received: from hu-kathirav-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b2f5ee70085sm5858107a12.25.2025.06.10.06.45.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Jun 2025 06:45:26 -0700 (PDT)
From: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
Subject: [PATCH v5 0/5] Add support to read the watchdog bootstatus from
 IMEM
Date: Tue, 10 Jun 2025 19:15:16 +0530
Message-Id: <20250610-wdt_reset_reason-v5-0-2d2835160ab5@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAOw2SGgC/x2MQQqAIBAAvxJ7TtgEE/pKREiutRcNNyqQ/p51G
 ZjDTAGhzCQwNAUynSycYhXTNrBsLq6k2FcHjdpg36G6/DFnEvroJEVlnXGBLGq0Bmq2Zwp8/8t
 xep4XajbhiGIAAAA=
X-Change-ID: 20250610-wdt_reset_reason-7a5afe702075
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Wim Van Sebroeck <wim@linux-watchdog.org>,
        Guenter Roeck <linux@roeck-us.net>,
        Rajendra Nayak <quic_rjendra@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-watchdog@vger.kernel.org,
        Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1749563123; l=2858;
 i=kathiravan.thirumoorthy@oss.qualcomm.com; s=20230906;
 h=from:subject:message-id; bh=dv3Hvk9p48gd7VFAefP+8+Vtb7cmVN0Z2O9TcNsN42s=;
 b=tHyhZgb3CmEiZAspeTy/FvdJvh94GQqCLJKDhTNqSiLazj13Eavw/gBp8apubAnx0OAA7Inxr
 Dj7buW9eM+FCyecTz0aKWzbwrYVQE/nZw4Je/oCi+HXeN6kUfdhU4HK
X-Developer-Key: i=kathiravan.thirumoorthy@oss.qualcomm.com; a=ed25519;
 pk=xWsR7pL6ch+vdZ9MoFGEaP61JUaRf0XaZYWztbQsIiM=
X-Proofpoint-GUID: E13lxwYD0oG63GbFzeRByGXHuYvFNOqn
X-Authority-Analysis: v=2.4 cv=drjbC0g4 c=1 sm=1 tr=0 ts=684836f8 cx=c_pps
 a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=-Vf3EJXieAsgESLsksMA:9 a=QEXdDO2ut3YA:10 a=zc0IvFSfCIW2DFIPzwfm:22
X-Proofpoint-ORIG-GUID: E13lxwYD0oG63GbFzeRByGXHuYvFNOqn
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjEwMDEwOCBTYWx0ZWRfX9B7hltk36XQJ
 +J0LYIQkim/L2Qs9KPkxS34BjDdWETTqH7BLHSNc3Glg/UCMwrQMDPB0jAvBwS4yW4E/xMUcwTU
 aURzNsAZHBPU1Fa6e0zGlknRhrNsoSGvMbzfdnBKfaXhUTG1BsaVo5+lIgg5o8pmVRRIu/OO+Md
 jP5s+fvws/9iMSp2zDa0GzUlCi25moT6lS8o7hVNaMZLJs5qVSnmpzh9Mz+9OksO/WVbjMzkYc+
 z07wrxC2NDzebhU5nusQtnbZ7XjyX6aXn5WW6jGj09jbHUKNkfhdsKqM6avi+Npg9IJjwqRfyvH
 5EeKXlpRkHX6xp2J6coy0quMCOGzET8gSyUur2vrZ/81fmxM4jyS72Q7WmoLZaffHqRjz6NSUTP
 Sk39XTrgcrin4REoevHloB4+BdaNQuXnbSvCB60vMq3o2G+bgC/eN0/3VhjnEEZt9ln20oZu
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-10_05,2025-06-10_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 impostorscore=0 lowpriorityscore=0 malwarescore=0 clxscore=1015
 priorityscore=1501 suspectscore=0 bulkscore=0 mlxlogscore=999 adultscore=0
 phishscore=0 mlxscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2506100108

In Qualcomm IPQ SoCs, if the system is rebooted due to the watchdog
timeout, there is no way to identify it. Current approach of checking
the EXPIRED_STATUS in WDT_STS is not working.

To achieve this, if the system is rebooted due to watchdog timeout, the
information is captured in the IMEM by the bootloader (along with other
reason codes as well).

This series attempts to address this by adding the support to read the
IMEM and populate the information via bootstatus sysfs file.

With the CONFIG_WATCHDOG_SYSFS enabled, user can extract the information
as below:

cat
/sys/devices/platform/soc@0/f410000.watchdog/watchdog/watchdog0/bootstatus
32

Signed-off-by: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
---
Changes in v5:
- Rename property 'qcom,imem' to 'sram'
- Use dev_err_probe instead of dev_err
- Link to v4:
  https://lore.kernel.org/linux-arm-msm/20250519-wdt_reset_reason-v4-0-d59d21275c75@oss.qualcomm.com/

Changes in v4:
- Kept only the WDIOF_CARDRESET and dropped other codes (Guenter)
- Renamed qcom_wdt_get_restart_reason() to qcom_wdt_get_bootstatus()
- Dropped the device data and describe the required information in the
  DT (Konrad)
- Link to v3:
  https://lore.kernel.org/linux-arm-msm/20250502-wdt_reset_reason-v3-0-b2dc7ace38ca@oss.qualcomm.com/

Changes in v3:
- Picked up the relevant tags
- Dropped the fallback compatible handling
- Split the driver changes into 2. Introduce the device data in one and
  extend the same in another for the use case
- Link to v2:
  https://lore.kernel.org/linux-arm-msm/20250416-wdt_reset_reason-v2-0-c65bba312914@oss.qualcomm.com/

Changes in v2:
- Dropped the RFC tag
- Reworked the driver changes to use the syscon API
- Link to v1:
  https://lore.kernel.org/linux-arm-msm/20250408-wdt_reset_reason-v1-0-e6ec30c2c926@oss.qualcomm.com/

Signed-off-by: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>

---
Kathiravan Thirumoorthy (5):
      dt-bindings: sram: qcom,imem: Document IPQ5424 compatible
      arm64: dts: qcom: ipq5424: Add the IMEM node
      dt-bindings: watchdog: qcom-wdt: Document sram property
      watchdog: qcom: add support to get the bootstatus from IMEM
      arm64: dts: qcom: ipq5424: add support to get watchdog bootstatus from IMEM

 .../devicetree/bindings/sram/qcom,imem.yaml        |  1 +
 .../devicetree/bindings/watchdog/qcom-wdt.yaml     | 20 ++++++++++
 arch/arm64/boot/dts/qcom/ipq5424.dtsi              | 10 +++++
 drivers/watchdog/qcom-wdt.c                        | 43 +++++++++++++++++++++-
 4 files changed, 72 insertions(+), 2 deletions(-)
---
base-commit: b27cc623e01be9de1580eaa913508b237a7a9673
change-id: 20250610-wdt_reset_reason-7a5afe702075

Best regards,
-- 
Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>


