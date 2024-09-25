Return-Path: <devicetree+bounces-105230-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AA9098577F
	for <lists+devicetree@lfdr.de>; Wed, 25 Sep 2024 13:01:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D846B1F2445D
	for <lists+devicetree@lfdr.de>; Wed, 25 Sep 2024 11:01:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 03182155742;
	Wed, 25 Sep 2024 11:01:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="hOVCZeXf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f176.google.com (mail-pf1-f176.google.com [209.85.210.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A1ED14C5AF
	for <devicetree@vger.kernel.org>; Wed, 25 Sep 2024 11:01:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727262086; cv=none; b=Q9DWS5xVWU34JRjMJFPmQf3rJxcMtZD7qdOi/TVPUUlc0L6PMvmiHWJ3xzp4Ej6XOrqsgDQ4k1oZcKfmmrKwPjO8s3HA0ebzSbzScbHa3TeQzCYIyUUe9zMhWtvBSDh2X9AMBxJwiIAAkTMoHNQRweeA8N27/0f8+0+2mhafXis=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727262086; c=relaxed/simple;
	bh=q/tDIQcwb90Jb2IXrq0hODLYDVzUBiOWeWXKNBlnfM8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=bjowLVuaVCH8nEfywlb6PLegf92nFnpj/ZsbH5bgRY9VH2NLRhHmiQRyDu0iE4RgZxp4r2wL+30MR1pkJ7zydxSEjiQOivkJSBl7LArQrac8CtqynK3qQ6tUMAthVzxLXBd+2ToYJlPvdpYRxoNCXnABYIhra1vSeROWZ9ciEgU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=hOVCZeXf; arc=none smtp.client-ip=209.85.210.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pf1-f176.google.com with SMTP id d2e1a72fcca58-71afb729f24so1301168b3a.0
        for <devicetree@vger.kernel.org>; Wed, 25 Sep 2024 04:01:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1727262085; x=1727866885; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QVeMj7wLnXufiIx19gdVV+26XJBDhZuDvTGjagZ/exM=;
        b=hOVCZeXf5y7/INL5Z4bYT036dJY2XDVPllMDum8i12EFjY3E8I2k47LfTs5yoy4E2t
         GKhKOy1BK6ZrkijgmxSGUit84ViUVpWzWMFVBYJwiwdairLoBNYOkFCPfjkfIwS5n8ty
         kD6u4ISEkX5PzbgpuTBbHjukCBpZh0FE8BlQ4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727262085; x=1727866885;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QVeMj7wLnXufiIx19gdVV+26XJBDhZuDvTGjagZ/exM=;
        b=PbkvW8m1ZMNNNTZcMqRsRBwF+1NOh4vlhP2ZXzU4hDCkQ5IZpmu0Fko/B911OQwdAi
         I1vzBI/uc4vDdVDK8C2vYS5B2yYYqfwiTWmFNkQzQ8Qiy+18NRv6611mZ6xDwQJ0ZgEN
         ldp5chjgWXm4txLGni99ZKJ+uPOvE+ygbYlXjPC2OW3SYCQxZb6wqVwokvFqNwvj759K
         MhdCkMOEbNGdzo61C/w4BpPPjSnHPuqNmIEhpQ5QDPVuwr2NqwwzNQLQERTV7sr1zRIJ
         0vcFLWkF4m+svyUjipVyLeXytk1eqZ9XTj+0/KQ6Iw1YgCBm8JCwAyMtHHXmYsbk53xy
         NZjw==
X-Forwarded-Encrypted: i=1; AJvYcCWlaCOiY+q5dkcjIYPKaZpJL4u2cMt4Xb1sxgQxknY1ZeRCxxud/EXzUV1Fa83kt8dZhN1v0pQjqTYq@vger.kernel.org
X-Gm-Message-State: AOJu0YzFEIvbrQ3zPju5BDgWS7TJGBuoxYliYdEaLBV8pqN5p6FCt2nK
	NP7LQ9uIZW89qTugW0sKoh9Vmz8HiVIUDkFlOjnQfMOdbia3kt13+5nCdO+QzA==
X-Google-Smtp-Source: AGHT+IFvn40kXszElCdDiZEOckut6uDsZhbA1ymXKe+lan+5/nDemYiY5zux8PnoVFCzu4aMNSiAeQ==
X-Received: by 2002:a05:6a00:b81:b0:706:3329:5533 with SMTP id d2e1a72fcca58-71b0afa2c26mr3124717b3a.24.1727262084788;
        Wed, 25 Sep 2024 04:01:24 -0700 (PDT)
Received: from fshao-p620.tpe.corp.google.com ([2401:fa00:1:10:2b86:78b6:8ebc:e17a])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-7e6b7c73085sm2570298a12.59.2024.09.25.04.01.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Sep 2024 04:01:24 -0700 (PDT)
From: Fei Shao <fshao@chromium.org>
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Fei Shao <fshao@chromium.org>,
	"Rob Herring (Arm)" <robh@kernel.org>,
	Alexandre Mergnat <amergnat@baylibre.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Fabien Parent <fparent@baylibre.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	MandyJH Liu <mandyjh.liu@mediatek.com>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	Ulf Hansson <ulf.hansson@linaro.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-mediatek@lists.infradead.org
Subject: [PATCH 1/6] dt-bindings: power: mediatek: Add another nested power-domain layer
Date: Wed, 25 Sep 2024 18:57:45 +0800
Message-ID: <20240925110044.3678055-2-fshao@chromium.org>
X-Mailer: git-send-email 2.46.0.792.g87dc391469-goog
In-Reply-To: <20240925110044.3678055-1-fshao@chromium.org>
References: <20240925110044.3678055-1-fshao@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The MT8188 SoC has a more in-depth power-domain tree, and the
CHECK_DTBS=y check could fail because the current MediaTek power
dt-binding is insufficient to cover its CAM_SUBA and CAM_SUBB
sub-domains.

Add one more nested power-domain layer to pass the check.

Acked-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Fei Shao <fshao@chromium.org>
---

 .../devicetree/bindings/power/mediatek,power-controller.yaml  | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/power/mediatek,power-controller.yaml b/Documentation/devicetree/bindings/power/mediatek,power-controller.yaml
index 8985e2df8a56..a7df4041b745 100644
--- a/Documentation/devicetree/bindings/power/mediatek,power-controller.yaml
+++ b/Documentation/devicetree/bindings/power/mediatek,power-controller.yaml
@@ -54,6 +54,10 @@ patternProperties:
             patternProperties:
               "^power-domain@[0-9a-f]+$":
                 $ref: "#/$defs/power-domain-node"
+                patternProperties:
+                  "^power-domain@[0-9a-f]+$":
+                    $ref: "#/$defs/power-domain-node"
+                    unevaluatedProperties: false
                 unevaluatedProperties: false
             unevaluatedProperties: false
         unevaluatedProperties: false
-- 
2.46.0.792.g87dc391469-goog


