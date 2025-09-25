Return-Path: <devicetree+bounces-221490-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 30F29BA0406
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 17:22:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4B4411C2543E
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 15:19:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 49F9B304BAF;
	Thu, 25 Sep 2025 15:17:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ASxPoWgg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com [209.85.167.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6733F3009FF
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 15:17:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758813447; cv=none; b=JkHaN6qvcr6x7v4mny37Ar0PO5gOHOGD661C4FeNgRj0QpDjTPqZ+2JIn8WJ1BPMYSjcaT2GjvQ0iY9F8JZVY62+fWVbLvn34svr1xhRpfQE8VjQ9CofqLLvir3t+EzW2sgAhxPLug1n2tTVqRpQJfGha0SatA19JJIjQnhnJ6U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758813447; c=relaxed/simple;
	bh=u+qJVWyapenrodgmMyyh5sdeoJQIHo+UHZurPNrBBEU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=WQizSAPPONvTIYJ7WRf7CPXYQBMtMOjSk2NS6lujYwfKHGxEdb0EXciCSTJdrGbS595TYQetPJlQexQeDilcC+d9AG+BVwGTflCXHlqjqCHQvNVz0FremHSESqIAt3+1UnPxwStQ3Oqag8ctAaFqRosRjc2HHDozF+sIQi/9+OY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ASxPoWgg; arc=none smtp.client-ip=209.85.167.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f45.google.com with SMTP id 2adb3069b0e04-57992ba129eso1244646e87.3
        for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 08:17:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758813442; x=1759418242; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oNnZ9HXiG4U5oHkge6rfZLR0dPMVP9tD5A0n1Dg/8XI=;
        b=ASxPoWggU2jE6P99zI4CRqeV7JuShOT1D/mfEc2RqTFGTqRfTvoolVpC+su4R2SMBi
         uscAI/KyVs4csYRuIyhjwY1lGPJc5YaCnncVKxuBUCAKCB3b2pmvXjxtnYjIXB8Csmjo
         KWIsVNQvQdB8AyrwSD0El3/1UziL8zd+KKgE7UZNeiTfDuTC9s5qls9ath6D0PXvVNrJ
         wjTAwc43k2FkfBJrk8p5TMHt6TF8NAW6Cz1vFC1QnNko/u6tLDj214hUDDqBXk7bnCzj
         YHMkvnzLZj++BOxhVTxp6dctM+RnAu7PlIqBSOLYoWStJ80XFVnXXC42Q6BEns1e8BuU
         MPqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758813442; x=1759418242;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=oNnZ9HXiG4U5oHkge6rfZLR0dPMVP9tD5A0n1Dg/8XI=;
        b=e16AAEtoyeUxjCYF+5w9mu939CB3lTKEV3k+glhWjtEBvL8ErD+v3qM9z/EdZlGV3U
         D6+m5Nadp1pwCb+cjuxrrCSV1E1nzLI4gXVwYRCpXRf5tgpa2H10GbDnrX2Xboa9qupi
         2R6OBK314rSz5zW+Ri0vZ4gAjFQ3IyR0MYHl7riMPDgJFi+0vtQ8g/aWO7jt6mrhR4/O
         b2YDX7eSqF6Tm6Vdbqxi6q/soU+Tt29stG38ZxaWeyiriUss2fgzMQVieZhxbbEt87ee
         S+IZEu67xVgR2u55QVhFAkLYMmH+IjPaswlCTBAI60OW4ke6kwo3tSF3BrRoevA6hyAY
         byFQ==
X-Forwarded-Encrypted: i=1; AJvYcCW3aU8TaNDUAOwytJueBFMccfBVIxZN8o7yLnJIy0q7nH1qNqqrkTKxX5592YXjOQBOUaCPhV9DzwHE@vger.kernel.org
X-Gm-Message-State: AOJu0YzMZa+xkDSNxO4wVfrUs7DvKn3clO4V5WG/GgbxfYIUly9mcAWt
	rG+tNWUaluOltlBpU7xUmNbLwEygtYRlPtRy9sGeu9FNjQMpTj49t/Jv
X-Gm-Gg: ASbGncv3o+Omw2PusNW2nS41AdUxWZgTTwwropLvUnnmorVKQDl+LXHX+YViQHWEy5R
	su9fsOAzJADWEk/TmqB7g8mU22AqYlv6/JW10ZEOFaW9Y/LfB1lI4xkCo/nH8A5iJ4tnojhWbmN
	mDqjOIgHv2PJOw/VWIpYYGcnboHh3P1N9m1tZ0QNBRkSI6hLj2ATl/MZ/ARDIfK30qlFANFgD7e
	weLlWvMIVxspY1R+Q63j/txFdpVin/19PO85ZcuTpjfW3yu088+vRH4/1r6gbwrsZR9p8e+sjsq
	UgPoBgxYnZlMaUpAiI1BFITY44r5sQNV73pB5L3qJHEM/r8fx0T61tP+TjqNN4HwM7d4EvzBbQf
	3NfdlaWJ9fBLd4A==
X-Google-Smtp-Source: AGHT+IGR2iv+Kh9ab2Gm8gGsLzPj15GIU7TA9oRp1epPRzVsSpV56VOyWvYjJkH+/G6EVhjFNycXFg==
X-Received: by 2002:a05:6512:6d1:b0:57e:ef77:699c with SMTP id 2adb3069b0e04-582d09297aemr1358949e87.3.1758813441925;
        Thu, 25 Sep 2025 08:17:21 -0700 (PDT)
Received: from xeon.. ([188.163.112.70])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-58313430496sm870084e87.27.2025.09.25.08.17.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Sep 2025 08:17:21 -0700 (PDT)
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
Subject: [PATCH v3 06/22] staging: media: tegra-video: vi: adjust get_selection op check
Date: Thu, 25 Sep 2025 18:16:32 +0300
Message-ID: <20250925151648.79510-7-clamor95@gmail.com>
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

Get_selection operation may be implemented only for sink pad and may
return error code. Set try_crop to 0 instead of returning error.

Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
---
 drivers/staging/media/tegra-video/vi.c | 8 ++------
 1 file changed, 2 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/media/tegra-video/vi.c b/drivers/staging/media/tegra-video/vi.c
index 7c44a3448588..856b7c18b551 100644
--- a/drivers/staging/media/tegra-video/vi.c
+++ b/drivers/staging/media/tegra-video/vi.c
@@ -476,15 +476,11 @@ static int __tegra_channel_try_format(struct tegra_vi_channel *chan,
 	fse.code = fmtinfo->code;
 	ret = v4l2_subdev_call(subdev, pad, enum_frame_size, sd_state, &fse);
 	if (ret) {
-		if (!v4l2_subdev_has_op(subdev, pad, get_selection)) {
+		if (!v4l2_subdev_has_op(subdev, pad, get_selection) ||
+		    v4l2_subdev_call(subdev, pad, get_selection, NULL, &sdsel)) {
 			try_crop->width = 0;
 			try_crop->height = 0;
 		} else {
-			ret = v4l2_subdev_call(subdev, pad, get_selection,
-					       NULL, &sdsel);
-			if (ret)
-				return -EINVAL;
-
 			try_crop->width = sdsel.r.width;
 			try_crop->height = sdsel.r.height;
 		}
-- 
2.48.1


