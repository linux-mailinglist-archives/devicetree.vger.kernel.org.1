Return-Path: <devicetree+bounces-249195-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id C1620CD9D0F
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 16:42:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id EB6AF302833E
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 15:42:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8878F3446C4;
	Tue, 23 Dec 2025 15:25:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="cgqsHLPB";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="LT18ihqC"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECAC926E179
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 15:25:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766503543; cv=none; b=k2586Sa+eR/nSLm5CC4kaGWIXlFIfgTGjLFtwtRKRBnbDBgsV5qFRgFJp+6KppQ2bKn5+S/OiBpuQGmGxOzL13adPMhuhzlgmRZuGM64kBY+dnP1Jyg+MygRUFiUpjXBQFccb3/VcCzXia/JDH/jiKi4ApJrZyfznJd8/NTHvgs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766503543; c=relaxed/simple;
	bh=09v/F977NfxhXdG9Op6gySwyepTv0APhi7pPXOH3z3Q=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=Us0RtjK+yg1DdE6atEIbihkkg7NDx7sarDlduVZYkRfEi8ehdOSboE3FII0pJG0f/1HW3heYi2m5JBH1wuS5FVCngRxxUKNdasdsyIC/jv5cqWs4dJLzG0ombEt6WFMyP9fbXS7NEotJnkMqymmi+5HM3otYTwXSzCH/t9aSF4g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=cgqsHLPB; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=LT18ihqC; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BN9vxd51889420
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 15:25:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=8yJY8kd69tc7nNmZhj/AWb+BwQZUtdfMzpF
	Rn7v2mj4=; b=cgqsHLPBznggp4/sSPr5y8CgdDH9lUh6vEaDZ+/pCkVwX78CI8b
	sNhwMeWzi/nwW80DvYBjKRQiqqdRmOrYr1lklhxwyXAA4uxRiTMsHYb5LaM6KQBD
	5pmHKq8lE2KIKiud9pNV+0i+ioAGAzgX0Eb7JBWgvwotmdd5K9CMlqLmBzTI88dZ
	cmqt71uXfQW/1Ms+sqy9qQg/ivJeExt3VEEv70Elvbcz5OylFTAuxPwLv0SFFC2r
	/0q+tRdWxaA0qnaNSlnqecgJNzeVq7ddw5AKHaJNGIbdHDZP7oev1RCjKfW6+4SI
	cMPa9iO6ytYBLZpAORnjT6v6KBqQGD+5Mog==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b770am10w-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 15:25:40 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4ed782d4c7dso89372811cf.2
        for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 07:25:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766503540; x=1767108340; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=8yJY8kd69tc7nNmZhj/AWb+BwQZUtdfMzpFRn7v2mj4=;
        b=LT18ihqC+KcvE5OAJGQxZfLkx3ex8vqKNfygjNWRlV/ip6PpWalHolMdK7XMbE9Ve8
         lMVw8gSxrRdgZlGQZ0BRbn9OWbCV5jESKhzoIZVG6Dzsk3+Izw2ljbgnQcYOFB0pZ+QG
         wplkbXONwYG6c20jZXc2uKODCNrjRBkZhyzKXKnjZthnrjHv0iMTOxb5epmSM6MDbviX
         cCdinhUs/Pp8ijUuYf0VKQdwCchGFF1ZLqu1YNr9tG8ryqlz2mcQGQSOOX6eaP6/qTxU
         8pYQli4bd/CkWF7+AItCD/ciEmxroQw/Q/FkNC5l7TepeJ1U8RX6yI+JJS3fYhtlkzSX
         fKgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766503540; x=1767108340;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8yJY8kd69tc7nNmZhj/AWb+BwQZUtdfMzpFRn7v2mj4=;
        b=Z9ffd5Z2o/3yW2LqvuO9JK0a65ouJVeaIOgHQKlTVOGwLzESbKKLVR0TNOkEnWZ2jE
         pfhDuBnux+Fa3tGCS84LCNUSDvDXD/0+uHBkc4WltylW8djanq66CqMSRFhv4TTdJGkV
         tVPl6rH1NliYByjQC/LkyYzA8YYfHW+nRZVBsu6vH/kY13lpaBrSF2FVPhb5+6KS0x5V
         MrDm4/h8WVQ2xykyXGKvfPr1kwzSr6DJoRhLMFx+bEv4jodctI10ao2elZ1uYvz1to1Y
         2mySx4g3q7zV0qHaKEEecNY6KVpMbdrtKU028jhGdeS2kNCuI0JrDWOol7MS1XpaGo2/
         oTHQ==
X-Forwarded-Encrypted: i=1; AJvYcCWH0+/T+EcG0/gbpOohWcyTS78iKKO8/AIuVAR6GjAtP6Vm94HI9UraQdtZQCmC82VomacAIHgW8U0L@vger.kernel.org
X-Gm-Message-State: AOJu0Yy0vJ/atAZuWwOuCTjNpc7HLSXvHm9r9oPkRq8OtIVbMaJ0KyjU
	321PoKIMtbGu8+gz5/YxLe26+Oy4EmJRiJJd2FcjWaYt2so7uGXQLm4LXTEan+1ZYJgb+Uhy5Xs
	8G2/2tX8uslf+ynhjZJ3Mufob/dMnAK5eKTeNT9MXZZt3lOWGTcJNN3zScWz9cH8d
X-Gm-Gg: AY/fxX7F5r3F7zlWnaFrnRpFK1NEthrAuYCURousv4bEzmU1AoU8LE+sRCPU4ircN3r
	JQdh1rJHTuMCQGeWYhSCziMxok5AlQI9oc6RomeugzwNq9JoL7LOy9Z4lcU7YoQV6x6KVVBidFi
	tyylnN0kRfTrrtVjNrs9iQ/WxjM/C3e6vPSCF5QjnAk+WjrSyCsVusp6GtWGsQtTDiUc90m0QYJ
	8+MdTPpILK0SW9E+a6dlsMv5n9dE5sGWf6UeIlonByGvJ/xohR11LY4U7yy37N6c2i3MND3SCJ1
	TSzuJmxx3Ns8LcjKNVpkG4hjUbyA+ap37XGflP8bTNhvHGlkdES8oVLBjPT+s2juWhS39kclzst
	cMZUTUgXhJc/yAnJ73D/6BEwXTAeERaMHjxqG6eXlHAeRsVmyDzeIq8j/e9YIPw0YuM4=
X-Received: by 2002:a05:622a:1206:b0:4ee:4709:8515 with SMTP id d75a77b69052e-4f4abd9971bmr190816931cf.50.1766503540125;
        Tue, 23 Dec 2025 07:25:40 -0800 (PST)
X-Google-Smtp-Source: AGHT+IES6sH9DjtghbKbhn6HXGsqOGJgNv8+Kf7bzZH18If35oQGO3yjA7o5iAGOO0/0T3dMMWI5wQ==
X-Received: by 2002:a05:622a:1206:b0:4ee:4709:8515 with SMTP id d75a77b69052e-4f4abd9971bmr190816431cf.50.1766503539499;
        Tue, 23 Dec 2025 07:25:39 -0800 (PST)
Received: from quoll.home (83.31.98.88.ipv4.supernova.orange.pl. [83.31.98.88])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8037de142csm1411511966b.38.2025.12.23.07.25.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Dec 2025 07:25:39 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
To: Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>,
        Tero Kristo <kristo@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: [PATCH 1/2] arm64: dts: ti: Minor whitespace cleanup
Date: Tue, 23 Dec 2025 16:25:36 +0100
Message-ID: <20251223152535.155571-3-krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1508; i=krzysztof.kozlowski@oss.qualcomm.com;
 h=from:subject; bh=09v/F977NfxhXdG9Op6gySwyepTv0APhi7pPXOH3z3Q=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBpSrRvJwwxClnKehgWViXRsrhCwXjngt4GtImw7
 +qjhBQKy5+JAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaUq0bwAKCRDBN2bmhouD
 16iuD/0X1g1obOd03YP7uU2sKurWnUbcDbo4wNVBFIGvEXo+OsBubZxR/KhslvrZoKb+mLf2xFu
 +DS9zDOex7U8GAhw8yXY9PRmnEjKAQDRbk3M61HRoAOKZjhWB7cxoXzYULZ0RH9pPSgIdo/44LB
 BjQphnvyJwGyU3OPO92PxA5BYACTt58b84fr54uQ+XJTU4ISm6zmEAwbUCwQd8Hll/wQorVGWts
 fGYRTsEFTcDCugrwfX0OdNiCTQUqwdOkE1MYbcM1sIJ8u6GODXmwAIwS4UJ0Um2ppznhf6zMtlq
 +1muHzdwL1Etpg7BL775aqZXlfvkRvUZrkr9lZ/QTbWWn/rxfaOn3ZKaLxNRIe/nQVUw5cq2uYo
 1SvvT8P54fR2IrUj4F9d6jqB0mrpmYKygIZW7lYjZcS5H2rAQuGSobh8BpwbeGdKuQLEoUbN6AE
 jlHssxYTpcXogbqEmUJsMmjwqCnoGsM9Vwslk77imAIX4XWv7wARnuv1CTwxkJZ//8PrpljUCzZ
 z89Fsfb54u1tpjX0DHgIN5a7CNnQrgakABUO7F7E+OBh7YHY5c4Rc7D+HFhf7QcflIWIrn8XEzv
 zgPLmz/MhavJ0UT6/2s/a9NoHqsdAkAOQmrae//qpGcxA7tgEf2cX5Kbs2KKcg4mp4D9HHsiPsb po7BUBrH4FyIuDQ==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp; fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjIzMDEyNyBTYWx0ZWRfX/AnUonoZylAq
 9x0d0Unar0ACQjd9vdNWgggjtc9c/Irwz9JHgru0eZN4CG+IHBAFYnXrICPi871xbTKDfF0N944
 cDvWY3g8cyRmt1QdBpDaFgNhRJsp+G75QLXCqrqKE6lEqyjJI0uneoFHRDcoXNzcTqmN99Aafr6
 Jac+7JPwlLbumy9EaC+3LtY6W0sN0F+yG4mG0l+qlZY1nB6by28pHeNJizCCRUj7HvYagF0gb5J
 k1hNqK6uASdmamhczAFFTPXZoGHxWYscezTgrbCxkmTwXZgYEOGc80i2ix6d/IB2warDRAdBCbt
 T3LAVrt2d2WZYdYNl99jUnUhzGfs+22yM5BkyP2XjglmD/jUCLfPvrodev9rJqkXfaoSmawdwfK
 8ZAyOtwBYX1GSxe2CBNON19iwTcIAVF8daPplv29OxgfBedRJn6l14ahzcflto9LxCTXuDY9Udf
 bO+WTB+d6QyT8T1GAyg==
X-Authority-Analysis: v=2.4 cv=VqAuwu2n c=1 sm=1 tr=0 ts=694ab474 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=qe4J/qXhiWkb1JZGYKbLYA==:17
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=uOgXmjhQpuobMY5VB7cA:9 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-GUID: p4zTVGA6NvZ3xSYSodFGaOkt_Nu2C8zz
X-Proofpoint-ORIG-GUID: p4zTVGA6NvZ3xSYSodFGaOkt_Nu2C8zz
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-23_03,2025-12-22_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 bulkscore=0 impostorscore=0 malwarescore=0 adultscore=0
 priorityscore=1501 phishscore=0 clxscore=1015 lowpriorityscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512230127

The DTS code coding style expects exactly one space around '=' and
before '{' characters.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

---

Patches done with sed, verified with comparing unflattened DTB and
dtx_diff.
---
 arch/arm64/boot/dts/ti/k3-am62d2-evm.dts              | 2 +-
 arch/arm64/boot/dts/ti/k3-am62p5-var-som-symphony.dts | 4 ++--
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/ti/k3-am62d2-evm.dts b/arch/arm64/boot/dts/ti/k3-am62d2-evm.dts
index 2b233bc0323d..a5d5dc0a7bec 100644
--- a/arch/arm64/boot/dts/ti/k3-am62d2-evm.dts
+++ b/arch/arm64/boot/dts/ti/k3-am62d2-evm.dts
@@ -669,7 +669,7 @@ &ospi0 {
 	pinctrl-0 = <&ospi0_pins_default>;
 	status = "okay";
 
-	flash@0{
+	flash@0 {
 		compatible = "jedec,spi-nor";
 		reg = <0x0>;
 		spi-tx-bus-width = <8>;
diff --git a/arch/arm64/boot/dts/ti/k3-am62p5-var-som-symphony.dts b/arch/arm64/boot/dts/ti/k3-am62p5-var-som-symphony.dts
index 4bb92fde6ab8..5ba4ed56755b 100644
--- a/arch/arm64/boot/dts/ti/k3-am62p5-var-som-symphony.dts
+++ b/arch/arm64/boot/dts/ti/k3-am62p5-var-som-symphony.dts
@@ -224,7 +224,7 @@ &dphy0 {
 	status = "okay";
 };
 
-&main_i2c0{
+&main_i2c0 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_i2c0>;
 	clock-frequency = <400000>;
@@ -466,7 +466,7 @@ &sdhci1 {
 	pinctrl-0 = <&pinctrl_mmc1>;
 	disable-wp;
 	bootph-all;
-	status="okay";
+	status = "okay";
 };
 
 &ti_csi2rx0 {
-- 
2.51.0


