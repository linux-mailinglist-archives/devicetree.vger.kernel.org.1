Return-Path: <devicetree+bounces-11393-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DDBF47D5989
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 19:13:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 19EF81C20B97
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 17:13:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 81DC53A290;
	Tue, 24 Oct 2023 17:13:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="GBX3+ajU"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F123E3A286
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 17:13:22 +0000 (UTC)
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com [IPv6:2a00:1450:4864:20::131])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8FC33122;
	Tue, 24 Oct 2023 10:13:21 -0700 (PDT)
Received: by mail-lf1-x131.google.com with SMTP id 2adb3069b0e04-507bd64814fso6875918e87.1;
        Tue, 24 Oct 2023 10:13:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1698167600; x=1698772400; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=q35Px7RIOLFQ2tv3JiGGnvjx9fOPn74ja8lDfqI7X2c=;
        b=GBX3+ajUKijPqqTI7BuejALzhuJapaLGUz0qZbGN4Mcm3Zb9QDad0kalB1bew1TRIU
         7uxRFS3npwf2ZV22YW4jTdEP0xs0GBt+yQLp1CahNjTUDwo981kmcwOAikJDC/VIfR6A
         q4lgIwlIlAJk4Mr2zfpqsqQCNify6TPb1Ueb7y0LXv/KIpoD8PKfjIjzYUmUGWpZCEPU
         URFMzw0VtNF7xbRK4NXhFC47DaPG9LHFMXE/ciZAeZS576AJEwr/TpyURwLrVh8STH0q
         aoMPO/LQZUKxSqHRLWcu9mNHgNPoSURvW/XP2Fmoc+4f9rytswp1mW3WnVic7IDV0uOP
         ZjBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698167600; x=1698772400;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=q35Px7RIOLFQ2tv3JiGGnvjx9fOPn74ja8lDfqI7X2c=;
        b=CabREMTXSGu8gQJDr/q8oSYo3PDk/91/TGNGtWzVcleS8ohkw5DrzI/s9XqODtVENS
         d4QcjB6j0hxDPuzLyHPxQKeF+myK23r8d8EmpP6UJEI8YwaKHooLZ0OBV+JiN9x6kDzj
         SVAR8c1sXYtzeDjFrVG+hV5oZdMoh2Qb9ItAI92bAE1+PtA2XW88fXDfG5Lc8Seiger1
         Oul/oTDMQGkfs1lVlZwP4HfE6TTz7ownITAEJ7spaRHO2z5YDHqqwgYYr48/nMxmEHYg
         LHNFcHcVegPLv0NBoCQhdKJWuoSPhFePgbJfv8Rovdx+YsSD3gywZVhXlv1Yy9YOAW+n
         ELvA==
X-Gm-Message-State: AOJu0Yxk2iuAVjQo5beR8r3RG0vrzvh9TvQkLOb6ENq9W/UdbVDkbYto
	dI2Tek6Kw7TiH4VpLHWpzog=
X-Google-Smtp-Source: AGHT+IEpe8c+FhGADyyGxC/YOQXGPU6MPBqGVDVSGUiFQMZhx+kKrT8W1MlOev6pkIFQ3ABCFXwqmw==
X-Received: by 2002:ac2:5e9c:0:b0:507:8f1b:ff59 with SMTP id b28-20020ac25e9c000000b005078f1bff59mr8656097lfq.62.1698167599424;
        Tue, 24 Oct 2023 10:13:19 -0700 (PDT)
Received: from localhost.lan (031011218106.poznan.vectranet.pl. [31.11.218.106])
        by smtp.gmail.com with ESMTPSA id o12-20020ac24e8c000000b00505a5ea726asm2202413lfr.309.2023.10.24.10.13.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Oct 2023 10:13:18 -0700 (PDT)
From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
	Rob Herring <robh+dt@kernel.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Bartosz Golaszewski <brgl@bgdev.pl>,
	Chen-Yu Tsai <wens@csie.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>,
	Maxime Ripard <mripard@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-i2c@vger.kernel.org,
	linux-sunxi@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	=?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>,
	Rob Herring <robh@kernel.org>
Subject: [PATCH 6.7 fix 1/2] dt-bindings: nvmem: SID: allow NVMEM cells based on old syntax
Date: Tue, 24 Oct 2023 19:12:52 +0200
Message-Id: <20231024171253.19976-1-zajec5@gmail.com>
X-Mailer: git-send-email 2.35.3
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

From: Rafał Miłecki <rafal@milecki.pl>

This binding supported NVMEM cells as subnodes and that syntax is used
by few in-kenel DTS files. Modify binding to allow it.

Reported-by: Rob Herring <robh@kernel.org>
Fixes: c5330723d5a0 ("dt-bindings: nvmem: move deprecated cells binding to its own file")
Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
---
This fixes issue introduced by v6.7 queued char-misc commit:
https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/char-misc.git/commit/?h=char-misc-next&id=c5330723d5a0c77299a38a46e5611a584e887b87
---
 .../devicetree/bindings/nvmem/allwinner,sun4i-a10-sid.yaml       | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/nvmem/allwinner,sun4i-a10-sid.yaml b/Documentation/devicetree/bindings/nvmem/allwinner,sun4i-a10-sid.yaml
index 0928ec408170..4424c3c5e75c 100644
--- a/Documentation/devicetree/bindings/nvmem/allwinner,sun4i-a10-sid.yaml
+++ b/Documentation/devicetree/bindings/nvmem/allwinner,sun4i-a10-sid.yaml
@@ -12,6 +12,7 @@ maintainers:
 
 allOf:
   - $ref: nvmem.yaml#
+  - $ref: nvmem-deprecated-cells.yaml#
 
 properties:
   compatible:
-- 
2.35.3


