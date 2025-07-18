Return-Path: <devicetree+bounces-197755-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 49F69B0A83E
	for <lists+devicetree@lfdr.de>; Fri, 18 Jul 2025 18:14:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B2CE11885296
	for <lists+devicetree@lfdr.de>; Fri, 18 Jul 2025 16:14:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AFB5C2E62A0;
	Fri, 18 Jul 2025 16:14:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="pBFccEd4"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DBD52E62A2
	for <devicetree@vger.kernel.org>; Fri, 18 Jul 2025 16:13:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752855240; cv=none; b=pIA9oGfqp9HtEOLW063Rs7dd5P+5WwBN63uPXn8gB6jKQLJxX2v0M80UhUF98PMy0+cVrT8f22YIjLLXtO15bNBK17G1jgHpnZHlPNkEmONbqqIqDvC/626Fy9AFnb9KjP3SSDgoDE/gVysqo9qXF9Uf/t/UMI77+ARIij11Oa4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752855240; c=relaxed/simple;
	bh=GS8W5OKhX5k/3MQCghSpRV/kbVATVCRf5/YkEeA5moE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=LmFSouhqz5mCY3Mhq6kG4UFKSX7byEYoutdxNp4u1qSPq/2WTd+G6Ae2iLf/UEdbADpUT0ZbixRK7YXD8Oye8vwAs1WaeRmAU9Bib28LPpX8MPLPCmQPIrI2Wb1gBZ4VJh+1MPesIcktmaqDxDGlVVTW454ENHR4JIonNLpWHsA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=pBFccEd4; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56I9vVpW015968
	for <devicetree@vger.kernel.org>; Fri, 18 Jul 2025 16:13:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	/MegsDezoJ79tZFpGw1Q8AeYWxrjPn3HT2ydHvhFydU=; b=pBFccEd4Wx/lh3Bx
	0baDdpJrAVlSPbsVtEeTH7+PXy100+0rEt/+u1MKhY33ccl0/7NSMXBoGblR/ZPw
	S35ODjNp1M+nxORrVKJxGpY3U+LqsQtU7TPH1ICKHFPwHTszqrgU6QPX9J4COuXR
	7KVPc3CH98nvAWGAvY6lwzsGZ8gicCBIBNLLO3w0sERs/c3MEWkb7zqHIv3bosvE
	eD8qRavQ9U8Oeh5xuL3rCz0Q+95zR6o6faiMuXUR4lppSAoXZlqvdk0tgKkfBV5F
	o4rc6JSQcCOOzE9Hrq2zk33sG5KA7AsMSyQswbuLk3D4QPLtmdFUyU4XgDX/+oEj
	QX7vYQ==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47y3tc43tq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 18 Jul 2025 16:13:58 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7e269587d8eso389207685a.3
        for <devicetree@vger.kernel.org>; Fri, 18 Jul 2025 09:13:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752855237; x=1753460037;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/MegsDezoJ79tZFpGw1Q8AeYWxrjPn3HT2ydHvhFydU=;
        b=w/efM8Bgh18FWUNWwyae2y/B/gAmrqApDsZdpxInHsMt54V0B5jIHsTJtOVXQft/CU
         M85KpNNsa5JiZ27aixUMjZgg8SklPCBj3UKiZPn3UihsZTHZpR8B7a/w9BwAi9atOW15
         MoaZAJxZ7sQddXZjXAt5rw36FewTw1RlUiCQT4n2cjNgMTgCEztuJyP2aJA+pWO97cOV
         2382tVnI2R0Ja3fuZ1Z4wlPKLU/+KzzYVJBT5MdG+SB95A/NHm56ZvIaKGBJklG6LcfY
         XCRJcWjaX6wYmJJ7IAoOWjmOEdGRg1/XuA7wIrvYhfL+iE7Zw8qrz5AJbUNkqB4EY1Dl
         XlLA==
X-Forwarded-Encrypted: i=1; AJvYcCUo+0Mku16NI8pKpdqwgBMnHDHAc44Prgz1aa7pM4KsVH+L5EYtAr3+UBlwURLO2W/2EyesK3petSR3@vger.kernel.org
X-Gm-Message-State: AOJu0YzYPXZhUkyNUT3jtUC4XhF9GQTOsKJgomrQT+O080rpl+0/eA3K
	fYQw+40oTJq89D4NsbTgrEU4Nu8ODzFmACHhERzjIPApDx/nsPk/nmMfgZ5TPnOg7rtvqye3zVZ
	XjATDdizpePUv3ZuOWUwr9dheS6/wFV141CvSyE/zRbBBYwvPIW0zQjGztgpasHwQ
X-Gm-Gg: ASbGncu+dTJHI6K/vVyc0E50nI6/mropjKwg1P93b+IdZIltnLRRUbwGVs5LbVxm6po
	gIC86FfQzv2/rD5Vfo4DCxlbBnpWHWKp7p0OLg+ScABfUHLOUk91vYg7ccMpnDxQcFwOTvY+XLY
	AsZ+wlkW1fgtAqr9qLUl2Q3TeH9agRtRjvHcsAJa7pwO3kW74XoBmOns4E1aWJVqq/f2qqtN/T1
	lSHLVkMEzWc4dKDdVwSqkk6c076CXsvhcOzzmN+Ar8TNElCcJLLeCi+bwiT+cHTj/OzGf0nmTWm
	VhUCj7LPkVMoJpWlUqHfy9lkc4wZhMwa3izjxXDuvATklFesiwbeemGzLWprkhXjmxNWFxcqKhr
	Ri6N0zf6SbBX1naaUh30KhTdpTHBZt4W8O5RJbBhx2Oomb3/6bSav
X-Received: by 2002:a05:620a:1357:b0:7e3:3e32:e620 with SMTP id af79cd13be357-7e34d9ab6c0mr981683085a.36.1752855236562;
        Fri, 18 Jul 2025 09:13:56 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEETTxoYHaMo2UupceBlHL0TBQW5LinpfSukvtJjEUlWPT/+Pekf+q78KOdNgHFAAMem1ZIkA==
X-Received: by 2002:a05:620a:1357:b0:7e3:3e32:e620 with SMTP id af79cd13be357-7e34d9ab6c0mr981675285a.36.1752855235755;
        Fri, 18 Jul 2025 09:13:55 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-330a91c1ab7sm2388131fa.50.2025.07.18.09.13.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Jul 2025 09:13:53 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Fri, 18 Jul 2025 19:13:44 +0300
Subject: [PATCH 6/8] ARM: dts: qcom: dts: switch to RPMPD_* indices
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250718-rework-rpmhpd-rpmpd-v1-6-eedca108e540@oss.qualcomm.com>
References: <20250718-rework-rpmhpd-rpmpd-v1-0-eedca108e540@oss.qualcomm.com>
In-Reply-To: <20250718-rework-rpmhpd-rpmpd-v1-0-eedca108e540@oss.qualcomm.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Ulf Hansson <ulf.hansson@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1218;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=GS8W5OKhX5k/3MQCghSpRV/kbVATVCRf5/YkEeA5moE=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBoenK3f9gT0zERUZec9/hsBUQ1qPK6ZuGLIOve3
 S3naw0SXUeJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaHpytwAKCRCLPIo+Aiko
 1djfB/sFx/Qa/dlaCqhOszPGddW0LxXnXaDbnVtsqUwKL5xI0ckxf/GOxTrGWqrY6/FILTdFH5h
 oTXojXp6+aH0hpFTkkuE8VbllnDMSMfyL1nd5e+JfiPCrVdyDhmCh4C0CtkJlY+Hhj9algdfCIw
 VeuKF8rlqI4NqBXqaVrxfshNf9ZJQNNjMnS65dw+gk43Hi5gyHSvW84+Fq+IO9glI5JGyGxuv+o
 aj/WTob6RDLb7elEQY3tjCnqRaRjPbbjMI+JsAc8SPC2whki3e0chNnC7+ylne/j7Wg28LsE5gY
 zCWfNlRACRkqr/apeWH7J0kXYp14+E7m5d0DguYjMEq/myqE
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Authority-Analysis: v=2.4 cv=Z5PsHGRA c=1 sm=1 tr=0 ts=687a72c6 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=AJhAjMZ01lUAXvDxW_0A:9 a=QEXdDO2ut3YA:10
 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-ORIG-GUID: rrM4_5-9271yHlki_eE_Oaw5q8xyjRD8
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzE4MDEyNSBTYWx0ZWRfXxxk+/En9Rgce
 HaIqE+5DPVYMJ3xNjqevNgQ5DZEw3gaWvNr+NYsYXhl9hMxRyFNgm5E88Do8sslSc5gRVXjoTpu
 VQ+/KFxGA0RFlhWnl8W9CDTO9ZWsiihUNKAkk0QSB/a/vxgJtx3KACRocNtIbDHi1kzx3AI7Zwz
 I5BSbA0y2+lLh2+5XXHyvNwKAUza7eh7xyqnGkHeCk/mlaeOlEJQpD+MitK0mHEqKKR8vaQ5nDe
 coI0K2nJzvu7eUJNCD0r68H86UQUasjTAniqSSjl8FwCCTY9cCL6x5KFNqEaiUo/qFQeZWWOBEv
 rC3lDUchMCgLhcTFxDfit2Fzx7cbHxOpKpkccQwJqI03N+AETSNpHEUAYb+cnrnk9W+8hqioVHJ
 VyHk1nH9K2grsOZKzsgkAWWCAdXhJGx+Mxl2jBLy52/7osfw6wxeqIB4hFV9e4HyLlK0J2EK
X-Proofpoint-GUID: rrM4_5-9271yHlki_eE_Oaw5q8xyjRD8
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-18_03,2025-07-17_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 mlxlogscore=909 suspectscore=0 spamscore=0 clxscore=1015
 mlxscore=0 malwarescore=0 phishscore=0 lowpriorityscore=0 adultscore=0
 priorityscore=1501 bulkscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507180125

Use generic RPMPD_* defines for power domain instead of using
platform-specific defines.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 arch/arm/boot/dts/qcom/qcom-msm8226.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/qcom/qcom-msm8226.dtsi b/arch/arm/boot/dts/qcom/qcom-msm8226.dtsi
index 51a7a3fb36d88eeb8dbccefbab672aceb1e46428..bcf14a3b13a1b4b3455ef4069df2f3d9c5c7f9ff 100644
--- a/arch/arm/boot/dts/qcom/qcom-msm8226.dtsi
+++ b/arch/arm/boot/dts/qcom/qcom-msm8226.dtsi
@@ -959,7 +959,7 @@ modem: remoteproc@fc880000 {
 			resets = <&gcc GCC_MSS_RESTART>;
 			reset-names = "mss_restart";
 
-			power-domains = <&rpmpd MSM8226_VDDCX>;
+			power-domains = <&rpmpd RPMPD_VDDCX>;
 			power-domain-names = "cx";
 
 			qcom,ext-bhs-reg = <&tcsr_regs_1 0x194>;
@@ -1372,7 +1372,7 @@ adsp: remoteproc@fe200000 {
 					      <&adsp_smp2p_in 3 IRQ_TYPE_EDGE_RISING>;
 			interrupt-names = "wdog", "fatal", "ready", "handover", "stop-ack";
 
-			power-domains = <&rpmpd MSM8226_VDDCX>;
+			power-domains = <&rpmpd RPMPD_VDDCX>;
 			power-domain-names = "cx";
 
 			clocks = <&rpmcc RPM_SMD_XO_CLK_SRC>;

-- 
2.39.5


