Return-Path: <devicetree+bounces-168904-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 11069A94DDA
	for <lists+devicetree@lfdr.de>; Mon, 21 Apr 2025 10:16:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8FAF41893645
	for <lists+devicetree@lfdr.de>; Mon, 21 Apr 2025 08:16:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 333CF2135AD;
	Mon, 21 Apr 2025 08:15:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="QTnfVc+N"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D0901A38E1
	for <devicetree@vger.kernel.org>; Mon, 21 Apr 2025 08:15:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745223323; cv=none; b=CzxhgQx2F/62nTQQcLY+tjLuCmvy7J4pPJMQH8a5SCOnHN+UsP4jqkO56lz6FkdTkCL5svH8jxLt2h4P48AmVWjBhQw5h4nKgWO6RUPJKa7t3OKzF78bgdj14sOF/MEwkZHZuo3d1+3YKYzUF67Mv88TjFxZKJx3dxSwmdvVWxA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745223323; c=relaxed/simple;
	bh=Lg9Ur2LsdAksm9MvChH0YvjPgYCv48epeyaeMJJx+vc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=NKL9hkkgiKxWmfFDMuGstguZ7zYruy3LFSiROMFyruJWjt1e3jXpp+gr8IKjeKFjiXObbWUlTds4IXSkxOMwzaViStRYhKyiwfN55KMf+IBMeHSyqgFm9CrLWXikRcg1YeLwIm0tE2Y9c4kLbqyjFetmkD73ZwFYKaKtk9H1LaI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=QTnfVc+N; arc=none smtp.client-ip=209.85.208.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ed1-f52.google.com with SMTP id 4fb4d7f45d1cf-5efe8d9ebdfso7100065a12.3
        for <devicetree@vger.kernel.org>; Mon, 21 Apr 2025 01:15:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1745223319; x=1745828119; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=w5wGQV4Z9YSZObQBq40LO1nvdGO5KA96Wt8dBuQPd2o=;
        b=QTnfVc+NM6D2VDK/LeWBhxWwbj0x6BfPFLdIAT2NefFzrJi8/SanbggSnRT7PBpxdF
         GLCqLiZ6ExjLFvfIDMmNOMbTtE3ofPNvCIWgVzKh82bLFhE5lHwrEfCmO8xtc7voyTe7
         bZGLzo8caHVyfPjrSRuhAy2D4ggNXnPK2VyRUz/d0TZdLeclqHHe0VyzjelpqU1ggiYJ
         nil6+E8yW+VwsxmI3MHKOb1SL4hKmKjefxuh3OpyJGCKC1M/uVsCGbogV4+GFaVmT7OL
         NxTK3PcQYpQg9dWr4uen407gkjeV5rR0XHbBz4zD3GrLjCNwD/Gm5HNWf1Yi2yVaHuGl
         ShiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745223319; x=1745828119;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=w5wGQV4Z9YSZObQBq40LO1nvdGO5KA96Wt8dBuQPd2o=;
        b=KwN+omiXem4a/n44cRr/02wZTPwahNrsQb6yl56KRc0Dj6V2JBbFvizAKMZYL6VCsy
         y/E+ajf2OakECOk1VlrZHdvl/ZgDgUk5N+kXHQy2zQsTgA+zYhTiCG2AV3Cq6vD1w2vu
         w/TEYGGKHpe1fZKrsBPt8wXp7hnoGQ7Xcodswn8rPVvuBaHTflglpF/npLijvG+W9FtH
         bPLZJRcUTODMVhh86Ly/R8NBnZNo4FNTHlwXdNQvY+Y58iiwSrt8tnbcJIyq7oYhhSe6
         ci4JtvkAO/ehVYRRRN0dGGp4OngE94ca4d5oG//5gXoVLTkcSYgjOcXWmVsoDutkt87K
         RVoA==
X-Forwarded-Encrypted: i=1; AJvYcCXZEOwHlkZ06lSLTreidrFqZnuXW1dL6AqqFj3TN2oIs4blKUjYbBSIiOLeuuTAy27upJ+Xy/kQPxxI@vger.kernel.org
X-Gm-Message-State: AOJu0YzwrmHQK3/gGCXdALlxwp+t3K/LcjEov+RLT2aPLx3u6x7rxVa6
	uyF6uRJ9HejCZ49G0SvzB4s8tNOP3Q5AutqGgKN2c+yg/bUCIzEFmsghIhNY/sA=
X-Gm-Gg: ASbGncs5xj3MQeWeoaGdAWeaJOfLKcPImtWdqJEsILe4F7mKrB8K3xKxyJduIuAG60X
	UUHUhPCxD/i2S7EtVhq0U9b04jNWqMUIRhtMwiqJo5lVrbO/bV+tOAVGA6g664+toe2xqWbeLiz
	UNI2leMEYFtJZxc1KWhf+UuXb1G/Vbp2ZQ70rYEqWZVkHr/k/zZbuE4xHqS7jgGJZBsesINn/OI
	IGG2JwcZEiLJ1gXjFZk1IAENFHADZ3g0ASmcDWFwN21LGCV/JC3ZElNqmOaW6+99bo99xfl2un5
	A2CibP6FRCF1Q6XrB7jG0B9krAYATkiUpUU=
X-Google-Smtp-Source: AGHT+IGWxtJdLJ36kRSbbl0qSFEd4pxHtkyAsGGiL1QRyNFjb0PyfwMRQI9DRuA/PGHaxCu6K5MuIA==
X-Received: by 2002:a17:907:720f:b0:ac7:4f1:65c5 with SMTP id a640c23a62f3a-acb74e19df7mr1007221066b.54.1745223319351;
        Mon, 21 Apr 2025 01:15:19 -0700 (PDT)
Received: from localhost ([2001:4091:a245:826e:c0c:4cef:7dd:26bd])
        by smtp.gmail.com with UTF8SMTPSA id a640c23a62f3a-acb6ec90a95sm477907966b.76.2025.04.21.01.15.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Apr 2025 01:15:19 -0700 (PDT)
From: Markus Schneider-Pargmann <msp@baylibre.com>
Date: Mon, 21 Apr 2025 10:14:19 +0200
Subject: [PATCH 1/7] arm64: dts: ti: k3-pinctrl: Add WKUP_EN flag
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250421-topic-am62-dt-partialio-v6-15-v1-1-6ced30aafddb@baylibre.com>
References: <20250421-topic-am62-dt-partialio-v6-15-v1-0-6ced30aafddb@baylibre.com>
In-Reply-To: <20250421-topic-am62-dt-partialio-v6-15-v1-0-6ced30aafddb@baylibre.com>
To: Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>, 
 Tero Kristo <kristo@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Vishal Mahaveer <vishalm@ti.com>, 
 Kevin Hilman <khilman@baylibre.com>, Dhruva Gole <d-gole@ti.com>, 
 Sebin Francis <sebin.francis@ti.com>, Kendall Willis <k-willis@ti.com>, 
 Akashdeep Kaur <a-kaur@ti.com>, 
 Markus Schneider-Pargmann <msp@baylibre.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1123; i=msp@baylibre.com;
 h=from:subject:message-id; bh=Lg9Ur2LsdAksm9MvChH0YvjPgYCv48epeyaeMJJx+vc=;
 b=owGbwMvMwCXWejAsc4KoVzDjabUkhgzWfzklOvJsljNe1e0TO+a5bJntVQthsZBj2bOfO6Yfm
 bfImm9bRykLgxgXg6yYIktnYmjaf/mdx5IXLdsMM4eVCWQIAxenAEyE5REjw16z1I2rv4S3vl5U
 GqJ0Ntfvrpf+gWUOcmmMjUXffuyKXMfwv/agiMEtqRMZmg9jEl+GRe9S3TepR7Fwqn2ydMZPvca
 F/AA=
X-Developer-Key: i=msp@baylibre.com; a=openpgp;
 fpr=BADD88DB889FDC3E8A3D5FE612FA6A01E0A45B41

WKUP_EN is a flag to enable pin wakeup. Any activity will wakeup the SoC
in that case.

Signed-off-by: Markus Schneider-Pargmann <msp@baylibre.com>
---
 arch/arm64/boot/dts/ti/k3-pinctrl.h | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-pinctrl.h b/arch/arm64/boot/dts/ti/k3-pinctrl.h
index cac7cccc111212eba520454396c8cc5c9fcba9b1..79a9f54fa0095c4e3864872bc06ef3d033215b2b 100644
--- a/arch/arm64/boot/dts/ti/k3-pinctrl.h
+++ b/arch/arm64/boot/dts/ti/k3-pinctrl.h
@@ -18,6 +18,7 @@
 #define DS_OUT_VAL_SHIFT	(26)
 #define DS_PULLUD_EN_SHIFT	(27)
 #define DS_PULLTYPE_SEL_SHIFT	(28)
+#define WKUP_EN_SHIFT		(29)
 
 #define PULL_DISABLE		(1 << PULLUDEN_SHIFT)
 #define PULL_ENABLE		(0 << PULLUDEN_SHIFT)
@@ -56,6 +57,7 @@
 #define PIN_DS_PULLUD_DISABLE		(1 << DS_PULLUD_EN_SHIFT)
 #define PIN_DS_PULL_DOWN		(0 << DS_PULLTYPE_SEL_SHIFT)
 #define PIN_DS_PULL_UP			(1 << DS_PULLTYPE_SEL_SHIFT)
+#define WKUP_EN				(1 << WKUP_EN_SHIFT)
 
 /* Default mux configuration for gpio-ranges to use with pinctrl */
 #define PIN_GPIO_RANGE_IOPAD	(PIN_INPUT | 7)

-- 
2.49.0


