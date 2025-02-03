Return-Path: <devicetree+bounces-142449-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id B9036A255FA
	for <lists+devicetree@lfdr.de>; Mon,  3 Feb 2025 10:35:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7DDD41887C41
	for <lists+devicetree@lfdr.de>; Mon,  3 Feb 2025 09:35:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 272941FFC62;
	Mon,  3 Feb 2025 09:35:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="MPPMnLrI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01ED81FF610
	for <devicetree@vger.kernel.org>; Mon,  3 Feb 2025 09:35:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738575303; cv=none; b=MU05mXyyRae3HiInfhwU2uQUuEd5/mFXxXX5Y3IfVhMyGjlZTnBDVkejEteR5AszmAzHaCzs0ow8DYRjL5+guB9jxdnKYXmbECGoWBq2rA8f4m6MD7fxHS717A/SD9QLqiJgsW056bLZ4pFHB8lg9dysbWqmdHFYV2EL9LWglrM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738575303; c=relaxed/simple;
	bh=B5Hkfxk5WklaHx3GOc9YxJMEsc74Ai3FLRNcmA0w6r8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=X1wb90cEMhv8thyHpJvNVklOYvOyF6hqtIs+9d5vfznKRSZcksBmEONShZtz3LYMzFz6vE6dRmDJ5Q8Xdst3NUrMNzzskpcD8EuoFFU6D7lemBuDaIX1clIA58o5iEtEa/AgZ8xxkr7p5PMOSfKqPcIDHp5KKhOIwgZcoHrBY6E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=MPPMnLrI; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-436345cc17bso30408825e9.0
        for <devicetree@vger.kernel.org>; Mon, 03 Feb 2025 01:35:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1738575299; x=1739180099; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ent5BMlYQPM9j3M+5ahy76qYgLanS7SSLSe5SbsU8f0=;
        b=MPPMnLrIkAEkzOzBKgUrAXijLQomg+x7Uin9Bg//80z6jB+lU7fX0pHydNjVJj5OdZ
         NcOIB/k8ytUSrFTGwyPCzV76x3nmVHYMWnjygItg3jwn+xe38PltKqHNJQyeAXS8ASeU
         NX2l9Bva3EygDxwc4qEXOKlWIOTTjF3hIxtydPbDCp2BxvONq9U9RsSHpbC2BATfi8Q7
         6Z7MTfHNu/b5CykI2kbYcrkprzfC2TeK+MlA3KgThYMrgj6HDW+J9G7EWUbo//rTC5+O
         UnPyX1D/DKll9L41FuzKf4YFpUIvDuRbkw8wlIXb7uWJCh5PJEWhSvDLiDDOby/aqXtP
         TTYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738575299; x=1739180099;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ent5BMlYQPM9j3M+5ahy76qYgLanS7SSLSe5SbsU8f0=;
        b=LHjXPmeWA0v0MTn//JYV9aVzUhCIMIGin0HoHo3X4lC+3n6WlPXxAPrrlB+yioo31b
         Ss8YCnIDkF9SlDfSGjpP1f4AzoU//hR4fUTadjdId3pI6IXfrrdDL/Ehh++Ic5meQ7kP
         a8AhubqDeXFNrBfhv3GDF46EkXImOg2vEsXL+Q5B/GM37B/le1yIJu2nFiw+IwmU00ZD
         gS4EmOWtoCTR4gTRnSz9EmfzwEhKUnjBFbJyXklQQhJshftgAKl7AkxrciG06jsyoDm5
         v8M2rCwxnDrtBc4mK8YWxurBUPkditYbIFs9v7qralhS9txNuzqW94EnyRunLCOCX4Dd
         WLuA==
X-Forwarded-Encrypted: i=1; AJvYcCU32tgYRo2Ukiasz5Hg30HvqE6o+aRwwHWPXEUH3O1bOSMNm00TFIeXrtLU3zWoNoTJAopyx2J4VBz0@vger.kernel.org
X-Gm-Message-State: AOJu0YzxRFliYEwGmRtG/I7yxl5tQMBiufNGtA5hBe+HG3fhrciC7Dxy
	Z6tI0LbTAlaa6mO95d9QtTWyaEHWU3ZNygKvbqXo0Mre/tGkHG/u6as38fjh/Uo=
X-Gm-Gg: ASbGncullh4nUmgxo3sNHqrFp0LmEPbv8niT56nYZcAg2//grlHHXOmLk+cL6fNCAy5
	QDVNt1aOFPi2VDgRPll2fSI6EtB10f5HkM5Ie8OwkYpcZWLUwuUW31cL1sqzSpciwCNFyUqpq5O
	ugap5EkKrsVFav3oibwyyWpXQRXh+aBxnusj7/4sJ1ahrI1Uupv0mss1pOti5peP/sVDbWuR8ce
	0SdSWuDKTxOulzLSKmc1ex80tkR8CTNjn65NIHPpS2Ad0Ahi0KqNwFOt93hfL9pZJ80quFExqzv
	bQUsIHK8EZYv
X-Google-Smtp-Source: AGHT+IH/i47rSy0zBDmlrlLi+ULkPx5emtysPonhzE5Zko+R3RefPIXy6uiptilCB0KPK0c9Zu3S0A==
X-Received: by 2002:a05:600c:4e01:b0:435:136:75f6 with SMTP id 5b1f17b1804b1-438dc34b179mr206291845e9.0.1738575299204;
        Mon, 03 Feb 2025 01:34:59 -0800 (PST)
Received: from localhost ([2001:4090:a245:80cb:f705:a3ac:14fe:4e1b])
        by smtp.gmail.com with UTF8SMTPSA id ffacd0b85a97d-38c5c0ec80esm12373391f8f.10.2025.02.03.01.34.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Feb 2025 01:34:58 -0800 (PST)
From: Markus Schneider-Pargmann <msp@baylibre.com>
Date: Mon, 03 Feb 2025 10:34:12 +0100
Subject: [PATCH 3/3] arm64: dts: ti: k3-am62p5-sk: Add serial alias
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250203-topic-am62-serial-aliases-v6-14-v1-3-f26d4124a9f1@baylibre.com>
References: <20250203-topic-am62-serial-aliases-v6-14-v1-0-f26d4124a9f1@baylibre.com>
In-Reply-To: <20250203-topic-am62-serial-aliases-v6-14-v1-0-f26d4124a9f1@baylibre.com>
To: Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>, 
 Tero Kristo <kristo@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Vishal Mahaveer <vishalm@ti.com>, Kevin Hilman <khilman@baylibre.com>, 
 Dhruva Gole <d-gole@ti.com>, Sebin Francis <sebin.francis@ti.com>, 
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Markus Schneider-Pargmann <msp@baylibre.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=694; i=msp@baylibre.com;
 h=from:subject:message-id; bh=DM6U8sXm8knG/sEVdw0Vde11Blu3uduqsrLQMjwQyb0=;
 b=owGbwMvMwCGm0rPl0RXRdfaMp9WSGNIX9O4qPPS3tUzkLIdzwvus/D33e1QaDmqmq9V95ZITP
 +tzYMrJjlIWBjEOBlkxRZa7Hxa+q5O7viBi3SNHmDmsTCBDGLg4BWAib5kY/odVai7VVvn89sVJ
 o5tT54bYh+/IkKkxnXcsn/1xmsfquNkMf2W/GUjobZr+IFvog8LJs0xcW5WWxrVzMms8VH3sIbb
 tGTMA
X-Developer-Key: i=msp@baylibre.com; a=openpgp;
 fpr=BADD88DB889FDC3E8A3D5FE612FA6A01E0A45B41

From: Vibhore Vardhan <vibhore@ti.com>

Add alias for mcu_uart0.

Signed-off-by: Vibhore Vardhan <vibhore@ti.com>
Signed-off-by: Markus Schneider-Pargmann <msp@baylibre.com>
---
 arch/arm64/boot/dts/ti/k3-am62p5-sk.dts | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/ti/k3-am62p5-sk.dts b/arch/arm64/boot/dts/ti/k3-am62p5-sk.dts
index ad71d2f27f538d68644491bc6c1831acdd9263cb..81504ebc6a585f0c88cc4f448eeeb04e215ee27f 100644
--- a/arch/arm64/boot/dts/ti/k3-am62p5-sk.dts
+++ b/arch/arm64/boot/dts/ti/k3-am62p5-sk.dts
@@ -19,6 +19,7 @@ / {
 
 	aliases {
 		serial0 = &wkup_uart0;
+		serial1 = &mcu_uart0;
 		serial2 = &main_uart0;
 		serial3 = &main_uart1;
 		mmc0 = &sdhci0;

-- 
2.47.2


