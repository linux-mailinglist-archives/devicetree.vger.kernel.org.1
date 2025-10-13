Return-Path: <devicetree+bounces-226290-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 72063BD6CB9
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 01:55:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 33CE84F5041
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 23:55:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BD8922F1FD1;
	Mon, 13 Oct 2025 23:55:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="LaL2RZzx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f179.google.com (mail-lj1-f179.google.com [209.85.208.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7BA02E5430
	for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 23:55:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760399719; cv=none; b=lwn+HyIM7v0w2gRUJXUk0yACUkG8eUWSs0xZIbePNYeAZ6zAvYdR9XEiiewi99kzw4cRbXBbFilhfsCY3bZyC9jZe0vprSw6VY6WG+1AcVEqqh8ei1hwg9K4aruMT+5XzRDhGt3JTxNN9vLMwOwGSGoNjWdjJRvfDgmo9PA6Ofg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760399719; c=relaxed/simple;
	bh=Df980L54ms5GjOVdXcHa9S2VzaB9Zl+UozeGBw/fseQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=M9GdTRD2BSkjBds074PBobScJG5YAF4o4UrKGfMCudQ8lpptvtRS0Ug9nbJTcLGzTD5Ht8cfX74EJc5r1btw5YQnOHR1NHSMfEG6/jNCTNFXe4vgsW/LJnfNr1nM5GBLo/FpG30XnaPJjLv2M4XsK2NdBjz+U4sjc05uJITjhBk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=LaL2RZzx; arc=none smtp.client-ip=209.85.208.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f179.google.com with SMTP id 38308e7fff4ca-36ac8376b6bso783111fa.2
        for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 16:55:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1760399716; x=1761004516; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3gKOrm+tCImTyJaklLPlljFMcPfGdKRp64lsD1BIpYU=;
        b=LaL2RZzxvAzuqsBN9Rfnwf1HWMRUSnW8Wv/4YvNjsE4wb0hWbl61yUmFDw3LSiTrY3
         r9WDQZUtjYOpfIMiXkC+hD7yTsF4VzpjkL4RkgK8uCZy5Ero6TtywqdnFocqE1MOydxp
         1XELE8+1amVfDNOHvze1/pGlxHDJcZXqTQJz+ShQqkPIJV41MxmJms0FggnebEiV4EhP
         ad0r3db6QcmrJFqkpO4j9X9ekwaKoViiqrcgwAhEQh/EOkC9oacFDtqSSuYOJGFVaVmC
         xLkI25uxZVwZlPw0AZMgNK/FSrbFu/rvgM5olPrB23cDQ99OQdClbAqHwhnhk+8KU5oh
         DqDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760399716; x=1761004516;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3gKOrm+tCImTyJaklLPlljFMcPfGdKRp64lsD1BIpYU=;
        b=MRUzT5UdyRg4LCTiq8PmoUeDz9bKe3jReR9sNZFMM1ZuNRU40iJQdEs2ykjZE0ua59
         IhUWnm0IMIoKD5HBuao5G1xeIwJk6b1y7N8oMU3QqwEpyZ694hvi+ygHaWizFFr0ZAN9
         I/AIMXXiEjEaaKcTcsUDpExkCzQwxa2wHUgBpL7By9HCInPjTJN/oVSvmPy+FwglYah4
         yzVuGi9ziBAr+9hMT0sQu80qQTRFOQAMK/VHkxd1T3ora5HRwL5B7lQtm2MmL+y19qtQ
         rHGoPLLvzLrOedbge/Pbw4TURUcdR1FqWXAC0rxdFl/TYNqXYHdq/vE/Gl91eKhWwNbG
         7+Tw==
X-Forwarded-Encrypted: i=1; AJvYcCXA/6fvwvwvWAzM8tHan8vnbWaf8uPdoP3ZIDBh4ZzxvhIejPP3jbXGaCOBGf957Xbt3xFxQVZ9Ye8R@vger.kernel.org
X-Gm-Message-State: AOJu0Yx5bA00lkMb5SpXr5+9tgaUu9biMUoLU4UiPaXikXmhRvb+pJdh
	YKsGm2trw6ARguxYNqfUYv2pDgDBpGEwmmh2NX0LCZcsMN76A3imhr5Jucfwlq3Tr00=
X-Gm-Gg: ASbGncufCCMTwh9kaRpfF60zOYidUasm9IV0UYHCc6ntomIocysf8redtRk4ZgUbSsy
	nqHElgK9mAJbXtzTm+OKWnsAayLJdt1LZ9NthNoRxgyzvgksa2DGjTJUy3ARO76X7CTQKtXSJfb
	TcN99c31mIVeHlpoDZd2QI6IKqQi6nDY1XNsuMYWTfi7A+HlStuzJANPCyMuIB7xB21ysbQRUIf
	ejWCZuzQ4P4auPWijwFtbi3PcUg1pK+HhFKsEVoDU/RF+7vFx97DyCh/J9MSRY+WL+QYkO2P0R0
	dPUV8xd7rsYljJvDy+7a2s9XcPmwAY9CgkBpfxgvm4AXkM4QntpdaU9zWORcc9/Rbjb7rMmT1/p
	UpoMvZdcOs0QrzWVkscvEEgQrhxjzrBE5Di0rrDoJGiUhDEmB/xH6ORDmbFHgChH5jp+N19+6LB
	RN6MugtBzV4jQCBi+yOSTbB7c=
X-Google-Smtp-Source: AGHT+IG/iQgh6tA8Db1h3Pgh7fOMKR/cnwkef9NgnTwIUXo4O2+jmz1y7xVsiJ7GbEYwbzi+FdD+lg==
X-Received: by 2002:a2e:a99d:0:b0:372:88a9:2d83 with SMTP id 38308e7fff4ca-37609f7e907mr34153031fa.8.1760399715681;
        Mon, 13 Oct 2025 16:55:15 -0700 (PDT)
Received: from thyme.. (91-159-24-186.elisa-laajakaista.fi. [91.159.24.186])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3762ea3ee2asm34880741fa.50.2025.10.13.16.55.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Oct 2025 16:55:15 -0700 (PDT)
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH 1/3] arm64: dts: qcom: sm8550: Add description of MCLK pins
Date: Tue, 14 Oct 2025 02:54:58 +0300
Message-ID: <20251013235500.1883847-2-vladimir.zapolskiy@linaro.org>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20251013235500.1883847-1-vladimir.zapolskiy@linaro.org>
References: <20251013235500.1883847-1-vladimir.zapolskiy@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add MCLK pin descriptions for all pins with such supported function
on SM8550 SoC.

Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8550.dtsi | 144 +++++++++++++++++++++++++++
 1 file changed, 144 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8550.dtsi b/arch/arm64/boot/dts/qcom/sm8550.dtsi
index 7724dba75db7..52deabc0bf12 100644
--- a/arch/arm64/boot/dts/qcom/sm8550.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8550.dtsi
@@ -4277,6 +4277,150 @@ tlmm: pinctrl@f100000 {
 			gpio-ranges = <&tlmm 0 0 211>;
 			wakeup-parent = <&pdc>;
 
+			cam0_default: cam0-default-state {
+				mclk-pins {
+					pins = "gpio100";
+					function = "cam_mclk";
+					drive-strength = <2>;
+					bias-disable;
+				};
+			};
+
+			cam0_sleep: cam0-sleep-state {
+				mclk-pins {
+					pins = "gpio100";
+					function = "cam_mclk";
+					drive-strength = <2>;
+					bias-pull-down;
+				};
+			};
+
+			cam1_default: cam1-default-state {
+				mclk-pins {
+					pins = "gpio101";
+					function = "cam_mclk";
+					drive-strength = <2>;
+					bias-disable;
+				};
+			};
+
+			cam1_sleep: cam1-sleep-state {
+				mclk-pins {
+					pins = "gpio101";
+					function = "cam_mclk";
+					drive-strength = <2>;
+					bias-pull-down;
+				};
+			};
+
+			cam2_default: cam2-default-state {
+				mclk-pins {
+					pins = "gpio102";
+					function = "cam_mclk";
+					drive-strength = <2>;
+					bias-disable;
+				};
+			};
+
+			cam2_sleep: cam2-sleep-state {
+				mclk-pins {
+					pins = "gpio102";
+					function = "cam_mclk";
+					drive-strength = <2>;
+					bias-pull-down;
+				};
+			};
+
+			cam3_default: cam3-default-state {
+				mclk-pins {
+					pins = "gpio103";
+					function = "cam_mclk";
+					drive-strength = <2>;
+					bias-disable;
+				};
+			};
+
+			cam3_sleep: cam3-sleep-state {
+				mclk-pins {
+					pins = "gpio103";
+					function = "cam_mclk";
+					drive-strength = <2>;
+					bias-pull-down;
+				};
+			};
+
+			cam4_default: cam4-default-state {
+				mclk-pins {
+					pins = "gpio104";
+					function = "cam_aon_mclk4";
+					drive-strength = <2>;
+					bias-disable;
+				};
+			};
+
+			cam4_sleep: cam4-sleep-state {
+				mclk-pins {
+					pins = "gpio104";
+					function = "cam_aon_mclk4";
+					drive-strength = <2>;
+					bias-pull-down;
+				};
+			};
+
+			cam5_default: cam5-default-state {
+				mclk-pins {
+					pins = "gpio105";
+					function = "cam_mclk";
+					drive-strength = <2>;
+					bias-disable;
+				};
+			};
+
+			cam5_sleep: cam5-sleep-state {
+				mclk-pins {
+					pins = "gpio105";
+					function = "cam_mclk";
+					drive-strength = <2>;
+					bias-pull-down;
+				};
+			};
+
+			cam6_default: cam6-default-state {
+				mclk-pins {
+					pins = "gpio106";
+					function = "cam_mclk";
+					drive-strength = <2>;
+					bias-disable;
+				};
+			};
+
+			cam6_sleep: cam6-sleep-state {
+				mclk-pins {
+					pins = "gpio106";
+					function = "cam_mclk";
+					drive-strength = <2>;
+					bias-pull-down;
+				};
+			};
+
+			cam7_default: cam7-default-state {
+				mclk-pins {
+					pins = "gpio107";
+					function = "cam_mclk";
+					drive-strength = <2>;
+					bias-disable;
+				};
+			};
+
+			cam7_sleep: cam7-sleep-state {
+				mclk-pins {
+					pins = "gpio107";
+					function = "cam_mclk";
+					drive-strength = <2>;
+					bias-pull-down;
+				};
+			};
+
 			cci0_0_default: cci0-0-default-state {
 				sda-pins {
 					pins = "gpio110";
-- 
2.49.0


