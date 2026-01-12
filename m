Return-Path: <devicetree+bounces-253847-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id C7C2FD12041
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 11:50:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 91CCD31080DF
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 10:47:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 24E2633F8AC;
	Mon, 12 Jan 2026 10:47:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Be0fztsU";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="chnEBn7D"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C272F30FF2B
	for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 10:47:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768214859; cv=none; b=pSU7JGxfZPVgChgvzh7dSuc2oYGlFOfPyemrYAl0add+I8BVMyXgZtKlTcv+yCjHHQdJJpfC8Dt0SdAANttoBRaQwonxmVV+mqqr2Ac+erbXlPfyqR3T89+mUim0p47iYUYPV2jVeASI0WIZcIgPbWPtfLLpm7Xzd8JH1J468PE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768214859; c=relaxed/simple;
	bh=TH/OvXj8sYUbUXnDQUkzPPvxmzCBBtnHvicuQMgEIRo=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=eqZwrURiqw6Tja7o8X6qLVJ36n7qXc5QA8885dC6HULeVzy0zGkNXOxVGPXU8sw2b6ijXaCRYhnjHqDceEeMIpjhh2les+9PRkrDR/YEhDxW/n4NfqIyVAd/gsjRVa4p7NY4mNX7s4F4+5PT46WystEx5CclfDq2038a2vDtIZw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Be0fztsU; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=chnEBn7D; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60C83Gcj2891875
	for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 10:47:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=l5/tcavTg8NZPfk1dSm59H2bLp6tv/6ANh0
	YzDNiBYo=; b=Be0fztsUnC91y5giKVe28/gT1r/D3CAXm5EnN7KLOE/r4YGro8w
	CoeFinb9t1JlzPDYI9zxlXI6DdmSJGNlvpGgi7GD+v6MHzihNf74ABJCV7v9OWTr
	Q0lUNG5tOjBKKCZUZMqUpFzHYYVmOrJe4jRz+tbSs+lsE9gZWXjCBGI4IJ98MIy8
	XvjSLITfySkHlX5P5hEnITutA8gAa2ToEmFGBLiX6n3ep7s1Nok96yEB4BGSOxxe
	QzhRhS5DCC5OBeCuJzqnJWwTaQ9DMK+FP57H/9yEBRmNz/sLKb4xt3Gd57EfGOR+
	o74MgcR4ZDUnqig8GKz3khLLaiZIWS/x74w==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bkntum1ut-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 10:47:33 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-81c765b9b03so3253934b3a.1
        for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 02:47:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768214853; x=1768819653; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=l5/tcavTg8NZPfk1dSm59H2bLp6tv/6ANh0YzDNiBYo=;
        b=chnEBn7DgOMAYB+eLOlk5SUzYPl00d24Qi9/np/IC+6TQ4IMD57ezkFMxlyMKpeU8n
         2PtmxuleaQKCkaCSET3MyDm56HjB+41a827AKpcqR38KGQoj9SENZnotLsiXxRUlpNjB
         yNrhhu9UZlKhfSI6yOaNIOxyo4mvXmRGyUiyOjwcdhugnaZh7UjN/ngVnFdX4Th8KYL/
         7dd0EHtANFe2KCIfiAOfFb7sH8qU1CIJ22CTNyyt9vfF22l/4WJw0bRTOO7S96An76ci
         SSZ4HonFybq8Ncu0jGNsUsZTy3T07OunP6IXK6M27ZpOPEM/IXwumwA7SrD65obPIx9F
         A4Zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768214853; x=1768819653;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=l5/tcavTg8NZPfk1dSm59H2bLp6tv/6ANh0YzDNiBYo=;
        b=cvjTB88vejIQRwGLc7YdxpXNTL6hiVrRXqlrKNnHqvmTXU72gmxif2xXm+hr7zc0Nb
         3bhxFSc052h/wRPG5tT2CJ29WXqMOKSSaXLcwTgC8/lNSqjFaF2TRLJIoIh5d0aC4/NN
         C5SluzjnSu5W/flKMz4BLKDK/03mrqIsH7v7px97AJGmF4mt+5Y7jcb6MNPjDylBs5HD
         CJoiRnhx3juIy8A1EeX+W7lPk59gcJNSSq2aPtxpGJVWCxQQnEYcULzPrvE9Bv++19/5
         g2+58LEKed2ljyGWGvG183q0QjyMW+YIwqK0+yYm1PFYPgVpDEghtfAqHxqAVzWsOWmQ
         hB+g==
X-Forwarded-Encrypted: i=1; AJvYcCXKEOlScaQyxMC9sahK7YAsfZ8u0jWTae0tqoa11PLGjTrBFzZJX+3TzSjTemxYp5DbefzsBAVd2rAH@vger.kernel.org
X-Gm-Message-State: AOJu0YyRz9DJfBHRD7/edcrczN9jE4mwaPVqFbhPiM1Tncdy9Jh41dop
	hVZOggG9dK2jLu7pE7X6wuz9FnXfEgeF80JLQ1wBq0yIB+Bg/WHUwWA1QSBpkmbJJsQ8iRUOF6I
	EI8Nd49Ut3AzESykhYM2Or8urlzgHByDr7eRKBVf3UCtb5TSpguy+KgI0UiUFRLC8
X-Gm-Gg: AY/fxX5cgyuOCriutNCPa0wq9xr37YJhP47AqlFfcUTrzK1oQzRvW8etpbMQhhfaG+N
	MOyoC9VTY7nWsRNimLe+fzoWwTvwrjtvHabzYNEWB6a9vySpUTWtqe3sXpNa2abA809Zv7v1kmH
	hVCMjoo5EorHtVQzmjSiypk42mgKhPbeTeCNLsGM2qL9Fwd0pbRgDluVMDJm6g3s2inLLjOOr1a
	PUe/1C/WkoX+M1fJmRWEm6eOdLs3dcXA/rvtxrTFQFGpUO9lUWKsmmR3iKYLmAVyU6IIhMByXWj
	eHkNl3MeIuraEQ0Ljs2ouqktxfcigU6DXx9Rd/QC33KhxOtVh5WwZ9HO45PSz9kTkPRZkK2IFfc
	mzQOdfoPVMVdCMqOI8dSUHPkEwg+dMZJ+TfiePtFSZnc=
X-Received: by 2002:a05:6a00:35ce:b0:7a2:7058:ab89 with SMTP id d2e1a72fcca58-81b76274120mr14513541b3a.7.1768214853211;
        Mon, 12 Jan 2026 02:47:33 -0800 (PST)
X-Google-Smtp-Source: AGHT+IETF5aXl3RQtF0n8/7zHavXoICmgD+WwxgXy++DsCZObiNhE6vwnBQGHd5xAD3v31dkc6F/yQ==
X-Received: by 2002:a05:6a00:35ce:b0:7a2:7058:ab89 with SMTP id d2e1a72fcca58-81b76274120mr14513514b3a.7.1768214852582;
        Mon, 12 Jan 2026 02:47:32 -0800 (PST)
Received: from hu-ptalari-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-819bafe9b8dsm17288681b3a.22.2026.01.12.02.47.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Jan 2026 02:47:31 -0800 (PST)
From: Praveen Talari <praveen.talari@oss.qualcomm.com>
To: Andi Shyti <andi.shyti@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Mukesh Kumar Savaliya <mukesh.savaliya@oss.qualcomm.com>,
        Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Praveen Talari <praveen.talari@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-i2c@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        bryan.odonoghue@linaro.org, dmitry.baryshkov@oss.qualcomm.com,
        bjorn.andersson@oss.qualcomm.com
Cc: prasad.sodagudi@oss.qualcomm.com, quic_vtanuku@quicinc.com,
        aniket.randive@oss.qualcomm.com, chandana.chiluveru@oss.qualcomm.com
Subject: [PATCH v3 00/12] Enable I2C on SA8255p Qualcomm platforms
Date: Mon, 12 Jan 2026 16:17:10 +0530
Message-Id: <20260112104722.591521-1-praveen.talari@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTEyMDA4NSBTYWx0ZWRfX8rpoU1XI5Sx1
 Wy284+/JBSiFH0zgqR+jovCfGZ9C+cSF0yqyJ59n6i7EMXT+HFwhvTjXNSVNfEbJFixLnl9LjHA
 Qt35FMSiCYm/lkVfs5pSbZ9mQJtT1ZGD/uyj5VzBcVrwv99PO/cY7e0BH+nyzvV2U6ELwZNcCvV
 q/dHFTEgWPrOfn/M4e4xnlEde2sXcQfkU/RYS2SFIBTAoQN4L7Ek7FZVU1X09C/UJZ0ox9PjuO+
 cCzzu5CRPOaWiogdv4uLmKGNn3E7b0tHmkdBkP9aT/zQGb20EJVCh9CVIVvQj6UalDG8x7mLpM0
 VHVtiRkfx8PlmVTkQ6W3pXx4OXfu+aDsnDJ9TP9AXVcrwdVI7W3IhoN+Q/+S2udFdqo53Xoahke
 PxArMDUqY27GRBcRfg0xLUKAXD03hMg4VJDfLOGSeiQ7K2W/eB4ljpZIdcDWjPxAR78qFmBuLDR
 r4PewAj/NVfUltlNRGA==
X-Authority-Analysis: v=2.4 cv=R6AO2NRX c=1 sm=1 tr=0 ts=6964d145 cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=8413JC8MLbS8ckBEwAwA:9 a=2VI0MkxyNR6bbpdq8BZq:22
X-Proofpoint-ORIG-GUID: Yn9GyutJROz1MJSfjbgZMW4o8RJMu1Q0
X-Proofpoint-GUID: Yn9GyutJROz1MJSfjbgZMW4o8RJMu1Q0
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-12_03,2026-01-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 bulkscore=0 spamscore=0 clxscore=1015 priorityscore=1501
 adultscore=0 phishscore=0 suspectscore=0 lowpriorityscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601120085

The Qualcomm automotive SA8255p SoC relies on firmware to configure
platform resources, including clocks, interconnects and TLMM.
The driver requests resources operations over SCMI using power
and performance protocols.

The SCMI power protocol enables or disables resources like clocks,
interconnect paths, and TLMM (GPIOs) using runtime PM framework APIs,
such as resume/suspend, to control power states(on/off).

The SCMI performance protocol manages I2C frequency, with each
frequency rate represented by a performance level. The driver uses
geni_se_set_perf_opp() API to request the desired frequency rate..

As part of geni_se_set_perf_opp(), the OPP for the requested frequency
is obtained using dev_pm_opp_find_freq_floor() and the performance
level is set using dev_pm_opp_set_opp().

Praveen Talari (12):
  soc: qcom: geni-se: Refactor geni_icc_get() and make qup-memory ICC
    path optional
  soc: qcom: geni-se: Add geni_icc_set_bw_ab() function
  soc: qcom: geni-se: Introduce helper API for resource initialization
  soc: qcom: geni-se: Add resources activation/deactivation helpers
  soc: qcom: geni-se: Introduce helper API for attaching power domains
  soc: qcom: geni-se: Introduce helper APIs for performance control
  dt-bindings: i2c: Describe SA8255p
  i2c: qcom-geni: Isolate serial engine setup
  i2c: qcom-geni: Move resource initialization to separate function
  i2c: qcom-geni: Use resources helper APIs in runtime PM functions
  i2c: qcom-geni: Store of_device_id data in driver private struct
  i2c: qcom-geni: Enable I2C on SA8255p Qualcomm platforms

 .../bindings/i2c/qcom,sa8255p-geni-i2c.yaml   |  64 ++++
 drivers/i2c/busses/i2c-qcom-geni.c            | 300 +++++++++---------
 drivers/soc/qcom/qcom-geni-se.c               | 263 ++++++++++++++-
 include/linux/soc/qcom/geni-se.h              |  19 ++
 4 files changed, 475 insertions(+), 171 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/i2c/qcom,sa8255p-geni-i2c.yaml


base-commit: f417b7ffcbef7d76b0d8860518f50dae0e7e5eda
-- 
2.34.1


