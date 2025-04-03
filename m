Return-Path: <devicetree+bounces-163006-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CECF9A7AE3C
	for <lists+devicetree@lfdr.de>; Thu,  3 Apr 2025 22:24:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6308F3B42F3
	for <lists+devicetree@lfdr.de>; Thu,  3 Apr 2025 20:20:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 74012200120;
	Thu,  3 Apr 2025 19:16:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="DUVN8BoL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 432F9200BB5
	for <devicetree@vger.kernel.org>; Thu,  3 Apr 2025 19:16:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743707792; cv=none; b=LT0DHxie3I/U1fUlPJsg8n9P8LUVykrc+ZF9FE43K3bWTglRljd2sGMnB2/9F911C8iyNQKRFypPYRLz98hlbiSVsTVk6HOuzQUv2jps9+/eMnBlKEs8XBL/NX87MxBKdasqPzw5++66oZgIZmDbKkqHFI54soDb+T1kxd71dzw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743707792; c=relaxed/simple;
	bh=FkbqQupMpzx0wszT8hmcVx+KkNGgx/ddD0tHr201vd4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=awrRFy6azGLmVGJFh7k6qklQP6SAp0l2hukKf9uXt0qwP6FrS8PBiahh1CoheZfSeD3Hu1Z3N3J+thhcJqKH8qv98ERPWv+cLNfvxMU1LQ2yRuhgEi0ghVn4lTpSHpRp/FC6KVdeWNN3O6MiurIXULloE8sxyq4/MyGXyHDPd00=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=DUVN8BoL; arc=none smtp.client-ip=209.85.167.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-5499e3ec54dso1510574e87.0
        for <devicetree@vger.kernel.org>; Thu, 03 Apr 2025 12:16:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1743707787; x=1744312587; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3Ka+lvT2WWas4h5SU2dyS9iOFUZ7NSTxVoiGdeZqTAM=;
        b=DUVN8BoLDufoqp6l9PgZ5nVu3y253dfDUXL3m5TFpnDjZ3dSFN7nP4iUbleHFalBTX
         w80OnXcSo1FFVsDLrQyDbl3Y6f4h0474jHBY6XzRh0KXF6j0X5k8ZJFiX3qeTgf3IxeK
         +IrnGEhZH2B3yyG51KNx2kjMbPi8IodSCNHto=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743707787; x=1744312587;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3Ka+lvT2WWas4h5SU2dyS9iOFUZ7NSTxVoiGdeZqTAM=;
        b=Bcf8844BfBtp26VrZX/pvgbvtIRQoH9cQiEwp1lMMLdQilqyu3O4De/gQmnjUjiW7r
         2DjnhP8mHRKEnlhV3rN9upcRTH/xZuTvWXwOjF1+1YAiogp7mmnAcre43NElTGACMK3k
         yoMVkArThqGoLg+6Tpf7ri0eRtSQqJtuYCTOpf4si9m83pQ6ITiYInQt5cdHOPkvBsQT
         hwku7dQ5pGoQxcTwPk8bfCsxw8MPh7GDRg/dUE5vrdqXyBA4/RQi472IrpoSqWeyZJLC
         jnwRG7Wuq9kvPI1hA/WK4fWb3kIPBl9JjeF510wUiOhWaMJIQWWf6PNdU26PcP9yU/kR
         9Blg==
X-Forwarded-Encrypted: i=1; AJvYcCXtRKQXflulyGu8FsM6/01zkEyw/Z4qnUe27lVmD0AD8S1S0U5TbTO7hhhVkiTOd7oapJNw72zafI3j@vger.kernel.org
X-Gm-Message-State: AOJu0YyS36rOZB5ruQfHpPFwV5XmdR2Y93RQlY2YG6V64f0tX+t9Gxk8
	fWKdY6Bye+3X/QjH3eNSmpBiUbvjfhZkbSGJLmDpa+ssaVYKAYkJBAlvUP1gVA==
X-Gm-Gg: ASbGncsS4Qg2x112xdn3wC8mUATK/LGAi4AoeyMz1S99zN6QooZ2sudWEtDieurTVZ3
	Nc7+qADO2QC+hVBS1weNqr65wlMaVlzjbTNREbymfDn1D0O+rnVLXMDjw8VvZEy5q9Lk1zOt2el
	nFHD0nNNf3JbVQEom6HlGDKC/tzCO7c9XDQApKykQ+6MS/2IcMbRqfR7hmoqfof2as4Rg7bgAUn
	9Wrop4Ojul5UfatSFxpbeJMbRa/RbcnJ92QW3OhWu1qxgFTjAA0RrkYMkIYDvAhay0ARBmZrYSy
	oekjMMlIITXeTORK9nwH8+bd02XBCEGp7yxvqpNA6q52fgQHs9sKm4u6owcMCIzCv9woQIJGJzy
	VTnIDKTdkbrgcKtr9UV2At1eW
X-Google-Smtp-Source: AGHT+IEoqeMaCo7VWkarYWDP+GRzyBsI/lGXquNjw+btFYnKJTWgwFNKTpnH5nMpaFghhD3kro9NkQ==
X-Received: by 2002:a05:6512:3a87:b0:549:31e4:9ea with SMTP id 2adb3069b0e04-54c2282454fmr77746e87.52.1743707786957;
        Thu, 03 Apr 2025 12:16:26 -0700 (PDT)
Received: from ribalda.c.googlers.com (216.148.88.34.bc.googleusercontent.com. [34.88.148.216])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54c1e65d6b1sm230142e87.194.2025.04.03.12.16.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Apr 2025 12:16:26 -0700 (PDT)
From: Ricardo Ribalda <ribalda@chromium.org>
Date: Thu, 03 Apr 2025 19:16:15 +0000
Subject: [PATCH 4/8] media: ipu-bridge: Use v4l2_fwnode_device_parse helper
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250403-uvc-orientation-v1-4-1a0cc595a62d@chromium.org>
References: <20250403-uvc-orientation-v1-0-1a0cc595a62d@chromium.org>
In-Reply-To: <20250403-uvc-orientation-v1-0-1a0cc595a62d@chromium.org>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>, 
 Hans de Goede <hdegoede@redhat.com>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Hans Verkuil <hverkuil@xs4all.nl>, 
 Sakari Ailus <sakari.ailus@linux.intel.com>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Linus Walleij <linus.walleij@linaro.org>, 
 Bartosz Golaszewski <brgl@bgdev.pl>
Cc: linux-media@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-usb@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-gpio@vger.kernel.org, Ricardo Ribalda <ribalda@chromium.org>
X-Mailer: b4 0.14.2

v4l2_fwnode_device_parse now supports acpi devices as well. Use the
helper instead of re-implement the logic.

Signed-off-by: Ricardo Ribalda <ribalda@chromium.org>
---
 drivers/media/pci/intel/ipu-bridge.c | 32 ++++++--------------------------
 1 file changed, 6 insertions(+), 26 deletions(-)

diff --git a/drivers/media/pci/intel/ipu-bridge.c b/drivers/media/pci/intel/ipu-bridge.c
index 1cb7458556004d2073688bb0d11defd01f2f61b7..79e6998d37dfde50bd4b44584c8864178527d951 100644
--- a/drivers/media/pci/intel/ipu-bridge.c
+++ b/drivers/media/pci/intel/ipu-bridge.c
@@ -251,36 +251,16 @@ static u32 ipu_bridge_parse_rotation(struct acpi_device *adev,
 
 static enum v4l2_fwnode_orientation ipu_bridge_parse_orientation(struct acpi_device *adev)
 {
-	enum v4l2_fwnode_orientation orientation;
-	struct acpi_pld_info *pld = NULL;
+	struct v4l2_fwnode_device_properties props;
+	int ret;
 
-	if (!acpi_get_physical_device_location(ACPI_PTR(adev->handle), &pld)) {
-		dev_warn(ADEV_DEV(adev), "_PLD call failed, using default orientation\n");
+	ret = v4l2_fwnode_device_parse(ADEV_DEV(adev), &props);
+	if (!ret || props.rotation == V4L2_FWNODE_PROPERTY_UNSET) {
+		dev_warn(ADEV_DEV(adev), "Using default orientation\n");
 		return V4L2_FWNODE_ORIENTATION_EXTERNAL;
 	}
 
-	switch (pld->panel) {
-	case ACPI_PLD_PANEL_FRONT:
-		orientation = V4L2_FWNODE_ORIENTATION_FRONT;
-		break;
-	case ACPI_PLD_PANEL_BACK:
-		orientation = V4L2_FWNODE_ORIENTATION_BACK;
-		break;
-	case ACPI_PLD_PANEL_TOP:
-	case ACPI_PLD_PANEL_LEFT:
-	case ACPI_PLD_PANEL_RIGHT:
-	case ACPI_PLD_PANEL_UNKNOWN:
-		orientation = V4L2_FWNODE_ORIENTATION_EXTERNAL;
-		break;
-	default:
-		dev_warn(ADEV_DEV(adev), "Unknown _PLD panel val %d\n",
-			 pld->panel);
-		orientation = V4L2_FWNODE_ORIENTATION_EXTERNAL;
-		break;
-	}
-
-	ACPI_FREE(pld);
-	return orientation;
+	return props.rotation;
 }
 
 int ipu_bridge_parse_ssdb(struct acpi_device *adev, struct ipu_sensor *sensor)

-- 
2.49.0.504.g3bcea36a83-goog


