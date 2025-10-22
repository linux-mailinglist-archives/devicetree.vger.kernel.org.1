Return-Path: <devicetree+bounces-229830-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 91954BFC8FA
	for <lists+devicetree@lfdr.de>; Wed, 22 Oct 2025 16:33:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CB0C85E7EF5
	for <lists+devicetree@lfdr.de>; Wed, 22 Oct 2025 14:23:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 813AF34D905;
	Wed, 22 Oct 2025 14:21:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="UucIpg2n"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B3A234CFB9
	for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 14:21:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761142900; cv=none; b=BQrBDFthatE0SuUy0zYWko9pZtZVF6TfN5MtNemPH0yR23piWe+ac7MgkknUk8h0RJ1SeufUvBAQsdNiN63XEZwQgTTSHtL/sBQv2bIja6ub4s+oFEMcBG4ORbkIfovmPSZichizZbqcwtNZ9PJFVtlD/AbUZFNMfvpcgWcSfDI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761142900; c=relaxed/simple;
	bh=unhDWU3j7HXm8tKnMiJwHfKNJbf2ZhuKuePm6ASfLQM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=VmMLq+GVx5xKuyJ6bl3/CYvAW+HWLja5n7thGAAnG6S4/lG5fjubE7r8/QDOSvkuZ5v57YK8YvUx4SDxTl08ZfEhlpYjGdd8lSXaS8CZsUwPRjZ30UA6ABhTzuceuku5w5MsaW5W0VKZQ4OFcCZEya1qs92Xq8MBc6wTLj4nOms=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=UucIpg2n; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-471b80b994bso52779185e9.3
        for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 07:21:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761142895; x=1761747695; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rAO9OwRfZdFmlMl3mS0tub2HzSBi7qv3ODFvIZHKgFU=;
        b=UucIpg2njXrElxJXn0QVRH13QlN1mvRoiWg0ERm3uZvdhE50xg5vLmw3mwWc3qdkcp
         WjqWpoE0C3UDFjRfOuMJ3Kcek05+mnxMAuVWw3EwVEOMx0vRm+lRuk+zfxlTMsLsrxTB
         P77z2S1TPqGH/CAH60uPaRBO6QrbIi3e2CV1XXiRE8ug2ZABlinb1BMlLFE+KP8mpPMY
         nuSqvCckxpnXWdzgOHrkI6q42+NtqQReoIWMrWdcp/2vGf4+PKGVH4f2/HG2TXpDmA6z
         aq49WcEjPYH/9QzJdcshTXkIVN5GJZg4VB6lHuYFQKf4a/aJjIfZb69Gy77RDP3gybA8
         o/aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761142895; x=1761747695;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rAO9OwRfZdFmlMl3mS0tub2HzSBi7qv3ODFvIZHKgFU=;
        b=j95Xpdk5tLCxhP9EiYygWai820gtXdy4IA3UmiCHjwg7WIZt26D54vWa5iMWX+urSf
         3r62Y+bqFXQ0grQBphcYNn6xvAM508yU5Z+DMEkUfoUeSnmh/QgdMR7mGXwU1x5yNlJk
         ARypiNRdHWRKgQB6204gFoha816rMqhzFzcegrjeTWTz570HyJKaLrv9jKYjz4z+iwGd
         jwe+UK5Berccp7EWGo7HONEr3RxdPlaZp+XL1+Ult+U90z9n/cIkbXrSDlR5gPMhhPeP
         +/oo8wKi/zD/SkKOtN0KJ6TRMs3+ftewISj6/5hhqVLPKZjHnTIc+SytDzySroJS7D/d
         DyuQ==
X-Forwarded-Encrypted: i=1; AJvYcCUkcgPlOzp+pJGjthqGycqeZdzwe5S8qBMWgFC4EX8pMtQtDaRfbyr4HTLc4A0sMQExrm2vitUgDDL5@vger.kernel.org
X-Gm-Message-State: AOJu0YyDkS/hOODiYThQVb1Q9qD7bXQApMzPADuTNFEI72vP9ekGsSny
	P4ceQsQpQ58T0AaqKAK4Bh+c1mHUWC7uluiqjCmMViooR/cC54Exwldl
X-Gm-Gg: ASbGnctxW1ZgfpafiR82PKcnLfq8oCtNb0xzClmJ228Yf2fzleFd+e4p/v1lCvbDU7F
	fXevqYo/tq0w77mpO1F06LcRZA9MnXXVoXJLHdJM/Xptt1ITZgv6WCQfsojObFirXMH8xiVShmP
	/RFvXiG2i4FVp8cdEvzYt6kQZOb4B8KCAjP3fCtG0PS8X8NbZfIA0B3v7Jmvq7XnE6uNA1d2a1X
	YoJcc071zAZdgPfC2dbfC95GSlFZ9Vit+2ha+YBkpiVMF3sPYyYJk8dXWDBdd7OrTzqIylaW0wG
	4WDEvEIZ6zIsgSoJQ5yYaGFTOkihFq0MjSsSD62iH1IAdwvbYpfclQbXb6mfOkuZIHQ8njqOtK9
	rsaGJKzbDr5cKW8HZUdUXY1nSJy8JS+Fku7rAPm94GeK7yGcqMql6W6WPk7lbq8FEaHmcAKjsYw
	Cx6Q==
X-Google-Smtp-Source: AGHT+IGaJGEihzS9F6fnNyhHVGRwXCsOXdE9dlWNhp4wiYwBqGQCgmFf5u4C0KR9SkCEnEJDDokDBg==
X-Received: by 2002:a05:600c:8284:b0:46f:b43a:aedf with SMTP id 5b1f17b1804b1-47117925da1mr126433075e9.38.1761142895124;
        Wed, 22 Oct 2025 07:21:35 -0700 (PDT)
Received: from xeon.. ([188.163.112.61])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-427ea5b3d4csm24803518f8f.19.2025.10.22.07.21.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Oct 2025 07:21:34 -0700 (PDT)
From: Svyatoslav Ryhel <clamor95@gmail.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
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
	linux-staging@lists.linux.dev
Subject: [PATCH v5 07/23] staging: media: tegra-video: vi: add flip controls only if no source controls are provided
Date: Wed, 22 Oct 2025 17:20:35 +0300
Message-ID: <20251022142051.70400-8-clamor95@gmail.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20251022142051.70400-1-clamor95@gmail.com>
References: <20251022142051.70400-1-clamor95@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Because the current Tegra video driver is video-centric, it exposes all
controls via /dev/video. If both the camera sensor and the VI provide
hflip and vflip, the driver will fail because only one control is allowed.
To address this, hflip and vflip should be added from the SoC only if the
camera sensor doesn't provide those controls.

Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
---
 drivers/staging/media/tegra-video/vi.c | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/media/tegra-video/vi.c b/drivers/staging/media/tegra-video/vi.c
index 856b7c18b551..90473729b546 100644
--- a/drivers/staging/media/tegra-video/vi.c
+++ b/drivers/staging/media/tegra-video/vi.c
@@ -961,6 +961,7 @@ static int tegra_channel_setup_ctrl_handler(struct tegra_vi_channel *chan)
 	}
 #else
 	struct v4l2_subdev *subdev;
+	struct v4l2_ctrl *hflip, *vflip;
 
 	/* custom control */
 	v4l2_ctrl_new_custom(&chan->ctrl_handler, &syncpt_timeout_ctrl, NULL);
@@ -986,11 +987,13 @@ static int tegra_channel_setup_ctrl_handler(struct tegra_vi_channel *chan)
 		return ret;
 	}
 
-	if (chan->vi->soc->has_h_v_flip) {
+	hflip = v4l2_ctrl_find(subdev->ctrl_handler, V4L2_CID_HFLIP);
+	if (chan->vi->soc->has_h_v_flip && !hflip)
 		v4l2_ctrl_new_std(&chan->ctrl_handler, &vi_ctrl_ops, V4L2_CID_HFLIP, 0, 1, 1, 0);
-		v4l2_ctrl_new_std(&chan->ctrl_handler, &vi_ctrl_ops, V4L2_CID_VFLIP, 0, 1, 1, 0);
-	}
 
+	vflip = v4l2_ctrl_find(subdev->ctrl_handler, V4L2_CID_VFLIP);
+	if (chan->vi->soc->has_h_v_flip && !vflip)
+		v4l2_ctrl_new_std(&chan->ctrl_handler, &vi_ctrl_ops, V4L2_CID_VFLIP, 0, 1, 1, 0);
 #endif
 
 	/* setup the controls */
-- 
2.48.1


