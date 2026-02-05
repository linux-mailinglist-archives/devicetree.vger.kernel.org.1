Return-Path: <devicetree+bounces-263160-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uCE9EVUIhWmj7gMAu9opvQ
	(envelope-from <devicetree+bounces-263160-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 22:15:01 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E28EFF7810
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 22:15:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 58931300DDDA
	for <lists+devicetree@lfdr.de>; Thu,  5 Feb 2026 21:14:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E7B8C32F774;
	Thu,  5 Feb 2026 21:14:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Cpm6O+cd";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="gqkKt7Q8"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA924326955
	for <devicetree@vger.kernel.org>; Thu,  5 Feb 2026 21:14:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770326097; cv=none; b=NQfN8naCjen4H+CsWuRu/EHrOJgnPT6vsTgxLQ7WZvr0E1yYkXJjRrdd7mYxWDrZ3QA9+MAFJDrxVTljzEwrhsjWKnoNExDFo+NySUMk8f6D8xHeVqG+ryXGp9WGihACOYRLXYoOylaHn00up8tultobZqU6nqeGUsP56ZQgys8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770326097; c=relaxed/simple;
	bh=R28ctyRfWvYF1AcAyUM3MdJI+xYN+EibX6fe5/NpQSY=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=bBj4FUHzaBWKaLZfVgqK844aNlGWDwmJJLCUvlF+qLA/+85ilHOkAFiZQJcXXYaApdmBFOckYMdgXTYXEigZK0cWtMeWjO/mO98LWxqBR7DaiG6oD19JrAxLkrbDegNBEQbMkMxSUjRbJsSZF9u2tOuUanI063lLy84dnVvEDXU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Cpm6O+cd; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=gqkKt7Q8; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 615F0YKU890162
	for <devicetree@vger.kernel.org>; Thu, 5 Feb 2026 21:14:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=zMAmK55w1caUuW1KuyJwzi
	CE6kDjy5Wma1Xxymy+Hw0=; b=Cpm6O+cdn1zqXu2MWl8YKiSCH3iunm/5Ljd17A
	ZLrJ6aFdfEmjabM9E5GX7kodBf0FUHQiy4d9laJwviULV+kKnFJcSAJGCpnUga8m
	Pq+qQluzgu0aIlgN2P8d6KtjSEq5AwPuDaI1jbOaOhSCwn+3Z0e2vSEBA0Yl+jAe
	hOyQ2VnybvmubNg6Ej/zgLlFhMxJU9FokMVdg4fhSXFMNqjSlFRK2wRRMqvVny9s
	lhtMTkWkzkZVNXygJNA8e1EIiu7PaZMRTMIGyzv8Ewb66vbh5nbquaGPga2tOBfx
	LiU8qgauKA+SIGkUEs9i8dhowGcG/HOyg3KIADuSRA3mnZhQ==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c4prxamxr-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 05 Feb 2026 21:14:57 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-352ec74a925so2694557a91.2
        for <devicetree@vger.kernel.org>; Thu, 05 Feb 2026 13:14:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770326096; x=1770930896; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=zMAmK55w1caUuW1KuyJwziCE6kDjy5Wma1Xxymy+Hw0=;
        b=gqkKt7Q8jWk9keHG7HOa2jdfXPMyZV2pr9gOdJsiT23qW5/DsPLLXObF4ViYXkOmDa
         WLdIHUT/PfPlRCWpfxOQUmEHO17skQk/PdeXtdXRfA9js15mCkcJM/zrsMnM7QPuMiDZ
         pces/tGSRoJAQak6AHQRiOR5jC5tqBpNtXZO+dJPAraUI+Do2BjXJ3AByWdEDzhCtEaB
         DefcVSrSkI1Jh90aqwV+fyDWSS45OMyl2EgPFMA2hhWGEJabVxEln6mR3sATcGk2QLPH
         4UC7Zdbok2nIwSsnYnYL0iB+aC4s0nuTABv69QB7jcxkuKe7JysygapnJ7HhluSWc6f7
         iE/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770326096; x=1770930896;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zMAmK55w1caUuW1KuyJwziCE6kDjy5Wma1Xxymy+Hw0=;
        b=cLm5cMqX7wbhUnqkPuKp5Gr7Nz1+2aaUhwXZZn0Okph7P7hDexvGd0sE7D5fNHyGP7
         czZyxEdfIar3r6rDh3Vc/nbttcYXj/XIspC6yBWpUoYiP6Xte7h3gwmp+u1taRNP1sVU
         04FEDw/vwbPi214NP1xCLqBlieq+psnq80MmOCHJrYYohuHCwSh59cT0BqPP6js3pba8
         JuK3i5vP5Imx/XfmzBJlqyxwVsneFoZyHw1hsSvEX0WhpHS4ptthtUa0vFWeWl8NHTJu
         gOBWGMEFDQKV62+bfsqeakHmddmPaoWQ+sfTVBNUC7zcjA0WMYuHRUnWlGJZQbS8MmgY
         WVXQ==
X-Forwarded-Encrypted: i=1; AJvYcCWGFcnjgBIzizxWAHbjHauUl/hhcP4UcKMzgHF6k46GbJ3e1Q0Ny3kqg6YKoZQfgO6wNBiowZw7ggTP@vger.kernel.org
X-Gm-Message-State: AOJu0YwpbzNrXlwcaYu5ev+rf62FaXjU+XC8IRd7WMZ1KO4mnMO2wZZv
	L1E/oje2Dzt9ovcbhK+6Uw5umErgMO4f73OqQh2p36BR9f24o7E9JBzF2No8MH32mKAfh7L+k3P
	qMWldXWS9fcF2ETu80PEcc6pzzn11DoSmQd+MPnyI7E+51AR7uYMPqbXEqciCK82f
X-Gm-Gg: AZuq6aLmDEMJmP9H2Rx4ELwTDpI4FkpgDT0JelOXM5eTqnNEFmb/9ugUUuakhZWmRHW
	rBk48my/AiJSPwP5XGz4ki9TvcZ7PLZpkv2+Kyxp/sBLuFdUzeefM8mpZvuFty0d8C7TseC1QXn
	kSHEczWFXPtxs/FWlmljZ5nL7TH8WX1Sdov8mKqImibTwS9mcofJx1pyLLGoUW7JP8WpKohEHzp
	0k8wd2EwemujAvSgospJ9kVxVUocJS3073kdx95DxT0aBfO9QfuAs5PaXBPyvQvUEAZPUaj4eWp
	792lljr/f91wByt+Y7gS4asyPP4OUugV9lPjBrpFPCA3tLsnTuRislYI4F79Ydt2TA6M/FuRqUv
	ybRay5UYZgm69nxZG6Y20B2LubFSz41+YK2GwkQxJUDUz
X-Received: by 2002:a17:90a:f947:b0:34c:fe57:2793 with SMTP id 98e67ed59e1d1-354b3e264e3mr277533a91.20.1770326095642;
        Thu, 05 Feb 2026 13:14:55 -0800 (PST)
X-Received: by 2002:a17:90a:f947:b0:34c:fe57:2793 with SMTP id 98e67ed59e1d1-354b3e264e3mr277499a91.20.1770326095076;
        Thu, 05 Feb 2026 13:14:55 -0800 (PST)
Received: from hu-manafm-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-354b4575897sm74536a91.3.2026.02.05.13.14.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Feb 2026 13:14:54 -0800 (PST)
From: Manaf Meethalavalappu Pallikunhi <manaf.pallikunhi@oss.qualcomm.com>
Subject: [PATCH 0/4] hwmon: Add Qualcomm PMIC BCL hardware monitor driver
Date: Fri, 06 Feb 2026 02:44:04 +0530
Message-Id: <20260206-qcom-bcl-hwmon-v1-0-7b426f0b77a1@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIABwIhWkC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIzMDIwMz3cLk/FzdpOQc3Yzy3Pw8XUMTy+RUc+MUSxMTAyWgpoKi1LTMCrC
 B0bG1tQCCmTWQYAAAAA==
X-Change-ID: 20260206-qcom-bcl-hwmon-149ce73d9440
To: Guenter Roeck <linux@roeck-us.net>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, amit.kucheria@oss.qualcomm.com,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        Gaurav Kohli <gaurav.kohli@oss.qualcomm.com>
Cc: linux-hwmon@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Manaf Meethalavalappu Pallikunhi <manaf.pallikunhi@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1770326090; l=2419;
 i=manaf.pallikunhi@oss.qualcomm.com; s=20260206; h=from:subject:message-id;
 bh=R28ctyRfWvYF1AcAyUM3MdJI+xYN+EibX6fe5/NpQSY=;
 b=LomUW48sd/c8DDC9GA+Hgmzh6Mc1dSngB0j0DKcFtgZddiNhJxqAcA2XPOx/b2TejvDLs8+L8
 sIxJEkhSkSHBzpmDVsbIfjUX327WIdVqmYQhLf9DXgbMTvtRzeLoDIQ
X-Developer-Key: i=manaf.pallikunhi@oss.qualcomm.com; a=ed25519;
 pk=oZ3x9jh+FDyPwxHmCbyzEMQHMzKqrH6hUbbL7dEBe2g=
X-Proofpoint-GUID: p91bIgxbha_dSYiurKy55qCgumF3LkIH
X-Proofpoint-ORIG-GUID: p91bIgxbha_dSYiurKy55qCgumF3LkIH
X-Authority-Analysis: v=2.4 cv=eLkeTXp1 c=1 sm=1 tr=0 ts=69850851 cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=NRMeOcx5ysTwsLa4DNsA:9
 a=QEXdDO2ut3YA:10 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjA1MDE2MSBTYWx0ZWRfXzuh/SbZ0ys4d
 QfAcSYOts8Udc4ZJIUHJ6nypgRHlO0f0kNnShhUwD/jUF0P2l4cMAbRggTyOIosZ1AgJKtPjzoO
 Tfc9u6LwqLlYoEd6S5aDiCvGkFRhH9qWkGtwMlZ2L68/dA0DnrasXuoXXJyVK6SPTajzZmnI45T
 1SVLh89w6D0FlFeWyu88UBvKCCC2Pxv9lrN3FrcedMvDBnpqYO46baMJIOGvReoXCJ7yHfx3yIF
 6XKuqXDJbB5F3or1AyTgh+RuAhfzCZC3eMmYEdd6k70SOisNJVogD4TbDKwKjz6mfe+uvboUTrQ
 wCIw7GdRbeW9bzbtmFn78+X+Vz/G14pa7tOT15Ich7VkQ81TQ5xggeW0uVvPFh8isfbsNFZAIDs
 28XgF6DXdWzSvOudex4GM3NbxzdRP95cOShtOdLVtpmkHKgQPhG7z+hs4oBiHjb8D+wL8aL9ZkV
 by5FrHNkSB7xpqFgZkw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-05_05,2026-02-05_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 clxscore=1015 bulkscore=0 suspectscore=0 adultscore=0
 priorityscore=1501 spamscore=0 malwarescore=0 phishscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602050161
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-263160-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[manaf.pallikunhi@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: E28EFF7810
X-Rspamd-Action: no action

Add support for Qualcomm PMIC Battery Current Limiting (BCL) hardware
monitor driver. The BCL peripheral is present in Qualcomm PMICs and
provides real-time monitoring battery overcurrent and under voltage
conditions.

Hardware Overview:
The BCL hardware monitors battery voltage and current through dedicated
channels with configurable thresholds. It supports different alarm
levels with independent interrupt lines:
- Level 0 (LVL0): Maximum/Minimum threshold - mapped to hwmon min/max
- Level 1 (LVL1): Critical threshold - mapped to hwmon lcrit/crit

There are 3 modes of BCL hardware
- BMX -  Both under voltage and over current monitor support
- CORE - Only under voltage monitor support
- WB -   Both under voltage and over current monitor support. It also
         supports current comparator for current monitor

The hardware uses different threshold representation schemes:
- Raw ADC values for Level 0 voltage thresholds
- Indexed values for Level 1 voltage thresholds
- Raw ADC values with variant-specific scaling for current thresholds
- Indexed value for current threshold for BCL WB modes.

Voltage and current monitoring can be independently enabled/disabled
by firmware, and the driver automatically detects the enabled features
at probe time.

Signed-off-by: Manaf Meethalavalappu Pallikunhi <manaf.pallikunhi@oss.qualcomm.com>
---
Manaf Meethalavalappu Pallikunhi (4):
      dt-bindings: hwmon: Add qcom,bcl-hwmon yaml bindings
      hwmon: Add Qualcomm PMIC BCL hardware monitor driver
      arm64: dts: qcom: pm7250b: Enable Qualcomm BCL device
      arm64: dts: qcom: pm8350c: Enable Qualcomm BCL device

 .../devicetree/bindings/hwmon/qcom,bcl-hwmon.yaml  | 128 +++
 MAINTAINERS                                        |   9 +
 arch/arm64/boot/dts/qcom/pm7250b.dtsi              |  10 +
 arch/arm64/boot/dts/qcom/pm8350c.dtsi              |   9 +
 drivers/hwmon/Kconfig                              |   9 +
 drivers/hwmon/Makefile                             |   1 +
 drivers/hwmon/qcom-bcl-hwmon.c                     | 982 +++++++++++++++++++++
 drivers/hwmon/qcom-bcl-hwmon.h                     | 311 +++++++
 8 files changed, 1459 insertions(+)
---
base-commit: 0f8a890c4524d6e4013ff225e70de2aed7e6d726
change-id: 20260206-qcom-bcl-hwmon-149ce73d9440

Best regards,
-- 
Manaf Meethalavalappu Pallikunhi <manaf.pallikunhi@oss.qualcomm.com>


