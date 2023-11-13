Return-Path: <devicetree+bounces-15286-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 69E6E7E9819
	for <lists+devicetree@lfdr.de>; Mon, 13 Nov 2023 09:53:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D0363280A57
	for <lists+devicetree@lfdr.de>; Mon, 13 Nov 2023 08:53:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6759D16436;
	Mon, 13 Nov 2023 08:53:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="FCJw6202"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF40B16423
	for <devicetree@vger.kernel.org>; Mon, 13 Nov 2023 08:53:34 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ABFD010D2
	for <devicetree@vger.kernel.org>; Mon, 13 Nov 2023 00:53:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1699865613;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=cNzwUiFENrfxS16AlOPS5/AIJUox4EDd0wo9fGfe2EM=;
	b=FCJw6202v2DV99SrtFhjFK2SJ+BIzanIvg44p2cy7+WlS8QoFi/bDxQfemAs94HOcNULMQ
	MJhWHYMssv1IfbLhY9uR3oI3+7ydORtwxM3/77374BdlyPoWzpQvp6jBYfgynGxWR8Zye9
	nkvoHzl0R1pxroVQCMs2p9I6szANskQ=
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com
 [209.85.128.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-596-XZhq8ReqMD6OwlXNPlnSJA-1; Mon, 13 Nov 2023 03:53:30 -0500
X-MC-Unique: XZhq8ReqMD6OwlXNPlnSJA-1
Received: by mail-wm1-f72.google.com with SMTP id 5b1f17b1804b1-408695c377dso27120735e9.2
        for <devicetree@vger.kernel.org>; Mon, 13 Nov 2023 00:53:30 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699865609; x=1700470409;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cNzwUiFENrfxS16AlOPS5/AIJUox4EDd0wo9fGfe2EM=;
        b=U8TYkv41resBU7EXQtx2vDnpD3DImKcNNQkB5AO3ZhYtOVDXarVFB7+MS0N6frjzHY
         F+BuVcjrGqNteo+poWiFJ/+UCBo/gWxZ1WTgFXesClkAhjoazSd9Q1NVtLRWQQTnaaoq
         lDfi1TBELxMb6HBPS2iDHxwP3IcdFTE6g9HXN7sM0mkiVHTxXSP6/tp+a03mkc+Zm9EY
         PrrKd0BgvqCLElMF7OAqvgnvOPP77dFEsGt0E3WVe+PnxEAPTiWUXwv9eTzl+HoruHOf
         ekKAYwF5As6+hKfi1aIT/NoPm0FMmfD7Z+ITi0KKN3tjLUg7UWewljneKD++U0OmvZd4
         RZQg==
X-Gm-Message-State: AOJu0Yzzkas9TQi+lofiqvR0tpi2kn3DqIvu2F48Z5MCnHELwFRMycqY
	J8XElYN0cSM+P3GL5FhjhgEuO9GWN0S6jG2qB8R8cueIUODsIOwIsNC/zIUnFlfQpTfVg2AJmCL
	97DXUN/niEyoqJBe41ROmUQ==
X-Received: by 2002:a05:600c:198a:b0:409:7aa9:e0b with SMTP id t10-20020a05600c198a00b004097aa90e0bmr4828733wmq.32.1699865609488;
        Mon, 13 Nov 2023 00:53:29 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGtyLOgcwZL+AdrLG958gidU7i+Mgqcg5fd8WDulVArdFeC6hjxYHKLm20rhC7ry8KWaggNrg==
X-Received: by 2002:a05:600c:198a:b0:409:7aa9:e0b with SMTP id t10-20020a05600c198a00b004097aa90e0bmr4828715wmq.32.1699865609141;
        Mon, 13 Nov 2023 00:53:29 -0800 (PST)
Received: from localhost (205.pool92-176-231.dynamic.orange.es. [92.176.231.205])
        by smtp.gmail.com with ESMTPSA id j10-20020a05600c300a00b0040773c69fc0sm12890382wmh.11.2023.11.13.00.53.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Nov 2023 00:53:28 -0800 (PST)
From: Javier Martinez Canillas <javierm@redhat.com>
To: linux-kernel@vger.kernel.org
Cc: Thomas Zimmermann <tzimmermann@suse.de>,
	Ard Biesheuvel <ardb@kernel.org>,
	Sima Vetter <daniel.vetter@ffwll.ch>,
	Rob Herring <robh@kernel.org>,
	dri-devel@lists.freedesktop.org,
	Andrew Worsley <amworsley@gmail.com>,
	Hector Martin <marcan@marcan.st>,
	Sergio Lopez <slp@redhat.com>,
	Javier Martinez Canillas <javierm@redhat.com>,
	Frank Rowand <frowand.list@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	devicetree@vger.kernel.org
Subject: [RFC PATCH] of/platform: Disable sysfb if a simple-framebuffer node is found
Date: Mon, 13 Nov 2023 09:51:41 +0100
Message-ID: <20231113085305.1823455-1-javierm@redhat.com>
X-Mailer: git-send-email 2.41.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Some DT platforms use EFI to boot and in this case the EFI Boot Services
may register a EFI_GRAPHICS_OUTPUT_PROTOCOL handle, that will later be
queried by the Linux EFI stub to fill the global struct screen_info data.

The data is used by the Generic System Framebuffers (sysfb) framework to
add a platform device with platform data about the system framebuffer.

But if there is a "simple-framebuffer" node in the DT, the OF core will
also do the same and add another device for the system framebuffer.

This could lead for example, to two platform devices ("simple-framebuffer"
and "efi-framebuffer") to be added and matched with their corresponding
drivers. So both efifb and simpledrm will be probed, leading to following:

[    0.055752] efifb: framebuffer at 0xbd58dc000, using 16000k, total 16000k
[    0.055755] efifb: mode is 2560x1600x32, linelength=10240, pages=1
[    0.055758] efifb: scrolling: redraw
[    0.055759] efifb: Truecolor: size=2:10:10:10, shift=30:20:10:0
...
[    3.295896] simple-framebuffer bd58dc000.framebuffer: [drm] *ERROR*
could not acquire memory range [??? 0xffff79f30a29ee40-0x2a5000001a7
flags 0x0]: -16
[    3.298018] simple-framebuffer: probe of bd58dc000.framebuffer
failed with error -16

To prevent the issue, make the OF core to disable sysfb if there is a node
with a "simple-framebuffer" compatible. That way only this device will be
registered and sysfb would not attempt to register another one using the
screen_info data even if this has been filled.

This seems the correct thing to do in this case because:

a) On a DT platform, the DTB is the single source of truth since is what
   describes the hardware topology. Even if EFI Boot Services are used to
   boot the machine.

b) The of_platform_default_populate_init() function is called in the
   arch_initcall_sync() initcall level while the sysfb_init() function
   is called later in the subsys_initcall() initcall level.

Reported-by: Andrew Worsley <amworsley@gmail.com>
Closes: https://lore.kernel.org/all/20231111042926.52990-2-amworsley@gmail.com
Signed-off-by: Javier Martinez Canillas <javierm@redhat.com>
---

 drivers/of/platform.c | 18 ++++++++++++++++--
 1 file changed, 16 insertions(+), 2 deletions(-)

diff --git a/drivers/of/platform.c b/drivers/of/platform.c
index f235ab55b91e..0a692fdfef59 100644
--- a/drivers/of/platform.c
+++ b/drivers/of/platform.c
@@ -20,6 +20,7 @@
 #include <linux/of_irq.h>
 #include <linux/of_platform.h>
 #include <linux/platform_device.h>
+#include <linux/sysfb.h>
 
 #include "of_private.h"
 
@@ -621,8 +622,21 @@ static int __init of_platform_default_populate_init(void)
 		}
 
 		node = of_get_compatible_child(of_chosen, "simple-framebuffer");
-		of_platform_device_create(node, NULL, NULL);
-		of_node_put(node);
+		if (node) {
+			/*
+			 * Since a "simple-framebuffer" device is already added
+			 * here, disable the Generic System Framebuffers (sysfb)
+			 * to prevent it from registering another device for the
+			 * system framebuffer later (e.g: using the screen_info
+			 * data that may had been filled as well).
+			 *
+			 * This can happen for example on DT systems that do EFI
+			 * booting and may provide a GOP handle to the EFI stub.
+			 */
+			sysfb_disable();
+			of_platform_device_create(node, NULL, NULL);
+			of_node_put(node);
+		}
 
 		/* Populate everything else. */
 		of_platform_default_populate(NULL, NULL, NULL);
-- 
2.41.0


