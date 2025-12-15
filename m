Return-Path: <devicetree+bounces-246503-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 34AA6CBD40E
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 10:48:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id DCEC43011B23
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 09:47:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 01824314D28;
	Mon, 15 Dec 2025 09:47:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="gWqz5Akz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com [209.85.167.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03C9D313529
	for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 09:47:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765792070; cv=none; b=ecATUO2Kgw3uyrBe8Rgz//R8K/RcFXdlMWBAAgUAwEFg1V5vj6iN88F3ZkYX7rQFKx5ThuLpjeOWCjr7cWCqIMBAhH8HJ0D0ZyBpZOVIFG5q7iA0fmVWIi0ktPEEZSCiX3ihLg3N82hIzIAPnxFkiGbTXiPt+CFaiuguSJifdn4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765792070; c=relaxed/simple;
	bh=rGWG5VB+SYJwiLQ5k2bpIRqRjhxs+agQ84bFzEyGkzY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=LVE1U7Uu0N/3QXiNo7lEDnbqJdXHfh6NtW4NCOjGCDnQOo6z7VPWkB+q40wK2kJHQfZW+WAOFkTW5sJPHPHMiH/TKJ6IxTZ7iUXb51fTNrmOTb48SY1D30fJPw9fVPfeN628oMOe23v1/tRgMSkDDeT1YPw0dal8SFfgqfqfRD4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=gWqz5Akz; arc=none smtp.client-ip=209.85.167.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f43.google.com with SMTP id 2adb3069b0e04-5958931c9c7so3970004e87.2
        for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 01:47:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765792065; x=1766396865; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rbKlkWxiAX2TjHlXxATTwuLMILne1kJWYscDW2ei324=;
        b=gWqz5AkzmbPA/aeR0ZI7esef+JTs+FPTUOOZ/QDn9bXR/SqZSH91QLkyQRuUz4QCCF
         rkJZNT73JvV8VYNcr5E2MwMO+nkCh7SGveM7ZopGqzxNfUFryvXuynUAoVBsxMAAhiwg
         pdUTdWhxkuCE9NNUCi+pllqgzRosHiziwruypQGPKQ48SL9OVGp7e15XVOfDaYjaXJ2h
         VF99dN52rhwW28vL6UHnF43r5XnW+dCVAx52feBc4dNB7diilplCOudjHcuIklRz/ASx
         P6lQCxR7bxvnP8UUSJyPL+rQ7aYn4111MbGvNK+Tug0LKNCJ3+MuLlD6W7GIyx+TKNEx
         1CZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765792065; x=1766396865;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=rbKlkWxiAX2TjHlXxATTwuLMILne1kJWYscDW2ei324=;
        b=h7zCbR8wkbnt+kiejZOi6kEaC/G0zLsbeXvwAIuV8nUYFtk2icOXMAWUtxUkkAZfIZ
         j2jLuf5fGc2o7eajiQMNYh+Kmiwpem/YXBvJVedAWh+Dxv5dz2n5QQyu7OZlnNI2HvBT
         OeRxGvuL89mCuTcuX1auibMlRrubYfMmFBSEwV1X4eZTqYIUtBNUWPljvyly2Q3LgmC1
         pj7BROVwP8XxIc1knSn2wRMfDiE3VB9Xs6JhXGrGHIw7/WaqkRqYqXZ1HMpnVjn+4Owv
         HPx9u5w3EceJZ1WAaZjSd6hfi/LQLuFAzLsuC57qn8PuWnHW1zYis5PicYx1+pf4wRrt
         thWA==
X-Forwarded-Encrypted: i=1; AJvYcCVcB8YEMoM82dRmZ4WcdVd7RL5E56mHYjtTknKioIv2uzhc2bUump/161KUBulpMnrFEEORoSjDfm0k@vger.kernel.org
X-Gm-Message-State: AOJu0YyoQzndOfauv6ogXXEZLMzknSHf6NfyLSVxUJyjh8Nb8Oafafbf
	bMSG6z6IdxpYaS8yDoLURdmAp2iSn2r4NaJGhWGZi7abNwb/DNwRJbIB
X-Gm-Gg: AY/fxX7WF7FDAAytDjmsIn9xY8CdtWTpr/T5QnWuO6mCZwwByX94PuMedqnbvdueuru
	y1aChxjo0QRbOCwiKb5gJevf9xwl7kJlTC9pjYTlvaHb9q3zu2ZVWm+G7q85GMt5ckkcfd/+KF6
	2jEvfegnuj0Mu0Gfpj8wrV+Jy2zLq0U/CwgRgIxzfcsAq2mntGkiAPQCrsnEeLOueEn7m1Rhtxk
	XqZteXEEsOj7AdMaG0/fFrOTCyqL7jA18JOwL9SHdZpPFHhCqjjoxDz8HwwLWIGfE8D90fm1Pea
	TIRUVfUWZQTt0aKj/YXrYK2ArtAzAVkhs/GvlOrYbppV3vhxOn91LzDx+Z0Fh38WgjyfMduPDMH
	aHao9kUE3tyd8Cnf9jQLYz1uGprf9kTLTpn9odxd56Z3OvjXZ4lozv8LARAj6hV37Ngx+AXY5Op
	wAPkdMEcj++VL+nG4+Lfxy9Lx4eD6BCVrN795fwFcJ50XeDDdO+ilmWsnF
X-Google-Smtp-Source: AGHT+IEC65xV9vgij1sh8uTFEV4NwkWc1wHzBBscrzb8bMXqszqukAOgifVaQaARxDBgkyHE6aaimA==
X-Received: by 2002:a05:6512:33d2:b0:594:314d:ac53 with SMTP id 2adb3069b0e04-598faa59526mr3627657e87.23.1765792064867;
        Mon, 15 Dec 2025 01:47:44 -0800 (PST)
Received: from [192.168.1.168] (83-233-6-197.cust.bredband2.com. [83.233.6.197])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-598f2f37ae8sm5397546e87.15.2025.12.15.01.47.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Dec 2025 01:47:44 -0800 (PST)
From: Marcus Folkesson <marcus.folkesson@gmail.com>
Date: Mon, 15 Dec 2025 10:46:44 +0100
Subject: [PATCH v3 2/7] drm/sitronix/st7571-i2c: add 'struct device' to
 st7571_device
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251215-st7571-split-v3-2-d5f3205c3138@gmail.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=4488;
 i=marcus.folkesson@gmail.com; h=from:subject:message-id;
 bh=rGWG5VB+SYJwiLQ5k2bpIRqRjhxs+agQ84bFzEyGkzY=;
 b=owEBbQKS/ZANAwAKAYiATm9ZXVIyAcsmYgBpP9khNYUMKk9cqbQMbSmEWadmv3PEbO1aiBSDM
 b85j50VirOJAjMEAAEKAB0WIQQFUaLotmy1TWTBLGWIgE5vWV1SMgUCaT/ZIQAKCRCIgE5vWV1S
 MgkSD/wIJT0+UBpXpPDB9rWJHqLkOYtLWLIYofdttBU6nHn0RtewsobL7IAcjGu/MQ/HlOeEXWB
 bsgKEzTqCYL4xFAPcQtg6LchK7ZmzU5aRAitD1KLHxMoFNQ9b2YUXS6KWAYLkXwpGSPXcMHQVn+
 ctQLDE6p3k/TLH/IjPhC9KSBYHjBzQ6nwOOt77NGKm/ubuqEbeih4cZ4u7DWnF2bWNU7XTsFne5
 wkLNhWiBYbXTH8XgCb6fyBHUWyd8Czn+WkRKP0a2gAw4OCuqXAl7gJ9H5/kIQTUODFCURpBG8Yq
 H5jAFhI2+jWYU64Ol/ElPAg+OUTw6kpVO+meR3wCwZmUkU6XC3eTC5a5L24KztuuPtp9u2rz50H
 XoDDsbCwCLJMd0/bYKHbU91DHtrr9qlmgyfiSavVRYZ+U0xUDgKxIhJpKte+0h1wIp3DD0XsfvV
 yjFWQcIL8WMBNDXs+/qRnkq4iguzGJxXrvOsjRMxr4dyUkhK7ahjHdkBNJZsj54yCTh3OjLxz7G
 gQFxqqr1JI+xaN6/N1aQYsiMjIBuAmMUeQAuiSFe5uTb1YmtN053TcHJODjfzdKsaGS92lK8/Ca
 gMZW+5rT+6tpUqmrRyF3E1CjlHDCeQxTq08WDSkEtKtt+udNx+aMGYcPQNOU4ZYQLyNIFsGOpB2
 KlXBwbnRj4oToCQ==
X-Developer-Key: i=marcus.folkesson@gmail.com; a=openpgp;
 fpr=AB91D46C7E0F6E6FB2AB640EC0FE25D598F6C127

Keep a copy of the device structure instead of referring to i2c_client.
This is a preparation step to separate the generic part from all i2c
stuff.

Reviewed-by: Javier Martinez Canillas <javierm@redhat.com>
Signed-off-by: Marcus Folkesson <marcus.folkesson@gmail.com>
---
 drivers/gpu/drm/sitronix/st7571-i2c.c | 30 ++++++++++++++++--------------
 1 file changed, 16 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/sitronix/st7571-i2c.c b/drivers/gpu/drm/sitronix/st7571-i2c.c
index 71814a3eb93b..2b52919d7dd4 100644
--- a/drivers/gpu/drm/sitronix/st7571-i2c.c
+++ b/drivers/gpu/drm/sitronix/st7571-i2c.c
@@ -113,6 +113,7 @@ struct st7571_panel_format {
 
 struct st7571_device {
 	struct drm_device drm;
+	struct device *dev;
 
 	struct drm_plane primary_plane;
 	struct drm_crtc crtc;
@@ -741,7 +742,7 @@ static const struct regmap_config st7571_regmap_config = {
 
 static int st7571_validate_parameters(struct st7571_device *st7571)
 {
-	struct device *dev = st7571->dev.dev;
+	struct device *dev = st7571->dev;
 	const struct st7571_panel_constraints *constraints = &st7571->pdata->constraints;
 
 	if (st7571->width_mm  == 0) {
@@ -781,7 +782,7 @@ static int st7571_validate_parameters(struct st7571_device *st7571)
 
 static int st7567_parse_dt(struct st7571_device *st7567)
 {
-	struct device *dev = &st7567->client->dev;
+	struct device *dev = st7567->dev;
 	struct device_node *np = dev->of_node;
 	struct display_timing dt;
 	int ret;
@@ -808,7 +809,7 @@ static int st7567_parse_dt(struct st7571_device *st7567)
 
 static int st7571_parse_dt(struct st7571_device *st7571)
 {
-	struct device *dev = &st7571->client->dev;
+	struct device *dev = st7571->dev;
 	struct device_node *np = dev->of_node;
 	struct display_timing dt;
 	int ret;
@@ -943,9 +944,10 @@ static int st7571_probe(struct i2c_client *client)
 		return PTR_ERR(st7571);
 
 	drm = &st7571->drm;
+	st7571->dev = &client->dev;
 	st7571->client = client;
 	i2c_set_clientdata(client, st7571);
-	st7571->pdata = device_get_match_data(&client->dev);
+	st7571->pdata = device_get_match_data(st7571->dev);
 
 	ret = st7571->pdata->parse_dt(st7571);
 	if (ret)
@@ -966,20 +968,20 @@ static int st7571_probe(struct i2c_client *client)
 	if (i2c_check_functionality(client->adapter, I2C_FUNC_PROTOCOL_MANGLING))
 		st7571->ignore_nak = true;
 
-	st7571->regmap = devm_regmap_init(&client->dev, &st7571_regmap_bus,
+	st7571->regmap = devm_regmap_init(st7571->dev, &st7571_regmap_bus,
 					  client, &st7571_regmap_config);
 	if (IS_ERR(st7571->regmap)) {
-		return dev_err_probe(&client->dev, PTR_ERR(st7571->regmap),
+		return dev_err_probe(st7571->dev, PTR_ERR(st7571->regmap),
 				     "Failed to initialize regmap\n");
 	}
 
-	st7571->hwbuf = devm_kzalloc(&client->dev,
+	st7571->hwbuf = devm_kzalloc(st7571->dev,
 				     (st7571->nlines * st7571->ncols * st7571->bpp) / 8,
 				     GFP_KERNEL);
 	if (!st7571->hwbuf)
 		return -ENOMEM;
 
-	st7571->row = devm_kzalloc(&client->dev,
+	st7571->row = devm_kzalloc(st7571->dev,
 				   (st7571->ncols * st7571->bpp),
 				   GFP_KERNEL);
 	if (!st7571->row)
@@ -987,34 +989,34 @@ static int st7571_probe(struct i2c_client *client)
 
 	ret = st7571_mode_config_init(st7571);
 	if (ret)
-		return dev_err_probe(&client->dev, ret,
+		return dev_err_probe(st7571->dev, ret,
 				     "Failed to initialize mode config\n");
 
 	ret = st7571_plane_init(st7571, st7571->pformat);
 	if (ret)
-		return dev_err_probe(&client->dev, ret,
+		return dev_err_probe(st7571->dev, ret,
 				     "Failed to initialize primary plane\n");
 
 	ret = st7571_crtc_init(st7571);
 	if (ret < 0)
-		return dev_err_probe(&client->dev, ret,
+		return dev_err_probe(st7571->dev, ret,
 				     "Failed to initialize CRTC\n");
 
 	ret = st7571_encoder_init(st7571);
 	if (ret < 0)
-		return dev_err_probe(&client->dev, ret,
+		return dev_err_probe(st7571->dev, ret,
 				     "Failed to initialize encoder\n");
 
 	ret = st7571_connector_init(st7571);
 	if (ret < 0)
-		return dev_err_probe(&client->dev, ret,
+		return dev_err_probe(st7571->dev, ret,
 				     "Failed to initialize connector\n");
 
 	drm_mode_config_reset(drm);
 
 	ret = drm_dev_register(drm, 0);
 	if (ret)
-		return dev_err_probe(&client->dev, ret,
+		return dev_err_probe(st7571->dev, ret,
 				     "Failed to register DRM device\n");
 
 	drm_client_setup(drm, NULL);

-- 
2.51.2


