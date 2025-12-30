Return-Path: <devicetree+bounces-250587-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B437CEA549
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 18:38:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 20755301E586
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 17:38:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4F9DF32B989;
	Tue, 30 Dec 2025 17:38:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="fQkmSJv6";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Q/KqQE/q"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C321D322B9D
	for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 17:38:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767116326; cv=none; b=eLhqbrMTbQQCfSgn++kT/98iEl8oj1ut5Z/l9MLb0FzpSAazQ2aMK7D2jCUOmvKJdtKFmDatHMikijuKUqHY7g09ARZohJ4zJjhQ8YtLWarb0nIV2WH+NQ726SA4Pl38+Srkm8GBlBusSpauFr/s784QR1K5Ax1LPMYUDAU72w4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767116326; c=relaxed/simple;
	bh=YIpy00nv/0bA/OFkDTOVl+G0khchfIb6WcV7JC1LJn8=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=ogtpxwVjBN6mQtKHUsXG47WLQ9MOVSx8DwRjBRvLZb8O4hjFQVVt2C+ClmuhQW/xmNhdAJO0gJ4wXW34VR9pF/jEjlyPrroprTXLPbXmXRBjqlf1B5gXzXW7U7CDQ6R7g/hTYK5mLwGVWC8oo0hkxzK/xMhl3Ri2j0DkAozCHpc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=fQkmSJv6; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Q/KqQE/q; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BU9MK5V2553078
	for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 17:38:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=275llJmfDJIjYnTG1eJ6co
	O/AOZWo8EL2vjIDEhI4Ok=; b=fQkmSJv62ww1gZ55iKTjzXaj82bMXxMILRmorH
	EccuE6MwjjJMbaURrKRzjbN+vBYxUyiSb5bAIYHTFbjDlvorQOu2eJonj9gjOD6K
	OkRGWXaqv3XwNfquNAHfVobi3stAdhdk+lVOXcoGkyHG8ESn5Hu26axeFCr7ojVa
	gELjabUbnn2GktOGNAG4xzEEYRnIeVwMGwCm7AdAsJedzy0miPX2Logq/t8rI92a
	ls27jvu36gsd8RQed472hY2Af5/aLkkgPlfPDTHRfrctfq2d43yAkFj3+WgO7Vql
	y2T73Kc+0Rl6NigLjjtN8D06lur0isMkrxalNk4QFtKnOVpg==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bc0skjhph-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 17:38:43 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-7b4933bc4aeso9868094b3a.2
        for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 09:38:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767116322; x=1767721122; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=275llJmfDJIjYnTG1eJ6coO/AOZWo8EL2vjIDEhI4Ok=;
        b=Q/KqQE/qOLm/RNmbQ62+6r9ihmZk8gSk/XxHojcWxTTGpm9lJZRcmQzduM0z6Fpo2p
         r8kQnDWIu0i79sMU6Xb4Wrf3mFR163wcGt0ZWgqt/mWmWdk8kZbrv79NV63412YrRBGG
         jYM29yedYn13sKVHzKgKYFQo1cDVCWgjsy3tImXiZvHoOW3nbIrgKWn7Q70Zt77xVCJQ
         Xic7JL9kgjMNIiTqeXGJAD2krZ7X2g/57WG1HM3azgygK33KGLP4Twfquup/GjfAyIEr
         EE2XNmXQ9039WbO7JoHfcV+ws/7fRUFJATURKZjGm/glMtWTEMGAJhEbFM2PlA+Zi5Sf
         Egtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767116322; x=1767721122;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=275llJmfDJIjYnTG1eJ6coO/AOZWo8EL2vjIDEhI4Ok=;
        b=athL6ev/hKiJpj/q5V4njrxuiPQdckjX8CNxNMZnrqQb/noyz+BSjutOLgsVTJDRYb
         IGl61aeJEqshcS+ba5i2F0tYxTfRtkFh4AvHZivb86B8VxUgAgQ4L4LRFnQL1SLxBOt5
         TZi2t3f/HD6xmXpX2y9pLNbRu9IM2/rD/XFZBZrZKSokjxWx9K+HVADA7S5mZoZM1Rs2
         7sz/7vV/4GAQU8urhBpvIzkcU9Q8it+PT8yFYpaf11BVPWBTro+SbVmdToHfyrUMRNum
         dgHBAlvKZHyTWdMQFNSHgaXK8P+5qaYPxs5QcS1pWHCj/ptV5V5M65VhGXzFLGQavB6w
         gk0A==
X-Forwarded-Encrypted: i=1; AJvYcCUGQAP/1uIh4uv6AgnJODHd8FjGM/U/ODquQk5dYfc4PgpxygeLOyGzuZjkeP2fduDXu9mdjd+OMV+u@vger.kernel.org
X-Gm-Message-State: AOJu0YxsXzt5y5Qnq9ujkqPTsvQ1RrUIYN2rsAxAr+y2Te/HHLyYITI9
	cBHfOLwnFtyncGXZIu9Hgyi82sf/d3C5YeAArgoCzEPyClg91vK9UInDldosafemvVUF06yJpC/
	Hpcx3rIotLD/yP3d7kdO9V838WliWKn4p3B8cbkm+rFhLA6WNElClse+iFHotaAhsTK4Z87Al
X-Gm-Gg: AY/fxX5SwHz63TCEPWea81UrxHl+gd4isjzT9lyChLEIv59F9fZm0AtRvA0gTQVpWl6
	25lfIcSzwDI6LKKcgC8dXYlhR5VmdSi7Dsd0XsVVZzEkkFceqUY78nt2bhSsKBngWuCk8FW3cGe
	3yV5g3qAuKPDGXMDGt4rE/o9Fc48K2RobCjnmkFr/4RlRHxMcBYGMClykJTelrQF/quRIQvZAPF
	xhndli7wP2x9CPV2To+bhnmjERYnCjYZ0tJzuB5OokQbLE7jI1h/obrDAn6ON2IsiyhTaEfIJvS
	JYw7ruLbuCuS1WwQCCO/GC/JI/pnWRKsgOwbGj26vRQcqeri7q5eCXVQv5Ey5Lw6XRSFFVThdTG
	r1fauUsYu4iJZNyBSv2ZBmzc7W7Uebmdg+Q==
X-Received: by 2002:a05:6a00:e11:b0:7f0:d758:3145 with SMTP id d2e1a72fcca58-7ff64ed1072mr32539817b3a.6.1767116322461;
        Tue, 30 Dec 2025 09:38:42 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHwouQcTZ2Z5Xf9LdDYjHPmfo4aMNq3gnfUtRKHiazJcwkLcbZCTsxy1rWLuSUqo3En3fE2YA==
X-Received: by 2002:a05:6a00:e11:b0:7f0:d758:3145 with SMTP id d2e1a72fcca58-7ff64ed1072mr32539789b3a.6.1767116321997;
        Tue, 30 Dec 2025 09:38:41 -0800 (PST)
Received: from hu-tdas-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7ff7af35f37sm32865208b3a.18.2025.12.30.09.38.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Dec 2025 09:38:41 -0800 (PST)
From: Taniya Das <taniya.das@oss.qualcomm.com>
Subject: [PATCH 0/3] Add missing UFS symbol 0/1 RX/TX clocks
Date: Tue, 30 Dec 2025 23:08:33 +0530
Message-Id: <20251230-ufs_symbol_clk-v1-0-47d46b24c087@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIABkOVGkC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDI1NDI2MD3dK04vjiytyk/Jz45Jxs3WQzM0sDE6MUM9OkVCWgpoKi1LTMCrC
 B0bG1tQCEHYHVYAAAAA==
X-Change-ID: 20251230-ufs_symbol_clk-c669042d65be
To: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Rajendra Nayak <quic_rjendra@quicinc.com>,
        Abel Vesa <abelvesa@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Cc: Ajit Pandey <ajit.pandey@oss.qualcomm.com>,
        Imran Shaik <imran.shaik@oss.qualcomm.com>,
        Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Sibi Sankar <sibi.sankar@oss.qualcomm.com>,
        Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>,
        Taniya Das <taniya.das@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-aa3f6
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjMwMDE1OCBTYWx0ZWRfXwRONH+Bkcc0q
 kNMBsZFU+UdyyUXymz0uHNATcFLpqBgzJK2p0+4a5ac89R4IkAWtAyzDdyvmbFvnNc+vVT0WhWy
 9xiHL44/qirbn+7Wsx6YfMwU+hKkI4n1wwvMRNolqnhnewxiEclXZ8zC6pnNKJ+bwk9V1K/Tx4Q
 nou6lnT1movc9TfDm+5OwRVzalfLn8I1azeG45O8fqGFEV0mnVBrf6HQWQJPO7rCoxE+HTRJ8mu
 sE/m+oICVDwaVXH28ckTghIXbEZqGkTtyt4RVnKHosIjovERqrOf6Q3iJX1eBWrE5c7ngBulyqG
 SmEoHPtrC/sWD64jlQH02kacACodMIfa+2kjenvoxVEjdFH9QkcCxa6Q++e7p3etWNbxMpgBkgW
 cFlrW9vXb5fLRjOPCo46s+vtoGJKeQnI3Er17Ny4bjxXv+HCKEBHlOqkSJ0RGuG27UAIeSakALO
 Eee+XWZjjaRw2O00B0g==
X-Proofpoint-ORIG-GUID: y3MPZuarxVif69YXsDVDoAUbEpnMr4f9
X-Proofpoint-GUID: y3MPZuarxVif69YXsDVDoAUbEpnMr4f9
X-Authority-Analysis: v=2.4 cv=FJ0WBuos c=1 sm=1 tr=0 ts=69540e23 cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=U0TCL1Xn5xtV1L3338gA:9
 a=QEXdDO2ut3YA:10 a=IoOABgeZipijB_acs4fv:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-30_02,2025-12-30_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 clxscore=1015 suspectscore=0 priorityscore=1501 impostorscore=0
 spamscore=0 phishscore=0 malwarescore=0 adultscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512300158

Some of the UFS symbol clock infrastructure has been left undescribed.
Add the required muxes in the global clock controller driver.

The UFS testcases have been verified with these clocks.

Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
---
Taniya Das (3):
      dt-bindings: clock: qcom,x1e80100-gcc: Add missing UFS mux clocks
      clk: qcom: gcc-x1e80100: Add missing UFS symbol mux clocks
      arm64: dts: qcom: hamoa: Extend the gcc input clock list

 .../bindings/clock/qcom,x1e80100-gcc.yaml          |   8 +-
 arch/arm64/boot/dts/qcom/hamoa.dtsi                |   3 +
 drivers/clk/qcom/gcc-x1e80100.c                    | 102 ++++++++++++++++++++-
 include/dt-bindings/clock/qcom,x1e80100-gcc.h      |   3 +
 4 files changed, 112 insertions(+), 4 deletions(-)
---
base-commit: cc3aa43b44bdb43dfbac0fcb51c56594a11338a8
change-id: 20251230-ufs_symbol_clk-c669042d65be

Best regards,
-- 
Taniya Das <taniya.das@oss.qualcomm.com>


