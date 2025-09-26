Return-Path: <devicetree+bounces-221872-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1849FBA3C66
	for <lists+devicetree@lfdr.de>; Fri, 26 Sep 2025 15:11:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E7E833B2F39
	for <lists+devicetree@lfdr.de>; Fri, 26 Sep 2025 13:11:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6BB792F7AD8;
	Fri, 26 Sep 2025 13:11:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="W3fnMtY7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com [209.85.167.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E2BB2F60DA
	for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 13:11:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758892295; cv=none; b=ohw0GNmgpAch3y/vxapO+5NfIzV2zN9grGL5nbLyxq0PBHANebmcmMniffLFUg8++Cp9zlxTV8zWf1KzJ9idXOzDhtrCjlfLGH9KfxkzHnWdz96jAK9ribasjWbkXc+GhxN8TOdu/ZKIdsiuMya3LcN67w1i6AoRq6nRjiDrsaY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758892295; c=relaxed/simple;
	bh=HOaXKeMMBeof7Hx+tzoNDTO3vGlaHvg7CjV+p573b/E=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ERBXdVt9175gyY+rZpilLlBKXdNXz0Srab6nh0YR19jvAbABq39pFvM7bEsRBkI3ry5q+F/KpHi3LOZykMwTzUDkYUWQm1FxqXd2ScGPrsUbPgaQRhHdrIFFrjxjZhp9vQg6NbE9gXpc0piinDa+FNpeiUg1jEHd5EM1inX2Zck=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=W3fnMtY7; arc=none smtp.client-ip=209.85.167.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lf1-f51.google.com with SMTP id 2adb3069b0e04-5688ac2f39dso2509488e87.3
        for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 06:11:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1758892291; x=1759497091; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zavqbvAJpl+vVyZ8ZvtBFYz19hBaBOc/P6wczkVBqDY=;
        b=W3fnMtY7RjqTLLDo7fzH9PJwwFjlLgWOiWVpSz3GM1AcM9VAqRpDxKfOEdmKVo4S2I
         XBdaLHBPk4EAGufl1mBMbGd292pNFTULimhrWJkJMQQgXTCgMozzhgjL+Qz66suCxhmd
         lahvQdfpNYueP2CVJHkP2abV3KmqPkBb2i+VY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758892291; x=1759497091;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zavqbvAJpl+vVyZ8ZvtBFYz19hBaBOc/P6wczkVBqDY=;
        b=XbRQEPu1ZdhFDqJkwUao41ryJhagthHZVRoB0Sa6ZZCrRvNcRar266AT6YRv2b+bwe
         +BtcegxrzSaGGQMVEy3CPe9cUHUuOzfz/xZtTOGAMsM7VYbq23P/CnK2uyljFbzQ6SVi
         EBRso6kcmpADcluBi++7E2q02ndr1QFqRHu79upN965fVx5wvxOVCJC5Ah7RtHqefkjo
         XT6yJAz9hUzhmWd2HMVEzSRCXkEPUeRVMW7vi1Ow1MzeQ+ae7jf/LQMk/2/nsROupSe1
         inPpGUVAyKj/L5RtNq88Xdhtfl66stIGlj8Q87hXacPBVDzwyLCjBwaRxSpmUNv9yk6O
         efaw==
X-Forwarded-Encrypted: i=1; AJvYcCX7yk3iQCBeepEsrOLTJBIm0LYjSob9PbSIm6oLIjOZqoWrj+XoCITszBvWjaV0O5qmFy9wg29nBOom@vger.kernel.org
X-Gm-Message-State: AOJu0YyXJJVrAXkFvJzxlXAuKfRZkfoALR9feqyp2yQ/5+pVDogt6qgN
	knZdVXVbhpZNez5fr8aS7aU6UEtKmFA0xu0f2lku7TjvwCTzbORjpcGLoOj89mI+ng==
X-Gm-Gg: ASbGncumUVVMMiyQ3KVf284PTry5fmnrWIa+wcFFBzLwmdhB0I9f3yJv/9NgfcyA1un
	n1C/+HZG0Nx6+Mj6A0EhIBw7vm9ctvmHYcVHxzxLYPHs3KsVqRjAl/iX+mJETC2R+XJwkL9SJ5t
	MjW6jBhbb87IBBAd+uH8TRwZK1ixtqtJTT4opsqsEUOprvkIU4I8oHX6FvzKOTFCCncCRkO+4aQ
	qWIjWa/IVsBuqi3OvAmbRZnkmqZgK+1JlnweCf8RWXLgNf18u1RK4FyzU7xuw7UF/JezhVIF4fH
	DrVw6bw1FH8J39irOQqh/22zdKZgIG8sSbn0Gpd2NDTLe5DpgDxQ1yJ+tmUYJLJ36hYWNWbypUI
	C1zwA8yLdGlG7v0qCT434M3tQh16dPWDl4YcfwOX3kQ9yTPgy3aVw+4ZguUh9I3WiYbrx4mrzkC
	PD0lz/ZRba+0cG
X-Google-Smtp-Source: AGHT+IGYNymib7YkYpDINQtE5FTKayVP9W8HaNUBBncx14Dot8LXrbwZoz7D11yG6qpiPKpfo0xmbQ==
X-Received: by 2002:a05:6512:b27:b0:55f:435e:36bd with SMTP id 2adb3069b0e04-582cd97cc3dmr2187251e87.0.1758892290687;
        Fri, 26 Sep 2025 06:11:30 -0700 (PDT)
Received: from ribalda.c.googlers.com (64.153.228.35.bc.googleusercontent.com. [35.228.153.64])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-58527c6b014sm123872e87.43.2025.09.26.06.11.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Sep 2025 06:11:30 -0700 (PDT)
From: Ricardo Ribalda <ribalda@chromium.org>
Date: Fri, 26 Sep 2025 13:11:26 +0000
Subject: [PATCH v3 02/12] media: uvcvideo: Set a function for
 UVC_EXT_GPIO_UNIT
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250926-uvc-orientation-v3-2-6dc2fa5b4220@chromium.org>
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
 acpica-devel@lists.linux.dev, Ricardo Ribalda <ribalda@chromium.org>, 
 stable@vger.kernel.org
X-Mailer: b4 0.14.2

All media entities need a proper function. Otherwise a warning is shown
in dmesg:
uvcvideo 1-1:1.0: Entity type for entity GPIO was not initialized!

Please note that changes in virtual entities will not be considered a
uAPI change.

Cc: stable@vger.kernel.org
Fixes: 2886477ff987 ("media: uvcvideo: Implement UVC_EXT_GPIO_UNIT")
Signed-off-by: Ricardo Ribalda <ribalda@chromium.org>
---
 drivers/media/usb/uvc/uvc_entity.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/media/usb/uvc/uvc_entity.c b/drivers/media/usb/uvc/uvc_entity.c
index 3823ac9c8045b3ad8530372fd38983aaafbd775d..ee1007add243036f68b7014ca621813e461fa73d 100644
--- a/drivers/media/usb/uvc/uvc_entity.c
+++ b/drivers/media/usb/uvc/uvc_entity.c
@@ -85,6 +85,7 @@ static int uvc_mc_init_entity(struct uvc_video_chain *chain,
 			break;
 		case UVC_VC_PROCESSING_UNIT:
 		case UVC_VC_EXTENSION_UNIT:
+		case UVC_EXT_GPIO_UNIT:
 			/* For lack of a better option. */
 			function = MEDIA_ENT_F_PROC_VIDEO_PIXEL_FORMATTER;
 			break;
@@ -105,7 +106,6 @@ static int uvc_mc_init_entity(struct uvc_video_chain *chain,
 		case UVC_OTT_DISPLAY:
 		case UVC_OTT_MEDIA_TRANSPORT_OUTPUT:
 		case UVC_EXTERNAL_VENDOR_SPECIFIC:
-		case UVC_EXT_GPIO_UNIT:
 		default:
 			function = MEDIA_ENT_F_V4L2_SUBDEV_UNKNOWN;
 			break;

-- 
2.51.0.536.g15c5d4f767-goog


