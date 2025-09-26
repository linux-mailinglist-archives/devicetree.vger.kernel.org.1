Return-Path: <devicetree+bounces-221880-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B85EBA3D0B
	for <lists+devicetree@lfdr.de>; Fri, 26 Sep 2025 15:13:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id F0BF02A27FE
	for <lists+devicetree@lfdr.de>; Fri, 26 Sep 2025 13:13:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C15B62FE074;
	Fri, 26 Sep 2025 13:11:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="mSIAMbl3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBBB72F6173
	for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 13:11:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758892305; cv=none; b=rQI/p5gUvJkMr8gfc38S/x4cFGxP3hYK8atH3wOOcn3JVYfZ0ruSH0jAu8J2V8WU5z88LNoT4bMyNbjVts0iGWJS4LV9hAb61MkUEbO7mlIna+quBOCdwIxbGcYhZzE7nfupyQyKrc6Dx6vXnqlMIOd5iP6oWvx+7LXoT6r1URk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758892305; c=relaxed/simple;
	bh=K3KdMz7C2S+sjjhpcJ2VrrH58ALa5ic8heuJ7M4ymXs=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Y2E9yexWGmmqXBTL7j8jFwHDcj88YX2Pd2Jo3ZH4lwEWwcNHYYJdXrCwmYISVMhFGIntQwlolCTFRTF3LH1mZvUsZq5S18SDfQPQkMS/xcX5EcSEXoBcGGa628e55vTmytHZlO0M/Bc5uqMSrWUvPdVF1GTaMbDbHFEW0OeReMQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=mSIAMbl3; arc=none smtp.client-ip=209.85.167.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-5821dec0408so3098131e87.1
        for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 06:11:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1758892295; x=1759497095; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yK5cgdjGWBYF8FS7tGEMMwrGVxWyiTSoe6v1uuSmXRU=;
        b=mSIAMbl3eTr+7VxRl3P0MNZWVUQCXmyAjlkt5xOkpMbeNLAm9uAl2J4pO453MmOiyC
         eR5BMfA+XUNGxAiTsSzXwXqHSZzFU9i+OYryqN1Jl1ZL6RtN9qcT+nxc2ooHY/hse2s3
         ulTqMpeG3GcGMWldTAcmsbyQxrV4t+Q/9ig48=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758892295; x=1759497095;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yK5cgdjGWBYF8FS7tGEMMwrGVxWyiTSoe6v1uuSmXRU=;
        b=Vz+09t9bSPtdM5j72Pn79bpCUiedUUwZzWxPeMdTKa5lwtnzfXOVtg1zS4hfIlzUwK
         Q8g5PU9H9w9U/e8Yzw+/DQ/cwB10w2cE8Zv4+Q3ssTfVOLuvLxf9Bj8sA/9w6nuYWEOa
         Di7Hog+wlHAjq0Rrynh02xrEiftQw6Rqet6o9huL7arZ2ojaNKjZ42tOEX7Y/El36Qdm
         2U1tpv4UNYjm8hwb59jyQE7oxAD0FusnUCgl86G/NVP6snU2BeiG7VTpF37UTx6W04gH
         hlbRjau/Y5W8qu3UVk2bw/IF2MOcSYs4UhbQ4sSHFI9qzfNRa6AS3EULeByojuQ410p6
         AVuw==
X-Forwarded-Encrypted: i=1; AJvYcCWKb2YwZq98wztyUVs/+rGkhOE81WGGQCIkEbt3LnUna9LJHKmBTMxRfyPa6+Gxzqn+z+m6M+ifua4S@vger.kernel.org
X-Gm-Message-State: AOJu0YxqLUcKQi3YlKVijaZFziVq8UTMuk686H6qMTVe13Gd3aGUHyPh
	IloBghkbtguciX46z4ydCniW8IHNOmPXJuzAXF38S82t/f/BWPZkGBLCaMt9ZrO5KA==
X-Gm-Gg: ASbGncsneT8/tkkmtZKyVwH2Off52bCmEPSkn4/rA2RmLQumXOWVBd/0xQOY6wASqn2
	52XLCElJyYDxk8YSyId0pdfboHg/lSaofODxXyWjZZl91FsGYko4hgWJddODkQQoFUt7ZTK2iEL
	sQmUvKr1I2mRp7MAyChU3KjcS4voUqw5FVk1FQ13Ohz+FW4FxvBELrqMk0wpYbTizUbIpl+tLdh
	3zlAQGU6PWb8dGifANdDHimlOrgN7jf5sfzp/SPSYO4Z+DzIsoADZXcNAR2iOCKggrYh8+mNSVq
	hkJ+qA7CcNjgK/mAQoNb68WELoD4fA90/7H5xwAoFk3O8JNmRefx58aEGvzLSzrSfZN0xVoJ/EQ
	TqLf5vQGRtI4RCzMsHMh2/FVD80WA2rZD/GdgGympQ0Mz5Dv4N5thSPanvB74YNY1SjtyZ5Amc+
	cdYwm9rLrqD5Ds
X-Google-Smtp-Source: AGHT+IGFsjXQDMDVCJ1rn/evMz3fd3PTtDOlV/BZM7pcfvKWARbqj04ku2ig/REcBSICwb5/1B/aQQ==
X-Received: by 2002:a05:6512:23a8:b0:57b:3600:8b4b with SMTP id 2adb3069b0e04-582d092964emr2268576e87.7.1758892295046;
        Fri, 26 Sep 2025 06:11:35 -0700 (PDT)
Received: from ribalda.c.googlers.com (64.153.228.35.bc.googleusercontent.com. [35.228.153.64])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-58527c6b014sm123872e87.43.2025.09.26.06.11.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Sep 2025 06:11:34 -0700 (PDT)
From: Ricardo Ribalda <ribalda@chromium.org>
Date: Fri, 26 Sep 2025 13:11:33 +0000
Subject: [PATCH v3 09/12] media: uvcvideo: Fill ctrl->info.selector earlier
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250926-uvc-orientation-v3-9-6dc2fa5b4220@chromium.org>
References: <20250926-uvc-orientation-v3-0-6dc2fa5b4220@chromium.org>
In-Reply-To: <20250926-uvc-orientation-v3-0-6dc2fa5b4220@chromium.org>
To: Hans de Goede <hansg@kernel.org>, 
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Sakari Ailus <sakari.ailus@linux.intel.com>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Linus Walleij <linus.walleij@linaro.org>, 
 Bartosz Golaszewski <brgl@bgdev.pl>, 
 "Rafael J. Wysocki" <rafael@kernel.org>, Len Brown <lenb@kernel.org>, 
 Robert Moore <robert.moore@intel.com>, Hans Verkuil <hverkuil@kernel.org>
Cc: linux-media@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-usb@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-gpio@vger.kernel.org, linux-acpi@vger.kernel.org, 
 acpica-devel@lists.linux.dev, Ricardo Ribalda <ribalda@chromium.org>
X-Mailer: b4 0.14.2

This is a preparation patch. A future helper will remove the selector
argument and use the information embedded in the uvc_control structure.

Signed-off-by: Ricardo Ribalda <ribalda@chromium.org>
---
 drivers/media/usb/uvc/uvc_ctrl.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/media/usb/uvc/uvc_ctrl.c b/drivers/media/usb/uvc/uvc_ctrl.c
index aa9de84de9236540c46ee78fb8458873d503786e..98e454fcdeb2ee36d334068fd750e6203931699d 100644
--- a/drivers/media/usb/uvc/uvc_ctrl.c
+++ b/drivers/media/usb/uvc/uvc_ctrl.c
@@ -2720,7 +2720,8 @@ static void uvc_ctrl_fixup_xu_info(struct uvc_device *dev,
  * Query control information (size and flags) for XU controls.
  */
 static int uvc_ctrl_fill_xu_info(struct uvc_device *dev,
-	const struct uvc_control *ctrl, struct uvc_control_info *info)
+				 struct uvc_control *ctrl,
+				 struct uvc_control_info *info)
 {
 	u8 *data;
 	int ret;
@@ -2733,6 +2734,9 @@ static int uvc_ctrl_fill_xu_info(struct uvc_device *dev,
 	info->index = ctrl->index;
 	info->selector = ctrl->index + 1;
 
+	/* We need to fill info.selector to get the flags and the length. */
+	ctrl->info.selector = info->selector;
+
 	/* Query and verify the control length (GET_LEN) */
 	ret = uvc_query_ctrl(dev, UVC_GET_LEN, ctrl->entity->id, dev->intfnum,
 			     info->selector, data, 2);

-- 
2.51.0.536.g15c5d4f767-goog


