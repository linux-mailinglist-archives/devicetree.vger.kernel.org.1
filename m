Return-Path: <devicetree+bounces-167654-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B367A8B3D5
	for <lists+devicetree@lfdr.de>; Wed, 16 Apr 2025 10:30:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8ECAD3A5123
	for <lists+devicetree@lfdr.de>; Wed, 16 Apr 2025 08:29:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 84FE122DF80;
	Wed, 16 Apr 2025 08:29:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="oTSbokBN"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8D0622D7BC
	for <devicetree@vger.kernel.org>; Wed, 16 Apr 2025 08:29:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744792171; cv=none; b=eD7iVDpdu+kiCKQlvKW5W3gO2y2OFWkt4rtRGbYEROEkC1PreAVlTsBdCqC+Z/XFPm58ycVJDLOI4L4XN+YY0X4JBlTWW1pjbC0lmdgorVNHXrEzj1p5Fdfi2ORMol9dW75WfH4NAn7CXRsBRMhd2vgrAiDxYZaWYY8oYrzt78E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744792171; c=relaxed/simple;
	bh=EA8oF/ldbOsSYZg81B4t+sYTz2WKrNkigSOvYkT5d8I=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=t6Z+6WeVAxJyHO2lgtomPUA2IqrazULgmv/29TjTpJnufWpbE9uMY3Pz05/x29CzPlWLx9scZCbn12Wyiz/dfvUcUYqlLQ1bFSTZLoVfzcHA3hWuxLNP9OBW9skIxXMIZs5ZTY+f07hWTYg3lK/Iu3cSovHc/VhgFVdp7fwccEU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=oTSbokBN; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53G7JNQJ001051
	for <devicetree@vger.kernel.org>; Wed, 16 Apr 2025 08:29:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=slpc2bXbOCKha90h+sjNzl
	g3kbkNp7YexaKrDiTDN/w=; b=oTSbokBNImZ4hh/AOWmyP0XO29yfDjE7/gYhPa
	eQg1jI/tBfvXaALTD0+XEoIYLuZ+vMnDzvVSnmDhd7QETQ51JXZYKTILd+bkMkHj
	Kzeo9gVX3T0jrctn0E6pZHmDLWI7HjYijAq0nrovzvYdMth2AmK7hGyANekUdDgK
	l3qEOPRA/Uxs4JnqmDK2StclVT503mOh3RMx75zA56yKhANzOvXTHc/wKSIkUdWS
	twjdDN3zVyHxzrsaQNSkq5O+cpqp71rrDmZeQWztesAi8MsTRbK1U+fZC/QRN7nI
	2PLxjZC99aSqRJJs3SU3EDUMehUgSUHaUZdXu63IB+szLmyg==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45yf69tv6s-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 16 Apr 2025 08:29:28 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2264e5b2b7cso57333145ad.2
        for <devicetree@vger.kernel.org>; Wed, 16 Apr 2025 01:29:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744792167; x=1745396967;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=slpc2bXbOCKha90h+sjNzlg3kbkNp7YexaKrDiTDN/w=;
        b=gH+hjw8nyeGN3H90r5HNj/Xmp+7cU9LRrwv9bCHXnfrR4GZYqNkryPPnDVCSI5zCJq
         EVDR48Sc45D/bhjncU/vYdIYkoCylwAuCHmmtkTXU02ykycA9sqG0FaKmENB/S0xV0OD
         qPz/XLQkyXLRFSw5Fi+J49nTF0oP7y1n12/j31amJuAYVxJcxD0nBGGTE6VC/eQq2tI0
         slCODmmywRcj4tg34aRNZ0wWCUH4+2f4b4/YajunM5KFxOTYSbitLh8/+3JKoQuj5ukj
         g4rP086Bjsjgm4SMkZyiLtSWzQlT674AQeY0rrYSnbwgdXWYdKUYrOwMTZ67DHLYp1WX
         Yx2w==
X-Forwarded-Encrypted: i=1; AJvYcCXNgS0XmO8zjE9nr9xyWXdThfg0OydaHx/2D+sQGRrJ2q+sC3ArRsHZ4+mFbdbmjM3xS4LhRm/mKnFm@vger.kernel.org
X-Gm-Message-State: AOJu0Yz+fjmYG3V9hoxEIx6lj2O1omO8ZqrSxRcfKJDLt49/xC42J+oV
	S0opDGwSArlCN6NezfBjuWrsZVWGaKsW5l9Jfw+8wFxR1alCKZJxT4HnleyUiGH8MwlqrQh4L9R
	z1+L6yw6o9cQw+CmU0b6sH1sa6cmHemQOimnnJuUSF3u8/8uLu8OMHE88ec9W
X-Gm-Gg: ASbGncs+wOJGybTqABR3hNRQdTY3xfoD42jc7hUPTXEc3Dn2/z5ZUmkseQKQusONAY5
	Ydi0jhVQPy8ArwGgb/zLY8GeIF9y3Mu8uXQRGGtq64BbIoGhzlRLBPuEjKNLQExS4/u1bD+gLnk
	5XapyvyaydFRp6dNPNhliCvycSNclPlMTu26HE++kl+5aL/A7uGPBnVGCTdc+RU7fY4lUb9Lgiz
	msgBzoNq4sWyKsBugpE+5Vo5RLP8DVKPMwxlDuqh68vXzQYEuYRrqHq7oeFyHcWcZKdwcSSQYrX
	hstPadwNhaAS90Dx1567Xh4pGH/C8OwBJIr8B2Yxoau6SbQdJt8sI/cAJoRn9farWGQO0IhLlJT
	33JhJUy1Ia3rOaFUtXcs7u5POqaz3O+Y7A2RQQYHPSYpOeno=
X-Received: by 2002:a17:902:d589:b0:224:e33:8896 with SMTP id d9443c01a7336-22c358bc53bmr17010755ad.11.1744792166991;
        Wed, 16 Apr 2025 01:29:26 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFkY0IYvPuynwwUfpOe7++iQmfTfrqoDmd0WU5zErlHpIIvo01R5A1nx55oi4Ov6D0iV7F6lA==
X-Received: by 2002:a17:902:d589:b0:224:e33:8896 with SMTP id d9443c01a7336-22c358bc53bmr17010445ad.11.1744792166626;
        Wed, 16 Apr 2025 01:29:26 -0700 (PDT)
Received: from hu-kathirav-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-22c33fcee11sm8340125ad.191.2025.04.16.01.29.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Apr 2025 01:29:26 -0700 (PDT)
From: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
Subject: [PATCH v2 0/5] Add support to read the restart reason from IMEM
Date: Wed, 16 Apr 2025 13:59:17 +0530
Message-Id: <20250416-wdt_reset_reason-v2-0-c65bba312914@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAF1q/2cC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyjHQUlJIzE
 vPSU3UzU4B8JSMDI1MDEwML3fKUkvii1OJUEJlYnJ+nm2poZGlkaGlmnJZopgTUVlCUmpZZATY
 yOra2FgBTMDTtYgAAAA==
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
        Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1744792162; l=1923;
 i=kathiravan.thirumoorthy@oss.qualcomm.com; s=20230906;
 h=from:subject:message-id; bh=EA8oF/ldbOsSYZg81B4t+sYTz2WKrNkigSOvYkT5d8I=;
 b=azUibPrixdPFYTjGH1Dn65iNy5F9mluVpJcXL0XLa7TgNcdNm8r2Fz80gyro9nclD/Fk6SPkK
 lbS6C3/1M7AD8gd87h65x+IS0GhZkIDpc02RFHsCAhnCFRTvrK+QNoW
X-Developer-Key: i=kathiravan.thirumoorthy@oss.qualcomm.com; a=ed25519;
 pk=xWsR7pL6ch+vdZ9MoFGEaP61JUaRf0XaZYWztbQsIiM=
X-Proofpoint-GUID: KgRmWAeVwugIt8WRiNTRJPEcWrTVsmod
X-Authority-Analysis: v=2.4 cv=JNc7s9Kb c=1 sm=1 tr=0 ts=67ff6a68 cx=c_pps a=cmESyDAEBpBGqyK7t0alAg==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=EUspDBNiAAAA:8 a=6yf5bMAz9jDV2NJdPn0A:9 a=QEXdDO2ut3YA:10
 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-ORIG-GUID: KgRmWAeVwugIt8WRiNTRJPEcWrTVsmod
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-16_03,2025-04-15_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 malwarescore=0
 suspectscore=0 mlxlogscore=965 lowpriorityscore=0 bulkscore=0
 impostorscore=0 clxscore=1015 phishscore=0 adultscore=0 priorityscore=1501
 spamscore=0 classifier=spam authscore=0 authtc=n/a authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504160068

In Qualcomm IPQ SoC, if the system is rebooted due to the watchdog
timeout, there is no way to identify it. Current approach of checking
the EXPIRED_STATUS in WDT_STS is not working.

To achieve this, if the system is rebooted due to watchdog timeout, the
information is captured in the IMEM by the bootloader (along with other
reason codes as well).

This series attempts to address this by adding the support to read the
IMEM and populate the information via bootstatus sysfs file. As of now,
we are handling only the non secure watchdog timeout reason.

Konrad, I sticked with syscon API to access the IMEM instead of exposing
it as mmio-sram to align with what is available in the mainline. Do let
me know if the current approach is still not correct / feasible.

Signed-off-by: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
---
Changes in v2:
- Dropped the RFC tag
- Reworked the driver changes to use the syscon API
- Link to v1: 20250408-wdt_reset_reason-v1-0-e6ec30c2c926@oss.qualcomm.com

---
Kathiravan Thirumoorthy (5):
      dt-bindings: sram: qcom,imem: Document IPQ5424 compatible
      arm64: dts: qcom: ipq5424: Add the IMEM node
      dt-bindings: watchdog: separate out the IPQ5424 compatilble
      arm64: dts: qcom: ipq5424: drop the fallback WDT compatible
      watchdog: qcom: add support to read the restart reason from IMEM

 .../devicetree/bindings/sram/qcom,imem.yaml        |  1 +
 .../devicetree/bindings/watchdog/qcom-wdt.yaml     |  7 +++-
 arch/arm64/boot/dts/qcom/ipq5424.dtsi              | 11 ++++-
 drivers/watchdog/qcom-wdt.c                        | 47 +++++++++++++++++++++-
 4 files changed, 61 insertions(+), 5 deletions(-)
---
base-commit: 7702d0130dc002bab2c3571ddb6ff68f82d99aea
change-id: 20250408-wdt_reset_reason-e12921963fa6

Best regards,
-- 
Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>


