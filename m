Return-Path: <devicetree+bounces-221883-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 87AFEBA3D20
	for <lists+devicetree@lfdr.de>; Fri, 26 Sep 2025 15:13:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 949841C04C9B
	for <lists+devicetree@lfdr.de>; Fri, 26 Sep 2025 13:14:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 512063002BF;
	Fri, 26 Sep 2025 13:11:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="jSjP4sHf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com [209.85.167.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51C592FB610
	for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 13:11:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758892307; cv=none; b=grKoRHah9RAFZUyNEujFDi2ZqXLkCXZw8RPNgjO74ftml/iu/rEFQYnIECDD81nHre3m62QVfjcN6xFJS2OnVowgNCbv30S6FRp/vGQv9XOcTh1n6j+gvDapZnUdXJysZDb4dVGcD1k2KfhtKsThMxtVytfNti5kxof66+VAoQY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758892307; c=relaxed/simple;
	bh=tSZ4e7bBWYDXs+64s5deuA0eU78Hb20V1QttJt4YMDI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Ntv32JcB7IMrgB3kRMrAliE+d0E1mbOqHOYFASK2H1O2g1tEo5ehBBb5CNRtn7/9yQEmMG5O0IC89Kpv1qvqryqo3G5fVYf4O3TQAbtjXCHE3nYPYgMT7jAtGIdG4KE1HNKgfVZJ2q9xTNwXXrQ2nP6VlGUDx/ojpkAv/fSMKAw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=jSjP4sHf; arc=none smtp.client-ip=209.85.167.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lf1-f45.google.com with SMTP id 2adb3069b0e04-57d93a4b5e5so2431078e87.3
        for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 06:11:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1758892296; x=1759497096; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bphRunTYPw61AUvJ/YpfJ9I70eYp7wtD0WzfXD7gDd4=;
        b=jSjP4sHfuhbwLdbt121hI4bjomddVP4C91PLouwDoTn8W45OpvxY9oHbOMYkHXP/Lw
         c8Hfr/ASTHKxOx1wsdrwLvmuqe5lqMghcXhTd5wC7u8ovPA3zUJyM0m7q3FGh00hLZ+2
         Smal8XpgJIgcjIV4ePaxghrnTsSwe6osmGAO8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758892296; x=1759497096;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bphRunTYPw61AUvJ/YpfJ9I70eYp7wtD0WzfXD7gDd4=;
        b=Gz2iBMF5TbAFzmtQipVM8zhdQNqchlLbyqrI57JWkVKyDRLVez4Bui+qMkxa7omLqy
         C78jC0SThdOhgymIv3DHggq3+DfgOE1nuFLv1L6JTsB+Q3oMKNPh0QgE6DJptfCYvTPg
         drp1Y+owbj5APjLF9LvuxBxrvCbOKfDlpklg0smswmlow6ACKoG7/K4JuHeTIixtLdG7
         2boJDXjCaD9nSVIhsXBi3VzctrbhM9UBRMiI+zlYSG6v50wYTCdcniOa5lv7JF9TFb6M
         OCA+XOsEwiVn976Ok3YCaEGSvymU9dxKlfCBuIEPGFjfn5QToJ6hICtrDoIF51fCqRxW
         nYxA==
X-Forwarded-Encrypted: i=1; AJvYcCUjvsDAbTOeiWDBuTDrbP7ndCqmrYA9Rgt7NO0aOWGMIy4DYEA+FD98hi6jSiPs7kVV5OTjKfXaECdm@vger.kernel.org
X-Gm-Message-State: AOJu0YzRPArmzK5oaLI8QSA28QzhPZ9uY7kZxLlgQv2ogcHv4JSdTQbi
	qrefVQtbfoGVjBhYqJVGrPYlL7dqURwaVD/pQU+3+hRHVz7BVj6qFJ+Ei4oB1QudYQ==
X-Gm-Gg: ASbGncvIAKU0FyyjTqVbB0jKa4gz7QLDiD0okNhi2XZMW4NRG9RWPzIMzSr8Beyj2ef
	1PR1meiLeAEMNrrweEy33K5HWwjaB7mtwZS+P3MMW0OHWC8KWiAmgREm0FWBXw1AeyKc2mvNcWe
	v4qNuNZjS0MhSQTKF/YVj5sUiocf46pUc4RGw0txRz8DzxWno1MeI0qFaSRil1HFUDyE3O77Dhz
	lOqco3QILr9ralULn29iuR5MO+0nsK5ssSK8VwSYLFmLYrs87VW6MNefKnTVSb2UOPJZkhUwKcT
	6xrfCU6IWYrz9H01peSqrGLrjB+MkQeNEhYNV9KXpivowwikudhWJhrammtYLM7SuGqx67HuT1k
	HkQCjwlQFOeMS/bcL0xVCjF8nHgN+IwdEFh5bZBVTiGo94fQ1SDJdCAXbKZRJ1WXA/2hIWSwIcZ
	kXgMLhUZgop0ZH
X-Google-Smtp-Source: AGHT+IEv9MbC6V8zP0dxYjK1OB4iFK32py7NZfWALirf9hP7Mf6Qwl9MxHAyd3yZAKgRpXN6nv2Waw==
X-Received: by 2002:a05:6512:3f1b:b0:571:86bc:423b with SMTP id 2adb3069b0e04-582d3f76d9fmr2145509e87.44.1758892295887;
        Fri, 26 Sep 2025 06:11:35 -0700 (PDT)
Received: from ribalda.c.googlers.com (64.153.228.35.bc.googleusercontent.com. [35.228.153.64])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-58527c6b014sm123872e87.43.2025.09.26.06.11.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Sep 2025 06:11:35 -0700 (PDT)
From: Ricardo Ribalda <ribalda@chromium.org>
Date: Fri, 26 Sep 2025 13:11:34 +0000
Subject: [PATCH v3 10/12] media: uvcvideo: Add uvc_ctrl_query_entity helper
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250926-uvc-orientation-v3-10-6dc2fa5b4220@chromium.org>
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

Create a helper function to query a control. The new function reduces
the number of arguments, calculates the length of the operation and
redirects the operation to the hardware or to the entity private
functions.

Signed-off-by: Ricardo Ribalda <ribalda@chromium.org>
---
 drivers/media/usb/uvc/uvc_ctrl.c | 83 +++++++++++++++++++++-------------------
 1 file changed, 43 insertions(+), 40 deletions(-)

diff --git a/drivers/media/usb/uvc/uvc_ctrl.c b/drivers/media/usb/uvc/uvc_ctrl.c
index 98e454fcdeb2ee36d334068fd750e6203931699d..017165a5c94459f1befd4c08f85a2017c58d61e6 100644
--- a/drivers/media/usb/uvc/uvc_ctrl.c
+++ b/drivers/media/usb/uvc/uvc_ctrl.c
@@ -598,6 +598,36 @@ static const struct uvc_control_mapping uvc_ctrl_power_line_mapping_uvc15 = {
 				  V4L2_CID_POWER_LINE_FREQUENCY_DISABLED),
 };
 
+static int uvc_ctrl_query_entity(struct uvc_device *dev,
+				 const struct uvc_control *ctrl, u8 query,
+				 void *data)
+{
+	u16 len;
+
+	switch (query) {
+	case UVC_GET_INFO:
+		len = 1;
+		break;
+	case UVC_GET_LEN:
+		len = 2;
+		break;
+	default:
+		len = ctrl->info.size;
+		break;
+	}
+
+	if (query == UVC_GET_CUR && ctrl->entity->get_cur)
+		return ctrl->entity->get_cur(dev, ctrl->entity,
+					     ctrl->info.selector, data, len);
+	else if (query == UVC_GET_INFO && ctrl->entity->get_info)
+		return ctrl->entity->get_info(dev, ctrl->entity,
+					      ctrl->info.selector, data);
+	else
+		return uvc_query_ctrl(dev, query, ctrl->entity->id,
+				      dev->intfnum, ctrl->info.selector, data,
+				      len);
+}
+
 static const struct uvc_control_mapping *uvc_ctrl_filter_plf_mapping(
 	struct uvc_video_chain *chain, struct uvc_control *ctrl)
 {
@@ -1256,35 +1286,27 @@ static int uvc_ctrl_populate_cache(struct uvc_video_chain *chain,
 	int ret;
 
 	if (ctrl->info.flags & UVC_CTRL_FLAG_GET_DEF) {
-		ret = uvc_query_ctrl(chain->dev, UVC_GET_DEF, ctrl->entity->id,
-				     chain->dev->intfnum, ctrl->info.selector,
-				     uvc_ctrl_data(ctrl, UVC_CTRL_DATA_DEF),
-				     ctrl->info.size);
+		ret = uvc_ctrl_query_entity(chain->dev, ctrl, UVC_GET_DEF,
+					uvc_ctrl_data(ctrl, UVC_CTRL_DATA_DEF));
 		if (ret < 0)
 			return ret;
 	}
 
 	if (ctrl->info.flags & UVC_CTRL_FLAG_GET_MIN) {
-		ret = uvc_query_ctrl(chain->dev, UVC_GET_MIN, ctrl->entity->id,
-				     chain->dev->intfnum, ctrl->info.selector,
-				     uvc_ctrl_data(ctrl, UVC_CTRL_DATA_MIN),
-				     ctrl->info.size);
+		ret = uvc_ctrl_query_entity(chain->dev, ctrl, UVC_GET_MIN,
+					uvc_ctrl_data(ctrl, UVC_CTRL_DATA_MIN));
 		if (ret < 0)
 			return ret;
 	}
 	if (ctrl->info.flags & UVC_CTRL_FLAG_GET_MAX) {
-		ret = uvc_query_ctrl(chain->dev, UVC_GET_MAX, ctrl->entity->id,
-				     chain->dev->intfnum, ctrl->info.selector,
-				     uvc_ctrl_data(ctrl, UVC_CTRL_DATA_MAX),
-				     ctrl->info.size);
+		ret = uvc_ctrl_query_entity(chain->dev, ctrl, UVC_GET_MAX,
+					uvc_ctrl_data(ctrl, UVC_CTRL_DATA_MAX));
 		if (ret < 0)
 			return ret;
 	}
 	if (ctrl->info.flags & UVC_CTRL_FLAG_GET_RES) {
-		ret = uvc_query_ctrl(chain->dev, UVC_GET_RES, ctrl->entity->id,
-				     chain->dev->intfnum, ctrl->info.selector,
-				     uvc_ctrl_data(ctrl, UVC_CTRL_DATA_RES),
-				     ctrl->info.size);
+		ret = uvc_ctrl_query_entity(chain->dev, ctrl, UVC_GET_RES,
+					uvc_ctrl_data(ctrl, UVC_CTRL_DATA_RES));
 		if (ret < 0) {
 			if (UVC_ENTITY_TYPE(ctrl->entity) !=
 			    UVC_VC_EXTENSION_UNIT)
@@ -1325,16 +1347,7 @@ static int __uvc_ctrl_load_cur(struct uvc_video_chain *chain,
 		return 0;
 	}
 
-	if (ctrl->entity->get_cur)
-		ret = ctrl->entity->get_cur(chain->dev, ctrl->entity,
-					    ctrl->info.selector, data,
-					    ctrl->info.size);
-	else
-		ret = uvc_query_ctrl(chain->dev, UVC_GET_CUR,
-				     ctrl->entity->id, chain->dev->intfnum,
-				     ctrl->info.selector, data,
-				     ctrl->info.size);
-
+	ret = uvc_ctrl_query_entity(chain->dev, ctrl, UVC_GET_CUR, data);
 	if (ret < 0)
 		return ret;
 
@@ -2244,11 +2257,8 @@ static int uvc_ctrl_commit_entity(struct uvc_device *dev,
 			continue;
 
 		if (!rollback)
-			ret = uvc_query_ctrl(dev, UVC_SET_CUR, ctrl->entity->id,
-				dev->intfnum, ctrl->info.selector,
-				uvc_ctrl_data(ctrl, UVC_CTRL_DATA_CURRENT),
-				ctrl->info.size);
-
+			ret = uvc_ctrl_query_entity(dev, ctrl, UVC_SET_CUR,
+				uvc_ctrl_data(ctrl, UVC_CTRL_DATA_CURRENT));
 		if (!ret)
 			processed_ctrls++;
 
@@ -2650,13 +2660,7 @@ static int uvc_ctrl_get_flags(struct uvc_device *dev,
 	if (data == NULL)
 		return -ENOMEM;
 
-	if (ctrl->entity->get_info)
-		ret = ctrl->entity->get_info(dev, ctrl->entity,
-					     ctrl->info.selector, data);
-	else
-		ret = uvc_query_ctrl(dev, UVC_GET_INFO, ctrl->entity->id,
-				     dev->intfnum, info->selector, data, 1);
-
+	ret = uvc_ctrl_query_entity(dev, ctrl, UVC_GET_INFO, data);
 	if (!ret) {
 		info->flags &= ~(UVC_CTRL_FLAG_GET_CUR |
 				 UVC_CTRL_FLAG_SET_CUR |
@@ -2738,8 +2742,7 @@ static int uvc_ctrl_fill_xu_info(struct uvc_device *dev,
 	ctrl->info.selector = info->selector;
 
 	/* Query and verify the control length (GET_LEN) */
-	ret = uvc_query_ctrl(dev, UVC_GET_LEN, ctrl->entity->id, dev->intfnum,
-			     info->selector, data, 2);
+	ret = uvc_ctrl_query_entity(dev, ctrl, UVC_GET_LEN, data);
 	if (ret < 0) {
 		uvc_dbg(dev, CONTROL,
 			"GET_LEN failed on control %pUl/%u (%d)\n",

-- 
2.51.0.536.g15c5d4f767-goog


