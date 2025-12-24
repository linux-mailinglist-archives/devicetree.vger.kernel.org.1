Return-Path: <devicetree+bounces-249418-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DAFECDBB6E
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 09:58:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7823B3045F7C
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 08:57:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0B0C732ED59;
	Wed, 24 Dec 2025 08:57:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="p4PgeuSd";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="DZ3pOhLs"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69E7F1A00F0
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 08:57:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766566647; cv=none; b=rJ2Nm9KNinBLV2TslJmxSlvN7mRXUZV+QPmr5vD1oTyslle38Gb6pWnqx0kxYMlrdhkqsB38NWTOmAX3j/VV2HWFIoNFuOok+dUE3fntTztABVsAIzNSISuI62aWfGRn1pT8SJpGgPoruk78SOGCp84dmXg30zouSm7l277X9yw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766566647; c=relaxed/simple;
	bh=1rXRxP8nv/uDHN9VqjcpMRmHbKkQYlxf9869zOf39Wk=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=ZAFvYak5QrgcTJH1+XRHlqUjzBYFk2/qF2+UGYctUoFgPYFxrk/bzCD1bcc8H3Rlba7iQFBMaFw6Zre58Amh/K5kU5ISDEH7BLtsI6DmxBXNNQ4tqYiR2slemSgusV0k3PebniOY0FC3Zb69jYmD2nt/2UCl6+LIBaR0ukhh5u0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=p4PgeuSd; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=DZ3pOhLs; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BO8arS4722153
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 08:57:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=R34bM4+eLNe2u30X75gtKquF7yNcXFk1HUt
	lACJY6DY=; b=p4PgeuSdr4dXxTzDGs+YYpt7n1om59ODo/IYqdP3rXb4P+xiuOm
	3X8DcKevL1qZ5+jSaBtYpuNZo2pVn2xWZKL1IqYa6chh3Xgx1vnYcyMn/tgfwYSj
	Nwc5kPHx0fBwvEpH7uayNQKjj65rv902HGpVW12LUxZrM4M6gsm/xA5msRlFwf6u
	vojQDXa8Rqv/ww2xPJUIZs3TV0hKeTYxyijGHkljY6keNYfl2eqNEX20k0HaVKQj
	W51NG4AzTVpBAB+LiyTyvRjIGyng6pE9wE/lSmkCraFrDmS/bflDSJZ24O2+V50f
	IzNCfYNgVXVAb/PhETcvQzlADsQwF61v3Vg==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b81mt9qdf-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 08:57:25 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2a13cd9a784so61208705ad.2
        for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 00:57:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766566644; x=1767171444; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=R34bM4+eLNe2u30X75gtKquF7yNcXFk1HUtlACJY6DY=;
        b=DZ3pOhLsK2IvQ3jp4gHI116WfJjwNGlalb9SDwSB+hImWkyDJde9v8RJPZRcK4LsC/
         xMs4gDZvBRBkrBkkyQafZyiMVkfSyBKhXezhFrLP2BHEYlRq0mwFBpTSDXXnBz7HkRB1
         k04zlPzbt8G+QNu84N+EPpn4Z3GTzdDoUI+K+AKFef4lRKgZqy0Fo/ZyXR2vf0S5wErU
         cRJBUdCKZ4LFHmYYgMf0lRkwG4YhS4uDArTKmvSaiGZiQ14LAvMPB1lvzdhGOl2qtrwq
         E6h5UmGWHs3bqPLMeEsk5cLBLq2+Z8ozhMZgDcjgf/FFOkdTtOgBfBv8FI5//oYnaW5V
         c3zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766566644; x=1767171444;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=R34bM4+eLNe2u30X75gtKquF7yNcXFk1HUtlACJY6DY=;
        b=ADPp8laPzAfNQi425w3zSi7ZLqEeKEp77XEwNCCm+6lH1qyfULhmuuZmKmt4rYldVf
         S3yTNnTKWORIdJLoIGT1trceyVcAwABOHXbai3WX/N9L4oEnEGZsRIVZvQySRbKgxVM5
         emhGtpjp0u/GOh6CrMX08VhT3POLLC8QouoeeHYDoPYEZKiPBKkslwr4YPX/b09ZjPdO
         81KR1C5fgaLlEDY/N3qXGAh0YHo8YHOl83NKfm868vxPyUQHJ4b/DL7RZXL529AWJJL5
         93De0clRxeE2L/MbKfrQTOtGaXTZdjB53VsiHFP2YIf5PeZYcA0gpMQwnuLJESFhqnWv
         pswg==
X-Forwarded-Encrypted: i=1; AJvYcCUZdeZIuUE6cd8lMo5hEIVawvYJU4f43p+bnLTiawZ76G2r0Ss6SunbC7Jyl9kW0sYFqwQMI0OM7Lw4@vger.kernel.org
X-Gm-Message-State: AOJu0Yzjr+wSosJJBsLnbshl/QZ9t/B4at8+qnl1dOL4RIDJTX+9C3wY
	o04pzlblW872vl6XO05ZX5p3hz431amH2Nw84W+VHuxlGRBWYKSHc4Qpgehio7oFCnwNr8INXDI
	8k0kZ0s4J2WRYalm24oZqnp9Apl6NFv1VqYMLgjt20ubrefyyT4yrLAgywwiVEOsv
X-Gm-Gg: AY/fxX5ueFeaxgrQP6wZNW3pBrpPi7i0DV8X0HWDsI6RVkDECYW3b+fsfzrK0ec6E0v
	qvOJG1IAlI4KxfYiBEkpDaMMEJqJ5oKoz+snNu2tPYY3UMCeuSetxjFOzr/ckK3GRvsC9Siqk5L
	li2FHpTq0q4PUuioFzjlmUtN57UroIoqYUu/2NLcFln+hzJO1ZzgMnsgwwyV4/HoFtSFzJTScC7
	77DT27vJrtq1JSWmydf8ERRh7F4iNuqL9Ls9l5AtUnjHP1vknxXWfAP0YayvRbx6OPMjYSWU2/Y
	PmFc0J0RseElboT+jDa8SaSykLuoXIEWeiFbCbHc1M97AeZNoptuKubgmLy7Vs43CuWuPjfWIIK
	CatOIyJu7o+QlJu3gbGDj9dzCRw/jRiZBO49z/saN
X-Received: by 2002:a17:903:320e:b0:2a1:360e:53a7 with SMTP id d9443c01a7336-2a2f22229f9mr213753765ad.13.1766566644243;
        Wed, 24 Dec 2025 00:57:24 -0800 (PST)
X-Google-Smtp-Source: AGHT+IG9X/LkjTkq8X5ZvuLDM7b+2hdXqXNvvRkYJfxIwkQKO3M1TRc1ceHiPg7G9wmGQB9BKjx2hg==
X-Received: by 2002:a17:903:320e:b0:2a1:360e:53a7 with SMTP id d9443c01a7336-2a2f22229f9mr213753415ad.13.1766566643806;
        Wed, 24 Dec 2025 00:57:23 -0800 (PST)
Received: from QCOM-SocCW5bzXR.qualcomm.com ([202.46.23.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c1e7a018eb5sm14760026a12.16.2025.12.24.00.57.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Dec 2025 00:57:23 -0800 (PST)
From: Jianping Li <jianping.li@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Jianping Li <jianping.li@oss.qualcomm.com>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        ekansh.gupta@oss.qualcomm.com, quic_chennak@quicinc.com
Subject: [PATCH] arm64: dts: qcom: hamoa: fastrpc: set ADSP on secure domain
Date: Wed, 24 Dec 2025 16:57:09 +0800
Message-Id: <20251224085709.741-1-jianping.li@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=e/ILiKp/ c=1 sm=1 tr=0 ts=694baaf5 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=j4ogTh8yFefVWWEFDRgCtg==:17
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=rhCUNHnpazzhfgg0QaYA:9 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-GUID: ecMoErdFTCz4mh9dDR0fHdM4Y-Fvqq8S
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjI0MDA3NyBTYWx0ZWRfX34dn9vo3iQQI
 wjcAtKz1Mlkwv3SMdgRyoSvGidRsOgdX044GpzPbhTQEz1ViBG/iW6pZUCF2+TumA9/3cOjmRoK
 j/6kTDUUIeQQ+bBiYdwyH8r1lISJCCrVXer537A5wKekRAWDRhTA3EA84nMrM/Oxq5rUTSWKC2m
 p4kktXaLpOnD4nt5tyLkByiDJ1w8PzdAnH0Xn8BjxxQHYFifLnk6RqYGAR2pT/FgzbCS2n5wAG2
 uom6BDYcVz3VBJut4lwfk4Meml1U9esJk+IR6bwlOo14DU4I8PLNMu8GRdbONwihC61yxdQMdFE
 Yr4GQi7q72N/UIU2RteE1krHlCjAnVR7qKpnRiKc1YYxdVa0MWTCcRkcFQhQaRlZKDAtWsa9zre
 IIg2HGteHz373lQW3ZzttccTf1b2atmYuqtIEtLMfX+6Qs50xQJnpGKYn7fKwaR3wf4QW/yJpW5
 k6VegKwF7I9tOrvXZGA==
X-Proofpoint-ORIG-GUID: ecMoErdFTCz4mh9dDR0fHdM4Y-Fvqq8S
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-24_02,2025-12-22_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 clxscore=1015 phishscore=0 adultscore=0 suspectscore=0
 spamscore=0 lowpriorityscore=0 malwarescore=0 impostorscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512240077

On Hamoa platforms, ADSP FastRPC should be instantiated as a secure
domain. The presence of `qcom,non-secure-domain` under the ADSP fastrpc
node causes the kernel to expose a non-secure device node, which is not
desired for Hamoa.

Signed-off-by: Jianping Li <jianping.li@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/hamoa.dtsi | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/hamoa.dtsi b/arch/arm64/boot/dts/qcom/hamoa.dtsi
index a17900eacb20..da62c5741350 100644
--- a/arch/arm64/boot/dts/qcom/hamoa.dtsi
+++ b/arch/arm64/boot/dts/qcom/hamoa.dtsi
@@ -4193,7 +4193,6 @@ fastrpc {
 					compatible = "qcom,fastrpc";
 					qcom,glink-channels = "fastrpcglink-apps-dsp";
 					label = "adsp";
-					qcom,non-secure-domain;
 					#address-cells = <1>;
 					#size-cells = <0>;
 
-- 
2.43.0


