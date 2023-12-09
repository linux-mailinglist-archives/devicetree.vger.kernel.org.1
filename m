Return-Path: <devicetree+bounces-23470-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A66180B588
	for <lists+devicetree@lfdr.de>; Sat,  9 Dec 2023 18:31:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1CC33280F62
	for <lists+devicetree@lfdr.de>; Sat,  9 Dec 2023 17:31:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D7DA71865C;
	Sat,  9 Dec 2023 17:30:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="rngZQOSg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-x52d.google.com (mail-ed1-x52d.google.com [IPv6:2a00:1450:4864:20::52d])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C2F9F10DF
	for <devicetree@vger.kernel.org>; Sat,  9 Dec 2023 09:30:54 -0800 (PST)
Received: by mail-ed1-x52d.google.com with SMTP id 4fb4d7f45d1cf-54d048550dfso4407408a12.0
        for <devicetree@vger.kernel.org>; Sat, 09 Dec 2023 09:30:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702143053; x=1702747853; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VVAz6xfGu3a9Phu6vigoj7udBX+fYGkNKG9vr8JT9iU=;
        b=rngZQOSg+DirBL/xY7Xzu0KwXcWAKG2WaPKEiXoyO/wmkcLmwGUIMqrdWihvI8K6hb
         prAeAB0X5S+b5YKPJE8G6sQeyzkd4PZ63jEbfWJAPSu+t9/cpdGNKwirqIthF62l48rP
         eWa42zpghsRjy1q0U+tY/2zKqLqn2QOQvLlZCT/HUmQXIRgaG07xdaCUN1SfQSfe9QyC
         YGz1xxllz6SWm+hwOsUjrT0BA30c9+eHuEhiDGoZL7td7jg7oYIJYC5xOoaC4n+fHTCq
         WNr0qOhG7gDAsJLNlbh4/CSzXTeh5exKiaBWzlNVmQLKvhxwbmZsQ/Sc4Jtuy6zXfo/g
         kpcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702143053; x=1702747853;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VVAz6xfGu3a9Phu6vigoj7udBX+fYGkNKG9vr8JT9iU=;
        b=Qj2yNLE0u8XbMYrvRi7sZ7c+DydQgoeJxd25iF/O6tC45uZA1ntp01shHgaWZonyvN
         nM5YyET6SvefaSayGDdpLMgcTeSzvuIaliAEtdUzi2jUMamE+GsNs3v8hy0tlkeI0SRP
         63o0u7qXE/bWSF7jFqYUB7qkXqj96itwhpsYOOKoJYbZ36anejvgs5YrRRnZZYt+mObP
         87BxLCtfQ399AmbKwJyvRVBDVy3Q5KrhmVTLxxAnSVTkKAjJYaqj8H7dWDtDk94U1OH5
         vk5BI3f32GvbchFQ474zOwK3PeNTC/VpLx0qSH/Bj0mCaKNaiyfJFdI13KGCC+BCggsf
         tpOA==
X-Gm-Message-State: AOJu0YxAM1FNl9TFmGrWzu5OaFkWYDt95CbPCQzcLIQMVCPHScjD4wwU
	gacq5jrwhE9yR5dgZK9NUowrrA==
X-Google-Smtp-Source: AGHT+IEERXoYwcT/v+oYVc3HQ9bJgyFg6N4N/TPfqHCQrZAgNxyj1hLP9fe3uyhndkD3T0Z9WkiFBQ==
X-Received: by 2002:a50:9b14:0:b0:54c:4ac1:725a with SMTP id o20-20020a509b14000000b0054c4ac1725amr833994edi.104.1702143053310;
        Sat, 09 Dec 2023 09:30:53 -0800 (PST)
Received: from krzk-bin.. ([178.197.218.27])
        by smtp.gmail.com with ESMTPSA id m26-20020a50931a000000b0054ce5c00e74sm1926621eda.88.2023.12.09.09.30.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 09 Dec 2023 09:30:52 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Dinh Nguyen <dinguyen@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 05/15] arm64: dts: socfpga: stratix10: align pincfg nodes with bindings
Date: Sat,  9 Dec 2023 18:30:34 +0100
Message-Id: <20231209173044.257684-5-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231209173044.257684-1-krzysztof.kozlowski@linaro.org>
References: <20231209173044.257684-1-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

pinctrl-single bindings require pin configuration node names to match
certain patterns:

  socfpga_stratix10_socdk.dtb: pinctrl@ffd13000: 'i2c1-pmx-func', 'i2c1-pmx-func-gpio'
    do not match any of the regexes: '-pins(-[0-9]+)?$|-pin$', 'pinctrl-[0-9]+'

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/altera/socfpga_stratix10_socdk.dts | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/altera/socfpga_stratix10_socdk.dts b/arch/arm64/boot/dts/altera/socfpga_stratix10_socdk.dts
index 347fd1d949fa..5578196a2c9a 100644
--- a/arch/arm64/boot/dts/altera/socfpga_stratix10_socdk.dts
+++ b/arch/arm64/boot/dts/altera/socfpga_stratix10_socdk.dts
@@ -66,14 +66,14 @@ sdmmca-ecc@ff8c8c00 {
 };
 
 &pinctrl0 {
-	i2c1_pmx_func: i2c1-pmx-func {
+	i2c1_pmx_func: i2c1-pmx-func-pins {
 		pinctrl-single,pins = <
 			0x78   0x4   /* I2C1_SDA (IO6-B) PIN30SEL) */
 			0x7c   0x4   /* I2C1_SCL (IO7-B) PIN31SEL */
 		>;
 	};
 
-	i2c1_pmx_func_gpio: i2c1-pmx-func-gpio {
+	i2c1_pmx_func_gpio: i2c1-pmx-func-gpio-pins {
 		pinctrl-single,pins = <
 			0x78   0x8   /* I2C1_SDA (IO6-B) PIN30SEL) */
 			0x7c   0x8   /* I2C1_SCL (IO7-B) PIN31SEL */
-- 
2.34.1


