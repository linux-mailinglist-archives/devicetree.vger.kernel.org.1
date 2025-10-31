Return-Path: <devicetree+bounces-233741-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E338C251A6
	for <lists+devicetree@lfdr.de>; Fri, 31 Oct 2025 13:52:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8AE17188F086
	for <lists+devicetree@lfdr.de>; Fri, 31 Oct 2025 12:51:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 25C31340A41;
	Fri, 31 Oct 2025 12:51:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="jRW/wLfO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49C261DF979
	for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 12:51:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761915069; cv=none; b=VBFK4DkKFbiypgvNBTMqUl2JMNIusZHsvylj+ftdiUFlRDa7p8TN12GpWyDWvFD8XmELCQVO+gtEBoKHeF+a7yhu7+yypnGS7z3y13QkiR4kku/jCP2P6tIIZR/u8EO6H80Lla5pCuqinF51tcc1K1WT4xUhtadoRrdWZjCFZ2g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761915069; c=relaxed/simple;
	bh=Ug8IOVgjasY3stOjuvtaJgMJUnmgn94MwSPp4Jf04B4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=n6uSzyEdbJPhDPJOlh8Ca3s/1BdGkI5Is7PZd2gGZOye4L8LmG94HV6U13kSXufWhkRfhKRBPH0ef7aqezo/ksFtxkD38d6kAMziWc9iTkor1TRfs0i9HJVmJwjNlj9GvicZcYvvzQq/XjZYLgZh7bPE38Hh1c1Yzbmqk4QXNyc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=jRW/wLfO; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-474975af41dso16171935e9.2
        for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 05:51:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761915066; x=1762519866; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=84OopfA9mZxUTjhIOMCRmTS5zKmOVI3F35SNw7q2yS8=;
        b=jRW/wLfOypgBAksRp7ghRzXsu0k0zhwPSulrjPM3K87Z0tK1QRj5bLY3wt7M7AEzaC
         aR2Pf9lbiLoxKA5LfnAypcIhwj7uXISbO2COpD+fy4KXVF3gvzvlZ70suYA08bGdYlPR
         mKz8Rx4BQnfWlEhy/kArCVPN8POGMINjNoPqxg73xni85HqeiEI3taC76X0ETG/Y0FmA
         hgAOfNBOeL2pBX1Xqjk0bf2m/IY/SZKujZ/ZsxPTVWTTdfKh/zSOipAbmtmA2VNvtErN
         xx+tXbszBVv+kAPxLNtao1ymoyArBtjbjmtsD2XQq7rse9r2LNp0GK3jfBhWMRvKwqZW
         bzDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761915066; x=1762519866;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=84OopfA9mZxUTjhIOMCRmTS5zKmOVI3F35SNw7q2yS8=;
        b=ZX/jPHhW1q4KdWzMm2stGOYtJFMJnyQuFl84AAlhlm68FP/BSU/TeXgLLgYiEWy0/7
         eEYCcCnOeBmkCk4nb/LYpEf1WrDYc2ycOvbPuXJ8o0CRbXkN6jfjxc0ogp1EkYG1B4oW
         02xmMmnjqs+wP3EOMoUr6cMJ53nJk8jEqhXs5BXiAK8HuB+YLhmE24MQdwFOUVmKKAGJ
         vY1/UHx5+hnaDvwnzhXAamlckStV0AhqEiuTD4bHaonvjt/Pa8k8xscBkHhi0ci/PS4I
         wUX8XqAtCNRBz/3rNc5CQzOpZ8787aM8JznCaJMLfw+TLzOK/kKHEAwy0FdXuu6SUpG9
         B0CQ==
X-Forwarded-Encrypted: i=1; AJvYcCW4vJwRaXHUQEGv8WIFuWYNLksgZB2LExoq3l3agZzkpLA2WDh1/4b+8eJIR1N+OdlhPjlHajMEybBu@vger.kernel.org
X-Gm-Message-State: AOJu0YytpU8NpAPjGpb6ANsmU4Z4qgI4MsCb0166UPVqO4LZsnvVGJpx
	c1OebvLfxkUNCWQpJV4iiSGqV1e13rkSTADFnq4z2gJDC/5mmV6AdR6GLkm8Pg==
X-Gm-Gg: ASbGncvYTbPOGkKyDTFM4nuIzx1HQ9kJbKgJ7qKuh2mRIJHIYZfwfAJC8ya3Xr/MDSf
	LdC76S7qFIfTENNVv3Q18mhBK4R4vQaOcqmfr7kmqQQKKJPJ12lrmfDtUZTU0bBelSHjQABEeex
	kZ39ghA25tW9qKW+Ce2tbO5WskTUDIOWFRLWYPdasEdJoPz68a7UGcLK0UlBVbUN4L8iHCqyUeL
	FcTUO0yGtIhpIrEbKHCd/OVhR5KBZF5KJ+U/nYrgjbVZqcshop/35s4dJKzPG38hhf+40TlRd12
	p+duDtz7ULZURoP9waFqAwijl/BqHMJ01Ipi70WyFQr2Y7M8c1tnC6wumzmhWtqjqj0WUIcqZ9P
	SOyeMOkK/v1j5p521jFLEZpKvr2AbW1fE3IPoVXw5E2h7UhsoPmgc0ajd7uYQq21LuF2O7YCiHT
	4EMUjgwebH4lxhdCC9UMwrppl5ZYLH4R6o9hXcNYdR9ifyJ69UXA/yAe7tZHI7XqYt+RLZZwmSO
	IpwhAsoCEbfwTx7
X-Google-Smtp-Source: AGHT+IGB0cRZQfP//mvz/xRWB0n6w+4bOdOBWvxAmCGMTwbSqhPC6TI42uARNBDnwNWcdV2q2zNChQ==
X-Received: by 2002:a05:600c:3e8f:b0:475:dac3:699f with SMTP id 5b1f17b1804b1-477307c1470mr32473225e9.9.1761915065568;
        Fri, 31 Oct 2025 05:51:05 -0700 (PDT)
Received: from toolbox.int.toradex.com (248.201.173.83.static.wline.lns.sme.cust.swisscom.ch. [83.173.201.248])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-429c13f1d4csm3144559f8f.39.2025.10.31.05.51.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 Oct 2025 05:51:05 -0700 (PDT)
From: max.oss.09@gmail.com
To: Max Krummenacher <max.krummenacher@toradex.com>
Cc: Philippe Schenker <philippe.schenker@toradex.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Fabio Estevam <festevam@gmail.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Rob Herring <robh@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Shawn Guo <shawnguo@kernel.org>,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v1 1/3] arm64: dts: colibri-imx8x: Add backlight
Date: Fri, 31 Oct 2025 13:49:41 +0100
Message-ID: <20251031125003.275033-2-max.oss.09@gmail.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20251031125003.275033-1-max.oss.09@gmail.com>
References: <20251031125003.275033-1-max.oss.09@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Philippe Schenker <philippe.schenker@toradex.com>

Add a backlight node to colibri-imx8x. The node can be enabled from
an overlay once display output is implemented.

Signed-off-by: Philippe Schenker <philippe.schenker@toradex.com>
Signed-off-by: Max Krummenacher <max.krummenacher@toradex.com>
---

 arch/arm64/boot/dts/freescale/imx8x-colibri.dtsi | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8x-colibri.dtsi b/arch/arm64/boot/dts/freescale/imx8x-colibri.dtsi
index 8e9e841cc828..318fe4db1b64 100644
--- a/arch/arm64/boot/dts/freescale/imx8x-colibri.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8x-colibri.dtsi
@@ -3,7 +3,21 @@
  * Copyright 2019 Toradex
  */
 
+#include "dt-bindings/pwm/pwm.h"
+
 / {
+	backlight: backlight {
+		compatible = "pwm-backlight";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_gpio_bl_on>;
+		brightness-levels = <0 45 63 88 119 158 203 255>;
+		default-brightness-level = <4>;
+		enable-gpios = <&lsio_gpio3 12 GPIO_ACTIVE_HIGH>; /* Colibri BL_ON */
+		power-supply = <&reg_module_3v3>;
+		pwms = <&adma_pwm 0 6666667 PWM_POLARITY_INVERTED>;
+		status = "disabled";
+	};
+
 	chosen {
 		stdout-path = &lpuart3;
 	};
-- 
2.42.0


