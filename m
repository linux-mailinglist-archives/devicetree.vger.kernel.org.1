Return-Path: <devicetree+bounces-167353-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 67962A8A027
	for <lists+devicetree@lfdr.de>; Tue, 15 Apr 2025 15:54:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6BD494451B3
	for <lists+devicetree@lfdr.de>; Tue, 15 Apr 2025 13:53:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DA8491F4622;
	Tue, 15 Apr 2025 13:53:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="OXqnwST7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D7DA1C84B7
	for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 13:53:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744725206; cv=none; b=pzBluBmJrGh8lEhb7zqdhWBnZgIbBfrbQ2KKqUcO2+s+N9bo6WEeyvs9huBteRk3C23PoTm60Hn0N3UnPKFhYIz5tYLxujQuBKpVy9bpVROYmQkzsnUkYYmhtoB+/Be/mjxceN4YjJ3bLloOTkw4cRFVm0eqCJXKiY/5ZB/5TVc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744725206; c=relaxed/simple;
	bh=pasHWSU2nGmm0wTdGpnA+YTR6fwTfPInkJzIhRwnGrU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=r8kVB8C7f98vfkMqvenHmX7I6L66Y69vIJuSdLcQ0WOdkU6SQf8fMSG/Q6ynw1KWiMx7lgbbrbtb7I8Ovz2V+dlLvp8mscXJo3rBEcapBSvXEfARSY5ffE+AeeO25mHnedv5p3lm8nhDEZjXT8a5JujPXmsiOhdyE8rYcOxdO8o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=OXqnwST7; arc=none smtp.client-ip=209.85.218.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f49.google.com with SMTP id a640c23a62f3a-ac3fcf5ab0dso962187466b.3
        for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 06:53:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1744725202; x=1745330002; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Pge4o9cHBqaAOg3mTeBAmeDqZJrFMUn1AiEvtXGp2iw=;
        b=OXqnwST7WFfDrifUexDB9Soe7hM9674ZD3EZbzJsHKIxHd1b3t8VkB7dzCB4mpAaba
         XkuiEUTS5Xto/qnjouI91TO2T1t9Xh566Yz13xWMg0/oR9nEkoipyRkzLQVDDoOK1Aba
         2ixY+FobFkHu/pSZmcavbcSs5lFJsp/Ao8clM8Yb4R58ujFwSrr20M0WxPNvuRx8JfhQ
         DAeOJFcM7vyODG6kP08l+fwS0RRQBUtwp6mVabwmNvDGD5k73JKb+Bc1kfkfXQP3ifqf
         hFtOIQD3LgQpdvAv8DppiAnF1taoSzIk/GfbVOBR89ZGX6+twoYMywX8McdC4A1MErlD
         Kgdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744725202; x=1745330002;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Pge4o9cHBqaAOg3mTeBAmeDqZJrFMUn1AiEvtXGp2iw=;
        b=jdEUcZI5eWAwSwTYPCQz9YOIFEWuszXY4HWnWikorU0xN/RN8FEpKSdx8SUi1EGTP2
         l1oDXGV+x2aiGQ3yLFSyM1UD3tpbdU5hAitkXLpBfeH1c7b0dPQh2iBpvYFwnS+pW7q0
         9bgm4xbqrBbiNgQA8cZhtUupUTDPAZSaNzuqTr5PvkFvZxF8L8e+k/d8/YrJAStebuHB
         6eOXp25FVEEtwUh4lEsaVk1K6HRifmV0FDhJfAibfmzOrFWJczSbgDKEIId4T7ozZnTW
         8pX3+Xn1lwDdqQ9OFnzNdg7MlQ0yMQ1WhCPEeVg2gzZQUyBdrarPPFKTr/T82VbhsoeB
         wIPQ==
X-Forwarded-Encrypted: i=1; AJvYcCWDv/vvUEWCd3YTuThc4Hnq4ReEtlgO10jIkMwyIGsEcc9jJlLsJ0Vo3TgEWdArWOkF/3auh3N26s5w@vger.kernel.org
X-Gm-Message-State: AOJu0YziOTQHsXQSv+57WR8owdYZ2cYceidDrjXiP9wFtQtzn+yJ413q
	K8SHkpNRvuePvXGEJGrVhxpcHiV4ceM22/CznpZzfg12Lgx64MbzTUZrIV0d1P4=
X-Gm-Gg: ASbGncsW6png3T9mnntGlNGryVNWkF/0aLIZB+hnzkGEWWGOOgKMhrOZyKNJ6pcYgz1
	ap8dvStlWnDfkn7vMd4Gx5U9k41Mq22mygAGUq09dYsnACgpu+TnRUdJ42CMePIWoV3TeWps31a
	Pr+WaS+Ayv/0k17ehDcChEa7QcuOzvVhqZqM3RjZnWjo4Xepn5LBjdMULa4yGmNb6vEvQDTnQXa
	pja16CZhgRHSl05FyExkyD2eGIbG1/DC2O3TYMJ/qMfxZnh5J0glBlf57FC+tBXZkM8HdwSoBWh
	8cCpzh309LkzlASZi1FxWPXzXUnKvu/lrM3/tockRE3H0zcq+mWN5Q8=
X-Google-Smtp-Source: AGHT+IFzbpbH4GLJ5InXnSEyFRv0wczgq6f5oEy25Mu0yL/aDFPOfMB7Jlpd8NTCxr4BmMOv9fFWgw==
X-Received: by 2002:a17:907:8690:b0:ac3:446d:142 with SMTP id a640c23a62f3a-acad3445e2fmr1369567166b.2.1744725202370;
        Tue, 15 Apr 2025 06:53:22 -0700 (PDT)
Received: from [127.0.0.2] ([2a02:2454:ff21:ef41:7b18:2529:5ce1:343d])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-acadcc21a44sm681379166b.177.2025.04.15.06.53.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Apr 2025 06:53:22 -0700 (PDT)
From: Stephan Gerhold <stephan.gerhold@linaro.org>
Date: Tue, 15 Apr 2025 15:52:48 +0200
Subject: [PATCH 5/8] arm64: dts: qcom: apq8016-sbc: Move non-console UART
 pinctrl to board
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250415-msm8916-console-pinctrl-v1-5-a1d33ea994b9@linaro.org>
References: <20250415-msm8916-console-pinctrl-v1-0-a1d33ea994b9@linaro.org>
In-Reply-To: <20250415-msm8916-console-pinctrl-v1-0-a1d33ea994b9@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Sam Day <me@samcday.com>, Casey Connolly <caleb.connolly@linaro.org>
X-Mailer: b4 0.14.2

Prepare for removing the generic UART pinctrl templates from msm8916.dtsi
by copying the definition for the 4 pin UART1 instance into apq8016-sbc.dts
Having it defined separately in the board DT file makes it clear that the
set of pins/pull etc are specific to the board and UART use case.

No functional change.

Signed-off-by: Stephan Gerhold <stephan.gerhold@linaro.org>
---
 arch/arm64/boot/dts/qcom/apq8016-sbc.dts | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/apq8016-sbc.dts b/arch/arm64/boot/dts/qcom/apq8016-sbc.dts
index f12a5e2b1e8c2cce6e85b8444c97a7e0d7b7c58f..b0c594c5f236c9c1d334e6acfcaa7e41c1f9f3a5 100644
--- a/arch/arm64/boot/dts/qcom/apq8016-sbc.dts
+++ b/arch/arm64/boot/dts/qcom/apq8016-sbc.dts
@@ -597,6 +597,21 @@ &tlmm {
 		"USR_LED_2_CTRL", /* GPIO 120 */
 		"SB_HS_ID";
 
+	blsp_uart1_default: blsp-uart1-default-state {
+		/* TX, RX, CTS_N, RTS_N */
+		pins = "gpio0", "gpio1", "gpio2", "gpio3";
+		function = "blsp_uart1";
+		drive-strength = <16>;
+		bias-disable;
+	};
+
+	blsp_uart1_sleep: blsp-uart1-sleep-state {
+		pins = "gpio0", "gpio1", "gpio2", "gpio3";
+		function = "gpio";
+		drive-strength = <2>;
+		bias-pull-down;
+	};
+
 	sdc2_cd_default: sdc2-cd-default-state {
 		pins = "gpio38";
 		function = "gpio";

-- 
2.47.2


