Return-Path: <devicetree+bounces-16898-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 12FE77F0620
	for <lists+devicetree@lfdr.de>; Sun, 19 Nov 2023 13:14:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 0AAD5B20A67
	for <lists+devicetree@lfdr.de>; Sun, 19 Nov 2023 12:13:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1724D107A3;
	Sun, 19 Nov 2023 12:13:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="L4NG7qer"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-x534.google.com (mail-ed1-x534.google.com [IPv6:2a00:1450:4864:20::534])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E2846131;
	Sun, 19 Nov 2023 04:13:46 -0800 (PST)
Received: by mail-ed1-x534.google.com with SMTP id 4fb4d7f45d1cf-53e07db272cso4953213a12.3;
        Sun, 19 Nov 2023 04:13:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1700396025; x=1701000825; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aEqOCitfx46o35f4La6fYRBqER5a58teuJqwLm78l4E=;
        b=L4NG7qer9NH5fkvRxQzYew0hL71sKja3C/v+NvrQ3OmqUt1JxW0PewiCbgJhn/kNGm
         qhaMvWhqkZefrWm8lRSxDcIBqqVF9HqanUHb4SApzIrxGBV0fTFDE/NEW8jCRIE0z4nD
         jRv+b3FJ0felzGg/VlsK64GpfbnaWJ1kRt0t1JnaSJNRfZ8p2KIY5/+HyNgkfRwnY2wH
         Ih9jFzxtXIAMAfzD8jCevwJRprfU0wrHnRntHNqUFrShlrYSlch42jrRH0zRroxwVouz
         1Ew/FqfK8K1EvztzTPdJW9HojWWBoQctIKddS0zJTO7Z4WVZJTXeqtTlSexrFGtLpd6c
         T7SQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700396025; x=1701000825;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=aEqOCitfx46o35f4La6fYRBqER5a58teuJqwLm78l4E=;
        b=HJOa3WPyu7hBalGclIlXqg1PzEG/qVwoqhMVBUuxhsct4cAkGkC3kHmXwgdyyxZz5+
         PLoraGSkl+5rk83uGEck44OCFePl32twTt8/glw5YuiffS/+eGYw4tCTJhP4WjB77EK3
         f/4dVT8n4m578csvxdT69jk4yDJ2iwZdJ9kvi2lc0F7e9H7JU5SQwyxpriarMyBKbN0P
         K2vPvf0sil0Hi1IMHe7zRWOUUFf5iDrGjBs0u6WMtMwicTJLwB21Sh3FRc/MsoNemNm+
         niZ6HXCiNhrxTpIPjRB48q9J88Ua8Is7oBLfIqelI3bb+Iiuq3SBVHnu5jaVtVdlknn6
         qw2w==
X-Gm-Message-State: AOJu0YwuYaZFI/0CafrmFfx77ewHinf5CcBdizlxDnTi3fhdS1GCOUDC
	BCLs8Dlsurc8SXovcPtAHw==
X-Google-Smtp-Source: AGHT+IFlSgIwDq7pKQOyz5sqgYMr4kVrxaOq+u+B+t7rw7Vxi00MfzF/rP1xykPMY0b2AkHnswT3Kw==
X-Received: by 2002:a05:6402:3d1:b0:543:5f3:c92 with SMTP id t17-20020a05640203d100b0054305f30c92mr3924725edw.36.1700396025339;
        Sun, 19 Nov 2023 04:13:45 -0800 (PST)
Received: from U4.lan ([2a02:810b:f40:4300:7017:f42c:e243:8c57])
        by smtp.gmail.com with ESMTPSA id r5-20020a056402018500b0053dec545c8fsm2523634edv.3.2023.11.19.04.13.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 19 Nov 2023 04:13:45 -0800 (PST)
From: Alex Bee <knaerzche@gmail.com>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Alex Bee <knaerzche@gmail.com>
Subject: [PATCH v3 3/5] ARM: dts: rockchip: Add USB host clocks for RK3128
Date: Sun, 19 Nov 2023 13:13:38 +0100
Message-ID: <20231119121340.109025-4-knaerzche@gmail.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231119121340.109025-1-knaerzche@gmail.com>
References: <20231119121340.109025-1-knaerzche@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add the required AHB clocks for both the ehci and ohci controller.

Signed-off-by: Alex Bee <knaerzche@gmail.com>
---
 arch/arm/boot/dts/rockchip/rk3128.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/boot/dts/rockchip/rk3128.dtsi b/arch/arm/boot/dts/rockchip/rk3128.dtsi
index 7bf557c99561..074dffa377cc 100644
--- a/arch/arm/boot/dts/rockchip/rk3128.dtsi
+++ b/arch/arm/boot/dts/rockchip/rk3128.dtsi
@@ -163,6 +163,7 @@ usb_host_ehci: usb@101c0000 {
 		compatible = "generic-ehci";
 		reg = <0x101c0000 0x20000>;
 		interrupts = <GIC_SPI 11 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru HCLK_HOST2>;
 		phys = <&usb2phy_host>;
 		phy-names = "usb";
 		status = "disabled";
@@ -172,6 +173,7 @@ usb_host_ohci: usb@101e0000 {
 		compatible = "generic-ohci";
 		reg = <0x101e0000 0x20000>;
 		interrupts = <GIC_SPI 32 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru HCLK_HOST2>;
 		phys = <&usb2phy_host>;
 		phy-names = "usb";
 		status = "disabled";
-- 
2.42.0


