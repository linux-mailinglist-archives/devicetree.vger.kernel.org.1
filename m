Return-Path: <devicetree+bounces-182504-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 15B85ACC950
	for <lists+devicetree@lfdr.de>; Tue,  3 Jun 2025 16:39:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5E650173669
	for <lists+devicetree@lfdr.de>; Tue,  3 Jun 2025 14:39:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E861B23D297;
	Tue,  3 Jun 2025 14:38:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="BSAwEPtf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1BC2239E73
	for <devicetree@vger.kernel.org>; Tue,  3 Jun 2025 14:38:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748961483; cv=none; b=LmdXGbLMogTQBfqjglQHx1wHxXLxNet2s2b269aq3MGaNW4xaLUIGY84908AX9cNDIDdYquLYZ105AA1zEkqHV33igxvUyIypqj85D4VZP4P2250KpurlCeYMh83feSva2m52Qe5BBGH7c8nHnVo+CQV8xYvOODW7X9+RomB21c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748961483; c=relaxed/simple;
	bh=G/PHL2H0hCT1vJawFGnuZDviCmco7m1K7dYprLhxJYc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=PUNJnKnNWJPCczofKcfQRdS9o5BC09f+u0RI2awf3pWTjjmVm/JWurhGqrWAmcJ7weCdq2KCwn3dJ7x+VdAQoIlBEpQbpaBE3r6jOn5u1NiHgPljTUiNAn7abps/pU52u4wq8w4Hb6riWl/je3a00sOpgFDJ8xiVn9xLJQ/7sbE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=BSAwEPtf; arc=none smtp.client-ip=209.85.221.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wr1-f52.google.com with SMTP id ffacd0b85a97d-3a361b8a664so5484536f8f.3
        for <devicetree@vger.kernel.org>; Tue, 03 Jun 2025 07:38:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1748961480; x=1749566280; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=L1cI5SBD7MAWLfTRQEXjlnF27Z0y/aSH849T67R+rYk=;
        b=BSAwEPtfAtU3wBxN+PELjdy9Wk34d6LdA3wAA6ncD1eVWvdpoh9kN0R2fKjcAFZdg5
         LGEjZG5jcz7mkNfJXoLiSBcTAaBkjoYq3Yx8iawyYeqCt+SJPkeZnrd5IA9Hcdn1X8IG
         V27+UGCIE/VW6BAtQlg714vaVBwIZuQlB9ls+EToKGLcBZx0r2A7hsIzUx5r4ycpuZ6X
         cT43jsnmnsNrxXClN86Z+0sBvTUEJTKVFyHcohGAsfOzl9gjbHCN1mJmRkm/q9RQuwkv
         veNo1fvwFmZ448+dZ4Vb/fMEy2sAvVqgr6j2KIeTokqB3+SOi+Z7yesXyoM526va6yrB
         uBvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748961480; x=1749566280;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=L1cI5SBD7MAWLfTRQEXjlnF27Z0y/aSH849T67R+rYk=;
        b=ioR+IU9eFy49iL9V/7jLlRmsFTzRfpC40Nt0sgaJ6XCDmmKJwDMaranyO/xwgsqsqq
         J5hqYf+FcPh6Rmj2oal4Ss9wrJJv5HNg44y5v9C6/QmuJeTCHQ6k5DY97NjzavXlqKQw
         7Stf9/hqaUyUxLGCF+33kAlOHn+74GgCtlXuVWq3LUTZPc0D2VuspkCDjgFlmR9uCAss
         wmpYJP9im/yOshzUhovPMM6zCG02C+u9qD75hRdc9kY43LHLuh4o3dq6inbcDFczYXgF
         0CEImImqyCcKOnNAWx9AST4nZku6gMlCfKz0XD2dbWuKw0kFid2dA0yvjQefepjdSjKm
         TCxQ==
X-Forwarded-Encrypted: i=1; AJvYcCVF1clKg/NtSuaMkn1kvVwWRx9XVkj/bJBlw/niRksNyqwPkT7Q11iO3QgFktkI26Pyf3Bl7cah8RRS@vger.kernel.org
X-Gm-Message-State: AOJu0YzbvXPNP75t95i6Aa5zrtQzWR/gj6IHlmmBges3E1wG/If63/LW
	pXAE/NdSSWHHj2xSyJyDrAzxGaqysfM4eJ0ppBu0HVB5WIdFmcamplqqolO4tSa//6o=
X-Gm-Gg: ASbGncuFu1BGMIHyACv5Z2stQdzHeB5kKjLxzhJrCazncetJa8VRglofj8Xo/iMwdHe
	MIJpf5xRCIW0xq76MQTySeNZ4362We9SMAXK7vkjRsbpKP1movXrIN0vdWpy33bzvuOrq8EMoJo
	lIRz0z+ArdnkxERNPkiwtjLQAsrXrK4gkyWH0vYOpRfSEd48rYtOoiBgDX3w46gmFY6Hzs/DL4A
	BQ07ifn0xMDupt8cO1HX/MeqWElWiPLJC2ZOdvw1yOg2FpDJsTAzhHckaDq8e6C7oTZ+/KU2hNf
	VUTwvSPDieZyxy/Fw3HnVZhUY6YjZte9BPpBd91nxuDNZ5aJkNPXq7bT+GxoDSEUpyY8y0MQhmm
	wyKCaaRHjtSP8ZQhXWO/sqzz7c1VfnTMrOj+UhYor3lETgA==
X-Google-Smtp-Source: AGHT+IGFPX5VdQK9T4g6UMgjgydI5QDL83V3yamCgeiN3fZy4/E6HSS7tjewElI3JgP7ZsTBOye2lQ==
X-Received: by 2002:a05:6000:1a8b:b0:3a4:e4ee:4c7b with SMTP id ffacd0b85a97d-3a4f7a4d5acmr13070281f8f.15.1748961479912;
        Tue, 03 Jun 2025 07:37:59 -0700 (PDT)
Received: from [192.168.0.2] (host-80-116-51-117.pool80116.interbusiness.it. [80.116.51.117])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-450d7f1afebsm164430945e9.0.2025.06.03.07.37.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Jun 2025 07:37:59 -0700 (PDT)
From: Angelo Dureghello <adureghello@baylibre.com>
X-Google-Original-From: Angelo Dureghello <adureghello@baylibre.org>
Date: Tue, 03 Jun 2025 16:36:27 +0200
Subject: [PATCH v8 5/6] iio: adc: ad7606: exit for invalid fdt dt_schema
 properties
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250603-wip-bl-ad7606-calibration-v8-5-2371e7108f32@baylibre.com>
References: <20250603-wip-bl-ad7606-calibration-v8-0-2371e7108f32@baylibre.com>
In-Reply-To: <20250603-wip-bl-ad7606-calibration-v8-0-2371e7108f32@baylibre.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1153;
 i=adureghello@baylibre.com; h=from:subject:message-id;
 bh=rfCHNvDJGZ9CfpNWbsvNZme06fPzQKFo7DAhEkye3IU=;
 b=owGbwMvMwCXGf3bn1e/btlsznlZLYsiw56gofpjWOk/92/TCQO2mBqUzHm9/yq3j6er66+rW+
 4ktv5e7o5SFQYyLQVZMkaUuMcIk9HaolPICxtkwc1iZQIYwcHEKwETOqTD8M/X8uefDpwPN9jU7
 8zZvSHkZWG4Yx6dyT7t2M+cBY72fExh+MauesFcWCU6y/29m9/Vq//VX+X9kdondPsv3fZ4/k5Y
 1NwA=
X-Developer-Key: i=adureghello@baylibre.com; a=openpgp;
 fpr=703CDFAD8B573EB00850E38366D1CB9419AF3953

From: Angelo Dureghello <adureghello@baylibre.com>

Fix ad7606_get_chan_config() fdt parsing function to exit for error in
case of invalid dt_schema values.

Idea is to not proceed when there are values that are not allowed under
the dt_schema.

Signed-off-by: Angelo Dureghello <adureghello@baylibre.com>
---
 drivers/iio/adc/ad7606.c | 10 ++++------
 1 file changed, 4 insertions(+), 6 deletions(-)

diff --git a/drivers/iio/adc/ad7606.c b/drivers/iio/adc/ad7606.c
index 9a9bef0cfbb37138f71ba5b1babeaa423eaf4d5a..e0a666cc0e14255754e74daa9e1e88bc4ad1665c 100644
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


