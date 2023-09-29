Return-Path: <devicetree+bounces-4719-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 37C4E7B38A9
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 19:25:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sy.mirrors.kernel.org (Postfix) with ESMTP id A58A4B20B4B
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 17:25:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 88EC1658A7;
	Fri, 29 Sep 2023 17:25:54 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43E60658A3
	for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 17:25:51 +0000 (UTC)
Received: from mail-oo1-xc2c.google.com (mail-oo1-xc2c.google.com [IPv6:2607:f8b0:4864:20::c2c])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 316FA1BE
	for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 10:25:50 -0700 (PDT)
Received: by mail-oo1-xc2c.google.com with SMTP id 006d021491bc7-57bb0f5d00aso6062379eaf.1
        for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 10:25:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1696008349; x=1696613149; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sdyEj3wikWRAcNOtcWjzMUp/VXe76XnGqEiNgzZP6WM=;
        b=15XdpdXmk98e/fncfJ5R9qnkVj+AXNYi55cpGje5PD480tQ4ZEE7X6dJKT64YOanru
         Y6dww5ewy900Rlyq07qB0ubeXEyjVLANBV8BwVpQJhJ0T9aT3wXsrVLZ5IuvBiHeoAC+
         IWWp4BXfCBb/PSGN3jAc+34+fvjbQNSg3WtPlBMsIbrLqeYJKoySI20Uz9LH+laceNxc
         v69qPR0Feqa823+HV3KHtAF7+80lLTrkmNDlj6Q6H6+/C+tQewlt4UeehnSSlS3tbU+c
         hZF2jHMEsVulycIRsZvY1sWEkFFYr7RUqSzqMH7LqY2dCTD/n9NRne2FDpIJp8Ygd37a
         Y4og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696008349; x=1696613149;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=sdyEj3wikWRAcNOtcWjzMUp/VXe76XnGqEiNgzZP6WM=;
        b=eUZ+MTIAogDXvC1ISZXOJqYFPv3ArC3KzSbGncwrwogeGX/7H5huMO3/+v3IKHiR/n
         BfU5SowhkcQlQ5i3+4d3V61NLYGJj1qUgBY7oC2kAG2SzyJm0QQRSZiNzexFh+vK4Ugw
         WVxjnV9Cwyuai2zr/1BUE+3d9UjiyFIIV3eG/zhBpcxFLXmo8mBxLO5gXncRNjZaNR3T
         t6w2U1y8IF379Bu1Q7KhjwhjsUmlHiANRMuVd9INXi08cC6sQ9/ZmGaRliBeIpr/Sqc+
         Z8zNCve/ibrGCEbsjmldmmzUNDo9eruIAsvfPZ76q+el649oBy6o3/U7fhuwto4zNO0R
         xzIg==
X-Gm-Message-State: AOJu0Yy52L+tHxK2K+U/LM4h9B5lt0dXx8rZyNFWoUhxiop8gqKZUXVI
	4nomR2kO5H+svx3abHPrQ/Mi8A==
X-Google-Smtp-Source: AGHT+IEdsrADh4nu4YW1a/z3YRqrcmH2BqYxTLsP/81uaD4TcborXfHuhbM/eSAh86i/ThqzYbreAw==
X-Received: by 2002:a4a:9c4d:0:b0:571:1fad:ebdb with SMTP id c13-20020a4a9c4d000000b005711fadebdbmr4938892ook.3.1696008349364;
        Fri, 29 Sep 2023 10:25:49 -0700 (PDT)
Received: from freyr.lechnology.com (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id f128-20020a4a5886000000b0057bb326cad4sm2272915oob.33.2023.09.29.10.25.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 Sep 2023 10:25:48 -0700 (PDT)
From: David Lechner <dlechner@baylibre.com>
To: linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-staging@lists.linux.dev
Cc: David Lechner <david@lechnology.com>,
	Jonathan Cameron <jic23@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Michael Hennerich <Michael.Hennerich@analog.com>,
	=?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>,
	Axel Haslam <ahaslam@baylibre.com>,
	Philip Molloy <pmolloy@baylibre.com>,
	linux-kernel@vger.kernel.org,
	David Lechner <dlechner@baylibre.com>
Subject: [PATCH v3 03/27] staging: iio: resolver: ad2s1210: remove call to spi_setup()
Date: Fri, 29 Sep 2023 12:23:08 -0500
Message-ID: <20230929-ad2s1210-mainline-v3-3-fa4364281745@baylibre.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20230929-ad2s1210-mainline-v3-0-fa4364281745@baylibre.com>
References: <20230929-ad2s1210-mainline-v3-0-fa4364281745@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
X-Mailer: b4 0.12.3
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

From: David Lechner <david@lechnology.com>

From: David Lechner <dlechner@baylibre.com>

This removes the call to spi_setup() in the ad2s1210 driver.

Setting MODE_3 was incorrect. It should be MODE_1 but we can let the
device tree select this and avoid the need to call spi_setup().

Signed-off-by: David Lechner <dlechner@baylibre.com>
---

v3 changes:
* This is a new patch split out from "staging: iio: resolver: ad2s1210:
 fix probe"

 drivers/staging/iio/resolver/ad2s1210.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/staging/iio/resolver/ad2s1210.c b/drivers/staging/iio/resolver/ad2s1210.c
index 3f08b59f4e19..8fde08887f7f 100644
--- a/drivers/staging/iio/resolver/ad2s1210.c
+++ b/drivers/staging/iio/resolver/ad2s1210.c
@@ -683,8 +683,6 @@ static int ad2s1210_probe(struct spi_device *spi)
 		return ret;
 
 	st->fclkin = spi->max_speed_hz;
-	spi->mode = SPI_MODE_3;
-	spi_setup(spi);
 	ad2s1210_initial(st);
 
 	return 0;

-- 
2.42.0


