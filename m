Return-Path: <devicetree+bounces-217255-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 77466B57240
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 10:02:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 02F7B1899982
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 08:03:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ED5A12EB5B5;
	Mon, 15 Sep 2025 08:02:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="K9o3Awbg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com [209.85.167.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B78DA2EA151
	for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 08:02:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757923347; cv=none; b=V9e4GHT4dhY75z5RxRQYvGMiIulQph/hbumKxJGd9BwlrkzfliiIzRzz2py78wgawdGIfFUvdqSxUiZRzd8q4z/JyckpAQad+/A9yZSnT23CqEN34cn0u46F+ojUnc/hory/JQPt1QRBUTMuD6S+DCybIu1kCV37tTQY04jRKQ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757923347; c=relaxed/simple;
	bh=zND4GhxFU/tz0sYLfWaRU8glzS+okJHK24B1i0p/cZY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=LGqrYghAQAMuYOyF8Tr22FH21hQIqyLrNiFI4Fzg1l5RkR5szjc+snQWkEtwjdrqi1HPqXhljRpy+g1QUN+EMZPc1gfex2o7j8n9c/2Ej0toX7TMrU1swlOVUZG8kpmsTvKTLN7kZqa1w9slIPW65qgIs0JhGQcxy89YJfglSZc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=K9o3Awbg; arc=none smtp.client-ip=209.85.167.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f43.google.com with SMTP id 2adb3069b0e04-55f72452a8eso4512973e87.3
        for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 01:02:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757923343; x=1758528143; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=I+y0n2iQaoQRxXuIEAJP6wVzz5TSA3TjXyGRiIjZrCw=;
        b=K9o3AwbgmZiQ/wdnFKUyEc2dCx6D5gVDTz+yZRekRc8pJdKcSydcnbf7psHj1pdExI
         ofMDtNmiLOP7w5RTwWU6LvrqtDlzIuee2jH7VEtVnx67GMh1gTQ5fZsfFHRNT5Oh/Kwu
         HMgy7QX2Edbvgq29gf1Elrop4XC9Y6+yMjd6E/8MdqlSVXS5PLPUupDqE2t2/AJiy98Q
         O3RP1xk3wP0CDTEdYpkcemPWEjF57hYoLVFH1TkJsFATOaTM/NSGHqiJmcUJrZK1fjaw
         EPZkICu3B3UYEQ6zlwWHRnpNtxOSMQCkyvnFp42A/5FgaA83NVqRogyN//XnhvlMa0Ck
         bupQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757923343; x=1758528143;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=I+y0n2iQaoQRxXuIEAJP6wVzz5TSA3TjXyGRiIjZrCw=;
        b=sfhE73enE17B9b0kpWt8Ps+nc9QeTm7kalICL0EaksYNjELiRUhHNWBnqC0cexIWde
         WURZgOXG7xn9XjUy2E56PbW7u9ynN1kiDF3slBgKS2/VTkshBmJHRXJEgIDH9yTtVgkH
         TpgCqSYfPGXws2uc6dYXygEcsFR403Z+kQh15Fs4ceksZklx2RlFmxhS31KK9QlJvcws
         nPlm6hTk0sFPpmQb0/G6tCDF+Mr4Z3r4lgxnTomfvpZQ5fvmdgc0ozeGhmfesIFmISDY
         B5lGjNfsg9QprD4gEthp6G+jVDvODFNcrugPeFA+oo3LZESNwa2Jz/cRpJ+UYlYN+F7t
         9YLA==
X-Forwarded-Encrypted: i=1; AJvYcCXHYV901UbziSXxt0ZKcGuMlGVJZWKTChxJZdoXJE+GPKc6GZJ32isICmANgmFK7iidhooE+dqzv1qv@vger.kernel.org
X-Gm-Message-State: AOJu0YxFG4cT01LS2iEElzwmayixOh7yIxwx9hU3ALPNJfKsQurdTmnO
	5qC5e0hQRXKCW3FboECXqEE1SBifWP6M4Z/dQFJS1YGv5ivI3MVWb9p4
X-Gm-Gg: ASbGncvQOuhMC2stliCtzeBh6HdVoSg9ICQ4g0dYiEan/3v41p0sfBG0QpDcxQDxC9e
	QYQ8VEnuJBLgI2jZ8BphVnYpc664IfAu7xDGtEYgBxC0xtXdqT5wR1FU5WL5e/9OTBb+mbXWc2h
	SCacQQke9poQqS03a9PaSna320PRzap07kh24OpGWxS3T7Xft2lzJZKw3W+xFCJ1WeA6/BoVSAm
	Yy1ALWQSElDMynMKFv3KjO81zQPQopvz9y4PNZ8PQ9RhZFG3fmAC8BAZfndooTbhgHucR7wET1t
	YkkL7NXVUEe1cMUJ8VIEY8gFXoosKwP9CgV1Uo3eW/7hUkYOfiTtCY236WEl4x/5leMwmeiILnV
	BoajmU6p9Oq2QQWUjLt4KvDb5
X-Google-Smtp-Source: AGHT+IE6lsTSCi1HbUYjhR6DRaTx/WD5l7j/ig8VpXqBNn3d/LYOB9q6iXpX88ot17AUCeJYiqAUPw==
X-Received: by 2002:a05:6512:79a:b0:55f:536f:e89b with SMTP id 2adb3069b0e04-5704fd772d9mr2486614e87.53.1757923342570;
        Mon, 15 Sep 2025 01:02:22 -0700 (PDT)
Received: from xeon.. ([188.163.112.70])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-56e6460dec4sm3392381e87.103.2025.09.15.01.02.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Sep 2025 01:02:22 -0700 (PDT)
From: Svyatoslav Ryhel <clamor95@gmail.com>
To: Krzysztof Kozlowski <krzk@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Thierry Reding <treding@nvidia.com>,
	Thierry Reding <thierry.reding@gmail.com>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	Prashant Gaikwad <pgaikwad@nvidia.com>,
	Mikko Perttunen <mperttunen@nvidia.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Dmitry Osipenko <digetx@gmail.com>,
	MyungJoo Ham <myungjoo.ham@samsung.com>,
	Kyungmin Park <kyungmin.park@samsung.com>,
	Chanwoo Choi <cw00.choi@samsung.com>,
	Svyatoslav Ryhel <clamor95@gmail.com>
Cc: linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-tegra@vger.kernel.org,
	linux-clk@vger.kernel.org,
	linux-pm@vger.kernel.org
Subject: [PATCH v3 01/11] devfreq: tegra30-devfreq: add support for Tegra114
Date: Mon, 15 Sep 2025 11:01:47 +0300
Message-ID: <20250915080157.28195-2-clamor95@gmail.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250915080157.28195-1-clamor95@gmail.com>
References: <20250915080157.28195-1-clamor95@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Lets add Tegra114 support to activity monitor device as a preparation to
upcoming EMC controller support.

Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
---
 drivers/devfreq/tegra30-devfreq.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/devfreq/tegra30-devfreq.c b/drivers/devfreq/tegra30-devfreq.c
index 8ea5b482bfb3..d976077d4757 100644
--- a/drivers/devfreq/tegra30-devfreq.c
+++ b/drivers/devfreq/tegra30-devfreq.c
@@ -980,6 +980,7 @@ static const struct tegra_devfreq_soc_data tegra30_soc = {
 
 static const struct of_device_id tegra_devfreq_of_match[] = {
 	{ .compatible = "nvidia,tegra30-actmon",  .data = &tegra30_soc, },
+	{ .compatible = "nvidia,tegra114-actmon", .data = &tegra124_soc, },
 	{ .compatible = "nvidia,tegra124-actmon", .data = &tegra124_soc, },
 	{ },
 };
-- 
2.48.1


