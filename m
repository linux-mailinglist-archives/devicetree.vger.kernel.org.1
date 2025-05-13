Return-Path: <devicetree+bounces-176945-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E612AB5EAC
	for <lists+devicetree@lfdr.de>; Tue, 13 May 2025 23:54:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7AC873B82F5
	for <lists+devicetree@lfdr.de>; Tue, 13 May 2025 21:54:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6EF8121420B;
	Tue, 13 May 2025 21:53:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="Tvlao9d7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-io1-f48.google.com (mail-io1-f48.google.com [209.85.166.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43B261F0E20
	for <devicetree@vger.kernel.org>; Tue, 13 May 2025 21:53:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747173238; cv=none; b=QkPVNz/ejxhiEcJlqbHBrJsA8l3A0bw4tYWIzQLkcrk1ADmb7zZCKl26JsHfYcFX1Zy0Wwur3qPo4PktKTar2coMGx033QSO8lYH1J+eJmF9hQeliU2YFMUuPTwcmgC6tccHKx8dszkSJ0dogb1lQFDtEBm6e8KOp8ZUMXb68sI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747173238; c=relaxed/simple;
	bh=xdzDwczN4n97NqtrDQa5z0IlAhOrsZ/pz/wXFFvPRjw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=fwBbhWSCgz8sfIE/SwtrHhAabIYCDihDBsAcSZfGhXsoFK7Yk/1ZZF8E5ug92/DuLpXmX7hpxJhvrqthAuaeZTAP1o9I/ZKCyzjsphddU7PepqBYA0nEgr/y+8yDLyii0JbJq8pUlZVJR+Y4wUzl9ToSC7RsiZCjMKofTVfOjzk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=Tvlao9d7; arc=none smtp.client-ip=209.85.166.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-io1-f48.google.com with SMTP id ca18e2360f4ac-85b3f92c8dfso187187539f.2
        for <devicetree@vger.kernel.org>; Tue, 13 May 2025 14:53:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1747173235; x=1747778035; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MVooGR26bxqbC5iLeacMbQ0G9vLAHRMKZeClAxN+yvg=;
        b=Tvlao9d72prqsHamRCxi3eQhmHzCZSFpAVh3CIa2QS1L9W0WkaiFep9AOvIkvB2cWM
         AWkrGSihHQWREXnXTUVd/SfZBVUawXs+Veq/posY9biajhkl8MuxFnnNFwlty+T4iGWX
         JXJKcLnu0L3ROm+FfKLpm+xRjDYI621Mk7UYCrCHB7tn6GZBYwbF7701ORRvD5wbqp3u
         zwqJxRdz8bQhpzwMpSWnOA0lmAZn5RJr6cOH5hIs21/wqCmxeC0Mc6FgHZ2/kTN+3EtV
         KpR2Kpkjz51PaJmFxefYYrt7tCu72PLAzAoHOlnaSzfU1GWoAnZ4LM0hWv1GinN0k2XX
         nmGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747173235; x=1747778035;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MVooGR26bxqbC5iLeacMbQ0G9vLAHRMKZeClAxN+yvg=;
        b=Nuo5RxSf+Q8D4KKugwO0OMbSOjhxH9J43dy4O/Ivjo2Xu3qBgWL1eYtlE25gmx1t4N
         K6dfUcYiVCYK/W8/mEUZ/f1u74GeSCw5GZFvZ8ZuelX6Q95TuF9lK5iybYd8MXbdoNUw
         UZUEQKFfqaYGRSBncNx6eaHGQEuvLlWzZzm8Ohh6QgEhlymMDhJj5AqpNyk6Iqb4ZaRS
         cd8eE3PzAluZmF82mm1SZLPpSRPSirsZ6D81Cn70JhjN4We5BoFiqt33dcOPfcOBRWfz
         iNKxuwAJhY8Z14K0EeWrwUDIvv/gBPR3K4aBZXtWxZGmkT0df/J3U0olSE4ZAzFMZEbL
         sDRg==
X-Forwarded-Encrypted: i=1; AJvYcCV2/1n1el1WMye4XlCSOVIz8DCs8ob+qPI5OV7rDn3K4e09LjdLKTWqjKkEw5wJwh2l60scmFdOY9Tm@vger.kernel.org
X-Gm-Message-State: AOJu0Yx+Rnfq4PurDFkkH9JBskBBlqyQvOXM37iV14vPieyqm8xfh/iF
	K+b6ohgQxRm+Cs4c3R3sxMql4OIHIkhKziE+Nu2obKtLtUmgpLqYaFhkqSl+1BU=
X-Gm-Gg: ASbGncven6k8elXx+6qLdYpJknQua10SwXuruDXoH757Jyxbtle9WvN/WqT57Jww68v
	kt/DetsgUdbLltHdxhXsYZsaWQ0NOGO9ECDQ2m7fHcsb0FC6vqwMjHnmiE0kQeRjW/bFCHmNZPS
	fdOa86hRIDv/fUSAY1S1wL4Bkrhg9Sfgmob3t8YC4dkjmwC8ooqPmVjCJKS7NlKWb9lzY9Y90o9
	vQinwrj5A5YEHf4Vydymnc345K+FSoMcYJcKTYJzDKVPVLM4IYy9EyvK/OxCzmzhqKbHCKlxCuI
	SWo3hzjDuYt3+z38z2WqbqpyZJOVaInF6U0GH4qsI/XnZWfP5uo2fHf/WFQw6Ihgig25dNxAdDt
	KV7ziRcY/Udx1DQMz2x0a1CYW
X-Google-Smtp-Source: AGHT+IFgAAov0WDbucAa2d2uLkEZNpDggOUKIJvl7ysoc5mJk7YSXRkmxd0htIHYmS45AM68y0mEAg==
X-Received: by 2002:a05:6602:368e:b0:86a:870:67b with SMTP id ca18e2360f4ac-86a08dd24e2mr166204639f.4.1747173235161;
        Tue, 13 May 2025 14:53:55 -0700 (PDT)
Received: from localhost.localdomain (c-73-228-159-35.hsd1.mn.comcast.net. [73.228.159.35])
        by smtp.gmail.com with ESMTPSA id ca18e2360f4ac-867636e0dedsm239622539f.32.2025.05.13.14.53.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 May 2025 14:53:54 -0700 (PDT)
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
Subject: [PATCH v10 4/6] clk: spacemit: define three reset-only CCUs
Date: Tue, 13 May 2025 16:53:42 -0500
Message-ID: <20250513215345.3631593-5-elder@riscstar.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250513215345.3631593-1-elder@riscstar.com>
References: <20250513215345.3631593-1-elder@riscstar.com>
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
v10: New patch, same code (extracted clock parts of patch 5 in v9)

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


