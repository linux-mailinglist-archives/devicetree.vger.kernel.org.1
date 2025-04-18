Return-Path: <devicetree+bounces-168593-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 882F2A938ED
	for <lists+devicetree@lfdr.de>; Fri, 18 Apr 2025 16:55:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 397E819E7605
	for <lists+devicetree@lfdr.de>; Fri, 18 Apr 2025 14:55:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 83BDF1E0E14;
	Fri, 18 Apr 2025 14:54:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="STm7cRqg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f169.google.com (mail-qt1-f169.google.com [209.85.160.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73E771D6DDD
	for <devicetree@vger.kernel.org>; Fri, 18 Apr 2025 14:54:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744988057; cv=none; b=ml0t13rRjmTiicncm2MGlgFCDU1bjlgg/Geb4iTa2AOTB9WZF3cLc6krId2MEa9yMPfIAMhkaDR6awtK2vQJYs3pDzoPzQAarx2IcPJhYrdNvXdVmqe9S8LrW7KYCaWuOTuTjGL8oXf7A+90Sm8KZtRr/bFMw6GbWOJP39uaW68=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744988057; c=relaxed/simple;
	bh=WK+79Sgay1nnVSQ9s+Gs0FXqatmC3OKXtMgoy/+gdS4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=jKl51L/PnfsHPIzX7YaM+DYSOkLDsFkt6KV016OmYnllEt2w+CVMZ62HId/q3QzkXV7yapGBabe7v40uZZuLXu+lplzbHMXG7XjXlJuE4+cHqy5gbMWpf33YkggB8rZCQ7pUemoQQJ+/X8i2D5BA1ADcE7KFQL3XiZGFEmUanio=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=STm7cRqg; arc=none smtp.client-ip=209.85.160.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-qt1-f169.google.com with SMTP id d75a77b69052e-476a1acf61eso18432321cf.1
        for <devicetree@vger.kernel.org>; Fri, 18 Apr 2025 07:54:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1744988053; x=1745592853; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=q0cRJZr/QLbnC//i+6RCLRRi6tJxaoAhZJAaalWswhg=;
        b=STm7cRqgbzXsEmmCdHD0H2UWql1TmtLnFvK//+vMkrOEuOBECtQ5lD0jN2FiNVVsa3
         Ey0y6CygPY1CWrRJtlpUY1TWoYt9izoatFX8pIxMRlw1AvqsJNAaZF0J4aqf5kam+fGP
         sxuj/wkhtaRS6fmYKwd+cnnc2FenvrMKr+RiY48C17MO9TVzvkQVnGdXhoS/thiA9oiR
         wf5lQB6tNHX3IK50AbRFP+0p6AFvSOaZqHz3/79CmO1x5jldfyr5H8cXmyeBWx7uB+mU
         0RE5+z/oRj0lCJap3cCKvIQq3DnUSvMcTu/1RghOoY6bWj3+qNmtvVU/jBQbqUTJYbpT
         vZjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744988053; x=1745592853;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=q0cRJZr/QLbnC//i+6RCLRRi6tJxaoAhZJAaalWswhg=;
        b=rLrh02O7p3YPbS5fr9x3PWBZsn5YmIa8rYBam6Nvzy7zOQp0MVwvl++MIWko/yjyhx
         9bspfAzCf1JQlLUzXtlc6H+0B9C8Zqx8EX1T8gODbIorpAPAO2rquI9hvLNWws4ngia2
         Q1cc9tiT/U9o20fkZQUGzOBv5Mknic133Ppqt4etLzhRLoYzSl3EWxSbI0yqOT8T/eoK
         cm6U7aVSYd0Cy+S/Rxcyb1B4Aq0p6nlesXzF6YeyH8JQ8Q9ZIml8nFwaiR9yYSQXoVXG
         sDobj7LcnndHvLi9qwOwlVJegUWoSq2oJ0uEIIGbn8GlhPKwlG4OfEI0/GqnGgRn9XRA
         T3Aw==
X-Forwarded-Encrypted: i=1; AJvYcCWxOsHnyr2vLgHJhgWHUuMKMXfwE6l3oGKBLUYURea+6IqjTjsxG5+mc5YqBDOFNHjZJQEC+/ndRrzM@vger.kernel.org
X-Gm-Message-State: AOJu0YwIoEHcRVKSLiG7dcH1sX8Rw+HivktdJcnONJctc2WSiqmoPxZh
	vddo7a7Bp1L46ZfoEBjtpvYT/ylZq5WwdwMLki7PaHkh9VPp6l3leWH3s/y9gsE=
X-Gm-Gg: ASbGnctYW3XKdhrl7fsPNjSpE7fiFstwAIlMoHwolU9MeGiT/i1oB3B5Mx/T77cFDnW
	HlaFm3HL0OHJEAN2FWs9jf3n2niifCYhcP9s/OA7FmRViVqbM9FIvds2K9zVvPGYdfnVwN1dwMh
	f9rDOat72VtE1SgwuUEV3xSsiJzplIKTT0uDyf2TerHNAGRbKmISOkBYFMQFKvUKE9X/s6K9Y1O
	r60jecXCAaiucPObXRB5keq0JL/zvtdmSYuVTT5c/lQOvcu1fUqWZNhT0ryMfB4cFdbHXvsRv4k
	Jp19J+ndAUen9/N1I2C3tvsJf3XZgFmBRyNtaQUlqbgk4P/QmvTyFQ+oGII6N/HjR6dFurVn6WH
	3n+GvKNsu7ftf2A==
X-Google-Smtp-Source: AGHT+IFZ0pFYNx2snWn3YpkMMZYSR9nF5fcb5GLtk7fhZ50PwkaLo1+AOy6UlMO++lE568O7vJ+T8g==
X-Received: by 2002:ac8:5f89:0:b0:477:4224:9607 with SMTP id d75a77b69052e-47aec3a6358mr42212621cf.12.1744988053257;
        Fri, 18 Apr 2025 07:54:13 -0700 (PDT)
Received: from localhost.localdomain (c-73-228-159-35.hsd1.mn.comcast.net. [73.228.159.35])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-47ae9c16ddesm11329201cf.3.2025.04.18.07.54.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Apr 2025 07:54:12 -0700 (PDT)
From: Alex Elder <elder@riscstar.com>
To: mturquette@baylibre.com,
	sboyd@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: p.zabel@pengutronix.de,
	dlan@gentoo.org,
	heylenay@4d2.org,
	guodong@riscstar.com,
	paul.walmsley@sifive.com,
	palmer@dabbelt.com,
	aou@eecs.berkeley.edu,
	spacemit@lists.linux.dev,
	devicetree@vger.kernel.org,
	linux-clk@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v5 5/7] clk: spacemit: make clocks optional
Date: Fri, 18 Apr 2025 09:53:57 -0500
Message-ID: <20250418145401.2603648-6-elder@riscstar.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250418145401.2603648-1-elder@riscstar.com>
References: <20250418145401.2603648-1-elder@riscstar.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

There are some syscon devices that support both clocks and resets,
but for now only their reset functionality is required.  Make
defining clocks optional for a SpacemiT CCU, though at least one
clock or at least one reset controller must be defined.

Signed-off-by: Alex Elder <elder@riscstar.com>
---
 drivers/clk/spacemit/ccu-k1.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/clk/spacemit/ccu-k1.c b/drivers/clk/spacemit/ccu-k1.c
index ad5f41695f8db..dfc8aa60d4345 100644
--- a/drivers/clk/spacemit/ccu-k1.c
+++ b/drivers/clk/spacemit/ccu-k1.c
@@ -1218,6 +1218,10 @@ static int spacemit_ccu_register(struct device *dev,
 	struct clk_hw_onecell_data *clk_data;
 	int i, ret;
 
+	/* Clocks are optional */
+	if (!data->clk_hws)
+		return 0;
+
 	clk_data = devm_kzalloc(dev, struct_size(clk_data, hws, data->clk_num),
 				GFP_KERNEL);
 	if (!clk_data)
@@ -1329,6 +1333,7 @@ static int k1_ccu_probe(struct platform_device *pdev)
 	return 0;
 }
 
+/* Match data is required; its clk_hws or reset_data field must be non-null */
 static const struct of_device_id of_k1_ccu_match[] = {
 	{
 		.compatible	= "spacemit,k1-pll",
-- 
2.45.2


