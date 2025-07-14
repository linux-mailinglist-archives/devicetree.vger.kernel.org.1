Return-Path: <devicetree+bounces-195887-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A37AFB03735
	for <lists+devicetree@lfdr.de>; Mon, 14 Jul 2025 08:33:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 1E4D87A1892
	for <lists+devicetree@lfdr.de>; Mon, 14 Jul 2025 06:32:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DA2202367CF;
	Mon, 14 Jul 2025 06:32:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="BzaPNvSO"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C8522367AC
	for <devicetree@vger.kernel.org>; Mon, 14 Jul 2025 06:32:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752474731; cv=none; b=bAqFqrTjwRJTczZ4mTGAwH5FxrvZTfsKCmDJP4pjOuPp5AFd3ENJoZzL6bmavKNZCpoAYhXLjOyazz/7M19HMCwGhwUyLeRvSm2gADwG5BhQzDYUUseCFhcrY2Fo2OVKAF5Z+N4+3ZqlCXqbrhxBPhtU3nl7gGK2KCHv0pCL7nk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752474731; c=relaxed/simple;
	bh=f30cw/8H4EXiyHfPv/hWpyXvXZsxpbdm/rrj/jZvh1Q=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=e2fo+sfButbSWwpj3VgGnx5rrPlMCHaJr6kINQetUPDXw3uHMLhrj8LoSiKzMLCCi9QuFnI5ft45ALyGfzCCoLnltCh9LbNZ71Xhshrns7HJfGUtnitOQP57UFKG41G0OakpZ4iOFzvOg63xNeZZkiXx232yiceT9xaIQFst9U4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=BzaPNvSO; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56E0FSwk019198
	for <devicetree@vger.kernel.org>; Mon, 14 Jul 2025 06:32:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=k+EDEHFqKkj
	GqN2StGIjjiSlDJT77CrFI7R+bA+Neo0=; b=BzaPNvSOtqARt6VACorz/zvfbzA
	b0qI6FZV7SLT4wlmUKQ0twErYA6NiylGBckaVy2+2sDPTsiWFHll5YtoQ6wNp5uY
	LxngP/iTZaMCH1U2jQC+eX7eD9WwPc7FT8NI6ZZvVtReQSbaPLhdlspmtR0NLf/K
	ahtgfWcJS+K1FxW6JccDFKGwT2p5YKbyU3lYFCCKS1AjBz19IEiFuVYK6YrPlzAx
	rG4r4WNsMzer2602CUK/uaSNLWRdd4/T9CZ/rp/8/z7PMwmFzMPSKSJnkx4aKg5N
	ei9DcjajcjQczBjw1KUfNbDvgYRm5ssMi0sBiXv9OHiN4T/hRmAaq+6mGHw==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47ufvbbfbn-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 14 Jul 2025 06:32:09 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2349498f00eso43997285ad.0
        for <devicetree@vger.kernel.org>; Sun, 13 Jul 2025 23:32:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752474728; x=1753079528;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=k+EDEHFqKkjGqN2StGIjjiSlDJT77CrFI7R+bA+Neo0=;
        b=wed5F1MzGLEwgO3313qWCxW3Dvfgtlz2NJgEpkB2bhGEZWmHb9ti4ARbCjMCykcGBW
         Dk9/bwvkVKbZCO3C6E9x5EY9JKoGnE4ayOnHb+HrCJEfczGo0lJ8w1970reMTeiz8FN0
         +V3ieCtTQZqtr3if10vCazhAVdgl4G8wneSBAorCLY97lv4A9Cdkq+utjbRbbqj05hYW
         dHM6C8G62lDAh8Y5dotyDEn7tqOKQYtp0Yj+i7EWiNUxGvL6sDB9vEqOLTF4KWTDAnQA
         oJHci5mms2Z957EMoeIkctZxvgmJcBwZpaD3V7mLEh/mguSw1hfcfvR61Njxkq4chdrJ
         /LGA==
X-Forwarded-Encrypted: i=1; AJvYcCU/HJR8GwHbG2tOE+XVb67oidOqHc5ZtG1R7SYWNF4EdJCJEHa/bYxSZPM99bgxq074pwhqBRSGaLO3@vger.kernel.org
X-Gm-Message-State: AOJu0YxcdVczwM7oV4LeY5f2hkCY48e11/G+fB5jzchIrvW9bUL8t1f0
	JQe1Kk03IsYJJJE2aKWv9AeybDp0yfkOHdhm+sICMchkVb+/78kEnQpvexC3WqjuWocG9t6t0AD
	GM2+SAp7o0ypk2s55t4H+wfimoe435/jQEEfl+25nTtqpVrwIOJAzVmG+4aYWhwL4
X-Gm-Gg: ASbGncuNBTP+O1mUatx6FGrV15u+CYPNzcFTFkQHkDlXDsuyfZayAqQRdubVNiCRFIL
	OoOl2//sXk+1L68Dla5towo37z3qPX1N5eExtaMsTtWb9Ua4TW4FMKNi8I1gAg4WDsFVsrplHw2
	bOdOsFbRuK+v5mK0houE9g5xMMTh9J8ogfV9mnFD192KNVfkHAne2satc9rwVWrRONYL1yYGyxw
	t+WSOAUJF23sEUcD7upZ0m6V6NK5KlhUeG9hpGix/MIxvpwSSseSSPWKFd5lxUgPT+wPXbsHEVk
	St/ihzjhsPVox7Ruxvo+8pKxiUEuTXkpr9ArPosVnIbSE33lX5/AMkvJBe4vLExiQaYQIEB3ofo
	jz9cAKOR91aOJIJnjySX4
X-Received: by 2002:a17:902:d512:b0:236:10b1:50cb with SMTP id d9443c01a7336-23dede6f4e3mr166291985ad.26.1752474727915;
        Sun, 13 Jul 2025 23:32:07 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHZiMGZ2Um8rFarD1TkyOaULeiLVr8nn7BvvzuTr6cAcM5dJp7mM9PTOufZBS7vQqZLdLPSoA==
X-Received: by 2002:a17:902:d512:b0:236:10b1:50cb with SMTP id d9443c01a7336-23dede6f4e3mr166291695ad.26.1752474727509;
        Sun, 13 Jul 2025 23:32:07 -0700 (PDT)
Received: from jiegan.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-23de4334005sm86138255ad.158.2025.07.13.23.32.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 13 Jul 2025 23:32:06 -0700 (PDT)
From: Jie Gan <jie.gan@oss.qualcomm.com>
To: Suzuki K Poulose <suzuki.poulose@arm.com>,
        Mike Leach <mike.leach@linaro.org>,
        James Clark <james.clark@linaro.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Alexander Shishkin <alexander.shishkin@linux.intel.com>,
        Tingwei Zhang <quic_tingweiz@quicinc.com>,
        Yuanfang Zhang <quic_yuanfang@quicinc.com>,
        Mao Jinlong <quic_jinlmao@quicinc.com>,
        Jie Gan <quic_jiegan@quicinc.com>
Cc: coresight@lists.linaro.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: [PATCH v3 RESEND 10/10] arm64: dts: qcom: sa8775p: Add interrupts to CTCU device
Date: Mon, 14 Jul 2025 14:31:09 +0800
Message-Id: <20250714063109.591-11-jie.gan@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250714063109.591-1-jie.gan@oss.qualcomm.com>
References: <20250714063109.591-1-jie.gan@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzE0MDAzNyBTYWx0ZWRfX5VlEtEO1Sc2F
 l+3lK8zmYjrUhcgZ/IqMJvG9N7Rx3eLFuM21TTgbQkmrDu608DOV9HkizI4u0KdIloqyHtCjMVa
 6cQEilKuS2tiEdYoAA5J0b/f6PylIsivK+sp94DLPSefw7qq+KL+NxT2NPpu8dByFl+XMjamV0C
 jF/9f1/s6Cqimpe2p6J80TsVBbZJBApR/BQYn5rF35cAikyKudzSneEmQTDqkNB8UlI7usvkJ+1
 8Iz2GvpmNIxvxe+c2dGpohYTWdxyopH04kN5kHwkdGV1esYO4AzgfXAsl+cQuCcQUFXO1Tu3H+E
 TaIBsCHR2n78ZJnoCMb43QqJVf5i0I2hYb/5sHuuoa3FBp4UqazB4YAfIWXBILQQdoIvUM1Ju6J
 sCsnKwTSSAPkX2DTboO4oUCSlYsXXO015EmuU9iQotSZqbmZe5p5+C3xUQZ89CaRUrE9wImc
X-Proofpoint-GUID: b05rZBos6MOJ8In2OhEC1T1udu02Xlm5
X-Authority-Analysis: v=2.4 cv=RPSzH5i+ c=1 sm=1 tr=0 ts=6874a469 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=gBkj9RZkAcI1HbXH1KoA:9
 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-ORIG-GUID: b05rZBos6MOJ8In2OhEC1T1udu02Xlm5
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-14_01,2025-07-09_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxscore=0 bulkscore=0 priorityscore=1501 mlxlogscore=801 spamscore=0
 clxscore=1015 suspectscore=0 phishscore=0 adultscore=0 lowpriorityscore=0
 malwarescore=0 impostorscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507140037

Add interrupts to enable byte-cntr function for TMC ETR devices.

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Jie Gan <jie.gan@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/sa8775p.dtsi | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sa8775p.dtsi b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
index fed34717460f..44da72cebcf4 100644
--- a/arch/arm64/boot/dts/qcom/sa8775p.dtsi
+++ b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
@@ -2762,6 +2762,11 @@ ctcu@4001000 {
 			clocks = <&aoss_qmp>;
 			clock-names = "apb";
 
+			interrupts = <GIC_SPI 270 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 262 IRQ_TYPE_EDGE_RISING>;
+			interrupt-names = "etr0",
+					  "etr1";
+
 			in-ports {
 				#address-cells = <1>;
 				#size-cells = <0>;
-- 
2.34.1


