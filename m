Return-Path: <devicetree+bounces-68043-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 91BA58CAA1B
	for <lists+devicetree@lfdr.de>; Tue, 21 May 2024 10:36:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 464651F2106D
	for <lists+devicetree@lfdr.de>; Tue, 21 May 2024 08:36:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BB08757C8B;
	Tue, 21 May 2024 08:35:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b="Pw0ZRPHA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 933EB6D1A3
	for <devicetree@vger.kernel.org>; Tue, 21 May 2024 08:35:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716280513; cv=none; b=Vewlu4I1GTb9K5Hr1KaLaMlybJzY8jTjRp5hgy4bzbeidxePc6caTGtQ+kKe9azivRMD5PZYtNRCcHJ06mPflERckVXPy4bm2UO43T3zqMJ2pSiVFTmr7u8OLwzoMDaIv8rY1Wj28detg2YHOsMdahNZiUlDz+BCIGVEGhatv8U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716280513; c=relaxed/simple;
	bh=9k25ZsPTf+WrTiK8qVLkskl+r232la4YhtO+5MWY/Sk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=H2mSA5s1Wb1Miivzv4G3wzEkjvKd9icN6p9MdfnAMny+3Z9EDTfQsNY6cQlE5ACiwLTMaxLtQExTZf7/D1sF4IMTg41RURu8wT1i4J0DcviTUgkl5Vut3Gjm6GQuzo7/6ZgFQJshoguSoHsfx5JptX90TBT2R4Nb/sOA4j9dPH4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com; spf=pass smtp.mailfrom=suse.com; dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b=Pw0ZRPHA; arc=none smtp.client-ip=209.85.218.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=suse.com
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-a5a0013d551so455590466b.2
        for <devicetree@vger.kernel.org>; Tue, 21 May 2024 01:35:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suse.com; s=google; t=1716280509; x=1716885309; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sE1zrpU4sY3RHfj/RfOgVZHYb52D/eP6ho+94PIl9YU=;
        b=Pw0ZRPHAzzYC6/ONfa/PFJAWG0VTChASjdFU7viYyzKJFfXJ7ZZILcW3K6/Fn9Duy7
         v9Lz8RjRhe9B4t2P1PNnScM/xgTszJnxy4QRqiujEcc8rJcA6wyW/rb7TXOhDmNVhHCS
         CjEhYD23i+9G64QHuCNZFzXE4vOxC0s6iyYxjgWFnDciOTq/lkGMPFBbrCHUaCuWOzo3
         w+n9MQltA00m38xLboWecFJzaIH7OFSdKl9lrxk6IxBVwJ1qhLc7bWXmNGfU+aImaYn7
         OaXUY6yT8GEZfys2Rld6QIUEPBUDpIz1q4j4tzrCu2uehlUerS8FAqeNbdozRuX3+D02
         voJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716280509; x=1716885309;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=sE1zrpU4sY3RHfj/RfOgVZHYb52D/eP6ho+94PIl9YU=;
        b=Vsn0oNaY6rAxEca0tJyywMaKxBfhanZArBgKMrgvQlsy7F41/BQmKwMO94Bx7veoFF
         lBHRnUT1W/Wm/WAkwcyq8xAndTUPi/o+QBtjdE85/TUYI+NadXVNtTV9mBDUVVVNLorO
         S9cuwwWkEo1VhL30FT2tukSPKJVjnFViWSOSF7OrAVY+wXU+Awjk6ZJdjiwHvT8CdNrw
         8PTcODHwEtP/IJGhLZ5SSQ8hT7yimP+T4+ZB2lDraScdaVlP+8zJqVbEam6ZBzQUPrVX
         LNYPHp84LxhJCWKRnwuZmT6r0NZik+DSWoRbauJIXH3/5m4JhtGckQ9CpYTNUHtNBs9q
         wEfw==
X-Forwarded-Encrypted: i=1; AJvYcCWou1uxkj4EnHRnOdKU+UyJBoy7hyc4i5OgLD5xVp5YPchRzanLDIoTNVOcqhCuauGb9BZjHfx+I/51AAMcJU0rpcz5ivWBuNnn2A==
X-Gm-Message-State: AOJu0YyPUZBiP/OvUXj8zP59dRBLzbv1+Bta6rxvbyS4UjGpSJWuhD7t
	+8NKWswwbJhkkJuaNKo79H+VzeRHOrn3BFO1pdbIX2mUO3kUwEj/9mWykORyBDs=
X-Google-Smtp-Source: AGHT+IFdOJDaXxwt3G/XzqPJASfDE2cQLEMIY3fQlL8rVbF4b17JPtcvYhCbyKk+sH7uacDvaHu6OQ==
X-Received: by 2002:a50:d518:0:b0:575:2ccc:13c1 with SMTP id 4fb4d7f45d1cf-5752ccc14damr6751138a12.9.1716280508952;
        Tue, 21 May 2024 01:35:08 -0700 (PDT)
Received: from localhost (host-87-18-209-253.retail.telecomitalia.it. [87.18.209.253])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a5a1787c63bsm1577804466b.51.2024.05.21.01.35.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 May 2024 01:35:08 -0700 (PDT)
From: Andrea della Porta <andrea.porta@suse.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	Ray Jui <rjui@broadcom.com>,
	Scott Branden <sbranden@broadcom.com>,
	Marc Zyngier <maz@kernel.org>,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	Ulf Hansson <ulf.hansson@linaro.org>,
	Adrian Hunter <adrian.hunter@intel.com>,
	Kamal Dasu <kamal.dasu@broadcom.com>,
	Al Cooper <alcooperx@gmail.com>,
	Stefan Wahren <wahrenst@gmx.net>,
	devicetree@vger.kernel.org,
	linux-rpi-kernel@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-mmc@vger.kernel.org
Cc: Andrea della Porta <andrea.porta@suse.com>,
	Conor Dooley <conor.dooley@microchip.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v3 1/4] dt-bindings: arm: bcm: Add BCM2712 SoC support
Date: Tue, 21 May 2024 10:35:13 +0200
Message-ID: <b852cf1fc20db8fb7fd81900b6df0498f1086008.1716277695.git.andrea.porta@suse.com>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <cover.1716277695.git.andrea.porta@suse.com>
References: <cover.1716277695.git.andrea.porta@suse.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The BCM2712 SoC is found on Raspberry Pi 5. Add compatible string to
acknowledge its new chipset.

Signed-off-by: Andrea della Porta <andrea.porta@suse.com>
Reviewed-by: Stefan Wahren <wahrenst@gmx.net>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/arm/bcm/bcm2835.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/bcm/bcm2835.yaml b/Documentation/devicetree/bindings/arm/bcm/bcm2835.yaml
index 162a39dab218..e4ff71f006b8 100644
--- a/Documentation/devicetree/bindings/arm/bcm/bcm2835.yaml
+++ b/Documentation/devicetree/bindings/arm/bcm/bcm2835.yaml
@@ -23,6 +23,12 @@ properties:
               - raspberrypi,4-model-b
           - const: brcm,bcm2711
 
+      - description: BCM2712 based Boards
+        items:
+          - enum:
+              - raspberrypi,5-model-b
+          - const: brcm,bcm2712
+
       - description: BCM2835 based Boards
         items:
           - enum:
-- 
2.35.3


