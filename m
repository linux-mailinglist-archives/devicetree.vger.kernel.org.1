Return-Path: <devicetree+bounces-24363-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id B9F0780EDA2
	for <lists+devicetree@lfdr.de>; Tue, 12 Dec 2023 14:31:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6A6431F21705
	for <lists+devicetree@lfdr.de>; Tue, 12 Dec 2023 13:31:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5E66561FB6;
	Tue, 12 Dec 2023 13:31:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="l2m4WXGl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com [IPv6:2a00:1450:4864:20::636])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AA547AF
	for <devicetree@vger.kernel.org>; Tue, 12 Dec 2023 05:31:47 -0800 (PST)
Received: by mail-ej1-x636.google.com with SMTP id a640c23a62f3a-a22eba5a290so68716266b.3
        for <devicetree@vger.kernel.org>; Tue, 12 Dec 2023 05:31:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702387906; x=1702992706; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Fzt8RX1Ws07cAJckt2n2AWAh//EFivzd7IWb/0bHK4A=;
        b=l2m4WXGl1jxkqRXU7VZg7Q3r2Wz9H7vGhcwXXDK9Dosq+0TcJB3VcgwOkPdBHByOiD
         rbwnJ5Wr1HhzhudWVIUFX8yY5aoXrzAQAanzBet5LI8KxyJIAkwH8BSEhgZmGMevLUIR
         HFd78EI0aBrwsKl27cBtFsU6P0TrGnG9ahE8iiqmlrInyONcIcX0swmKoszhBVRaiafU
         mzOwcDwQQYaFBuNfd5AEFsEcm/h22fDVl3F8+TU4ETVDrfGFYXoK4ng2DYLZ5EeLqR1r
         z4ZXrbxQJso6ijOedwtN/IaX8e1g/SYM6J6RYaQzjQBY5xbrslbNO4jv/Q+/f22v/Xmt
         mCWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702387906; x=1702992706;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Fzt8RX1Ws07cAJckt2n2AWAh//EFivzd7IWb/0bHK4A=;
        b=K7VivH6/mjmaKAw8WJEwm4Zr2aQpUkWmMzsduUYUPyDaMm3+gNUJsOp+0uUtly+lds
         rsp3I4aVQ0Q1hL5hhxIm8nnyYKfFN7Lt0S0L8NivIjbC/EMb/aG6/q8JATYk4WaUH3tZ
         Cjk4M34xYYZ5TbZz6HfCuW5KCMWTLYA36WoHgnkYpJuM4gYf+OVEi4NGoRhPa9BSeVjW
         LTvWoH9RRdhDTRWynMrwdrdySddKCdjop79bXtFu/WbuMbY604NvyQxlRBM5rM+G0R05
         WnqVtceB3kHTncPljLInTkMNArZ5YVHWBo8iIsLRkzAvkQniAq9Mf2fasSTG0b8WB1e5
         cBJA==
X-Gm-Message-State: AOJu0Yy8ssR9tE45Vr0u59jzyc8qyySyOxxmQKGB+TI8oh5GZDlTNbtQ
	6Esr2PUKVtWqeH1mVpiTy0XibQ==
X-Google-Smtp-Source: AGHT+IEP8WCwq/kmQqr/nuMHsHM2LlMha+dw916naYx13uzD1feAB00wBX3EKf6MLb6o6Yv1E7jOtQ==
X-Received: by 2002:a17:906:1053:b0:a19:a19b:560a with SMTP id j19-20020a170906105300b00a19a19b560amr2496624ejj.154.1702387906137;
        Tue, 12 Dec 2023 05:31:46 -0800 (PST)
Received: from krzk-bin.. ([178.197.218.27])
        by smtp.gmail.com with ESMTPSA id vw12-20020a170907a70c00b00a1c904675cfsm6228811ejc.29.2023.12.12.05.31.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Dec 2023 05:31:45 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] arm64: dts: qcom: sm8650: drop unneeded assigned-clocks from WSA macro
Date: Tue, 12 Dec 2023 14:31:43 +0100
Message-Id: <20231212133143.100575-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Review of v1 patch resulting in commit 58872a54e4a8 ("arm64: dts: qcom:
sm8650: add ADSP audio codec macros") pointed to remove unneeded
assigned-clock-rates from macro codecs.  One assignment was left in WSA
macro codec, so drop it now as it is redundant: these clocks have fixed
19.2 MHz frequency.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8650.dtsi | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8650.dtsi b/arch/arm64/boot/dts/qcom/sm8650.dtsi
index 425e1e50d945..3d55d08649ca 100644
--- a/arch/arm64/boot/dts/qcom/sm8650.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8650.dtsi
@@ -2773,9 +2773,6 @@ lpass_wsamacro: codec@6b00000 {
 				      "dcodec",
 				      "fsgen";
 
-			assigned-clocks = <&q6prmcc LPASS_CLK_ID_WSA_CORE_TX_MCLK LPASS_CLK_ATTRIBUTE_COUPLE_NO>;
-			assigned-clock-rates = <19200000>;
-
 			#clock-cells = <0>;
 			clock-output-names = "mclk";
 			#sound-dai-cells = <1>;
-- 
2.34.1


