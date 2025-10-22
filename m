Return-Path: <devicetree+bounces-229841-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 31F01BFC82E
	for <lists+devicetree@lfdr.de>; Wed, 22 Oct 2025 16:27:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 222B6189B354
	for <lists+devicetree@lfdr.de>; Wed, 22 Oct 2025 14:26:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 17FDA34FF7A;
	Wed, 22 Oct 2025 14:22:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="POWMSZJD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 204A934F261
	for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 14:21:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761142924; cv=none; b=FSOFqiCdrnVNCs2cxTTEdj2MuN7HLIK5KmB/+muuvIEHKp1ulAsOzDKjedYrDKCNxjfzUk2SJaMl4uAWQGf0I+QJSaLqLXdACen7c76GUsXYORavtBQNhWaeSND21iZiXX5bjPhKO/7acq81GNQUr7zHXmeS/T3uXBI5oqfN3oY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761142924; c=relaxed/simple;
	bh=LMNj3RJtvSAolKc/cNyymmQWeXKMjtcs4eYn8DUf4jQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ONjBP35UiKY8TPLmhJgKpNNNGEKyj9GZueLFREz6d1iHeYqwj1UOoCkkGijnyZnmFneGfYIfENSU/lOxTJP4NolDZvqALlVQ4+F9aelcYz1HFQBoqcItcNUH6/VTO0Xl74IzOXOwUwQB/HgBq6Z243JKztI/dhaWE4VvPM8PGpc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=POWMSZJD; arc=none smtp.client-ip=209.85.221.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-4270491e9easo4308027f8f.2
        for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 07:21:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761142915; x=1761747715; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kNqGqTCCsfPGbDV/XUSDGT/efKZfdWLbKEq+jQy+Hag=;
        b=POWMSZJDp7lpsCky1EgRlQLwH1w0TX/qXwWgEcXcEJUONjXLwGvTyMQw0U2PtwwaUR
         dDMCX4sTtRfHgL0W9UkSwGe6eybkaEJ7qWlgMe720o55F8uZUUF3JAXFzU6IyEAyytj6
         4WjEX+huRmlGu9NzEh8moCPBJ26OMDBNekWekIC43RP+ZUS9ODog9d4uxeVNoxfF0O1t
         eue7s3PqjdubmPWcRNi93cq+9MYgwn9hvlNbxQjQxkzb38cyWhuzi5cTEngosZudg9DT
         83r3THfeh3s+CinBLeFPEWi0KpQcHmy4wBeOnybQFnPv/N9cGRKyFrbDEDpYylBoJzv+
         Uvmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761142915; x=1761747715;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kNqGqTCCsfPGbDV/XUSDGT/efKZfdWLbKEq+jQy+Hag=;
        b=o9mXmufY95U5h4xIDtUYiz1RSeqk73DTRb0YMoj5t7wG0IVkIcQC9BVqfKfZMub8WN
         mYRPjvDkBMar/MT5Mb9jPA/mps99ITP4TCWopGoE3dlwPp08upC17swPY4PXvIyg6lSa
         Tjy0o+ojg51tFr49OvHqrcMOmT/hv56cxAjPJDRdFRw6wHUVrXHnXZsmF9Ed3pdt2YAX
         Y3pi5VcxKpVCFXbK+1OfZYYYLAubFL1LRy28Fh5WS5v0DKpIBZx6ctQD/X4ugvSwxNUB
         d2rIVKD6knoUfIWvJn43iA6oiZDd7zTLfShS5Stp1mDPbWDi2FMRx14lGipaPnbFSXFC
         6ozg==
X-Forwarded-Encrypted: i=1; AJvYcCU9zlaXZN65DlKuLBEw9m91n+X/Sr4imfVjHvMnZx4b+vkiSjLRL2p4VyOETWGZBuwPf8fC9/7EwjVj@vger.kernel.org
X-Gm-Message-State: AOJu0Yyz75uR9+YBWrjTF1+bj28y/OtRkBZv81sauj1UuBC6oh/Fzg/9
	AjfCVJ2IzOUlGF3nM2o2Mp4hPj1y3N8JEpbnmA7p7CIzQUXBzB5jkLPu
X-Gm-Gg: ASbGncuMY4hi9srmab2OEU3A0AbOkOpaLMYaK/rqqOHzDNrvVvUefX8u2fGAWXr66Ve
	fLA1E7j+jl7sHswwwtVfjPI3IeyJFEt8B0HrklJ2ovaELwcMaBE00xHOgaRAb7pt4C1qLMuA435
	CIx8CDAFLYWdOkCSHi+p1W2oN3p6atfOhlwUwXS+rMHF5KP1Hmw2V9Ti0KqYK1xxyRhGQeZl/xo
	zYYzK4lRRFjm2Qbztga/XGhukQCEZvxlCRpCIZfoFs7GFBcAb6G2C7ku1Sgn3J+Oii764Q7xk1o
	0qZ7BOgrcOHF8CR16TaWlWeBW5i9Wy0QN8gHRc2TsLrVkqtK3f0WJkKVZOWJQRDeYwxjiKRyick
	5MIdIZR5SrpYINfFYeIfGl0H0XniEj1Rv02JebgB4AAw90hnni3ClewdQOJ5DBZp7lJc=
X-Google-Smtp-Source: AGHT+IFX0XnrlT4GW6rKQFEmK1orh25Up0PxK9L9DQEcm8KVBweiXSL9uA4QjEkF/hiMIpTbvZ0SpQ==
X-Received: by 2002:a5d:64c4:0:b0:426:d51c:4d71 with SMTP id ffacd0b85a97d-42704d44253mr11937579f8f.8.1761142915306;
        Wed, 22 Oct 2025 07:21:55 -0700 (PDT)
Received: from xeon.. ([188.163.112.61])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-427ea5b3d4csm24803518f8f.19.2025.10.22.07.21.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Oct 2025 07:21:54 -0700 (PDT)
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
Subject: [PATCH v5 18/23] staging: media: tegra-video: tegra20: increase maximum VI clock frequency
Date: Wed, 22 Oct 2025 17:20:46 +0300
Message-ID: <20251022142051.70400-19-clamor95@gmail.com>
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

Increase maximum VI clock frequency to 450MHz to allow correct work with
high resolution camera sensors.

Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
Reviewed-by: Mikko Perttunen <mperttunen@nvidia.com>
---
 drivers/staging/media/tegra-video/tegra20.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/media/tegra-video/tegra20.c b/drivers/staging/media/tegra-video/tegra20.c
index 93105ed57ca7..149386a15176 100644
--- a/drivers/staging/media/tegra-video/tegra20.c
+++ b/drivers/staging/media/tegra-video/tegra20.c
@@ -598,7 +598,7 @@ const struct tegra_vi_soc tegra20_vi_soc = {
 	.ops = &tegra20_vi_ops,
 	.hw_revision = 1,
 	.vi_max_channels = 2, /* TEGRA_VI_OUT_1 and TEGRA_VI_OUT_2 */
-	.vi_max_clk_hz = 150000000,
+	.vi_max_clk_hz = 450000000,
 	.has_h_v_flip = true,
 };
 
-- 
2.48.1


