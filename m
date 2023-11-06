Return-Path: <devicetree+bounces-14246-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 79C307E3013
	for <lists+devicetree@lfdr.de>; Mon,  6 Nov 2023 23:44:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id AB37A1C20864
	for <lists+devicetree@lfdr.de>; Mon,  6 Nov 2023 22:44:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 08A1B2C842;
	Mon,  6 Nov 2023 22:44:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="I+3E4D4u"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 834821D528
	for <devicetree@vger.kernel.org>; Mon,  6 Nov 2023 22:44:33 +0000 (UTC)
Received: from mail-pf1-x42b.google.com (mail-pf1-x42b.google.com [IPv6:2607:f8b0:4864:20::42b])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2FF0710C6
	for <devicetree@vger.kernel.org>; Mon,  6 Nov 2023 14:44:31 -0800 (PST)
Received: by mail-pf1-x42b.google.com with SMTP id d2e1a72fcca58-6c32a20d5dbso3971471b3a.1
        for <devicetree@vger.kernel.org>; Mon, 06 Nov 2023 14:44:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1699310670; x=1699915470; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DtIla5EbbYn7ksxcCnIGYzIT7sP4waGo4Xe+LkSJul0=;
        b=I+3E4D4uAw4sDrCR+Hzng0lg2b9iQelHjIZlh4r1bIG5QfDfsN8/uy9EZd2WsELD6b
         ZccTJJWRYG02daFWpEFNspzjY6dCN3PGEledRTmfcRdn2nDXYh4GIZpIGdFsxXaztoC+
         azTehmJUtMD3Xt79IUghcdxBqt056Evv31Pv0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699310670; x=1699915470;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DtIla5EbbYn7ksxcCnIGYzIT7sP4waGo4Xe+LkSJul0=;
        b=Mm7jaM6NWARhcPdzoB03FomLmNRYPYsjEleYsnDR8UsGI6Xa7WjspbzVFnjczDjys4
         sY7oMf6YBqTmwWz9fTexQdohNQ3Zd2gu/35fF/X5k8g/8EjogQf8Z0acDtPLlrYhAkrR
         iKBclGDgXN82fL13tMsxWsvkXCJgcgNw12B0JNSC0mbdFb4fhpKoKYSfWoKo0/KAjAun
         r81UPrs8UJnm4JloCKI5zKRlizgc6tLo7Acvb+gwJvVNMinrwDH93vL8HF7s4QWL8BhK
         AbZGEMOUyD/ekCFC6NlyUmZwUurq2CGwFUvpJjwUIo6It304OEdHFKpx8eWsIo2F7PYw
         aRgQ==
X-Gm-Message-State: AOJu0Yy2TvKdZD+0AxF/MlJ0Bcq7a8L7XmYVoBFS7nQD9loBm51na/MW
	Ne6g9IFMv6sjAlmAsqMy7UOakQ==
X-Google-Smtp-Source: AGHT+IHhY66QtjpSz12CT+cwtmbPE2TaCgraRxWmFmABFrRaJm+7w2MEktS6cSaLQrf8qgGLBV3IPQ==
X-Received: by 2002:a05:6a00:2e29:b0:6bd:71e3:b647 with SMTP id fc41-20020a056a002e2900b006bd71e3b647mr28475394pfb.19.1699310669886;
        Mon, 06 Nov 2023 14:44:29 -0800 (PST)
Received: from tictac2.mtv.corp.google.com ([2620:15c:9d:2:16a7:2c01:9126:36a4])
        by smtp.gmail.com with ESMTPSA id c10-20020a056a00248a00b006b725b2158bsm6043402pfv.41.2023.11.06.14.44.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Nov 2023 14:44:29 -0800 (PST)
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
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Andy Gross <agross@kernel.org>,
	Sai Prakash Ranjan <quic_saipraka@quicinc.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 9/9] dt-bindings: watchdog: qcom-wdt: Make the interrupt example edge triggered
Date: Mon,  6 Nov 2023 14:43:36 -0800
Message-ID: <20231106144335.v2.9.Ie30c1d3f780666f6906fd2fd7c437632c229d987@changeid>
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
interrupt should be configured as edge triggered.

Update the example in the bindings.

Fixes: 7c631cdff391 ("dt-bindings: watchdog: qcom-wdt: allow interrupts")
Reviewed-by: Guenter Roeck <linux@roeck-us.net>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Reviewed-by: Stephen Boyd <swboyd@chromium.org>
Signed-off-by: Douglas Anderson <dianders@chromium.org>
---

(no changes since v1)

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


