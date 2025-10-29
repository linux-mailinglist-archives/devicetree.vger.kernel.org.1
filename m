Return-Path: <devicetree+bounces-232559-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id B3CB9C19022
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 09:25:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 307CD1C83538
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 08:20:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9B0A231619A;
	Wed, 29 Oct 2025 08:15:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="HAkAxR4E";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="BvRxu55r"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE9D3315777
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 08:15:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761725724; cv=none; b=dth43vYjo0h+gmhACne1UNEGdnFzV+TC4pl2iAZxWiTrCLg/cLy5GMRmt02j+6PwSfnPVv9mTgZu0l8GDvCT6vGFjidskjKy2KgDO34UbEprf4rEEmkcw2MA+5DfxG6H8kdHCnoQYOvRDHJprfhKoOBmnCYj5VHX2wK16HYKjv8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761725724; c=relaxed/simple;
	bh=7lqMr+ExKGqq9xEZz2RvPrwiybtbEXqKkTiHyGiKTbA=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=GtAkjXAuk1AUgdeuoj9hxhWFqKkCw8EIgvz/Ah3mqJtICIakLHD3hX3nKvVVbO54gnp04cgzisYWG3JMuXzdJTrLBBBcX6etrVmzUvU1m5IaCymLA6rPBO3NgKDg5wOhnItDpzvke4Z8sDJGQp1EVIFDD3V7kIQ19LM1ws5VXx4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=HAkAxR4E; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=BvRxu55r; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 59T4utIc3692128
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 08:15:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=dzmTDrEk6TzniYpDlHIL+a
	ZTiwXopSsI7a4BrartT7Q=; b=HAkAxR4E2JUTXNMNxPOrmAV5eeGtrhWP4ZG5ck
	5YmyF/KAVUvqcEihKB9Y9siU1GCf1N07145IlwhSdPdQI1fLn+8Mxbmjc2tJK65V
	oP2O6R37HpHGqIBzex6AxB2fGizzHlH6snjk3PWo0PzAavacn2kBDxQ0nSvh+zLZ
	VeOok5QyRJGpAZe22nHfIby19lAQXTb5kpwIqXplA7dDjKEPYRq+zpHrC6plb5Gw
	YD2w9qDwu8flQTsW4EY2SnraMHeE7zE4Kh/WORS4DexHXB0MZkZobY3tJ8JSKoen
	bN7867IxOLbM6GP8BvCI7Yc5HNNUpyUgiSykhpcYeCihtn8A==
Received: from mail-pg1-f198.google.com (mail-pg1-f198.google.com [209.85.215.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a34a2hr5f-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 08:15:21 +0000 (GMT)
Received: by mail-pg1-f198.google.com with SMTP id 41be03b00d2f7-b62ebb4e7c7so5590551a12.3
        for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 01:15:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1761725721; x=1762330521; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=dzmTDrEk6TzniYpDlHIL+aZTiwXopSsI7a4BrartT7Q=;
        b=BvRxu55rfYoYGlp0U2+5rRRw/q27TXGzltc0q0h1G7b5Ri2mx3oyOaPbOEUTB/rDAK
         jFF4QDBZbNdAq/XcvB5y/4PQophg/6BX9vXWOIF0HB/Vhz3m+VW6a1hkjGA+a/UDRpFS
         OpeFvLRwQy+Mz0a99G+HNHou45jGaJyclBus+5TpQsudC/3EBf0Sfl7UJZNNToWC07q9
         jFHuHXXQ7HWvBv9hrv1lBc3crLn+z9yV/RnGE0BW4VJIf4A5Pgy1RDLBEIpab+KUh8ml
         ObjprVVVEjiHIUJrlCC+0EaTuwXPsNy+1HfGouOnK8VaPapNcCrxzABou2kI5Dsa5nB9
         9vTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761725721; x=1762330521;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dzmTDrEk6TzniYpDlHIL+aZTiwXopSsI7a4BrartT7Q=;
        b=JseL5cPmacoP6V7Qz3yhCv6euLvScqMuYH4QF53yA+pk8Vi7bhHUc/97cWzrTkvNH2
         ST6v+tGv7UMmkxbQ/TFf4mfTlfhsDJrKDqe662+zsvRtNzlb5ev2adXIREJ0wVZO6jlI
         ssXVztze1vbrGMxhvZrQFRiEtS+bmemSA66zcS9apBFi7qeMIdZvMtIxemb70blGCKyg
         7u2+s6Ix0hQGwn9kBmpE0Dh5ALHoXHFO9P2zWCdTZW1jqRfhSiLosDGGH5su+N5rtfO6
         wKWuKsn/ms9n3JxPtd/xPs22LKOa4lrpm2tnXBHsJdaDIq00psFtYbURIGUb+zFuNKL9
         ckcw==
X-Forwarded-Encrypted: i=1; AJvYcCW2l3zKB4lNRw6ZTdqbs+EDKG/OPmAAkFuTp8pow106X4q4iLD2y8gbYQfRWXqL6gPcTgni7dOgwjer@vger.kernel.org
X-Gm-Message-State: AOJu0Yxvd24gE0rYibtB2auU7HnxQfj44IQdT9w1WLaurHKntjzhpdHk
	Aw5LkY9GqATq7aAox31gkrW/VUCiRtemz+WU3wX+KUcOYeWAPyzjjN5JjIVWpPVLsaU9fKp1Tum
	0efvWcwVR+Y+Dod7xzzFwepmXGEX5NhSXtJuzD1SAYufaZdndD7KCY4Q9HAwCACoI
X-Gm-Gg: ASbGncsEtA7JC+FuXmjxJJvgGfpo/LGNKEzJ0KoSGgJ9qoyIFAX7CvAHoym5K9HiBxg
	KhW7wbFht0riZjYM8ouRekJIO2J892PbGmxxy7e4qhp0ZWfbri/G/RlvlONJAicb7VD9lV6Z8gz
	gTVVgszKfB2PPgGRVXcvTeEuGxRln/XcobNLgZN/uwKkVii4p/RgdyTCHAj+144AqZm32SMtpCh
	Lcixf4WtUp5VygeaMKUV5ikZvV7H62jtMeNr5GQDvLZe5/FzcZdyry/gk0u/0brCCyLWETtF1PK
	9bl+vzHvvFoAl7HEUI6MVLIp/az4+ABO3H4P34gxsHQLiIULDgeMEIEpHCGEG8asIMAj3XqoOvA
	53MQW5H6tVZWBxNT/eos5hGi8X87tnsJk0wMW/xBq3MYGQgcXFQ==
X-Received: by 2002:a05:6a20:938c:b0:341:9db0:61f1 with SMTP id adf61e73a8af0-3465194f01dmr2704527637.16.1761725720522;
        Wed, 29 Oct 2025 01:15:20 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEQtVLq5/xJzRFyBCjgvuxcMCuOzFErJQX4mo9DcKZOotudDkgHOtpKO2oS2LJYkzab+QcQow==
X-Received: by 2002:a05:6a20:938c:b0:341:9db0:61f1 with SMTP id adf61e73a8af0-3465194f01dmr2704491637.16.1761725720024;
        Wed, 29 Oct 2025 01:15:20 -0700 (PDT)
Received: from hu-jingyw-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b71268bdb2dsm13187901a12.5.2025.10.29.01.15.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Oct 2025 01:15:19 -0700 (PDT)
From: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Subject: [PATCH v2 0/2] dt-bindings: mailbox: qcom-ipcc: Add IPCC on
 Kaanapali and Glymur Platforms
Date: Wed, 29 Oct 2025 01:15:08 -0700
Message-Id: <20251029-knp-ipcc-v2-0-8ba303ab82de@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAA3NAWkC/0WNQQ6CMBBFr0K6toSZgFJX3sOwaMsgjdLWjhIN4
 e4WNm4mecn7bxbBlByxOBeLSDQ7dsFnwEMh7Kj9jaTrMwussIEKW3n3UbporTyaGlo1nAAQRNZ
 josF99tS1y2w0kzRJeztugTzGTRsdv0L67g9n2OS9XSms/+0ZJMimV6SsaZTu60tgLp9v/bBhm
 sp8RLeu6w/VYKFqvgAAAA==
To: Manivannan Sadhasivam <mani@kernel.org>,
        Jassi Brar <jassisinghbrar@gmail.com>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: aiqun.yu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        trilok.soni@oss.qualcomm.com, yijie.yang@oss.qualcomm.com,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        Sibi Sankar <sibi.sankar@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-99b12
X-Developer-Signature: v=1; a=ed25519-sha256; t=1761725718; l=1310;
 i=jingyi.wang@oss.qualcomm.com; s=20250911; h=from:subject:message-id;
 bh=7lqMr+ExKGqq9xEZz2RvPrwiybtbEXqKkTiHyGiKTbA=;
 b=abWiMwO/4KlhmxW+qY01GZVoAUUQLSAl4T8evTZu/f0ZwwSbpeT8gY85aqW9jK8rKezJWYjW2
 45OYJ2pw0RDAUtYDemu1pdyCVCiu2tKqwwRUnlbjrzyqdWvuzkdmGMK
X-Developer-Key: i=jingyi.wang@oss.qualcomm.com; a=ed25519;
 pk=PSoHZ6KbUss3IW8FPRVMHMK0Jkkr/jV347mBYJO3iLo=
X-Proofpoint-GUID: Q2_2Oz-5SBptK4ube_IJUMyVATb4NoIF
X-Proofpoint-ORIG-GUID: Q2_2Oz-5SBptK4ube_IJUMyVATb4NoIF
X-Authority-Analysis: v=2.4 cv=PcvyRyhd c=1 sm=1 tr=0 ts=6901cd19 cx=c_pps
 a=Qgeoaf8Lrialg5Z894R3/Q==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=6bbmqYmGk2oNw1X70Q4A:9 a=QEXdDO2ut3YA:10 a=x9snwWr2DeNwDh03kgHS:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDI5MDA1OSBTYWx0ZWRfX6n2pSdXHknu3
 dk2ZqBIJryAWiIgN8hiBQT/aliVbv28Izx5GChWVZfoHJ6X4IQXRmu0iC5lQ7Khgob+idMoKHnf
 JLrjTdmidwVZvBhhQdj9aywdb24sjh0oJm/aBKLIspXNhg8aMxL8xtN2PhwqGlHJ5viUKZGKtsx
 48SKfGdOIUko5RGFbIrRHMEW8Kmvvg+ux2qSMF992aAcPv2c6SvIhLqRWRESnkr7iQmcFKcWu8w
 ej3Zu/8uMYzFkEKV2vuFp6y1DAxr8KeHGAQd2rynsGA533zDk7/SM59CVLvgr8NQXnImhOebQx6
 U2A2at/DwnBWNHfvOvweaOdMonMQQXSINASiDgSVkBwd67NYPdMxbSqej3mGjjInsx2bKnUBbEG
 PN7VuWJVwwNu7soZBsKYsrxIGK+U9Q==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-29_03,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 clxscore=1015 spamscore=0 adultscore=0 priorityscore=1501
 lowpriorityscore=0 malwarescore=0 suspectscore=0 impostorscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2510290059

Add dt-bindings and header files for the Inter-Processor Communication
Controller on Kaanapali and Glymur platforms. As virtual physical mapping
logic is removed in new IPCC HW design. Physical client ID instead of
Virtual client ID is used.

Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
---
Changes in v2:
- Add separate header files for different platforms
- Merge binding and header file in one patch
- squash glymur ipcc change from: https://lore.kernel.org/linux-arm-msm/20250924183726.509202-1-sibi.sankar@oss.qualcomm.com/T/#m186ef6ceb50936185d07b81e2d36228a5a361d34
- Link to v1: https://lore.kernel.org/r/20250924-knp-ipcc-v1-1-5d9e9cb59ad4@oss.qualcomm.com

---
Jingyi Wang (1):
      dt-bindings: mailbox: qcom: Add IPCC support for Kaanapali Platform

Sibi Sankar (1):
      dt-bindings: mailbox: qcom: Add IPCC support for Glymur Platform

 .../devicetree/bindings/mailbox/qcom-ipcc.yaml     |  2 +
 include/dt-bindings/mailbox/qcom,glymur-ipcc.h     | 68 ++++++++++++++++++++++
 include/dt-bindings/mailbox/qcom,kaanapali-ipcc.h  | 58 ++++++++++++++++++
 3 files changed, 128 insertions(+)
---
base-commit: aaa9c3550b60d6259d6ea8b1175ade8d1242444e
change-id: 20251028-knp-ipcc-6b4189f71121

Best regards,
-- 
Jingyi Wang <jingyi.wang@oss.qualcomm.com>


