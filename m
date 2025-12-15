Return-Path: <devicetree+bounces-246505-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 79D6BCBD432
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 10:48:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id E9F0D3015945
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 09:47:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F2C03315793;
	Mon, 15 Dec 2025 09:47:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="LGF4mjWu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A340628B3E2
	for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 09:47:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765792073; cv=none; b=D1uYvHI6JPC5y+MS8/uj4gLMJHvLhhPmDyHsrsLwDIxhsZ67qscWpYEpl/OFucYxq732r76hPx7uDamGTwvfTV6mtvWA5n1fFt1Z0RdgmqOxm4HV1nWy+yv85+Uax6Ls+gui8Mu+4d1JO1e6VO4+EUIUxJ4aIMnt6Kqcoy3kebE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765792073; c=relaxed/simple;
	bh=Lms6/stTSeqardwm+RyauEeBz1C1uDEVLzFEIXT2v3s=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=mW3mGj5gJ9zswptZlRGfWjTFOL2dUI8U27KA1Ro0qofWYfy2YLiZWGZtU3lMsn9o6h/Edl9i85zaKiU7+ygB+fXfuw9Ue/Vv9aGzMavMTYgMD4auQpDm0npCboGKAd5eSQFo27B2Idh5i5nuxpHjrMnLpi1Pb9NoerfQOSPOrVE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=LGF4mjWu; arc=none smtp.client-ip=209.85.167.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-598f59996aaso3908040e87.1
        for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 01:47:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765792070; x=1766396870; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=V6iN4UOpzzHKEEieW0jj8euz+beVA0D1U8Y9G9L7tjI=;
        b=LGF4mjWuNAy+vylRY6Pj3tkJw+ZGNDe+2XetucWBr3cTgnUfEGHeLbYNrFBEQMclrx
         2mflglkJKBOx2kA7t9HFvw5vh9noZEVim3mgYJ5QV5rH+UuUlW7hjlXpEWAmKrdyKNFD
         MEB2s2iX5yrAotsESdmLjwecGXGsB3Uz/pQOyIEDkVRkwD3LyBvTLMX1Uu497/5RmMFX
         HOKK56lVRPI9/1wrld5BlYF4odASWmBVL4SOBz1ZNwrl5TKDc3cCaILb4LDncwz3U/B7
         QMDA7O69PeHVSLN8vwua3vItVj4QK55BIG/Q8Ke6vMjDliGErTXGftAupb/wiliFkUPW
         AwRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765792070; x=1766396870;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=V6iN4UOpzzHKEEieW0jj8euz+beVA0D1U8Y9G9L7tjI=;
        b=M3ktPNTvEOuYNZPfQtpok/tuSWvK9ZswJVyy1k8Qeq6PDnaz8EkqYCnRkPXQqeHWa4
         49NQrf+q6e2XplE0UDfJLvYEz2j3v7KbCu9qyL3GFaZR9ZQ43KVF3zaXEig59dkoMb96
         EZSXfktAzDMVNAX8fA8rELjTBFAKcL/K5uw2ipbSuBurTibd65/Bs64BQRuP2y4RTvmh
         NDQZrhoHRjsNzydcM1SUAHBJT/L74Ur+ok8LuVA7Qmk1V2qJaARKLamr5Rwxn9s8Pzf9
         jMfStUB+DlsRa75qs3TlhUsjm3YoCEENyPejzWito1IhqOKMkdN/s8MQa9p0FuEO1wzi
         9htQ==
X-Forwarded-Encrypted: i=1; AJvYcCWR/n0Km447N579Ytx9sEUuQp5xKgrCVxB+ZIdA2CZ1Mo/ybVwrRwg84zVC1toYZFCmBNuZopF2nEOj@vger.kernel.org
X-Gm-Message-State: AOJu0Yz5otIN+B5p+qeFF9mRXWo56FuSPhZVynhMKJOWJlu1Fy1SoXUQ
	XoogpgDB8XlxN0mkGCtJSSjL8mI8dntmIIV8w35ed+FVae72AnNjoMNR
X-Gm-Gg: AY/fxX4KrMoJ5Vbs0VbD2qjT0joElhX5C6alfvWSW5uxaVEMKZ7z4GecPnp9UAZRhHK
	fdlH63yf6k8rZK4xgHh9aAqY6f02pbXejP4uxQb9FqOMFTVbwOQD5Yyph8Wd1LgxACPlgebgvi9
	5wfmKkDNJPSCsjYs0fMUJg+CYN3trG1y7J6Wms5U9V8dZGw77L8EfIX3lwsP+rTNG9EbeJ60geW
	YPoAVEbMr5K+vy3CzXYln3HEhYofCSOxSmkfupZOiHc+m2l30Vpl9/bfFs4UkvRDXvbSMa+fIli
	2kROQ+T1S342nFXEHjJutrZINobubOX/4KdlvKuiNiq0i9LEQl0vI/cNARlnCXFkh4i91Uiq+wR
	iRgZ6aTbLmLmmK0BSPStXi80xcOSXJnRahkZ6Ahkq/hEob+BtQ4/4EMdtzTx8s4Frn6DEFYuHBm
	hph4QccXIU6J55zugSkJJ7ZcHQWw6abhnEBGPqj5oZwG9b86J20ojDForQMpissDg+07k=
X-Google-Smtp-Source: AGHT+IGNGdkYxDu4RNnvhaDwVvl/Rq0J8YhGbOK3oIot8sr5UOeyNDMUIHvZMbDWb9lbSF2aIj/0Cw==
X-Received: by 2002:a05:6512:131a:b0:592:f72f:c1d8 with SMTP id 2adb3069b0e04-598faa1db17mr3424469e87.16.1765792069526;
        Mon, 15 Dec 2025 01:47:49 -0800 (PST)
Received: from [192.168.1.168] (83-233-6-197.cust.bredband2.com. [83.233.6.197])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-598f2f37ae8sm5397546e87.15.2025.12.15.01.47.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Dec 2025 01:47:48 -0800 (PST)
From: Marcus Folkesson <marcus.folkesson@gmail.com>
Date: Mon, 15 Dec 2025 10:46:46 +0100
Subject: [PATCH v3 4/7] drm/sitronix/st7571-i2c: make probe independent of
 hw interface
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20251215-st7571-split-v3-4-d5f3205c3138@gmail.com>
References: <20251215-st7571-split-v3-0-d5f3205c3138@gmail.com>
In-Reply-To: <20251215-st7571-split-v3-0-d5f3205c3138@gmail.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Javier Martinez Canillas <javierm@redhat.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, Marcus Folkesson <marcus.folkesson@gmail.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=10532;
 i=marcus.folkesson@gmail.com; h=from:subject:message-id;
 bh=Lms6/stTSeqardwm+RyauEeBz1C1uDEVLzFEIXT2v3s=;
 b=kA0DAAoBiIBOb1ldUjIByyZiAGk/2SqhW0zkq9G9T7nRMX8T3pCfTnzLFPTk7PS5gEHBgvIg4
 YkCMwQAAQoAHRYhBAVRoui2bLVNZMEsZYiATm9ZXVIyBQJpP9kqAAoJEIiATm9ZXVIyKZwQAKfA
 60KnqyoyZjfGEwXc33feUsH2BCH8JLNG8fXrDrhj7KAbSUIqY5D5AsF8MlSGtff/E0NhTMzMxh/
 co+DQM3WxOmjSCmsia1vXN4VRidN0oUec+rgpmlCWeKNiLDfuoP+cguyj44vXiwl2BRcMZLjypS
 Tdu/hN6MgLEVwtnSF2cymvcHfB2gqOSSPY0J36jf66DlXiAY//AdFJO35MsDuWai+8iL4gxhCsa
 f71i/Bwe/FD3lVSkCp38Y5Dw+1MoJp4ayldJIxjSlm739swCJ7+SGkbYZrNprhhu8ljjjGN08gv
 2bhaCK2TaJHAaRJFHvZN/OFy/4czBfeYQhA9jv4HU0Y5eWCODDhbRKzO8V9cv9XzHEZCNjKKNeq
 VgbF3ym+WmyMawjo7qm/z+WU/zfQH0CiqtG3vtxo52z3PhIKY99CA0zflhCT77wbA/B90kgj+kH
 dLeyqLHOFQARWBGHRZB3oTvHQ6qlsCss7TIWZGz7t0HObtK/9F+FSCi+fsdyYnPSA1Wq1Ng2uP0
 NkOCfE7gwApJqYgw+PfQyexHcq/p/5knvHlGwqWVt0Swq4q0IyDq0MhTzbTBIT0Yswq9MtXSqRv
 UltAvYVaRkGcx47skN/EUcJbBTsKURmVgu+g2gJiLmaU7Ye2647vJxHWwifJYbh3khA8ktmM8Is
 tld/4
X-Developer-Key: i=marcus.folkesson@gmail.com; a=openpgp;
 fpr=AB91D46C7E0F6E6FB2AB640EC0FE25D598F6C127

Create an interface independent layer for the probe function. This is to
make it possible to add support for other interfaces.

Reviewed-by: Javier Martinez Canillas <javierm@redhat.com>
Signed-off-by: Marcus Folkesson <marcus.folkesson@gmail.com>
---
 drivers/gpu/drm/sitronix/st7571-i2c.c | 165 +++++++++++++++++++++++-----------
 drivers/gpu/drm/sitronix/st7571.h     |  25 +-----
 2 files changed, 113 insertions(+), 77 deletions(-)

diff --git a/drivers/gpu/drm/sitronix/st7571-i2c.c b/drivers/gpu/drm/sitronix/st7571-i2c.c
index af27658a5e15..f994ace40739 100644
--- a/drivers/gpu/drm/sitronix/st7571-i2c.c
+++ b/drivers/gpu/drm/sitronix/st7571-i2c.c
@@ -80,6 +80,33 @@
 #define DRIVER_MAJOR 1
 #define DRIVER_MINOR 0
 
+struct st7571_i2c_transport {
+	struct i2c_client *client;
+
+	/*
+	 * Depending on the hardware design, the acknowledge signal may be hard to
+	 * recognize as a valid logic "0" level.
+	 * Therefor, ignore NAK if possible to stay compatible with most hardware designs
+	 * and off-the-shelf panels out there.
+	 *
+	 * From section 6.4 MICROPOCESSOR INTERFACE section in the datasheet:
+	 *
+	 * "By connecting SDA_OUT to SDA_IN externally, the SDA line becomes fully
+	 * I2C interface compatible.
+	 * Separating acknowledge-output from serial data
+	 * input is advantageous for chip-on-glass (COG) applications. In COG
+	 * applications, the ITO resistance and the pull-up resistor will form a
+	 * voltage  divider, which affects acknowledge-signal level. Larger ITO
+	 * resistance will raise the acknowledged-signal level and system cannot
+	 * recognize this level as a valid logic “0” level. By separating SDA_IN from
+	 * SDA_OUT, the IC can be used in a mode that ignores the acknowledge-bit.
+	 * For applications which check acknowledge-bit, it is necessary to minimize
+	 * the ITO resistance of the SDA_OUT trace to guarantee a valid low level."
+	 *
+	 */
+	bool ignore_nak;
+};
+
 static inline struct st7571_device *drm_to_st7571(struct drm_device *drm)
 {
 	return container_of(drm, struct st7571_device, drm);
@@ -87,18 +114,17 @@ static inline struct st7571_device *drm_to_st7571(struct drm_device *drm)
 
 static int st7571_regmap_write(void *context, const void *data, size_t count)
 {
-	struct i2c_client *client = context;
-	struct st7571_device *st7571 = i2c_get_clientdata(client);
+	struct st7571_i2c_transport *t = context;
 	int ret;
 
 	struct i2c_msg msg = {
-		.addr = st7571->client->addr,
-		.flags = st7571->ignore_nak ? I2C_M_IGNORE_NAK : 0,
+		.addr = t->client->addr,
+		.flags = t->ignore_nak ? I2C_M_IGNORE_NAK : 0,
 		.len = count,
 		.buf = (u8 *)data
 	};
 
-	ret = i2c_transfer(st7571->client->adapter, &msg, 1);
+	ret = i2c_transfer(t->client->adapter, &msg, 1);
 
 	/*
 	 * Unfortunately, there is no way to check if the transfer failed because of
@@ -106,7 +132,7 @@ static int st7571_regmap_write(void *context, const void *data, size_t count)
 	 *
 	 * However, if the transfer fails and ignore_nak is set, we know it is an error.
 	 */
-	if (ret < 0 && st7571->ignore_nak)
+	if (ret < 0 && t->ignore_nak)
 		return ret;
 
 	return 0;
@@ -845,102 +871,135 @@ static int st7571_lcd_init(struct st7571_device *st7571)
 	return st7571_send_command_list(st7571, commands, ARRAY_SIZE(commands));
 }
 
-static int st7571_probe(struct i2c_client *client)
+static struct st7571_device *st7571_probe(struct device *dev,
+					  struct regmap *regmap)
 {
 	struct st7571_device *st7571;
 	struct drm_device *drm;
 	int ret;
 
-	st7571 = devm_drm_dev_alloc(&client->dev, &st7571_driver,
+	st7571 = devm_drm_dev_alloc(dev, &st7571_driver,
 				    struct st7571_device, drm);
 	if (IS_ERR(st7571))
-		return PTR_ERR(st7571);
+		return st7571;
 
 	drm = &st7571->drm;
-	st7571->dev = &client->dev;
-	st7571->client = client;
-	i2c_set_clientdata(client, st7571);
+	st7571->dev = dev;
 	st7571->pdata = device_get_match_data(st7571->dev);
 
 	ret = st7571->pdata->parse_dt(st7571);
 	if (ret)
-		return ret;
+		return ERR_PTR(ret);
 
 	ret = st7571_validate_parameters(st7571);
 	if (ret)
-		return ret;
+		return ERR_PTR(ret);
 
 	st7571->mode = st7571_mode(st7571);
+	st7571->regmap = regmap;
 
-	/*
-	 * The hardware design could make it hard to detect a NAK on the I2C bus.
-	 * If the adapter does not support protocol mangling do
-	 * not set the I2C_M_IGNORE_NAK flag at the expense * of possible
-	 * cruft in the logs.
-	 */
-	if (i2c_check_functionality(client->adapter, I2C_FUNC_PROTOCOL_MANGLING))
-		st7571->ignore_nak = true;
-
-	st7571->regmap = devm_regmap_init(st7571->dev, &st7571_regmap_bus,
-					  client, &st7571_regmap_config);
-	if (IS_ERR(st7571->regmap)) {
-		return dev_err_probe(st7571->dev, PTR_ERR(st7571->regmap),
-				     "Failed to initialize regmap\n");
-	}
 
 	st7571->hwbuf = devm_kzalloc(st7571->dev,
 				     (st7571->nlines * st7571->ncols * st7571->bpp) / 8,
 				     GFP_KERNEL);
 	if (!st7571->hwbuf)
-		return -ENOMEM;
+		return ERR_PTR(-ENOMEM);
 
 	st7571->row = devm_kzalloc(st7571->dev,
 				   (st7571->ncols * st7571->bpp),
 				   GFP_KERNEL);
 	if (!st7571->row)
-		return -ENOMEM;
+		return ERR_PTR(-ENOMEM);
 
 	ret = st7571_mode_config_init(st7571);
-	if (ret)
-		return dev_err_probe(st7571->dev, ret,
-				     "Failed to initialize mode config\n");
+	if (ret) {
+		dev_err(st7571->dev, "Failed to initialize mode config\n");
+		return ERR_PTR(ret);
+	}
 
 	ret = st7571_plane_init(st7571, st7571->pformat);
-	if (ret)
-		return dev_err_probe(st7571->dev, ret,
-				     "Failed to initialize primary plane\n");
+	if (ret) {
+		dev_err(st7571->dev, "Failed to initialize primary plane\n");
+		return ERR_PTR(ret);
+	}
 
 	ret = st7571_crtc_init(st7571);
-	if (ret < 0)
-		return dev_err_probe(st7571->dev, ret,
-				     "Failed to initialize CRTC\n");
+	if (ret < 0) {
+		dev_err(st7571->dev, "Failed to initialize CRTC\n");
+		return ERR_PTR(ret);
+	}
 
 	ret = st7571_encoder_init(st7571);
-	if (ret < 0)
-		return dev_err_probe(st7571->dev, ret,
-				     "Failed to initialize encoder\n");
+	if (ret < 0) {
+		dev_err(st7571->dev, "Failed to initialize encoder\n");
+		return ERR_PTR(ret);
+	}
 
 	ret = st7571_connector_init(st7571);
-	if (ret < 0)
-		return dev_err_probe(st7571->dev, ret,
-				     "Failed to initialize connector\n");
+	if (ret < 0) {
+		dev_err(st7571->dev, "Failed to initialize connector\n");
+		return ERR_PTR(ret);
+	}
 
 	drm_mode_config_reset(drm);
 
 	ret = drm_dev_register(drm, 0);
-	if (ret)
-		return dev_err_probe(st7571->dev, ret,
-				     "Failed to register DRM device\n");
+	if (ret) {
+		dev_err(st7571->dev, "Failed to register DRM device\n");
+		return ERR_PTR(ret);
+	}
 
 	drm_client_setup(drm, NULL);
+	return st7571;
+}
+
+static void st7571_remove(struct st7571_device *st7571)
+{
+	drm_dev_unplug(&st7571->drm);
+}
+
+static int st7571_i2c_probe(struct i2c_client *client)
+{
+	struct st7571_device *st7571;
+	struct st7571_i2c_transport *t;
+	struct regmap *regmap;
+
+	t = devm_kzalloc(&client->dev, sizeof(*t), GFP_KERNEL);
+	if (!t)
+		return -ENOMEM;
+
+	t->client = client;
+
+	/*
+	 * The hardware design could make it hard to detect a NAK on the I2C bus.
+	 * If the adapter does not support protocol mangling do
+	 * not set the I2C_M_IGNORE_NAK flag at the expense * of possible
+	 * cruft in the logs.
+	 */
+	if (i2c_check_functionality(client->adapter, I2C_FUNC_PROTOCOL_MANGLING))
+		t->ignore_nak = true;
+
+	regmap = devm_regmap_init(&client->dev, &st7571_regmap_bus,
+				  t, &st7571_regmap_config);
+	if (IS_ERR(regmap)) {
+		return dev_err_probe(&client->dev, PTR_ERR(regmap),
+				     "Failed to initialize regmap\n");
+	}
+
+	st7571 = st7571_probe(&client->dev, regmap);
+	if (IS_ERR(st7571))
+		return dev_err_probe(&client->dev, PTR_ERR(st7571),
+				     "Failed to initialize regmap\n");
+
+	i2c_set_clientdata(client, st7571);
 	return 0;
 }
 
-static void st7571_remove(struct i2c_client *client)
+static void st7571_i2c_remove(struct i2c_client *client)
 {
 	struct st7571_device *st7571 = i2c_get_clientdata(client);
 
-	drm_dev_unplug(&st7571->drm);
+	st7571_remove(st7571);
 }
 
 static const struct st7571_panel_data st7567_config = {
@@ -986,8 +1045,8 @@ static struct i2c_driver st7571_i2c_driver = {
 		.name = "st7571",
 		.of_match_table = st7571_of_match,
 	},
-	.probe = st7571_probe,
-	.remove = st7571_remove,
+	.probe = st7571_i2c_probe,
+	.remove = st7571_i2c_remove,
 	.id_table = st7571_id,
 };
 
diff --git a/drivers/gpu/drm/sitronix/st7571.h b/drivers/gpu/drm/sitronix/st7571.h
index c6fd6f1d3aa3..f62c57ddb99e 100644
--- a/drivers/gpu/drm/sitronix/st7571.h
+++ b/drivers/gpu/drm/sitronix/st7571.h
@@ -13,6 +13,7 @@
 #include <drm/drm_crtc.h>
 #include <drm/drm_drv.h>
 #include <drm/drm_encoder.h>
+#include <drm/drm_format_helper.h>
 
 #include <linux/regmap.h>
 
@@ -62,33 +63,9 @@ struct st7571_device {
 
 	const struct st7571_panel_format *pformat;
 	const struct st7571_panel_data *pdata;
-	struct i2c_client *client;
 	struct gpio_desc *reset;
 	struct regmap *regmap;
 
-	/*
-	 * Depending on the hardware design, the acknowledge signal may be hard to
-	 * recognize as a valid logic "0" level.
-	 * Therefor, ignore NAK if possible to stay compatible with most hardware designs
-	 * and off-the-shelf panels out there.
-	 *
-	 * From section 6.4 MICROPOCESSOR INTERFACE section in the datasheet:
-	 *
-	 * "By connecting SDA_OUT to SDA_IN externally, the SDA line becomes fully
-	 * I2C interface compatible.
-	 * Separating acknowledge-output from serial data
-	 * input is advantageous for chip-on-glass (COG) applications. In COG
-	 * applications, the ITO resistance and the pull-up resistor will form a
-	 * voltage  divider, which affects acknowledge-signal level. Larger ITO
-	 * resistance will raise the acknowledged-signal level and system cannot
-	 * recognize this level as a valid logic “0” level. By separating SDA_IN from
-	 * SDA_OUT, the IC can be used in a mode that ignores the acknowledge-bit.
-	 * For applications which check acknowledge-bit, it is necessary to minimize
-	 * the ITO resistance of the SDA_OUT trace to guarantee a valid low level."
-	 *
-	 */
-	bool ignore_nak;
-
 	bool grayscale;
 	bool inverted;
 	u32 height_mm;

-- 
2.51.2


