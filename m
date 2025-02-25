Return-Path: <devicetree+bounces-151199-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 9605DA44BB2
	for <lists+devicetree@lfdr.de>; Tue, 25 Feb 2025 20:42:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C53E47ADFD9
	for <lists+devicetree@lfdr.de>; Tue, 25 Feb 2025 19:40:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CE74020DD6B;
	Tue, 25 Feb 2025 19:40:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="oNOmL0Us"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com [209.85.208.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A6EC3206F18
	for <devicetree@vger.kernel.org>; Tue, 25 Feb 2025 19:40:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740512442; cv=none; b=EzbKLhk0JiOOh5V+tQo/eUZBwhS02j56dYn3xAnnfQrrhGz/q4XKqjWn6Wm4xCjYyM4i1gQ17V2j4AAFeKK4PWXf9jDv2yMt39UUhrH/KQKdQdagKr8x8HJQzQy7jMfPqYQgA4kt1Tzhw/6qZfZGOwOzalGmb0lQny01elWlsQ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740512442; c=relaxed/simple;
	bh=yAlbUHu9L3oaIcbOjw3lFRnS49fEs9Yeu+kdf4WIgGY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=KQkFe8qm5wujJ0gX9MFNryytEip0HZqYjgNn3Hv5mRgpZOhqRRduTNokTfeiMOGKz1lDUHgf/O04BHtWMXKq80kZLZymKeZpyvTKpgV3Rp9Gk5rdX6JlqXEBDFbzuHnQNuZfQo1q2M83spSIbnhFoghl+oah2bZ6BvfcZpOIPc0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=oNOmL0Us; arc=none smtp.client-ip=209.85.208.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f170.google.com with SMTP id 38308e7fff4ca-3072f8dc069so61992021fa.3
        for <devicetree@vger.kernel.org>; Tue, 25 Feb 2025 11:40:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740512439; x=1741117239; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5xiO6N8n+C89NvfyEvDJqqu2/WiWa8biLzHBP2fNTm4=;
        b=oNOmL0UsrswIzyhql1BbOWsUuOZGOCaHVFeoWtHthrJ6f1WjyhB5EtALK0o82Ri8Kw
         XaMidaKE+IeDsaOcCmHNUHRK4seMgVoDTIxG6lrJ9/g2D/nCaiA4KOHbrLfCLKcZ+Mnp
         zH0pQqWssoImDFtRnNFd/PHjbQSCd3zD6q6RUmLoBeTPr3+X7SF2u3kMp4qzwQ23hQGU
         mtXEM+QGIzfTw0qZ1K3SX2u4zmJI0zx0KM37nASI2+7Bl6AXPLITdbIvaFP+G6Tvfs4h
         ktNBltOwXHzbRyf6kHnRf/hji+NhAzSVKnL47j9yi/RQOFLe8Q46YA4bQMat5jvn5YwT
         kxdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740512439; x=1741117239;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5xiO6N8n+C89NvfyEvDJqqu2/WiWa8biLzHBP2fNTm4=;
        b=mfXFM16NfMHTk4f0yV1L66AfVhWxsXZTMsm6p6BSktSkcrnV0FvRQhPp0a6Hi5hwb4
         b00JkazphVVM0snuu+3xAvy7l+W0okjIQCv+MKTP6/WYGgFp6bpMJckYr/rIrpuXri3F
         P0t11Vdyvr2uUi5OMCGd61If6tB+cAQCPycWHTXcwcyFJ79S1fuh7wG91E6+ZOQRmWfI
         PPyVPRwhgk7RTwzmZ46ieFkK92aemoQKNR8Psun9B5S7TutmZfvAoCq0adZxuyDzPptT
         2dkC6CJvewOovWNLUGlLgUI7RQrd2eXTrAbhLGyCyxE0h5YIKa/Hd1VmuH0vYq7q3dsi
         GOiw==
X-Gm-Message-State: AOJu0YyFGh0GE8VLeGAK5kvQH1vqA03wrdBXu2t6c6lZrESnxB05umbU
	aIBFllfUx0tOdhlrPhvao4+KWWkVh5pXy32dS17oQhVJa3PEQHg4Zox5O6A88Ws=
X-Gm-Gg: ASbGncuuF3n+OspvtYpqM554wUljyhUk1vKguSjQnHjFBq7fZ3W7dFvXfOm89/wY3ae
	N9nJC0qcVt0Gk+Y1d4wysxu8h54IeIyEcICX0rIoRsKSUzIa1YYtVUhghD8aZoxw+k6a83DF+7w
	Xs5icivI1PmRqmF3OiswvAQsHaHDl18fsin/nzJw5LZHq4wzCGbuYLACE/UVkb228OxOv+x1gCa
	1QmaepPU1fc7Ph8pHJ0zz0Zsax+k2OqSCv4jaxWH2YMppebrqI6DTA2b+i77UIWHhFpDx6MuaW5
	vlLKHUTtR2w3QjN9stsBQ7NqN9YzunnaOMHs
X-Google-Smtp-Source: AGHT+IFiHhNPLht6EoyGBj0FIiFN7PLl2rLeoGOMMONf0/5dMXM05I/rAF+ggyngtRFbpAn4hOVwuw==
X-Received: by 2002:a2e:9909:0:b0:309:bc3:3a71 with SMTP id 38308e7fff4ca-30b792e81edmr7540611fa.31.1740512438637;
        Tue, 25 Feb 2025 11:40:38 -0800 (PST)
Received: from [192.168.1.140] ([85.235.12.238])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-30a818164e2sm3089721fa.0.2025.02.25.11.40.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Feb 2025 11:40:37 -0800 (PST)
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 25 Feb 2025 20:40:34 +0100
Subject: [PATCH v3 2/2] gpiolib: of: Handle threecell GPIO chips
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250225-gpio-ranges-fourcell-v3-2-860382ba4713@linaro.org>
References: <20250225-gpio-ranges-fourcell-v3-0-860382ba4713@linaro.org>
In-Reply-To: <20250225-gpio-ranges-fourcell-v3-0-860382ba4713@linaro.org>
To: Yixun Lan <dlan@gentoo.org>, Bartosz Golaszewski <brgl@bgdev.pl>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org, linux-gpio@vger.kernel.org, 
 Linus Walleij <linus.walleij@linaro.org>, Alex Elder <elder@riscstar.com>
X-Mailer: b4 0.14.2

When describing GPIO controllers in the device tree, the ambition
of device tree to describe the hardware may require a three-cell
scheme:

gpios = <&gpio instance offset flags>;

This implements support for this scheme in the gpiolib OF core.

Drivers that want to handle multiple gpiochip instances from one
OF node need to implement a callback similar to this to
determine if a certain gpio chip is a pointer to the right
instance (pseudo-code):

struct my_gpio {
    struct gpio_chip gcs[MAX_CHIPS];
};

static bool my_of_node_instance_match(struct gpio_chip *gc
                                      unsigned int instance)
{
    struct my_gpio *mg = gpiochip_get_data(gc);

    if (instance >= MAX_CHIPS)
        return false;
    return (gc == &mg->gcs[instance]);
}

probe() {
    struct my_gpio *mg;
    struct gpio_chip *gc;
    int i, ret;

    for (i = 0; i++; i < MAX_CHIPS) {
        gc = &mg->gcs[i];
        /* This tells gpiolib we have several instances per node */
        gc->of_gpio_n_cells = 3;
	gc->of_node_instance_match = my_of_node_instance_match;
        gc->base = -1;
        ...

        ret = devm_gpiochip_add_data(dev, gc, mg);
        if (ret)
            return ret;
    }
}

Rename the "simple" of_xlate function to "twocell" which is closer
to what it actually does.

In the device tree bindings, the provide node needs
to specify #gpio-cells = <3>; where the first cell is the instance
number:

gpios = <&gpio instance offset flags>;

Conversely ranges need to have four cells:

gpio-ranges = <&pinctrl instance gpio_offset pin_offset count>;

Reviewed-by: Alex Elder <elder@riscstar.com>
Tested-by: Yixun Lan <dlan@gentoo.org>
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 drivers/gpio/gpiolib-of.c   | 95 +++++++++++++++++++++++++++++++++++++++------
 include/linux/gpio/driver.h | 24 +++++++++++-
 2 files changed, 107 insertions(+), 12 deletions(-)

diff --git a/drivers/gpio/gpiolib-of.c b/drivers/gpio/gpiolib-of.c
index 86405218f4e2ddc951a1a9d168e886400652bf60..6e0eb67dcbf05e653f329cd97d09bc3b773e2c56 100644
--- a/drivers/gpio/gpiolib-of.c
+++ b/drivers/gpio/gpiolib-of.c
@@ -929,7 +929,7 @@ struct notifier_block gpio_of_notifier = {
 #endif /* CONFIG_OF_DYNAMIC */
 
 /**
- * of_gpio_simple_xlate - translate gpiospec to the GPIO number and flags
+ * of_gpio_twocell_xlate - translate twocell gpiospec to the GPIO number and flags
  * @gc:		pointer to the gpio_chip structure
  * @gpiospec:	GPIO specifier as found in the device tree
  * @flags:	a flags pointer to fill in
@@ -941,9 +941,9 @@ struct notifier_block gpio_of_notifier = {
  * Returns:
  * GPIO number (>= 0) on success, negative errno on failure.
  */
-static int of_gpio_simple_xlate(struct gpio_chip *gc,
-				const struct of_phandle_args *gpiospec,
-				u32 *flags)
+static int of_gpio_twocell_xlate(struct gpio_chip *gc,
+				 const struct of_phandle_args *gpiospec,
+				 u32 *flags)
 {
 	/*
 	 * We're discouraging gpio_cells < 2, since that way you'll have to
@@ -951,7 +951,7 @@ static int of_gpio_simple_xlate(struct gpio_chip *gc,
 	 * number and the flags from a single gpio cell -- this is possible,
 	 * but not recommended).
 	 */
-	if (gc->of_gpio_n_cells < 2) {
+	if (gc->of_gpio_n_cells != 2) {
 		WARN_ON(1);
 		return -EINVAL;
 	}
@@ -968,6 +968,49 @@ static int of_gpio_simple_xlate(struct gpio_chip *gc,
 	return gpiospec->args[0];
 }
 
+/**
+ * of_gpio_threecell_xlate - translate threecell gpiospec to the GPIO number and flags
+ * @gc:		pointer to the gpio_chip structure
+ * @gpiospec:	GPIO specifier as found in the device tree
+ * @flags:	a flags pointer to fill in
+ *
+ * This is simple translation function, suitable for the most 1:n mapped
+ * GPIO chips, i.e. several GPIO chip instances from one device tree node.
+ * In this case the following binding is implied:
+ *
+ * foo-gpios = <&gpio instance offset flags>;
+ *
+ * Returns:
+ * GPIO number (>= 0) on success, negative errno on failure.
+ */
+static int of_gpio_threecell_xlate(struct gpio_chip *gc,
+				   const struct of_phandle_args *gpiospec,
+				   u32 *flags)
+{
+	if (gc->of_gpio_n_cells != 3) {
+		WARN_ON(1);
+		return -EINVAL;
+	}
+
+	if (WARN_ON(gpiospec->args_count != 3))
+		return -EINVAL;
+
+	/*
+	 * Check chip instance number, the driver responds with true if
+	 * this is the chip we are looking for.
+	 */
+	if (!gc->of_node_instance_match(gc, gpiospec->args[0]))
+		return -EINVAL;
+
+	if (gpiospec->args[1] >= gc->ngpio)
+		return -EINVAL;
+
+	if (flags)
+		*flags = gpiospec->args[2];
+
+	return gpiospec->args[1];
+}
+
 #if IS_ENABLED(CONFIG_OF_GPIO_MM_GPIOCHIP)
 #include <linux/gpio/legacy-of-mm-gpiochip.h>
 /**
@@ -1068,7 +1111,15 @@ static int of_gpiochip_add_pin_range(struct gpio_chip *chip)
 	has_group_names = of_property_present(np, group_names_propname);
 
 	for (;; index++) {
-		ret = of_parse_phandle_with_fixed_args(np, "gpio-ranges", 3,
+		/*
+		 * Ordinary phandles contain 2-3 cells:
+		 * gpios = <&gpio [instance] offset flags>;
+		 * Ranges always contain one more cell:
+		 * gpio-ranges <&pinctrl [gpio_instance] gpio_offet pin_offet count>;
+		 * This is why we parse chip->of_gpio_n_cells + 1 cells
+		 */
+		ret = of_parse_phandle_with_fixed_args(np, "gpio-ranges",
+				chip->of_gpio_n_cells + 1,
 				index, &pinspec);
 		if (ret)
 			break;
@@ -1078,9 +1129,25 @@ static int of_gpiochip_add_pin_range(struct gpio_chip *chip)
 		if (!pctldev)
 			return -EPROBE_DEFER;
 
-		offset = pinspec.args[0];
-		pin = pinspec.args[1];
-		count = pinspec.args[2];
+		if (chip->of_gpio_n_cells == 3) {
+			/* First cell is the gpiochip instance number */
+			offset = pinspec.args[1];
+			pin = pinspec.args[2];
+			count = pinspec.args[3];
+		} else {
+			offset = pinspec.args[0];
+			pin = pinspec.args[1];
+			count = pinspec.args[2];
+		}
+
+		/*
+		 * With multiple GPIO chips per node, check that this chip is the
+		 * right instance.
+		 */
+		if (chip->of_node_instance_match &&
+		    (chip->of_gpio_n_cells == 3) &&
+		    !chip->of_node_instance_match(chip, pinspec.args[0]))
+			continue;
 
 		/* Ignore ranges outside of this GPIO chip */
 		if (offset >= (chip->offset + chip->ngpio))
@@ -1170,8 +1237,14 @@ int of_gpiochip_add(struct gpio_chip *chip)
 		return 0;
 
 	if (!chip->of_xlate) {
-		chip->of_gpio_n_cells = 2;
-		chip->of_xlate = of_gpio_simple_xlate;
+		if (chip->of_gpio_n_cells == 3) {
+			if (!chip->of_node_instance_match)
+				return -EINVAL;
+			chip->of_xlate = of_gpio_threecell_xlate;
+		} else {
+			chip->of_gpio_n_cells = 2;
+			chip->of_xlate = of_gpio_twocell_xlate;
+		}
 	}
 
 	if (chip->of_gpio_n_cells > MAX_PHANDLE_ARGS)
diff --git a/include/linux/gpio/driver.h b/include/linux/gpio/driver.h
index 2dd7cb9cc270a68ddedbcdd5d44e0d0f88dfa785..680217ef8d92d0a6161356cc556eb5456a00eeb9 100644
--- a/include/linux/gpio/driver.h
+++ b/include/linux/gpio/driver.h
@@ -516,10 +516,32 @@ struct gpio_chip {
 	/**
 	 * @of_gpio_n_cells:
 	 *
-	 * Number of cells used to form the GPIO specifier.
+	 * Number of cells used to form the GPIO specifier. The standard is 2
+	 * cells:
+	 *
+	 * gpios = <&gpio offset flags>;
+	 *
+	 * some complex GPIO controllers instantiate more than one chip per
+	 * device tree node and have 3 cells:
+	 *
+	 * gpios = <&gpio instance offset flags>;
+	 *
+	 * Legacy GPIO controllers may even have 1 cell:
+	 *
+	 * gpios = <&gpio offset>;
 	 */
 	unsigned int of_gpio_n_cells;
 
+	/**
+	 * of_node_instance_match:
+	 *
+	 * Determine if a chip is the right instance. Must be implemented by
+	 * any driver using more than one gpio_chip per device tree node.
+	 * Returns true if gc is the instance indicated by i (which is the
+	 * first cell in the phandles for GPIO lines and gpio-ranges).
+	 */
+	bool (*of_node_instance_match)(struct gpio_chip *gc, unsigned int i);
+
 	/**
 	 * @of_xlate:
 	 *

-- 
2.48.1


