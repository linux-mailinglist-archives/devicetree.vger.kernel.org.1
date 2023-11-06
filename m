Return-Path: <devicetree+bounces-14242-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CD08A7E3006
	for <lists+devicetree@lfdr.de>; Mon,  6 Nov 2023 23:44:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id F02AA1C209D0
	for <lists+devicetree@lfdr.de>; Mon,  6 Nov 2023 22:44:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4B23923768;
	Mon,  6 Nov 2023 22:44:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="TDEXNwSD"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D45A61D528
	for <devicetree@vger.kernel.org>; Mon,  6 Nov 2023 22:44:23 +0000 (UTC)
Received: from mail-pf1-x430.google.com (mail-pf1-x430.google.com [IPv6:2607:f8b0:4864:20::430])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8FE1BD7C
	for <devicetree@vger.kernel.org>; Mon,  6 Nov 2023 14:44:22 -0800 (PST)
Received: by mail-pf1-x430.google.com with SMTP id d2e1a72fcca58-6c33ab26dddso3569357b3a.0
        for <devicetree@vger.kernel.org>; Mon, 06 Nov 2023 14:44:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1699310662; x=1699915462; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nWMk5KKMdtBkcN085aCokVTLRPwC2LwFd3Blu74oh64=;
        b=TDEXNwSDDuuZLSeR2MUk+GjtIaoqGaOFNCCqEfS7y0ql3Od45oPwhwxxCEyeP/gbAY
         MhW/ZaKbujnIZrrOLohyqUqsqZp+ODZnksDpyK/d9OIxl78qEF7qH6xARFPSg2nIITbF
         IBZnEM77rwwcPzll9MeHZyKD3/bpYNrQFWA4s=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699310662; x=1699915462;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nWMk5KKMdtBkcN085aCokVTLRPwC2LwFd3Blu74oh64=;
        b=T3mRuWVb1C7AtTCT+RE8EceQ1hkzxI2Ja/HRWtEm5p6uJ1+biW0u/p9cPNE2Ekojk/
         YV/cl2QDpTT1rsYJcLGOqSP9ppQDQV/bSMqLKV1U2Zir5vUBywNMU+ggghDtZf+1ETps
         3V8JRVn9n9/RgV0cALrKWYDUEB73GOdUn8QFtV4yHN1cl8nFBYHmZyKfN+1rWBLvE8gg
         z53crtZeXooLauXDTZpPirTc/Ou0Toa6dfM1ovHrz3tfW6f5Jk5VIYs1Jfb4+X09iU3o
         Z37P8N5lbYQ+4aOjSYRNN+kZVsmoHSCbl0p3IfK2EDD8nEZWzOyBY6N6rj1Y/W1MFu5H
         WBJg==
X-Gm-Message-State: AOJu0YxrAqada4p0x1yLWvBcg1TMOjFhedJhLr7IZ3oCFpU4EMshe2sZ
	XOojAej2eDQlNDTe2AtxVJ95KA==
X-Google-Smtp-Source: AGHT+IE/XRAlVANXomG5FTcOxakhrp6AR2ELR0IIoHu0XMoLIYgpwNN7jHp7jr+xX4zf/HXT5nB2BQ==
X-Received: by 2002:a05:6a00:134b:b0:690:bdda:7c35 with SMTP id k11-20020a056a00134b00b00690bdda7c35mr29364786pfu.1.1699310662052;
        Mon, 06 Nov 2023 14:44:22 -0800 (PST)
Received: from tictac2.mtv.corp.google.com ([2620:15c:9d:2:16a7:2c01:9126:36a4])
        by smtp.gmail.com with ESMTPSA id c10-20020a056a00248a00b006b725b2158bsm6043402pfv.41.2023.11.06.14.44.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Nov 2023 14:44:21 -0800 (PST)
From: Douglas Anderson <dianders@chromium.org>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Wim Van Sebroeck <wim@linux-watchdog.org>,
	Guenter Roeck <linux@roeck-us.net>
Cc: swboyd@chromium.org,
	linux-watchdog@vger.kernel.org,
	Rob Herring <robh+dt@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	Douglas Anderson <dianders@chromium.org>,
	Andy Gross <agross@kernel.org>,
	Sai Prakash Ranjan <quic_saipraka@quicinc.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 5/9] arm64: dts: qcom: sm8250: Make watchdog bark interrupt edge triggered
Date: Mon,  6 Nov 2023 14:43:32 -0800
Message-ID: <20231106144335.v2.5.I2910e7c10493d896841e9785c1817df9b9a58701@changeid>
X-Mailer: git-send-email 2.42.0.869.gea05f2083d-goog
In-Reply-To: <20231106144335.v2.1.Ic7577567baff921347d423b722de8b857602efb1@changeid>
References: <20231106144335.v2.1.Ic7577567baff921347d423b722de8b857602efb1@changeid>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

As described in the patch ("arm64: dts: qcom: sc7180: Make watchdog
bark interrupt edge triggered"), the Qualcomm watchdog timer's bark
interrupt should be configured as edge triggered. Make the change.

Fixes: 46a4359f9156 ("arm64: dts: qcom: sm8250: Add watchdog bark interrupt")
Reviewed-by: Guenter Roeck <linux@roeck-us.net>
Reviewed-by: Stephen Boyd <swboyd@chromium.org>
Signed-off-by: Douglas Anderson <dianders@chromium.org>
---

(no changes since v1)

 arch/arm64/boot/dts/qcom/sm8250.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8250.dtsi b/arch/arm64/boot/dts/qcom/sm8250.dtsi
index be970472f6c4..72db75ca7731 100644
--- a/arch/arm64/boot/dts/qcom/sm8250.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8250.dtsi
@@ -6018,7 +6018,7 @@ watchdog@17c10000 {
 			compatible = "qcom,apss-wdt-sm8250", "qcom,kpss-wdt";
 			reg = <0 0x17c10000 0 0x1000>;
 			clocks = <&sleep_clk>;
-			interrupts = <GIC_SPI 0 IRQ_TYPE_LEVEL_HIGH>;
+			interrupts = <GIC_SPI 0 IRQ_TYPE_EDGE_RISING>;
 		};
 
 		timer@17c20000 {
-- 
2.42.0.869.gea05f2083d-goog


