Return-Path: <devicetree+bounces-183129-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id AABB2ACF5DC
	for <lists+devicetree@lfdr.de>; Thu,  5 Jun 2025 19:54:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3FEE31894FAB
	for <lists+devicetree@lfdr.de>; Thu,  5 Jun 2025 17:54:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B197627E7C0;
	Thu,  5 Jun 2025 17:53:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="aCh43tO+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com [209.85.167.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE95027A933
	for <devicetree@vger.kernel.org>; Thu,  5 Jun 2025 17:53:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749145992; cv=none; b=V7U60011rFMUu9k5IOWd9sNbxXoJgGlhES9b75qNFwJoWd/x9PX3rCyEXzV+R6mXgKD7b4O3cbanix49vBtxWrR4+Nk3zMViyrWTqLV3fn1h+Eg9W9yOstT/2s2+O9rbkRQ4oqLgqA9l/bRK0+NyzLOYbN5bFVkTgq/lgdPCf74=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749145992; c=relaxed/simple;
	bh=1ZgSjQTaGaaFH/a8mMoBM5PvRpGKxv9Y52j0p6HXpHM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=dyTc9vTV407MId8knaTC495ePRuP3zHoDQteWufeWi6y4jBfL+TNOiiiQTSQZjm6nCW7btD3xG2+lRnaP+SDIQT5O0Ouza11ghcXmlJsH74L96qbASqTQ/aSJoWPIWL0qSEWT9eqNeVL/jYnq/IRNllJ8mv81c1g4ADOCsDhDFc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=aCh43tO+; arc=none smtp.client-ip=209.85.167.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lf1-f44.google.com with SMTP id 2adb3069b0e04-5533302b49bso1384811e87.2
        for <devicetree@vger.kernel.org>; Thu, 05 Jun 2025 10:53:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1749145986; x=1749750786; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ITiETVL4DPlwiitJN8fQTR1CuO5aBFmT5UfjWJScKqs=;
        b=aCh43tO+ZuTamS1hd+2y1nDBrpy0Zw3gcRNZy0qbqIUkvLlXaM5nfyQiodfAYNqr22
         ALAg9iirpfeN+hRSB8RsY0joZc6hYDKzTp7kCqVEDJyAihjnnLhY0WJX/3v4VOPVdnfp
         gqoxtNoQqZ04fbfzYd5uWUCiyXGM1IQGS1n0o=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749145986; x=1749750786;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ITiETVL4DPlwiitJN8fQTR1CuO5aBFmT5UfjWJScKqs=;
        b=MmHuRjQnam3rmc/oLjyiwT50cGGqTCvuelW+v5j/Lzfn48F34UTtvPTmTgkutzN99r
         JDKCmleAuXHVqMvizX2D2lWCB+rG/lW8tqM5b4dU8h6O+vgHxbc+ZqV7jFmH6eXfNfyQ
         /AUXGvZSEg8NiKCi5lBiOraB6TryfVkct3dUBiV3RzGkylAZ3497CAVccybtDHAinV5B
         +NTqeMbPybv7mEraRc21RmSv8280760UoEMumEr8adyadku2sH08gfXE9Y1KfAd13ibe
         d/NFcMxt26OMlYLuOTQ/banLpNwgnOQUGdWBMuqwdOfClQaVpi+4TggwajjKay8QzytM
         +KCw==
X-Forwarded-Encrypted: i=1; AJvYcCUmsnD5wV9TnZy/mIpG85fay6Te4YlnaunJYYrrQzx4M1FP1Yf6hcRReps0D9j2P6eCHUZhaMo0nPwx@vger.kernel.org
X-Gm-Message-State: AOJu0Yyt8JLgXIM1jTsN7vPVJOc7Qhu4TC9/XsdFny43kQJRDI5yZ8Nb
	W5++SFOEQFpO5sMTZRPXFuw8p9885VdQDjpylXalEN3juiUrrw+MtVmJEqiJWhdGTg==
X-Gm-Gg: ASbGnctNrkSLB+6PBrb5jS0+GXHl3WHveRK0rs7V4uzhw/Ek56J0oUlpGE5J4/3Nh1Q
	ZbsmlS9PLYF7G5XSKUVSiI2H9dJ1uKhi0b9ZEFO9966dj4mcOd2sKCj2qQgyok4h0xXmww8Vi+T
	vf7irybQhnUarEQlcQcIxlSVFKuEMjIYA7gxRDG0uFPkKUPlJWg0XMfIYMmhM+eI03EHdLhgqAX
	XzO9jaDyxuIUAdz4kfOjlrhjG3cmZYtEIldszMpMsQwXhC3oyyMH1MjwSBmyeTbJuBd/NtPvZ4J
	quKhdHYi/RXw9zT+DTlqWfqu6X8Az40dlYJkcQ69+TR+Xd7Q3rmW1DV7Pdtan73Duz8s8Knt55k
	MGLwwcQOjfSKEGJJtRVYX9K1jNg==
X-Google-Smtp-Source: AGHT+IF1UcMtPah0m8jT6Ln6JdgWvGYN1lsGuqlL6zma9QAAKsKScIhOqpWLrtFSd+pn1Q20FL2yNg==
X-Received: by 2002:a05:6512:10d4:b0:553:2e4a:bb58 with SMTP id 2adb3069b0e04-55366bdcb99mr25796e87.9.1749145986344;
        Thu, 05 Jun 2025 10:53:06 -0700 (PDT)
Received: from ribalda.c.googlers.com (90.52.88.34.bc.googleusercontent.com. [34.88.52.90])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-553379379c2sm2641210e87.251.2025.06.05.10.53.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Jun 2025 10:53:06 -0700 (PDT)
From: Ricardo Ribalda <ribalda@chromium.org>
Date: Thu, 05 Jun 2025 17:53:00 +0000
Subject: [PATCH v2 07/12] media: uvcvideo: Make uvc_alloc_entity non static
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250605-uvc-orientation-v2-7-5710f9d030aa@chromium.org>
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

The function is useful for other compilation units.

This is just a refactor patch, no new functionality is added.

Signed-off-by: Ricardo Ribalda <ribalda@chromium.org>
---
 drivers/media/usb/uvc/uvc_driver.c | 4 ++--
 drivers/media/usb/uvc/uvcvideo.h   | 2 ++
 2 files changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/media/usb/uvc/uvc_driver.c b/drivers/media/usb/uvc/uvc_driver.c
index da24a655ab68cc0957762f2b67387677c22224d1..bcc97f71fa1703aea1119469fb32659c17d9409a 100644
--- a/drivers/media/usb/uvc/uvc_driver.c
+++ b/drivers/media/usb/uvc/uvc_driver.c
@@ -792,8 +792,8 @@ static const u8 uvc_media_transport_input_guid[16] =
 	UVC_GUID_UVC_MEDIA_TRANSPORT_INPUT;
 static const u8 uvc_processing_guid[16] = UVC_GUID_UVC_PROCESSING;
 
-static struct uvc_entity *uvc_alloc_entity(u16 type, u16 id,
-		unsigned int num_pads, unsigned int extra_size)
+struct uvc_entity *uvc_alloc_entity(u16 type, u16 id, unsigned int num_pads,
+				    unsigned int extra_size)
 {
 	struct uvc_entity *entity;
 	unsigned int num_inputs;
diff --git a/drivers/media/usb/uvc/uvcvideo.h b/drivers/media/usb/uvc/uvcvideo.h
index b9f8eb62ba1d82ea7788cf6c10cc838a429dbc9e..dc23d8a97340dc4615d4182232d395106e6d9ed5 100644
--- a/drivers/media/usb/uvc/uvcvideo.h
+++ b/drivers/media/usb/uvc/uvcvideo.h
@@ -684,6 +684,8 @@ do {									\
  */
 
 struct uvc_entity *uvc_entity_by_id(struct uvc_device *dev, int id);
+struct uvc_entity *uvc_alloc_entity(u16 type, u16 id, unsigned int num_pads,
+				    unsigned int extra_size);
 
 /* Video buffers queue management. */
 int uvc_queue_init(struct uvc_video_queue *queue, enum v4l2_buf_type type);

-- 
2.50.0.rc0.642.g800a2b2222-goog


