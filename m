Return-Path: <devicetree+bounces-40350-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 105EB850330
	for <lists+devicetree@lfdr.de>; Sat, 10 Feb 2024 08:16:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id A3AE1B24057
	for <lists+devicetree@lfdr.de>; Sat, 10 Feb 2024 07:16:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D26EE3CF57;
	Sat, 10 Feb 2024 07:10:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="kl1t2dbu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f174.google.com (mail-pl1-f174.google.com [209.85.214.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E8183C491
	for <devicetree@vger.kernel.org>; Sat, 10 Feb 2024 07:10:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707549013; cv=none; b=caRk+E/5WnS8uBr7KRHnYgTKOhB9oohe45VihoheyncVKdGaNOHz1lV42R1OVk0qq3D9bF20nLkf0T4WZF67ihOc+VcCI4SYvK6RtCKR5FeGjhXrH7CIfjnOEYTy9i0ZoDsowzNvR1MA0uuzeLVX03mj/b3815gz7V9TuCgq6ZU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707549013; c=relaxed/simple;
	bh=19FF8ca0psROBDhCh44aKdtr1cwpixcB8/tkmi6ULFc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=h7G46nW+8+Jo4SNJNmM82nuPH9ZRcKaziaGFLRhyMMt24sqgB4AnWKo1ZmAw+6h3HMKZSXwi2daBzRXJevH/rSwrDpUwXgIvEm2OyQb//fqBPqLZ7gUHHMCddzChZBWyCtHl/MJzExy4jew7wA2t8HL/AA9lLUjJX6op0OGzqNo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=kl1t2dbu; arc=none smtp.client-ip=209.85.214.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pl1-f174.google.com with SMTP id d9443c01a7336-1d73066880eso15195335ad.3
        for <devicetree@vger.kernel.org>; Fri, 09 Feb 2024 23:10:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1707549011; x=1708153811; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mgXNRKfD9jGpJ2a+SkuRHm5Sc9bodN7PM+8zG1tEGYs=;
        b=kl1t2dbupFaaWyzoExGgXGQR1rD2etkECu10cHNtBmLjSV3PGtP43TPETl7kbP66js
         0qyzFCuFVAT4bAygI+Hrr9r7Cf2YHfEFIjGLKKiTmCM5FxAKJn1Mzw9Iy5eKdzESwFjn
         ACFVNKB4haax/ShIHZFBnrTWYE9qHa8lk6llU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707549011; x=1708153811;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mgXNRKfD9jGpJ2a+SkuRHm5Sc9bodN7PM+8zG1tEGYs=;
        b=T3i/ci4TM/BzzTkYuTFTH95xhJ6LOBgePfeVmDd/WBIh66kmZ033VzZGO8qJnX7CJO
         du5eMn6I5BozjykqS6X8BOvWwzQKDMM+3miyj9YXcQDTSi7dFiQsP8HKMQKAvUAbd/eX
         DXAox4nYMA3p99q60dvuXKVoa7yWbXR4xsHvzbOPgLOoehDsp9bS2Y+ewdnfyZmHtnvY
         EM2qr0VpHjZM2tvJsAeb6lITL9z2Y9R/0kx39tmTwW/m9PQfAbyNFX5eUrECsbqYa7vc
         XLFGmlYcsj90+mRq5IuJfAh+aZgOlerfRB57nnJjzdP2P4XsBm6rZdvp4MDjrWmkqPeg
         Tg9A==
X-Gm-Message-State: AOJu0YyH4UgVj55Y5kOIeVcWKGPSFb4h0BSPP2IMouj2NvPkgxWgayIE
	yITHiGRjlN8asnPplr2tPCKd5Rcwc0pO8ZYfCTudNmNwQgixq9rk+Lz6W8tRsQ==
X-Google-Smtp-Source: AGHT+IHWJLApuRQ5BePXcW4WqrCZgf8Be0TOix5YKj4LAjWDn3gKZ8A8xoT43vDoes94/ubgzoyuyg==
X-Received: by 2002:a17:902:fc50:b0:1d7:7edb:e9b9 with SMTP id me16-20020a170902fc5000b001d77edbe9b9mr1962021plb.37.1707549011574;
        Fri, 09 Feb 2024 23:10:11 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCWc71fj8E772kQUvIgRUnbbn899xYkz6hu90/QbF01SB/p9ONLOCbyyKeQbWay0cOj7C5XU5ujrFO94FV3UZrBbWu3tzkbV4hKesd+wu2FtGuIzlAzbbgS56/kn8ndRl2sWJl4bNxYTgiDR0X0Jg/cwLAh6o9nrrSWK2cHBeVpRsB5/YAuM7jssv2+wZAGvHs9HpJj/i/S1wAc41PtNq0YaDMDvwbZIo/NfxhycrerTuOw16U6jVFsMRAJZ0XRPUsL3J40CCLCyfYTfy/QxQyji07poJCg2reoYBXAU4cQbNGAGE7PuAiflUSip4VeYDVHsECl7XXQfSeXb7mU4KFVejzwRRfJ8z67mfaeHP19lVwnXleGXgeM3M12E2OZColcxjFPXcFjXa17fCk5PBq9BRONns7r9bHfXmuOe3goxy8e0k38omSjgnMDUJZe1E6Snt0iQmWpkgk5ENqWSZFWGlU+3hwkAPZ/6Az4sZmkDzpan24j7wxReMHSvHAzf72kAPRdO6Cem5zyl9Q==
Received: from localhost (175.199.125.34.bc.googleusercontent.com. [34.125.199.175])
        by smtp.gmail.com with UTF8SMTPSA id d4-20020a170903230400b001d9469967e8sm2495954plh.122.2024.02.09.23.10.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Feb 2024 23:10:11 -0800 (PST)
From: Stephen Boyd <swboyd@chromium.org>
To: chrome-platform@lists.linux.dev
Cc: linux-kernel@vger.kernel.org,
	patches@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-msm@vger.kernel.org,
	Douglas Anderson <dianders@chromium.org>,
	Pin-yen Lin <treapking@chromium.org>,
	cros-qcom-dts-watchers@chromium.org,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Subject: [PATCH 19/22] arm64: dts: qcom: sc7180: quackingstick: Disable instead of delete usb_c1
Date: Fri,  9 Feb 2024 23:09:30 -0800
Message-ID: <20240210070934.2549994-20-swboyd@chromium.org>
X-Mailer: git-send-email 2.43.0.687.g38aa6559b0-goog
In-Reply-To: <20240210070934.2549994-1-swboyd@chromium.org>
References: <20240210070934.2549994-1-swboyd@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

It's simpler to reason about things if we disable nodes instead of
deleting them. Disable the second usb type-c connector node on
quackingstick instead of deleting it so that we can reason about ports
more easily.

Cc: <cros-qcom-dts-watchers@chromium.org>
Cc: Andy Gross <agross@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>
Cc: Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Conor Dooley <conor+dt@kernel.org>
Cc: <linux-arm-msm@vger.kernel.org>
Cc: <devicetree@vger.kernel.org>
Cc: Pin-yen Lin <treapking@chromium.org>
Signed-off-by: Stephen Boyd <swboyd@chromium.org>
---
 .../arm64/boot/dts/qcom/sc7180-trogdor-quackingstick.dtsi | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sc7180-trogdor-quackingstick.dtsi b/arch/arm64/boot/dts/qcom/sc7180-trogdor-quackingstick.dtsi
index 5f06842c683b..b7de9fd3fa20 100644
--- a/arch/arm64/boot/dts/qcom/sc7180-trogdor-quackingstick.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7180-trogdor-quackingstick.dtsi
@@ -10,9 +10,6 @@
 #include "sc7180-trogdor.dtsi"
 #include "sc7180-trogdor-rt5682i-sku.dtsi"
 
-/* This board only has 1 USB Type-C port. */
-/delete-node/ &usb_c1;
-
 / {
 	ppvar_lcd: ppvar-lcd-regulator {
 		compatible = "regulator-fixed";
@@ -136,6 +133,11 @@ pp3300_disp_on: &pp3300_dx_edp {
 	gpio = <&tlmm 67 GPIO_ACTIVE_HIGH>;
 };
 
+/* This board only has 1 USB Type-C port. */
+&usb_c1 {
+	status = "disabled";
+};
+
 /* PINCTRL - modifications to sc7180-trogdor.dtsi */
 
 /*
-- 
https://chromeos.dev


