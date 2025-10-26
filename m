Return-Path: <devicetree+bounces-231102-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id F1880C0A675
	for <lists+devicetree@lfdr.de>; Sun, 26 Oct 2025 12:18:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 3312E348F34
	for <lists+devicetree@lfdr.de>; Sun, 26 Oct 2025 11:18:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D7F0A2236E0;
	Sun, 26 Oct 2025 11:18:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="WAy3N3PX"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 522DA1F0E26
	for <devicetree@vger.kernel.org>; Sun, 26 Oct 2025 11:18:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761477488; cv=none; b=QopTlLy04nbu8NakOxDAJe8rHjEY6Xdpcz/PXq7fP5BvgoR7JCG7izZB5WCoo5jH5xODmeSZ5IQ9Rx9+hijUo1ehe4/fOTReHvgK4giNUSyYB6xGZyOAEOQI024O9+D6ZOtmd7alskeDQP5wdecDIyDqw4cLNXtEjDp/5gnkK/c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761477488; c=relaxed/simple;
	bh=AFar811F9iCO3PW/bUYkCvTbMI/jIlhhcC3tuFxatKo=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=gwZM7HJffN8J4dwDRlDmmhY5mru5Fz8d4+41rXzELkJBFlLrF+9kyO5E7D72rsukmPjA7zyM58RFYSRp9033hb1beRit4sXngAbRPv6n1EYlremvnv9Ja1lWQrwixq3pmrcsgIqTVnM0Nt1dIRJbisP3p0yBxXxcsoDBnfxfPNc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=WAy3N3PX; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 59Q6oT9Y3311017
	for <devicetree@vger.kernel.org>; Sun, 26 Oct 2025 11:18:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=PP4ZLZZk5lXfWJld/o73iVfzszWgXXw0Xp/
	OfYD7kEE=; b=WAy3N3PXBNBKdNFk4Rxa1whB1VCIEWua4IvyKx9nEvM25T5ZsiX
	oj1jrHjHo7nUyHfJjToelvgr+qos2aVn8w7Xmhm1ioJc5vKJeU9HYs/nlIgIPRCC
	dnnCiTPVaqUmPJrk17Qe8GYvQr1CA8e4FowX22NPey9kbXbLqTR7aqpnLHdMstMS
	Jhh3V9y/xu9/N4Y+f3hxm2LeOlT9vpvWk6lm7qPUhryP6rBt4ncRmS7i9+4BzCEm
	gvzozPKCb1dwY3KXv4BPkTfx041cCsqiyKX3fnLl5t7tCS/y7USMW5qAAN6Eg3KV
	RGLmt0sauKWIO3zalEULyn/Pbe+/tkqTa3A==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a0p4g1yc9-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 26 Oct 2025 11:18:05 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-33ba96c9573so1158610a91.1
        for <devicetree@vger.kernel.org>; Sun, 26 Oct 2025 04:18:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761477484; x=1762082284;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PP4ZLZZk5lXfWJld/o73iVfzszWgXXw0Xp/OfYD7kEE=;
        b=Sw9r+Sfx2jf/Rwv4fIh7zWu4As8hc640Q5C2YA1opfkD+TDEHcSo/Zic4U0BYU5cBF
         LBbEgJOXxnK2FrZA7RqqqPK3zVrz3PqYr1wc2c2OoI2oDU/UbD1WMRIjxiTy4GlwszWx
         Kqo6uTgmXA2cDX50hzPiKVCgiyc4SYHmkDcTNt4O0EUOhrQ+BWa/lwCb2FaZEs5U0e0J
         +TDctN70Kn9KU0BGSmQ4dSEtplIEh5g0aTawc4rgGDWubDCItprktA9dHO9UNiNBvq42
         SM7yEntUNNhpnr+8k1ztFsGL+58XzAajN8Jrld/20Qd2aNGd+sJCU/zBL9MFYTOy6VKM
         s3zA==
X-Forwarded-Encrypted: i=1; AJvYcCWUuSqx6lo1sD6eGw+TL74dJ+E8LENi/Ar7K1WD7pYubhjqxt7Tsln7dKKuzaecycv4opRACJbbhzre@vger.kernel.org
X-Gm-Message-State: AOJu0YwzrGLwfSQxlIwCaQH+Axo1PcxZkohToMqmrQKjU6LavXI1D4RR
	NU6puxyeLhpdYfMOk95QJIdHFEtsb0K/jm5t8GJIqIB10RKXMLvriB9eFERypKDLXcBiFb3Z76S
	LFYnb2EdAqxhxixn4aFhdWKFUt3So3F8yIUbUZtEapB//NvXMsKiFrjlSdYcXryQ=
X-Gm-Gg: ASbGnct55YA722dHn10r4KSMr5P1RpNxrv/CLeUe3GUaASTVwG39NLhkgrWBYi/tRtf
	cErIw5EnQvUq8RY+z25KKXhJiI6AJgj8SVVcHPiNn785sgnSSZzq/TxzJ43f4CFU8TyuJ8uomxa
	JCCIdZbUiq2oW1YDoErYwq9XEXf/2m/2crl3bHB6Ugu0mDGE3blVTwKlpxwhy5BkskgY0ylqrCK
	K+DXCKpElIF/xlq6T34dMKHUCG23+Pwfj7MqTth+4DlNQiaAUnLuttkHTI43WdkuiqOv99hmTsg
	ngIUfnJx6/kXRqdS8726L4laeg3b7PItvslMHEXWDMeMpW1UhgsKcOC8KTbRMK5ie0xrdwHBhdo
	rBYE0B/J4VuxYUKapM9HZXfTj3CgtRA==
X-Received: by 2002:a17:90b:1b09:b0:33d:55b1:e336 with SMTP id 98e67ed59e1d1-33dfabe6c8emr13999413a91.6.1761477484370;
        Sun, 26 Oct 2025 04:18:04 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHSo0JH7nP8ynm5o4I7Lm3GCE8tlnKfzC4jpWmfkVLIzkCK8S3DvUDI2E8nIlJhjI/sdz/55Q==
X-Received: by 2002:a17:90b:1b09:b0:33d:55b1:e336 with SMTP id 98e67ed59e1d1-33dfabe6c8emr13999397a91.6.1761477483755;
        Sun, 26 Oct 2025 04:18:03 -0700 (PDT)
Received: from hu-sartgarg-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7a4140301f7sm4707829b3a.19.2025.10.26.04.17.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 26 Oct 2025 04:18:03 -0700 (PDT)
From: Sarthak Garg <sarthak.garg@oss.qualcomm.com>
To: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        quic_nguyenb@quicinc.com, quic_rampraka@quicinc.com,
        quic_pragalla@quicinc.com, quic_sayalil@quicinc.com,
        quic_nitirawa@quicinc.com, quic_bhaskarv@quicinc.com,
        kernel@oss.qualcomm.com, Sarthak Garg <sarthak.garg@oss.qualcomm.com>
Subject: [PATCH V3 0/4] Add SD Card support for sm8750 SoC and boards
Date: Sun, 26 Oct 2025 16:47:42 +0530
Message-Id: <20251026111746.3195861-1-sarthak.garg@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: 6YmAVn-bgjCCQRDhPm-T6R4MrfvFVjyh
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDI2MDEwNyBTYWx0ZWRfX6nNuGaJ3kOEK
 6x39Ix3Hvrp5d9bpzB3YPq+bwRhaYXEws/MxiH3aO3OmLVNNjXB1gu7e5PJV8Rx1avAWjSB5Cam
 U388MqX+pdMB1Kjb6HKi0yw/8/vwZ1vJfcVBEhVBToA+AM46aHJwE6owQwvLA/Xw3xONUPXFIGS
 eCaaMclwqTiKr9CK5GWA06D19D17AKwiN3TGrRnkANRImW/+89HoBOLsnpzRU4jgKNXarpaxsWz
 5ruEUoL+7K364g6pB2XlNZlGGw46MpIynvZ7hHhc+sGs9S+I736yVYwIUoxc78FK/3wmq72Bgc3
 +NF4aRfR8MZRt32b/VWeNB85HxAPlg4zR09mrCUe9QMQTccf1fAN8IpuDHDuCK2Zx3fAyshmz1b
 QiIe3LJIVrAkyrU/QwuTX7/D/3tl9A==
X-Authority-Analysis: v=2.4 cv=L9YQguT8 c=1 sm=1 tr=0 ts=68fe036e cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22 a=8g3-L627ePlETrSfAJsA:9
 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-ORIG-GUID: 6YmAVn-bgjCCQRDhPm-T6R4MrfvFVjyh
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-26_04,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 lowpriorityscore=0 clxscore=1015 phishscore=0 impostorscore=0
 adultscore=0 priorityscore=1501 spamscore=0 bulkscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510020000 definitions=main-2510260107

Add SD Card support for sm8750 SoC, including MTP and QRD boards.

- Changed from v2
    - As suggested by Abel Vesa move the GPIO configuration for SD card
      detection (specifically the pin settings for gpio55) from the
      SoC-level device tree (sm8750.dtsi) to the board-specific device
      tree files.

- Changed from v1
    - As suggested by Konrad Dybcio the patch into separate commits per
      board and did formatting improvements (e.g. aligning < symbols,
      placing each item on a new line).
    - Addressed Konrad Dybcio comment to use SVS_L1 for opp-202000000.

Sarthak Garg (4):
  dt-bindings: mmc: sdhci-msm: Add sm8750 compatible
  arm64: dts: qcom: sm8750: Add SDC2 nodes for sm8750 soc
  arm64: dts: qcom: sm8750-mtp: Add SDC2 node for sm8750 mtp board
  arm64: dts: qcom: sm8750-qrd: Add SDC2 node for sm8750 qrd board

 .../devicetree/bindings/mmc/sdhci-msm.yaml    |  1 +
 arch/arm64/boot/dts/qcom/sm8750-mtp.dts       | 23 ++++++++
 arch/arm64/boot/dts/qcom/sm8750-qrd.dts       | 23 ++++++++
 arch/arm64/boot/dts/qcom/sm8750.dtsi          | 54 +++++++++++++++++++
 4 files changed, 101 insertions(+)

-- 
2.34.1


