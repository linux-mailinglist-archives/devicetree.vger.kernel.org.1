Return-Path: <devicetree+bounces-184287-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 46072AD39B8
	for <lists+devicetree@lfdr.de>; Tue, 10 Jun 2025 15:46:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B07DA189B33C
	for <lists+devicetree@lfdr.de>; Tue, 10 Jun 2025 13:46:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4B44F29A327;
	Tue, 10 Jun 2025 13:45:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="A6JUGWEt"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B99652980D0
	for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 13:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749563135; cv=none; b=NdJCqoHdMpK1ukFAIcT7fxUcEE/r8WK6bByw1IHeP5G1VnlOuCx46J4gldc1mDPi9RtXYQno4mLVx6/eCHUpgOkVU96O+aL7ZTDTK5z9YzOO5HeWCaktNqFfiCkuOwwQNoqHKA2QqMV+41fVVfNf7opKB7jmgo5ERtErYkQAKrM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749563135; c=relaxed/simple;
	bh=lRTdGZr0aQBOohKHQi0z+qkIwN8mJlJ286epa15TUb4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=j0VzRle48iRti+fCl6/zbHREe5xhBy8ha5g5samTiIdPPGRr4ri8leA7cOVAQhPAXe4ow67bCeLU4mfscqq4zK2/9qeTsm2b7fNX3NMGTUIMoZl0qG/cY1CWNh6EGNmHjNeBnAz8XK4PYIOi6eOV3bfoo5AjwiHqQh/LqfOQ7Yw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=A6JUGWEt; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55A7CxH8000710
	for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 13:45:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	7Ip6JzXoXzNg1IMXwmAxpeKkTCk5UZ4yAdalMGWbYLk=; b=A6JUGWEtiHBO2REr
	dZMeM87m3Tg6sAZQc+pD+U9oUwQByjXbE+ZZsD14xgzoo7l+04iY7hbRAaOcQ5lM
	hfWXWylpx6SD7YiO1U2tMZMGA3J7xS1tTWqzmZjoA1om73qtG3aWkliqd5jm+ZvN
	VaNG7PEoxV9VRbG9LcX0vjxHbDFx9H4yJYFxl1YRAWM6D2DuLUQrPJLvbYTPwPNz
	RSCWANNsOJl+KX4B5bxaSiPHvDIsMPw3hiVSe5LYF4Fj2uTi9foIzNAJ8dtr1hS8
	PozrhGBO4e25YaoWGBgHye05MI7sHFH8DL1UKSX8LV/vneepjnY/5+LJzgxNLCkx
	I/25dg==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 475v2tc9tn-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 13:45:32 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-235dd77d11fso46135235ad.0
        for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 06:45:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749563131; x=1750167931;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7Ip6JzXoXzNg1IMXwmAxpeKkTCk5UZ4yAdalMGWbYLk=;
        b=MxABFnMgUpFRfQvqn/p2DWisoqlc0n+9pv+WmDX3nc/eykkSdHOTnaD/PG7QMV2l8q
         b0Fwk8DMkbFVIsaf+i+zngGKvAIAAitUCbfMXOWN5sOTN8lbtKuYisewtLvNTaRlURTu
         nVSJ0mTedwtZie64xAg4Yhg1paYGun2k3LhPBUyjnpRdroRyxtS/Us6319xx19jS86j/
         P7W1GRKwUAjhGlEdUGETtp16+PKdNIDvGnI0Ucbc0N8YwkyVZfLg+/m7Fly7e7mAEft5
         n1wXnO7h8EWnGEYi1tX3AzY/hFD6TU823iWRp3ze0pp65bNjtTHgZI7BgGrnvBjVf4Fd
         kiVQ==
X-Forwarded-Encrypted: i=1; AJvYcCXXUywO39zKsMPZnbvCmW9UBfWgS2CggbGKaB12YIx8r0JR5Z2YTUNxe1uuWdAlPhuejVl487LoH9Dv@vger.kernel.org
X-Gm-Message-State: AOJu0YxqwHlpVdMW0NtRG9y9V7ZnN1IZvOk5rSwFUn1hnYqF5gsQruff
	01dOIA46L6f+LYVRQp737OrZIGKbj4+hOOwXCCU7JicDrTCJhoQkduUcpy/gS7bIv1+ELNAgQ3e
	1FdKABArVSDk7Zkvtn9jElYH0Hg24U6xAvg0vQkhi6q7dOPKEQo9LlFL9SbZUShp1
X-Gm-Gg: ASbGncu3UDipduv8O0KDuT/BY2zCn0X9nlM7ky2l4q9Mmg6/6sxABkBiI/s3nppSYoW
	gODmVtKj0CGUF7JsMq/6Of+D6jL3ee+GBkXLsIYGgAL9ixx1xkzKYTJrL5T5jXY+fPTJOcGkqpJ
	s/WwYX/pBR8K7TXJ5/hwOUdF3CI12kQszXPce9VLnXBAUWqyv+WnGGpe2pfDdWUThzunHqKXVkA
	j2T4aNU1Bx54GHo2DQTEd52X03dVleg6WPiJSsCFSfAEiqs8NbZORXji2f53Vuva+YMhg6zaapy
	Z0Fdd7URZm+nwc4L08TgtIczS+pw4SsfJSI9Iq462jMSIe6ohmJFxMZmetTJ6nnc4BUWuONaC5P
	MA6QGXOOvFh4JW050K7Fz45+bJV9lh6KggStBRP3ZQhY5u2a6/pcLuxCL3g==
X-Received: by 2002:a17:902:e845:b0:234:9670:cc73 with SMTP id d9443c01a7336-23601cf2f3amr258755385ad.5.1749563131302;
        Tue, 10 Jun 2025 06:45:31 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGagDwRHIdZc82bl/Bc4fkh850v1GfJHbnj0t2zwGj/im0wRw69ffh5SSZvgBKPQez5uO4MHw==
X-Received: by 2002:a17:902:e845:b0:234:9670:cc73 with SMTP id d9443c01a7336-23601cf2f3amr258755005ad.5.1749563130925;
        Tue, 10 Jun 2025 06:45:30 -0700 (PDT)
Received: from hu-kathirav-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b2f5ee70085sm5858107a12.25.2025.06.10.06.45.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Jun 2025 06:45:30 -0700 (PDT)
From: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
Date: Tue, 10 Jun 2025 19:15:17 +0530
Subject: [PATCH v5 1/5] dt-bindings: sram: qcom,imem: Document IPQ5424
 compatible
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250610-wdt_reset_reason-v5-1-2d2835160ab5@oss.qualcomm.com>
References: <20250610-wdt_reset_reason-v5-0-2d2835160ab5@oss.qualcomm.com>
In-Reply-To: <20250610-wdt_reset_reason-v5-0-2d2835160ab5@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1749563123; l=966;
 i=kathiravan.thirumoorthy@oss.qualcomm.com; s=20230906;
 h=from:subject:message-id; bh=lRTdGZr0aQBOohKHQi0z+qkIwN8mJlJ286epa15TUb4=;
 b=Cz/fVLAzSNzfmtCcKdndL12pNT67DVD3c8cVSEDgf30NJmKS5BSiBO+pDjtJEYaPdq7mcbcnN
 i+xVgS2gwKBCaVOgoFK0w3ug58sLoHm45tjHFR+CQ7z1KlhsBZ4Yytw
X-Developer-Key: i=kathiravan.thirumoorthy@oss.qualcomm.com; a=ed25519;
 pk=xWsR7pL6ch+vdZ9MoFGEaP61JUaRf0XaZYWztbQsIiM=
X-Proofpoint-GUID: 26wdDeE1oF3v6LMbaSPBtNKqZ7pWX3uY
X-Authority-Analysis: v=2.4 cv=GoxC+l1C c=1 sm=1 tr=0 ts=684836fc cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=7sp3e_VSdAcdU5CosJ0A:9 a=QEXdDO2ut3YA:10 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-ORIG-GUID: 26wdDeE1oF3v6LMbaSPBtNKqZ7pWX3uY
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjEwMDEwOCBTYWx0ZWRfXyNqlxqLolL1i
 spTkw+LC4BNTnhotLJS3xlVHIr4Ayo89qXQlkDAceE+9z1niAv5GpX5A7aIBAnzZgsNCoPuXOgD
 NoZwD1iVDn30A1NTxSy8Ly0K9ABpdOC4nwtCo/VGTkTNVh6xIS6HFG1/7CQGhelCboxa7DsH8q7
 zO/0CjtK5QPUtW5qrAQl3fUkL9b2vV3L/lKMQVeX4eEW+MRuwZxgPkA0jz7gAEk58daKDgJtotq
 05Fnqa0E3dcA1zH2iwbZ48uG3ibgiCmJbFrF3LrKXXiU/x4yBVOSjZ7k77nYVtcZJE3pAPB+OmI
 PLZsO9abL4zlgUt5wt2GXh+peyg9F9ip+t+toV/TvOCAd5H5sfuF3czoN6+Pm+SuGyNqlE4IWVn
 5BPDEkE9Snt/DGTC1G3iiRPKAz27P6FnTZ7elF9w6D9YJ2ILJAjJtLJXDKGqzbTZvh/FB7Ly
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-10_05,2025-06-10_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxlogscore=973 adultscore=0 impostorscore=0 malwarescore=0 mlxscore=0
 suspectscore=0 phishscore=0 priorityscore=1501 bulkscore=0 spamscore=0
 clxscore=1015 lowpriorityscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2506100108

Add compatible for Qualcomm's IPQ5424 IMEM.

Acked-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
---
Changes in v5:
	- No changes
Changes in v4:
	- No changes
Changes in v3:
	- Picked up the A-b tag
---
 Documentation/devicetree/bindings/sram/qcom,imem.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/sram/qcom,imem.yaml b/Documentation/devicetree/bindings/sram/qcom,imem.yaml
index 2711f90d9664b70fcd1e2f7e2dfd3386ed5c1952..dec1b1ee924cf1386f559eb262ea864f2788c165 100644
--- a/Documentation/devicetree/bindings/sram/qcom,imem.yaml
+++ b/Documentation/devicetree/bindings/sram/qcom,imem.yaml
@@ -18,6 +18,7 @@ properties:
     items:
       - enum:
           - qcom,apq8064-imem
+          - qcom,ipq5424-imem
           - qcom,msm8226-imem
           - qcom,msm8974-imem
           - qcom,msm8976-imem

-- 
2.34.1


