Return-Path: <devicetree+bounces-221503-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E990FBA04C6
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 17:27:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C351A168CD4
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 15:22:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 86FF03148D9;
	Thu, 25 Sep 2025 15:17:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="LuQquLGT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com [209.85.167.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D574831283C
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 15:17:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758813470; cv=none; b=IEQ8Fl4g7ABj5p8zf2g7ofU8tXqHJ2o08RBiGiuTwwItWuE0vlNZ9S7BXIxveN0qibaEMyi84prrIDlOK/WmJNtWqPEbsb972n+mu6V6XLxZSWf9M2b8jIU5nMsQHRIT3c0hfZscAKujfr6blS1HXIUHR8bBWN0/35KVO4ltNu8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758813470; c=relaxed/simple;
	bh=Wwzw9xMv2o/Ts1NeW/7xbttNmsv5LpsRAHX++eZT1Ro=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=q3lGccM044jYiHdIWnNrlA0JcG3MJfh8YF9TC25WxaIvqhUfWl21mY6dZwovCd71BWXQ7TsmirgCCpC71UAFQvsKxsGC1I+tuHhhr4jWfa8QsyS91ylc0fEPTOAlE2yvXZmks5hbTmUeVIQwxtQ0qQQLqXK0XzsxBp0Y02O3If4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=LuQquLGT; arc=none smtp.client-ip=209.85.167.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f42.google.com with SMTP id 2adb3069b0e04-57933d3e498so1186793e87.3
        for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 08:17:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758813465; x=1759418265; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qYprJOOZGbDqCKik+QwJZFKS+miOCWjcfIzmeC4Md1A=;
        b=LuQquLGT4rQCWzZwf831aiyYkP6GmLDPio1Rf6vAKS9wMEs5SLpq1Y3FdLk6ks8l7A
         fEZ7zeL3O1gNehi0sH7duewtDtXA5WLJ65TiuM5ls/L1+pYQQNksqov1oL2M59PWmTcT
         JNvi7XhD+dOnixXWmVduV6fNqDctJpSloRdiXqAm90CCTtYB9HenkPmRwrkDMPf1w3CQ
         BoSNL61XRbEVdqLaTcr9bpQI8a21b00lhBcE7/46kLR6DR7H4tw0po/Rp1ll0Evadx2K
         1IvlGJRTE62w3lQ/8A+FGRhANyw/V9oqNucZgfRWYZuOT/3vMCbKmjGhV1KPUnuFCqUp
         aI6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758813465; x=1759418265;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qYprJOOZGbDqCKik+QwJZFKS+miOCWjcfIzmeC4Md1A=;
        b=vyKKqsm4rdRShzyoiS7vAVhg+OdZTMjxw8smmlGdM1ZQcCJRuSS+fC4UTRgYLGaG6l
         xYBhl4N6f8Azxj0RE+JIrGlSTb/A4sNnda36dQrLaD0lQywKQx4VE/b+wILiXkSi6+UQ
         Bb9LgbXv+yNFvHMoUskfYLPAfM7OTN2I6mAcBbGYZwn31MAJrj1fxKHdr/SkQ3P7w88X
         S/d8MJ6bJIdH8M7S5IJPAI1zSTglLu/ibXWUpxuaXIf0bifjfi6yMVWx9UYoTusWNdE/
         5G3KeUrhl1TAty+VYKvE/60dpfM4mj5PwaSQ2tZLOepJd6DwoO1OWTogfdPHhrSsDpkg
         X/Sw==
X-Forwarded-Encrypted: i=1; AJvYcCXjwQMcEHsodZYDysyZ1ipqRYcE9Gg5LLTQ5agA8JbWhg1o82HKuiX5A/sjJk7dLS9PnukDEgyu2ySH@vger.kernel.org
X-Gm-Message-State: AOJu0YxEwatn9p8eG/Q/zYEoq5NO13RbwXUQySKMyi0Z2ohy/Xz73yXF
	CO4ULhdAMH5qQ5ALDW0/H1/DTbVK1w+3EgZJM5H3bdT9NOZtJAq5j9kO
X-Gm-Gg: ASbGncsRPMLDmbg8Y4MqQ7dDamM7cP/cdof+LqCeLlGWOfTRuZqibUeRxYR6aUJF3Cn
	bsZ0+vHZHhuG4Zav9W/mcUtd4aVnepSJ19yio2O5ZUOh1qSRJ5ac2u3mQAGCt/XTMGCjEHQy8tq
	4E5zUqYV1k25rXu5SBIjAJ8zEhNrx8VobHqXLGAYCbc2c82kHIk0BJOpwXDRDfHQSdqCyPNMj/Q
	nnJvy0yGn7OJS/fX4jcajce+yybbulfWB3MV/GI003hdmk3iERcWyLM7gs20XhzbBSZNJpOtQAF
	9jjanKXMsndGdWTw3IkrkyqJkezBUaMbZ2iOxgHBigUqFpkC6C0jw1da4EnhWM9NqtPqH2vekBe
	A9kFOhX+PocQnIA==
X-Google-Smtp-Source: AGHT+IEeprLHz/3/8zyQFjT14w4jQMsLq/gaJLv/R+aBxEGgOU1QbgcmMLTTspONZDVL3CUfJjhHWA==
X-Received: by 2002:a05:6512:3b20:b0:57a:8738:4d80 with SMTP id 2adb3069b0e04-582d0c2a62fmr1003402e87.21.1758813464668;
        Thu, 25 Sep 2025 08:17:44 -0700 (PDT)
Received: from xeon.. ([188.163.112.70])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-58313430496sm870084e87.27.2025.09.25.08.17.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Sep 2025 08:17:44 -0700 (PDT)
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
Subject: [PATCH v3 19/22] staging: media: tegra-video: tegra20: adjust luma buffer stride
Date: Thu, 25 Sep 2025 18:16:45 +0300
Message-ID: <20250925151648.79510-20-clamor95@gmail.com>
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

Luma buffer stride is calculated by multiplying height in pixels of image
by bytes per line. Adjust that value accordingly.

Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
Reviewed-by: Mikko Perttunen <mperttunen@nvidia.com>
---
 drivers/staging/media/tegra-video/tegra20.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/media/tegra-video/tegra20.c b/drivers/staging/media/tegra-video/tegra20.c
index fba90cafb9be..8c9655ffa886 100644
--- a/drivers/staging/media/tegra-video/tegra20.c
+++ b/drivers/staging/media/tegra-video/tegra20.c
@@ -498,7 +498,7 @@ static void tegra20_camera_capture_setup(struct tegra_vi_channel *chan)
 	u32 data_type = chan->fmtinfo->img_dt;
 	int width  = chan->format.width;
 	int height = chan->format.height;
-	int stride_l = chan->format.bytesperline;
+	int stride_l = chan->format.bytesperline * height;
 	int stride_c = (output_fourcc == V4L2_PIX_FMT_YUV420 ||
 			output_fourcc == V4L2_PIX_FMT_YVU420) ? 1 : 0;
 	enum tegra_vi_out output_channel = (data_type == TEGRA_IMAGE_DT_RAW8 ||
-- 
2.48.1


