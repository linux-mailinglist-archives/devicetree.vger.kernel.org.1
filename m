Return-Path: <devicetree+bounces-259879-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wNd4Nc+ueGlasAEAu9opvQ
	(envelope-from <devicetree+bounces-259879-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 13:25:51 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 4212A944F5
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 13:25:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id CEE9630579F5
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 12:23:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D19D434D4F7;
	Tue, 27 Jan 2026 12:23:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="BwY53seB";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="c/6dqmko"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D25A534D4E4
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 12:23:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769516590; cv=none; b=M11UZno10uiHHkSbuCobpLAQTRQqIJzokh/KInlOQdSI0mhpr2t9au5JThA2820mM/yljNOn81NdCkDNk/7n2ry+6pNKWWI/C/7QBTGw1SsaW8qAXdIlasTndmkZwPnU9Kgxdo8RCfLbVN9K4x1WbptPjQMwH1a+5pWKxzz/dPw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769516590; c=relaxed/simple;
	bh=Q3m5IbmQGpL6zZUBS49npjIMSzFwU4yGGX1pNZXbyt4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Qaz6qZXOdyw9MHS78Mc1T2fp55JrQQwlkwYjVMn0yaCcXfiOpiL/UmFhKdKJN+PLxxSsdnFEr1vEmv2wTHW88gqET8gbwORV0xPbxSu5wCuFLWM7TwCi8kBjPIc12mwQZf936dZ2XJgiQiKjXVWMiE3f5EiDMMw3LeE4Re+LBKU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=BwY53seB; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=c/6dqmko; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60R7RwhS112659
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 12:23:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	oCwC9tuawsbTszbu909/Vn6wlhybyWDwFG7onmZcUCw=; b=BwY53seB3u94Bcxs
	OBVN+KuqRNxHR0nzalbeK+NmcZLXCmEO1QQPc0oIlZC/w9KRtUFZ5rJETs/5yDmF
	GAGBLjgNUvfkuk3KpF8gcl4JslCf2HxpkrnjCaVH7UjkrcQmNPdzJbAfw0u1tQfm
	516s0yRlTz+z4CJJOvTve0b4qzECQ27C3NPz8T4yMZpkJEFfOOt/kGuBJHhswpO5
	l03pwEeDCuYEX00VJBP22w9uMkbiXbRgGkS+zIEuPf8xmfs9/NjytK3F893kNXSG
	kZd9u6hUwbjtdB9aTrqsveU9rzakA2uX8Y788vSs/sd+2IihLLcEHTag86BX6HMQ
	Eb90cA==
Received: from mail-vs1-f70.google.com (mail-vs1-f70.google.com [209.85.217.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bxs0e11tv-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 12:23:08 +0000 (GMT)
Received: by mail-vs1-f70.google.com with SMTP id ada2fe7eead31-5ecbeae449cso17858119137.1
        for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 04:23:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769516586; x=1770121386; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=oCwC9tuawsbTszbu909/Vn6wlhybyWDwFG7onmZcUCw=;
        b=c/6dqmkojhH6YdDI5jwCBGMKDD8oQqnuSQ6O7+fEylSAS6CJUPtT7KtiS1MXyiSNz7
         kmCh5v43Z+OiuJYtDw46OLvw4HezcRF6Am0JcmQ7e34FVGWZWM/0UjIPuwDW6zWyNmn9
         9Sa/2CBylXCLlwbohE/aS/a+5PJuBL/5LBgQaj2fbfVBgYOPedXd+Ytq4zFmeIMl+b3b
         nHF/N1s+GO/tg/l3QPIFtKtHO+5XGK5RLVeMN9aT78gyyr9zisdSerf4Yi1qsxp+p2G2
         SnERQJD0Vv3PS6Kg9nyNmxpt0oBTIr8F++lYU0ATM1uuSe7Lr/yma2Yf2Kh6JJMoodJg
         mGbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769516586; x=1770121386;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=oCwC9tuawsbTszbu909/Vn6wlhybyWDwFG7onmZcUCw=;
        b=RLW+He9+lYdCXyKzBfCn1ldkMzHkXEtCJs16qo00lqPXzYHyRcosfcNWvdf32UwVDe
         DuHla1f344027LjNkj3lMzDq3SggucgXmxAb2Zx6kbkgHlxmunSvC84u6X2Rr9/1q7p/
         Py7klnN2NhzDeR1pQ8X0mA2kUJUKVzZ7PSUliwCnxNQspSFBoevIJffQ1jmA8YvO4LAd
         ljWmv4gBWNW46F2C1ZuVPw529d1Kjl0cX3g3DJZbcwJNLadfEvXsihn0fNR9yPdf7gS1
         CVJqCuulqcM9UuCsfFQGqsPyP3a1WOSY9zCmJmLOAQTh+z83+n3BM5e6TlacVM7pfonQ
         xFkA==
X-Forwarded-Encrypted: i=1; AJvYcCVo4cyeGMNuu13LA/XegG1jeGnB3jgjap1E6S6VwrLetvv6almysRymMyjUombv9mZ59pLav9j4LBZe@vger.kernel.org
X-Gm-Message-State: AOJu0Yxc6TVzBFx9A8gIwoiUdjDtCLaAr5YghJSNsXwP+6tpg/DSIsXq
	PCpXDT+W7+J2E7tmz6Va/SDGnoL+ylIoYH1SRVSheG0UXtsZ6oX7oLhwCvBxDBt7/lYJeIl5voB
	6Us3Dw2meg+m25GTjLC4GUEaUS1I36lhbOLeraI0SESOGBWLOAvFIFgs4LTbdcgV79kBgWTlx
X-Gm-Gg: AZuq6aIX/tskAfOmkNlbALzxP9f3ny7D4fYq+umljfd6BPF0Mub8HivqW6T2owqQ847
	zaG+gwbwdoPOXRGXS+8SVhuD4MkKQGLb3mCderxR7ZglGHnucPPVY4MbKtfVQtA3JX01fFnSiS1
	eSz0Nf34lHLcsQhI9PnSdBY004OAQwTo0OuU3RWM15G1+draxUTpeIP6uHfT7679S7aehEMRdJU
	cXSguh2546lvMBp58gERQDUXq9rdIwW6WUVKS26d5YwidK0PKo+ggvp9AMIA8NaXkcSnRjuEiT2
	x/p8XP9x5r4TZF9+i+B5v00uYDk9APxVWatpUzNOl7pc6Ri8FZItPnCwGDlA1qGrIZn1u9qQy9g
	WHfF97a8/UitCsPnpe/u9i/aWlF3TpGX/Tz1uemreWPkC+zld8o55mEkF0pWlGt3D6CbhhtX7Bn
	5M9LtNxS5DJlGDx3v09OusN/A=
X-Received: by 2002:a05:6102:3054:b0:5f5:5c89:72ca with SMTP id ada2fe7eead31-5f72390fb1fmr717872137.39.1769516586479;
        Tue, 27 Jan 2026 04:23:06 -0800 (PST)
X-Received: by 2002:a05:6102:3054:b0:5f5:5c89:72ca with SMTP id ada2fe7eead31-5f72390fb1fmr717861137.39.1769516586038;
        Tue, 27 Jan 2026 04:23:06 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59de492cc4asm3375442e87.101.2026.01.27.04.23.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Jan 2026 04:23:04 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Tue, 27 Jan 2026 14:23:00 +0200
Subject: [PATCH v3 1/4] arm64: dts: qcom: sc7280-chrome-common: disable
 Venus
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260127-venus-iris-flip-switch-v3-1-7f37689f4b39@oss.qualcomm.com>
References: <20260127-venus-iris-flip-switch-v3-0-7f37689f4b39@oss.qualcomm.com>
In-Reply-To: <20260127-venus-iris-flip-switch-v3-0-7f37689f4b39@oss.qualcomm.com>
To: Vikash Garodia <vikash.garodia@oss.qualcomm.com>,
        Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Bryan O'Donoghue <bod@kernel.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        cros-qcom-dts-watchers@chromium.org,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Stanimir Varbanov <stanimir.varbanov@linaro.org>
Cc: linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Stephan Gerhold <stephan.gerhold@linaro.org>,
        Douglas Anderson <dianders@chromium.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1344;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=Q3m5IbmQGpL6zZUBS49npjIMSzFwU4yGGX1pNZXbyt4=;
 b=owGbwMvMwMXYbdNlx6SpcZXxtFoSQ2bFOlWx5pqNu9f15y5hlX50XWRJcYAy79NfCWf9lk3bm
 PRuUuenTkZjFgZGLgZZMUUWn4KWqTGbksM+7JhaDzOIlQlkCgMXpwBMRJWf/X/U/uS/31v9jjOw
 3+Ut9iqdWljh4aDq2+LD6Mb3MP2uSvzF8HUebOV6Ub9ml5QrZS8Vlelez6NUpBN0173ARX/OhC7
 76A/CT/idZty/sUwmL/aidytj1IUJV8pi/QTvGIjddO2w3PycsfW95Zct93d5SYp9OPlGyuCNTo
 rSUfeJfoZLq//8MFtgWv3G5MBBiXeqYs6exe4bFgguTFoZe/OPjvDNGd+vO3f41iwrjtiWJHif9
 ev0lYXZOQuVr5t7PLolZcVdu/DbrO7iK+K5zF6Xn0/eHhczW+/O5G/iSS27+p3rt/6rbmrkmxXP
 llZWdNeIRUbhyvLJP13OWiuLLXRoe7D62m/ninlJrXekAA==
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI3MDEwMSBTYWx0ZWRfX3k8nUL22uDRL
 Jnz+qhU1OLO7iPLxHuHVLpBnFPRog5tMzqtcvH5bLtnGwCH0JuZEoaii+DEMSkE9NBdcaOPpYUf
 +f3bDEgilpAmhYoA8tleFMQmaZktEmCg9htbBn3t4lRjscDqthwqr2Fw7gJ+m32gLNC4PQSqvP1
 ldV+6f2JYLddII8qivRl24C7NUgltB9xeqOSoL8zbbLCj7lhgJ045FfQLOUArzb/jU1AY279MjJ
 bQrSF2kkl1sT2aKxlzQ3qBKSAEgHC1eeD/kwJgk7xqEyLm+IXvDbHTzRzL7Z7a1JR/4raMow1p9
 doYzTd15W8o0hNBkGIjxGYeSV3qX7HLCo306p3bY2VaDjAvgi7rt/YWmnDrhIVroqdXuJbFRrCC
 71Ufs3y2p7vRdmaSqrJd5M20XZAdM1qhmxUpO5U8fHiyAIUUHxvbe0yQrvwTLdAT0KydRdO2dGz
 LODn42QDghlIJZoygTw==
X-Proofpoint-ORIG-GUID: 8JcoIKLnDXz5U5eAhnVu9ZE_r1cB_yGK
X-Authority-Analysis: v=2.4 cv=Hvh72kTS c=1 sm=1 tr=0 ts=6978ae2c cx=c_pps
 a=N1BjEkVkxJi3uNfLdpvX3g==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=KKAkSRfTAAAA:8 a=cm27Pg_UAAAA:8 a=EUspDBNiAAAA:8 a=foIlI7qs2i6qjVKSRT4A:9
 a=QEXdDO2ut3YA:10 a=crWF4MFLhNY0qMRaF8an:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: 8JcoIKLnDXz5U5eAhnVu9ZE_r1cB_yGK
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-01-27_02,2026-01-27_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 bulkscore=0 suspectscore=0 phishscore=0 priorityscore=1501
 adultscore=0 lowpriorityscore=0 impostorscore=0 malwarescore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601270101
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[19];
	TAGGED_FROM(0.00)[bounces-259879-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,qualcomm.com:email,qualcomm.com:dkim,chromium.org:email,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 4212A944F5
X-Rspamd-Action: no action

Iris driver doesn't support non-PAS/TZ setup for setting up the Iris
core. It's expected that the ABI that is going to be used in a long-term
would be different from the defined venus-firmware subnode.

Granted that the SC7280 Chromebooks were cancelled before reaching wide
audience and granted the feature ABI changes, drop venus configuration
for SC7280 ChromeOS devices.

Suggested-by: Stephan Gerhold <stephan.gerhold@linaro.org>
Cc: Douglas Anderson <dianders@chromium.org>
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Acked-by: Douglas Anderson <dianders@chromium.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/sc7280-chrome-common.dtsi | 11 -----------
 1 file changed, 11 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sc7280-chrome-common.dtsi b/arch/arm64/boot/dts/qcom/sc7280-chrome-common.dtsi
index 617a39d32488..debf62baec9b 100644
--- a/arch/arm64/boot/dts/qcom/sc7280-chrome-common.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7280-chrome-common.dtsi
@@ -140,17 +140,6 @@ &scm {
 	dma-coherent;
 };
 
-&venus {
-	iommus = <&apps_smmu 0x2180 0x20>,
-		 <&apps_smmu 0x2184 0x20>;
-
-	status = "okay";
-
-	video-firmware {
-		iommus = <&apps_smmu 0x21a2 0x0>;
-	};
-};
-
 &watchdog {
 	status = "okay";
 };

-- 
2.47.3


