Return-Path: <devicetree+bounces-121537-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 13D5B9C7125
	for <lists+devicetree@lfdr.de>; Wed, 13 Nov 2024 14:44:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CDEED285D64
	for <lists+devicetree@lfdr.de>; Wed, 13 Nov 2024 13:44:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 749D6215F58;
	Wed, 13 Nov 2024 13:36:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="dZ8sZwuF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A1021215012
	for <devicetree@vger.kernel.org>; Wed, 13 Nov 2024 13:36:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731504998; cv=none; b=P32X3eNSbkzaP94JtsMifRMMfI3DRwDB0cpfMIxqkQ6R9yvfC/2DHIR0tVh3uExfT5bayqqXvTJ7eB+8r7rssD6q0Tk2qd++xcUw+BGX+YuE2ciDB+UHzSwhlyexjdziS9DDhVU+WcRTBN59CG1K1G+iWRb5LgG6AaCaLEWXnV8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731504998; c=relaxed/simple;
	bh=DXqkEsEFafo5gzhgygX2LHxqn5B71xDGuEPoHC7uuxE=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=Olr/s6K3xIx1kMjtPSD4IFkYZL1Ep2ERfzPL+5+g32n43CkRgZXJ2O44NT1qKVcZKtpWTUr93SfrIi/XrPOrMq/yK7t0boFRsaL5ftmb8ADmK/xKdxYvkORqNTIrRTaL7OY5dKnmItbJSgTg6FMZkl8UTZM4dv6sT7xAvqhirmg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=dZ8sZwuF; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-4315df7b43fso60215415e9.0
        for <devicetree@vger.kernel.org>; Wed, 13 Nov 2024 05:36:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1731504995; x=1732109795; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ecd0Mof7jXO15WeLDSECeNnma82ax84EAenvyaM/htc=;
        b=dZ8sZwuFgzApku4oIqYpfi0yVtTtTK1qR7SPRRT5B7lt3AeqmEWfDq6iSuDO39lx/k
         cVaKmf4KD8KRCX2+8lUa7avT74ejbk17Ep9Pyp1ie4VREwWWO5FNjjmItusbF3CSjzEW
         qts2KBi4GFbNhXFdsEcCtlKt2ZDG3sdWklweqcEKR8mTwjAbFUC0YDWLSFIV5oQ31QzI
         bNpDAlZVbHT5J31hnVm8aUP9ru1DJ2yXTIEA+wyDow+av+3D+fqs5UgvRUj1QBw7T4jG
         Q5NtkpIb9zufqBVOtUmRu7SMRgDTARu/JQ32WH3eewyeFXrBmBuUBKx1jvK2owsyspuW
         Vpcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731504995; x=1732109795;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ecd0Mof7jXO15WeLDSECeNnma82ax84EAenvyaM/htc=;
        b=azK9Pga0tbeow+Wu3i0W4VzV/jyOQehKlfH7JHaMZR5QL//7WRX8/SkYMhxnbWo+Ex
         ocEzzG4l7FxzV2/UqMobYZLzjo3IiDbI26ufB2bV/c7FF5SPrpX8+CAaMAYH6n9yseUU
         ueH4S8DajAzTWhHlndJZzEWiM39oaRVsvkEW5KfOXgTZG44T2JuYRh6s+eeGaS69B7dM
         rzYwBYLXdwljQAMp/k91PqCbN0jMyLz3o1gRTKR5Om/dJfqZsKsmmqBYd5fitInZkNmj
         J9n4LMnj+qup2lgr4WKPm/A9Mhcq7dGt9y/MEA+Wa7JJ+UrMlHhTyYhcfdOu/6NgKhAO
         Geqw==
X-Forwarded-Encrypted: i=1; AJvYcCUjX+gFiRXgtYlaGN3Bzt7rXsE9vsXyALIfbY5h479jCh8o5EEKk7MjzQeZ+BFtADIuHgp47VuzQ0Av@vger.kernel.org
X-Gm-Message-State: AOJu0YyUxbe52RQ5ZXv7qVkkIb3OrKL20m0yFeUc3pDsouBXAXXMU7m9
	MHp6Swjkwodeo5JPZ/qTOwU1eEYwbRvhJPeFB1zoh0++gRgPxeuZe/JxzN215Hk=
X-Google-Smtp-Source: AGHT+IELyaLhsE3PYbeF70nEZe+7NBLbFVxsVluLuBzChJqpUv6UsXqyPsBsDxXq4b7mT1iHHgmc9w==
X-Received: by 2002:a05:600c:4590:b0:42c:b4f2:7c30 with SMTP id 5b1f17b1804b1-432b7515c33mr162135415e9.23.1731504995111;
        Wed, 13 Nov 2024 05:36:35 -0800 (PST)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.28])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-432d54e2f2esm25664165e9.1.2024.11.13.05.36.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Nov 2024 05:36:34 -0800 (PST)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: geert+renesas@glider.be,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	biju.das.jz@bp.renesas.com,
	prabhakar.mahadev-lad.rj@bp.renesas.com,
	lgirdwood@gmail.com,
	broonie@kernel.org,
	magnus.damm@gmail.com,
	linus.walleij@linaro.org,
	perex@perex.cz,
	tiwai@suse.com,
	p.zabel@pengutronix.de
Cc: linux-renesas-soc@vger.kernel.org,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-sound@vger.kernel.org,
	linux-gpio@vger.kernel.org,
	claudiu.beznea@tuxon.dev,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH v3 25/25] arm64: dts: renesas: rzg3s-smarc: Add sound card
Date: Wed, 13 Nov 2024 15:35:40 +0200
Message-Id: <20241113133540.2005850-26-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20241113133540.2005850-1-claudiu.beznea.uj@bp.renesas.com>
References: <20241113133540.2005850-1-claudiu.beznea.uj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

Add sound card with SSI3 as CPU DAI and DA7212 as codec DAI.

Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---

Changes in v3:
- none

Changes in v2:
- none

 arch/arm64/boot/dts/renesas/rzg3s-smarc.dtsi | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/arch/arm64/boot/dts/renesas/rzg3s-smarc.dtsi b/arch/arm64/boot/dts/renesas/rzg3s-smarc.dtsi
index 6dd439e68bd4..89673bbaee6d 100644
--- a/arch/arm64/boot/dts/renesas/rzg3s-smarc.dtsi
+++ b/arch/arm64/boot/dts/renesas/rzg3s-smarc.dtsi
@@ -44,6 +44,23 @@ key-3 {
 		};
 	};
 
+	snd_rzg3s: sound {
+		compatible = "simple-audio-card";
+		simple-audio-card,format = "i2s";
+		simple-audio-card,bitclock-master = <&cpu_dai>;
+		simple-audio-card,frame-master = <&cpu_dai>;
+		simple-audio-card,mclk-fs = <256>;
+
+		cpu_dai: simple-audio-card,cpu {
+			sound-dai = <&ssi3>;
+		};
+
+		codec_dai: simple-audio-card,codec {
+			sound-dai = <&da7212>;
+			clocks = <&versa3 1>;
+		};
+	};
+
 	vcc_sdhi1: regulator-vcc-sdhi1 {
 		compatible = "regulator-fixed";
 		regulator-name = "SDHI1 Vcc";
-- 
2.39.2


