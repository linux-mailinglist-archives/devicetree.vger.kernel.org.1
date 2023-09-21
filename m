Return-Path: <devicetree+bounces-2055-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 568FF7A98FF
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 20:08:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 47447B20AC0
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 18:08:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 171B043AB8;
	Thu, 21 Sep 2023 17:22:53 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 928EF3CCFD
	for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 17:22:46 +0000 (UTC)
Received: from mail-ej1-x632.google.com (mail-ej1-x632.google.com [IPv6:2a00:1450:4864:20::632])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E3F0856D2E
	for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 10:18:23 -0700 (PDT)
Received: by mail-ej1-x632.google.com with SMTP id a640c23a62f3a-98377c5d53eso146904366b.0
        for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 10:18:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1695316702; x=1695921502; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NWszhBlTWMiwkXqgF1w4h8oNmYkV0xe9wPBMJvnXBgI=;
        b=XigbmDE+EFaNNUQFenrLnRk5HGov/KMfkmUWCYU2kuSCPss7K1BZsGGVf78kR12Pn3
         dp2Jx6fP+rOL5j3Yr8k684pbvC1In2WiYwpfNRzvyJ+zp5wN8mZAwo3CFDGsFhhXrUL3
         SS3yv/FsOd+hKerp3VkDLA/ueYeUgepoRUk8apCX68NUd0f6WQpwIfETNDTME6BDavK/
         A4ibtV14u0OYrdNF5175IkSbIUDInFtcxHIA9CBju88hPcuLh1k3LTyk7577axnuiE8y
         LIxtC79PsUv8sp3XgvhC5kzm7lgowmoX4P20h880l5vsESGRgrU0cKPEzVUXnMGTjELV
         obKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695316702; x=1695921502;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NWszhBlTWMiwkXqgF1w4h8oNmYkV0xe9wPBMJvnXBgI=;
        b=lN3JO0pNEWOupDkU/5cxfUJuS+VjIzuU7VFuFvYEM9UbL6yKDqEk1Ca9OnTsQtvGSM
         WAdveOmxnb8cm6mLtXm4ZqSFbQ/qMBH0vdmsKsC02T7DqNo8rAhMeE1l9tIzKW4hz09m
         LrHe8AxSSvmyjYt5NntASZHfrcjA3T60SwYGx3PC2u2vNQLsVlSBwaeq3DQ+elu1Rfw7
         poIlDdTwR196zZLx3Q7gu1jOO0a4flJEKejzCpmIz1/f9AG8FDg8Ai6dy5aBy1GRZBEA
         I13Ov0KHSOqo1xbvUUvDup41SnRkLVikDxwl9XtkZOtTCo7WI2bn/1Aw5aQfULNZorRs
         Pv6Q==
X-Gm-Message-State: AOJu0YwVJSV0yxYAHhRGhQkXNhdgq8IihREjvRA999ekursceUHikdc5
	yRI/PRks/paW5laWLlVaUsq1a4OeL3I7hyQiz74cpNeZ
X-Google-Smtp-Source: AGHT+IGfS13FEnLVNfJuIWeRBxS2FNjPxoFFMDKS2aE22dbReCOydRtLnM6n0AwKa1SbUdaYxLP7RA==
X-Received: by 2002:a5d:4a82:0:b0:31f:ec91:39a7 with SMTP id o2-20020a5d4a82000000b0031fec9139a7mr5419502wrq.14.1695306154592;
        Thu, 21 Sep 2023 07:22:34 -0700 (PDT)
Received: from localhost.localdomain (abordeaux-655-1-129-86.w90-5.abo.wanadoo.fr. [90.5.10.86])
        by smtp.gmail.com with ESMTPSA id n11-20020a5d4c4b000000b0031fbbe347ebsm1901426wrt.22.2023.09.21.07.22.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Sep 2023 07:22:34 -0700 (PDT)
From: David Lechner <dlechner@baylibre.com>
To: linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-staging@lists.linux.dev
Cc: linux-kernel@vger.kernel.org,
	Jonathan Cameron <jic23@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Michael Hennerich <Michael.Hennerich@analog.com>,
	=?UTF-8?q?Nuno=20S=C3=A1?= <nuno.sa@analog.com>,
	Axel Haslam <ahaslam@baylibre.com>,
	Philip Molloy <pmolloy@baylibre.com>,
	David Lechner <dlechner@baylibre.com>
Subject: [v2 03/19] staging: iio: resolver: ad2s1210: fix ad2s1210_show_fault
Date: Thu, 21 Sep 2023 09:19:31 -0500
Message-Id: <20230921141947.57784-6-dlechner@baylibre.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230921141947.57784-1-dlechner@baylibre.com>
References: <20230921141947.57784-1-dlechner@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

When reading the fault attribute, an empty string was printed if the
fault register value was non-zero.

This is fixed by checking that the return value is less than zero
instead of not zero.

Also always print two hex digits while we are touching this line.

Signed-off-by: David Lechner <dlechner@baylibre.com>
---
 drivers/staging/iio/resolver/ad2s1210.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/iio/resolver/ad2s1210.c b/drivers/staging/iio/resolver/ad2s1210.c
index 06de5823eb8e..84743e31261a 100644
--- a/drivers/staging/iio/resolver/ad2s1210.c
+++ b/drivers/staging/iio/resolver/ad2s1210.c
@@ -393,7 +393,7 @@ static ssize_t ad2s1210_show_fault(struct device *dev,
 	ret = ad2s1210_config_read(st, AD2S1210_REG_FAULT);
 	mutex_unlock(&st->lock);
 
-	return ret ? ret : sprintf(buf, "0x%x\n", ret);
+	return (ret < 0) ? ret : sprintf(buf, "0x%02x\n", ret);
 }
 
 static ssize_t ad2s1210_clear_fault(struct device *dev,
-- 
2.34.1


