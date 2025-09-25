Return-Path: <devicetree+bounces-221494-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CCD25BA0460
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 17:25:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0B2C938119E
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 15:20:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B7EBF30C343;
	Thu, 25 Sep 2025 15:17:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="AuCwawbh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76F7030AAAE
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 15:17:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758813455; cv=none; b=G8IdCF06ITndBTLrlxm9hIEstKKbufLR6D1RiJZ1i3HEXkQEi5OMUUvniGI9FvBX8ofZujzC4Lt7yi/pw8x079buHKYHrL3tWlcf/ltOMM2+TluEuP3J2OxDFM2BwZfs8KVx5XbUAKovvzXnWx79JF7Q1nids+Qypg/flYIFBkk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758813455; c=relaxed/simple;
	bh=PeHm1wrR0AAPSTDMxiNgwUZQ4BKQBSCJMUznSgFPtDg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=WQ98jzh2ZJWoaSJksK3O/BxA4+0wUmPRgIOQYHYdzOz0yhAy00+cGRnaYaXqZISw00VC7e3h5m3fxPF+3CdU/4fbirlULMTnwm4T0d/EIIXGfogwyCPypnlE+DzybD9YjnHVpI7DY+RLMZG0JIFqJgbZIiM+gls5He8dUV1vxf4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=AuCwawbh; arc=none smtp.client-ip=209.85.167.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-579c95a2be2so1261272e87.1
        for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 08:17:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758813449; x=1759418249; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GxcQ3SZL/bX2w7ws13Plp9aplxV6uyygzePW373+H0o=;
        b=AuCwawbhRtZV71jWeHmlH94Gb8pbThQbmDXt4vUEfYGY7WrPvgEGuE170iOp6USlo5
         zzQMn/hylFJmv9fOOK4X2FHpNYRSrabIVT77WalF0vlEW0qlcoEZAoqGozYiOSEi/E2z
         YcHuIkPOcLBwptpYl5dZXAg+hUsZOwxXsaM+sLV07NbPDHDWBSLP2JX+zBFM3E5ZtPZ7
         vw1REY7l355u9ASKYx4lom8N5uyvfG3LajqTI00RXIf1cDsNKry3g40SXreXMDnZFrsE
         lusRhQmT0wv7FrA9vr6JfbmDAEBpTnKRGEA1suqdzLaa9wjSMwa+IFcnYsmNM3SwvGSQ
         nZ1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758813449; x=1759418249;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GxcQ3SZL/bX2w7ws13Plp9aplxV6uyygzePW373+H0o=;
        b=uDIposPb+TFSTDIJPkn8DMRr/O/lRcqr0XfsD8QXgyBJDM2+CXJFD9APXRgmyVzIxH
         98Z7PirxcfhFkFHvZqvcPBff4dsOuDqfja/JFyxxHq31PfiJOfQlfCWPAshmjhy9zY4T
         WG8EI6Q2dE37zAbDlKlhSLSohhLTaguM+WT26u7Dvy31FvwhswnvHKtoGj3RLwiBbn58
         NEIpmWFrSiDqpDvDNUqYU8oxLwpT5jlaYKmu0iLD1l8BEh0z7e0+az2YRNmp2C3LGt2C
         DDIlSHnaZG/Rp6pGG4ioPMW/1HrUgSxZow/CfIcsAIyj1bMpys0O0ix9uXlfZdcf3uWk
         5RLA==
X-Forwarded-Encrypted: i=1; AJvYcCWAnLm2EOKik9Sd8Y8L+CzfD8n6Un2bXa93F5kC37XP/7VZCksuMOTqLacVdm+qrLTLna2XiGhA3XEb@vger.kernel.org
X-Gm-Message-State: AOJu0YzwJ7KXZJCZuQKFdbjb94XMV5Y+gvi6DSpjSjTXUP6+sjOElnT4
	HLeSNrXIwJddQ/3+qSjF+h3lNqUHDuYZyzzgtfaXNCcfFfgeJfUzzUFV
X-Gm-Gg: ASbGncsGQzlyqf4dun5zV62g6GiA1hhH91QOu8NTX1eeVZv6tvq+NozjTM8kEOVzlXU
	qyd5yyjwQV6XIJvShwAg2/VBg+IP3gxuW3mYo8uYOIg5CYM7QIrWVVMUW9JEyWaQmnn8dvm3MNl
	QESKSSaRr4anxj+xqdqol0BN8cGUXHuiqf/YjhgMV/CVkGhDiZxeN9PIaLgNWgMJ0bJWpT9ZrKj
	wkbp5by8CBMsfcfNlrz1pBL/D5ynGoFKjLgzHOejdDpbCuVjSzPUMzmQ/xxOVfyCh3jKwHpF2nA
	BbXE2f+gzGKHiipR4AmhsFHJJcTn+OYlk6hJZ0voU/SCXeal6BNwApSltHYoGS/Ejl2c6e+N6JN
	mnYTOga/py2FqBA==
X-Google-Smtp-Source: AGHT+IEpmsCgXoe+pHNnDNycPilUYF9YFAYkKb7YBcFS/w6Rr+i+BRLl5E2waSe2wlPmiZ/s/OW9iQ==
X-Received: by 2002:a05:6512:2213:b0:57e:ad46:b0a0 with SMTP id 2adb3069b0e04-582d092f19amr1131015e87.6.1758813449054;
        Thu, 25 Sep 2025 08:17:29 -0700 (PDT)
Received: from xeon.. ([188.163.112.70])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-58313430496sm870084e87.27.2025.09.25.08.17.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Sep 2025 08:17:28 -0700 (PDT)
From: Svyatoslav Ryhel <clamor95@gmail.com>
To: David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Thierry Reding <thierry.reding@gmail.com>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	Sowjanya Komatineni <skomatineni@nvidia.com>,
	Luca Ceresoli <luca.ceresoli@bootlin.com>,
	Prashant Gaikwad <pgaikwad@nvidia.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Mikko Perttunen <mperttunen@nvidia.com>,
	Linus Walleij <linus.walleij@linaro.org>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Svyatoslav Ryhel <clamor95@gmail.com>,
	=?UTF-8?q?Jonas=20Schw=C3=B6bel?= <jonasschwoebel@yahoo.de>,
	Dmitry Osipenko <digetx@gmail.com>,
	Charan Pedumuru <charan.pedumuru@gmail.com>,
	Diogo Ivo <diogo.ivo@tecnico.ulisboa.pt>,
	Aaron Kling <webgeek1234@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-tegra@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-media@vger.kernel.org,
	linux-clk@vger.kernel.org,
	linux-gpio@vger.kernel.org,
	linux-staging@lists.linux.dev
Subject: [PATCH v3 10/22] staging: media: tegra-video: vi: improve logic of source requesting
Date: Thu, 25 Sep 2025 18:16:36 +0300
Message-ID: <20250925151648.79510-11-clamor95@gmail.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250925151648.79510-1-clamor95@gmail.com>
References: <20250925151648.79510-1-clamor95@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

By default tegra_channel_get_remote_csi_subdev returns next device in pipe
assuming it is CSI but in case of Tegra20 and Tegra30 it can also be VIP
or even HOST.

Define tegra_channel_get_remote_csi_subdev within CSI and add check if
returned device is actually CSI by comparing subdevice operations.

Previous tegra_channel_get_remote_csi_subdev definition in VI rename to
tegra_channel_get_remote_bridge_subdev and use it only in VI driver since
core VI driver does not care about source and does not call any specific
functions.

Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
---
 drivers/staging/media/tegra-video/csi.c | 16 ++++++++++++++++
 drivers/staging/media/tegra-video/vi.c  | 14 +++++++-------
 2 files changed, 23 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/media/tegra-video/csi.c b/drivers/staging/media/tegra-video/csi.c
index 9e3bd6109781..ef5f054b6d49 100644
--- a/drivers/staging/media/tegra-video/csi.c
+++ b/drivers/staging/media/tegra-video/csi.c
@@ -445,6 +445,22 @@ static const struct v4l2_subdev_ops tegra_csi_ops = {
 	.pad    = &tegra_csi_pad_ops,
 };
 
+struct v4l2_subdev *tegra_channel_get_remote_csi_subdev(struct tegra_vi_channel *chan)
+{
+	struct media_pad *pad;
+	struct v4l2_subdev *subdev;
+
+	pad = media_pad_remote_pad_first(&chan->pad);
+	if (!pad)
+		return NULL;
+
+	subdev = media_entity_to_v4l2_subdev(pad->entity);
+	if (!subdev)
+		return NULL;
+
+	return subdev->ops == &tegra_csi_ops ? subdev : NULL;
+}
+
 static int tegra_csi_channel_alloc(struct tegra_csi *csi,
 				   struct device_node *node,
 				   unsigned int port_num, unsigned int lanes,
diff --git a/drivers/staging/media/tegra-video/vi.c b/drivers/staging/media/tegra-video/vi.c
index 90473729b546..04b538e8b514 100644
--- a/drivers/staging/media/tegra-video/vi.c
+++ b/drivers/staging/media/tegra-video/vi.c
@@ -160,8 +160,8 @@ static void tegra_channel_buffer_queue(struct vb2_buffer *vb)
 	wake_up_interruptible(&chan->start_wait);
 }
 
-struct v4l2_subdev *
-tegra_channel_get_remote_csi_subdev(struct tegra_vi_channel *chan)
+static struct v4l2_subdev *
+tegra_channel_get_remote_bridge_subdev(struct tegra_vi_channel *chan)
 {
 	struct media_pad *pad;
 
@@ -182,7 +182,7 @@ tegra_channel_get_remote_source_subdev(struct tegra_vi_channel *chan)
 	struct v4l2_subdev *subdev;
 	struct media_entity *entity;
 
-	subdev = tegra_channel_get_remote_csi_subdev(chan);
+	subdev = tegra_channel_get_remote_bridge_subdev(chan);
 	if (!subdev)
 		return NULL;
 
@@ -204,7 +204,7 @@ static int tegra_channel_enable_stream(struct tegra_vi_channel *chan)
 	struct v4l2_subdev *subdev;
 	int ret;
 
-	subdev = tegra_channel_get_remote_csi_subdev(chan);
+	subdev = tegra_channel_get_remote_bridge_subdev(chan);
 	ret = v4l2_subdev_call(subdev, video, s_stream, true);
 	if (ret < 0 && ret != -ENOIOCTLCMD)
 		return ret;
@@ -217,7 +217,7 @@ static int tegra_channel_disable_stream(struct tegra_vi_channel *chan)
 	struct v4l2_subdev *subdev;
 	int ret;
 
-	subdev = tegra_channel_get_remote_csi_subdev(chan);
+	subdev = tegra_channel_get_remote_bridge_subdev(chan);
 	ret = v4l2_subdev_call(subdev, video, s_stream, false);
 	if (ret < 0 && ret != -ENOIOCTLCMD)
 		return ret;
@@ -1630,11 +1630,11 @@ static int tegra_vi_graph_notify_complete(struct v4l2_async_notifier *notifier)
 		goto unregister_video;
 	}
 
-	subdev = tegra_channel_get_remote_csi_subdev(chan);
+	subdev = tegra_channel_get_remote_bridge_subdev(chan);
 	if (!subdev) {
 		ret = -ENODEV;
 		dev_err(vi->dev,
-			"failed to get remote csi subdev: %d\n", ret);
+			"failed to get remote bridge subdev: %d\n", ret);
 		goto unregister_video;
 	}
 
-- 
2.48.1


