Return-Path: <devicetree+bounces-250031-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 80050CE5E9A
	for <lists+devicetree@lfdr.de>; Mon, 29 Dec 2025 05:55:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0B36730057CE
	for <lists+devicetree@lfdr.de>; Mon, 29 Dec 2025 04:55:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3244E221F11;
	Mon, 29 Dec 2025 04:55:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="kGJEBnVi";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="TbjV5vvc"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68A6E1D9346
	for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 04:54:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766984101; cv=none; b=kK5slaSA2RPS4shMDSEnzirLF3PpFNbNo+UqAM20FZs9SHqWoqtygk2hBib8QNP98SF3DKGaTJiSxsIi8+tV1eIo/F7caB2gSivHtV1QsjKCGVHZ7/t5D6KZALVpliZLUrXFaF47Rw6DqqY5lf40cEMM6t2EEK60LGXAQKASMVk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766984101; c=relaxed/simple;
	bh=pXH9LKib4OUlP/+LyX+gKt/0FFTPMm6NcrZ3BWhD5Lk=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=FILX5iyEU1NJjk69A4Y5aprzcSKY3gv4Xe4kkaFeIKGqLdGF9E84Fd3CkR2oLx8jbD4cnqJRcxIuadGF4VhCqKV3jYIjC16GZauqjlzMDfgHrN54JE1Kt6IMJ4aT58bLUvbzlcwVdWM6ZPJMPDOE0KwCFihkA+DQJfYViiKQw2U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=kGJEBnVi; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=TbjV5vvc; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BSK3Ae33872578
	for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 04:54:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=Pc3Xjb3HkY3tcpE0qNNLg2AEi35B1sLL7Vj
	Oo3j+PSM=; b=kGJEBnVi2v8+yYvsKF+inVIj54SegXvADWnjtn53PFunpSOhDYM
	ybEG4/HKSobY3a+SDZWwgrPHXnAmjHQkG57r5KladgmMIb5FjLA/ZErbQWYMvG0k
	5zCSC08AeBBAXigNNWS+sC/e+1j4bu4fwyZ5Slju0TwDx+fupSh+HIPultc4Jm8l
	ioJLLUorYd1d+wOU5vLqZwiE25WDOv1jLjDYT59oDz+4JWa+v2yfK6vS+GFVDojU
	staX2VQdTKShZmssQqJltRL6uS8W4YBd+FUGSLfpOsQpZS3Frcj2sI54d3d5NbUd
	CHJNLzOlOPQJwhW6CoPN77fUwZ7OESOv6Kw==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ba7u5kb98-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 04:54:58 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-7b9321b9312so18506118b3a.1
        for <devicetree@vger.kernel.org>; Sun, 28 Dec 2025 20:54:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766984097; x=1767588897; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Pc3Xjb3HkY3tcpE0qNNLg2AEi35B1sLL7VjOo3j+PSM=;
        b=TbjV5vvcmn18zR45VTt81BHLGTreURrsHWKBd88GmFBbldT2VrsRVWbPezpY4GRGUt
         92lru5ITzKJJrEQ+ZTqxwxYao9WyPHj04gMp1Uzngj/u0Ur8SY5f7KOMN0z5Im5zDXxN
         onRnUKR9mE902Ma6QzZNjU8kEApN/U3ADDPSojDDYD5Q5tMf9Orj6Mv6n7xgdTbNdu8d
         bKtEn899Ls2M/Gg61x4cW8iokbENLhiOKMLXVrduEfKW+KwVL+sC2/PW4173pbJfilrs
         UQvorM+WJkGFJEGwRu2HZ/25MW4LiEefPDvjjEsGCJNGrqzKzn8DlEwh65fMvqvvGXBy
         ynkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766984097; x=1767588897;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Pc3Xjb3HkY3tcpE0qNNLg2AEi35B1sLL7VjOo3j+PSM=;
        b=sFxl8cTEqMgsJhfSZmzgvgA/IGvVb4LpYGQO5ux9+HSLlh9BlRSHVAKSK78dXAC26n
         ASDjQ/uf2qCuNsz+s3n7cdG78DyIRxQRWqNkdavcKnG4hvM6XxLjRxrrbvtcAJGGLQ3b
         TNrVF8BpDf28VB7OVVN98gT5sXQ4ncWLrSsJWDwcLLdwl1844YF7Yi8g1hJ6zOTUSp8C
         pbx0CS5sh6G/rJ5SfgVDbr3cugmAJRPdHaCO7R7FU0+fLgl/Y9dMLrKVDdthLb7RTVHi
         QXsyLNzO5Zxx5eZzCZthNNaPr2TOmb6ry4+HQyeZSMtQS83wSv5xjZ9I4uvNMoZExKzh
         nFDQ==
X-Forwarded-Encrypted: i=1; AJvYcCUyAESvY8JtxXn15ivi6PQbD1x8dv9mU6WC4qFZosFoP5zDzAexmqLRfkl0y4AnRDPPiq7kzi4Yn7sT@vger.kernel.org
X-Gm-Message-State: AOJu0YwcQM6JeuRF/X85bHR17C8Y4HvTEuozCLN0nZrnmLw5gR37LX/p
	5m1YZTkdaRV9s8QhRopnnT4HXS8pzDt6jY9xPvIEbn+I3wsg6LmL7kfG/dWYjZrmw/UJrhIVYnO
	GTnVcEfCcgRGUnMtMbeMuEIA15Oc5AlVahFoSCfQow6mCclLcFO8YQ8aKfverR0MI
X-Gm-Gg: AY/fxX4o0g4A+kCKrhXSWFGbw4+TE69ACCQyyo4ozuauW0IuWkDM2YCrEowFTU2vCYV
	f899FuM2dKq2qcAo4MigZ7LE++lV3iCK6nIJbxtIRa5vhh91n410R8eyqnLU1oItq7HkbCoMyx7
	UHsEWSqJycen3rSneOh/Y1+KxiHNOwiUrlMqc/UZRpobN8bbnRMVkxkQmLLZO/ttt0cwFBJNtno
	VO5RiSBZZ9wPxr72zTiDl642Hjmxa+1e3TNlhW9Yht8s11PC3lY3MOIfHwVXFwkuqe6A+QDDQPT
	c4quL7I57lpCx2rTQqQ3lzG4Bga17oWDPFJfbmk6+6LSTmrlWXL66W4DwDclb+oBmlAmzh7NqhW
	zbXGbS9qIs6cR14e1viC5a2G7n8eG6FnMAudttDfT7e0=
X-Received: by 2002:a05:6a00:35cf:b0:7fd:f3e9:5a03 with SMTP id d2e1a72fcca58-7ff66f591a2mr25959113b3a.40.1766984097258;
        Sun, 28 Dec 2025 20:54:57 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFbzpzgzvSWERRBPsopZ65GGKy0FWajZYkrMYqCcLMV5tZv0F9gFFNdAJGJeU8Dh+p7ZjdCPA==
X-Received: by 2002:a05:6a00:35cf:b0:7fd:f3e9:5a03 with SMTP id d2e1a72fcca58-7ff66f591a2mr25959094b3a.40.1766984096701;
        Sun, 28 Dec 2025 20:54:56 -0800 (PST)
Received: from hu-ptalari-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7ff7dfac29bsm27902080b3a.39.2025.12.28.20.54.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 28 Dec 2025 20:54:56 -0800 (PST)
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
        alexey.klimov@linaro.org, krzk@kernel.org, bryan.odonoghue@linaro.org,
        jorge.ramirez@oss.qualcomm.com, dmitry.baryshkov@oss.qualcomm.com
Cc: psodagud@quicinc.com, djaggi@quicinc.com, quic_msavaliy@quicinc.com,
        quic_vtanuku@quicinc.com, quic_arandive@quicinc.com,
        quic_shazhuss@quicinc.com, quic_cchiluve@quicinc.com
Subject: [PATCH v2 00/12] Enable I2C on SA8255p Qualcomm platforms
Date: Mon, 29 Dec 2025 10:24:34 +0530
Message-Id: <20251229045446.3227667-1-praveen.talari@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: gIr27M1x5Haas8Khbs6HRvPj8lRpvRZK
X-Proofpoint-ORIG-GUID: gIr27M1x5Haas8Khbs6HRvPj8lRpvRZK
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjI5MDA0MiBTYWx0ZWRfX1Y+eJuIeg6Cv
 pCFudbPRXbjAbzU9cp1UE/Rhc6/FPS2zQcfEkH65RiKqdxz2tctt1q6GLdtW4x5ABMBilfvqglX
 tDw2NL/tgRHPxjwMNmIeX5LMOsnRGBU8iOGkaEq0kC96zez060NiF5tcRtpq+RSm7PTWO3WNSai
 GMU6nc/LTKWCRzjHlbhE4YkefgiZC9Nepqe2aeMcKqPd+8cW1jd7dlK1isx3opXp5Y268TqEQUH
 +7i3bioxhfN0g+uI1MhKVHi9yX+Dq7i44wsdtzzts6oH3LX23+VYvFY2GVngmptBkJH2zqnJN+C
 qJ4Fc7JE4xWYgQ3pjMhhkh0IvUEQtNF1m69xSt253dd7BMhNgn3xhbONJ3GRDbd4gist4cKHB/G
 bzgYpDAkOXoDp7Qo3xNJ0vOjNf5aX6ixHectx/F/pV3n+tJyrmCcIlzNaKy+JBi+p7B4I5lEfEe
 gIbLlXRRTgkDSjti7aQ==
X-Authority-Analysis: v=2.4 cv=DptbOW/+ c=1 sm=1 tr=0 ts=695209a2 cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=8413JC8MLbS8ckBEwAwA:9 a=IoOABgeZipijB_acs4fv:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-29_01,2025-12-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 adultscore=0 clxscore=1015 spamscore=0 priorityscore=1501
 suspectscore=0 bulkscore=0 impostorscore=0 lowpriorityscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512290042

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
 drivers/soc/qcom/qcom-geni-se.c               | 261 ++++++++++++++-
 include/linux/soc/qcom/geni-se.h              |  19 ++
 4 files changed, 473 insertions(+), 171 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/i2c/qcom,sa8255p-geni-i2c.yaml


base-commit: cc3aa43b44bdb43dfbac0fcb51c56594a11338a8
-- 
2.34.1


