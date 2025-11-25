Return-Path: <devicetree+bounces-241989-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 66688C84E6B
	for <lists+devicetree@lfdr.de>; Tue, 25 Nov 2025 13:08:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 1F2F44E977B
	for <lists+devicetree@lfdr.de>; Tue, 25 Nov 2025 12:08:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 65360322A1C;
	Tue, 25 Nov 2025 12:06:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="InJSXmoC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com [209.85.167.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6931931ED73
	for <devicetree@vger.kernel.org>; Tue, 25 Nov 2025 12:06:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764072393; cv=none; b=C3utEXed+2kbNFfM82JjBfPver/m8uihlx2EGg1SULfPLCBt50mJRoAHd4aSw2/f8bdse49Xy8iPHJIFoj4E7WgQyNiaIhoj0NdmnK8mSPb/EeRJ0XN1zg/0JjTjji6NbhZ449rrAz/8QrMP6jzNbNAw1XKqNFrYCQC0xjB0/T0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764072393; c=relaxed/simple;
	bh=0XVqOHYcT7n720wnH1cgjwBE24hrHgCE0m9zaQ1pJGg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=sKp73uHOzS7HfKrtjIQC1r7wxoC0+UnPw1tDD2a+l8wmO+Z/L7kGG0bx/g2DyVjKkbHcA+OfIVMtManORNS8VvY4ICEjbHEH+SanIx4SxJ2qrDkxjlRDv7F8ue5LfMzwxAI4ZJCyHJZrRuDvv4znPI8icJG0EjgXbucCV+CuEIg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=InJSXmoC; arc=none smtp.client-ip=209.85.167.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f44.google.com with SMTP id 2adb3069b0e04-5959d9a8eceso6477978e87.3
        for <devicetree@vger.kernel.org>; Tue, 25 Nov 2025 04:06:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764072389; x=1764677189; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Q5WNlBYT2Uj6LLmyZJ3IXERmQU06xOhrcyW5MYrfiFA=;
        b=InJSXmoCeiiQx4ai9bvt8iF885jElanQAoPbfwo+ftnh2+zsww+e9BgzuP2URAzBHx
         d1Fw1gMjmbBhYQhwy+yi8zOa5LtFkE4top+9tI1f+fVv3QFD3iHlUsG/6MCU534fdOgb
         d03nW38y7WmuX+CM6ximquQ/u9e4Fsg6YglH8jaxOna1Dxhm8YTrJuxY25yedKcWuwSL
         5YAL/ZdCGEeU+YO3ED058LHe1DMT2hbDYma4lJBxwY7XslVwkOrfnWseNTn28yoc+DV+
         ajQ65m5bi9ZCxlc6/GmKY1Sw4CWoYUV0V9ZOdUl3If0s60ZwMEPON09OuWThRmXUF5Zx
         9epg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764072389; x=1764677189;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Q5WNlBYT2Uj6LLmyZJ3IXERmQU06xOhrcyW5MYrfiFA=;
        b=HdFM73P+va3iACSqeKkd/hxHRedtLhu8HM6nNUiazihcZcu+ZCYpSntboeWkulDZ3Y
         Jn2JwNgAodFZ7/xNnW7a00uN+2LCBbgBiJJlEr20i+EunDe9Yu+QHkXNSJLns2dxBGrB
         4tCuDbLqtqRnGOplXG+XOK1HgXvHZO5d/OB/l4PwbnO7UphnNSc1ZVGlR+F8hPHNR5a3
         458ChnCHL8ihMR8YZZ8yVfAncxvk+R6Fm4ZOHrsbSy4KaII9oCcPdJQMOiPZa6FC/ytP
         lCORM3n5FD9du++6kFJIavkWo3ykYmZ1zsMa8q6Eg6/24/H0cSHtqiKjOUBRWOX1a/6J
         fvrw==
X-Forwarded-Encrypted: i=1; AJvYcCVQxvBb1dmCa90Cgctn7UCmDW2NWPFcBopN/4zTqd1HMul3aTEh6NFGB0nq4sNWDB2H4Oc6n720RmFk@vger.kernel.org
X-Gm-Message-State: AOJu0YybXLQn9lLik/aLik/lgheAGjJSXkF18CLTzAm/Aa0eikIy1lK0
	VxoWCl4947S5YDZ1aFYEOBmEyEIS2ayJ3oa3BUtZlagi9vKjr14WizJI
X-Gm-Gg: ASbGnct9dOJQDNsXVkSHwW59W9T6fox/D4v3PsbuSPoy6Y/TsyU32klwAIEkLLIf3sp
	pxM4V4JcG/gJL8fDbeV1GWZrG8KK/gMpfKq6FGHZJAHYBLuGf057wSletBniXOmD22fo42IeLyY
	CsaZFGRo/2scBTwi6LwVuqiB88ukPb3WtTgf610fQLVBLP8N11R6Xe6lp6NAYFtFahp6A+pT2RV
	kJ8bpjkoeogGwnLAnjqhXye4OESgD5pmvijqFC6AluF056jYbMhNhVEoX8TIczIfsdB72PJTlxy
	dCsxvdCLyaB2ZdIeVfYS6AHr+AT/lHQOP/Fq61daqecGzGDiVd3Qh22wRbN95+hRu1pvleA6+w3
	RxCQBxdGvIheqymn3ghhggEBPK6zWpLj6Fjqn/fnX+9rctqL2hfPtDEursM4+BuQ2EA5Lit+1Jx
	NNf3Pu/RgbVQ==
X-Google-Smtp-Source: AGHT+IHsvV73iCsg1Nwxo/fBsVh2b9bPW7NvyGDXndOdwYhh1h8BJuTE0RXG2eDeb0/M5MiGhzgcdQ==
X-Received: by 2002:a05:6512:3c98:b0:595:7c47:cd47 with SMTP id 2adb3069b0e04-596a3e983camr5380015e87.2.1764072388565;
        Tue, 25 Nov 2025 04:06:28 -0800 (PST)
Received: from xeon ([188.163.112.74])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5969dbbecb9sm5150993e87.58.2025.11.25.04.06.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Nov 2025 04:06:28 -0800 (PST)
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
Subject: [PATCH v4 08/12] soc: tegra: common: add Tegra114 support to devm_tegra_core_dev_init_opp_table
Date: Tue, 25 Nov 2025 14:05:55 +0200
Message-ID: <20251125120559.158860-9-clamor95@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251125120559.158860-1-clamor95@gmail.com>
References: <20251125120559.158860-1-clamor95@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Determine the Tegra114 hardware version using the SoC Speedo ID bit macro,
mirroring the approach already used for Tegra30 and Tegra124.

Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
---
 drivers/soc/tegra/common.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/soc/tegra/common.c b/drivers/soc/tegra/common.c
index 6292a1c72071..2264dd38893a 100644
--- a/drivers/soc/tegra/common.c
+++ b/drivers/soc/tegra/common.c
@@ -143,7 +143,8 @@ int devm_tegra_core_dev_init_opp_table(struct device *dev,
 		hw_version = BIT(tegra_sku_info.soc_process_id);
 		config.supported_hw = &hw_version;
 		config.supported_hw_count = 1;
-	} else if (of_machine_is_compatible("nvidia,tegra30")) {
+	} else if (of_machine_is_compatible("nvidia,tegra30") ||
+		   of_machine_is_compatible("nvidia,tegra114")) {
 		hw_version = BIT(tegra_sku_info.soc_speedo_id);
 		config.supported_hw = &hw_version;
 		config.supported_hw_count = 1;
@@ -156,7 +157,7 @@ int devm_tegra_core_dev_init_opp_table(struct device *dev,
 	}
 
 	/*
-	 * Tegra114+ doesn't support OPP yet, return early for non tegra20/30
+	 * Tegra124+ doesn't support OPP yet, return early for pre-Tegra124
 	 * case.
 	 */
 	if (!config.supported_hw)
-- 
2.51.0


