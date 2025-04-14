Return-Path: <devicetree+bounces-166890-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FAB0A88C18
	for <lists+devicetree@lfdr.de>; Mon, 14 Apr 2025 21:18:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0ED7517C33F
	for <lists+devicetree@lfdr.de>; Mon, 14 Apr 2025 19:18:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A3B7B291162;
	Mon, 14 Apr 2025 19:17:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="xdLh4OXv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-io1-f52.google.com (mail-io1-f52.google.com [209.85.166.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D2F228F521
	for <devicetree@vger.kernel.org>; Mon, 14 Apr 2025 19:17:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744658250; cv=none; b=CqcujHPh+tkwdFZZrnCPXqJDD8gVmZrTTWEQXo/JpW0W00KxhqB68ZPuSz++2JcVL2Hna5Ya5vRo8oqDAT4xsAsFCas3iWN51tZ5A/Pp52I0HfR1zHXiLnv56RUfu1Gvp4Alxp19VB/HiIxdu8I8uIErqJngg9wSiV41k44VoBY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744658250; c=relaxed/simple;
	bh=VngyX6/mQNFodLjeygVOszXh7E8fNJcmhtKdA0Y9TqY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=T1jtxrKsJyWxgx9cPc1P09Bw6BkVNXTLmFMN+QGowB9BjpaAEEnOKa9YZrWmy8XtXMtltDjtzRBQ0hlfhrHY1ZW0hISgag/dNIjx2U0LbOSfXJIZt292ltfOVzg+tgmnbrDLwyJAPiahoRk1jX4nknIlTs/14cyFOViEe8HmeVE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=xdLh4OXv; arc=none smtp.client-ip=209.85.166.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-io1-f52.google.com with SMTP id ca18e2360f4ac-861525e9b0aso351282539f.3
        for <devicetree@vger.kernel.org>; Mon, 14 Apr 2025 12:17:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1744658247; x=1745263047; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gDT0XH54WFDdqavzCUnk8zHnVq9DAgWjCd2zBxfaNdY=;
        b=xdLh4OXv6IuZq8hx0LyYkwRWPToblne6uMxQtC6HHsQb2tzuTfoJvEi+nPWfURVfPU
         AD4fMCE58ioyuCqUYwt5BvQllruqYlAUasJykcIj715u4GdzhXZqvPtUfdxUfyzYOZvC
         nTxKwUc4De+d/NiKB40wJhS87ZImv4qVMQ+JK6qFBC38DjPJow1lDOtP8WB5uWwlEQEM
         seZRqJtSD9zPULK9q8Ac0bqEz8hf5+w+kSjc8S/S7hrs7YC8SIXu//i87qXgCla64R5i
         J2YCTcB3P1K7J2n2/HQmgGrXvjGivJ+g1f8+hXgmyjp4RO9KczECxv/Kk55sqzCJJkdR
         WyOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744658247; x=1745263047;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gDT0XH54WFDdqavzCUnk8zHnVq9DAgWjCd2zBxfaNdY=;
        b=vJbnkpkXQcuF25onWnNUum5Oufodh8oi6Ejj2dgKi3lxg5f0rchJLHB+Ccx/sDvjOZ
         f+FfopRoL5XFpC2dC1DTGCDwmYABSonNnX8hIElciKAZYCeH9ZYqT7DBccBGHqiaLjR9
         GQ463Pn2pwBQmyJOm2fBhEKvHfDukGomj+5tODjvhdZRhNoLEOUdtWnZ5E0A2SFh1Lec
         uP0BdPntN7tRRvr7iXBV/x3Sx4t+FmiDzQpuVw0VvsmltdipBeThB+BusJUsVzv5AG6l
         KUOlGma8n18MPAUZaKAsnoPVVziiB2q7QICt9E9Ni2DLtud4qiGdR0VbONNy4ZuPYow6
         srgA==
X-Forwarded-Encrypted: i=1; AJvYcCVYDkcK/h/t2BJbRtrFWmvsy5zLTdZuiaLfJyT/bTJ+R4dtkSbFkmVZHELrj9buBG5LGSFRLTv6F/cc@vger.kernel.org
X-Gm-Message-State: AOJu0YxoXGDQqOKwraljyuZwJirP3VhAzB3l8RqCsGDIgf58K33RCuzC
	ltBDsC/v9xVpMZV9WfJjDe5IP7UXJaimSS2x5UBIl7aqFXV1RrXbUe/xEVWAon8=
X-Gm-Gg: ASbGncsb4AzIsdzHgDoMXhlcS8tMl8bUVABEMuoQJUnJF0HGSikRSrMo/DpocSrmBiR
	fyt8Ny0ccP2bE0iaENTbbjxkuQw8Jbwald1+8XpEP+cEKEha/KR75mI4au0oO3lSVXGh1GPBP0Z
	HgbzhOq7fyPxTSJ48bYspQ2XDD1/a2+MzrTWgkq8RTIaAPGvkLGg+0ays4JfCVqEGAMYkrCF3Lo
	d/WlIPI64gfFo739GdQEHyWIn8ppaP4aEJPG/59WrReYIdONqCmY1DVucMbSGo4fLMHD4qisXgb
	TdOB2jXFufDg8lPrmvUM3U9fa/BCIlz+uIY8XwcyFCygjg0UXzU6RKgPEx/YvKW/7BTSRLKxm52
	U/CMmYLU+cZeNnw==
X-Google-Smtp-Source: AGHT+IHJnhTbYGz+3fsC47NWjJwKIj8trSko9MC7l40QBwUPgSKgLh4fWO2GzddHNuwBXhAUnso6EQ==
X-Received: by 2002:a05:6e02:1945:b0:3d4:2306:6d6 with SMTP id e9e14a558f8ab-3d7ec27bd0cmr159074725ab.21.1744658247528;
        Mon, 14 Apr 2025 12:17:27 -0700 (PDT)
Received: from localhost.localdomain (c-73-228-159-35.hsd1.mn.comcast.net. [73.228.159.35])
        by smtp.gmail.com with ESMTPSA id 8926c6da1cb9f-4f505e026d1sm2715662173.94.2025.04.14.12.17.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Apr 2025 12:17:27 -0700 (PDT)
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
Subject: [PATCH v4 5/7] clk: spacemit: make clocks optional
Date: Mon, 14 Apr 2025 14:17:12 -0500
Message-ID: <20250414191715.2264758-6-elder@riscstar.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250414191715.2264758-1-elder@riscstar.com>
References: <20250414191715.2264758-1-elder@riscstar.com>
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
index 09f101a52b1af..7494c97c3c7ec 100644
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


