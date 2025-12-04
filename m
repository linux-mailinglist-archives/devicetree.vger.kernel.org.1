Return-Path: <devicetree+bounces-244182-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A436CA24BC
	for <lists+devicetree@lfdr.de>; Thu, 04 Dec 2025 05:12:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 5513930065A6
	for <lists+devicetree@lfdr.de>; Thu,  4 Dec 2025 04:12:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 30D3A2F9DB0;
	Thu,  4 Dec 2025 04:12:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="G4uHAAmB";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ZgJdhu/a"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9BAB92E8B83
	for <devicetree@vger.kernel.org>; Thu,  4 Dec 2025 04:12:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764821537; cv=none; b=LEVai8SROl2oxQjPCh65iJu9Wgj6fGvm4dftbLIqWdnDamgu2AUWej/OZcDmzwtjx1z5hL1fVNIZ3EaTOxZxvdAfDlGdnUVZ1zDbyqB8WIUP6BH5M7RXrNfIAQWeTLVl1+BG7WmCMrsbsgiMy+4tolJ4I9Wsko7UkfwrABqtSFM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764821537; c=relaxed/simple;
	bh=0cpz3vXl0wj9Gl+KItGGITcwNYSL/Iv9Dkrw9dzNVD8=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=LPgS8fPBfNb3DpMlU6oUs1aegsPeGrro6YpkMNoEarnKy53JMywBWMZLX0e91aLcocQoEgrslw9qb9Vy4uJuGfbph/4BP2T+c+jGM9HC1s7Y8IWArifBwz0HSNJI0KRx3FZeyLewmnm2Fbg4vFtPWfvNYqikk6I3mpwZUhYxass=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=G4uHAAmB; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ZgJdhu/a; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B40M7Wh1968405
	for <devicetree@vger.kernel.org>; Thu, 4 Dec 2025 04:12:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=VZjWy9N9F+rybadEEEOL/8NRFhM27kXlAYs
	FGx84kis=; b=G4uHAAmBoR2whUWeX2qVwfWk+IPxRo5QWu2v7lQyzTwC8GX1GqJ
	ggiObNmDPSnqOLl/n2ba1yVMRxwlQ9MScVputtP5zkyItnSOL8xpWq+ItuIhrqjU
	GN2KTbUcjNKfoF/oAV4qgv0kyVLoOnEGDWEuUoKf7c52bVauhVBkKeNtY9Gv+XkX
	djbbZk0A2gO7+YuC3mNRM4bYrbvMjphO9A6EsLJM4LRWltk80QTVlIpCA3hHlMxB
	iHv94YAKUIlN0S5Y0F2G4LjKq/SxZCAxI1dMd0m7hUCDJu6Rb2g/3YqA5UdJuce7
	KbrZCh9T2unsjdueUdg4FNtzwXVAj0OfwYg==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4atmbtjr9h-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 04 Dec 2025 04:12:14 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-297dde580c8so15339715ad.1
        for <devicetree@vger.kernel.org>; Wed, 03 Dec 2025 20:12:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764821534; x=1765426334; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=VZjWy9N9F+rybadEEEOL/8NRFhM27kXlAYsFGx84kis=;
        b=ZgJdhu/aQI0ABGsoJyd+lBox7/nC8CUyreawSfviKwVtVDrWFmxanNK5LLhfWuzo5z
         H3IVpa+3YdmadccAOfXhsqnJb7g9c3TNYeiWEyKjCofnZDKR0EgNJTvQwrjkYuLwocAS
         pF56LUS1bgmo5FOKeSfKT6bb0EIereZ8d9h2plEUXPjsf+HzUtWkrb9JZNDeiIpfmJVS
         Fnh+78/N12PGsIEJlpF1BclZ1oJFFX2hts87tkBp9+pldpAsrPtlc52YMbszsncLLedr
         7vnCK9a34RRQs7mrd0bjNOTc1WE4OZZbuR4Go2FDUc0jzVnlUBlOdPN3GwbBzsL1k5xi
         6nng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764821534; x=1765426334;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VZjWy9N9F+rybadEEEOL/8NRFhM27kXlAYsFGx84kis=;
        b=cScYARglS8McGe3nb0QVix2v3FVlpEKI+S5o+29yKv/DDd44tvm4XdBPoFgpKvj3Yf
         rmj7VbKkQwgss7lFTqLuLgg0XG5seNxiZKLDwirQQkOdIHDA7Ly2XFoqZA+if/qQmESQ
         QwuPdagJGaonGPgA76zjEE0h81QZUOZHebW8bHO3yesgGW0vo9HV0hXzkDme2n1Lek4+
         Sioq7lVx0iAsiKeeO8m3e6NfDb2n3E826wy0dHNlDUQMvLeAgZ/LNmCnVDoVolplQdkt
         Qp6y3YKOpg4F3BMBXrE+bldXYX6QzGpREJY2VXCJLE2fkt2GBNKH3rIzHxC4Ov50avct
         xDwA==
X-Forwarded-Encrypted: i=1; AJvYcCXfSGk7Akckgl0AMMdv9sqxibbjt5nttfSNNj7viYGFhO1QbC4ibBvQd86v1WAihNA/mY1h8n4sgKNp@vger.kernel.org
X-Gm-Message-State: AOJu0Yxq8+3OeGwtP1w+oKbf/reZRCt+LJmB2QLC9K5s99P4ofsenruS
	iiLZ8p1DdUTRBxBD2H3gt4qADOaI4wpojseVZ+QBklBjtBbNQRpt5AjOJ9AGIb4qcJucCcmHyzb
	AHKR1Grp/QDNhF+fq2p7DFGRNocWEQKUIcrIw9j4sEYKuacFw0jYs0M4kLGqHWZPK
X-Gm-Gg: ASbGnct2e9jK33T8PMntYWvcPico+9Co7Jt+p3MIVnE7ciOGN20c4c+mw8I+wzpgZYf
	8AzZZq5gVJqMCPCAoWffEWAa6NNgkT/w4axOFvamLSKwUZzmCQX9Tj8A22lmRwAsa7wSTEiYQFr
	cgy5dKZoLQpO8pm0sdGb+L5WfcmVShH1f+8MPt828PdS5sf4Hu9DcTiFOaCklxAhQrrua6VAKwE
	d3vzkSORlH3ydEBzjSkTdlsYK0Vk8tP7IqRJudK9seCteu5+U7bBMGt066wWsQE317yWze40rPR
	vSDOwZXp7lm6y9V3oZohEUjulVvGIOOl/calGCgTzMpLcA9rajOI0S+RLqLQ5RUSCo04fzU984q
	MGI1N9Yo1RlTwVXMH9zN7qGt2HcOli3i/rrjOPR8=
X-Received: by 2002:a17:902:e783:b0:299:e031:16d with SMTP id d9443c01a7336-29da1ebb19bmr17930875ad.33.1764821534089;
        Wed, 03 Dec 2025 20:12:14 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHC137dMAN73xnyCri7U2zSn5tVupickDj9G2vXo3zjuPTuudD414ldmzI9/MscykMW1ehgNA==
X-Received: by 2002:a17:902:e783:b0:299:e031:16d with SMTP id d9443c01a7336-29da1ebb19bmr17930585ad.33.1764821533631;
        Wed, 03 Dec 2025 20:12:13 -0800 (PST)
Received: from hu-gkohli-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29daeae6ae0sm4020695ad.93.2025.12.03.20.12.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Dec 2025 20:12:13 -0800 (PST)
From: Gaurav Kohli <gaurav.kohli@oss.qualcomm.com>
To: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Gaurav Kohli <gaurav.kohli@oss.qualcomm.com>
Subject: [PATCH] arm64: dts: qcom: monaco-evk: Enable AMC6821 fan controller
Date: Thu,  4 Dec 2025 09:41:58 +0530
Message-Id: <20251204041158.2613340-1-gaurav.kohli@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=KNBXzVFo c=1 sm=1 tr=0 ts=69310a1e cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=4iCNTN7zYcp67ch2OxkA:9 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-GUID: H7d8rShCuElSLoTja_NDfPLgOp_d7EvE
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjA0MDAzMSBTYWx0ZWRfX1FPqV4eh+Vs+
 0l8GeQrc1AdM08dh3DgRuYJ489jYblsk4Et1aWkxO29v8NTYBNCW6nmO5ZRAO6SXeX/z9EV7r0P
 hwOIjsEhCLLnxSik39pUjL3yieA5cbZqRx1MgKXSoGI/V4aIcCWVNnyZyCgu65FUd0eOCBxibtC
 UZFNXYacdluljrXXh6DD7NaZLgG7R5X3AyfZ4jgDuHfu4nxYbEGvJ3ybU3fwtVH1a5dZbd9mGwV
 i7npGgb9UQM5fssX9dwKo8eUCvY5cI4dE2UrB1EmGCkeWs8tNH0ddl+Zl5F8RET6B7Rj8d2WfGN
 IZMR2zjOhV/kY5Ot3gSiFjcVeullahWspEUFO+DmN+JwogyGc1D536e7vMCdWfuShMqA5q00MIh
 gGKZ33SzhJtozt3Epo0+US5itlCdyw==
X-Proofpoint-ORIG-GUID: H7d8rShCuElSLoTja_NDfPLgOp_d7EvE
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-04_01,2025-12-03_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 spamscore=0 suspectscore=0 adultscore=0 malwarescore=0
 bulkscore=0 phishscore=0 priorityscore=1501 impostorscore=0
 lowpriorityscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2512040031

Enable AMC6821 fan controller for monaco-evk platform and
configure pwm polarity as inverted.

Signed-off-by: Gaurav Kohli <gaurav.kohli@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/monaco-evk.dts | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/monaco-evk.dts b/arch/arm64/boot/dts/qcom/monaco-evk.dts
index bb35893da73d..2f3ff4aa4847 100644
--- a/arch/arm64/boot/dts/qcom/monaco-evk.dts
+++ b/arch/arm64/boot/dts/qcom/monaco-evk.dts
@@ -6,6 +6,7 @@
 /dts-v1/;
 
 #include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/pwm/pwm.h>
 #include <dt-bindings/sound/qcom,q6afe.h>
 #include <dt-bindings/regulator/qcom,rpmh-regulator.h>
 
@@ -323,6 +324,16 @@ &i2c1 {
 
 	status = "okay";
 
+	fan_controller: fan@18 {
+		compatible = "ti,amc6821";
+		reg = <0x18>;
+		#pwm-cells = <2>;
+
+		fan {
+			pwms = <&fan_controller 40000 PWM_POLARITY_INVERTED>;
+		};
+	};
+
 	eeprom0: eeprom@50 {
 		compatible = "atmel,24c256";
 		reg = <0x50>;
-- 
2.34.1


