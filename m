Return-Path: <devicetree+bounces-229837-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AA94BFC8F4
	for <lists+devicetree@lfdr.de>; Wed, 22 Oct 2025 16:33:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 298E76E3D4C
	for <lists+devicetree@lfdr.de>; Wed, 22 Oct 2025 14:25:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4815D350280;
	Wed, 22 Oct 2025 14:21:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="U0iDgEC4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1365034F261
	for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 14:21:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761142915; cv=none; b=TdI/dkOLHblGrmowW7zZ7295BWc4c7FdS3lsYgTAsLNiDYDH3lH3sD5vzesz1xriBnALOvKiYf8SlmDbunfiyOTfkYNPML10RqOavV0mJg638AcJgSGH+6SjpGwzbLv4WNSwKgSSWPOkoDobdzQENeeBFjYKs9YGBQ2MWJ8/3EM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761142915; c=relaxed/simple;
	bh=RyMqVUMoRxnLE2+LH/uDoKbsjsXYMu268PiHdfObUHs=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=drEpFn21aTurNQVYAc2B9JdXO4iZbAgEh3IlIkQ3ZvKai5nKhfIPe78X1Pa3JXHLvpw7zj4El4RYcj0rpjgERo29qUbnbHZJbQ1JUyopAv/RpTHEm1iWw+O3JeaxKN0YzhmH/8tya1TIjleE15f2bX1QW7QI58d5l2FPIOYeY5g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=U0iDgEC4; arc=none smtp.client-ip=209.85.221.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-3ee64bc6b90so4495185f8f.0
        for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 07:21:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761142908; x=1761747708; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hswO6VHAbXRS9t5lyAgR5F2WC+ilzEfgsXiR8FyXf7w=;
        b=U0iDgEC4ll1KzUailgHGuGg2dvZyYCcri8Ik2xZvDn4/tK8FExWCzrToiAITWWja5V
         4jA3X4YERXMM9ose00DPofRZvynA0plLfBdirZ+SLHMXJDhxw038TC+K4JWDaExEV8fZ
         fE9zZoLkSlqs6q9fItnenRl5Yfz6XTV5qf3ZY1Hhfuk6ufYWP0V1hvxwFN207DqgjV7s
         FVrvLOEccT6+4RkEzP4SfokwquimM/ZnYXqIjE3zKrKNaaeAVprEYqS+0GdE/gFxgJd+
         YzSmsWK+zrVU2RpXgH8LYJ1C5rkqUWt4hgBjFrOyBIFg4rYhMu9vxk804vRtX4fXX5i+
         xbvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761142908; x=1761747708;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hswO6VHAbXRS9t5lyAgR5F2WC+ilzEfgsXiR8FyXf7w=;
        b=uxjhR/NpeaT7Lj/qqHh24W3x6K7oHWsvKuBkyw/fPbfD5yvvM6YE5dCSkk/oJb+5fp
         /s/7l+AUpnvNkVgm6HD5cFDiA5y8TCqj2eXUpjM8uhU1ncMC04cSJmyGhQMnOYYhxBx0
         799RRjG+8/nswA3L0p/uroM6zJNnOuQOAPz67PeYVX1IkYwYmZJ+BqR9/nsAPjku5tEm
         JdNuivhMC0PJbpIopCT3VANtnLc5D1Ib/atgCFjkyeDAc9b1Af8wmbesE+iJa9MpnIA8
         rGp74LYihJsYeQ7PWAHh8KAtbr6gOT8qzkCsPa0GjfXJkNb4EAA7wYWCvUHMf5PCqH/n
         qOzA==
X-Forwarded-Encrypted: i=1; AJvYcCU29IyP/JdAYR75Hqm6DDh01hpgvyRcp6wAM5WAauNXIM7wqhb7KC7WJVNBS31DqaPqBsKmbkqmrcDy@vger.kernel.org
X-Gm-Message-State: AOJu0Yw9MCwvrvMcjFwiS52yNcrhoxCLatNvK4WUXkNGiBUdOHREsgjt
	ugAQEyevI1bKiqRkqgAH5hPW9YX4NTpoAC5clxeSGZk0W/aOdWDO5S4V
X-Gm-Gg: ASbGnctRCsknzmMoaF17LOP6q1fFSbAZr6E/1N/eFF2xb/N2ViEqHwYqmOEsp/Ht/WG
	iDpFEbQfqFQyA9bCZ+WS+Y9usRriqcZub8NkNXz0wUi8x47ScAKgc6q8rukP/3P3ty2/82Fa004
	c+oL/pcJGP1Ry9z8yx1VkVs8Rh96g6fJNdtvYbEa3OVnaqvOPLGxKM1WpYgd+GJrGTMfeSMFrwI
	tHx1b1VIu7dd9W0Y6E5xje7zXjkftMBcM3WnwyGWjUnaCJ7CdCnIB1tvZof4f419a4Tbquqf6U3
	xkEksY2vcbqhTeP4ldMdVtpU4mIlGui+U6dXBCG2dCbVdiCejn6mRhTtmKKPNuCJUkFo4ivgKkm
	rZPUoxfl+/LEAYgIYp1JXVespBylai4GfwDXPwYgR2qc/QFc9b6euoDhx8L9QcDyQlcN5KkrnEz
	058g==
X-Google-Smtp-Source: AGHT+IFq9V87Zw7qGeTmSRrPB3JwZR7jtskG/uf8ikZdxsnRyJSInvVy1UaH8yLg4G5ahmvQ9XgogQ==
X-Received: by 2002:a05:6000:186f:b0:3f9:6657:d05 with SMTP id ffacd0b85a97d-42704d7eb23mr14938377f8f.12.1761142908345;
        Wed, 22 Oct 2025 07:21:48 -0700 (PDT)
Received: from xeon.. ([188.163.112.61])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-427ea5b3d4csm24803518f8f.19.2025.10.22.07.21.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Oct 2025 07:21:47 -0700 (PDT)
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
Subject: [PATCH v5 14/23] staging: media: tegra-video: tegra20: set correct maximum width and height
Date: Wed, 22 Oct 2025 17:20:42 +0300
Message-ID: <20251022142051.70400-15-clamor95@gmail.com>
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

Maximum width and height for Tegra20 and Tegra30 is determined by
respective register field, rounded down to factor of 2, which is 8191U
rounded down to 8190U.

Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
Reviewed-by: Mikko Perttunen <mperttunen@nvidia.com>
---
 drivers/staging/media/tegra-video/tegra20.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/media/tegra-video/tegra20.c b/drivers/staging/media/tegra-video/tegra20.c
index 7b8f8f810b35..3e2d746638b6 100644
--- a/drivers/staging/media/tegra-video/tegra20.c
+++ b/drivers/staging/media/tegra-video/tegra20.c
@@ -23,11 +23,10 @@
 
 #define TEGRA_VI_SYNCPT_WAIT_TIMEOUT			msecs_to_jiffies(200)
 
-/* This are just good-sense numbers. The actual min/max is not documented. */
 #define TEGRA20_MIN_WIDTH	32U
+#define TEGRA20_MAX_WIDTH	8190U
 #define TEGRA20_MIN_HEIGHT	32U
-#define TEGRA20_MAX_WIDTH	2048U
-#define TEGRA20_MAX_HEIGHT	2048U
+#define TEGRA20_MAX_HEIGHT	8190U
 
 /* --------------------------------------------------------------------------
  * Registers
-- 
2.48.1


