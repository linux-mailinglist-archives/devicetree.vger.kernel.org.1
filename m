Return-Path: <devicetree+bounces-50277-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 509C387A926
	for <lists+devicetree@lfdr.de>; Wed, 13 Mar 2024 15:10:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 74CBA1C21E5E
	for <lists+devicetree@lfdr.de>; Wed, 13 Mar 2024 14:10:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 11A2946535;
	Wed, 13 Mar 2024 14:09:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b="fKI9P0R6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f171.google.com (mail-lj1-f171.google.com [209.85.208.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 984044CB4A
	for <devicetree@vger.kernel.org>; Wed, 13 Mar 2024 14:09:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710338944; cv=none; b=shB/cbx3E4V3/CINKo0vjQyjZ786O8ltIthzIKm+H3WdS2nru+qhI/QCXd0moIhrWaK7jY0U0EoZ0YG6XrMOWpBSdfg/8moQU0T1bkh6U8912oJTW43JBezjNlK1g+GpHxaCGvoVepfI3GNtp2DzdO2V4ba4FiqpO83x/CoJeYQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710338944; c=relaxed/simple;
	bh=4andNj366bp0pW3FwTiCNyJleT43bWmvqce9qbK9mVQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=PTy5k9hOyEcKJEB+OHQ+T6uyGBbHjMCHu6E1ICM6LwE7pMj6Rb7rqeJ/05gJecVPAVaMg7epYCukltLF1jmRIb4jUpGMpM1XHboIUFDVyNJ1D+d/cthB6seksFJ3o2MYuGzyM5+UwSvpE8DV6ePMIqHKBNbrYkLF5PDy6+mY+Bc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com; spf=pass smtp.mailfrom=suse.com; dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b=fKI9P0R6; arc=none smtp.client-ip=209.85.208.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=suse.com
Received: by mail-lj1-f171.google.com with SMTP id 38308e7fff4ca-2d29111272eso114245671fa.0
        for <devicetree@vger.kernel.org>; Wed, 13 Mar 2024 07:09:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suse.com; s=google; t=1710338939; x=1710943739; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/xE94iw3mEagAF+/7KUdjRC+1ga8rdDd3hiFvVOScHQ=;
        b=fKI9P0R6HbzhTRBfyWlx5THtNo7ELRPAK/a88LLFRYZmsfEDx2PUiatvESQw5U7H+P
         yyNSmvR7L14DcuLoqNxh51YH4yAShqmcgRFn7bkZlx1QrD0xJIphGLo075pZPMHRmJHJ
         UVUKyFGV4YFTX3tzRw3b6D6ABxQhYotEdNGmhXXM+FcQMsFABaeBH6vCRr+WduZ+jkKU
         JNhtN8u9xYle5GxScd2MJwZmv+md15fsts636/J1g7pCgkSHOz1YAgmt8GJpOMxvUTfE
         tZEFlPi1qGaNdmBk5k12DVb8GPEEtW8BMDZuXaD119bAMd9ZpioO2gpXhNQEY5ryAXl8
         BVZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710338939; x=1710943739;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/xE94iw3mEagAF+/7KUdjRC+1ga8rdDd3hiFvVOScHQ=;
        b=G9SStRpIXUzM1B8dxVM5JbsKxVVUfUQCgPoEcrE8AYuskxpDIZX9erE/km5x6JK4z2
         1a1wdMdmg30sStLvITKlchuWGKpIevFmBbeoIdxMibU9ZdoqfYEFBG6xph9Y1rs/Jz/L
         +OjzvlX3ELiPU/KXuPmpIq2wjL1xFrQHK8gt2zHbyRzeMFcV2YaugFik/xg5GSYC+5vu
         l6CYgBL9ug/ipQRJGrqRUBcEaprCCpVFhh+PJL2RnkAHRrrsGbilGmmTlJkBqM1hFBwE
         OjQ8CGT6dub5sayGlIo5RS7jp2wQMQ0rAT3tg5Tad4LBTkHPpM3rdJekJMw6DkqTCxgt
         W7og==
X-Forwarded-Encrypted: i=1; AJvYcCXmwcjHFJvykgydv0a6P3lXKoD8TAG6oGCMox5Y5kPwA3eqRBRlN2ralFZfnmHUzRykCaECttdznjLx6xmrWFIOXNiVCveA7C9HTQ==
X-Gm-Message-State: AOJu0YxA+u4jz0aRa3+8JibeQxKjwv7X98MQIcC3ni8DndWbQs+OASlI
	l2FSCBwaogesgR9TKFAEg/gsO/GU0I6KM3KBW0JoLkrwYwUeembE4QVcJjxeCEE=
X-Google-Smtp-Source: AGHT+IGXCM0cKznBWGqJ434M1t+ZyGCueMZWhnfsJta91SqnLtQTo1W4zmpjpEXIYq8BRQy0a3lQ5w==
X-Received: by 2002:a05:651c:222b:b0:2d2:751f:abb2 with SMTP id y43-20020a05651c222b00b002d2751fabb2mr4008668ljq.3.1710338938746;
        Wed, 13 Mar 2024 07:08:58 -0700 (PDT)
Received: from localhost (host-82-56-173-172.retail.telecomitalia.it. [82.56.173.172])
        by smtp.gmail.com with ESMTPSA id ck14-20020a0564021c0e00b0056857c89045sm3228556edb.60.2024.03.13.07.08.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Mar 2024 07:08:58 -0700 (PDT)
From: Andrea della Porta <andrea.porta@suse.com>
To: Vinod Koul <vkoul@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	Ray Jui <rjui@broadcom.com>,
	Scott Branden <sbranden@broadcom.com>,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	Saenz Julienne <nsaenz@kernel.org>,
	dmaengine@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-rpi-kernel@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	dave.stevenson@raspberrypi.com
Cc: Phil Elwell <phil@raspberrypi.org>,
	Maxime Ripard <maxime@cerno.tech>,
	Stefan Wahren <stefan.wahren@i2se.com>,
	Dom Cobley <popcornmix@gmail.com>,
	Andrea della Porta <andrea.porta@suse.com>
Subject: [PATCH v2 08/15] dmaengine: bcm2835: move CB final extra info generation into function
Date: Wed, 13 Mar 2024 15:08:33 +0100
Message-ID: <a0c81f82e7732d3a6eeb304b32394e75d88410b5.1710226514.git.andrea.porta@suse.com>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <cover.1710226514.git.andrea.porta@suse.com>
References: <cover.1710226514.git.andrea.porta@suse.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Similar to the info generation, generate the final extra info with a
separate function. This is necessary to introduce other platforms
with different info bits.

Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>
Signed-off-by: Andrea della Porta <andrea.porta@suse.com>
---
 drivers/dma/bcm2835-dma.c | 31 +++++++++++++++++++++++++------
 1 file changed, 25 insertions(+), 6 deletions(-)

diff --git a/drivers/dma/bcm2835-dma.c b/drivers/dma/bcm2835-dma.c
index c651aca363c2..b633c40142fe 100644
--- a/drivers/dma/bcm2835-dma.c
+++ b/drivers/dma/bcm2835-dma.c
@@ -254,6 +254,26 @@ static u32 bcm2835_dma_prepare_cb_info(struct bcm2835_chan *c,
 	return result;
 }
 
+static u32 bcm2835_dma_prepare_cb_extra(struct bcm2835_chan *c,
+					enum dma_transfer_direction direction,
+					bool cyclic, bool final,
+					unsigned long flags)
+{
+	u32 result = 0;
+
+	if (cyclic) {
+		if (flags & DMA_PREP_INTERRUPT)
+			result |= BCM2835_DMA_INT_EN;
+	} else {
+		if (!final)
+			return 0;
+
+		result |= BCM2835_DMA_INT_EN;
+	}
+
+	return result;
+}
+
 static void bcm2835_dma_free_cb_chain(struct bcm2835_desc *desc)
 {
 	size_t i;
@@ -685,7 +705,8 @@ static struct dma_async_tx_descriptor *bcm2835_dma_prep_dma_memcpy(
 	struct bcm2835_chan *c = to_bcm2835_dma_chan(chan);
 	struct bcm2835_desc *d;
 	u32 info = bcm2835_dma_prepare_cb_info(c, DMA_MEM_TO_MEM, false);
-	u32 extra = BCM2835_DMA_INT_EN;
+	u32 extra = bcm2835_dma_prepare_cb_extra(c, DMA_MEM_TO_MEM, false,
+						 true, 0);
 	size_t max_len = bcm2835_dma_max_frame_length(c);
 	size_t frames;
 
@@ -716,7 +737,7 @@ static struct dma_async_tx_descriptor *bcm2835_dma_prep_slave_sg(
 	struct bcm2835_desc *d;
 	dma_addr_t src = 0, dst = 0;
 	u32 info = bcm2835_dma_prepare_cb_info(c, direction, false);
-	u32 extra = BCM2835_DMA_INT_EN;
+	u32 extra = bcm2835_dma_prepare_cb_extra(c, direction, false, true, 0);
 	size_t frames;
 
 	if (!is_slave_direction(direction)) {
@@ -764,7 +785,7 @@ static struct dma_async_tx_descriptor *bcm2835_dma_prep_dma_cyclic(
 	dma_addr_t src, dst;
 	u32 info = bcm2835_dma_prepare_cb_info(c, direction,
 					       buf_addr == od->zero_page);
-	u32 extra = 0;
+	u32 extra = bcm2835_dma_prepare_cb_extra(c, direction, true, true, 0);
 	size_t max_len = bcm2835_dma_max_frame_length(c);
 	size_t frames;
 
@@ -780,9 +801,7 @@ static struct dma_async_tx_descriptor *bcm2835_dma_prep_dma_cyclic(
 		return NULL;
 	}
 
-	if (flags & DMA_PREP_INTERRUPT)
-		extra |= BCM2835_DMA_INT_EN;
-	else
+	if (!(flags & DMA_PREP_INTERRUPT))
 		period_len = buf_len;
 
 	/*
-- 
2.35.3


