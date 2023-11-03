Return-Path: <devicetree+bounces-13843-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C763E7E0C48
	for <lists+devicetree@lfdr.de>; Sat,  4 Nov 2023 00:36:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 037621C21003
	for <lists+devicetree@lfdr.de>; Fri,  3 Nov 2023 23:36:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 51C39262A5;
	Fri,  3 Nov 2023 23:36:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="ivw3kAB0"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE08E2629B
	for <devicetree@vger.kernel.org>; Fri,  3 Nov 2023 23:36:03 +0000 (UTC)
Received: from mail-pl1-x62b.google.com (mail-pl1-x62b.google.com [IPv6:2607:f8b0:4864:20::62b])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1ACE910CF
	for <devicetree@vger.kernel.org>; Fri,  3 Nov 2023 16:36:01 -0700 (PDT)
Received: by mail-pl1-x62b.google.com with SMTP id d9443c01a7336-1cc5b7057d5so23643665ad.2
        for <devicetree@vger.kernel.org>; Fri, 03 Nov 2023 16:36:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1699054560; x=1699659360; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=z1s0HtUb56FJexT+QBsAgKXm2XZYTg/G7gzdgJqBk4g=;
        b=ivw3kAB0wg+FRoxBawA14FUFgASd0Y39q+vgLD3W2KoDZ7qJ1PgQ2FZBmnsF2gfSz7
         qe0FdAYZxE8Sz0yq9jE2efW35v82vXJEhaSTFkDiR+UIq4Grf3LDlatkP1pA0VW7xLHo
         f7h+Z8IT1sEySKjdm078vBpQxgQCbjp/HPEp4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699054560; x=1699659360;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=z1s0HtUb56FJexT+QBsAgKXm2XZYTg/G7gzdgJqBk4g=;
        b=q3q6zKpQPv5hRsR2amVQZ7Q5eV+EX0cSrBmd2YNtzut+n22KZfX7PUbme3+Z/4JJOf
         VJsAq5cRm7yNBS5TsHeHaOtP11ki+lwUyinIzC9VBKSrWhFbwTYb03hCgNfQEAAEOhvd
         VtwD60wXZLg8FkyRMyh0vVgCYQDFvpDoJZC/t6aZPcLlrsNEuceAjmDScElh3NMHKSUN
         A0TEayMRBjr/thgtNvn7LhOWrqtW/LoTffZave5qkSM3vSBrrUg0C6+wLv4cpXEErMwL
         ZnJ1qW0F65xoJYDjja3BPyKUmmZTKmK5m9Ekcq+9UklPxFkpcusBd9fn3cEVrUftjQXW
         f39w==
X-Gm-Message-State: AOJu0Yz6QVAvhqJW6CPTElOlCrMEF0MapSi8oTnj+l/fuE6tsNe4oroc
	i1SOehALanvKw35Tex888ckaBQ==
X-Google-Smtp-Source: AGHT+IFQR7Nep3YfpY2xPcCAywlJbGHYPaDT0QE2ucIjE0ouT2fVM4EsiBFgSd7g4MIqCTN/Acs+Yw==
X-Received: by 2002:a17:903:1390:b0:1cc:2f05:7edb with SMTP id jx16-20020a170903139000b001cc2f057edbmr19381125plb.35.1699054560588;
        Fri, 03 Nov 2023 16:36:00 -0700 (PDT)
Received: from tictac2.mtv.corp.google.com ([2620:15c:9d:2:5195:5e72:f5bb:e3f0])
        by smtp.gmail.com with ESMTPSA id jg5-20020a17090326c500b001b8b2a6c4a4sm1878114plb.172.2023.11.03.16.35.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Nov 2023 16:35:59 -0700 (PDT)
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
	Sai Prakash Ranjan <quic_saipraka@quicinc.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 9/9] dt-bindings: watchdog: qcom-wdt: Make the interrupt example edge triggered
Date: Fri,  3 Nov 2023 16:34:35 -0700
Message-ID: <20231103163434.9.Ie30c1d3f780666f6906fd2fd7c437632c229d987@changeid>
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
interrupt should be configured as edge triggered.

Update the example in the bindings.

Fixes: 7c631cdff391 ("dt-bindings: watchdog: qcom-wdt: allow interrupts")
Signed-off-by: Douglas Anderson <dianders@chromium.org>
---

 Documentation/devicetree/bindings/watchdog/qcom-wdt.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/watchdog/qcom-wdt.yaml b/Documentation/devicetree/bindings/watchdog/qcom-wdt.yaml
index 5046dfa55f13..681d1efbaf2f 100644
--- a/Documentation/devicetree/bindings/watchdog/qcom-wdt.yaml
+++ b/Documentation/devicetree/bindings/watchdog/qcom-wdt.yaml
@@ -121,7 +121,7 @@ examples:
         compatible = "qcom,apss-wdt-sm8150", "qcom,kpss-wdt";
         reg = <0x17c10000 0x1000>;
         clocks = <&sleep_clk>;
-        interrupts = <GIC_SPI 0 IRQ_TYPE_LEVEL_HIGH>;
+        interrupts = <GIC_SPI 0 IRQ_TYPE_EDGE_RISING>;
         timeout-sec = <10>;
     };
 
-- 
2.42.0.869.gea05f2083d-goog


