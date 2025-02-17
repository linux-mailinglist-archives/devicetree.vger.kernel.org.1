Return-Path: <devicetree+bounces-147370-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 22095A38222
	for <lists+devicetree@lfdr.de>; Mon, 17 Feb 2025 12:45:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E779116615A
	for <lists+devicetree@lfdr.de>; Mon, 17 Feb 2025 11:43:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CB73E218EA2;
	Mon, 17 Feb 2025 11:43:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="VUpGfGaO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBADC219A9D
	for <devicetree@vger.kernel.org>; Mon, 17 Feb 2025 11:43:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739792618; cv=none; b=V0a/83ByyURBvBMBB/9XsU51ido7Nb/A8iR3v0c6M8dZN+ScPZBH4RbUYFTzJBp72JOQRY1aP8Gwlvoej49bqUwHREMcDz5R2BSmUpconNVLMNIPtLhkAnkidI47UUCzhtyLg3dOxjBtKvd3yXOzdQ/rS/+4m5bGQsEOIqU8Gzk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739792618; c=relaxed/simple;
	bh=d+7O1pW7WIc2OfcTMlCmLP5Nln6iods30Tp5o/hOi2g=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=IQfTR9Rw/8whEr2Xh5fdtNeBLHlJvXwlNmidLDOLxUOA9ncr01xcloKrUcZ4Gc7LwjlqHZWYqLjHYSv4N8vwcBJn4c4Ac4TN8mC5j0jC1zrn4LFagv873/8pYpVboCNxLEYAavD49wsH8v+oH1IzGiLkAGNsZC0I/DAZyOqoywM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=VUpGfGaO; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-439714a799aso17299225e9.2
        for <devicetree@vger.kernel.org>; Mon, 17 Feb 2025 03:43:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1739792615; x=1740397415; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ZrzveV3yJfkPYl/HtQGv60ZGdyQJcVgInP4M19o5eMg=;
        b=VUpGfGaOVuARDxDNoqzgIO7AKKYBfEi0v3z1rzUNCByrNx2DpAtPZFGkMkgbmtWpYA
         NC0HHRh4utsMod8md8EUYa7Q13utH7itTJBwBtu40j03DzbbGlR3hHxWxn1S+pMjyLw8
         o17aD6tgOOI1a0rq2knCgx87SGypNXuluw35U=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739792615; x=1740397415;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZrzveV3yJfkPYl/HtQGv60ZGdyQJcVgInP4M19o5eMg=;
        b=dxAcuMZiX+6VlbB89IK5ZIklY0YQm+4nt+pjtQyD8p/e5wioKPGPhAt8BAF2LNFzpc
         /d/NCRoFog0dziNK8ydh995qY5Ki7rR+y9a4FFFDc/O6ylIhK9Q31E93RmPSSpSB+/wG
         UD5X7qstT8eJDM2F0QjAX+UBQivgoDk9Uy5HRyGN16LqqDsgUKvzMciB14tW5VP0QX4l
         uK4wkEHWK8awktxe4wSuy6y4Hljeilbrb0R6HKkcDmScIXcQ/9DmlZl1wLrJUKfVfuP4
         AeL9AgVrEUXX6FU1eXtfWx5vpCipaty9bwXg3PEoha2KIn+oka5/3Lp2vQD98lKDg4wI
         +vHA==
X-Forwarded-Encrypted: i=1; AJvYcCWIMADfpEwPpw0Ejz+N2mneYOVC3VlqQGERjgPZpn0+6WuNsaM8sZmzRRp1CcHayS7lZUbXegWnS8pd@vger.kernel.org
X-Gm-Message-State: AOJu0YzYGZi5EvQ2yGwxZTOaKq9lAfAdekyD0s+5+u3llxO5JTXPd1sd
	9HjbPzMI3WN1q70XmGyv1tAPyZuDCY4mi/q+IwSmGmRilZlsnuEk6omjNEOgWos=
X-Gm-Gg: ASbGncvLECTAOBdRd+x1GhgeMOxY9VHlbA+U2D2E4jN+b1sl2cxMT0sDvsbRvSbDATc
	elnVatQsbf5B4hvwebp/hgAVAxvMOwYErGECHaY6Y62BzRX2Yss5WkT1gV4xeuS5K05Xa1eIObM
	78wzVqfbcs5zpzKpPiBlfG0yRVBb+3Urr9qZIg7OXSvg9XIhWK6YqU+4/vXUHOZ0uIekNjCcPlo
	cvOaxQNymDPCQk3YAR//814d+uZMjWiOKGsKMl1p8I28QjNlolk2VfKPfAto7RtbA2RiXzPKL95
	DxPKe0RxyMMzFHRIXvWc1/RSjyD3EwqQZhWzCE3B5Da7o83YOVJamb0G0UmsyldK5S44C4pETE8
	5ieN7Zeadoqs=
X-Google-Smtp-Source: AGHT+IF609P3CALKCKzz+rtZjz9vss0xU2nv7oly2Unvy2CCr8jtqlkrTWn26An774F51BMNCDUg9g==
X-Received: by 2002:a05:600d:1b:b0:439:7c0b:13f6 with SMTP id 5b1f17b1804b1-4397c0b19fbmr45089825e9.31.1739792615169;
        Mon, 17 Feb 2025 03:43:35 -0800 (PST)
Received: from dario-ThinkPad-T14s-Gen-2i.amarulasolutions.com ([2001:b07:6474:ebbf:78d7:ec72:38e9:87de])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43987088ecbsm18918465e9.31.2025.02.17.03.43.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Feb 2025 03:43:34 -0800 (PST)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Rob Herring <robh@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-stm32@st-md-mailman.stormreply.com
Subject: [PATCH 1/2] ARM: dts: stm32: add led to stm32f746 Discovery board
Date: Mon, 17 Feb 2025 12:43:22 +0100
Message-ID: <20250217114332.1098482-1-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add node for the user led.

Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>
---

 arch/arm/boot/dts/st/stm32f746-disco.dts | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm/boot/dts/st/stm32f746-disco.dts b/arch/arm/boot/dts/st/stm32f746-disco.dts
index 087de6f09629..8bdd10644bf1 100644
--- a/arch/arm/boot/dts/st/stm32f746-disco.dts
+++ b/arch/arm/boot/dts/st/stm32f746-disco.dts
@@ -78,6 +78,14 @@ aliases {
 		serial0 = &usart1;
 	};
 
+	leds {
+		compatible = "gpio-leds";
+		led-usr {
+			gpios = <&gpioi 1 GPIO_ACTIVE_HIGH>;
+			linux,default-trigger = "heartbeat";
+		};
+	};
+
 	usbotg_hs_phy: usb-phy {
 		#phy-cells = <0>;
 		compatible = "usb-nop-xceiv";
-- 
2.43.0


