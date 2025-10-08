Return-Path: <devicetree+bounces-224387-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BA3BBC3947
	for <lists+devicetree@lfdr.de>; Wed, 08 Oct 2025 09:31:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id F3BA6352086
	for <lists+devicetree@lfdr.de>; Wed,  8 Oct 2025 07:31:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C2F732F28EE;
	Wed,  8 Oct 2025 07:31:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="mjEkU1lj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8523C2ED148
	for <devicetree@vger.kernel.org>; Wed,  8 Oct 2025 07:31:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759908680; cv=none; b=bUsVFtY2y/Ss56Ezos0F1X1VPaib/+7P5v1WgN3yyHiaReHfrsmjg2NjVnrz21vLxKerw7FKrNH20rVTjyLbbfkYG6YnL8ZQ0q3N2CLsxv1pcchHA1mtN+j4MqCEd2FSmhW7v9PoLAr47BYsY0XmVXr+a+p1/edt2eFf9udM+6s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759908680; c=relaxed/simple;
	bh=Xtlv0T4/g1zHgGtcSEMBQYBsYKA6gFss+0qpYkk7s1I=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=DVDGoDg3qakImigAIK52yqB/uUstWBgX8nID//rEzpKfeDaBrtplc4gHZrZgpsw9gQe0pT7ZM/7SOYUSJRN6MlJxQA/2f1mDil7xUTJev/F5Tbi+J59xvIZDKWylfL6P0I0/bu5tyoaEZKsTSuxX3UwBJdbpJZaHql8Z+ZK41YU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=mjEkU1lj; arc=none smtp.client-ip=209.85.167.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-586883eb9fbso2494575e87.1
        for <devicetree@vger.kernel.org>; Wed, 08 Oct 2025 00:31:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759908675; x=1760513475; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nuOpi1X4QZYIfmoXv6VRwrkZ+36+Rr3x/0SmX/s0qO4=;
        b=mjEkU1ljzoPAd5xRdZag34mPgwvF8Q2NtMAG1qV19a5hFAf+YiZwvyXi7jRJoXLzxh
         bEzzsGAimhBESYTA7IITen3/4HTmceQKC06Xo29PgHlGGtrlhJBlg++DctAGKo+MyNHz
         EjJLyMOsJYMu1ZkbXHOCGGCfdUy2/4biGo/dQ8Dy9vQoYDr4ejQi2Qbc/QyCrj/ClpHF
         i2te2dx53EtOkHm/CvFDrM9UiphHML5SZ7Osxpyuzg2fUjhiKUcAufoT6ay3/vQ55CG3
         wp8XMry8EGMvtJbScit47AuRA2Rj1elgN6mp8AGk3rmKZR4MA4fNlLF3AA//1twyJ3bQ
         R4PQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759908675; x=1760513475;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nuOpi1X4QZYIfmoXv6VRwrkZ+36+Rr3x/0SmX/s0qO4=;
        b=BbevnMhtMZ0RpLHD+ts/GtTmD8xRGCF9r8nezlJW7EHNzsJ3VACWRmdq0ES0NA56ia
         o7zhsAyFrQG0RPLgz6d7uPFjeiJ5cSTURnKsosRiLZwEeczqaUlHwQnJpN8qq4BIvg99
         DAYL/yXqUPr6H2sya76vWtauvxonRgDL7tsyr45pUm5wXaKVH7Hv12vnx0D59DDgk5Rh
         W9MkMFInWamevwLk3yp5aq2DDZ8QCf8Z7cDGaOf9XBGho+IQQ31KPm+M9d/MupOPNFUW
         wpa7xSqiLLVBUBBBOJY87S6jXQSIJAbGaFYzrmyZh2h+kgFq9Of6hIUBJzmsmZ/bQtF4
         2otg==
X-Forwarded-Encrypted: i=1; AJvYcCXtQFPq+buJPRFYZ5F5Gek07zU2gIKNefGi5rxm9U7gyAjgWjIM9eECXFB0nPM6PTtUdVbIJys6jqV7@vger.kernel.org
X-Gm-Message-State: AOJu0YxvcZ+HoN7LjdPvIh+C3XeWmd3XQL8z1XMzRyAXk90iUz114ZOZ
	8P37ZZhIIchMxJB5d+gPAor4NHH/JvLrhodn/lCJOB1a4OLFRLzYl0HG
X-Gm-Gg: ASbGncsr6Q1VlOchY9cXLviS4KciImN7IX3SgXV+338GQn0soVpCI8AYIbEAqidovxW
	2t43+rFeK1mPB0yTHSYYP4jTsx8EGVsMJi3oQ9AAGLVptYs4Xe7vlJPC7/xIYo4h8OZ7xO7i/ZR
	wKLQbYI+W4BEVygqczAttz+Mvx2gDWLip/rYQroqid3jZ1ffrj0XsJ0bBKbiQCf8dSbHgqODPbk
	allaqnORwlVY5mFtrS0Ygr+G38y14cz58zzxFiXQA0gKHN4UlCMlkgNM4MdtkQF8M4bJaNLn69g
	znRYL/6TR04WDA+dUvJKGA4GCOVgdCWdp9eAJdrdz1UYxoup4PQVxo6NREHyTBUo1xgFEaKrOuq
	0gwG0k2nL2pOOVlan0AkSCIrn4L1SEwwmuEbGGg==
X-Google-Smtp-Source: AGHT+IH4w5wUowLiJI7hgdEtUtkCn/YDDLljjRvew5jTKIWe64MrO+dc17yhYkOKlcC57NaNakIcLQ==
X-Received: by 2002:a05:6512:4028:b0:57d:b8a1:832b with SMTP id 2adb3069b0e04-5906d89edbdmr712455e87.24.1759908675110;
        Wed, 08 Oct 2025 00:31:15 -0700 (PDT)
Received: from xeon.. ([188.163.112.70])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-58b0118d22bsm6911016e87.85.2025.10.08.00.31.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Oct 2025 00:31:14 -0700 (PDT)
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
Subject: [PATCH v4 01/24] pinctrl: tegra20: register csus_mux clock
Date: Wed,  8 Oct 2025 10:30:23 +0300
Message-ID: <20251008073046.23231-2-clamor95@gmail.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20251008073046.23231-1-clamor95@gmail.com>
References: <20251008073046.23231-1-clamor95@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add csus_mux for further use as the csus clock parent, similar to how the
cdev1 and cdev2 muxes are utilized. Additionally, constify the cdev parent
name lists to resolve checkpatch warnings.

Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
---
 drivers/pinctrl/tegra/pinctrl-tegra20.c | 11 +++++++++--
 1 file changed, 9 insertions(+), 2 deletions(-)

diff --git a/drivers/pinctrl/tegra/pinctrl-tegra20.c b/drivers/pinctrl/tegra/pinctrl-tegra20.c
index 737fc2000f66..1a1758fd7def 100644
--- a/drivers/pinctrl/tegra/pinctrl-tegra20.c
+++ b/drivers/pinctrl/tegra/pinctrl-tegra20.c
@@ -2222,14 +2222,18 @@ static const struct tegra_pinctrl_soc_data tegra20_pinctrl = {
 	.drvtype_in_mux = false,
 };
 
-static const char *cdev1_parents[] = {
+static const char * const cdev1_parents[] = {
 	"dev1_osc_div", "pll_a_out0", "pll_m_out1", "audio",
 };
 
-static const char *cdev2_parents[] = {
+static const char * const cdev2_parents[] = {
 	"dev2_osc_div", "hclk", "pclk", "pll_p_out4",
 };
 
+static const char * const csus_parents[] = {
+	"pll_c_out1", "pll_p_out2", "pll_p_out3", "vi_sensor",
+};
+
 static void tegra20_pinctrl_register_clock_muxes(struct platform_device *pdev)
 {
 	struct tegra_pmx *pmx = platform_get_drvdata(pdev);
@@ -2239,6 +2243,9 @@ static void tegra20_pinctrl_register_clock_muxes(struct platform_device *pdev)
 
 	clk_register_mux(NULL, "cdev2_mux", cdev2_parents, 4, 0,
 			 pmx->regs[1] + 0x8, 4, 2, CLK_MUX_READ_ONLY, NULL);
+
+	clk_register_mux(NULL, "csus_mux", csus_parents, 4, 0,
+			 pmx->regs[1] + 0x8, 6, 2, CLK_MUX_READ_ONLY, NULL);
 }
 
 static int tegra20_pinctrl_probe(struct platform_device *pdev)
-- 
2.48.1


