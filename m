Return-Path: <devicetree+bounces-188599-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 4746AAE418B
	for <lists+devicetree@lfdr.de>; Mon, 23 Jun 2025 15:04:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 202BE1882FDA
	for <lists+devicetree@lfdr.de>; Mon, 23 Jun 2025 13:04:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E4B7F246BAC;
	Mon, 23 Jun 2025 13:04:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="QchBsOF5"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 706FC23C510
	for <devicetree@vger.kernel.org>; Mon, 23 Jun 2025 13:04:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750683869; cv=none; b=B2beqAAPA+wC2Vj/YAjondVTCKezTIg3WBzJou5Fy/8TSJ5LqFJBlMoTg3drKB8qw36TYgIIKCt9Vd+VbGjzLwAFpHGVK71TmSAroBTw1/y2kTZawkjk59i5KgNMPi8FI5BbF0oTAKm9bFuOCfs2nrHrZw5tbBqkoeXvvMG+NPM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750683869; c=relaxed/simple;
	bh=4c5QAaF8FWCXjYjf2OT/eBU9e4Zc4tJ8Fgb0BtDON2M=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version:Content-Type; b=Ux2DXa6StPrzaTPiG3A5N7awWQK+wFsVtPZCtPOIoRh2KvYLjAsbs5rsXJ7+MXYDEZ/emvzc5QGW9iBk5V1XJm59LOhFNJEg6mnBprxMguruypAeGM5tCKH7IFlly3FpgNhSms/TSEtt+95DWASMx+foXnnfGCkQgwkUB0J594E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=QchBsOF5; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55N9UAcp022368
	for <devicetree@vger.kernel.org>; Mon, 23 Jun 2025 13:04:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=CHDw0gUyfP8fWV39O/SeiV
	52mAutq3BiJxP93zChCWk=; b=QchBsOF5r0wseOD4AyhzgxUE6G/cpX9nguWUSh
	SXj9xSikq8ITFxDZEHlNYUb/nHzNm7Lx9703bFWkeYB4S9zLUqmnK1gjLACTH99d
	57s8YmI74xbcWXlNZPODLDebf1UB/nKivvzrMatFpm1VV3Lax+yuNmdzOVY7g39G
	B+dw7Uk/zS2BIkn/V0Pay5WCrGP09SgWwwGP4tqqJBzGnGOS/WI3RsB7BZT2jSHG
	Fv9CyafuJCFvdyAfYiSUw4kULohgSNbG7nDlPa643iGPnip1obGfTW5S50gGYX/3
	1n7keBgV8MDxqO9LIuFR7kgOMrYRZgxltdnI7f6+Z0I1+pIQ==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47f4b3rjp3-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 23 Jun 2025 13:04:27 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-739477d75b1so513770b3a.0
        for <devicetree@vger.kernel.org>; Mon, 23 Jun 2025 06:04:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750683866; x=1751288666;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=CHDw0gUyfP8fWV39O/SeiV52mAutq3BiJxP93zChCWk=;
        b=vQPgbtI+TIX/FozObvkNVirZo8pynnW5SG9WS6/z4CjWOfmBOxbR3H0HXtaet3561D
         3vD3V91lLjDWjRpCQKsH2lbajfwc5tgjsfC16B0TqoX0d8VHEzgKMQ541EBuopxIjhhn
         XKe8wQIJCBi+641PhJ6pcbR/2+UKNQtpi+ExVbZIIWLrwLh5yIOI1vExFbaKTd7hI+uV
         pBLmySwzpjmHSUfTvUJnckyUyt+YYoYmRcLqWAF19QFiv1IkxhZRl3Q+XlGJa5RGC6d3
         fpv42g06TuYzK8haO/3c+78RyjDfPhbsJDvfj5RlSD1ZGvcSek2fZ6Ou1DINycvX4a89
         6n2A==
X-Forwarded-Encrypted: i=1; AJvYcCUbd4t3gSHq4k8PegF7eCHRrrZt4R2qBkvPFuGRj5K6/z8XNe91QujwA1edKFTPUzC+7k6jZ2TkiI4g@vger.kernel.org
X-Gm-Message-State: AOJu0YyjoGYU9MnFu/PB3+G1RV7B8BCqFZvHUDOCaBeb9unJH9K+fBnh
	aNHAmgjDuHC3XXeRPSukDfphMwg8tTmWO7KBX+2KFtt7aov9DR7f6G5Uu23AkSu+e1l8OXFKEyl
	s4s021ImFu7s8LUMCWU1iq8clBgqZcYkYSRSkBVfGK0zwtvbsbEhTLsLI1ToqCmo/
X-Gm-Gg: ASbGncuwwY3OS+yyPdSi2ZzZZuK36P9s3VUlue3aDUl7nLR1idCCNyiSA5EANWLm62T
	QKuOmx7PZZZSLbIUl/Lc3OnwcxBxDT7eLXnZ0EKFbpBNi+JDKYoGnRVxJE1kV6tdyLfaum6/A/a
	ddKg/Drxk4woFapKugFPLBZb6hKMMECqnY7H5WwItRXJKZArr3nv5ANPPyFtzDw9CL5Oqt8wPTF
	uZo/YSMIoDQC6UKy0/dxHJFdBtvspqdupIvrjKbmkv2u97MCKmqSvEjB4Bbws6xlKIQ//CACMHX
	akMhz3XH0QijVacMXiamemX3WebEninBpHqaYYRWKrTe0w+R4k0Uig==
X-Received: by 2002:a05:6a20:3c8e:b0:1f3:478d:f3b4 with SMTP id adf61e73a8af0-2202701728dmr6994349637.10.1750683866453;
        Mon, 23 Jun 2025 06:04:26 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEWgVfAMuttAUlg7WI6XMGUkdKfM0WSYZDqh+gGj6Oz13qwWDpAB34ICIwSzWnzY9Vzvtgr9A==
X-Received: by 2002:a05:6a20:3c8e:b0:1f3:478d:f3b4 with SMTP id adf61e73a8af0-2202701728dmr6994324637.10.1750683866017;
        Mon, 23 Jun 2025 06:04:26 -0700 (PDT)
Received: from hu-uchheda-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7490a46b8b2sm8713437b3a.16.2025.06.23.06.04.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Jun 2025 06:04:25 -0700 (PDT)
From: Umang Chheda <umang.chheda@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, kernel@oss.qualcomm.com,
        umang.chheda@oss.qualcomm.com
Subject: [PATCH 0/2] Add support for IQ-8275-evk board
Date: Mon, 23 Jun 2025 18:34:18 +0530
Message-Id: <20250623130420.3981916-1-umang.chheda@oss.qualcomm.com>
X-Mailer: git-send-email 2.25.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjIzMDA3OCBTYWx0ZWRfXw+mJoik0D6ip
 /l70p1SVsLvL7G1Dng4/cFMrbwEVq1lk82+DAF71y/UD4cST3rr53AVbGlbDBNgK3s0n+k8CRXD
 VSsAd2ifkgJn2tuf431vOBeJe01lja7c8IPCubQJgC+N/j+7Bfia6T+6L5N8w2JrLN7806VVqmD
 mi7lAyFpB8wVbnnuNNor7OcbKOnvEDGAGWdB6XMxJCVe951N6PBs8paJWxxR4Gebsbrt5mkMd8Z
 A9ZhMUeOPx+YhYjBLanJJ7BFKgcXSCkQ/xzfLYn7DINZgqGk34/OgVgtyQ27dagdzAvsG3MaW4+
 azvbyqDHO4WVIEWmGh9Ktk8F7WzG6cOvgW3qRJhWS4AV4dZmjo7gJuvOF5r+L7KVsqxDBVhYGGo
 st3J+tK7gXKejVV7xz/deVnMNpHT3Zbl4G5jmwb0v27vQOCbJk/kzSxszm+1TKKt7W8999d3
X-Proofpoint-ORIG-GUID: Fil_mejydbg2_LvBhhBc4vatAnnsouR9
X-Proofpoint-GUID: Fil_mejydbg2_LvBhhBc4vatAnnsouR9
X-Authority-Analysis: v=2.4 cv=A8BsP7WG c=1 sm=1 tr=0 ts=685950db cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=xyu6GANZigqoUC4sCMYA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=IoOABgeZipijB_acs4fv:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-23_03,2025-06-23_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 mlxlogscore=999 malwarescore=0 spamscore=0 bulkscore=0
 phishscore=0 adultscore=0 impostorscore=0 suspectscore=0 mlxscore=0
 clxscore=1011 priorityscore=1501 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2506230078

This series:

Add support for Qualcomm's IQ-8275-evk board using QCS8275 SOC.

QCS8275 is another SoC under IQ8 series of SoCs. Unlike QCS8300
which has safety features, it doesn't have safety features which
affects thermal management.

IQ8 EVK board is a single board computer (SBC) that supports various
industrial applications, including factory automation, industrial
robots, drones, edge AI boxes, machine vision, autonomous mobile
robots (AMRs), and industrial gateways.

Below are detailed informations on IQ-8275-evk HW:
------------------------------------------------------
QCS8275 SOM is stacked on top of IQ-8275-evk board.
On top of IQ-8275-evk board additional mezzanine boards can be stacked
in future.
IQ-8275-evk is single board supporting these peripherals:
  - Storage: 1 × 128 GB UFS, micro-SD card, EEPROMs for MACs,
    eMMC on mezzanine card
  - Audio/Video, Camera & Display ports
  - Connectivity: RJ45 2.5GbE, WLAN/Bluetooth, CAN/CAN-FD
  - PCIe ports
  - USB & UART ports

Currently basic features like DSPs, UFS and 'boot to shell' via
uart console are enabled.

Umang Chheda (2):
  dt-bindings: arm: qcom: Add bindings for IQ8 EVK board
  arm64: dts: qcom: Add support for QCS8275 IQ8 EVK

 .../devicetree/bindings/arm/qcom.yaml         |   7 +
 arch/arm64/boot/dts/qcom/Makefile             |   1 +
 .../boot/dts/qcom/qcs8275-iq-8275-evk.dts     | 241 ++++++++++++++++++
 3 files changed, 249 insertions(+)
 create mode 100644 arch/arm64/boot/dts/qcom/qcs8275-iq-8275-evk.dts

-- 
2.25.1


