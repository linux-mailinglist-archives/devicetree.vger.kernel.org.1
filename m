Return-Path: <devicetree+bounces-183130-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 23DBFACF5E6
	for <lists+devicetree@lfdr.de>; Thu,  5 Jun 2025 19:54:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9FD3E3AF22D
	for <lists+devicetree@lfdr.de>; Thu,  5 Jun 2025 17:54:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 458312798EA;
	Thu,  5 Jun 2025 17:53:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="V+0C9v+d"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com [209.85.167.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E036278E7A
	for <devicetree@vger.kernel.org>; Thu,  5 Jun 2025 17:53:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749145995; cv=none; b=nsTJOgTt/ItbLVmyWpX44eoFHWNKf8ghc/B6bgRP3lKTOPFaDjQhhh4Osq1JkY4fkMq4p3rWiTZFnOMWpeH1rthuEERIwbBWhPbqnembwdqmvuPKYxJOBZpqFvn6qkly0eQKIr+Tkbr6YJR9jMJFtPlaHrtegPTXMKsH7ucsfLQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749145995; c=relaxed/simple;
	bh=R4NuKjk4LUn+NcJI1dWp1KbkF6gjPs2+DtnjDwx4z/w=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=hiVlqEWzmfUsdABi4uypzBosWFzayBMybQpDay0BoMGitkMrsysxQwKHCSdUun9j0W75kxdwJ4uofL9nxbcG1e1ltvwBnml0+1kjdiRdhw+x7IcxdVGedCWDGvyGq8L+N068AElZRMGmu3epwaHrUgo6c6z9eQax/LqeG8220KQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=V+0C9v+d; arc=none smtp.client-ip=209.85.167.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lf1-f41.google.com with SMTP id 2adb3069b0e04-55324587a53so2349343e87.0
        for <devicetree@vger.kernel.org>; Thu, 05 Jun 2025 10:53:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1749145988; x=1749750788; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=IKykJ86GJEjKAZ51EtUiBvhJS0VRnpbfEH3e5dzBR4w=;
        b=V+0C9v+d+sPzo+NIIu+xX4SgvhbNXZT1rIU/lO+otk7ArMDYMkCKVfP/HyVr7Gv7g2
         XgyTjdgtyNzyK8o98HyCCx7QsCFysvih4WgTvrcoVgdg2gXBC6HxPmrIL7x35V4oByyB
         Zw5erXMKN13T3/kcFHyctTALxIvFQWaJtsGdU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749145988; x=1749750788;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=IKykJ86GJEjKAZ51EtUiBvhJS0VRnpbfEH3e5dzBR4w=;
        b=Vrm6oaKON5LAh7ARF6VL9f79SGUzw+nayt3BGYQ1USZq7qs5/s0l9jiAHsisWcMyw+
         pKifO7VM7xgYpUpCo7fxtzEePDJ3V9bxQRPmtduybWbVTOAr4lugOAnqz05jTyd60pJp
         JC1prIfLdX35aWGZOTFozMEPyLZuVGn647Xrb341VKXXp/YfLwFqqp6g7Y9+sOST8yZt
         o8t8TYRoDmg6Z3bQvWtojoAEJ2AyJywjRNkW8R9M3PRRbkJjI/1DkGVr1Tyl8h4FsuGm
         jeB/U6XdCIU0PevAGu0HD+h1itUX6h9KwI9IP/7qaNl1nN8vWC01/6LEYHf4322V4jm3
         yCNg==
X-Forwarded-Encrypted: i=1; AJvYcCXzJcLz42OQbolbi+rtIh86EsEWUE1Eu0Pdjt32VuW0eu1LyFQWdNqmioVb7sAFMMzon9xI/gCMcm8k@vger.kernel.org
X-Gm-Message-State: AOJu0YzsmJoPX64NvY3nPkEtMB+mwJi4zos4RJTKpn+n1YT9RUL65f69
	ycuHJ+1jmoMlRaj1Bbcnb3dgLOaI1awohItQknbZr9nMmF7q1r275eRH6R+LjYQN/Q==
X-Gm-Gg: ASbGncs9SKnZEynf6Lh/bOFvKLEJW949GOPfEbMjTUUG3OFyKqu4XmmvNfQY5NRO0tN
	UPr+8Ab5GRkOuCA+M/B6QNahMPHkYDWE/pYqzBVXztcuGJVgGBk+OcEgO0GC96VRQOJlhJwI6VH
	9Bw9JSt310/wtzwUN7eCZg++9+EBCgp5JC4t7ApJiWuOAgv70fgyYpdwAxruD2KwWP1yx9DcXAM
	X/gAomW0vGnCCySDu+OrKXC1N3UEKGcxfPjjo5J28TdEOxfCwpDmFG4/NBgGmtAz5vnoyz47VCW
	j6zTipBQuvbHB2iAs3EeKgA3EE26/J1Am+uuxuTdcHbj7FpeFLc4OxyMtbzvj0gK2T4GRK0z0tS
	Acq/PeRWRJcNNhBicmzAnfyViMg==
X-Google-Smtp-Source: AGHT+IHp+xpg2FO63nkT7Lh5wy4seP/EyKn6xsYU+/2Jg59TJvy9YvZlmgC6AlIASMeTxBqC41J75A==
X-Received: by 2002:a05:6512:239d:b0:553:35bb:f7ba with SMTP id 2adb3069b0e04-55366bf08b7mr21355e87.11.1749145988208;
        Thu, 05 Jun 2025 10:53:08 -0700 (PDT)
Received: from ribalda.c.googlers.com (90.52.88.34.bc.googleusercontent.com. [34.88.52.90])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-553379379c2sm2641210e87.251.2025.06.05.10.53.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Jun 2025 10:53:07 -0700 (PDT)
From: Ricardo Ribalda <ribalda@chromium.org>
Date: Thu, 05 Jun 2025 17:53:03 +0000
Subject: [PATCH v2 10/12] media: uvcvideo: Add get_* functions to
 uvc_entity
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250605-uvc-orientation-v2-10-5710f9d030aa@chromium.org>
References: <20250605-uvc-orientation-v2-0-5710f9d030aa@chromium.org>
In-Reply-To: <20250605-uvc-orientation-v2-0-5710f9d030aa@chromium.org>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>, 
 Hans de Goede <hdegoede@redhat.com>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Hans Verkuil <hverkuil@xs4all.nl>, 
 Sakari Ailus <sakari.ailus@linux.intel.com>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Linus Walleij <linus.walleij@linaro.org>, 
 Bartosz Golaszewski <brgl@bgdev.pl>, 
 "Rafael J. Wysocki" <rafael@kernel.org>, Len Brown <lenb@kernel.org>
Cc: linux-media@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-usb@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-gpio@vger.kernel.org, linux-acpi@vger.kernel.org, 
 Ricardo Ribalda <ribalda@chromium.org>
X-Mailer: b4 0.14.2

Virtual entities need to provide more values than get_cur and get_cur
for their controls. Add support for get_def, get_min, get_max and
get_res.

This is a preparation patch.

Signed-off-by: Ricardo Ribalda <ribalda@chromium.org>
---
 drivers/media/usb/uvc/uvc_ctrl.c | 12 ++++++++++++
 drivers/media/usb/uvc/uvcvideo.h |  8 ++++++++
 2 files changed, 20 insertions(+)

diff --git a/drivers/media/usb/uvc/uvc_ctrl.c b/drivers/media/usb/uvc/uvc_ctrl.c
index 21ec7b978bc7aca21db7cb8fd5d135d876f3330c..59be62ae24a4219fa9d7aacf2ae7382c95362178 100644
--- a/drivers/media/usb/uvc/uvc_ctrl.c
+++ b/drivers/media/usb/uvc/uvc_ctrl.c
@@ -596,6 +596,18 @@ static int uvc_ctrl_query_entity(struct uvc_device *dev,
 	if (query == UVC_GET_CUR && ctrl->entity->get_cur)
 		return ctrl->entity->get_cur(dev, ctrl->entity,
 					     ctrl->info.selector, data, len);
+	if (query == UVC_GET_DEF && ctrl->entity->get_def)
+		return ctrl->entity->get_def(dev, ctrl->entity,
+					     ctrl->info.selector, data, len);
+	if (query == UVC_GET_MIN && ctrl->entity->get_min)
+		return ctrl->entity->get_min(dev, ctrl->entity,
+					     ctrl->info.selector, data, len);
+	if (query == UVC_GET_MAX && ctrl->entity->get_max)
+		return ctrl->entity->get_max(dev, ctrl->entity,
+					     ctrl->info.selector, data, len);
+	if (query == UVC_GET_RES && ctrl->entity->get_res)
+		return ctrl->entity->get_res(dev, ctrl->entity,
+					     ctrl->info.selector, data, len);
 	if (query == UVC_GET_INFO && ctrl->entity->get_info)
 		return ctrl->entity->get_info(dev, ctrl->entity,
 					      ctrl->info.selector, data);
diff --git a/drivers/media/usb/uvc/uvcvideo.h b/drivers/media/usb/uvc/uvcvideo.h
index a931750bdea25b9062dcc7644bf5f2ed89c1cb4c..d6da8ed3ad4cf3377df49923e051fe04d83d2e38 100644
--- a/drivers/media/usb/uvc/uvcvideo.h
+++ b/drivers/media/usb/uvc/uvcvideo.h
@@ -261,6 +261,14 @@ struct uvc_entity {
 			u8 cs, u8 *caps);
 	int (*get_cur)(struct uvc_device *dev, struct uvc_entity *entity,
 		       u8 cs, void *data, u16 size);
+	int (*get_def)(struct uvc_device *dev, struct uvc_entity *entity,
+		       u8 cs, void *data, u16 size);
+	int (*get_min)(struct uvc_device *dev, struct uvc_entity *entity,
+		       u8 cs, void *data, u16 size);
+	int (*get_max)(struct uvc_device *dev, struct uvc_entity *entity,
+		       u8 cs, void *data, u16 size);
+	int (*get_res)(struct uvc_device *dev, struct uvc_entity *entity,
+		       u8 cs, void *data, u16 size);
 
 	unsigned int ncontrols;
 	struct uvc_control *controls;

-- 
2.50.0.rc0.642.g800a2b2222-goog


