Return-Path: <devicetree+bounces-245500-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id EDEECCB182E
	for <lists+devicetree@lfdr.de>; Wed, 10 Dec 2025 01:38:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 34A0D310134D
	for <lists+devicetree@lfdr.de>; Wed, 10 Dec 2025 00:37:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2E7911D5CD1;
	Wed, 10 Dec 2025 00:37:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Ek/7y7xT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f52.google.com (mail-oa1-f52.google.com [209.85.160.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56D051B87C9
	for <devicetree@vger.kernel.org>; Wed, 10 Dec 2025 00:37:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765327066; cv=none; b=EjwfsagsH43gK4QInem1GgBcE/tSRwFJ2R2m5o+PGSRZEuT+10nU3FyiSNhXBLlyBB19jshb2Fzmkif/RmBPovN3y5Iw9koHaDIYvKN/JYpe2WnNDb69Q/XpRP4hy/t88K+YZJgRZhNEoAJZra0SCNHdFLkhYhUEFE/BZd7C+LY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765327066; c=relaxed/simple;
	bh=kMV2klR1DStzeKF01dgOaxxEEFLWBWwy94a3z1Sv2lM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=e0OdkYgD4BsBE8MdVQwjCtGqYJrBlLJm/NSLwUgmL0AQ/RjS1xBzDuS7ouRdaWIWZaa35PAkN7D7ugF0r9IDxWI29VHDzIfxp2TH2c7d/Ablg0Zfqi3e6X1puQdLL8d09tfjRyadGMtTlr1AYvSSY2F+TsaTccMXeIOCukoICb4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Ek/7y7xT; arc=none smtp.client-ip=209.85.160.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oa1-f52.google.com with SMTP id 586e51a60fabf-3e7ead70738so3671027fac.0
        for <devicetree@vger.kernel.org>; Tue, 09 Dec 2025 16:37:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765327063; x=1765931863; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cTnBfhCPlftBcGJdY/ReLgnu94bb7n8RiqGchanYiDU=;
        b=Ek/7y7xTnPtM6ZvYYrhiuJ8zoWIsOh3W8CvyjYjorDjpDgW44/80kZ1pWAG6BJmQPh
         DAt1bYMzjvvHFzVVQoQGv4xY0s5FDeEXl8ziMZ2g8qj1y21Dd4GnEaQIfVki7G5XyJqL
         Z6nmEvtglTzAUlmjz2z7p7N9V7DJygqwM4NnFnzMc4QSvqXvzsTJMOuHPxS5DUScxkH1
         xXrz2Frv6f90hedYiA9daM+9ohmOP69aZfvYVzOOfMa4i9UXF3KmGbznC+XCnIHRQXDs
         npz46EcfWgxeA26I0i6vHJFvKs1Fmue2/0HFE/qN9MrbbAErr2WEuwnhoIWAd1UwF6dO
         OOEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765327063; x=1765931863;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=cTnBfhCPlftBcGJdY/ReLgnu94bb7n8RiqGchanYiDU=;
        b=hRg/iVf13+Aynyc6g8jQiZHbgHo577htTVMArP5Mo6KbS3bmH0a0ZYzSAECCBGgxDc
         Z/67gHmOQEftYhLiiMzdUePxAzsIeWxvWOjVj7p+WIacBOy2r6Fyz18GE6WSjoBiS7jn
         GAZz29C5KGFPO4EQOUAmYji/146kJvrIRDFLj0s0tHuMWqxXurRyEpfAEzxYf5r57612
         tTnJZGRz5aabvFQuDzEEyH3Sbo68PpEsR1nKOPJiqX8/LFNnNR5CNctiux+sQg1V7R2C
         9Uv9CJZ8B3pJ2f+U3Uvj0Ce9B9s/RIUxz56eYU26EeZYIoFpsQYRTBG9hHzYqSSlChy1
         teOw==
X-Forwarded-Encrypted: i=1; AJvYcCVQt0oswrEmB2ZGp/6ETnZaFORNsaWyQaG4JOsGld2gaaaUVueTVagWy4msgg4ErguJ1RePICi2FOQ3@vger.kernel.org
X-Gm-Message-State: AOJu0YxTcPP7PlqWPylHm4/FSZ3CTJJdVIdesDjpGMr6SV/bv4mPTBbI
	OrtCofrDgoJ5jhNzUDWTlLWYewJeYdg1cf8hBFkjQW3olYURSfRxLx9V
X-Gm-Gg: ASbGncvEZwA7PMoRP5J8VtG8hOeaFkOR0QEEqit3AWo8Ch9dwikLU/Wi5TRomSDqMFz
	ztFPsehsEaTclecawC1yeMobfFOvwqfmHxIaLgnGBTZSFAgcpk7OL3xxi4N2BrxebJOHVVS0nQq
	1pb5vEzY26os1PuUCsTGxZjE8m0Sjsvm1JDTk3eyx81bfth0xTOVEDGcTYSGo3cgWilwrIipe7H
	ud9bMY3s6ArSQszz2KDXA/SZuKrTrh85YX2zcmUm5m1P37Uf/9mwJul/ndAYwqMVJASWXxHpxU6
	eWBD0rLSrHiLTaUNOjvTgtCur8EZZPsS/uSfqvEYC8gUqKqYUA/oFta39tYPZYyrzqSmTS3tqbw
	ZKWJNagQnFkPI4JaTP+8MJ0YaOtsCEsq9jxTJm8UemmjQ8XWSXHlNEPmKHSf/M7juPePKkqArBU
	ppXRwa5gWApxvO28Qfp4h8EWScGWcqt844akEQBQCXUg3kBOj1Vxyc4IomgtXNNGWF95RTmtkXe
	yyESngb8JWFwxx0cdUDT+4rbTZ1
X-Google-Smtp-Source: AGHT+IFXtFBZQ4Phs+DA2gIk8zEB/PSTinPp9kLxq66H0kohPSDEsTuKzeL4L4ahy6FStdu0aIQDxw==
X-Received: by 2002:a05:6820:168a:b0:659:9a49:8eba with SMTP id 006d021491bc7-65b2ad5bca7mr509385eaf.62.1765327063516;
        Tue, 09 Dec 2025 16:37:43 -0800 (PST)
Received: from nukework.lan (c-98-57-15-22.hsd1.tx.comcast.net. [98.57.15.22])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-6597ea6807esm8588826eaf.0.2025.12.09.16.37.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Dec 2025 16:37:42 -0800 (PST)
From: Alexandru Gagniuc <mr.nuke.me@gmail.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>
Cc: mathieu.poirier@linaro.org,
	linux-arm-msm@vger.kernel.org,
	linux-remoteproc@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Alexandru Gagniuc <mr.nuke.me@gmail.com>
Subject: [PATCH RFC 3/3] arm64: dts: qcom: ipq8074: add remoteproc nodes
Date: Tue,  9 Dec 2025 18:37:25 -0600
Message-ID: <20251210003729.3909663-4-mr.nuke.me@gmail.com>
X-Mailer: git-send-email 2.45.1
In-Reply-To: <20251210003729.3909663-1-mr.nuke.me@gmail.com>
References: <20251210003729.3909663-1-mr.nuke.me@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add the nodes for the WCSS remoteproc loader on IPQ8074, so that there
a use case for the DT bindings. GCC_WCSSAON_RESET is not implemented
by the GCC reset controller, so use a placeholder value for now. Leave
the node disabled so that remoteproc doesn't start up with the missing
reset.

Signed-off-by: Alexandru Gagniuc <mr.nuke.me@gmail.com>
---
 arch/arm64/boot/dts/qcom/ipq8074.dtsi | 79 +++++++++++++++++++++++++++
 1 file changed, 79 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/ipq8074.dtsi b/arch/arm64/boot/dts/qcom/ipq8074.dtsi
index 256e12cf6d544..86369fa680553 100644
--- a/arch/arm64/boot/dts/qcom/ipq8074.dtsi
+++ b/arch/arm64/boot/dts/qcom/ipq8074.dtsi
@@ -108,6 +108,11 @@ memory@4ac00000 {
 			reg = <0x0 0x4ac00000 0x0 0x400000>;
 			no-map;
 		};
+
+		q6_region: wcnss@4b000000 {
+			reg = <0x0 0x4b000000 0x0 0x03700000>;
+			no-map;
+		};
 	};
 
 	firmware {
@@ -390,6 +395,11 @@ tcsr: syscon@1937000 {
 			reg = <0x01937000 0x21000>;
 		};
 
+		tcsr_q6: syscon@1945000 {
+			compatible = "qcom,tcsr-ipq8074", "syscon";
+			reg = <0x01945000 0xe000>;
+		};
+
 		spmi_bus: spmi@200f000 {
 			compatible = "qcom,spmi-pmic-arb";
 			reg = <0x0200f000 0x001000>,
@@ -1003,6 +1013,50 @@ pcie@0 {
 				ranges;
 			};
 		};
+
+		q6v5_wcss: remoteproc@cd00000 {
+			compatible = "qcom,ipq8074-wcss-pil";
+			reg = <0x0cd00000 0x4040>,
+			      <0x004ab000 0x20>;
+			reg-names = "qdsp6",
+				    "rmb";
+
+			interrupts-extended = <&intc GIC_SPI 325 IRQ_TYPE_EDGE_RISING>,
+					      <&wcss_smp2p_in 0 0>,
+					      <&wcss_smp2p_in 1 0>,
+					      <&wcss_smp2p_in 2 0>,
+					      <&wcss_smp2p_in 3 0>;
+			interrupt-names = "wdog",
+					  "fatal",
+					  "ready",
+					  "handover",
+					  "stop-ack";
+
+			resets = <&gcc 0xffff>, /* GCC_WCSSAON_RESET */
+				 <&gcc GCC_WCSS_BCR>,
+				 <&gcc GCC_WCSS_Q6_BCR>;
+
+			reset-names = "wcss_aon_reset",
+				      "wcss_reset",
+				      "wcss_q6_reset";
+
+			memory-region = <&q6_region>;
+			qcom,halt-regs = <&tcsr_q6 0xa000 0xd000 0x0>;
+
+			qcom,smem-states = <&wcss_smp2p_out 0>,
+					   <&wcss_smp2p_out 1>;
+			qcom,smem-state-names = "shutdown",
+						"stop";
+
+			status = "disabled";
+
+			glink-edge {
+				interrupts = <GIC_SPI 321 IRQ_TYPE_EDGE_RISING>;
+				label = "rtr";
+				qcom,remote-pid = <1>;
+				mboxes = <&apcs_glb 8>;
+			};
+		};
 	};
 
 	timer {
@@ -1182,4 +1236,29 @@ wcss-phyb1-crit {
 			};
 		};
 	};
+
+	wcss: smp2p-wcss {
+		compatible = "qcom,smp2p";
+		qcom,smem = <435>, <428>;
+
+		interrupt-parent = <&intc>;
+		interrupts = <GIC_SPI 322 IRQ_TYPE_EDGE_RISING>;
+
+		mboxes = <&apcs_glb 9>;
+
+		qcom,local-pid = <0>;
+		qcom,remote-pid = <1>;
+
+		wcss_smp2p_out: master-kernel {
+			qcom,entry-name = "master-kernel";
+			#qcom,smem-state-cells = <1>;
+		};
+
+		wcss_smp2p_in: slave-kernel {
+			qcom,entry-name = "slave-kernel";
+
+			interrupt-controller;
+			#interrupt-cells = <2>;
+		};
+	};
 };
-- 
2.45.1


