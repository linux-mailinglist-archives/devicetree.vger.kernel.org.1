Return-Path: <devicetree+bounces-113281-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 999449A50C0
	for <lists+devicetree@lfdr.de>; Sat, 19 Oct 2024 22:39:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 43F251F229E8
	for <lists+devicetree@lfdr.de>; Sat, 19 Oct 2024 20:39:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B89C1191F78;
	Sat, 19 Oct 2024 20:39:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="VzkvxLTY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A5F0C18EFD8
	for <devicetree@vger.kernel.org>; Sat, 19 Oct 2024 20:39:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729370384; cv=none; b=o8M3obwtvHHM+k1zRkFxoq7iNTvZxq7cITjV3Gxe3KTADNj3txCWNAbwWHmmWXhiUVywUKlFD1t+59olKXXxpBGJHjpV4rml+tf/u3UZgZk4eb0Uu8XRKvNokt6Yhjnxt6qLPf5vocx8hjBMw573aV3DtJLbAniZfAglCltmsEw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729370384; c=relaxed/simple;
	bh=uztz/uHp+otMspiz7o2PcCsCP65AdP6Lh3wOjaiwnQM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=QOb3NlxxnbihZzXxvAtaOTtOLnFqL3WEdSWVswSIVLwtL/pApV8z8SyYF18kPjsm6fKouhyffWxWYRZC5wmp6whN+YZ4XWmVyhJGWaHD1ZQoFwhKbwx1/C1A/w+5p28obd5/jVV4b5S7POHcxnZSHDxIUjCXI92MEDckhoMJ8+4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=VzkvxLTY; arc=none smtp.client-ip=209.85.167.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-539fe76e802so3726959e87.1
        for <devicetree@vger.kernel.org>; Sat, 19 Oct 2024 13:39:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1729370381; x=1729975181; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=CM/UNHN9v/TEr4fnRLKm3BTDGD3gG97Lc8xw4//SLkE=;
        b=VzkvxLTYFfJPqljknWVpT9tpAZs8sUUOYanQp6uVV9w81qx5614hygBv6yZ7kgpbfN
         UO/Fir559bOfrpqU9EK13NT9j28QhUCywychETT0as3Pdelh/8IW3cz8XwwYfRFqDbW2
         qnXCoQmXpeQ0KEaRxzeZ/vUOaIvjzvkPsaOJx49s/HwRBZas0nKtqxeeOLVIo45GZUIO
         MOrEBJNpMIOlsUSeZIBbs124zQokvGAOkmOXCGhIH2TmYUjD/8ZwN0llo6izgcTuiYX3
         K9MrWAzk4go5JA/NOP48KVxKw19bYPLvsI5gqBcI5DOKVVsmldshlGdFxQ8RxAK9TWEQ
         J1FQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729370381; x=1729975181;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=CM/UNHN9v/TEr4fnRLKm3BTDGD3gG97Lc8xw4//SLkE=;
        b=nvqVqiRES2mhTuhm/8ECsccdsImNb2hfhl+8cGgIkn2gzaGxGkgOrgOWBWIgsp0F5Q
         Vx8WofMA1OtXIkVxdwPXzIRhvZnALIWbxrtgPU5jnk+qNzsIVgIeE4d/nMyAUT1D3JgW
         XKk0oZagaO5I3bG1WU1WL4MlASQ6TWTBqdwpkbtx0EMmA/n8F/BmgDWMo6ilJvb4Ho4V
         8XCWCZK7M5ZHteHRE5OG2t3qcG5vW+jMcK4cwgc/vBoLMppcsyWCehB4IdsYUldHa/GH
         SV/SZTqPPsn+4BsVT9Rudt44cTOGVwQEcyERNQfAXzznUO0LbPM+0ToR51wD9AmPmtDf
         IZhA==
X-Gm-Message-State: AOJu0YyerGOfwuHMHZ1AjeAaJHyQAtWrA2CFf2MTcCa6hT7582Og6bZ1
	m5nqC843oL1wri1gYBGJzDocgOvnuNf75zHDlAtSxjYwQ1lQw30Y7epA9DZjNNM=
X-Google-Smtp-Source: AGHT+IFvU8hfYKd5cejGE+kiGfXrZs0nVqeK1uKT/GoOxz7puFjmJl2dEIFyZPhP66edY+6dyP7FiA==
X-Received: by 2002:a05:6512:12cd:b0:539:968a:91a8 with SMTP id 2adb3069b0e04-53a154f8eafmr3603882e87.47.1729370380651;
        Sat, 19 Oct 2024 13:39:40 -0700 (PDT)
Received: from lino.lan ([85.235.12.238])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53a224202d5sm37564e87.136.2024.10.19.13.39.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 19 Oct 2024 13:39:38 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
Date: Sat, 19 Oct 2024 22:39:34 +0200
Subject: [PATCH v3 5/9] ARM: dts: bcm6846: Add LED controller
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241019-genexis-xg6846b-base-v3-5-8375a0e1f89f@linaro.org>
References: <20241019-genexis-xg6846b-base-v3-0-8375a0e1f89f@linaro.org>
In-Reply-To: <20241019-genexis-xg6846b-base-v3-0-8375a0e1f89f@linaro.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 William Zhang <william.zhang@broadcom.com>, 
 Anand Gore <anand.gore@broadcom.com>, 
 Kursad Oney <kursad.oney@broadcom.com>, 
 Florian Fainelli <florian.fainelli@broadcom.com>, 
 =?utf-8?q?Rafa=C5=82_Mi=C5=82ecki?= <rafal@milecki.pl>, 
 Benjamin Larsson <benjamin.larsson@genexis.eu>, 
 Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 Linus Walleij <linus.walleij@linaro.org>
X-Mailer: b4 0.14.0

Add the BCMBCA LED controller to the BCM6846 DTSI.

Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 arch/arm/boot/dts/broadcom/bcm6846.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm/boot/dts/broadcom/bcm6846.dtsi b/arch/arm/boot/dts/broadcom/bcm6846.dtsi
index d6f5fe740ca5..378dbd1b41b3 100644
--- a/arch/arm/boot/dts/broadcom/bcm6846.dtsi
+++ b/arch/arm/boot/dts/broadcom/bcm6846.dtsi
@@ -198,6 +198,14 @@ rng@b80 {
 			reg = <0xb80 0x28>;
 		};
 
+		leds: led-controller@800 {
+			#address-cells = <1>;
+			#size-cells = <0>;
+			compatible = "brcm,bcm63138-leds";
+			reg = <0x800 0xdc>;
+			status = "disabled";
+		};
+
 		hsspi: spi@1000 {
 			#address-cells = <1>;
 			#size-cells = <0>;

-- 
2.46.2


