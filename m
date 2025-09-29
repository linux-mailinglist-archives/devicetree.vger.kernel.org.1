Return-Path: <devicetree+bounces-222430-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E5CF3BA90F6
	for <lists+devicetree@lfdr.de>; Mon, 29 Sep 2025 13:38:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 90C771C4240
	for <lists+devicetree@lfdr.de>; Mon, 29 Sep 2025 11:38:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A06CB301491;
	Mon, 29 Sep 2025 11:38:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="OtGMTRWB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5323301033
	for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 11:38:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759145899; cv=none; b=lKxKDo7Sn1VXx3FmleE1Nl5tI8Qn/l0dwb+rh4PTEf5HDscQb6ATSdkl/+287OYOv7yXuwY3Mv70GMsXzy386hatwtgjjTtRfIcfwD891IwrG1sOCK84YJN4ranRgseZ7HGKdLCIhz2ROlwy8ZC1XzI/8ZhXFXNRYLZsezJPcCI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759145899; c=relaxed/simple;
	bh=6sa4dBlIVtXXSWxWD+PhcdWd6PIrRysSNnN6dDj8eWM=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=K20guM76mKz6HoQVenF7QbmaLC+erLXc+2mJAFLkqzzJeWQ27Xqfg4RJ0yJ7qM3KqTuh3GUSv8/a4f/iuM6UZgp5GSD+OLvorYiaQKKkvb1j21WnsMZObzr56KtGWvz6Lrqr9TObnYFPVPBzVWMFn16jR7BCb/tdsAIP+dgJm4c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=OtGMTRWB; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-46e4473d7f6so17576085e9.1
        for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 04:38:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759145896; x=1759750696; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FV+6yoKv/P9OgvlWPQKcQD99p3mLWnHYMK2iXPsZM3o=;
        b=OtGMTRWBLoZWsgoOH2w4rn5R/b597s/xtcZj6c6DbuZnLdYiFR0M444fuo1GX1qBRb
         rrkA7enF54EtmAhTV+uSOr9zk1dwOb+ANiM3VbRlfP7cct59JTMMprZ3eopPpiL6JHXk
         W0LccJcEnBOUQzkCF1xbSCfyz7yrne7u7qWwGvXg8Q8ztmzS2/9xURXG1bV8r4jsGKuR
         a/7rSXjKH5rJkvZsnz0n051bIOMW/giXSXWHl6mmHxkEJb2HOkEl0TL7D95xR3+MSffD
         wVWgPKc0qitw1c2jaX0QjZnaNcgmSGr7A7P9N8/FNwiedtfZP64Y9uKlbyWdnwGeZ1ZA
         II+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759145896; x=1759750696;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FV+6yoKv/P9OgvlWPQKcQD99p3mLWnHYMK2iXPsZM3o=;
        b=I1/q26LnSkGRh8dKakIo5aOtS5tE4Dhtoefu3G30OP7+yBrCnJXLnmsq2JiAjMB0D/
         seS9ZSKIxGFO0GeaEx2Qx5VahtAheoo2htWh/yJVSNORHXiIz3mt4Jwoc/mldZUbuPff
         zBhCleCOLmtuYYC1ljZkKc38TGNX02dSIWCATMR1w3MGeacIQZFwK1pVsq+LjoTWu4u1
         XzesZfOJQtbgRbT3Z0nKwcQ+4gjkZnIuAI5UlXaolBwKFgDFJFxMcMyNDVzCXaXkqGH9
         Zv63SKznDnlgFILNlAyl7UO8QNwvfqkwoHmOfHPcr6ytaqBCVg8RMt67RZNPA3tE2bHt
         ImFA==
X-Forwarded-Encrypted: i=1; AJvYcCUrQC37be42Z4qkK8jDr4TjDla01hbXTLD0lRcwHfgBiVp3OsSuhHFvG5Ul8QEHpjUX7rz78TtKPsO0@vger.kernel.org
X-Gm-Message-State: AOJu0YxOZHWvZrQ3Sb9josRC+pkwd4IEX9Kql+bEBt65jf0ZrUWz2nyl
	PF5875nrsbGcq+Hs9ymsH4zhWRLvEI0AbdqMizeiPlNj7N4iie4LOloz
X-Gm-Gg: ASbGncvjGGSvkLMjypi66dzHYl1iyUAuKDZ+rsyE0lxch61cQJlrgy3hqsghKiFrhw/
	iyqXh76ypAGgdfWwjWjEAfLtQhWy9k2QSP0A4XCnrCKmEpowNth3wNy8fVUw+aIWcKOMnUirRRS
	gfoe7UGEU4MLUiFxdb4d6t7LOl6KMbkBvBBKWSdM9FBar2voFApjfHsd1XgvYYPZpieVkmpOYZE
	afr05WHLrZUGekHnyPlssWZUi8f7MvOW0IWwAQRsBZR0BaPaE7vc8Uw/TcDhez8eDkQugxgLtto
	dOas4CdbU2kOzlwLdSjr6w0oCJGGJDbiNgHYj+ORnvdI74ow89bwV4S6TTEBEGBalBGJ0X/yw6d
	XJfE1ziSxr6by7AFh0pHmJLmajSL0f4lBQWOM8oUqrZAPLW6z8TL5TBKEnNB+RC8VyMhc1TMAZN
	5lo2x8MQ==
X-Google-Smtp-Source: AGHT+IFI4JCC0CS5i7fI/P2/bpr7mkkJzs2jB30grNUffEVDg+ZThDdiliKzuAgxVdMuS1kcxLiNLw==
X-Received: by 2002:a05:600c:3149:b0:46e:46c7:b79a with SMTP id 5b1f17b1804b1-46e46c7b979mr68799125e9.2.1759145896077;
        Mon, 29 Sep 2025 04:38:16 -0700 (PDT)
Received: from Ansuel-XPS24 (host-95-249-236-54.retail.telecomitalia.it. [95.249.236.54])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-46e56f53596sm9502465e9.7.2025.09.29.04.38.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Sep 2025 04:38:15 -0700 (PDT)
From: Christian Marangi <ansuelsmth@gmail.com>
To: Ryder Lee <ryder.lee@mediatek.com>,
	Jianjun Wang <jianjun.wang@mediatek.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Christian Marangi <ansuelsmth@gmail.com>,
	linux-pci@vger.kernel.org,
	linux-mediatek@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v4 1/5] ARM: dts: mediatek: drop wrong syscon hifsys compatible for MT2701/7623
Date: Mon, 29 Sep 2025 13:38:00 +0200
Message-ID: <20250929113806.2484-2-ansuelsmth@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20250929113806.2484-1-ansuelsmth@gmail.com>
References: <20250929113806.2484-1-ansuelsmth@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The syscon compatible for the hifsys node for Mediatek MT2701/MT7623 SoC
was wrongly added following the pattern of other clock node but it's
actually not needed as the register are not used by other device on the
SoC.

On top of this it's against the schema for hifsys YAML and causes a
dtbs_check warning.

Drop the "syscon" compatible to mute the warning and reflect the
compatible property described in the mediatek,mt2701-hifsys.yaml schema.

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Signed-off-by: Christian Marangi <ansuelsmth@gmail.com>
---
 arch/arm/boot/dts/mediatek/mt2701.dtsi | 2 +-
 arch/arm/boot/dts/mediatek/mt7623.dtsi | 3 +--
 2 files changed, 2 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boot/dts/mediatek/mt2701.dtsi b/arch/arm/boot/dts/mediatek/mt2701.dtsi
index ce6a4015fed5..128b87229f3d 100644
--- a/arch/arm/boot/dts/mediatek/mt2701.dtsi
+++ b/arch/arm/boot/dts/mediatek/mt2701.dtsi
@@ -597,7 +597,7 @@ larb1: larb@16010000 {
 	};
 
 	hifsys: syscon@1a000000 {
-		compatible = "mediatek,mt2701-hifsys", "syscon";
+		compatible = "mediatek,mt2701-hifsys";
 		reg = <0 0x1a000000 0 0x1000>;
 		#clock-cells = <1>;
 		#reset-cells = <1>;
diff --git a/arch/arm/boot/dts/mediatek/mt7623.dtsi b/arch/arm/boot/dts/mediatek/mt7623.dtsi
index fd7a89cc337d..4b1685b93989 100644
--- a/arch/arm/boot/dts/mediatek/mt7623.dtsi
+++ b/arch/arm/boot/dts/mediatek/mt7623.dtsi
@@ -744,8 +744,7 @@ vdecsys: syscon@16000000 {
 
 	hifsys: syscon@1a000000 {
 		compatible = "mediatek,mt7623-hifsys",
-			     "mediatek,mt2701-hifsys",
-			     "syscon";
+			     "mediatek,mt2701-hifsys";
 		reg = <0 0x1a000000 0 0x1000>;
 		#clock-cells = <1>;
 		#reset-cells = <1>;
-- 
2.51.0


