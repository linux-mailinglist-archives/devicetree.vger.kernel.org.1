Return-Path: <devicetree+bounces-180503-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B679EAC3DA6
	for <lists+devicetree@lfdr.de>; Mon, 26 May 2025 12:05:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 14B593AABB8
	for <lists+devicetree@lfdr.de>; Mon, 26 May 2025 10:05:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 04C491FBEB6;
	Mon, 26 May 2025 10:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="KXB3e99F"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 243121F463F
	for <devicetree@vger.kernel.org>; Mon, 26 May 2025 10:04:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748253892; cv=none; b=LAplqQj2W2J0Sckvl2FbNEOvg6boV072HLMr2C6PZg0Gao3Sv1V4tbsNmgUtcISwTyKaSW3yj8/lr7IDlvHzA2mYFRJ5nOZeT1GkIAihuvJpfdCrim32aYZfUoN/yon8N19XyUBGfdUua4dWy90GWE0A5oQORO1JCQ2zrauX8lw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748253892; c=relaxed/simple;
	bh=G/PHL2H0hCT1vJawFGnuZDviCmco7m1K7dYprLhxJYc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=OUyCOLCi9e+e1XLNvyhMfC7MRrqEE3fViApXWx5Q26cnUp1v6YEaaOdOL/wBE28zReE4bvOXVxVAOsDzqi8g6zWUgmf/vF9sAUdn8xkA0YdQPSj5jnMWNalCOhMu91P53yuLzt3eJ20ohozzCcu/RdMttGzkOLs1xe99ACWYQmM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=KXB3e99F; arc=none smtp.client-ip=209.85.221.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wr1-f46.google.com with SMTP id ffacd0b85a97d-3a367ec7840so1491454f8f.2
        for <devicetree@vger.kernel.org>; Mon, 26 May 2025 03:04:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1748253889; x=1748858689; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=L1cI5SBD7MAWLfTRQEXjlnF27Z0y/aSH849T67R+rYk=;
        b=KXB3e99FGF1qMzkt23oiJUXYA9k/OwdBog+tgP4k63Mm9jf9x+DQmezeCPJB5IIx2D
         dYDko93fSKXfDkEICWt3pO3237OJVfYiJpWAUPMm4me/TwQXJFMCYtI+7rnspJaVMu1G
         74hiwfX2Hjfo/7YCEovhRZ/tVajMH/JGiSm0b1B+BlORdj6GQg+Qbh7xB7ydc/W6J7mW
         WmG9suiIotiSPS4fh2GVyLmw5yiugKBErexR7FrW1eAHBaxUC1V7FnCpWVjLlqUvGCoY
         w0kj3bcY6YJbVC4l5xLZvkabSwCoue6npnDLaKLMZr7GL2igZbEyz1NXYD5SDHLdslgg
         duow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748253889; x=1748858689;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=L1cI5SBD7MAWLfTRQEXjlnF27Z0y/aSH849T67R+rYk=;
        b=L5vwj2dTnirG+CTkgTB7j49jHYetbbIYXHUdhG4Dt4bnB7dz6TcGs7oOxgYf6+/Deo
         nh6rTLjaaZHhq5KTmL1uwhIgTkWm5F6EVLKR9GmQibnxpcqYiVWxl/sImppXDsjjf1M4
         PLHjDtgXDAnF7eABle4uGEtGTDo/Ah3U18eMjgSeB9h7MGPQSLMjgXbqxh0TAGroZ2ru
         94UlzqiN8JaB/lRxyTxIVQaVWV+9W9uiy+PEkRQio3SnM9GpeVyvwctG8OlYYFGSZmV8
         NGPCSnT45sYN+tuhqN7sto1rK1+kkIsSnIfcxFDzijWBa4WQHSY+Ur9DLu9oXAm3j9bQ
         HkJQ==
X-Forwarded-Encrypted: i=1; AJvYcCUD6T6n6qnzcUTE/WlzTs5QCq7fOY13poPMNCIrznusUqu/Mp7egmPe2oAfx6nBEsM8xt1sfvvGAZVy@vger.kernel.org
X-Gm-Message-State: AOJu0Yzc2WFxVCzOZC9Nuy8Vd8oVvET+I0hvQy5joAyqAtsu7QQg1ZHV
	smYWgyuQ/ZFYqCb/5z4HK9v5dWcCE0+B32iBt4YT6+pGVfBmHJ0amolEyR5Ea35AhAynP7Wll6d
	HFp9Q
X-Gm-Gg: ASbGncsgCyvWccwWVmlKyei6QTLbwyExX5l5snJKhrqGtmO0Ae6QA1rRYx/+YvRljut
	WKbOGvPQ3GCJY0vjuE1xh34kUVZf7jDPu2oxbQLAD2mfJ2vWFP1fklvHQYtdwMUuAImo8CgPY/X
	loMDvWXh/pRvBAsYgoVdzJ1AfEGHts2kfOsKo1TJbg8loD5OXl8jMF0+OZ0tiOHris8coAyUZd4
	Y2QaEEMOCVXP05zhYPVJd4RMbyaha5E+5pPGgtlkB6YWG+BVHGOAUVdRLGpIMGu3sdRHXMmfNmg
	g/R2CrdP3ApNh0cqnSBHRmbnJVmdqlw8zfAhnbrkL84z+0pAierJf39IMxJ8w2m5MO8hxuhjnnW
	5kOvERCEYK6UDNF0ej/eOe6VufxNe5us=
X-Google-Smtp-Source: AGHT+IF6mIEWndbTmsmJpL6uEi7nCS8HyYelPhOXO26l0/vLChjcCpiljRuyV20XEkmMAv/G/rTqCQ==
X-Received: by 2002:a5d:64c5:0:b0:391:3aaf:1d5f with SMTP id ffacd0b85a97d-3a4cb4c6b6amr7756998f8f.52.1748253888985;
        Mon, 26 May 2025 03:04:48 -0700 (PDT)
Received: from [192.168.0.2] (host-80-116-51-117.retail.telecomitalia.it. [80.116.51.117])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a35ca888fcsm36141834f8f.78.2025.05.26.03.04.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 May 2025 03:04:48 -0700 (PDT)
From: Angelo Dureghello <adureghello@baylibre.com>
X-Google-Original-From: Angelo Dureghello <adureghello@baylibre.org>
Date: Mon, 26 May 2025 12:03:20 +0200
Subject: [PATCH v7 5/6] iio: adc: ad7606: exit for invalid fdt dt_schema
 properties
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250526-wip-bl-ad7606-calibration-v7-5-b487022ce199@baylibre.com>
References: <20250526-wip-bl-ad7606-calibration-v7-0-b487022ce199@baylibre.com>
In-Reply-To: <20250526-wip-bl-ad7606-calibration-v7-0-b487022ce199@baylibre.com>
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
 b=owGbwMvMwCXGf3bn1e/btlsznlZLYsgwscm+2v1T8ol0YNBhvvbjfEkvOALyAjny9P0etAV9O
 Odwp+1bRykLgxgXg6yYIktdYoRJ6O1QKeUFjLNh5rAygQxh4OIUgIl8KWb4pzo9WHbnmyN2Bcrd
 z3p0jzFP2z1XryXLPjr209wrjV2LxBgZuqQN1t1mc9TelL5SyFGohb1IYdOMoKtX77tKXr8nc9+
 eDQA=
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


