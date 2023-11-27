Return-Path: <devicetree+bounces-19367-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 89AC07FA936
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 19:47:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BA5201C20299
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 18:47:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4C5963454E;
	Mon, 27 Nov 2023 18:47:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="bdP8QAj/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-x635.google.com (mail-ej1-x635.google.com [IPv6:2a00:1450:4864:20::635])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 83F8C1A1;
	Mon, 27 Nov 2023 10:47:37 -0800 (PST)
Received: by mail-ej1-x635.google.com with SMTP id a640c23a62f3a-9fcfd2a069aso635984366b.1;
        Mon, 27 Nov 2023 10:47:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1701110856; x=1701715656; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=feoucnNh3cnG002IsGWyER4iW7pfsWcNc8v7OfR+1cU=;
        b=bdP8QAj/qLSJL8501SKkxcefdV2GDw+y2AnbQyAjoafEfyttgQL2THiXEviedljJtD
         OtRVp9NZT2c8yC+c1bdG9xFqI8qxoZzgO+faTs0b8Qeqav4EnZp1PE4xrCT4zA43dQJU
         Bx+Mdbghsisku2/lwNCXNU4C5WbXJwWXEIF7Wc4cysEgKCjHXm9kt/Bfk1vxG8kTts0C
         D41Db+iSyc6dViERmxBJtIBA4nLtX3+kE9uZmiNKkIREmVko5Y8n3yQf8+mULSyRL78i
         tuDw/h9au0+S7RZVymPnlBey0AqeiYeqdNwFcYTT42PXDYuUDFX78ezicRPy8SdynhxV
         mofA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701110856; x=1701715656;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=feoucnNh3cnG002IsGWyER4iW7pfsWcNc8v7OfR+1cU=;
        b=EPK++922wb7JsngS1skNytvdqwLPLOUMCxTP+8iFKHe+9+2KtsNRgOeHQt1Z1W7ymX
         UV5ThhGS67OyJvkyW9rxQrDN8xkkX+umesjbjH+x7sLsgpcRrLX05KRoV1L72xBOfNpg
         ZbFTaUXDptH1QRuaCMsUORX+eKhCQZbYzrO9XlikLT55JsVk3qyLs7z2Il2Zkdauxw+c
         9fj/NtdxUZIvkIOM+aw8SNQ1UTezYcBKJ+J4L2YTY6+KlLSYQwF1au9a5jaLmUza3CWv
         sU+g972m/wIrl9b/+dWQB4qFwzy+ikLGYN63WsMj+RV1gR3b9GHArWU5uR3XV2oib9d4
         JLxw==
X-Gm-Message-State: AOJu0YyW+Pn2ZKXMObKWDmN3GztdTITANRYpZ9YFLKHE1Ej03h77BYiu
	RiTPgHfuIYEiUyOBEm8e1Q==
X-Google-Smtp-Source: AGHT+IGNIXVWpAF/Vtmt0THD1hdYjxHh9x8U6OL7SM2ONORvUymzeJ5XQxWTJ/AmZWmVtFH1/xe/cg==
X-Received: by 2002:a17:907:a092:b0:9fd:ab4:5859 with SMTP id hu18-20020a170907a09200b009fd0ab45859mr10100668ejc.66.1701110855697;
        Mon, 27 Nov 2023 10:47:35 -0800 (PST)
Received: from U4.lan ([2a02:810b:f40:4300:370c:d8f:2dce:7367])
        by smtp.gmail.com with ESMTPSA id 26-20020a170906009a00b009b9aa8fffdasm5907725ejc.131.2023.11.27.10.47.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Nov 2023 10:47:35 -0800 (PST)
From: Alex Bee <knaerzche@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh+dt@kernel.org>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Alex Bee <knaerzche@gmail.com>
Subject: [PATCH] ARM: dts: rockchip: Fix sdmmc_pwren's pinmux setting for RK3128
Date: Mon, 27 Nov 2023 19:46:44 +0100
Message-ID: <20231127184643.13314-2-knaerzche@gmail.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

RK3128's reference design uses sdmmc_pwren pincontrol as GPIO - see [0].

Let's change it in the SoC DT as well.

[0] https://github.com/rockchip-linux/kernel/commit/8c62deaf6025

Fixes: a0201bff6259 ("ARM: dts: rockchip: add rk3128 soc dtsi")
Signed-off-by: Alex Bee <knaerzche@gmail.com>
---
This should have been part of my XPI-3128 board submission - it uses this
pin as GPIO and adapts the reference design in this regard.
Originally I had this as an override in the board DT, but later noticed
this relatively new commit in vendor's kernel. I simply forgot to add 
that commit.

 arch/arm/boot/dts/rockchip/rk3128.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/rockchip/rk3128.dtsi b/arch/arm/boot/dts/rockchip/rk3128.dtsi
index 4e8b38604ecd..b16786e81c08 100644
--- a/arch/arm/boot/dts/rockchip/rk3128.dtsi
+++ b/arch/arm/boot/dts/rockchip/rk3128.dtsi
@@ -859,7 +859,7 @@ sdmmc_wp: sdmmc-wp {
 			};
 
 			sdmmc_pwren: sdmmc-pwren {
-				rockchip,pins = <1 RK_PB6 1 &pcfg_pull_default>;
+				rockchip,pins = <1 RK_PB6 RK_FUNC_GPIO &pcfg_pull_default>;
 			};
 
 			sdmmc_bus4: sdmmc-bus4 {
-- 
2.43.0


