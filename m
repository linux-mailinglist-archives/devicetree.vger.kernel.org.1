Return-Path: <devicetree+bounces-80613-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 69B6B91A106
	for <lists+devicetree@lfdr.de>; Thu, 27 Jun 2024 09:59:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 841B91C213CD
	for <lists+devicetree@lfdr.de>; Thu, 27 Jun 2024 07:59:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 67FC65C8FA;
	Thu, 27 Jun 2024 07:59:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bade.nz header.i=@bade.nz header.b="IGdlWXaY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f175.google.com (mail-pg1-f175.google.com [209.85.215.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 93D8B288BD
	for <devicetree@vger.kernel.org>; Thu, 27 Jun 2024 07:59:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719475183; cv=none; b=qyUKTXpKyBtRaaENS95Mf8yCERVY27EJV/syo0+yJoFDEy9GqvLxXOoSuJXXAkbiX8zY6mrSvkN3Jy+XjlI4wU7ZeLkDKYzfPqFx1iVM68GTF3btyg0q1Q3TpV25EVORpzah65heFuwlP4BDB8w0S3lXVx2F5z5cJO/+rFDhhnc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719475183; c=relaxed/simple;
	bh=8NweQCCg7+o3Aar+yE+YteM7lG9Jkmb8X5ErfZfT9xs=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=VoKMi9jmDKr5vB5yx8IYCqpEuSp03tjF+WE76nxugrPL4fl3ana8ekcJxF8oRd5yt5XbOy8pZ2eaO4aNgGUrkK6qMrn8RjszhupMQO0YP6GgB9AYH79Nj7/yPmnIrHrKjsBL9KrHxc8iWCWoqOXvD++5a9dfNbQC+zzTtQaOnU8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=bade.nz; spf=pass smtp.mailfrom=leithalweapon.geek.nz; dkim=pass (2048-bit key) header.d=bade.nz header.i=@bade.nz header.b=IGdlWXaY; arc=none smtp.client-ip=209.85.215.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=bade.nz
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=leithalweapon.geek.nz
Received: by mail-pg1-f175.google.com with SMTP id 41be03b00d2f7-6bce380eb9bso4627496a12.0
        for <devicetree@vger.kernel.org>; Thu, 27 Jun 2024 00:59:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bade.nz; s=google; t=1719475180; x=1720079980; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BkBpPkBgBA3ODAja8zGIcwpt50GSoIUtolN0QhQXZcQ=;
        b=IGdlWXaYZtZSsqMxpaCgb2Y2dTndK2zkOPVFaJlxlNrRb7ooqKixCEmUoqHX2JiRnn
         WYEZIlIaDC8TzeeW2vorUVVZxOX6Wycv4BiRAD6fMyv+wVsIRT/+nmN6el/AQ+hl07Pj
         PZVVpMjfnCNp7EGdBs8lvbNAAKCGZdw6xlgSNuC8pS6QePiMONyRam24YYDDEV4aunRS
         t0eoY8K/CsOipqswJF9QZFsajU+Soa00flEaWNAOVlz9IRBFfKzcoyKGwAsFEcXhaLRz
         tr2Mc867jTGkR2Jfx6JlfV2lud/ljhmQX9AtrtiBWMDDTKDCCm7Nnb0HGCbsSBQkeacs
         apzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719475180; x=1720079980;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BkBpPkBgBA3ODAja8zGIcwpt50GSoIUtolN0QhQXZcQ=;
        b=p7UYFYWVlcAaxiJDmAlZWfhDtAu0x3DUSWQt3+h91QJOVDz3mRZfQ9IEPtpKcNWRjp
         D+JGHfE1H6pHADj97IR6Itw83pIeMpmCRo785VRWZeP9TMGgZ+aqogyeOE+TQVzgXxpP
         +UE5CDv3HF9C8a4X8IULAg91rJx+zvUp5XX3HbsFB97Qg90rXGe/UpwLIqSoymUYBrls
         yNDKG6lLTCDpHrVRZN4ry8jk9bGJji2U8xp7mHi4NOeWP0kRO81VJPtqTajj9L/7w4P0
         LCNJTQChzF6lJ9tWh8wzEX3uy5mgJWJvIQG8cfqnLmOZa2LGFhCrcKj+OFwtLuldp8Rj
         jXUg==
X-Gm-Message-State: AOJu0YyB6NT0iiiMk/wLbbWuhfpyW1luJuTOBlJl2LoSHz/16kIPabAQ
	iZIvTH3PxnblupWOW6xAQToEekL3jbKCSlwpyTanyz7fyAR9DCTbQf/VwMjYVH3SNuLHy5cTt40
	I6PBs
X-Google-Smtp-Source: AGHT+IEXToHGxpVGoEz8ifOQW7GTguBEcp/knYddtQGBeIRtKWqgX5quU9fqgATZlNifTQih+UOzCA==
X-Received: by 2002:a05:6a20:b2a9:b0:1be:c2af:5626 with SMTP id adf61e73a8af0-1bec2af566dmr2984750637.4.1719475179932;
        Thu, 27 Jun 2024 00:59:39 -0700 (PDT)
Received: from localhost.localdomain ([2403:5816:cd6c:0:6d45:ae2f:1ead:bd58])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-1faac9c4cf4sm7181895ad.290.2024.06.27.00.59.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Jun 2024 00:59:39 -0700 (PDT)
From: Leith Bade <leith@bade.nz>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	matthias.bgg@gmail.com,
	angelogioacchino.delregno@collabora.com,
	frank-w@public-files.de
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	didi.debian@cknow.org,
	Leith Bade <leith@bade.nz>
Subject: [PATCH 1/4] arm64: dts: mediatek: mt7986: fix the switch reset line on BPI-R3
Date: Thu, 27 Jun 2024 17:58:53 +1000
Message-Id: <20240627075856.2314804-2-leith@bade.nz>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240627075856.2314804-1-leith@bade.nz>
References: <20240627075856.2314804-1-leith@bade.nz>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The current GPIO definition for the MT7531 switch reset line incorrectly
specifies a pin GPIO_0 (GPIO5) that is connected to the boot mode
selection DIP switch (SW1).

In the public schematic for the BPI-R3 (titled "BPI-R3-MT7986A",
revision "V1.1", sheet 4), the SPI1_CS (GPIO32) pin of the MT7986 (U1E)
is connected to the GbE_RESET net.

Frank Wunderlich has told me, via the Banana Pi forum, that this GbE_RESET
net connects to the MT7531 reset line in the private part of the shematic
he has a copy of.

Signed-off-by: Leith Bade <leith@bade.nz>
---
 arch/arm64/boot/dts/mediatek/mt7986a-bananapi-bpi-r3.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt7986a-bananapi-bpi-r3.dts b/arch/arm64/boot/dts/mediatek/mt7986a-bananapi-bpi-r3.dts
index ed79ad1ae871..951612ea1e66 100644
--- a/arch/arm64/boot/dts/mediatek/mt7986a-bananapi-bpi-r3.dts
+++ b/arch/arm64/boot/dts/mediatek/mt7986a-bananapi-bpi-r3.dts
@@ -206,7 +206,7 @@ switch: switch@31 {
 		interrupt-controller;
 		#interrupt-cells = <1>;
 		interrupts-extended = <&pio 66 IRQ_TYPE_LEVEL_HIGH>;
-		reset-gpios = <&pio 5 GPIO_ACTIVE_HIGH>;
+		reset-gpios = <&pio 32 GPIO_ACTIVE_HIGH>;
 	};
 };
 
-- 
2.25.1


