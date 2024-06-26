Return-Path: <devicetree+bounces-80176-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AD7D917F8F
	for <lists+devicetree@lfdr.de>; Wed, 26 Jun 2024 13:24:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6BE551C23F15
	for <lists+devicetree@lfdr.de>; Wed, 26 Jun 2024 11:24:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C598518131F;
	Wed, 26 Jun 2024 11:23:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="AyG2ehBo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 148C21802C1
	for <devicetree@vger.kernel.org>; Wed, 26 Jun 2024 11:23:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719401030; cv=none; b=GLsbswt+ZnvD97XnL2OtEhNHpzOP0ViA7CALRAorFcpWBSfRLR1FXKOrtlBpkJHc8axiw3/UK5G1gIgaLfqWlYM8zJhm+ikon19LoLH4qiXBupI6XnifdSCt0EqFKTdGQIvbq2GeyTX6BixjaEvERc5Sv9jUVptyebsRoEA4iCw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719401030; c=relaxed/simple;
	bh=cG5ldJZdLV2nZybLiuZki5UcWSsivUTnTsHSlg+53M4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=YUj0TcuMiNia6Cx18Dwc7zc5SKGMEc1xq1aQjyG2CgVtLtd6YKyT+kMVvUQafSeW0iDPsnurE5zAHD5Kjbzrp6oCCXfzVGgZinRqhzjaxQvGXy7F3aRhGW4ms2i+RYnuT3q95gXRAcKj+yq0QokTVliqwlv9tr9rlXy18GbmKx0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=AyG2ehBo; arc=none smtp.client-ip=209.85.218.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f45.google.com with SMTP id a640c23a62f3a-a724440f597so503359266b.0
        for <devicetree@vger.kernel.org>; Wed, 26 Jun 2024 04:23:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1719401027; x=1720005827; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=UhzrCaRI2mtdTDhATYeg+ETsl1KrOZbsJSM+dhMEZGk=;
        b=AyG2ehBobCpU+V2h61VuDKmjSP8p0R2gv4Dn+spbgJDcYZvnUSCVOvFYEZ4xhihqsD
         OaapYnGKkivt560QGGaZswm/HIwZ6KP2xivI7et4iI3qzJp+Ocwc/701AhO6a82h4WVB
         Vkb39C+f3FZLiGoiA4O3LXd5i6nI6LeqHiewlvdknSmci7HLXPVFXtL0t2DWVmN+wWWq
         pukK8Y9HFujV6fxkdYJNCN1fiCECAeLjQwVat/hluHiaIQRo6lPpxchCTx7GtjAK9SpV
         Vl2IXHk7zmmqL8kPZO+LD9ZMqHVQmFkeUic46FUT0poUgpLEyu/q6ZUvOM2C3zGDh4oN
         eoqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719401027; x=1720005827;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UhzrCaRI2mtdTDhATYeg+ETsl1KrOZbsJSM+dhMEZGk=;
        b=LrRlXKLz1CxDnKGZrS37ahbnmbxie0cXSyfUNUBhuK5GAWCeUXv5uFJsCW1vpx+5rJ
         /a3iYn9KNVE1sdIboF8Q9nXHgPNXR4P2q6MVc4kVl+wG+DbPss56FpdCra/CAtg/Amr6
         gKuxW4GOKWPFJTe3uo6H/Nigib9Eceofhn1tC2fzwrpa/aY+4Q2BGT4CYySCxSECoN2r
         Uhs6MKyoRcoh0UBCfFzzj9D99j6Qjog3jYb/GTWJQxHOX3sl+MC5y7dpL3a8h1ZY45g6
         M7IDCYZp0iuPyr+xQ91H6r+Rn82EbAArLZE3R30u4ErDiIiy5zrx6bPefFIB/DiZ0111
         8XOg==
X-Gm-Message-State: AOJu0YxEQoz2mLUH+c7qotvWP62+H/gdKEoxhCTGbNilqMf/1Lxgpu3Q
	OIv5d70AnYy9lyR2t+vk5L3mtviHJqlNtG9ksEp5CV7ZkQVILA2YPdcgvM9k/AA=
X-Google-Smtp-Source: AGHT+IHVN/qm5hRWbYkXzIM8LBVK/zMUEfQpmAqK86lk2mIBDwgE6KpQXxZ5TnjZpco3pJ0Bqa6a1Q==
X-Received: by 2002:a17:907:c306:b0:a72:6055:788d with SMTP id a640c23a62f3a-a7260557a34mr700773866b.42.1719401027418;
        Wed, 26 Jun 2024 04:23:47 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.219.137])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a6fe03b4528sm497772166b.206.2024.06.26.04.23.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Jun 2024 04:23:46 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Wed, 26 Jun 2024 13:23:36 +0200
Subject: [PATCH v2 4/5] arm64: dts: ti: k3-am65-mcu: add dedicated wakeup
 controller compatible
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240626-dt-bindings-ti-soc-mfd-v2-4-ee4d69017326@linaro.org>
References: <20240626-dt-bindings-ti-soc-mfd-v2-0-ee4d69017326@linaro.org>
In-Reply-To: <20240626-dt-bindings-ti-soc-mfd-v2-0-ee4d69017326@linaro.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Roger Quadros <rogerq@kernel.org>, Nishanth Menon <nm@ti.com>, 
 Vignesh Raghavendra <vigneshr@ti.com>, Tero Kristo <kristo@kernel.org>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1003;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=cG5ldJZdLV2nZybLiuZki5UcWSsivUTnTsHSlg+53M4=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBme/o6jMWl6t7rc3T76x4LuCQ4SwyKVNJ47Hqsh
 1mWIYF/Id+JAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCZnv6OgAKCRDBN2bmhouD
 19WaD/wL/pgrgy2SrHtum4st+SxuhpyP9kADbAlSG3gQMtBwvk45AQiR6xoaK6nmVRrlYGs9P6Y
 HIlMif6k1y8YpL8Oh04XImYhemwhCX4bVgXu1hh45PrVeweqbOoQUxmVff+OeroQsa6lvXlccEs
 MnnvtWo0sd9gkIOKJkR4WBTE4TFo8SXIMGifjVVZK1mIlbvI583YvrRH+XwFDHfg4kJSZVaw9S0
 11pqOiiYoSiUHoXcFRqP0G6GDjrDUmxe6znoek3zwaeSKboWI2Nqy1I+Se51ixFEadx3xum4wGs
 BgJ4wMLVLmPVDDwVqC5Ch6D5wED4dGHOvojaLs4/rwLHN9U4LNCcKh7gt4k5QuKliQoJjdIckoc
 hdsUjBGX0wcN/nlw1rfEQj/NTP/pKAR8k4LujjUSqqr0gnNqRY4jNoacSRCkgtqUpZDlE0TZKJq
 FawGv9/GsdAAAl1b/Zf3gyFBR7CHEz6E/NQ7P3QMDmGXfBtRFmKE+rRAoBuukbNDYGH/U8evoge
 zmAg/1PR84vDF2ciKo3Q0FKyRCSahUGHQywLmf7Bs8kWNryJ9PNh6p0Rs//vqKHNvrcTEjJEUwi
 qoQRYgWWSE2uw0+Pe8pXoQfrbVxlV6g+njqyHdQdImkIMNJy6XSwAg5hn0dZUFiWNNkMlKsAeEG
 tsC1UZUfFlDxhyA==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

Each syscon node must come with a dedicated/specific compatible, which
is also reported by dtbs_check:

  k3-am654-base-board.dtb: scm-conf@40f00000: compatible: ['syscon', 'simple-mfd'] is too short

Add one for the TI K3 AM654 MCU wakeup system controller.

Reviewed-by: Roger Quadros <rogerq@kernel.org>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/ti/k3-am65-mcu.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/ti/k3-am65-mcu.dtsi b/arch/arm64/boot/dts/ti/k3-am65-mcu.dtsi
index 8feab9317644..3a61ea728645 100644
--- a/arch/arm64/boot/dts/ti/k3-am65-mcu.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am65-mcu.dtsi
@@ -7,7 +7,7 @@
 
 &cbass_mcu {
 	mcu_conf: scm-conf@40f00000 {
-		compatible = "syscon", "simple-mfd";
+		compatible = "ti,am654-system-controller", "syscon", "simple-mfd";
 		reg = <0x0 0x40f00000 0x0 0x20000>;
 		#address-cells = <1>;
 		#size-cells = <1>;

-- 
2.43.0


