Return-Path: <devicetree+bounces-184862-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id DA9C7AD5665
	for <lists+devicetree@lfdr.de>; Wed, 11 Jun 2025 15:03:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 71C6E1BC53A8
	for <lists+devicetree@lfdr.de>; Wed, 11 Jun 2025 13:01:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 93FFE283FD5;
	Wed, 11 Jun 2025 13:00:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="oXcs3sLQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f174.google.com (mail-pl1-f174.google.com [209.85.214.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF9E3283141
	for <devicetree@vger.kernel.org>; Wed, 11 Jun 2025 13:00:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749646837; cv=none; b=iyRAQAnzYD9tD85fLTbYiY4RG51evJx8YHApRgUohNUQ2ynvw16jBGjR5hm3wZF8uuw5uLENnM/+gt4QKqxe0coF9GDCQH88sR074azPA0hauTYn0VGh1hXZrYPpZvnDWUVdheOfhPsIuMGc4JnB0yyDsxbMjQEYJE0KmLkpIaM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749646837; c=relaxed/simple;
	bh=Y/UVoA63Ub/h5tAaXT2Oci9EF/b7F5JY0JZpRJfHkVo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=dqDaa0b7nkn/ZBczmAInRbvNvEnmPLE1fn7c0zXdeYO7nKuXHhQHuKgpz49Pk7zXqKjaoKfw6n4C987Dj2VZQgLTyjBHvXBU6n25TcUgeoEdwcxjOUG1OvmxgwcYWSB2YERFqGNr6uvB/ZjON8wXVs8sNEBWD5tkaaAqNlui9ZM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=oXcs3sLQ; arc=none smtp.client-ip=209.85.214.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-pl1-f174.google.com with SMTP id d9443c01a7336-2349f096605so79112665ad.3
        for <devicetree@vger.kernel.org>; Wed, 11 Jun 2025 06:00:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1749646835; x=1750251635; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QndPkvYOfHZnlmLnlurnlWYXTuNHVByXqbm2h3XNBdM=;
        b=oXcs3sLQgxY/5I62qvtj8fnj6WT/YTb5sqJ2liafAM+1KOYQjimlZEWo+ogrgrCiEg
         ImzEEhuZkPRJ9BHoT02UFoM1Ot8KeOvQpiRKhNKaJ6oNgEe6T3wEOAU+utVTd5YRV31W
         r2t1lA7UVzBhyiHyDpcqnSc/Cwodibeo/ATWceagaq0uMu8PA7mQtWEpEOdZa/ji1xeO
         i/XmSO3lylDCvwHu9bkkNFvCpxa3veTcfnb8S7SF5l6GEdkhAQmf0zrfsbt4JWTr+sMJ
         fz6v1GT4R2Ieb9/UZ5WjlUZEQjYNu78F2YjAPmJ7lCEkl38UymNQfkofdC9l+0l9dtBp
         xp5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749646835; x=1750251635;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QndPkvYOfHZnlmLnlurnlWYXTuNHVByXqbm2h3XNBdM=;
        b=w4JJnrNbH+kKzAZw37yZeYr1tW7FaKq4DxrMs7lAKKO5GmnGZk9sd90EMbGOOe9d5a
         RSxgdhXvf76rEmVOLI2y3q5Er3WAOyWC4FqfjXIs0kAaG8Ixi8iFZfhgO79Ys2w/GFOw
         wxt6cu9Pkikj3YuMvQV5haHk+JbVbcqh3YsM2i9puFerdmg2TS7exOZOLQD4R/X5eGWk
         MycA9UCU/aZ9OONAUWbpfylB1zAckWUtj8bPNq9riFeGw5XsPtMIIGlCCcZl/2JPBm8r
         49QYVHEgfkMdc7xnn/9lAphHAMbD5fbVZPE30nRPft6mJwon5CKm/Rb5GhWgkx+7aHav
         82Ow==
X-Forwarded-Encrypted: i=1; AJvYcCU1yPEiRkOaUu/0DKRJHaTA8J6KjTSTravtj4ct9M5hloBU+l00A9r6RBaJ33t1PNlvdBGk4+aGwBaD@vger.kernel.org
X-Gm-Message-State: AOJu0Yz693fAQfNH8pi54NQXMZa+xJ05MF1izaN2zbiJ8yUiPwr2asB7
	3VGYtvVi7aiqdYVXXRTDPHngb3qyvIYndCP7i+t6FSE2nUfQlIkAoie7XJsL08n8tBY=
X-Gm-Gg: ASbGncssIVaXXIJKwicGrpC5N9eFfyVMHfpR0j/a23b6tI/SBAy3qwbJCf7gX6FzUsT
	j1zHjZZRXjzu6OnOy4BbtJMDXZlJkGkzqXLiobNxa7QL27YISBROuWZtCrtpJCHUtgOVGh9ocM6
	TAIgWMud/zwJygWQmlLth7M4NcOx3oyLCo+/MVEZ+DB95Gils8VqoqjZjWlwJb9FPbYkYBQqU+f
	hZk+sdj6Sa6OkD8U3lOfORjYdgWpAy6ErF/k9ghbhIkHyfBAoTVH/cH8nb7PKc7QVP8Ox2hFfjH
	eS2JP2hTP8B6uwCZOxXKGQbSx/slmvHMHf7AbopEk4wUjApzj5J2qticooMojhK6+OHHmRUnuq8
	DFJvTkjoomwsqmXDbyLjILg8upfiXpmWp
X-Google-Smtp-Source: AGHT+IE0KPlnWtgzReoKrdu9Pb1wUUDfgiReHhnIgJSTpMfI8WW3eLySP02w8+TUc5Yxq8BHiDxUbA==
X-Received: by 2002:a17:902:d547:b0:235:ea29:28e9 with SMTP id d9443c01a7336-23641b15570mr50780235ad.38.1749646835028;
        Wed, 11 Jun 2025 06:00:35 -0700 (PDT)
Received: from localhost.localdomain ([2409:8a00:31a4:6520:3d67:ceb1:7c60:9098])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-236030925e3sm86984115ad.53.2025.06.11.06.00.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Jun 2025 06:00:34 -0700 (PDT)
From: Guodong Xu <guodong@riscstar.com>
To: vkoul@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	dlan@gentoo.org,
	paul.walmsley@sifive.com,
	palmer@dabbelt.com,
	aou@eecs.berkeley.edu,
	alex@ghiti.fr,
	p.zabel@pengutronix.de,
	drew@pdp7.com,
	emil.renner.berthing@canonical.com,
	inochiama@gmail.com,
	geert+renesas@glider.be,
	tglx@linutronix.de,
	hal.feng@starfivetech.com,
	joel@jms.id.au,
	duje.mihanovic@skole.hr
Cc: guodong@riscstar.com,
	elder@riscstar.com,
	dmaengine@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	spacemit@lists.linux.dev
Subject: [PATCH 6/8] riscv: dts: spacemit: Enable PDMA0 controller on Banana Pi F3
Date: Wed, 11 Jun 2025 20:57:21 +0800
Message-ID: <20250611125723.181711-7-guodong@riscstar.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250611125723.181711-1-guodong@riscstar.com>
References: <20250611125723.181711-1-guodong@riscstar.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Enable the Peripheral DMA controller (PDMA0) on the SpacemiT K1-based
Banana Pi F3 board by setting its status to "okay". This board-specific
configuration activates the PDMA controller defined in the SoC's base
device tree.

Signed-off-by: Guodong Xu <guodong@riscstar.com>
---
 arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts b/arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts
index 2363f0e65724..115222c065ab 100644
--- a/arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts
+++ b/arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts
@@ -45,3 +45,7 @@ &uart0 {
 	pinctrl-0 = <&uart0_2_cfg>;
 	status = "okay";
 };
+
+&pdma0 {
+	status = "okay";
+};
-- 
2.43.0


