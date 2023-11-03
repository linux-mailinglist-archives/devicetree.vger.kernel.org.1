Return-Path: <devicetree+bounces-13841-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B7897E0C47
	for <lists+devicetree@lfdr.de>; Sat,  4 Nov 2023 00:36:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 93A12281C96
	for <lists+devicetree@lfdr.de>; Fri,  3 Nov 2023 23:36:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 351A3262A4;
	Fri,  3 Nov 2023 23:36:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="GtQIQU4S"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A4DF626294
	for <devicetree@vger.kernel.org>; Fri,  3 Nov 2023 23:35:59 +0000 (UTC)
Received: from mail-pf1-x42d.google.com (mail-pf1-x42d.google.com [IPv6:2607:f8b0:4864:20::42d])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8C495D62
	for <devicetree@vger.kernel.org>; Fri,  3 Nov 2023 16:35:57 -0700 (PDT)
Received: by mail-pf1-x42d.google.com with SMTP id d2e1a72fcca58-6c398717726so485019b3a.2
        for <devicetree@vger.kernel.org>; Fri, 03 Nov 2023 16:35:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1699054557; x=1699659357; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xb8JsrX5d6MFcJDdSA4UiCRqCBZzbS6joY26UIgwWL4=;
        b=GtQIQU4SLxZlb2bm7rrC43JN6bYg4YGugmo9AWLNo5pRYD9vIN/w7EDhF5zGOSp0+j
         34gNThY1Yhkb6FoAZFxi4aCe4FS2mshF02UWv1j35rA3X4dvhCo+ykeRESMy+fIVgHLW
         0V6ZsWcp1eKyzdDiToYTxbLXqSausfu1aoR9I=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699054557; x=1699659357;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xb8JsrX5d6MFcJDdSA4UiCRqCBZzbS6joY26UIgwWL4=;
        b=q6e3Uw13bW2ugT4803a3UuySyeouD2U88Q+vVD6DVRBfw5kp7QApyuechxEbd6XvC/
         a7vTofLP85wge7yaGpNebQI5mrFYpFwztpCMTv9v8ii7B1RTxC2BNlA5EXh/PHG3My6B
         rpHEvB3UfY4pteIyTLb6z5Ch0DrDjY5yFjluGStVGo0Y9FrywoYzGdc0k31mIeD3fOU6
         Q/Oy++xdP5BtPgiGDr8LRxWE9kGnnuS6NCRcVNHn6w0WTC+Mbfp8PQn5hsAVy1s0aIjj
         iuuxhspx477IZHst58wqZ7WIRpTMbN6J85km2YFJdg1uy7rWrd35SPULgt6fPZX3FLYT
         FGRQ==
X-Gm-Message-State: AOJu0YzXe6d60DYoPQcE0Eckk5W7A/6jf9fGtmXaGlXxJ+NNybXDmNgT
	ArozoavecSEzkYEr/UnzhWbh0g==
X-Google-Smtp-Source: AGHT+IHZFtWMPycHBKtwCqbtmyUlVrCGcQ2vWizPaYDMhaiamQlC/2iMPYNgM07+ZC14dALGWDhH8Q==
X-Received: by 2002:a05:6a21:71c7:b0:181:261f:f346 with SMTP id ay7-20020a056a2171c700b00181261ff346mr10955837pzc.26.1699054556970;
        Fri, 03 Nov 2023 16:35:56 -0700 (PDT)
Received: from tictac2.mtv.corp.google.com ([2620:15c:9d:2:5195:5e72:f5bb:e3f0])
        by smtp.gmail.com with ESMTPSA id jg5-20020a17090326c500b001b8b2a6c4a4sm1878114plb.172.2023.11.03.16.35.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Nov 2023 16:35:56 -0700 (PDT)
From: Douglas Anderson <dianders@chromium.org>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Guenter Roeck <linux@roeck-us.net>
Cc: linux-watchdog@vger.kernel.org,
	linux-arm-msm@vger.kernel.org,
	Rob Herring <robh+dt@kernel.org>,
	Wim Van Sebroeck <wim@linux-watchdog.org>,
	swboyd@chromium.org,
	Douglas Anderson <dianders@chromium.org>,
	Andy Gross <agross@kernel.org>,
	Johan Hovold <johan+linaro@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 7/9] arm64: dts: qcom: sc8280xp: Make watchdog bark interrupt edge triggered
Date: Fri,  3 Nov 2023 16:34:33 -0700
Message-ID: <20231103163434.7.I1c8ab71570f6906fd020decb80675f05fbe1fe74@changeid>
X-Mailer: git-send-email 2.42.0.869.gea05f2083d-goog
In-Reply-To: <20231103163434.1.Ic7577567baff921347d423b722de8b857602efb1@changeid>
References: <20231103163434.1.Ic7577567baff921347d423b722de8b857602efb1@changeid>
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

Fixes: 152d1faf1e2f ("arm64: dts: qcom: add SC8280XP platform")
Signed-off-by: Douglas Anderson <dianders@chromium.org>
---

 arch/arm64/boot/dts/qcom/sc8280xp.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sc8280xp.dtsi b/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
index cad59af7ccef..b8081513176a 100644
--- a/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
@@ -4225,7 +4225,7 @@ watchdog@17c10000 {
 			compatible = "qcom,apss-wdt-sc8280xp", "qcom,kpss-wdt";
 			reg = <0 0x17c10000 0 0x1000>;
 			clocks = <&sleep_clk>;
-			interrupts = <GIC_SPI 0 IRQ_TYPE_LEVEL_HIGH>;
+			interrupts = <GIC_SPI 0 IRQ_TYPE_EDGE_RISING>;
 		};
 
 		timer@17c20000 {
-- 
2.42.0.869.gea05f2083d-goog


