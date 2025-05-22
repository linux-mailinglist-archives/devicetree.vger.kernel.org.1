Return-Path: <devicetree+bounces-179566-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id AF951AC0CD6
	for <lists+devicetree@lfdr.de>; Thu, 22 May 2025 15:31:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6E47E1B63726
	for <lists+devicetree@lfdr.de>; Thu, 22 May 2025 13:31:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4E6C128CF6B;
	Thu, 22 May 2025 13:30:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="ORxk+uFG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 754C628CF4B
	for <devicetree@vger.kernel.org>; Thu, 22 May 2025 13:30:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747920612; cv=none; b=Mpt5O51y1SaWVsRqHXWkGtvP0mqmY0gTdq/iREdWW6bRSoAGY5m2g00n3ZY/p3WKeRfjqHLjmfzmHrPR/A7KWYs2ceFhswGUJAZ+Gc5RJSXV3KipcEhGz77gncg2fNB1Gy9eNsIek3NHxrwDFU8I/7y1SQ3RwOCg/8GxEy2KJQE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747920612; c=relaxed/simple;
	bh=0nIe8gZGvoRF2DsBrKBsu2KJOvKQjVrW3XZFMPilYfg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=CmGzq03kDvs9dayj1+DcetzYXuH9Ql+16zRckWpIUM8Vwztk7mrs3fpp+8Ipxpw7PNxZErjTvdHdpEy+p4U/+0Yh/9OEy3y8RVJOO3NjdZ0U+gsmaqlZeGczgFMW52RuLKzUPYoeuCHPt40gt1NAETZzKCzgeN1p2QN0imv+Q3o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=ORxk+uFG; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-440685d6afcso85294465e9.0
        for <devicetree@vger.kernel.org>; Thu, 22 May 2025 06:30:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1747920608; x=1748525408; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zedGelCVtGkH8UnHqcPHmZh/ZtT25oJw7cbep5q21KQ=;
        b=ORxk+uFGYPatKcAeZKGipant+8cOixogU8t4Eh1N2h8PnmZRd3//zNv0gztgGqD8V+
         LLjCcmGrwTAAMYHK+tqwB3rOd9REicMPeIWDXyNqap00ICB7JRisjioSVHtvASYxaKUt
         taWgSRu6r3JzO4LVQbHdakbaQwzfIJGagqjQmQVzmIZ1oIYV8637d/xoKBvt0m2Hel7E
         YfeL+cWFu3gY//nMpXL9zb6p07XlPLhJHyhzWUNmdbGyZ+3TNFI7LcfYWqqjVJnAyHoP
         UJkm9iFVd/xAnKt5B9NLQKRcJG78+XKuzh7rAjipxTGHra5tUec3LlXp93e7ADTfuFM+
         BkNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747920608; x=1748525408;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zedGelCVtGkH8UnHqcPHmZh/ZtT25oJw7cbep5q21KQ=;
        b=LW0InROPF1C4IsETsfMG6X3jPNYjXOsiUytHSHBdPMM4BMlv4q23eT6bhI4zCgm37W
         3L/npCDk9ccERCvdBBbfm9tjXkGNbT478t+5+QJ6TTqz7Cid1qNl68O0O36xXA3DCrRF
         Tg58MXsXTAvjv/1u4LhqZljMpcxBVPQ2TaKFYPXxsHMeE1TBSrN9GPwMrwbqr8Cik3/O
         dLHQVgOK8mX4QTeEdDUL7BnNbYVgkH8wp4efyYLUWx8dpm/Q4JlagcIY1XsrpnrZWb+f
         Ze9GT9Fuq6C3U40n75xzP1B1cnebSZl2bDmj9KN7+zj5Ycifk2G+zfFyzVBX6dUhodhS
         UXNQ==
X-Forwarded-Encrypted: i=1; AJvYcCXRaDOs80VHE6kesA6LJvgU6oN4zXHQtxw/lqGH0moRzEdeJ9mJCytbAXt58xt0OmNAm39eMom79u+f@vger.kernel.org
X-Gm-Message-State: AOJu0YxNC+YaL1SfvmpXueF93OS4kZsCzfJFohKzwavSKooq/4iADn5f
	91J9xlVOYPyG5btKdK8xINZkSSOELjsgowOFv5f5/pdh63CTsWD8K9BN7ooMMQ7YfII=
X-Gm-Gg: ASbGnct5hhyLhLPA1stOgx00eDWCsntmCnVyq2dlF9C7oeku2389kmLFDpvZsnACR2y
	Pymh8tMAZ5rs9sNeT5vqDZeu2ziwxDVuJt5A5vQ7/l3oVUNy9GRdIcCh+PpgDnw4ytUtKj2aK9+
	BbsZIkwdU0MVZSBbAg6z7s9lMm05Hq6ClN2fNmpqFSbXVul9iZ7JX2kGPnUK66Rn4ZWmIpSrS/O
	+gw8u3Q8lrcdpKTC2ChJLFYTiIhlB+Ar924ZLSbvtIF9npcUKMv0NHYQrUVVQiP5QTK7GNwNedB
	EVB6BveC/qQPFFESZVPCyFnJI06zunRE1gI5R3ZuI7B7VHc2+2L708VlZOsvZhg8nFLth9oC9tZ
	mA8o3C81T8IR/4zbdo5zTFGpQe4MslYM=
X-Google-Smtp-Source: AGHT+IH+K32qNT/ePQRSF2E0pqSrNhSULvgvzcbuq0HC765uEjE9Op/hJ16W1+SFbnnKw5xt5IFglA==
X-Received: by 2002:a05:600c:1d8c:b0:442:e109:3032 with SMTP id 5b1f17b1804b1-445917d2a0amr152237185e9.24.1747920608592;
        Thu, 22 May 2025 06:30:08 -0700 (PDT)
Received: from [192.168.0.2] (host-80-116-51-117.retail.telecomitalia.it. [80.116.51.117])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-447f1ef0b20sm109837585e9.14.2025.05.22.06.30.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 May 2025 06:30:08 -0700 (PDT)
From: Angelo Dureghello <adureghello@baylibre.com>
X-Google-Original-From: Angelo Dureghello <adureghello@baylibre.org>
Date: Thu, 22 May 2025 15:27:06 +0200
Subject: [PATCH v6 5/6] iio: adc: ad7606: exit for invalid fdt dt_schema
 properties
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250522-wip-bl-ad7606-calibration-v6-5-487b90433da0@baylibre.com>
References: <20250522-wip-bl-ad7606-calibration-v6-0-487b90433da0@baylibre.com>
In-Reply-To: <20250522-wip-bl-ad7606-calibration-v6-0-487b90433da0@baylibre.com>
To: Jonathan Cameron <jic23@kernel.org>, 
 David Lechner <dlechner@baylibre.com>, 
 =?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>, 
 Andy Shevchenko <andy@kernel.org>, Lars-Peter Clausen <lars@metafoo.de>, 
 Michael Hennerich <Michael.Hennerich@analog.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Michael Hennerich <michael.hennerich@analog.com>, 
 devicetree@vger.kernel.org, Angelo Dureghello <adureghello@baylibre.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1250;
 i=adureghello@baylibre.com; h=from:subject:message-id;
 bh=NW1JeMg0S+0gI2cAzi0BWwFNupEZsJYBOb/eiNBCbAk=;
 b=owGbwMvMwCXGf3bn1e/btlsznlZLYsjQV0t7/bf47Y2NQe19O/43/DA9Xn9xbYH61HczMyNOq
 3X+5Fl3qqOUhUGMi0FWTJGlLjHCJPR2qJTyAsbZMHNYmUCGMHBxCsBEQlYwMhxcZv5+0mq+PfGV
 GWorjCueGKy0u7fxtbSNQIr5uZutYr8Y/kptFJTeJZJr/b18a6mJSM7JV47N5evmvv29+cpWNxV
 zHhYA
X-Developer-Key: i=adureghello@baylibre.com; a=openpgp;
 fpr=703CDFAD8B573EB00850E38366D1CB9419AF3953

From: Angelo Dureghello <adureghello@baylibre.com>

Fix ad7606_get_chan_config() fdt parsing function to exit for error in
case of invalid dt_schema values.

Idea is to not allowing to proceed over when there are values that are
not allowed from the dt_schema.

Fixes: f3838e934dff ("iio: adc: ad7606: add support for AD7606C-{16,18} parts")
Signed-off-by: Angelo Dureghello <adureghello@baylibre.com>
---
 drivers/iio/adc/ad7606.c | 10 ++++------
 1 file changed, 4 insertions(+), 6 deletions(-)

diff --git a/drivers/iio/adc/ad7606.c b/drivers/iio/adc/ad7606.c
index bb0c89fc618874f4a5948d8e537716f87127bc92..f832fd0daf50a69a892636018bda2e43f73d1570 100644
--- a/drivers/iio/adc/ad7606.c
+++ b/drivers/iio/adc/ad7606.c
@@ -319,15 +319,13 @@ static int ad7606_get_chan_config(struct iio_dev *indio_dev, int ch,
 
 		ret = fwnode_property_read_u32(child, "reg", &reg);
 		if (ret)
-			continue;
+			return ret;
 
 		/* channel number (here) is from 1 to num_channels */
-		if (reg < 1 || reg > num_channels) {
-			dev_warn(dev,
-				 "Invalid channel number (ignoring): %d\n", reg);
-			continue;
-		}
+		if (reg < 1 || reg > num_channels)
+			return -EINVAL;
 
+		/* Loop until we are in the right channel. */
 		if (reg != (ch + 1))
 			continue;
 

-- 
2.49.0


