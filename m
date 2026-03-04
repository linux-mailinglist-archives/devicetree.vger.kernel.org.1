Return-Path: <devicetree+bounces-270908-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6br1MbHrp2mWlwAAu9opvQ
	(envelope-from <devicetree+bounces-270908-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 09:22:09 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id AF5931FC792
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 09:22:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id BDAB53031372
	for <lists+devicetree@lfdr.de>; Wed,  4 Mar 2026 08:22:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4FAF6390987;
	Wed,  4 Mar 2026 08:22:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="UrTFhOkQ";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="KRpwt4Ry"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D787B38756E
	for <devicetree@vger.kernel.org>; Wed,  4 Mar 2026 08:22:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772612522; cv=none; b=OT8sUTG/XBDiAFEVistYUGnDbdh4uAcR9oTcKvR1/GfF8UmOqR07uRqA0J8qew7XZnFz4PGbFQF4IakjdWrtLRkUhcqpGK/rvPLL6iFzU4WBwryMaYhZC+rDTjNlCuWMNDZpn4HYHot0s3f8I9Exrv6Etn872ItdqsjE8i9cQ10=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772612522; c=relaxed/simple;
	bh=0cxDH4J+ogpnd/2Sh8T/+lD9ulgjspAUfkAYG3Mt/CY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=g1S21BYc9mCDdAmBrJCS0h5MFSF1m4qoKTZIV+hnZQnZcA2gDHrYrb+qFI4S2wLBWsHONuwjxqZXw4Cpfwdyqp4svbHfgskNxXZf7HbYKxQjkeHQ6wcrpy6n5QiqVepaCs3Y/r98RTQ2vrhl9Le1NmwglznUE0dhGa8hISCD1Mg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=UrTFhOkQ; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=KRpwt4Ry; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6245SPa11677902
	for <devicetree@vger.kernel.org>; Wed, 4 Mar 2026 08:22:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	+feDmpxyjcw2Gpw8JLF/SSE3a9sEyKxeVIjgMxiPBLY=; b=UrTFhOkQGwc7B7A8
	rz6cCieTGQtkwoi5U5DUOGeYak7oBh2+hlJaOYrhjf97CKFTfY26zYEMJNpAIZFM
	Sqkjstvk3CHfm3QXv/tA8N5fLmJMHk0MOvVyHWcgI29g4OVmLY2Cs+X3Yr5KNTHp
	yEPs12Fw5gGoTD8mXS2R4pPnRMmQF+B2wPdCNNHP2gw1A9o1JT9iZWqjt+UmbKDK
	mhwxbF/pRS09E/0dCTFhP7b9/C2tcCdUxFJsh+Iz5XeZTqcdoR1ZGhrIYHbgg659
	0+2tIgjefqaLTnr9DGrWoL1MNfHYDxfSA+F0Z3ZHH4gzN1cXAvdrvaikpXxrBpc9
	K1eHhw==
Received: from mail-ot1-f71.google.com (mail-ot1-f71.google.com [209.85.210.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cp73ha0c7-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 04 Mar 2026 08:22:00 +0000 (GMT)
Received: by mail-ot1-f71.google.com with SMTP id 46e09a7af769-7d4c14f388eso32807135a34.2
        for <devicetree@vger.kernel.org>; Wed, 04 Mar 2026 00:22:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772612519; x=1773217319; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+feDmpxyjcw2Gpw8JLF/SSE3a9sEyKxeVIjgMxiPBLY=;
        b=KRpwt4RyYzDboU4rRLLX2Xas7nsaY294vdAVdurnqHvp4FD7F6ujdNzUW5Avn0ojBY
         xs3HlYjn0mLwpkNXLbiGC0He72yq8nmAws4NNVENZeHco9MREVGN4uY34uxs1mZFbSXL
         e7+G9ZSFfroKmbrRSzd2R6QFZfsfuolO628e4XjcQYt7HhdAw+/hzaDi1u54CFUFXeus
         yDZXxUqiV6fqqh4LLb1p8fh6JObJs8Kkk3jwPiD+0kFVErxtShi2CoudHHMlN8kiVqbl
         PkLO2vfrmAWhdiFhBPf5CYylQpBPFBph8ANvzLElXjqRBis73DLnojhxA/g8R8B+b0ru
         GSVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772612519; x=1773217319;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=+feDmpxyjcw2Gpw8JLF/SSE3a9sEyKxeVIjgMxiPBLY=;
        b=M0h8xpjkOCIOUTLod36cxwflREUt3s6qGPdmOwYih3LFL2X18qMp5COIPchirOj8L/
         2sPQhv/0dmfH3NJBHAtnp2MMyhRPNIjOTUqW/PBh4xmGcC4ebnH9KvvaBOXRlZVltQht
         lxeXYUuYXYtKIXgXd7g169R0m2dbbat/fWcNaHPXiVQeaAkMUlsf1TYZeoGyJNll3+7o
         wBrrys4DAbxfQUqS558pO6HclSk2bldLgBZqFS8bJyIlICkDTZYl11PaFsaouddY1gSO
         P05EAl5oZxEGmmTPajzZn3LP3HqmOqxIPH2m+nFKLrghmvCxux8K5AtnZkkSx/AyobjB
         4KuQ==
X-Forwarded-Encrypted: i=1; AJvYcCXYsipjJQ/zyNXdkpsanu440L0LtoCTjyuwmSP+KZTlN4+oKuB20qHHe2IA8+Kws4E7tjT56XKRSA6Z@vger.kernel.org
X-Gm-Message-State: AOJu0YxGQGfqtYsSLPjxx06geKRqjqF1RDp2jw5zEqb81bS30yygLTZi
	7rpHXw1YbquLUpK4VPhNf12gV0K6qH5e6fNp+w2OFiCCSt9LgvfvLNoAEDjzeBxvfNG0OiRmT0A
	DHgseTDrb65J/up1KdeGMr1jHPSyYv/wxBpihZt5ia19PMhyrLcTdy7k46lttXI8Y
X-Gm-Gg: ATEYQzw1Oqkn2xTnjHejZfBkGQR6Ofiy50+9Vdi57uAIJjoI46lWj04N7rMs7tdDDbf
	B5MsHwIy2GYIYbdpgQc9efEK9pquT+vFMSAHjsC0EJij1yYH8YNlcfO4e+ZkWhh2/TF9PCK44EZ
	/2h5MbC9WvTM3JRuMGMBjGF01wXaZoQX9y8f0tFiLEv/S9ElZzZ6k4ExtTGmQrtq77gx55mDG3o
	SpaLOUm7ES9vcTgRKh0px1SpFX1KG1ujri8zjVzp5Q7eTOHxAUXwvK1qwC95fqmNIt6tQd7VMbR
	26sl3nmLsNPYFraQSg6S9dPG5FTmR92hU13wmVqmrmeli7sCVAXIBctvbplSBqG63PZV5yZaHnN
	0b/9mX3vmqN5Wt+5BKZtsm6bi2DmyuiYLcLzS/aTbOLcw+gQ7BtxDcbc36NXojlfrTiGw
X-Received: by 2002:a05:6820:1905:b0:679:a4fe:f024 with SMTP id 006d021491bc7-67b1775f4demr849064eaf.46.1772612519440;
        Wed, 04 Mar 2026 00:21:59 -0800 (PST)
X-Received: by 2002:a05:6820:1905:b0:679:a4fe:f024 with SMTP id 006d021491bc7-67b1775f4demr849053eaf.46.1772612519072;
        Wed, 04 Mar 2026 00:21:59 -0800 (PST)
Received: from hu-qianyu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-4160d26d9absm18006952fac.16.2026.03.04.00.21.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Mar 2026 00:21:58 -0800 (PST)
From: Qiang Yu <qiang.yu@oss.qualcomm.com>
Date: Wed, 04 Mar 2026 00:21:55 -0800
Subject: [PATCH 1/5] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Add
 support for glymur Gen5 x8 bifurcation mode
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260304-glymur_gen5x8_phy-v1-1-849e9a72e125@oss.qualcomm.com>
References: <20260304-glymur_gen5x8_phy-v1-0-849e9a72e125@oss.qualcomm.com>
In-Reply-To: <20260304-glymur_gen5x8_phy-v1-0-849e9a72e125@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Qiang Yu <qiang.yu@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1772612517; l=3719;
 i=qiang.yu@oss.qualcomm.com; s=20250513; h=from:subject:message-id;
 bh=0cxDH4J+ogpnd/2Sh8T/+lD9ulgjspAUfkAYG3Mt/CY=;
 b=u//xzciC0iOy71tQzdkre/5ZzPbinP8Hp0mSQdZG6U7/pN91pAkszc0NfvrWioUvLrrK2HRok
 5wHzs+4x0vhCOT40wazLhj02LqmEoGsg7xZ3H+EjViGQw7WhGpd3YyD
X-Developer-Key: i=qiang.yu@oss.qualcomm.com; a=ed25519;
 pk=Rr94t+fykoieF1ngg/bXxEfr5KoQxeXPtYxM8fBQTAI=
X-Proofpoint-GUID: _yGvY7Kw-VtbjiGppaeo0k3TatTXaoom
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA0MDA2NCBTYWx0ZWRfXzjC4KjzmtFqL
 zAmvQOQwrLDebU4aXU2HjLud92B4gA8FTm1MpYd9Er2B6OuetApniLohrUF+gdRdqOJ/zku2vCc
 jBUwsDtZ52JO3DZo/uFhR7yq7A2bu0nBlnSzS1F0RtXbJ+0YV3KL82U5uqaVJr4ZI4l6a4MAGwe
 XDQzXPMNbaeNreK6CudlGaPooqIXzdZMwmXaoz5fe3eLMR1JHxp5368oMCl964noBKrQN5NUgVE
 tn4ogKum0hzbYjfBG9V4rj0Y35VP5jXuc8OkMhaIJNjE8X47xAWhW8sYbnodY0rzeLnPRmk6Fbh
 KhPZkrccuy7WOgfkWdNl1C/x1AOTEoy4ASgwgFIOYSDuCw3uYT+0VDZnsdSfAtWhQZRiSZF0jH6
 5YiZQtVQzOUZMkOpYAeXzRPHieMcmc80ZNNeHxCxI3evGgrKr3fdlBCoBS0fz9lX4II1NI8jzMf
 XhmV2l+rqjjPrlYM/6Q==
X-Proofpoint-ORIG-GUID: _yGvY7Kw-VtbjiGppaeo0k3TatTXaoom
X-Authority-Analysis: v=2.4 cv=BpWQAIX5 c=1 sm=1 tr=0 ts=69a7eba8 cx=c_pps
 a=OI0sxtj7PyCX9F1bxD/puw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22
 a=EUspDBNiAAAA:8 a=RFdnLZz7-LqoW1cxMWEA:9 a=QEXdDO2ut3YA:10
 a=Z1Yy7GAxqfX1iEi80vsk:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-04_04,2026-03-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 suspectscore=0 bulkscore=0 adultscore=0 malwarescore=0
 lowpriorityscore=0 impostorscore=0 priorityscore=1501 phishscore=0
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2602130000
 definitions=main-2603040064
X-Rspamd-Queue-Id: AF5931FC792
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-270908-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,oss.qualcomm.com:mid,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,qualcomm.com:dkim,qualcomm.com:email];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[qiang.yu@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

The Glymur SoC has pcie3a and pcie3b PHYs that can operate in two modes:

1. Independent 4-lane mode: Each PHY operates as a separate PCIe Gen5
   4-lane interface, compatible with qcom,glymur-qmp-gen5x4-pcie-phy
2. Bifurcation mode (8-lane): pcie3a phy acts as leader and pcie3b phy as
   follower to form a single 8-lane PCIe Gen5 interface

In bifurcation mode, the hardware design requires controlling additional
resources beyond the standard pcie3a PHY configuration:

- pcie3b's aux_clk (phy_b_aux)
- pcie3b's phy_gdsc power domain
- pcie3b's bcr/nocsr reset

Add qcom,glymur-qmp-gen5x8-pcie-phy compatible string to document this
8-lane bifurcation configuration.

The phy_b_aux clock is used as the 6th clock instead of pipediv2,
requiring the clock-names enum to be extended to support both
[phy_b_aux, pipediv2] options at index 5. This follows the existing
pattern used for [rchng, refgen] clocks at index 3.

Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
---
 .../bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml   | 45 ++++++++++++++++++----
 1 file changed, 37 insertions(+), 8 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
index 3a35120a77ec0ceb814a1cdcacff32fef32b4f7b..25717bc9be98824e38f3c27c3299fbd1f2e7e299 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
@@ -18,6 +18,7 @@ properties:
     enum:
       - qcom,glymur-qmp-gen4x2-pcie-phy
       - qcom,glymur-qmp-gen5x4-pcie-phy
+      - qcom,glymur-qmp-gen5x8-pcie-phy
       - qcom,kaanapali-qmp-gen3x2-pcie-phy
       - qcom,qcs615-qmp-gen3x1-pcie-phy
       - qcom,qcs8300-qmp-gen4x2-pcie-phy
@@ -68,20 +69,23 @@ properties:
       - const: ref
       - enum: [rchng, refgen]
       - const: pipe
-      - const: pipediv2
+      - enum: [phy_b_aux, pipediv2]
 
   power-domains:
-    maxItems: 1
+    minItems: 1
+    maxItems: 2
 
   resets:
     minItems: 1
-    maxItems: 2
+    maxItems: 4
 
   reset-names:
     minItems: 1
     items:
       - const: phy
       - const: phy_nocsr
+      - const: phy_b
+      - const: phy_b_nocsr
 
   vdda-phy-supply: true
 
@@ -183,6 +187,7 @@ allOf:
             enum:
               - qcom,glymur-qmp-gen4x2-pcie-phy
               - qcom,glymur-qmp-gen5x4-pcie-phy
+              - qcom,glymur-qmp-gen5x8-pcie-phy
               - qcom,qcs8300-qmp-gen4x2-pcie-phy
               - qcom,sa8775p-qmp-gen4x2-pcie-phy
               - qcom,sa8775p-qmp-gen4x4-pcie-phy
@@ -201,6 +206,17 @@ allOf:
         clock-names:
           minItems: 6
 
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,glymur-qmp-gen5x8-pcie-phy
+    then:
+      properties:
+        power-domains:
+          minItems: 2
+
   - if:
       properties:
         compatible:
@@ -223,11 +239,24 @@ allOf:
         reset-names:
           minItems: 2
     else:
-      properties:
-        resets:
-          maxItems: 1
-        reset-names:
-          maxItems: 1
+      if:
+        properties:
+          compatible:
+            contains:
+              enum:
+                - qcom,glymur-qmp-gen5x8-pcie-phy
+      then:
+        properties:
+          resets:
+            minItems: 4
+          reset-names:
+            minItems: 4
+      else:
+        properties:
+          resets:
+            maxItems: 1
+          reset-names:
+            maxItems: 1
 
   - if:
       properties:

-- 
2.34.1


