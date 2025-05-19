Return-Path: <devicetree+bounces-178343-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id ED359ABB78D
	for <lists+devicetree@lfdr.de>; Mon, 19 May 2025 10:42:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id AD4D4162C08
	for <lists+devicetree@lfdr.de>; Mon, 19 May 2025 08:40:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CC64B26A1DA;
	Mon, 19 May 2025 08:34:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="fVieBo5e"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E63C026A088
	for <devicetree@vger.kernel.org>; Mon, 19 May 2025 08:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747643665; cv=none; b=FNbrBSugQzKDfAJYBGxBGz6MAwQiN7dE1dgCiQHgkFZjD6ZgNsrq80LKONd8y0qVrbj2dHposhX1Mz1TMTidKjzWDzqoeRGCZyah003+7WB6eEOzVMfBf0pFfKs42Tq3pnPY+gILVAC5ZBHd8JFTH5z4Ozu7zFOXBde9zdOvkp0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747643665; c=relaxed/simple;
	bh=xRHx5bpthJXZJX1dxAfmzDGrwHpyIUrMpOLNkFZ77dk=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=eAIuHkMl5tHMuJ3nmqGO9NcxtGWpnXmBLmTiWTXrFGPwi4OfU2dJqcYQp61Y1siHngmGn2hbVMIaJNbOK0pm9WVZGgFcnGY7NPoI1T0P8IJT23WinVmrf+2A3ltGt0krYws1uyCzNUTWjtmmJPOdFCaGySS/amTS4f6LYYMjO90=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=fVieBo5e; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54IMtCIj026158
	for <devicetree@vger.kernel.org>; Mon, 19 May 2025 08:34:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=Q4/R4hgjdbOtO5ZJ9iYZdA
	b7zi3KfVSbOE7lczAwJOw=; b=fVieBo5eiSE+tjQZvfh3HfstsH7I/jIbwYsl1G
	/CTEyXvnanoArKXPu8jmQbrRcSntfpAP/nv5CoEmKeg/l7P5vig6zRvzsF3Q7lAu
	wPIxUUBTrBedr+sWqsruapjKlQkFwEPuS55BvMBFjAKfB7ySrOedO2xD03T9i1c6
	Yv03YDQr7kH1mAxWUxvG8OPDyBzJChuGaU28i/Jx0fwCxxYpSo/3Dy2xt7t48dtX
	V1hAP4khsN4ECh4TiojbR5EoRpcI6RQ3zrddfFJaMQk3YH0jD4p23hh9ij/PoIC5
	WGRy3dQi72ygZaD0J+gA/yfyG0gkAQDsTQFJLCnaZ7SeT/8w==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46pju7bmk5-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 19 May 2025 08:34:22 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-7429fc0bfc8so2920123b3a.1
        for <devicetree@vger.kernel.org>; Mon, 19 May 2025 01:34:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747643661; x=1748248461;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Q4/R4hgjdbOtO5ZJ9iYZdAb7zi3KfVSbOE7lczAwJOw=;
        b=rnUFKltJMVAfgSjTJ0v6JNZtPPbRCZMBNuPK3Coy0QCm9VwnHG9TcBKng8srD20w6T
         1zf4KzE/lwfT6bDGk64PI3xB6RbQZQuXSUH5oTbFfEdGEX+KXtBvev4+6qeRgIzRplFu
         ssOGMoPjb5K1ZBy+zI454pa9sAhBUEGX1QiDWhzIkhm4pcAKrsoalk03HUz4fiEKzrmG
         9/QfQebSuYi7Hdvdvze4MeJP8xGlMQlNFu+8KX9yTS47tFyoZsadxHWU5SOBkwfDyL+c
         1/HnEuZI9Ww57Hy+dnbVwI7nhyDg7xT1/7ZZRZgc9V1kRjdhr3dY7DHRLkND2575MKX0
         SVZA==
X-Forwarded-Encrypted: i=1; AJvYcCX3FEfYYij4xp7BJto+fiPgQK3W/8FrBLXeVvMTfv30ptdAqK6lND0QNJxVQIsndWTZF1AsVvz8pHSa@vger.kernel.org
X-Gm-Message-State: AOJu0YydXPuKLAR7Qg3ICGUpc/aLhpoBGVJ4OYCUTE2RSuhUdoWb6nyY
	1sKai7+vY1Rs+WV1XP5Yb0+ZrMcMWl+AkOuxlL690+yKK0p5XTlClhERpqd5etatJkBAATFjXGz
	zoaPwgheS5bMkBnzjnlAtA5o+0mL1aIDe24CMoRqF5vOgdhqBab1KCh9Zt+4O/7yk
X-Gm-Gg: ASbGnctLfhSS34qJ/PgxU2qGdRg2gCU6wukkBlVjU3xtn8dUzlgWfr0LRCU/MyI8Bb6
	vSBmfiC5OUf2z2AC4dxDIPJBeUdVnPyvGDsuH49Y/z1xtekk3pCvbHjNjChsthRWpBZmw4rpk6t
	ItNry2kBrDpuWvghAJQ0p9QCkyPvBr5Sw81rQxy+JbFwoJBU+dRaN1s34Ek28Qerjtuuv/AWlCt
	ZXUBG5CV3FfrPoqHrc6HxyuOtZKMIfmjgLi9ApY2gPXwG5gkGdiyBo2Jl06fLCZYCR8nqlHIuCP
	Z2EV6SIcD0Fu21cndJ7ENI/Kh2Bd7fCJj1m7GoXJ1semxQLIk+SIUYwNEE4oaTgyYSFFN68cchp
	ic9SshJ4xqmqTjdQta2ORCvf1IGDvAvagAl8bpjyiMp7Oq28=
X-Received: by 2002:a05:6a20:9c9b:b0:215:e44c:831f with SMTP id adf61e73a8af0-2165f5e3ec6mr18557729637.4.1747643661386;
        Mon, 19 May 2025 01:34:21 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFmFXCPLLPZlhKsFZLGIVodijRVqwRIbYHCJLmZeP7/tDMykTwjAOBThLdU+8Up6APXTwT7og==
X-Received: by 2002:a05:6a20:9c9b:b0:215:e44c:831f with SMTP id adf61e73a8af0-2165f5e3ec6mr18557696637.4.1747643660966;
        Mon, 19 May 2025 01:34:20 -0700 (PDT)
Received: from hu-kathirav-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b26eaf5a2cesm5705475a12.9.2025.05.19.01.34.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 May 2025 01:34:20 -0700 (PDT)
From: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
Subject: [PATCH v4 0/5] Add support to read the watchdog bootstatus from
 IMEM
Date: Mon, 19 May 2025 14:04:00 +0530
Message-Id: <20250519-wdt_reset_reason-v4-0-d59d21275c75@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAPjsKmgC/x2MQQqAIBAAvxJ7TjCzyL4SEVJb7UXDjQrEv2ddB
 uYwE4ExEDL0RYSAFzF5l0WXBcy7dRsKWrKDkqqRWnbiXs4pIONHy94JrJRRlWnr1baQsyPgSs+
 /HMaUXkp9B9NiAAAA
X-Change-ID: 20250408-wdt_reset_reason-e12921963fa6
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1747643657; l=2559;
 i=kathiravan.thirumoorthy@oss.qualcomm.com; s=20230906;
 h=from:subject:message-id; bh=xRHx5bpthJXZJX1dxAfmzDGrwHpyIUrMpOLNkFZ77dk=;
 b=sS4rTpgu7WqLlxiIvg3siGTsAKRswXQ9h4Dczgiq5t79y0DssODAX5JW5eo2s/okZekCjTWjb
 hAz1I51+0T2D4xPsqRkhbkWCzEzqzuiga20VB1+YSYUyFgt+Gy4N/vZ
X-Developer-Key: i=kathiravan.thirumoorthy@oss.qualcomm.com; a=ed25519;
 pk=xWsR7pL6ch+vdZ9MoFGEaP61JUaRf0XaZYWztbQsIiM=
X-Authority-Analysis: v=2.4 cv=XKEwSRhE c=1 sm=1 tr=0 ts=682aed0e cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=-Vf3EJXieAsgESLsksMA:9 a=QEXdDO2ut3YA:10 a=2VI0MkxyNR6bbpdq8BZq:22
X-Proofpoint-ORIG-GUID: 3o9xLQI9vctCUvbbPh4_Ym58ScfKlTkR
X-Proofpoint-GUID: 3o9xLQI9vctCUvbbPh4_Ym58ScfKlTkR
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTE5MDA4MSBTYWx0ZWRfX3hU/jBDmlaxK
 hIe5+C/OvHZMmu8dcQF4CGYPUQu3rY5Av2ReO4KpoUo57zVPFsvlKlzruVnNPqpjkMZrRlN4kEc
 OOe/gKFPYsmFJCGC1uO0aaasC3hSqOzBL5FnEI/hGO69Do28vpW6+EKGx2m1VRrruYMcSrZoDpM
 g1QB5DfhBMtVLG8kWGK1I1KhNazbGPGGsoJTgH/gthmnzbhyNycwkTSYG41+vs3xfZ7d/7kIdUy
 By+Exog/VdN3ta8ufPnFS1TFJ7SwgemmQe4f+DfUb0UsqpdieAjc/fgYD1OKO/2utidCSXuGYB0
 xl7IwcDUC/Y9cTMMpZphrjlEpiXIkb9neL+lul5o6SoNjZcg+RNitC7LkA5XxJmWGlUg4IZh1jc
 exqdJmGubeaCGy0Xpn08lQnRGUxpHpKjGGTzzqpNu2yiy4OmgKwhJ62BCZyOSjj41pTapaxh
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-19_03,2025-05-16_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 priorityscore=1501 impostorscore=0 clxscore=1015
 spamscore=0 suspectscore=0 malwarescore=0 adultscore=0 mlxscore=0
 mlxlogscore=999 phishscore=0 bulkscore=0 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505070000 definitions=main-2505190081

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

cat /sys/devices/platform/soc@0/f410000.watchdog/watchdog/watchdog0/bootstatus
32

Signed-off-by: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
---
Changes in v4:
- Kept only the WDIOF_CARDRESET and dropped other codes (Guenter)
- Renamed qcom_wdt_get_restart_reason() to qcom_wdt_get_bootstatus()
- Dropped the device data and describe the required information in the DT (Konrad)
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

---
Kathiravan Thirumoorthy (5):
      dt-bindings: sram: qcom,imem: Document IPQ5424 compatible
      arm64: dts: qcom: ipq5424: Add the IMEM node
      dt-bindings: watchdog: qcom-wdt: Document qcom,imem property
      watchdog: qcom: add support to get the bootstatus from IMEM
      arm64: dts: qcom: ipq5424: add support to get watchdog bootstatus from IMEM

 .../devicetree/bindings/sram/qcom,imem.yaml        |  1 +
 .../devicetree/bindings/watchdog/qcom-wdt.yaml     | 20 +++++++++++
 arch/arm64/boot/dts/qcom/ipq5424.dtsi              | 10 ++++++
 drivers/watchdog/qcom-wdt.c                        | 42 ++++++++++++++++++++--
 4 files changed, 71 insertions(+), 2 deletions(-)
---
base-commit: 8566fc3b96539e3235909d6bdda198e1282beaed
change-id: 20250408-wdt_reset_reason-e12921963fa6

Best regards,
-- 
Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>


