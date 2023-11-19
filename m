Return-Path: <devicetree+bounces-16905-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 29CF27F0646
	for <lists+devicetree@lfdr.de>; Sun, 19 Nov 2023 14:05:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4F3FE1C203BC
	for <lists+devicetree@lfdr.de>; Sun, 19 Nov 2023 13:04:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 66C6010A2D;
	Sun, 19 Nov 2023 13:04:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="KYOAoj0w"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-x630.google.com (mail-ej1-x630.google.com [IPv6:2a00:1450:4864:20::630])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A1210D65;
	Sun, 19 Nov 2023 05:04:50 -0800 (PST)
Received: by mail-ej1-x630.google.com with SMTP id a640c23a62f3a-9f27af23441so472318266b.2;
        Sun, 19 Nov 2023 05:04:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1700399089; x=1701003889; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5D7FwSNbPTp8jaj1UJACdG2GoQE4etSzcaqgDznPLTY=;
        b=KYOAoj0w0I3g6VwGZAY+lJ7HASeADlWHsd+kBci6BDHhH29Yn33ObPNJOv838N5xye
         /s9EIN1MYi4oPxeNTRhyKWKgWBz/glUJPWIBNTyMivZIrNdrg3eraIzWdtBtwrfSfikZ
         GzY0XFxZZfrPhhQaK1gilDq6wunBn4f/em09W3fVcOgEuOxs5P4IpN/XuH/Xd3QT+Vi5
         jRs/wZkWTWrV9iFhnEwNIFYlLUBbSWgj8IHUO1UUnjXtO5RWbPA8UMXt0SBkjrlw3W/M
         KKCkjqCc1yfyJubtZ963JQDs3GkUku/EEZOlTas041FrTRqBAXJVPXI8WcevlF6CP0tP
         nXYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700399089; x=1701003889;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5D7FwSNbPTp8jaj1UJACdG2GoQE4etSzcaqgDznPLTY=;
        b=swASwqRrs1QznNuEH04GjKjE9DYWR5XIwI42svORmZDlNJtueBa/fkOfuzoW66bFu6
         tzCWeoC0LLb1KxJxH69laz78jyCPsRnhBVFqYWErYrwEVOsdH/5ILGPqZXBP52W1qK/G
         X7DKFkYrclHcWpLXV70HRtV7XmAqIhTrQHFXB1Iquc7J61cw5fdj73E05p0yiP9nWcwV
         sFlez+RBBl5kL9AbQIrW21xQl+kq9je22dViqRSHYe8Et0BcGWpNIwUrLpn1VW1yVdh/
         OhSh4UShoWe36Kld0V/mwvFGvAly7CiOb9fW/DPGFS7neU8myjKZt5PRuQt1fd7S7gLx
         TSQw==
X-Gm-Message-State: AOJu0YxKbtajsmIEXiZTyuq3RKiXpMLFH8LgzSx8YRXp7lO1n+OSwR4G
	gcO+S9z4h0ZBaG3O1nwdJQ==
X-Google-Smtp-Source: AGHT+IEwNDO4gimoaB9m92VdbE3A3oya64/Ue+tkhBwip4/WPt2BUK2ndGWYskgSHqJLW+J0pcgMkg==
X-Received: by 2002:a17:906:2d0:b0:9b2:b152:b0f2 with SMTP id 16-20020a17090602d000b009b2b152b0f2mr3379718ejk.10.1700399088899;
        Sun, 19 Nov 2023 05:04:48 -0800 (PST)
Received: from U4.lan ([2a02:810b:f40:4300:7017:f42c:e243:8c57])
        by smtp.gmail.com with ESMTPSA id n8-20020a1709062bc800b009dd8473559dsm2827866ejg.110.2023.11.19.05.04.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 19 Nov 2023 05:04:48 -0800 (PST)
From: Alex Bee <knaerzche@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Alex Bee <knaerzche@gmail.com>
Subject: [PATCH v2 2/3] ARM: dts: rockchip: Add sdmmc_det pinctrl for RK3128
Date: Sun, 19 Nov 2023 14:03:53 +0100
Message-ID: <20231119130351.112261-6-knaerzche@gmail.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231119130351.112261-2-knaerzche@gmail.com>
References: <20231119130351.112261-2-knaerzche@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The pincontrol for sd card detection is currently missing.
Add it.

Signed-off-by: Alex Bee <knaerzche@gmail.com>
---
 arch/arm/boot/dts/rockchip/rk3128.dtsi | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm/boot/dts/rockchip/rk3128.dtsi b/arch/arm/boot/dts/rockchip/rk3128.dtsi
index 7bf557c99561..797906ba321d 100644
--- a/arch/arm/boot/dts/rockchip/rk3128.dtsi
+++ b/arch/arm/boot/dts/rockchip/rk3128.dtsi
@@ -843,6 +843,10 @@ sdmmc_cmd: sdmmc-cmd {
 				rockchip,pins = <1 RK_PB7 1 &pcfg_pull_default>;
 			};
 
+			sdmmc_det: sdmmc-det {
+				rockchip,pins = <1 RK_PC1 1 &pcfg_pull_default>;
+			};
+
 			sdmmc_wp: sdmmc-wp {
 				rockchip,pins = <1 RK_PA7 1 &pcfg_pull_default>;
 			};
-- 
2.42.0


