Return-Path: <devicetree+bounces-185486-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 79D4FAD801F
	for <lists+devicetree@lfdr.de>; Fri, 13 Jun 2025 03:14:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 71ED53B83DE
	for <lists+devicetree@lfdr.de>; Fri, 13 Jun 2025 01:13:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 971381F4E39;
	Fri, 13 Jun 2025 01:11:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="zyEq3k69"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f51.google.com (mail-oa1-f51.google.com [209.85.160.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9CA711F3BBB
	for <devicetree@vger.kernel.org>; Fri, 13 Jun 2025 01:11:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749777115; cv=none; b=XXxDncaj76ltxkq07l8V1Fz4INUjEmcZeK7BzG9zJWnAR/YbbLofnUuKz2rEGvBa3Sf9v1OvU6jRWhzFXOptNbnAyb5BTAK+bijFM8of6EvNp/LN6f7YpcWPzNldYtGXasxcARmfp/uWDKnbXsmNlrgqNbS4hQuygsL4mKcVw8M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749777115; c=relaxed/simple;
	bh=x2bb90yd/z6BGWxPn6MrfwFL9GBhzPEVY1PUSblaovc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=YQFNmSf0291jTPN6pcKoP/TXsaw/fLQBFhxymKTuTDmBtuNjQNTurtGcCivirEMN7oHpWPXEzwf2a877umSUkWlL+9ei8k3libySObjFjzLg23csgNet6GkSD2AWeF1Y8FRjcQLswkqP3b2dIRGz03hQk669zHNYeShXZDASJTA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=zyEq3k69; arc=none smtp.client-ip=209.85.160.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-oa1-f51.google.com with SMTP id 586e51a60fabf-2cc57330163so1092164fac.2
        for <devicetree@vger.kernel.org>; Thu, 12 Jun 2025 18:11:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1749777112; x=1750381912; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Cjpgt53WofqzbGA4fRWGXisKKHuRc8Ezyw19NVROhHY=;
        b=zyEq3k69RFREpCM9J2Cd5HLVEQKDjrhqDkS4eIMaJyEMpZL6cBzQ3rB7pnxNr6cIRX
         qJONwOVAJjA4fASf1sZsj+30HbOgtbTlyKXC5aFm9uUkmhMyLidED7R+oz3xrdCL0+NE
         w1OHK25x3vc+07K7YKCWlzCwgJinSsHmFqd1n3BDd2zCdulQPrIemxPfVMSxs8AVLKn8
         lVLfWvH7CLyQqghjyEYtZ0dAM5ow/+4Jh8CABR1ZU+YxrWQdci5nZuehYdGqa9+sbKsE
         LGQNYmvg8J4mhCBF7pzoSsItYkeAxwxvwn628sfu3qkGxdQaR0rs2TCOjOkQvnFG5Wh1
         Waow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749777112; x=1750381912;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Cjpgt53WofqzbGA4fRWGXisKKHuRc8Ezyw19NVROhHY=;
        b=F+fsLhqLjrhephd6fNbqj/BZTSQo3iRNZc7p7ndFvRw0O+cfHlqON6rN5A1ulAqKGg
         zrctjbIP/ZwQyRXJuvFRfYaEWymJgvxD+1zmLZpDEnofSrHXJghIAlbYt0Yv6WNOnIIl
         xZFiUCuZxiZz01itOD72CEWMe0CAiTLLKZQntpyWEWzahldd/jg1GLVZQtJAJsQDxWlw
         ejF6fKaO9Fe5v69k3Xl38WQ0KoYQxb19fpxa5eAf+ViiRkjxnYIodv3jvH33YNQJgNei
         DSo2nERtw1tuLDh6JAK+0kqmY+DYM08Kt8ZbChFemSPa0PSr3Wgn9DU2M2wfkVEwU0XZ
         43zg==
X-Forwarded-Encrypted: i=1; AJvYcCXkovxl1uUCkh8s5fX+5N9juE+4QjD/HO5Fcf58iq8dDh58B5Co4gK/oNxytJjWtXE+4ePLDqoqE8UT@vger.kernel.org
X-Gm-Message-State: AOJu0YxAsPsU2hj3lRkXOV4/8ro/70+/haB04CeU36lL826i7fIrn1bi
	ivjWVwXo9Y1Q0IVmaEISTgr8J1aC8DnhdHPqc1tjKFfDjSAV3YeYIxJtKDumvtVTaiU=
X-Gm-Gg: ASbGncsJgykBEB39NBquq0Wa1HBSrYacikNXbHyVBMvCJYF0FSn4BXLd8z/XHTzq1LD
	2K3lUu1RbCbITkJqWwj3DxSg0A322+lF2apei0zuIRMb3NovegOorguxBEWWGq1+9pF6SsBXhlJ
	X4vKYVwBI7P6yorjSvzTx0A82hw5ThQg36A+pyCZqVh+FTDdM7izHP+1kWiiK81u8iPZAwkXgw0
	L6coOimHtsTmC45qRhf/VHPexKG1VQTb8u38OIK7SiiV5CztIQcMCtRjUxYpzX4DwQ4PwAJxJPe
	ATNDpRWOXLY9n3IkUwtpOKCa89U7j+oO6l8Uw4F318hCuWrurkDbgmkhhcPuRKnHBy8Z2r/PEcU
	jRVIk/oZ0BlY38Qo9wOJ+j0OnuOb5vdU=
X-Google-Smtp-Source: AGHT+IGLAOVwGQtHFMenQ5Pjgus0rfvs97TiY5MGJ1T6U7O3FKYbF5dGtfPW1aRPNW1u/ydyiJ4KnQ==
X-Received: by 2002:a05:6870:8091:b0:2e9:95cc:b855 with SMTP id 586e51a60fabf-2ead5157caemr853318fac.34.1749777111937;
        Thu, 12 Jun 2025 18:11:51 -0700 (PDT)
Received: from presto.localdomain (c-73-228-159-35.hsd1.mn.comcast.net. [73.228.159.35])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-2eac0c17211sm407685fac.18.2025.06.12.18.11.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Jun 2025 18:11:51 -0700 (PDT)
From: Alex Elder <elder@riscstar.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	p.zabel@pengutronix.de,
	paul.walmsley@sifive.com,
	palmer@dabbelt.com,
	aou@eecs.berkeley.edu,
	alex@ghiti.fr,
	dlan@gentoo.org
Cc: heylenay@4d2.org,
	inochiama@outlook.com,
	guodong@riscstar.com,
	devicetree@vger.kernel.org,
	linux-clk@vger.kernel.org,
	spacemit@lists.linux.dev,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v11 4/6] clk: spacemit: define three reset-only CCUs
Date: Thu, 12 Jun 2025 20:11:36 -0500
Message-ID: <20250613011139.1201702-5-elder@riscstar.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250613011139.1201702-1-elder@riscstar.com>
References: <20250613011139.1201702-1-elder@riscstar.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Three CCUs on the SpacemiT K1 SoC implement only resets, not clocks.
Define the CCU data for these resets so their auxiliary devices get
created.

Signed-off-by: Alex Elder <elder@riscstar.com>
Reviewed-by: Yixun Lan <dlan@gentoo.org>
---
 drivers/clk/spacemit/ccu-k1.c | 24 ++++++++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/drivers/clk/spacemit/ccu-k1.c b/drivers/clk/spacemit/ccu-k1.c
index 1c9ed434ae93e..f9e2200d1fd04 100644
--- a/drivers/clk/spacemit/ccu-k1.c
+++ b/drivers/clk/spacemit/ccu-k1.c
@@ -943,6 +943,18 @@ static const struct spacemit_ccu_data k1_ccu_apmu_data = {
 	.num		= ARRAY_SIZE(k1_ccu_apmu_hws),
 };
 
+static const struct spacemit_ccu_data k1_ccu_rcpu_data = {
+	.reset_name	= "rcpu-reset",
+};
+
+static const struct spacemit_ccu_data k1_ccu_rcpu2_data = {
+	.reset_name	= "rcpu2-reset",
+};
+
+static const struct spacemit_ccu_data k1_ccu_apbc2_data = {
+	.reset_name	= "apbc2-reset",
+};
+
 static int spacemit_ccu_register(struct device *dev,
 				 struct regmap *regmap,
 				 struct regmap *lock_regmap,
@@ -1121,6 +1133,18 @@ static const struct of_device_id of_k1_ccu_match[] = {
 		.compatible	= "spacemit,k1-syscon-apmu",
 		.data		= &k1_ccu_apmu_data,
 	},
+	{
+		.compatible	= "spacemit,k1-syscon-rcpu",
+		.data		= &k1_ccu_rcpu_data,
+	},
+	{
+		.compatible	= "spacemit,k1-syscon-rcpu2",
+		.data		= &k1_ccu_rcpu2_data,
+	},
+	{
+		.compatible	= "spacemit,k1-syscon-apbc2",
+		.data		= &k1_ccu_apbc2_data,
+	},
 	{ }
 };
 MODULE_DEVICE_TABLE(of, of_k1_ccu_match);
-- 
2.45.2


