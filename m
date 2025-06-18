Return-Path: <devicetree+bounces-187274-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C7E2ADF507
	for <lists+devicetree@lfdr.de>; Wed, 18 Jun 2025 19:55:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6827E188BA06
	for <lists+devicetree@lfdr.de>; Wed, 18 Jun 2025 17:54:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4C00F2FBFEC;
	Wed, 18 Jun 2025 17:50:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="enFxBmNT"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47EF22F9494
	for <devicetree@vger.kernel.org>; Wed, 18 Jun 2025 17:49:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750269000; cv=none; b=bV3aR/44LJIzeRLmS/IFeeidIuKJopP9gGQjzCLWvlEzygAVCsgSd/dTUM/Pch6LZblUeQZu8XTcw9HLszdSPIE9hhckKG0JYLTT/ybAGSvu9Kh6lg8neRe+UUYRnl2b4zVViTGJShNfU7XzT6HnWMLaQ+6lT8Ri7VhWG+4/ABs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750269000; c=relaxed/simple;
	bh=ryRpSA92USUhOzaygJj4k7Hg/jHuIKu6qNW8qSohB3k=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=pMdZZBxrmnJml0CXbWUbKDop1KKpK0sIJWobV/y/fXpUFB8pQKXJY8Hjye7abOVYrNeekq+wqvEC8vEoEHhry9qnRA6WbWcyBWFtQgHW8qWiGANT8BWxfq588/Zs+s/6zhFo7sTFd7fh3kKbL6XGJU8dv/qRg/9IYfGN09tuqfs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=enFxBmNT; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55IH0IWs013131
	for <devicetree@vger.kernel.org>; Wed, 18 Jun 2025 17:49:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	YGCJlUVvVVMxsfvZ8Q/CT6/JNdsXaa6RZ2Rxs7o1igo=; b=enFxBmNTr43d1cnF
	FxPa7APILelFuA5SvL7V/bM+QpvPmbZBKcMsE5EcXjo+VKW2gQMz76dhFVUqK76W
	lYsjR+aTig5ke8XxqS7zlG7Dfxi5wnNwFXRg55PVoDQyQyV7XqCZvRgrheJvLDeC
	cIeW7O7LEy6P+7WdhV/GeC450Z59KvTaC9HpHXPH5Ig1xQsjOmSrmzkj4wgZGydE
	xTOcR2y58EUoKv4+Kmq4N06yIQ/Z5QakW3V3KB/kun+Bxr5hRyYFkAA2qxRQpgPG
	zdZBqDljft6qxC2yFmC1IMCzLtaTbMGLDcXymLLxlMIe1SEpoX3FA0vkaG7VWXhD
	MNQEnw==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4792ca581m-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 18 Jun 2025 17:49:57 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7c53e316734so226235985a.2
        for <devicetree@vger.kernel.org>; Wed, 18 Jun 2025 10:49:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750268996; x=1750873796;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YGCJlUVvVVMxsfvZ8Q/CT6/JNdsXaa6RZ2Rxs7o1igo=;
        b=gUcfPhINTSxlCI9iW99yNCaNzE1k2ch8lxXk7hDZQrLjxUZJc+CMjfqdjehEqD8pkf
         yoxkRXgaxDDtzhUczLx1ZNCZ5V3GKr2sScRXE3aWI3mE9k5FNrjEBM8zW+3FVejTn9rS
         3H+8DgYEFFBMMJ6JLVj9SQl82LlFF/6ennC9Il13bC5h48fr1mK+49Pn/CH/QhI+XIuh
         9C8oTGhGRlHDOINDUKFrgtJ4pJgEbOPEWWyP2k6m6qIIK8Y2Ln7Cp3xMufg1tA8nuGOY
         KGFnoj1M4U4pl7KbvRgGGamatOsFMgfyqL1AGBwpsUTwnjGBEx0y23wBvrCRNDItfAoR
         uV6g==
X-Forwarded-Encrypted: i=1; AJvYcCU3cKBJqukY4OvcFaanaUcZebDjqpRwfkOGeEk07YwJKPnQvs/eoSq2rljwceebT16o+mrq8QJkZx1I@vger.kernel.org
X-Gm-Message-State: AOJu0YyA06EdyXL3Z/0SfjzhhiWQXpa/H1EeoO3wG+REEm70I0VA9Wzi
	jcWD4vS7+WEA0ixaN8RvpfAzIvBd21s/c+LzGJnklSqmAaxDESjZh2CPujx0cpmgxKUvh90g4/O
	MktATCvmBJo3hSg5O5Ep87uzt6wmGoAwW+tSkZBcBIGKjEDn7v3OjP41qQh78eXKj
X-Gm-Gg: ASbGncsopKdCIJOoiH6728dkbvmfwvXwuG6s0yArDIW9YLqchrH0vCLyAHZmQsnnjlr
	9C7DISQpjts9zPcinrgYvcmIA6IWEYYWT557Mf3Uy5exbaNR6O98SQWD2YhKv+PSzuPogXUkxvU
	iJkeIepCo3XJHY2rm9Njps5W9hG7wFBJ9D742D/HtwWRM0G4rQ4sx9ngcBwfrFTeBMc5Ju7Opo3
	dRIWKWs4ucNPGTJ9p0hVHdaTRTQ9Sz8nmpNmlkGz6lOV/MRH36MtnQSk60zyermxr6j0x4zIR2U
	6rF4BvGM+R6hu5A287p1OoPNkkGJWZ1VhDzbkjO+IsyvDdwmMjK1Vv2TmQ658x3x/IujaGyYA+3
	RA06Q4I2FlsCbuk+W/EFrLCF7qEAB6DwpfOg=
X-Received: by 2002:a05:620a:394c:b0:7d3:914b:abe9 with SMTP id af79cd13be357-7d3c6d022femr2615354885a.57.1750268995878;
        Wed, 18 Jun 2025 10:49:55 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEGFORVK+zXZHWoBcwr7k2oSohqPg71ajlVS1t+7KvhjskeUc6dKYqyciXnJqATBf07B6dV4A==
X-Received: by 2002:a05:620a:394c:b0:7d3:914b:abe9 with SMTP id af79cd13be357-7d3c6d022femr2615351285a.57.1750268995475;
        Wed, 18 Jun 2025 10:49:55 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-32b7b43a98esm2911131fa.65.2025.06.18.10.49.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Jun 2025 10:49:54 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Wed, 18 Jun 2025 20:49:51 +0300
Subject: [PATCH 1/3] arm64: dts: qcom: sar2130p: use TAG_ALWAYS for MDSS's
 mdp0-mem path
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250618-sar2130p-fix-mdss-v1-1-78c2fb9e9fba@oss.qualcomm.com>
References: <20250618-sar2130p-fix-mdss-v1-0-78c2fb9e9fba@oss.qualcomm.com>
In-Reply-To: <20250618-sar2130p-fix-mdss-v1-0-78c2fb9e9fba@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Dmitry Baryshkov <lumag@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1233;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=ryRpSA92USUhOzaygJj4k7Hg/jHuIKu6qNW8qSohB3k=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBoUvxAFlmBsoLtgXsB+qdtY2U3llCg/vGa2HQQs
 Vnnt7uOWcuJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaFL8QAAKCRCLPIo+Aiko
 1RP9B/0dtaYwm02JahyLCXxGRZ13eTgwLoot8FI55q+mlgXYNTDlh1bidMMgJ4UVF7Abu4uApVq
 1y2NNeZUIn1lYZmCoCD6BzL3A8bCpqiqoUY0C5D8ZEedTUeqwV9BNjGkKz3g6EgJwyw4M2Dqf/U
 kL1//qTj8hN7TxpVvo3w0HIXp/evI7yfdSoQytwKwUHq6Cod7qtHGEMfZHGMPmjiRS7htvPCQvS
 FRYeuYm6LEoM6vQGAF5f8Z/48tgeZt9jmSSjlWSpnMruoeXcj27ob/lDc/Y5L7CrYQYsipu4B0h
 6KUbM6guN9EnvXGUKfoOCzJ/9MSJ+0L+nk1CemFjOp3hIO8g
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-GUID: uAj8_-F7NwUxycpVpd71kylaW_CvYm1n
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjE4MDE1MSBTYWx0ZWRfXwg62mjXecH7e
 NvipHhVZEJZkuTGqHxEq/hqlLxtBT06G3awuUEG7wkJesvGe1i+kxUVrTM5nUac86kg5pMUXQa0
 EYHWdHW+i32FbEgJTc6cYHjJGyKXu3PdYO/JH9p0fDYdKNeNWEi9fwEq0xJB7HqLPi2dD78MWxL
 ksw1J/tMN292YQmtVu6Oza6m5Dwjlmss8m+jPoGbrMm4adIX5jlsCnKTfAFhpRWa2MsIiAqfvE/
 xkQrGU8xjGDoLtKHnNgqkXXTGdTfAP32PyISHSR70mpAIZCZ17T4DXqpnv5XAyED/Yyu2jdirYj
 IUHLMabnzIxXjGQC86QQylU3cqpWgctJHb8uBHqTk2S06S6KsbaQob+hSdjPRTPG6KE2hA4F05C
 Z+jekI/LB/ZPalWL9CgQ4rPLkc8JSI1aGLvmlEUDDtECJpec0QuiXUTocD5JYUu9bzLaIYfE
X-Proofpoint-ORIG-GUID: uAj8_-F7NwUxycpVpd71kylaW_CvYm1n
X-Authority-Analysis: v=2.4 cv=etffzppX c=1 sm=1 tr=0 ts=6852fc45 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=6IFa9wvqVegA:10 a=EUspDBNiAAAA:8 a=tt7aItV1iZXsY7X5gRYA:9 a=QEXdDO2ut3YA:10
 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-18_05,2025-06-18_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 impostorscore=0 adultscore=0 spamscore=0 malwarescore=0
 priorityscore=1501 suspectscore=0 phishscore=0 mlxlogscore=977
 lowpriorityscore=0 bulkscore=0 mlxscore=0 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2506180151

Switch the main memory interconnect of the MDSS device to use
QCOM_ICC_TAG_ALWAYS instead of _ACTIVE_ONLY.

Fixes: 541d0b2f4dcd ("arm64: dts: qcom: sar2130p: add display nodes")
Suggested-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/sar2130p.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sar2130p.dtsi b/arch/arm64/boot/dts/qcom/sar2130p.dtsi
index e400ea4cdee8c9f512a8bee4444506fd23d0f0b3..6d7d4f05d502049dd6dc404317412c438b11d081 100644
--- a/arch/arm64/boot/dts/qcom/sar2130p.dtsi
+++ b/arch/arm64/boot/dts/qcom/sar2130p.dtsi
@@ -2036,8 +2036,8 @@ mdss: display-subsystem@ae00000 {
 
 			power-domains = <&dispcc MDSS_GDSC>;
 
-			interconnects = <&mmss_noc MASTER_MDP QCOM_ICC_TAG_ACTIVE_ONLY
-					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ACTIVE_ONLY>,
+			interconnects = <&mmss_noc MASTER_MDP QCOM_ICC_TAG_ALWAYS
+					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
 					<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ACTIVE_ONLY
 					 &config_noc SLAVE_DISPLAY_CFG QCOM_ICC_TAG_ACTIVE_ONLY>;
 			interconnect-names = "mdp0-mem", "cpu-cfg";

-- 
2.39.5


