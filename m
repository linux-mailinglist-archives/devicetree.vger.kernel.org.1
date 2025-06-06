Return-Path: <devicetree+bounces-183366-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 40D42AD03E3
	for <lists+devicetree@lfdr.de>; Fri,  6 Jun 2025 16:21:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BA918178A89
	for <lists+devicetree@lfdr.de>; Fri,  6 Jun 2025 14:21:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0620E1C5F2C;
	Fri,  6 Jun 2025 14:20:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="xl8zDuQg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9CC919DF6A
	for <devicetree@vger.kernel.org>; Fri,  6 Jun 2025 14:20:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749219646; cv=none; b=bp1gJVIXf65Gi5KhjxYK32H3vEXyDiE34B0/+FF5Kni8xyNSTlEF7/CMtld0BaGnvaVGvuQyEpLb0823S88BZMf3OXmkItff8/smKzZnwFIO8pF07LDMR65nhzmbLEVqA2HBj8aUabzou8/K8dvx86HYS1ti8Ydip7DPw7/ikUo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749219646; c=relaxed/simple;
	bh=gYfEpf2B0eWfEeN9J0NWkVxgQeOXhE0vWQqSI1AdL6w=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=O0P9nBLBKlpH9gNj9Q4lf3lvL1kJ6dCOjzE+ccOz7cnimr2O3tWgsgAoen0s5+SCdhXzNT0DMDCROogobk3Y8zAEXSdBCX16DNN3PeJ8UQTrx50ZgUsrT3WWmXAZRWGxQGhJm7zd/+b6LsU6D0PCaXQgOJhVgIPcX0WFlk8lw70=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=xl8zDuQg; arc=none smtp.client-ip=209.85.221.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-3a36748920cso2098263f8f.2
        for <devicetree@vger.kernel.org>; Fri, 06 Jun 2025 07:20:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1749219643; x=1749824443; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=G1WuSemWPuN4SdNDyJuKtWMwJnRcINbePcyuYFAeNSg=;
        b=xl8zDuQgOcvXr26pndVTz9RWxSiJfigwaOWDjUCCUw52d27jJEQnYgTocxzmfC2Uwo
         900ElBBmYlOzi8NeBJoHUsZ7w6mKaPDyJEDPJUaWgO1bOpm/oZRnoyC0WIlL7dLzQg9S
         ZI1r+ZBKdT4QF1zAfNB8BOZLo/SfrqYpnvIdursH11lOLSDrmUYJXh25v12npT40okEE
         A2WWcLv345N0PNBY62VpXLKN8ni4d8PHNHn4dsCr7KSjssjBp9UnKoCm5aKhDdH3bgjA
         5V4Jj7xjRpYOcomRJj9A2o9EH9dYJmtWsFByvR8oqhW3ol0BhwCPW8Rej6B/xahn6Fy+
         aPdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749219643; x=1749824443;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=G1WuSemWPuN4SdNDyJuKtWMwJnRcINbePcyuYFAeNSg=;
        b=HK3bvqraYdubAUBgRcB72FHUtaQlTFZgRREZT3UTvurYYy2bq6WjrWCltjPv+fTP8p
         2odkjvPyl2et05LXddRlkFUclzOYE6WQG854ptc34GPtTKB/FRhC4WuHjxC85lcH3Rn/
         cekMjOHRwnDsTbCqYg974cIgZ/mOAfdihist3A7jLQ87SdJ8ag2teQWCp9poShxAvh+D
         cC2i0E91QmFWe9l3dGpzX+xk5ko1TPsCP8uYVmlQGk2/OjPaReCh7BjHP8iOIf3TBzXa
         yEnpFKiN1cXAXW/PTelWl7uasDfMj1LH+7k7LZRhA94ZTYuRTyyc8UqtzfPVZ2o7jIp5
         YrJQ==
X-Forwarded-Encrypted: i=1; AJvYcCXwn5M++KQHUk39lSXz54zSZO6I9Rer3T23cfhZqVH5B3OOqOH0AvKGyTD24K/EzlkjoI7zzGuQAg5V@vger.kernel.org
X-Gm-Message-State: AOJu0YyhfB8pshMKLuRGeNuhoNHAWaIBufKMP4HEdEUU4Ms14a0uosnw
	u7LrJq1S+nyHzL/1h5n01akYJMVRMFUOx2a6NunESLKUNHokZfj6vj9XS5pC35DJPgE=
X-Gm-Gg: ASbGncuB/PRHl4HZO8QEafptlAxmKUTUVhIoJeV4m+15u3UHZr9mYoHrA3VM2HnK9WH
	sU4LJ6nzIaNSK/2IkK/abUnOWXKl0XZcuYOHLt9LxCgE/c7A3BgLnpC0VQKPnpGa1ZY5bLKwvhX
	8Ek5B667LRCd3RMFRnOrTHw4NNWa05XsLsdy5ovtOIOVb5eysHG/c2lVXgj+OuHHpFdLPUrAYS2
	PGuVfcMVEV8LhrRZVKkmFs6aT1HI3TI049CS2P1Lpce/2Pwj1b7+10MWqT/BQhOM4yDjyG3ogsl
	Y0d+el2FGwQESLc7v1UX7K+RrRpkAlNoVmrUCqDXB+mpTN3dEcYYUorzdvKxquYxWgg0nJcXFtb
	BzDIATFjY75X5x5ETFAFjG2i0IeRzmFw=
X-Google-Smtp-Source: AGHT+IFtlzsfvKdrGidMqXsh4h0hFXBsNFDQ1/vkDgbyZn8qf/GpmYhHZbaV81p1vbt2rpfR/6BT2w==
X-Received: by 2002:a05:6000:2288:b0:3a4:f8fa:8a3a with SMTP id ffacd0b85a97d-3a53188d961mr2814047f8f.18.1749219643145;
        Fri, 06 Jun 2025 07:20:43 -0700 (PDT)
Received: from [192.168.0.2] (host-80-116-51-117.retail.telecomitalia.it. [80.116.51.117])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45213754973sm25686345e9.35.2025.06.06.07.20.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Jun 2025 07:20:42 -0700 (PDT)
From: Angelo Dureghello <adureghello@baylibre.com>
X-Google-Original-From: Angelo Dureghello <adureghello@baylibre.org>
Date: Fri, 06 Jun 2025 16:19:20 +0200
Subject: [PATCH v9 5/7] iio: adc: ad7606: exit for invalid fdt dt_schema
 properties
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250606-wip-bl-ad7606-calibration-v9-5-6e014a1f92a2@baylibre.com>
References: <20250606-wip-bl-ad7606-calibration-v9-0-6e014a1f92a2@baylibre.com>
In-Reply-To: <20250606-wip-bl-ad7606-calibration-v9-0-6e014a1f92a2@baylibre.com>
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
 bh=RXow6w1uaNfMkBVbDyKeZVZMYqn8OBoe2df7BYhUk/U=;
 b=owGbwMvMwCXGf3bn1e/btlsznlZLYshw+vHse9SpmdYf179kvjN5/seTMywr79gmJh3gnBwbK
 pF668miZR2lLAxiXAyyYoosdYkRJqG3Q6WUFzDOhpnDygQyhIGLUwAm4uTIyDBpwyLzDUkNLtua
 7j08+P22bl+43sTQnbIHNP4UZh+48bCf4a80x7GdF/Rj1i77ov0u/d6vGTIef2xfB5w48a9jU27
 goxw+AA==
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
index f0c22365f23fa2bf00edddcdd7d608bd1393bf28..e5878974a28293664dd8dbded5fffcea6db31ef3 100644
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


