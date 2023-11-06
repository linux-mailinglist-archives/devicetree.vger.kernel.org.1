Return-Path: <devicetree+bounces-14244-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 80C0D7E300D
	for <lists+devicetree@lfdr.de>; Mon,  6 Nov 2023 23:44:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B17F91C20878
	for <lists+devicetree@lfdr.de>; Mon,  6 Nov 2023 22:44:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6074E1DDD7;
	Mon,  6 Nov 2023 22:44:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="CSqLR8Be"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06EA51D528
	for <devicetree@vger.kernel.org>; Mon,  6 Nov 2023 22:44:29 +0000 (UTC)
Received: from mail-pg1-x52e.google.com (mail-pg1-x52e.google.com [IPv6:2607:f8b0:4864:20::52e])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CD6A810E2
	for <devicetree@vger.kernel.org>; Mon,  6 Nov 2023 14:44:26 -0800 (PST)
Received: by mail-pg1-x52e.google.com with SMTP id 41be03b00d2f7-565334377d0so3801469a12.2
        for <devicetree@vger.kernel.org>; Mon, 06 Nov 2023 14:44:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1699310666; x=1699915466; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CL6rNqUZZ/R7S5vMBh8Bonhs6IZKDfrdmFtaTOQlgvk=;
        b=CSqLR8BeVRWdemljm7igAtREKR8rhIPSka/BQLGCezQwEbyf8B+CGWDHBDXRt9URe8
         cko2aRE7+WBXaVx4ehKNIYTMUcKbRQ9NIb1UMT7dsLkkTqcdISaVFaVbvnWCJZ7CQBck
         Hg5vp8Ru9+p7G05kB84i2BJDsPjTDeD1XUNaI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699310666; x=1699915466;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=CL6rNqUZZ/R7S5vMBh8Bonhs6IZKDfrdmFtaTOQlgvk=;
        b=Cap1nbCnwCqFbXtnKhbu5d08JNnPRXGbjs5y4L7tkfb+Bt2gKCv7E1gnh5Bdc2D039
         O7K/u4NYtIXHetn91IwC0ZhuJMSRJDCFv/Tc9PF6gMPInv7AlDu6+rvaLWZJPXlEvK53
         QVLYOwl7SjE9ZpT4ctuUD39Z7jyzj+JjG9zxaWvO+s7py/dlXrqxU3gUcl7sRTqsJ1kA
         HrQcJAjArGdqPpnUSWeJx+IYt7bjcH4MQlcbufVZ1jl03OzoKjkLlfPl3olSRqxhKD13
         saTmmMcpvOhVZ/GFElpxq8uoRgdAdbmwGtHXSyqew1yqQo7LxSmre3j/uwf8D/QBbCA/
         YD4w==
X-Gm-Message-State: AOJu0Ywb94I2RTC/GUmffq7F/6ti8HAzvUZyxeL6TzFNByBPANWA0DVO
	4MEJlbiplO973H3VjE2wFtt9FQ==
X-Google-Smtp-Source: AGHT+IGeaYGnK2mOvcF4px0EdMUPyG/1hdE+Ly1oivTOAyc2DaqvSBOFigg78Ncdu9XjKlpJUhYFqg==
X-Received: by 2002:a05:6a20:4412:b0:154:3f13:1bb7 with SMTP id ce18-20020a056a20441200b001543f131bb7mr41711778pzb.49.1699310666346;
        Mon, 06 Nov 2023 14:44:26 -0800 (PST)
Received: from tictac2.mtv.corp.google.com ([2620:15c:9d:2:16a7:2c01:9126:36a4])
        by smtp.gmail.com with ESMTPSA id c10-20020a056a00248a00b006b725b2158bsm6043402pfv.41.2023.11.06.14.44.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Nov 2023 14:44:25 -0800 (PST)
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
	Johan Hovold <johan+linaro@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 7/9] arm64: dts: qcom: sc8280xp: Make watchdog bark interrupt edge triggered
Date: Mon,  6 Nov 2023 14:43:34 -0800
Message-ID: <20231106144335.v2.7.I1c8ab71570f6906fd020decb80675f05fbe1fe74@changeid>
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

Fixes: 152d1faf1e2f ("arm64: dts: qcom: add SC8280XP platform")
Reviewed-by: Guenter Roeck <linux@roeck-us.net>
Reviewed-by: Stephen Boyd <swboyd@chromium.org>
Signed-off-by: Douglas Anderson <dianders@chromium.org>
---

(no changes since v1)

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


