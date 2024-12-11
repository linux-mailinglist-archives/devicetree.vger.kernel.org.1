Return-Path: <devicetree+bounces-129589-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D36419EC434
	for <lists+devicetree@lfdr.de>; Wed, 11 Dec 2024 06:24:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 88FDF285778
	for <lists+devicetree@lfdr.de>; Wed, 11 Dec 2024 05:24:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5C9131C2317;
	Wed, 11 Dec 2024 05:24:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="EQsp/ycf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f176.google.com (mail-pf1-f176.google.com [209.85.210.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1C361C1F0D
	for <devicetree@vger.kernel.org>; Wed, 11 Dec 2024 05:24:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733894679; cv=none; b=LRNDmlmkhHqx8Ig+dyeRxhwMUVMagjJ0j8dmRIK2BTeVKdijGMixIxgT/aGNgtk7ewSzES45NgVYVHl673YS0OPDSvkDFM5YHmHmqIxjw9nU0sFKj92/hkoiK1Q0JWU2Qb9BeNNUDEiabbsRBy3fqfqWqZr6PBK6OT/NUUz2gK8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733894679; c=relaxed/simple;
	bh=YkHq7D+rlNexmE0dy3Najsp7Zr+LoaWgmv/7GupaDx8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Ee1ZU6P2RkYk7gxmZFpU3akj9nK/fAZKS3ddh8N10XPoLtAOrm1kYsspu7kYMSLSN9ndRtOmpFrdi9uXoveI8IaobnEGroVrCQqLyGjT7Y/9WaxJC3hqH7MIdJOI/gEzrOeRCJJU7yRSEGx+/g7s4XNgR8xXVnlyLHfb9OUZqVg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=EQsp/ycf; arc=none smtp.client-ip=209.85.210.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pf1-f176.google.com with SMTP id d2e1a72fcca58-728e78c4d7bso271415b3a.0
        for <devicetree@vger.kernel.org>; Tue, 10 Dec 2024 21:24:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1733894677; x=1734499477; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Jun60MmpzFO+KyxqgW/fdFZZGJL7nbsZCnl87/9ABDo=;
        b=EQsp/ycfTfWZw3IwZROKj5Ck57/NxV23e6MPcdQqsSxDA9e2ZlexCvL1B0bCZhu/sl
         T/yjoA/qvuF3cZmqcIAdD2kMa3upvRUnAJv3X9bL1RKZM7QS4LuMp/g7HeMqd7BVff2a
         JDwgFEb0LnVXvsbJ9DcYQy4KN7Ly227O+8gME=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733894677; x=1734499477;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Jun60MmpzFO+KyxqgW/fdFZZGJL7nbsZCnl87/9ABDo=;
        b=HYJD2jDukmFZymX68Yw93EaMJgOvKa+LssAE17+zpqwRzDnLXy8Gkb1a+PSQntiQoK
         afJHX0Yd0b+upLI9EHj/63Kw3DAkjq4R8BlJvmT7pbJI19RarzVAq3REF43wHM/g0Mrj
         7TI53C4ZY4DCcSLd1+tAEXGns2xTgaNvNlfhY0oiKPq32XUpr4iC4y2+IxrFXsqwIoA8
         LFPva/W66rGZIdfA+E+CF4S6XOI3JzRwD9fCCWrgCIhxT89T3gYtaIHpUWMxlArOONHP
         /LMYW0evwdyK3j1JARKC3Wupu/MNUvB1ZiVjgQ+yOEGWpRouuX23wMbqiU7luAprfay5
         DK+w==
X-Forwarded-Encrypted: i=1; AJvYcCWOM2LEciUkYjtuSkfFMkP8soWrtGMEQpURuLOxLkUXZB+5Ixw8KK99ak8dLRbk+bQlul3O03cMqYJE@vger.kernel.org
X-Gm-Message-State: AOJu0YzsdoSI7I8y74y4dbrnAwmmdpG1EJ2ocuMKnWRn7VrwZ5gl+zsw
	mETguL61jddFIbmODBnl9003fUJ4t416XOFqPs51hjrgWXeMh7maofin14fScA==
X-Gm-Gg: ASbGncuZyEjK0VedxqIxzmr0GBxSpsVOoEYIixgJf93fpbNNHjtPHraXHC3aurKu/0C
	plh5obgO0JvWrSsyasF+DpaHKt1IpLGBZfcQA0x7/Hbp5mkdKy2fJguKkBKvYVUXGal1Xrf7PAL
	nykPiXDTDkX9VejsMtbSXnfaBHHyKf6JTcsGJ43/vNu/nPeFXp9LmKskcnk+66MGzwbzui6QhQx
	rcyCQ142+9L66lA8bOz7Elt7tfwqdEQg44kNyqQq0c7CutVp1Yajkln+s5s0GgfQiYz9l+5
X-Google-Smtp-Source: AGHT+IGbqDRc3+clit5iH+/2d79c7sSOb6z0W5OMm5yS5wDnwt6aR/KeI2oLsBGyyaqwf97b+Km3wg==
X-Received: by 2002:a05:6a00:3cc8:b0:725:4a1b:38ec with SMTP id d2e1a72fcca58-728edb5c343mr2486433b3a.3.1733894677079;
        Tue, 10 Dec 2024 21:24:37 -0800 (PST)
Received: from wenstp920.tpe.corp.google.com ([2401:fa00:1:10:4dfb:c0ae:6c93:d01e])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-725e66801e2sm5397702b3a.160.2024.12.10.21.24.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Dec 2024 21:24:36 -0800 (PST)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Mark Brown <broonie@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Hsin-Hsiung Wang <hsin-hsiung.wang@mediatek.com>
Cc: Chen-Yu Tsai <wenst@chromium.org>,
	devicetree@vger.kernel.org,
	linux-mediatek@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 1/8] regulator: dt-bindings: mt6315: Drop regulator-compatible property
Date: Wed, 11 Dec 2024 13:24:19 +0800
Message-ID: <20241211052427.4178367-2-wenst@chromium.org>
X-Mailer: git-send-email 2.47.0.338.g60cca15819-goog
In-Reply-To: <20241211052427.4178367-1-wenst@chromium.org>
References: <20241211052427.4178367-1-wenst@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The "regulator-compatible" property has been deprecated since 2012 in
commit 13511def87b9 ("regulator: deprecate regulator-compatible DT
property"), which is so old it's not even mentioned in the converted
regulator bindings YAML file. It should not have been used for new
submissions such as the MT6315.

Drop the property from the MT6315 regulator binding and its examples.

Fixes: 977fb5b58469 ("regulator: document binding for MT6315 regulator")
Fixes: 6d435a94ba5b ("regulator: mt6315: Enforce regulator-compatible, not name")
Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
---
 .../devicetree/bindings/regulator/mt6315-regulator.yaml     | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/Documentation/devicetree/bindings/regulator/mt6315-regulator.yaml b/Documentation/devicetree/bindings/regulator/mt6315-regulator.yaml
index cd4aa27218a1..fa6743bb269d 100644
--- a/Documentation/devicetree/bindings/regulator/mt6315-regulator.yaml
+++ b/Documentation/devicetree/bindings/regulator/mt6315-regulator.yaml
@@ -35,10 +35,6 @@ properties:
         $ref: regulator.yaml#
         unevaluatedProperties: false
 
-        properties:
-          regulator-compatible:
-            pattern: "^vbuck[1-4]$"
-
     additionalProperties: false
 
 required:
@@ -56,7 +52,6 @@ examples:
 
       regulators {
         vbuck1 {
-          regulator-compatible = "vbuck1";
           regulator-min-microvolt = <300000>;
           regulator-max-microvolt = <1193750>;
           regulator-enable-ramp-delay = <256>;
@@ -64,7 +59,6 @@ examples:
         };
 
         vbuck3 {
-          regulator-compatible = "vbuck3";
           regulator-min-microvolt = <300000>;
           regulator-max-microvolt = <1193750>;
           regulator-enable-ramp-delay = <256>;
-- 
2.47.0.338.g60cca15819-goog


