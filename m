Return-Path: <devicetree+bounces-23476-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id C051380B590
	for <lists+devicetree@lfdr.de>; Sat,  9 Dec 2023 18:31:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id F1EF01C20914
	for <lists+devicetree@lfdr.de>; Sat,  9 Dec 2023 17:31:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 113F618658;
	Sat,  9 Dec 2023 17:31:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="afTrD9Ik"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com [IPv6:2a00:1450:4864:20::135])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DB071199C
	for <devicetree@vger.kernel.org>; Sat,  9 Dec 2023 09:31:03 -0800 (PST)
Received: by mail-lf1-x135.google.com with SMTP id 2adb3069b0e04-50bf898c43cso3010656e87.1
        for <devicetree@vger.kernel.org>; Sat, 09 Dec 2023 09:31:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702143061; x=1702747861; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=86dCvwx6GDjytbmj73tbcz+/TkbqBOi1NmRM9AJmc6I=;
        b=afTrD9IkdJaw2oHH/roCUsXhdHFsOGCvR+eUfeZlDjXztCo666o6wQmKuxjG87AW0m
         tqqMyq50FBNe9oMsJSb11oiDyzclxs/jHmj9hQhxdo5FhV2KPIfMZwCwTRwmtGH02nuk
         AhMMXZjsG5ebGuPircT7gHV6wTI78ACB4Ee8IunwepptvC7BEKGdYuy9sSr6W0CS8pnu
         HUBHvCLgshB9/I6GxxrELmKwIHpnvyWNSCy9NcgGn5dN8aVf++eWONQ3L0DBUK+hWlF+
         qAP6EGwhsJa3ipL4vVtTxAyye6k8b7MKSce6q8blhRpU7RNVGN+xnUxCIHzd5cs10iSB
         sPjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702143061; x=1702747861;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=86dCvwx6GDjytbmj73tbcz+/TkbqBOi1NmRM9AJmc6I=;
        b=RWLbyh7cs7cUL4cjOixynuGBhJiLWi3pJG/maSyFKju380pHkHsLJxzoBUHctedk+r
         VJGKDOjDkvthFWsCB6J7LB2tZTPvreUyZit03x+8Q6gd+z2Ih5DmA7GZHzVuChu7Vmr8
         +eUS+xgZL0SQyZn0FVnl/Nba/zjK/L99NTYdsK7Fht0flAxEbO/Pfi2Di45dOs8mDu24
         YSHYXOFDTzgzfnATvub9GXvmnw21ELUYSD9QVt1Uo2reLX5bv099b52xOeC8vDOXlAgb
         U8lCJvEuz0nIXyo7xd4h1jSGxN5aGtoPWmGJoyvlK0KrPgNtBkgkiU5jeGpcl5BX7VEl
         u2SQ==
X-Gm-Message-State: AOJu0Yzlm2ugoBn0TFN5tNhuZ5jgdo7IUIMyuN/yjtzB96MaefiA1ZAp
	7JGPe6KkJTigBu9j2dngKuDWfw==
X-Google-Smtp-Source: AGHT+IGU+MOtvlJAg7/S8nJAU7t/X1aH55Q6UC4M9nXZaCuDODThFHgIsK3LhTtekWrsCy4GD6Kdgg==
X-Received: by 2002:a05:6512:370d:b0:50b:f6cb:4dfc with SMTP id z13-20020a056512370d00b0050bf6cb4dfcmr475037lfr.99.1702143061476;
        Sat, 09 Dec 2023 09:31:01 -0800 (PST)
Received: from krzk-bin.. ([178.197.218.27])
        by smtp.gmail.com with ESMTPSA id m26-20020a50931a000000b0054ce5c00e74sm1926621eda.88.2023.12.09.09.31.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 09 Dec 2023 09:31:01 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Dinh Nguyen <dinguyen@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 11/15] arm64: dts: socfpga: agilex: align pin-controller name with bindings
Date: Sat,  9 Dec 2023 18:30:40 +0100
Message-Id: <20231209173044.257684-11-krzysztof.kozlowski@linaro.org>
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

Use a generic node name for the pin controller node to fix:

  /socfpga_agilex_n6000.dtb: pinconf@ffd13100: $nodename:0: 'pinconf@ffd13100' does not match '^(pinctrl|pinmux)(@[0-9a-f]+)?$'

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/intel/socfpga_agilex.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/intel/socfpga_agilex.dtsi b/arch/arm64/boot/dts/intel/socfpga_agilex.dtsi
index d3adb6a130ae..de1453a951d6 100644
--- a/arch/arm64/boot/dts/intel/socfpga_agilex.dtsi
+++ b/arch/arm64/boot/dts/intel/socfpga_agilex.dtsi
@@ -368,7 +368,7 @@ pinctrl0: pinctrl@ffd13000 {
 			pinctrl-single,function-mask = <0x0000000f>;
 		};
 
-		pinctrl1: pinconf@ffd13100 {
+		pinctrl1: pinctrl@ffd13100 {
 			compatible = "pinctrl-single";
 			#pinctrl-cells = <1>;
 			reg = <0xffd13100 0x20>;
-- 
2.34.1


