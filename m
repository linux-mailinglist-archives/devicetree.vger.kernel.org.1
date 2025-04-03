Return-Path: <devicetree+bounces-163005-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D90DA7AE50
	for <lists+devicetree@lfdr.de>; Thu,  3 Apr 2025 22:25:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CC4D1160972
	for <lists+devicetree@lfdr.de>; Thu,  3 Apr 2025 20:20:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 922DE202980;
	Thu,  3 Apr 2025 19:16:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="CkE1vVcq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com [209.85.167.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3844200120
	for <devicetree@vger.kernel.org>; Thu,  3 Apr 2025 19:16:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743707790; cv=none; b=UQvezeDuqSxO0PnDu3CGxx38lITQG01M2Vg2efzmFW9gbyevynDckqi01+N5i8LnVhyCOQ4+aB+ZRPLzbVPVaekEds0WpEn1Kh3n9lYAp1OzDOOyb1suo2cvLK8bvFwjjjDtQUa4VRdlsNRdBcYF67XWYXMl0ZEmI59dAY2oY3Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743707790; c=relaxed/simple;
	bh=bGaAiPeWPDujMReJfDlyeCQH1PMh/OahseP2Qm+tEqI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Q3OfZQOuyVxXhzV7WOyCuPNBZE1ytuKppOqFp0m6Xuec6JHHgtTPc/N6+lA3m+RsHztaCZZUEjjDWmhdQVG1sPn/7k8A6xkulVE/WMj7IWvy0pEQifZKw+W0jZv6fhIofIhhSks6tOXK/N7eK5crGcIw7l+SClAUv/swmCE+m3k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=CkE1vVcq; arc=none smtp.client-ip=209.85.167.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lf1-f51.google.com with SMTP id 2adb3069b0e04-549963b5551so1505283e87.2
        for <devicetree@vger.kernel.org>; Thu, 03 Apr 2025 12:16:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1743707786; x=1744312586; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yEqJQbM1Mf4t3pD37/T8xo0WrUZj8tqnA7nqQpopQiI=;
        b=CkE1vVcqmJ0VCZcMDdAuIgZ55E3XcNguuTEqB8SAxg3SuSdWoLcHrL4zjrsWbCPNnN
         1BBOMSPCKJ9UItHXgbun4sj1cUVQaTnSnY7joVOQWFTtgs+XyFKZWrSRGFtDwVSBjkgY
         2LujMk+EasSKezzcYqwIH5ZnlYiz5vehVx0qo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743707786; x=1744312586;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yEqJQbM1Mf4t3pD37/T8xo0WrUZj8tqnA7nqQpopQiI=;
        b=dAhMF7hwhmio6dCdqbyn6j8bepwkRKOoHlAkYxo3jq00zrp9e35kCL1N3Ywm0fHb1D
         QmUWHganKm3NuUK+bPUvt6q2W0Z3Yf732k4eeJ2220xNepWxepNxPqs+nNvYN3XjmPsb
         OVdEIBSBvlpOBbKlBVQ/o+Q7jCo11YsBKEUAzYDnULYYpcILg+je8McAFCMkpa8LrMv8
         yxPluZRLR36NEgl8+rv2vOQEZSVolGXx+FechGlxS2Vw+ilU/eYmOgLFJPff1K/ZMacF
         4Us6qfovflvZikgLGwr55019cjrrvP34Ez4hkZ7F+LyG0G+SLB8jb+V+kSqFYAt7bpoc
         O4rA==
X-Forwarded-Encrypted: i=1; AJvYcCUxsiq0eYNvYSiCBcr+OI8uL+ptp5Jqd9ZIyUwkOQL8qd50KsIIfCQZDsadGFRc84lgQDQ8cCBc6sjz@vger.kernel.org
X-Gm-Message-State: AOJu0Yz4Of5KF/gh2Q3RFIrLXb8mNY5A0WCmhX5d7EGUUXWJub1zkBge
	irRkfWyOL1zrUNIuxLOzysgYpxzRTa662OE5vUORLUq6e+d4NyA8v7IwVzJTJA==
X-Gm-Gg: ASbGncvPtntVqMSBHyDGyU8zOHDB/6SXK7QrnOPA9h9qFdtQ62+s9UCZwbaz8UOg8yU
	QJZi/lgbwqlrD1C7CqvlSGqTs/ibhSMWAhER9V2YkWPpiW60sJb2kpBQgN3q4YKerLUriyy9wej
	i8y/RPgk290NVpvBoyZy90IkkpEHbJLdJTiaO+xcblJMY4uxhpp6HgryqReWAJcmdDpF664r3AZ
	0RuE9qc2CnGEAdfHKxmE1W0wMPNMaLsIVI+nxyvc3yg86n40W4Xr5tlLLlLDMMDE0KbUHEH+JnW
	HGjxxtcXzi6funu+3URnliIBFbVV4/UwCB67mSCWVAwPcuhAb2iXpKuL2Eoz3Ie3ucjTmWIG1M7
	ByqLFFsfPAdPPjx/nRbId6P4l
X-Google-Smtp-Source: AGHT+IEtxSrTjJbJCoji6jyspDiVzgskf1D1Wes/27FHcNtXF4JkR2nUjJNmG5ErLGGAKBQY96uhEw==
X-Received: by 2002:a05:6512:3c9c:b0:545:2c2c:5802 with SMTP id 2adb3069b0e04-54c227fec79mr118358e87.48.1743707785840;
        Thu, 03 Apr 2025 12:16:25 -0700 (PDT)
Received: from ribalda.c.googlers.com (216.148.88.34.bc.googleusercontent.com. [34.88.148.216])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54c1e65d6b1sm230142e87.194.2025.04.03.12.16.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Apr 2025 12:16:25 -0700 (PDT)
From: Ricardo Ribalda <ribalda@chromium.org>
Date: Thu, 03 Apr 2025 19:16:14 +0000
Subject: [PATCH 3/8] media: v4l: fwnode: Support acpi devices for
 v4l2_fwnode_device_parse
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250403-uvc-orientation-v1-3-1a0cc595a62d@chromium.org>
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

This patch modifies v4l2_fwnode_device_parse() to support ACPI devices.

We initially add support only for orientation via the ACPI _PLD method.

Signed-off-by: Ricardo Ribalda <ribalda@chromium.org>
---
 drivers/media/v4l2-core/v4l2-fwnode.c | 58 +++++++++++++++++++++++++++++++----
 1 file changed, 52 insertions(+), 6 deletions(-)

diff --git a/drivers/media/v4l2-core/v4l2-fwnode.c b/drivers/media/v4l2-core/v4l2-fwnode.c
index cb153ce42c45d69600a3ec4e59a5584d7e791a2a..81563c36b6436bb61e1c96f2a5ede3fa9d64dab3 100644
--- a/drivers/media/v4l2-core/v4l2-fwnode.c
+++ b/drivers/media/v4l2-core/v4l2-fwnode.c
@@ -15,6 +15,7 @@
  * Author: Guennadi Liakhovetski <g.liakhovetski@gmx.de>
  */
 #include <linux/acpi.h>
+#include <acpi/acpi_bus.h>
 #include <linux/kernel.h>
 #include <linux/mm.h>
 #include <linux/module.h>
@@ -807,16 +808,47 @@ int v4l2_fwnode_connector_add_link(struct fwnode_handle *fwnode,
 }
 EXPORT_SYMBOL_GPL(v4l2_fwnode_connector_add_link);
 
-int v4l2_fwnode_device_parse(struct device *dev,
-			     struct v4l2_fwnode_device_properties *props)
+static int v4l2_fwnode_device_parse_acpi(struct device *dev,
+					 struct v4l2_fwnode_device_properties *props)
+{
+	struct acpi_pld_info *pld;
+	int ret = 0;
+
+	if (!acpi_get_physical_device_location(ACPI_HANDLE(dev), &pld)) {
+		dev_dbg(dev, "acpi _PLD call failed\n");
+		return 0;
+	}
+
+	switch (pld->panel) {
+	case ACPI_PLD_PANEL_FRONT:
+		props->orientation = V4L2_FWNODE_ORIENTATION_FRONT;
+		break;
+	case ACPI_PLD_PANEL_BACK:
+		props->orientation = V4L2_FWNODE_ORIENTATION_BACK;
+		break;
+	case ACPI_PLD_PANEL_TOP:
+	case ACPI_PLD_PANEL_LEFT:
+	case ACPI_PLD_PANEL_RIGHT:
+	case ACPI_PLD_PANEL_UNKNOWN:
+		props->orientation = V4L2_FWNODE_ORIENTATION_EXTERNAL;
+		break;
+	default:
+		dev_dbg(dev, "Unknown _PLD panel val %d\n", pld->panel);
+		ret = -EINVAL;
+		break;
+	}
+
+	ACPI_FREE(pld);
+	return ret;
+}
+
+static int v4l2_fwnode_device_parse_dt(struct device *dev,
+				       struct v4l2_fwnode_device_properties *props)
 {
 	struct fwnode_handle *fwnode = dev_fwnode(dev);
 	u32 val;
 	int ret;
 
-	memset(props, 0, sizeof(*props));
-
-	props->orientation = V4L2_FWNODE_PROPERTY_UNSET;
 	ret = fwnode_property_read_u32(fwnode, "orientation", &val);
 	if (!ret) {
 		switch (val) {
@@ -833,7 +865,6 @@ int v4l2_fwnode_device_parse(struct device *dev,
 		dev_dbg(dev, "device orientation: %u\n", val);
 	}
 
-	props->rotation = V4L2_FWNODE_PROPERTY_UNSET;
 	ret = fwnode_property_read_u32(fwnode, "rotation", &val);
 	if (!ret) {
 		if (val >= 360) {
@@ -847,6 +878,21 @@ int v4l2_fwnode_device_parse(struct device *dev,
 
 	return 0;
 }
+
+int v4l2_fwnode_device_parse(struct device *dev,
+			     struct v4l2_fwnode_device_properties *props)
+{
+	struct fwnode_handle *fwnode = dev_fwnode(dev);
+
+	memset(props, 0, sizeof(*props));
+
+	props->orientation = V4L2_FWNODE_PROPERTY_UNSET;
+	props->rotation = V4L2_FWNODE_PROPERTY_UNSET;
+
+	if (is_acpi_device_node(fwnode))
+		return v4l2_fwnode_device_parse_acpi(dev, props);
+	return v4l2_fwnode_device_parse_dt(dev, props);
+}
 EXPORT_SYMBOL_GPL(v4l2_fwnode_device_parse);
 
 /*

-- 
2.49.0.504.g3bcea36a83-goog


