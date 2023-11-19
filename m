Return-Path: <devicetree+bounces-16901-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 35BCE7F0623
	for <lists+devicetree@lfdr.de>; Sun, 19 Nov 2023 13:14:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 64BF6B20A5D
	for <lists+devicetree@lfdr.de>; Sun, 19 Nov 2023 12:14:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 40995BA23;
	Sun, 19 Nov 2023 12:13:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="So/Q3q6C"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com [IPv6:2a00:1450:4864:20::131])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E1F4311D;
	Sun, 19 Nov 2023 04:13:48 -0800 (PST)
Received: by mail-lf1-x131.google.com with SMTP id 2adb3069b0e04-507962561adso5081620e87.0;
        Sun, 19 Nov 2023 04:13:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1700396027; x=1701000827; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IRvQu7v2aw6b3c6XSPxt/GFQ2vthRnfEbysoDl+IjOE=;
        b=So/Q3q6CX1GQh4TRr/h61jWDX1ugqisPkJ0FBbYplxRBIkCLITqOiKoWNMq1Qw0HLr
         ejDZ9QEKEAbFFqaCDB6mGxp11wi9wEy8Iq8QZNwUvNQnvvX/F3/DjO2jF3c6OouXCwwR
         swx8BtWPvOBXlVFtlt3FYhd93NQJkHjula2r8EcsUm69dko1jk7b/OTzURRYEy4t4885
         T6z21CTkU0WGLv0RsPdPVBX0QMSdjMzXPpL4oY8VeQhpY5ePAgLiPNHAIu/tvdSHtiaH
         OG3wFSy22QXI6nJ9cwxehvXCNYG7fUIlZ1PildkDRhXtEoGi2IIZoy5ZQuaBJEcQ9C8m
         grHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700396027; x=1701000827;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=IRvQu7v2aw6b3c6XSPxt/GFQ2vthRnfEbysoDl+IjOE=;
        b=XliKHWCSZAWKMsFsO6pYnTkYk6/u3TTtul3rGjQxZYnjqrnx3GS5RDEeLdoMtnKoTR
         qc2TTqYPdhr9pSGI7ewFJ0c4OUJpx3PWSxFir9PL6NFIBYaWb9BsfClDkTt+pH4wQY4i
         w8rDl4yW3/K6X6aA6ZaQsryULZGZL2Vh9Z9bE21sNVi2Fvs4jGH2jK52nAISav9Fz6bi
         5pX0Zw9TlZFPGwWaaRZYbaRCYbAJu+sNmcLShaJMZs41ljYvxFmFR5fjbkmMkAghKLVy
         BrHXbYnFCoILPD1eS5wdNK2UoHxMiI4jY4HQO0/rMRQVBdaAA3v+2Mbc2/6d5u2zTyfk
         6onA==
X-Gm-Message-State: AOJu0Yzwws2B4iBPAzInUolCjxFGSEIxZOeHgfcEslJTj9zOBZorY/3k
	Tcw4uwKHF8NfJNPG4lFySQ==
X-Google-Smtp-Source: AGHT+IFclIkGd4gUltycd20mO39V01aWQkCtlOGJQGc8SY39GQWh+136ifIDd6KIpOUu229lqj1sxw==
X-Received: by 2002:a05:6512:485b:b0:4fe:1681:9377 with SMTP id ep27-20020a056512485b00b004fe16819377mr3313345lfb.44.1700396026949;
        Sun, 19 Nov 2023 04:13:46 -0800 (PST)
Received: from U4.lan ([2a02:810b:f40:4300:7017:f42c:e243:8c57])
        by smtp.gmail.com with ESMTPSA id r5-20020a056402018500b0053dec545c8fsm2523634edv.3.2023.11.19.04.13.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 19 Nov 2023 04:13:46 -0800 (PST)
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
Subject: [PATCH v3 5/5] ARM: dts: rockchip: Make usbphy the parent of SCLK_USB480M for RK3128
Date: Sun, 19 Nov 2023 13:13:40 +0100
Message-ID: <20231119121340.109025-6-knaerzche@gmail.com>
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

Without setting the parent for SCLK_USB480M the clock will use xin24m as
it's default parent.
While this is generally not an issue for the usb blocks to work, it becomes
an issue for RK3128 since SCLK_USB480M can be a parent for other HW blocks
(GPU, VPU, VIO), but they will never chose it, since it is currently always
running at OSC frequency which is to slow for their needs.

This sets the usb2 phy's output as SCLK_USB480M's parent and it's users
can chose it if desired.

Signed-off-by: Alex Bee <knaerzche@gmail.com>
---
Changes in v3:
 - moved parent assignment to the phy node

 arch/arm/boot/dts/rockchip/rk3128.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/boot/dts/rockchip/rk3128.dtsi b/arch/arm/boot/dts/rockchip/rk3128.dtsi
index c8844e0024dc..61b292c7c4c3 100644
--- a/arch/arm/boot/dts/rockchip/rk3128.dtsi
+++ b/arch/arm/boot/dts/rockchip/rk3128.dtsi
@@ -266,6 +266,8 @@ usb2phy: usb2phy@17c {
 			clocks = <&cru SCLK_OTGPHY0>;
 			clock-names = "phyclk";
 			clock-output-names = "usb480m_phy";
+			assigned-clocks = <&cru SCLK_USB480M>;
+			assigned-clock-parents = <&usb2phy>;
 			#clock-cells = <0>;
 			status = "disabled";
 
-- 
2.42.0


