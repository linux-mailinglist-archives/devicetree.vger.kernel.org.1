Return-Path: <devicetree+bounces-254799-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id E2836D1C566
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 05:31:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 3010930006EC
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 04:31:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BD214284B37;
	Wed, 14 Jan 2026 04:31:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="bEnav9Z/";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ccY8BlsM"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A5F1283FE3
	for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 04:31:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768365066; cv=none; b=ErK+Wt1PE/qgA0SSZ8i/0/5oUv2rgrXHC/tVdDN+3RVLmeU+36ipSKRnXaDFSZ3P+tKZI6mCRzjkVrOx7V/ORtMvdjgNKT3EiC3F8ftdtJA2AEHZt7Te7gHrLqhtN6rsJRb/AdHC4evg6PvJOtsHRhMTIj3TLfTTM+YQM6S5mg4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768365066; c=relaxed/simple;
	bh=zj9oy2KSVsDJSkUD7u4V0TSsJX5unK4B49vqEu2Uhpw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=LYdFBqXQCI9Tb9SU2uZ37exjCgUE5r2+gnjdSEHrLqVKEdGau4n0oVQWD0xBeXFLV5g7YJ1rgnMSfA2IIN7yFI/LrifsP7SNY4ioye4SjhaMfe8TUBuk66Oz4LJuesaaDpHm8m36dJvaXejHB3bOAVxZUd3vtEZ7wMCr9XnfVew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=bEnav9Z/; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ccY8BlsM; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60E4O2dD2067789
	for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 04:31:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=6XAi/9VUyj7GQo3A7zrhk6
	1GSicw6ED4gQsgaOFIR4A=; b=bEnav9Z/156z8Oy77r01woY9E0QA49yT6QnwBx
	O1S88Krz9QrtZwjQcq/TPZCxvsZ2kQCSWeZzAtGo6Zi0GQtHjwVj4nQdeDmLll1t
	LYIDGQTGZTBJ3wnZfXzLvy6+yJ7zb4Yd2n4/Sbg6sDJakXbvw8VX8MIbyCNz619I
	6aYpTnOQIEUBgPnIhj5DoCnTMtDde4zAB7VGSYq/1UnG/E0lxK1plHzfgoZx69BP
	XPts3xLvnh4haTEFMwmaybC8NdcWSvk2hwDJxhwSnrYRP2ntK5xjn79+lTNHYudh
	zZap+RoXiMGTlsC+w05JJEItF+Frw7aSlJsz6ON/bcDVWbTw==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bp16x0mdm-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 04:31:04 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-81d9b88caf2so3673347b3a.1
        for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 20:31:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768365064; x=1768969864; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=6XAi/9VUyj7GQo3A7zrhk61GSicw6ED4gQsgaOFIR4A=;
        b=ccY8BlsMvD+YQXWBuh90hUovBEiF3qoeih7vTStdJkn8woSpceiMv+pukFiy4msvto
         0n3+RcwqGGGjuP5o5md/Mv2JgIY2Xjot2EhaJyDRsF1Amc1n7Ll6t4Nta7SHLtnkQuAz
         XEkhTb59536dhwLr3oRJt1MXpDPWXtlOSLiWvp1vthF0gtc2rS7dW4BWIyIrO4gmnCmn
         UDM7tYAQjC+nQWaR3nnrDvhJ4Y4EpK3BCDYNHgCp0mVn/KMGe5xwWbnCzbMrpXWjgN5y
         iEvJgoD6tc/4Q2mMFK5A1SlAsg05Xd4mnkLReDqM8DBQ9wWykNGWz6UXz6dI5agCg+02
         5xuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768365064; x=1768969864;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6XAi/9VUyj7GQo3A7zrhk61GSicw6ED4gQsgaOFIR4A=;
        b=VTO3THRz664etESZ5sCbk0TwZd0R9wZJJ9vS582WSRdAFUF4/jRmuoD2ydK8FTlogM
         s2o5oU3e0hNzCkbPTUcNanml+isQGLJOE35LadvsgOHULgdQkTPiBy3eRKiUyfImpm0l
         yIvVz97kMX73hueTEocfgUXACfMzBPwWNBhvHF0APU8T9LsTDYRV+Rk2HLeiv2JCa6AK
         Cs2VitbzrrzerJtGz+URXvU/Kd4GpLgn4nubpZPG/7LIzjAeH+EydAc+HhPGTb0PNW8L
         gkIO6op4fIshgQeRY4G9ZXzDqEbJ+hClM6Chsx0ulASs9Yr+Z5McQy1WRHPP5lMC+seR
         x0eQ==
X-Forwarded-Encrypted: i=1; AJvYcCVOCXO5KXk796FBmEbZGJsRtgz79DACSP7t+Mds2xoWr2lOh+Gko4fpvy8cRznAkMT0OJUaO2p/BeAG@vger.kernel.org
X-Gm-Message-State: AOJu0Ywq8NCDOIhWhlcpBGBVieyjscMbXCYVRt0+KQBu2TfXtPUJFEb8
	RS8ipWoLBsQ78NxwHduO/j3F+D1X9ROp8HiCe0sTAsBLO5pRDTHNVkA5QQevssynHn5NGdclHbv
	nOlLGKjbzc4Ul9653S8pWGFbEyJi8GZK/UbnnXeJOZ8IJbR+zPW2dc/BxDjEpUmjLTaNA4dQ7Xj
	w=
X-Gm-Gg: AY/fxX4USw3Av4zBcdbWngE9tRteczQHELwWLNEHDYGHZBYySeI4w0eYVV3J6x5rtAB
	NhpeFew0Sha4Nif0v0jQhDeLpLFYYm1+iMfrm0YmsEMuiJKZGtV0vchfRH40GAM6kSt65pLtiNF
	O/46UWTVRvgvf614xpwudh4LLMPURKqKc4FITMZ6BN5UxH1NhS812O3M+lKhsfs0NzUXpLVYqTA
	4ZoKWGXGsWjHHjPogQcuTGobyf8jdVRCHuSZS1ovTThQsJf3Y0zLK+1jnxe1ygWrjLdf2SFHdAt
	tuEJQcgzkNhZw2nXKtPxL0HsUmPMHgjvUkyJeCG9jawuqpLzAhMwoA+cokj+6dFdq+hWOPgLz1G
	bJDKLIflTqskieAF9HPc+kQ7tA1Z+jW6f0zLyCXD4BAJxmiM7qpnFIp72GrPaZQaaaHwNQp3tIm
	SaDvs=
X-Received: by 2002:a05:6a00:3496:b0:81f:2b84:6f01 with SMTP id d2e1a72fcca58-81f8200e1a2mr1027260b3a.66.1768365063805;
        Tue, 13 Jan 2026 20:31:03 -0800 (PST)
X-Received: by 2002:a05:6a00:3496:b0:81f:2b84:6f01 with SMTP id d2e1a72fcca58-81f8200e1a2mr1027242b3a.66.1768365063334;
        Tue, 13 Jan 2026 20:31:03 -0800 (PST)
Received: from yijiyang-gv.ap.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-819c52fd904sm21761068b3a.33.2026.01.13.20.31.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Jan 2026 20:31:03 -0800 (PST)
From: Yijie Yang <yijie.yang@oss.qualcomm.com>
Date: Wed, 14 Jan 2026 12:30:43 +0800
Subject: [PATCH] arm64: dts: qcom: merge duplicate references to
 pmc8380_3_gpios
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260114-hamoa-v1-1-c96ab354924c@oss.qualcomm.com>
X-B4-Tracking: v=1; b=H4sIAPMbZ2kC/y2Nyw6DIBBFf4XMuiRirTb+SuNipEOZBdACNibGf
 xcfy5Oce88CiSJTgl4sEOnPiYMvoG4CtEX/IcnvwlBXdVsp1UiLLqB8mM401D5NpxQU9xvJ8Hz
 8vIbCIyaSY0Sv7b4+RpcX6TeVTD7l09TBOc698DRneaXuMKzrBsa8geWgAAAA
X-Change-ID: 20260114-hamoa-5f7f4e68f711
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Yijie Yang <yijie.yang@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-56183
X-Developer-Signature: v=1; a=ed25519-sha256; t=1768365060; l=906;
 i=yijie.yang@oss.qualcomm.com; s=20240408; h=from:subject:message-id;
 bh=zj9oy2KSVsDJSkUD7u4V0TSsJX5unK4B49vqEu2Uhpw=;
 b=weg7pH4Src2bM6E7ktydUt03OefKN/WG96bJJsUpgOaAo3jI4kpQA4r3GBwFK1mzDyqMtfoP0
 02gWNSuwfhFDSDnFPo/q2gHSQhRAnNSGkIdtEOZkxvEja4xSdpi4ir9
X-Developer-Key: i=yijie.yang@oss.qualcomm.com; a=ed25519;
 pk=XvMv0rxjrXLYFdBXoFjTdOdAwDT5SPbQ5uAKGESDihk=
X-Proofpoint-GUID: 3v5Z6Mgn2YCIyfyyQVosDoQcqkt-v2wG
X-Proofpoint-ORIG-GUID: 3v5Z6Mgn2YCIyfyyQVosDoQcqkt-v2wG
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE0MDAzMiBTYWx0ZWRfX0pQwPbJK+SOX
 jQnIgFvhdTq8cY6cqS5Sy4YkTaxD0anhQyNwR5L+kNbAI86S8UoWhldaAWjbnBw8V+s/upEE0Ta
 nZhP9GNi75gOcaQXsZ5fGHCQcFGbNXjtc8c/5iIZTKexroxdPlx8IIPNm5ansI7GzlU4fnWN9WA
 Y+8JeAYxknGfxZolJm9dLd6Ofn1b0E7Vu7tCxax5zRqThYrqOg3MHA/MhoyROQsw/wqdluYEevE
 /A3cjRYBAWNYT+YasvaU1g4qLYaOXfuqp5H1i+QHIstkx5OmOmFljQXdeM7vgiSFrNgvVOkwYig
 FGML5j7YN2UPolrZMbP45ojmfu6HR3Ao5n2VNb+GMGDjpHw2Xi3Y3xloeWpFc4JxM9V1BOVDEl/
 VpiRX9tw77kbYiCmI5RCslBcq1y3BzrYznmGJDoPVxr92b6dFR7AZpyZ/mKgWiUYOgZFHGqY7AX
 yKOJnZIHF4OY7snnDQA==
X-Authority-Analysis: v=2.4 cv=JvT8bc4C c=1 sm=1 tr=0 ts=69671c08 cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=a2DeHefvSk__2Ec-5_0A:9
 a=QEXdDO2ut3YA:10 a=OpyuDcXvxspvyRM73sMx:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-14_01,2026-01-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 bulkscore=0 suspectscore=0 adultscore=0 priorityscore=1501
 clxscore=1015 impostorscore=0 malwarescore=0 phishscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601140032

Merge the two identical references to the pmc8380_3_gpios node to improve
clarity and remove redundancy.

Signed-off-by: Yijie Yang <yijie.yang@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts b/arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts
index 2390648a248f..630642baa435 100644
--- a/arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts
+++ b/arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts
@@ -1102,9 +1102,7 @@ edp_bl_reg_en: edp-bl-reg-en-state {
 		pins = "gpio10";
 		function = "normal";
 	};
-};
 
-&pmc8380_3_gpios {
 	pm_sde7_aux_3p3_en: pcie-aux-3p3-default-state {
 		pins = "gpio8";
 		function = "normal";

---
base-commit: 377054868ffa544991cc491ecc4016589fc58565
change-id: 20260114-hamoa-5f7f4e68f711

Best regards,
--  
Yijie Yang <yijie.yang@oss.qualcomm.com>


