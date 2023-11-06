Return-Path: <devicetree+bounces-14239-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D30F07E3001
	for <lists+devicetree@lfdr.de>; Mon,  6 Nov 2023 23:44:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6455D280D4A
	for <lists+devicetree@lfdr.de>; Mon,  6 Nov 2023 22:44:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 01C6423768;
	Mon,  6 Nov 2023 22:44:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="C1dZ9i1P"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 97A961CF92
	for <devicetree@vger.kernel.org>; Mon,  6 Nov 2023 22:44:18 +0000 (UTC)
Received: from mail-oa1-x33.google.com (mail-oa1-x33.google.com [IPv6:2001:4860:4864:20::33])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D51A9D57
	for <devicetree@vger.kernel.org>; Mon,  6 Nov 2023 14:44:16 -0800 (PST)
Received: by mail-oa1-x33.google.com with SMTP id 586e51a60fabf-1eb39505ba4so3100218fac.0
        for <devicetree@vger.kernel.org>; Mon, 06 Nov 2023 14:44:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1699310656; x=1699915456; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LEa1YhaI6E/DSKEdiY/yJdz0Wh7Ldi/F7Q44NLO+PJQ=;
        b=C1dZ9i1P+3RfPTZUX+eTvGxc7Tpd+jjxUfclljveuPnvWnh8sG9Od3eypO7w4gHGL8
         45Gw+n6Gdk+EXZ4Im1G/n6hHw7oE0GzlH/GzRDVSzwD/+ReQO6j/zLiVROfXtmSTJfC/
         RYiaCABXHaYOn6JJI8stLZ9P1/y+sUbWpUL10=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699310656; x=1699915456;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LEa1YhaI6E/DSKEdiY/yJdz0Wh7Ldi/F7Q44NLO+PJQ=;
        b=B2DTjdRr3VVJ9ctOHS2/9dZ5IkOrYGSCpxis9ReHM8Uvl0SCQnVxb2U8+uA3pp7Je2
         0iaGRHDSOz9IqBMGsY6AoTWUNAgdjXQB0kQs0fUfP62/t5eH5JkkrS+PVuCn7xRoslLG
         sYig/PwrBaYsP0hOUMIxT/pNrDsMQc+2iRfF1Ze9NUaYG4LAICCOIfiMe+0vS09a+xB4
         hO7akCEQ5R8ME1RMbMq+gT0fQhzzn/X9H6K3W4YuL2DZLh7RcSfltYO4PaJV2SWb4x1D
         ZUso0by7qHSqD5Lzl2tLlN6nRJk4QsddbJuf1xjGqkWLQ8ophM+1RVDAYR/RS4vPWDOv
         7myw==
X-Gm-Message-State: AOJu0YxaEaNOyvB0qbIepBXGLwWQCpUT/bBSosY2/ImVC7slJhRQMP5g
	AA/qhfjv1AOG8n7QP/sZkwhvZJY03Bsh77jYusWZnlJK
X-Google-Smtp-Source: AGHT+IFh7/H41PW/ppGqA6uqFtTneJWaryTFy923BZ7uQQOrznF8C+prk0YJps9r/dnHPHRhuKcniw==
X-Received: by 2002:a05:6870:10d6:b0:1d0:d9e2:985f with SMTP id 22-20020a05687010d600b001d0d9e2985fmr973799oar.57.1699310656018;
        Mon, 06 Nov 2023 14:44:16 -0800 (PST)
Received: from tictac2.mtv.corp.google.com ([2620:15c:9d:2:16a7:2c01:9126:36a4])
        by smtp.gmail.com with ESMTPSA id c10-20020a056a00248a00b006b725b2158bsm6043402pfv.41.2023.11.06.14.44.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Nov 2023 14:44:15 -0800 (PST)
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
	Rajendra Nayak <quic_rjendra@quicinc.com>,
	Sai Prakash Ranjan <quic_saipraka@quicinc.com>,
	cros-qcom-dts-watchers@chromium.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 2/9] arm64: dts: qcom: sc7280: Make watchdog bark interrupt edge triggered
Date: Mon,  6 Nov 2023 14:43:29 -0800
Message-ID: <20231106144335.v2.2.I11f77956d2492c88aca0ef5462123f225caf4fb4@changeid>
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

Fixes: 0e51f883daa9 ("arm64: dts: qcom: sc7280: Add APSS watchdog node")
Reviewed-by: Guenter Roeck <linux@roeck-us.net>
Reviewed-by: Stephen Boyd <swboyd@chromium.org>
Signed-off-by: Douglas Anderson <dianders@chromium.org>
---

(no changes since v1)

 arch/arm64/boot/dts/qcom/sc7280.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sc7280.dtsi b/arch/arm64/boot/dts/qcom/sc7280.dtsi
index 04bf85b0399a..1964ef66492f 100644
--- a/arch/arm64/boot/dts/qcom/sc7280.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7280.dtsi
@@ -5389,7 +5389,7 @@ watchdog: watchdog@17c10000 {
 			compatible = "qcom,apss-wdt-sc7280", "qcom,kpss-wdt";
 			reg = <0 0x17c10000 0 0x1000>;
 			clocks = <&sleep_clk>;
-			interrupts = <GIC_SPI 0 IRQ_TYPE_LEVEL_HIGH>;
+			interrupts = <GIC_SPI 0 IRQ_TYPE_EDGE_RISING>;
 			status = "reserved"; /* Owned by Gunyah hyp */
 		};
 
-- 
2.42.0.869.gea05f2083d-goog


