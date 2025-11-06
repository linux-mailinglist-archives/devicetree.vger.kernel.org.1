Return-Path: <devicetree+bounces-235892-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 55A3AC3DEB4
	for <lists+devicetree@lfdr.de>; Fri, 07 Nov 2025 00:57:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 990184E9EBD
	for <lists+devicetree@lfdr.de>; Thu,  6 Nov 2025 23:57:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E031C3451D6;
	Thu,  6 Nov 2025 23:57:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Kiyd8zx3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BE752F6565
	for <devicetree@vger.kernel.org>; Thu,  6 Nov 2025 23:57:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762473448; cv=none; b=fUilE+jW9Sg/P9M6jOia+NBWhpeNjCwZJurke6aR4yO4wveb0efYheZCBTgcpUGDjgsu6Bdgx65l8fG0r8uKVNgtFI/7tOQrXew7ySiKKCcEVcqlb02NcSVFwD9Tv9fduv+60YqpfLEq0BLWpjjKTNFn9GHjv5vT1BhTSg30lJg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762473448; c=relaxed/simple;
	bh=j/wl6TDp+mU3UJLN/PBks9X6QMEPBs4Muqe436wsIdY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=msNf5c3ixg09YzwzGthEoRYr57T8OFrH5aVZ4N0O14RsWe2MOSO6U8aqJ6aGTLO5Dg28KK4B6yqPo/kwT2BeuKlHK+AjNWczGDjMZLncIUg02RJ2iSUjPX4r/23wVa7K3scuclrGSEYMPG13X6MT4STWjvjMSdHPtVG5Z46013c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Kiyd8zx3; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-477563e28a3so1115525e9.1
        for <devicetree@vger.kernel.org>; Thu, 06 Nov 2025 15:57:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762473442; x=1763078242; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rTkcK2RQSdHwCwFi+jloB7ukY3+VfI48ITRyLxnM3ok=;
        b=Kiyd8zx35W1G7ri2VJFcOf2CvqEyUCFyeA0k4/RFVuf5dm+xoRc5tFPHUnUP1WD6dU
         m3MMcloiIv36K/04jN26oYVcn5OtftR+qv2r2u1F1NlsFnUmXLlVeThvEymZxwWniSZI
         0FFsxlHOlp5k1hXI0OsZvl9NyzQLEhiAw4EEQs70Zw5qjqz88iKYebvnrx2WDRYUofn5
         5chYtyEo+HEwuCXyoACdXGT2i0egVeCe9gjdhq0grJ6M7383/dLNU06KD/m32KUeFDcA
         Kx37M2Gpfi3K6dP7Ume7VZiVwbt1R4ZD4V5MWOBg3T5CHNmWBiyGqeuaZFlp9CWfSEsG
         RklQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762473442; x=1763078242;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=rTkcK2RQSdHwCwFi+jloB7ukY3+VfI48ITRyLxnM3ok=;
        b=iVHSsC77CePkLzKMzwatEEsrUMSNSGWDTEQf/6iZhk7qrvjX6cUPHNn9F/b3xsjPpI
         IA8lBHrsbEpGwp1J4bTT3tl9m1A3SLS2gTmOQ/uABqsh4GC7jAS1WPMNYpc70dkKhDaa
         2KOcydr3RVl7zkpSjB3VDPL22XANaRLXEnNVSR89zr4GWPBVrL7j/58PDgvq8vKlssXr
         /RtUJRILfNMy+YAuxtFMlI7muOvd5UrfyS9YRizfo1GX/tak5050vw3g/Cs88TcGxNgt
         +VTe9dxX83b1EiawrpB87xsas16Wem0JbXiiie5i5CgY+cOngIy9KQt19Qc978w6OYX7
         2Pmw==
X-Forwarded-Encrypted: i=1; AJvYcCUwCnrRSgoCuyGclx+YYnCsrD8iRxtmLvVm72vqTrVpUXYF1XpuaUyZAPACczkO1H2phynwbWFkZ1XQ@vger.kernel.org
X-Gm-Message-State: AOJu0YwnrwC4Fl5hUDVinCpHC5BVjE55euEhUqLETJp/BkOF4uuTcz/n
	ap4Rvw5qr5YQaewOm86mUHWfHYfseit1Vu7LSLchz5yDXdsSnLn85igPjK7g2A==
X-Gm-Gg: ASbGncuBr8W9rSCA2FUFPXc8kfE3rAs5rRCRjZgBU1r5jYcMTto40YGjQ8xlT65Vv1q
	9fNFVGCE6yleWsAp3n4Esp3gCN8dQ7AwubBuJxr7I3mmQ7NZMm05Hj6o1WI/XQZFYCwUCdVPk3X
	0HWy54RmijYxfe4/6XSmYgFRJO+px3iHa5ahE3FZV9IRM5isukW++dlbvgB5g0uNYENqaQwOePB
	cHwMk1gZIRlv7l2IrEd1qbrlYFP2dLx7IpmznZk46onI2cGi1LC6FML4o7XIw83NBrbpvl58bcT
	oFJs2d6rLNDZTvYzcc+FiS9AEu56BboYiHwCO/XTJ4hRFJrFLb0+L332j+e9CV/ewMlJXjDCHAH
	OuVJmFSzf0GiXw8NVGlhO9bBzyhaB+yftDeMax6F1suGdci8r+lQsT4ULufkMkPr87WT+Aq+XMv
	cwnTB6MsZ1wLW7XoVNFrGwI1Ej+ZeErQ==
X-Google-Smtp-Source: AGHT+IHvjxOnyRVvRjpNpCUzBWwh3KDbgeH2FzI9ztIg74cu6NGoEZmbeAo1fnqTA/4amOmCvZaeTQ==
X-Received: by 2002:a05:600c:3b8e:b0:475:f16f:6e10 with SMTP id 5b1f17b1804b1-4776bab8b09mr11673625e9.18.1762473442401;
        Thu, 06 Nov 2025 15:57:22 -0800 (PST)
Received: from Ansuel-XPS24 (93-34-90-37.ip49.fastwebnet.it. [93.34.90.37])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-4775cd45466sm129470525e9.0.2025.11.06.15.57.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Nov 2025 15:57:22 -0800 (PST)
From: Christian Marangi <ansuelsmth@gmail.com>
To: Linus Walleij <linus.walleij@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Lorenzo Bianconi <lorenzo@kernel.org>,
	Sean Wang <sean.wang@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	linux-gpio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-mediatek@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org
Cc: Christian Marangi <ansuelsmth@gmail.com>
Subject: [PATCH v2 2/5] pinctrl: airoha: convert PHY LED GPIO to macro
Date: Fri,  7 Nov 2025 00:57:05 +0100
Message-ID: <20251106235713.1794668-3-ansuelsmth@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251106235713.1794668-1-ansuelsmth@gmail.com>
References: <20251106235713.1794668-1-ansuelsmth@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

PHY LED GPIO pinctrl struct definition is very similar across the
different 4 PHY and 2 LED and it can be generelized to a macro.

To reduce code size, convert them to a common macro.

Signed-off-by: Christian Marangi <ansuelsmth@gmail.com>
---
 drivers/pinctrl/mediatek/pinctrl-airoha.c | 588 ++++------------------
 1 file changed, 100 insertions(+), 488 deletions(-)

diff --git a/drivers/pinctrl/mediatek/pinctrl-airoha.c b/drivers/pinctrl/mediatek/pinctrl-airoha.c
index 32e5c1b32d50..cb0edc2a66a1 100644
--- a/drivers/pinctrl/mediatek/pinctrl-airoha.c
+++ b/drivers/pinctrl/mediatek/pinctrl-airoha.c
@@ -1473,516 +1473,128 @@ static const struct airoha_pinctrl_func_group pwm_func_group[] = {
 	},
 };
 
+#define AIROHA_PINCTRL_PHY_LED0(gpio, mux_val, map_mask, map_val)	\
+	{								\
+		.name = (gpio),						\
+		.regmap[0] = {						\
+			AIROHA_FUNC_MUX,				\
+			REG_GPIO_2ND_I2C_MODE,				\
+			(mux_val),					\
+			(mux_val),					\
+		},							\
+		.regmap[1] = {						\
+			AIROHA_FUNC_MUX,				\
+			REG_LAN_LED0_MAPPING,				\
+			(map_mask),					\
+			(map_val),					\
+		},							\
+		.regmap_size = 2,					\
+	}
+
+#define AIROHA_PINCTRL_PHY_LED1(gpio, mux_val, map_mask, map_val)	\
+	{								\
+		.name = (gpio),						\
+		.regmap[0] = {						\
+			AIROHA_FUNC_MUX,				\
+			REG_GPIO_2ND_I2C_MODE,				\
+			(mux_val),					\
+			(mux_val),					\
+		},							\
+		.regmap[1] = {						\
+			AIROHA_FUNC_MUX,				\
+			REG_LAN_LED1_MAPPING,				\
+			(map_mask),					\
+			(map_val),					\
+		},							\
+		.regmap_size = 2,					\
+	}
+
 static const struct airoha_pinctrl_func_group phy1_led0_func_group[] = {
-	{
-		.name = "gpio33",
-		.regmap[0] = {
-			AIROHA_FUNC_MUX,
-			REG_GPIO_2ND_I2C_MODE,
-			GPIO_LAN0_LED0_MODE_MASK,
-			GPIO_LAN0_LED0_MODE_MASK
-		},
-		.regmap[1] = {
-			AIROHA_FUNC_MUX,
-			REG_LAN_LED0_MAPPING,
-			LAN0_LED_MAPPING_MASK,
-			LAN0_PHY_LED_MAP(0)
-		},
-		.regmap_size = 2,
-	}, {
-		.name = "gpio34",
-		.regmap[0] = {
-			AIROHA_FUNC_MUX,
-			REG_GPIO_2ND_I2C_MODE,
-			GPIO_LAN1_LED0_MODE_MASK,
-			GPIO_LAN1_LED0_MODE_MASK
-		},
-		.regmap[1] = {
-			AIROHA_FUNC_MUX,
-			REG_LAN_LED0_MAPPING,
-			LAN1_LED_MAPPING_MASK,
-			LAN1_PHY_LED_MAP(0)
-		},
-		.regmap_size = 2,
-	}, {
-		.name = "gpio35",
-		.regmap[0] = {
-			AIROHA_FUNC_MUX,
-			REG_GPIO_2ND_I2C_MODE,
-			GPIO_LAN2_LED0_MODE_MASK,
-			GPIO_LAN2_LED0_MODE_MASK
-		},
-		.regmap[1] = {
-			AIROHA_FUNC_MUX,
-			REG_LAN_LED0_MAPPING,
-			LAN2_LED_MAPPING_MASK,
-			LAN2_PHY_LED_MAP(0)
-		},
-		.regmap_size = 2,
-	}, {
-		.name = "gpio42",
-		.regmap[0] = {
-			AIROHA_FUNC_MUX,
-			REG_GPIO_2ND_I2C_MODE,
-			GPIO_LAN3_LED0_MODE_MASK,
-			GPIO_LAN3_LED0_MODE_MASK
-		},
-		.regmap[1] = {
-			AIROHA_FUNC_MUX,
-			REG_LAN_LED0_MAPPING,
-			LAN3_LED_MAPPING_MASK,
-			LAN3_PHY_LED_MAP(0)
-		},
-		.regmap_size = 2,
-	},
+	AIROHA_PINCTRL_PHY_LED0("gpio33", GPIO_LAN0_LED0_MODE_MASK,
+				LAN0_LED_MAPPING_MASK, LAN0_PHY_LED_MAP(0)),
+	AIROHA_PINCTRL_PHY_LED0("gpio34", GPIO_LAN1_LED0_MODE_MASK,
+				LAN1_LED_MAPPING_MASK, LAN1_PHY_LED_MAP(0)),
+	AIROHA_PINCTRL_PHY_LED0("gpio35", GPIO_LAN2_LED0_MODE_MASK,
+				LAN2_LED_MAPPING_MASK, LAN2_PHY_LED_MAP(0)),
+	AIROHA_PINCTRL_PHY_LED0("gpio42", GPIO_LAN3_LED0_MODE_MASK,
+				LAN3_LED_MAPPING_MASK, LAN3_PHY_LED_MAP(0)),
 };
 
 static const struct airoha_pinctrl_func_group phy2_led0_func_group[] = {
-	{
-		.name = "gpio33",
-		.regmap[0] = {
-			AIROHA_FUNC_MUX,
-			REG_GPIO_2ND_I2C_MODE,
-			GPIO_LAN0_LED0_MODE_MASK,
-			GPIO_LAN0_LED0_MODE_MASK
-		},
-		.regmap[1] = {
-			AIROHA_FUNC_MUX,
-			REG_LAN_LED0_MAPPING,
-			LAN0_LED_MAPPING_MASK,
-			LAN0_PHY_LED_MAP(1)
-		},
-		.regmap_size = 2,
-	}, {
-		.name = "gpio34",
-		.regmap[0] = {
-			AIROHA_FUNC_MUX,
-			REG_GPIO_2ND_I2C_MODE,
-			GPIO_LAN1_LED0_MODE_MASK,
-			GPIO_LAN1_LED0_MODE_MASK
-		},
-		.regmap[1] = {
-			AIROHA_FUNC_MUX,
-			REG_LAN_LED0_MAPPING,
-			LAN1_LED_MAPPING_MASK,
-			LAN1_PHY_LED_MAP(1)
-		},
-		.regmap_size = 2,
-	}, {
-		.name = "gpio35",
-		.regmap[0] = {
-			AIROHA_FUNC_MUX,
-			REG_GPIO_2ND_I2C_MODE,
-			GPIO_LAN2_LED0_MODE_MASK,
-			GPIO_LAN2_LED0_MODE_MASK
-		},
-		.regmap[1] = {
-			AIROHA_FUNC_MUX,
-			REG_LAN_LED0_MAPPING,
-			LAN2_LED_MAPPING_MASK,
-			LAN2_PHY_LED_MAP(1)
-		},
-		.regmap_size = 2,
-	}, {
-		.name = "gpio42",
-		.regmap[0] = {
-			AIROHA_FUNC_MUX,
-			REG_GPIO_2ND_I2C_MODE,
-			GPIO_LAN3_LED0_MODE_MASK,
-			GPIO_LAN3_LED0_MODE_MASK
-		},
-		.regmap[1] = {
-			AIROHA_FUNC_MUX,
-			REG_LAN_LED0_MAPPING,
-			LAN3_LED_MAPPING_MASK,
-			LAN3_PHY_LED_MAP(1)
-		},
-		.regmap_size = 2,
-	},
+	AIROHA_PINCTRL_PHY_LED0("gpio33", GPIO_LAN0_LED0_MODE_MASK,
+				LAN0_LED_MAPPING_MASK, LAN0_PHY_LED_MAP(1)),
+	AIROHA_PINCTRL_PHY_LED0("gpio34", GPIO_LAN1_LED0_MODE_MASK,
+				LAN1_LED_MAPPING_MASK, LAN1_PHY_LED_MAP(1)),
+	AIROHA_PINCTRL_PHY_LED0("gpio35", GPIO_LAN2_LED0_MODE_MASK,
+				LAN2_LED_MAPPING_MASK, LAN2_PHY_LED_MAP(1)),
+	AIROHA_PINCTRL_PHY_LED0("gpio42", GPIO_LAN3_LED0_MODE_MASK,
+				LAN3_LED_MAPPING_MASK, LAN3_PHY_LED_MAP(1)),
 };
 
 static const struct airoha_pinctrl_func_group phy3_led0_func_group[] = {
-	{
-		.name = "gpio33",
-		.regmap[0] = {
-			AIROHA_FUNC_MUX,
-			REG_GPIO_2ND_I2C_MODE,
-			GPIO_LAN0_LED0_MODE_MASK,
-			GPIO_LAN0_LED0_MODE_MASK
-		},
-		.regmap[1] = {
-			AIROHA_FUNC_MUX,
-			REG_LAN_LED0_MAPPING,
-			LAN0_LED_MAPPING_MASK,
-			LAN0_PHY_LED_MAP(2)
-		},
-		.regmap_size = 2,
-	}, {
-		.name = "gpio34",
-		.regmap[0] = {
-			AIROHA_FUNC_MUX,
-			REG_GPIO_2ND_I2C_MODE,
-			GPIO_LAN1_LED0_MODE_MASK,
-			GPIO_LAN1_LED0_MODE_MASK
-		},
-		.regmap[1] = {
-			AIROHA_FUNC_MUX,
-			REG_LAN_LED0_MAPPING,
-			LAN1_LED_MAPPING_MASK,
-			LAN1_PHY_LED_MAP(2)
-		},
-		.regmap_size = 2,
-	}, {
-		.name = "gpio35",
-		.regmap[0] = {
-			AIROHA_FUNC_MUX,
-			REG_GPIO_2ND_I2C_MODE,
-			GPIO_LAN2_LED0_MODE_MASK,
-			GPIO_LAN2_LED0_MODE_MASK
-		},
-		.regmap[1] = {
-			AIROHA_FUNC_MUX,
-			REG_LAN_LED0_MAPPING,
-			LAN2_LED_MAPPING_MASK,
-			LAN2_PHY_LED_MAP(2)
-		},
-		.regmap_size = 2,
-	}, {
-		.name = "gpio42",
-		.regmap[0] = {
-			AIROHA_FUNC_MUX,
-			REG_GPIO_2ND_I2C_MODE,
-			GPIO_LAN3_LED0_MODE_MASK,
-			GPIO_LAN3_LED0_MODE_MASK
-		},
-		.regmap[1] = {
-			AIROHA_FUNC_MUX,
-			REG_LAN_LED0_MAPPING,
-			LAN3_LED_MAPPING_MASK,
-			LAN3_PHY_LED_MAP(2)
-		},
-		.regmap_size = 2,
-	},
+	AIROHA_PINCTRL_PHY_LED0("gpio33", GPIO_LAN0_LED0_MODE_MASK,
+				LAN0_LED_MAPPING_MASK, LAN0_PHY_LED_MAP(2)),
+	AIROHA_PINCTRL_PHY_LED0("gpio34", GPIO_LAN1_LED0_MODE_MASK,
+				LAN1_LED_MAPPING_MASK, LAN1_PHY_LED_MAP(2)),
+	AIROHA_PINCTRL_PHY_LED0("gpio35", GPIO_LAN2_LED0_MODE_MASK,
+				LAN2_LED_MAPPING_MASK, LAN2_PHY_LED_MAP(2)),
+	AIROHA_PINCTRL_PHY_LED0("gpio42", GPIO_LAN3_LED0_MODE_MASK,
+				LAN3_LED_MAPPING_MASK, LAN3_PHY_LED_MAP(2)),
 };
 
 static const struct airoha_pinctrl_func_group phy4_led0_func_group[] = {
-	{
-		.name = "gpio33",
-		.regmap[0] = {
-			AIROHA_FUNC_MUX,
-			REG_GPIO_2ND_I2C_MODE,
-			GPIO_LAN0_LED0_MODE_MASK,
-			GPIO_LAN0_LED0_MODE_MASK
-		},
-		.regmap[1] = {
-			AIROHA_FUNC_MUX,
-			REG_LAN_LED0_MAPPING,
-			LAN0_LED_MAPPING_MASK,
-			LAN0_PHY_LED_MAP(3)
-		},
-		.regmap_size = 2,
-	}, {
-		.name = "gpio34",
-		.regmap[0] = {
-			AIROHA_FUNC_MUX,
-			REG_GPIO_2ND_I2C_MODE,
-			GPIO_LAN1_LED0_MODE_MASK,
-			GPIO_LAN1_LED0_MODE_MASK
-		},
-		.regmap[1] = {
-			AIROHA_FUNC_MUX,
-			REG_LAN_LED0_MAPPING,
-			LAN1_LED_MAPPING_MASK,
-			LAN1_PHY_LED_MAP(3)
-		},
-		.regmap_size = 2,
-	}, {
-		.name = "gpio35",
-		.regmap[0] = {
-			AIROHA_FUNC_MUX,
-			REG_GPIO_2ND_I2C_MODE,
-			GPIO_LAN2_LED0_MODE_MASK,
-			GPIO_LAN2_LED0_MODE_MASK
-		},
-		.regmap[1] = {
-			AIROHA_FUNC_MUX,
-			REG_LAN_LED0_MAPPING,
-			LAN2_LED_MAPPING_MASK,
-			LAN2_PHY_LED_MAP(3)
-		},
-		.regmap_size = 2,
-	}, {
-		.name = "gpio42",
-		.regmap[0] = {
-			AIROHA_FUNC_MUX,
-			REG_GPIO_2ND_I2C_MODE,
-			GPIO_LAN3_LED0_MODE_MASK,
-			GPIO_LAN3_LED0_MODE_MASK
-		},
-		.regmap[1] = {
-			AIROHA_FUNC_MUX,
-			REG_LAN_LED0_MAPPING,
-			LAN3_LED_MAPPING_MASK,
-			LAN3_PHY_LED_MAP(3)
-		},
-		.regmap_size = 2,
-	},
+	AIROHA_PINCTRL_PHY_LED0("gpio33", GPIO_LAN0_LED0_MODE_MASK,
+				LAN0_LED_MAPPING_MASK, LAN0_PHY_LED_MAP(3)),
+	AIROHA_PINCTRL_PHY_LED0("gpio34", GPIO_LAN1_LED0_MODE_MASK,
+				LAN1_LED_MAPPING_MASK, LAN1_PHY_LED_MAP(3)),
+	AIROHA_PINCTRL_PHY_LED0("gpio35", GPIO_LAN2_LED0_MODE_MASK,
+				LAN2_LED_MAPPING_MASK, LAN2_PHY_LED_MAP(3)),
+	AIROHA_PINCTRL_PHY_LED0("gpio42", GPIO_LAN3_LED0_MODE_MASK,
+				LAN3_LED_MAPPING_MASK, LAN3_PHY_LED_MAP(3)),
 };
 
 static const struct airoha_pinctrl_func_group phy1_led1_func_group[] = {
-	{
-		.name = "gpio43",
-		.regmap[0] = {
-			AIROHA_FUNC_MUX,
-			REG_GPIO_2ND_I2C_MODE,
-			GPIO_LAN0_LED1_MODE_MASK,
-			GPIO_LAN0_LED1_MODE_MASK
-		},
-		.regmap[1] = {
-			AIROHA_FUNC_MUX,
-			REG_LAN_LED1_MAPPING,
-			LAN0_LED_MAPPING_MASK,
-			LAN0_PHY_LED_MAP(0)
-		},
-		.regmap_size = 2,
-	}, {
-		.name = "gpio44",
-		.regmap[0] = {
-			AIROHA_FUNC_MUX,
-			REG_GPIO_2ND_I2C_MODE,
-			GPIO_LAN1_LED1_MODE_MASK,
-			GPIO_LAN1_LED1_MODE_MASK
-		},
-		.regmap[1] = {
-			AIROHA_FUNC_MUX,
-			REG_LAN_LED1_MAPPING,
-			LAN1_LED_MAPPING_MASK,
-			LAN1_PHY_LED_MAP(0)
-		},
-		.regmap_size = 2,
-	}, {
-		.name = "gpio45",
-		.regmap[0] = {
-			AIROHA_FUNC_MUX,
-			REG_GPIO_2ND_I2C_MODE,
-			GPIO_LAN2_LED1_MODE_MASK,
-			GPIO_LAN2_LED1_MODE_MASK
-		},
-		.regmap[1] = {
-			AIROHA_FUNC_MUX,
-			REG_LAN_LED1_MAPPING,
-			LAN2_LED_MAPPING_MASK,
-			LAN2_PHY_LED_MAP(0)
-		},
-		.regmap_size = 2,
-	}, {
-		.name = "gpio46",
-		.regmap[0] = {
-			AIROHA_FUNC_MUX,
-			REG_GPIO_2ND_I2C_MODE,
-			GPIO_LAN3_LED1_MODE_MASK,
-			GPIO_LAN3_LED1_MODE_MASK
-		},
-		.regmap[1] = {
-			AIROHA_FUNC_MUX,
-			REG_LAN_LED1_MAPPING,
-			LAN3_LED_MAPPING_MASK,
-			LAN3_PHY_LED_MAP(0)
-		},
-		.regmap_size = 2,
-	},
+	AIROHA_PINCTRL_PHY_LED1("gpio43", GPIO_LAN0_LED1_MODE_MASK,
+				LAN0_LED_MAPPING_MASK, LAN0_PHY_LED_MAP(0)),
+	AIROHA_PINCTRL_PHY_LED1("gpio44", GPIO_LAN1_LED1_MODE_MASK,
+				LAN1_LED_MAPPING_MASK, LAN1_PHY_LED_MAP(0)),
+	AIROHA_PINCTRL_PHY_LED1("gpio45", GPIO_LAN2_LED1_MODE_MASK,
+				LAN2_LED_MAPPING_MASK, LAN2_PHY_LED_MAP(0)),
+	AIROHA_PINCTRL_PHY_LED1("gpio46", GPIO_LAN3_LED1_MODE_MASK,
+				LAN3_LED_MAPPING_MASK, LAN3_PHY_LED_MAP(0)),
 };
 
 static const struct airoha_pinctrl_func_group phy2_led1_func_group[] = {
-	{
-		.name = "gpio43",
-		.regmap[0] = {
-			AIROHA_FUNC_MUX,
-			REG_GPIO_2ND_I2C_MODE,
-			GPIO_LAN0_LED1_MODE_MASK,
-			GPIO_LAN0_LED1_MODE_MASK
-		},
-		.regmap[1] = {
-			AIROHA_FUNC_MUX,
-			REG_LAN_LED1_MAPPING,
-			LAN0_LED_MAPPING_MASK,
-			LAN0_PHY_LED_MAP(1)
-		},
-		.regmap_size = 2,
-	}, {
-		.name = "gpio44",
-		.regmap[0] = {
-			AIROHA_FUNC_MUX,
-			REG_GPIO_2ND_I2C_MODE,
-			GPIO_LAN1_LED1_MODE_MASK,
-			GPIO_LAN1_LED1_MODE_MASK
-		},
-		.regmap[1] = {
-			AIROHA_FUNC_MUX,
-			REG_LAN_LED1_MAPPING,
-			LAN1_LED_MAPPING_MASK,
-			LAN1_PHY_LED_MAP(1)
-		},
-		.regmap_size = 2,
-	}, {
-		.name = "gpio45",
-		.regmap[0] = {
-			AIROHA_FUNC_MUX,
-			REG_GPIO_2ND_I2C_MODE,
-			GPIO_LAN2_LED1_MODE_MASK,
-			GPIO_LAN2_LED1_MODE_MASK
-		},
-		.regmap[1] = {
-			AIROHA_FUNC_MUX,
-			REG_LAN_LED1_MAPPING,
-			LAN2_LED_MAPPING_MASK,
-			LAN2_PHY_LED_MAP(1)
-		},
-		.regmap_size = 2,
-	}, {
-		.name = "gpio46",
-		.regmap[0] = {
-			AIROHA_FUNC_MUX,
-			REG_GPIO_2ND_I2C_MODE,
-			GPIO_LAN3_LED1_MODE_MASK,
-			GPIO_LAN3_LED1_MODE_MASK
-		},
-		.regmap[1] = {
-			AIROHA_FUNC_MUX,
-			REG_LAN_LED1_MAPPING,
-			LAN3_LED_MAPPING_MASK,
-			LAN3_PHY_LED_MAP(1)
-		},
-		.regmap_size = 2,
-	},
+	AIROHA_PINCTRL_PHY_LED1("gpio43", GPIO_LAN0_LED1_MODE_MASK,
+				LAN0_LED_MAPPING_MASK, LAN0_PHY_LED_MAP(1)),
+	AIROHA_PINCTRL_PHY_LED1("gpio44", GPIO_LAN1_LED1_MODE_MASK,
+				LAN1_LED_MAPPING_MASK, LAN1_PHY_LED_MAP(1)),
+	AIROHA_PINCTRL_PHY_LED1("gpio45", GPIO_LAN2_LED1_MODE_MASK,
+				LAN2_LED_MAPPING_MASK, LAN2_PHY_LED_MAP(1)),
+	AIROHA_PINCTRL_PHY_LED1("gpio46", GPIO_LAN3_LED1_MODE_MASK,
+				LAN3_LED_MAPPING_MASK, LAN3_PHY_LED_MAP(1)),
 };
 
 static const struct airoha_pinctrl_func_group phy3_led1_func_group[] = {
-	{
-		.name = "gpio43",
-		.regmap[0] = {
-			AIROHA_FUNC_MUX,
-			REG_GPIO_2ND_I2C_MODE,
-			GPIO_LAN0_LED1_MODE_MASK,
-			GPIO_LAN0_LED1_MODE_MASK
-		},
-		.regmap[1] = {
-			AIROHA_FUNC_MUX,
-			REG_LAN_LED1_MAPPING,
-			LAN0_LED_MAPPING_MASK,
-			LAN0_PHY_LED_MAP(2)
-		},
-		.regmap_size = 2,
-	}, {
-		.name = "gpio44",
-		.regmap[0] = {
-			AIROHA_FUNC_MUX,
-			REG_GPIO_2ND_I2C_MODE,
-			GPIO_LAN1_LED1_MODE_MASK,
-			GPIO_LAN1_LED1_MODE_MASK
-		},
-		.regmap[1] = {
-			AIROHA_FUNC_MUX,
-			REG_LAN_LED1_MAPPING,
-			LAN1_LED_MAPPING_MASK,
-			LAN1_PHY_LED_MAP(2)
-		},
-		.regmap_size = 2,
-	}, {
-		.name = "gpio45",
-		.regmap[0] = {
-			AIROHA_FUNC_MUX,
-			REG_GPIO_2ND_I2C_MODE,
-			GPIO_LAN2_LED1_MODE_MASK,
-			GPIO_LAN2_LED1_MODE_MASK
-		},
-		.regmap[1] = {
-			AIROHA_FUNC_MUX,
-			REG_LAN_LED1_MAPPING,
-			LAN2_LED_MAPPING_MASK,
-			LAN2_PHY_LED_MAP(2)
-		},
-		.regmap_size = 2,
-	}, {
-		.name = "gpio46",
-		.regmap[0] = {
-			AIROHA_FUNC_MUX,
-			REG_GPIO_2ND_I2C_MODE,
-			GPIO_LAN3_LED1_MODE_MASK,
-			GPIO_LAN3_LED1_MODE_MASK
-		},
-		.regmap[1] = {
-			AIROHA_FUNC_MUX,
-			REG_LAN_LED1_MAPPING,
-			LAN3_LED_MAPPING_MASK,
-			LAN3_PHY_LED_MAP(2)
-		},
-		.regmap_size = 2,
-	},
+	AIROHA_PINCTRL_PHY_LED1("gpio43", GPIO_LAN0_LED1_MODE_MASK,
+				LAN0_LED_MAPPING_MASK, LAN0_PHY_LED_MAP(2)),
+	AIROHA_PINCTRL_PHY_LED1("gpio44", GPIO_LAN1_LED1_MODE_MASK,
+				LAN1_LED_MAPPING_MASK, LAN1_PHY_LED_MAP(2)),
+	AIROHA_PINCTRL_PHY_LED1("gpio45", GPIO_LAN2_LED1_MODE_MASK,
+				LAN2_LED_MAPPING_MASK, LAN2_PHY_LED_MAP(2)),
+	AIROHA_PINCTRL_PHY_LED1("gpio46", GPIO_LAN3_LED1_MODE_MASK,
+				LAN3_LED_MAPPING_MASK, LAN3_PHY_LED_MAP(2)),
 };
 
 static const struct airoha_pinctrl_func_group phy4_led1_func_group[] = {
-	{
-		.name = "gpio43",
-		.regmap[0] = {
-			AIROHA_FUNC_MUX,
-			REG_GPIO_2ND_I2C_MODE,
-			GPIO_LAN0_LED1_MODE_MASK,
-			GPIO_LAN0_LED1_MODE_MASK
-		},
-		.regmap[1] = {
-			AIROHA_FUNC_MUX,
-			REG_LAN_LED1_MAPPING,
-			LAN0_LED_MAPPING_MASK,
-			LAN0_PHY_LED_MAP(3)
-		},
-		.regmap_size = 2,
-	}, {
-		.name = "gpio44",
-		.regmap[0] = {
-			AIROHA_FUNC_MUX,
-			REG_GPIO_2ND_I2C_MODE,
-			GPIO_LAN1_LED1_MODE_MASK,
-			GPIO_LAN1_LED1_MODE_MASK
-		},
-		.regmap[1] = {
-			AIROHA_FUNC_MUX,
-			REG_LAN_LED1_MAPPING,
-			LAN1_LED_MAPPING_MASK,
-			LAN1_PHY_LED_MAP(3)
-		},
-		.regmap_size = 2,
-	}, {
-		.name = "gpio45",
-		.regmap[0] = {
-			AIROHA_FUNC_MUX,
-			REG_GPIO_2ND_I2C_MODE,
-			GPIO_LAN2_LED1_MODE_MASK,
-			GPIO_LAN2_LED1_MODE_MASK
-		},
-		.regmap[1] = {
-			AIROHA_FUNC_MUX,
-			REG_LAN_LED1_MAPPING,
-			LAN2_LED_MAPPING_MASK,
-			LAN2_PHY_LED_MAP(3)
-		},
-		.regmap_size = 2,
-	}, {
-		.name = "gpio46",
-		.regmap[0] = {
-			AIROHA_FUNC_MUX,
-			REG_GPIO_2ND_I2C_MODE,
-			GPIO_LAN3_LED1_MODE_MASK,
-			GPIO_LAN3_LED1_MODE_MASK
-		},
-		.regmap[1] = {
-			AIROHA_FUNC_MUX,
-			REG_LAN_LED1_MAPPING,
-			LAN3_LED_MAPPING_MASK,
-			LAN3_PHY_LED_MAP(3)
-		},
-		.regmap_size = 2,
-	},
+	AIROHA_PINCTRL_PHY_LED1("gpio43", GPIO_LAN0_LED1_MODE_MASK,
+				LAN0_LED_MAPPING_MASK, LAN0_PHY_LED_MAP(2)),
+	AIROHA_PINCTRL_PHY_LED1("gpio44", GPIO_LAN1_LED1_MODE_MASK,
+				LAN1_LED_MAPPING_MASK, LAN1_PHY_LED_MAP(2)),
+	AIROHA_PINCTRL_PHY_LED1("gpio45", GPIO_LAN2_LED1_MODE_MASK,
+				LAN2_LED_MAPPING_MASK, LAN2_PHY_LED_MAP(2)),
+	AIROHA_PINCTRL_PHY_LED1("gpio46", GPIO_LAN3_LED1_MODE_MASK,
+				LAN3_LED_MAPPING_MASK, LAN3_PHY_LED_MAP(2)),
 };
 
 static const struct airoha_pinctrl_func en7581_pinctrl_funcs[] = {
-- 
2.51.0


