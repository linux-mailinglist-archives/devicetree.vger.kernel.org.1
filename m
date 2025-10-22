Return-Path: <devicetree+bounces-229827-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BE95BFC8AC
	for <lists+devicetree@lfdr.de>; Wed, 22 Oct 2025 16:31:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 29F9A62409E
	for <lists+devicetree@lfdr.de>; Wed, 22 Oct 2025 14:22:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F3B8534C149;
	Wed, 22 Oct 2025 14:21:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="lXzHC2ux"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1368034C994
	for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 14:21:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761142897; cv=none; b=jZhfLF/JNCrRIE7WdgXfqECqq1kDu4T7LAXp2Xb9TnC0sID4wHUSgNkG4YhfRhU8aBD7PqkEBoI+o3tjV8xRTNOBuwdRg7A89EKg/3hWx38iKvJn8+wYN/S3UHx++Eua/g5woodbQhlBheZabpuAY54O0NlhM5Crz1kB+lxS3Es=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761142897; c=relaxed/simple;
	bh=sgN5V56YM4qhVdHy0m6Dz/yGVt5884z/MxNndOF+8Hg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=TjEbj8tn9wu6WoSIQIB5XCS0aBfpv1ExZ4mac15u9K1gCZyOHOBsp1a3hYBHQAPXWc+phJiNzCum/93JjkZFG9C/wCdqaKrUvMmIiZa1QP9Q06Sx6Rw9T9ns7k8S/z2tAyjsYtmYsPMTgZhc7IWh2UOb1o5z1kTvIYa3aoicp9k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=lXzHC2ux; arc=none smtp.client-ip=209.85.221.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-426fc536b5dso3888729f8f.3
        for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 07:21:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761142892; x=1761747692; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LDpFX1J+/TUvWrJNHxxt+1RfUZNV6gVxsd2JBSzQm/w=;
        b=lXzHC2ux0x6XqqtwU8OExOQbNe87Z254m3f5SjJy87QMVkbeSDUsdKqLDYH765pi57
         QjajF2sEFc0JiMamnRsr97QNmVmuDpojiDN92b6z5Eb7KAYRo3dLS47wIJfvnZV4ISAV
         drnzU3S289Yp+vHs43d4DXMeV7fAhHqIUU8Lb5vACnrVGbfl2q/mTd2GLy5D23IMkRf1
         ziI0GlMUpcsrq2bOAOqu6gkmTjSEDSeF79mDG2u0WJYTXnZaEWS3dY0hrm8tm758/qHA
         vAtM0FGm6g2iadidAW0AAwlu9hnqDnYqDgd9bEpFKH+QPTDLQntUkJ8ORNXVr/urvyI+
         5FfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761142892; x=1761747692;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LDpFX1J+/TUvWrJNHxxt+1RfUZNV6gVxsd2JBSzQm/w=;
        b=CEB8UiDAnt8QiU4a55cq5nk/5Un3sAZ497ZI3USBTKdnPETDSkhfZ0x3cZkUKu9Skd
         CLgC0ThfPj4F8ffF0Lp5E50BhqRVUxOKo2w3MxpzQ8aq1Zp/XVjy+ILa/wTIE4KBKlkC
         Lw1gtErPPCGuyg2vpzE+TWeI5+jOWu+JbI5JB8ibzdXCVsPSJGA6/ME+CgYE99jw3S7M
         yTs1knwgCpI592MVS5uXFDzSsrxu1UeIa5pFy6JjdLp5J644KfKIRw1oAevHTeSBPPOa
         OpvyYn/86XPLDDtlbA168mLT6imTtaV7fdksCxKauI3usfVU1GM1TkRoFMuLyGaPz2sz
         E6MQ==
X-Forwarded-Encrypted: i=1; AJvYcCXr5W/+nkx3iXkGTNH/Y3q75ybk6SogHC4K05gPFYP7pmiplfYFwJ9VO3aiUkHdUe3wItJ3IUPezOGg@vger.kernel.org
X-Gm-Message-State: AOJu0YzPh1McCPKrnUvIHjA7c6BB2EL8eGkJxuGDlC2vTSraaejlT8mD
	/SQ3WHs+249CDeOqhz1LXGTfO4VX4VeibYRQ+VX7hMMefp1iNoDTMgoF
X-Gm-Gg: ASbGncuPYcGiAHhJ/Yr/XH0rqGbfeelVGel4jwA9v6lo+8+fI/UrTZLMa/qzV5vTHGe
	smgeBArfYNdkEl+CDngrOSPeM33OWmBtgCBU2thLDo81xDdDKKx4qO/dzFoCUSoR0YpNimmKMIW
	XbwoxYIw+GmEfA8k0bwOlXuw76b8B75HlZiEM7xfMkb50hjX9IkLWizmXU99f7f1zW+e89POZOf
	O6kwcQ0UPTGQWf6QwtPWFa+ewu4nNJfiPukMUXXo9U0XxP0qRjYg+XfJmo3VaU6JkIU7Loqcsey
	r1xVhIASWmiQC7Rg5L9i3o9vON6lNGjFCRqf82IDccLbvYE+qGQ36fhcvqvf30HN+1TaynvKU0i
	j6Jh8RLKA/1N8WN7uaDTXjuKRIeY7vF7ffKjq7HExDpwCVsUtw5FPk4LFFoA30ly5+mF7SJSgfX
	+ZLb6RAYqoeTfy
X-Google-Smtp-Source: AGHT+IF+82cvX09pMZxWI3kQBEfe70yoMhjWZgKxMgHRV992x45EZGsBOAfdIq28w0jPz4jSk+0d/g==
X-Received: by 2002:a05:6000:22c6:b0:3ec:db18:1695 with SMTP id ffacd0b85a97d-42704dc9395mr15346109f8f.45.1761142891534;
        Wed, 22 Oct 2025 07:21:31 -0700 (PDT)
Received: from xeon.. ([188.163.112.61])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-427ea5b3d4csm24803518f8f.19.2025.10.22.07.21.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Oct 2025 07:21:31 -0700 (PDT)
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
Subject: [PATCH v5 05/23] staging: media: tegra-video: expand VI and VIP support to Tegra30
Date: Wed, 22 Oct 2025 17:20:33 +0300
Message-ID: <20251022142051.70400-6-clamor95@gmail.com>
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

Existing VI and VIP implementation for Tegra20 is fully compatible with
Tegra30.

Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
Tested-by: Luca Ceresoli <luca.ceresoli@bootlin.com> # Tegra20 VIP
Reviewed-by: Luca Ceresoli <luca.ceresoli@bootlin.com>
---
 drivers/staging/media/tegra-video/Makefile | 1 +
 drivers/staging/media/tegra-video/vi.c     | 2 +-
 drivers/staging/media/tegra-video/vi.h     | 2 +-
 drivers/staging/media/tegra-video/video.c  | 2 +-
 drivers/staging/media/tegra-video/vip.c    | 4 ++--
 5 files changed, 6 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/media/tegra-video/Makefile b/drivers/staging/media/tegra-video/Makefile
index 6c7552e05109..96380b5dbd8b 100644
--- a/drivers/staging/media/tegra-video/Makefile
+++ b/drivers/staging/media/tegra-video/Makefile
@@ -6,5 +6,6 @@ tegra-video-objs := \
 		csi.o
 
 tegra-video-$(CONFIG_ARCH_TEGRA_2x_SOC)  += tegra20.o
+tegra-video-$(CONFIG_ARCH_TEGRA_3x_SOC)  += tegra20.o
 tegra-video-$(CONFIG_ARCH_TEGRA_210_SOC) += tegra210.o
 obj-$(CONFIG_VIDEO_TEGRA) += tegra-video.o
diff --git a/drivers/staging/media/tegra-video/vi.c b/drivers/staging/media/tegra-video/vi.c
index c9276ff76157..7c44a3448588 100644
--- a/drivers/staging/media/tegra-video/vi.c
+++ b/drivers/staging/media/tegra-video/vi.c
@@ -1956,7 +1956,7 @@ static void tegra_vi_remove(struct platform_device *pdev)
 }
 
 static const struct of_device_id tegra_vi_of_id_table[] = {
-#if defined(CONFIG_ARCH_TEGRA_2x_SOC)
+#if defined(CONFIG_ARCH_TEGRA_2x_SOC) || defined(CONFIG_ARCH_TEGRA_3x_SOC)
 	{ .compatible = "nvidia,tegra20-vi",  .data = &tegra20_vi_soc },
 #endif
 #if defined(CONFIG_ARCH_TEGRA_210_SOC)
diff --git a/drivers/staging/media/tegra-video/vi.h b/drivers/staging/media/tegra-video/vi.h
index 1e6a5caa7082..cac0c0d0e225 100644
--- a/drivers/staging/media/tegra-video/vi.h
+++ b/drivers/staging/media/tegra-video/vi.h
@@ -296,7 +296,7 @@ struct tegra_video_format {
 	u32 fourcc;
 };
 
-#if defined(CONFIG_ARCH_TEGRA_2x_SOC)
+#if defined(CONFIG_ARCH_TEGRA_2x_SOC) || defined(CONFIG_ARCH_TEGRA_3x_SOC)
 extern const struct tegra_vi_soc tegra20_vi_soc;
 #endif
 #if defined(CONFIG_ARCH_TEGRA_210_SOC)
diff --git a/drivers/staging/media/tegra-video/video.c b/drivers/staging/media/tegra-video/video.c
index 074ad0dc56ca..6fe8d5301b9c 100644
--- a/drivers/staging/media/tegra-video/video.c
+++ b/drivers/staging/media/tegra-video/video.c
@@ -123,7 +123,7 @@ static int host1x_video_remove(struct host1x_device *dev)
 }
 
 static const struct of_device_id host1x_video_subdevs[] = {
-#if defined(CONFIG_ARCH_TEGRA_2x_SOC)
+#if defined(CONFIG_ARCH_TEGRA_2x_SOC) || defined(CONFIG_ARCH_TEGRA_3x_SOC)
 	{ .compatible = "nvidia,tegra20-vip", },
 	{ .compatible = "nvidia,tegra20-vi", },
 #endif
diff --git a/drivers/staging/media/tegra-video/vip.c b/drivers/staging/media/tegra-video/vip.c
index 5ec717f3afd5..34397b73bb61 100644
--- a/drivers/staging/media/tegra-video/vip.c
+++ b/drivers/staging/media/tegra-video/vip.c
@@ -263,12 +263,12 @@ static void tegra_vip_remove(struct platform_device *pdev)
 	pm_runtime_disable(&pdev->dev);
 }
 
-#if defined(CONFIG_ARCH_TEGRA_2x_SOC)
+#if defined(CONFIG_ARCH_TEGRA_2x_SOC) || defined(CONFIG_ARCH_TEGRA_3x_SOC)
 extern const struct tegra_vip_soc tegra20_vip_soc;
 #endif
 
 static const struct of_device_id tegra_vip_of_id_table[] = {
-#if defined(CONFIG_ARCH_TEGRA_2x_SOC)
+#if defined(CONFIG_ARCH_TEGRA_2x_SOC) || defined(CONFIG_ARCH_TEGRA_3x_SOC)
 	{ .compatible = "nvidia,tegra20-vip", .data = &tegra20_vip_soc },
 #endif
 	{ }
-- 
2.48.1


