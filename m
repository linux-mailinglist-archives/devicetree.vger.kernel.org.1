Return-Path: <devicetree+bounces-201060-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B032FB172B8
	for <lists+devicetree@lfdr.de>; Thu, 31 Jul 2025 16:02:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 16CCC7AE151
	for <lists+devicetree@lfdr.de>; Thu, 31 Jul 2025 14:01:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 60EFC2D3A72;
	Thu, 31 Jul 2025 14:02:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="oY2wfV3T"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7BC2D2D321F
	for <devicetree@vger.kernel.org>; Thu, 31 Jul 2025 14:02:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753970525; cv=none; b=s8bngg7WMA64vx0rQ3YzTk/UkZz2Y4NO6+pgbz8dOVRZgFTYdt8rtitFQIQ7lHjbLBZIBFMjMq8MzbrzwK5bCHhiNj0/DJU+NuZ1BR8TH6X5tHUxxeqGi0EMxNeBCspUTtB89K+ZyW5tY09aexQevbWEi/sHKOWYTu+RRxXYPjY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753970525; c=relaxed/simple;
	bh=7oA1q4nPReiJ1yN6yWyAlvE+1mr1Nyp3mcVVwjusBc4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=SBUbr12xRX0A9PKrhAXpMRQJA76ym62XTOd8Cno5keJHfI+DjOslAWn9+6nEstXzWlOdbCzD8gytqVPmL09meYTNnfxMd5kOAPigWKfLpGH1ubCcabur34m7HJufYq1Uoi6esR+fo9yRZ1Ku3796C3yvn/hr6OHRFLBHdhmihjk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=oY2wfV3T; arc=none smtp.client-ip=209.85.221.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-3b7834f2e72so627212f8f.2
        for <devicetree@vger.kernel.org>; Thu, 31 Jul 2025 07:02:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1753970522; x=1754575322; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=r5FfmuyODRKtH+CNEYfoGxU1JBfNxadHgUzuk0z3tnM=;
        b=oY2wfV3T9ao2V+eJa8Wbbrn41XkeggqcVxQ1YkUbvux0Qr+KrDt8h2jRA3GVgIBGOo
         6lG4IUN1KcUEpAvGdQx4nOPkqh9nX/cuZ8w+i7mkxuIyFLh4wr96wcmaRA0HhfWKwYyQ
         ezmKMMYEMnUJl5MZ1qRry5UPOQpGhgoMPjgtxgY9XPwqAEpfK4YFRL0gwEzflpy3T0TQ
         DRzTg5bp3fDw3WICCcMSP8brWmPMWvMp8Dp/n6ijL3MtKrfkngzPaeEfC21LUqRnblmg
         NijORm5x02FZjO0gsLHS+30sUs8Tw20Ua2abcerJZ1hbJQqDO7qX0ErsG/Us2qOanZl0
         tr6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753970522; x=1754575322;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=r5FfmuyODRKtH+CNEYfoGxU1JBfNxadHgUzuk0z3tnM=;
        b=JnQoLrkhR5NUaEBc3BtOqvQuhV/fHwDJTG/01Nr//L7BXl3AYd1i3/eokWGJCNRpnu
         ZXfuWLyVz3Y+xUzUzkLLnuiH25rxTm/mq4JkA6W5pwATqWvMPpc5+cvc4I0PxyVHIo2A
         muaa9O8B/avaQYmxiXDPuBoInTNjEPB8+H9UpA/lMoc8QISoEmZrecpwZHCkR6dPYeQK
         xAKFvufHvthNqNNxn/X1K0EnUSwzEr54SdD84lav2XQ2FpZVvHdIqtadCBEhE4OXXBfR
         d73CjkBQD0DRjw+COmzbq0Te315PqNTLN5wXRlibgZpvVilk3aIIFJJxOb2x+kkfe5XZ
         fIMQ==
X-Forwarded-Encrypted: i=1; AJvYcCWTrrczf//sHQrIUOwxBOTEpSynxA5L50u2KAUitfPJ8/HW8sw03Gt/JDH4KkXoFju9sLuRdx/XXpAt@vger.kernel.org
X-Gm-Message-State: AOJu0YxpNadD+6oE5NDi1KCX3EbgMQ0iYyJ+Y1JiOeZp4MY4v9e7lVwR
	Qkic+Qt9l46Z7yU/xN6bYW2ZAnkn5AZtXG/gme2roRGbgCM9mbezqIC/Nrho/A6yMfg=
X-Gm-Gg: ASbGnct/KS6sWSz4d3wzJ55DRfHlIFV/hsXKE56jdDuKTLbwVz+rJmc6k+Sf7QAMI06
	saZ7dR4++CufG07qG7qD/ebfV/tT0tPtoM7yIKebjepWsSgcOYU/LgwLUcLoj3QQCAfL2ynkRwF
	ge0n242Fw5lcQ5chbNNDw2XOj9OhJLcUiWIx+VIC98VCLpp5zhWmUI1yteF5lYyAJmeMX8B3XHq
	boP/pX5UOBGooiEbOYPeLPnLZUJpaTGBB2vp3liTo/HMYS+HnDaYh82EXEqAVczUQ+lexXzpuq9
	47btOsoGZE8rw/TtdXCbHtGYaffSI8jckWJFVQ1/fefhEBd/GH6hE7gRFfcuwFlIW23h/N0XXtd
	gWC0flv3qOl7myR7bCXxq3buoNKrcSXTqYVRcD6LN84ETntoy
X-Google-Smtp-Source: AGHT+IFSB2g77P+JOGuXRChMmlAYoDUnakc0mUqILF6lDO5fOlHpcKD5KjoKBSFMkHDfsG7jcpdOQQ==
X-Received: by 2002:a05:6000:240e:b0:3a5:1cc5:aa6f with SMTP id ffacd0b85a97d-3b794fe9320mr5813370f8f.34.1753970521109;
        Thu, 31 Jul 2025 07:02:01 -0700 (PDT)
Received: from mai.. (146725694.box.freepro.com. [130.180.211.218])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4589ee57c18sm28121285e9.28.2025.07.31.07.02.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 31 Jul 2025 07:02:00 -0700 (PDT)
From: Daniel Lezcano <daniel.lezcano@linaro.org>
To: mbrugger@suse.com,
	chester62515@gmail.com,
	ghennadi.procopciuc@oss.nxp.com,
	shawnguo@kernel.org,
	s.hauer@pengutronix.de
Cc: s32@nxp.com,
	kernel@pengutronix.de,
	festevam@gmail.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	imx@lists.linux.dev,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Ghennadi Procopciuc <ghennadi.procopciuc@nxp.com>,
	Thomas Fossati <thomas.fossati@linaro.org>
Subject: [PATCH v2 4/8] arm64: dts: s32g399a-rdb3: Enable the STM timers
Date: Thu, 31 Jul 2025 16:01:37 +0200
Message-ID: <20250731140146.62960-5-daniel.lezcano@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250731140146.62960-1-daniel.lezcano@linaro.org>
References: <20250731140146.62960-1-daniel.lezcano@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The platform has 8 CPUs, and the Linux STM timer driver is
instantiated per CPU.  Enable 8 STM timers that can be used as
replacements for the ARM architected timers.  The remaining STM timers
are not useful to the Linux kernel and provide no benefit, so they are
left disabled.

Enable STM0 to STM6 and STM8 on the s32g399a-rdb3 platform.

STM7 is skipped, as it differs slightly from the others and requires
an additional property to be properly handled by the driver.

Signed-off-by: Daniel Lezcano <daniel.lezcano@linaro.org>
Cc: Ghennadi Procopciuc <ghennadi.procopciuc@nxp.com>
Cc: Thomas Fossati <thomas.fossati@linaro.org>
---
 .../boot/dts/freescale/s32g399a-rdb3.dts      | 32 +++++++++++++++++++
 1 file changed, 32 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/s32g399a-rdb3.dts b/arch/arm64/boot/dts/freescale/s32g399a-rdb3.dts
index 802f543cae4a..467e0c105c3f 100644
--- a/arch/arm64/boot/dts/freescale/s32g399a-rdb3.dts
+++ b/arch/arm64/boot/dts/freescale/s32g399a-rdb3.dts
@@ -40,6 +40,38 @@ &uart1 {
 	status = "okay";
 };
 
+&stm0 {
+	status = "okay";
+};
+
+&stm1 {
+	status = "okay";
+};
+
+&stm2 {
+	status = "okay";
+};
+
+&stm3 {
+	status = "okay";
+};
+
+&stm4 {
+	status = "okay";
+};
+
+&stm5 {
+	status = "okay";
+};
+
+&stm6 {
+	status = "okay";
+};
+
+&stm8 {
+	status = "okay";
+};
+
 &i2c4 {
 	current-sensor@40 {
 		compatible = "ti,ina231";
-- 
2.43.0


