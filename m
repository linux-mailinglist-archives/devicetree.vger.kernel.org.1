Return-Path: <devicetree+bounces-184990-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 59C7EAD5F45
	for <lists+devicetree@lfdr.de>; Wed, 11 Jun 2025 21:47:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1BCA51BC246C
	for <lists+devicetree@lfdr.de>; Wed, 11 Jun 2025 19:47:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ADBC4288CA2;
	Wed, 11 Jun 2025 19:47:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=easyb-ch.20230601.gappssmtp.com header.i=@easyb-ch.20230601.gappssmtp.com header.b="Fz9o7dDm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28C3C29B213
	for <devicetree@vger.kernel.org>; Wed, 11 Jun 2025 19:47:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749671247; cv=none; b=NI1+GlVBS3k5F11GH9PeS1Hu8HpCpZW0TuhYfg+wwGHas8Vz3HR2XKjdJcyfY80HBuA1dL02MPVNRA/vZW6p3ZxvdaWQzN26YueZ3wSsu2NT9dadhLkwxWcAZK15G8++qVKr7V/45BKHaamD4gVOVs9lGdPiGzbL8P042Rlkhm0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749671247; c=relaxed/simple;
	bh=xO/wrwe33YqXeitLbJg6/NkUqkrfpbwsyauCSJUgemM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ANTGnwcNUGaLVnzwiTeBwNL/FIntt1ZlwVcU3YPXvEDuLHrRmIKFkMTUvpU+1I5IhCYJsKaCF776LB65Dv3Q/vZ6FrQYmQrivRERnkvsQiL84ITxmT5REb5qqj741Vc3UC4V3itckQehAC1sFEwUFtQC0hdnLVAtVTPYwiLXJVQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=easyb.ch; spf=none smtp.mailfrom=easyb.ch; dkim=pass (2048-bit key) header.d=easyb-ch.20230601.gappssmtp.com header.i=@easyb-ch.20230601.gappssmtp.com header.b=Fz9o7dDm; arc=none smtp.client-ip=209.85.221.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=easyb.ch
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=easyb.ch
Received: by mail-wr1-f54.google.com with SMTP id ffacd0b85a97d-3a536ecbf6fso159077f8f.2
        for <devicetree@vger.kernel.org>; Wed, 11 Jun 2025 12:47:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=easyb-ch.20230601.gappssmtp.com; s=20230601; t=1749671243; x=1750276043; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=e4r4mKHcZW8xBTgBZ77uu48fPSSUh+iVSvsgFeCmYGM=;
        b=Fz9o7dDmhy6Z4zBtKr8RqCtxjscBBac3NU6JH1GOxTm/m4yKyaYzJzx1mPgpR7kkzc
         NUhfqXWzZ4Y9hyqUYE6DcHi+67VfLa9qCHjoC0Di+CRa0l/F4EO6g/N9q4gHnlx1Zrom
         zP05js3eWl1m3AWXQlb5HkYEeiXMbRIunTYaeyD1sn3HUCi/tAiCsts0Hlr/7pMips64
         KHWAxvSdOr1nWTbP85GhUD4KuhxVimCE53gJ+z0GOcDSod4SlWES5KbH84UsCBtVXFb7
         KkSnD4UP6XaTSa7k/PVb7glHMWzVKLHXxV9i/IWsVhwV9f10+54GeQM6xBq7VOShdZc+
         6K9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749671243; x=1750276043;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=e4r4mKHcZW8xBTgBZ77uu48fPSSUh+iVSvsgFeCmYGM=;
        b=VL1JnGTiFKy6I+tlcSh22QLNLDSBz0P4tw9ArR8f3Pv3Dzl2yYb5AFGb0sLFA/G1o+
         SV6ZEcbGXxmTEUye/jUOhb5EebUK/nbbKXNA42yW6+iT3RUmSK9AZ7yXbQLna/HcLCFA
         Z5hzSirQoRQlrx5jzWG6y8Yn96OzCYFLuZOOJlZ4iZH08rWMI3Z+DOUu/bGzXH3Zbyxi
         /PiAy/4kjRHsHuGdcolRHWnmECJfsH7qaw2zDzHPwY0MzOAPZBmsTxie0NBtb/WK27qE
         TDZBtyGnbZwkD0231zK5U6rG0jfzLHZ6jep3UNGky/uW4NvtdBV1mDImpLmBZ4aEOJgB
         6gcQ==
X-Forwarded-Encrypted: i=1; AJvYcCU2La7GvaLoFhtzxNY3YrwdfnzlnGfsEQ2cKEc0UJ2dWjMYgh3BMV8Rc1Ldc7LK+NOJscXj9Z9j1lIF@vger.kernel.org
X-Gm-Message-State: AOJu0YyvO11ZN5V6vhC0PrewBoZfrYWgbMGNUDR1dIIQfqdE/SSU67B0
	GverHz7GfXp+pko4Jw0nNOYO2y0qZHbhXlOoeIu2ZMi9NP3wxnRI2NZNtcMwWXIOXi4=
X-Gm-Gg: ASbGncvpW9bMcYir9HYpmrdZh3Mrjqk6NCfaFEONE+mh9sKMc1n2tauBcDmloyeBtGd
	wK5w5wGOgE0QGEhUEWiPHwOqhFB2QfT8YuH/6LldY3rBhZE/AqHmvLFoMPwUiLQfQVmXh8pkNDN
	FrwXwA23Z7XuT5NFAfGn4yZvFMG3MB/MJ5dTHU4xTktZDaFyMidSUWO9HTA578VjY5ZzGOJioJ7
	vrtgTjg9yEaYzAE79JJEk/t0t3ojsAbFOFelLcPW2fPgMJB1YK0v2kV6rzLtNwzMdnNoftLUO//
	fY2zGEC3bB/XT1gySVOYMoIWQpMkCzloHUVsQrz9jYmnb9PEdVRRM9JsWHo7
X-Google-Smtp-Source: AGHT+IFDW984aYodK6mYa1fkvCYYHSknt4AsK43TrgqBHPL32oCK3xxKtQ8WK8NadEIzDVUN/k1PMw==
X-Received: by 2002:a5d:64e6:0:b0:3a4:fc52:f5d4 with SMTP id ffacd0b85a97d-3a5586e983bmr3639098f8f.47.1749671243445;
        Wed, 11 Jun 2025 12:47:23 -0700 (PDT)
Received: from fraxinus.home ([2a02:21b4:9a83:1500:4cac:8ba0:e616:6d2e])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a53244fceasm15949433f8f.82.2025.06.11.12.47.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Jun 2025 12:47:23 -0700 (PDT)
From: Ezra Buehler <ezra@easyb.ch>
To: linux-mips@vger.kernel.org
Cc: Conor Dooley <conor+dt@kernel.org>,
	Harvey Hunt <harveyhuntnexus@gmail.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Reto Schneider <reto.schneider@husqvarnagroup.com>,
	Rob Herring <robh@kernel.org>,
	Sergio Paracuellos <sergio.paracuellos@gmail.com>,
	Stefan Roese <sr@denx.de>,
	Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
	devicetree@vger.kernel.org,
	Ezra Buehler <ezra.buehler@husqvarnagroup.com>
Subject: [PATCH v1 3/3] MIPS: dts: ralink: gardena_smart_gateway_mt7688: Fix power LED
Date: Wed, 11 Jun 2025 21:47:16 +0200
Message-ID: <20250611194716.302126-4-ezra@easyb.ch>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250611194716.302126-1-ezra@easyb.ch>
References: <20250611194716.302126-1-ezra@easyb.ch>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Ezra Buehler <ezra.buehler@husqvarnagroup.com>

When starting up, the GARDENA smart Gateway's power LED should be
flashing green. It is unclear why it was initially set to "off".

The LED frequency cannot be configured in the devicetree. Luckily, the
default is 1 Hz, which is what we want.

Signed-off-by: Ezra Buehler <ezra.buehler@husqvarnagroup.com>
---
 arch/mips/boot/dts/ralink/gardena_smart_gateway_mt7688.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/mips/boot/dts/ralink/gardena_smart_gateway_mt7688.dts b/arch/mips/boot/dts/ralink/gardena_smart_gateway_mt7688.dts
index 7743d014631a..0bfb1dde9764 100644
--- a/arch/mips/boot/dts/ralink/gardena_smart_gateway_mt7688.dts
+++ b/arch/mips/boot/dts/ralink/gardena_smart_gateway_mt7688.dts
@@ -56,7 +56,7 @@ led-power-blue {
 		led-power-green {
 			label = "smartgw:power:green";
 			gpios = <&gpio 19 GPIO_ACTIVE_HIGH>;
-			default-state = "off";
+			linux,default-trigger = "timer";
 		};
 
 		led-power-red {
-- 
2.43.0


