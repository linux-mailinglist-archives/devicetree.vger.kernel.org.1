Return-Path: <devicetree+bounces-247226-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id C130FCC5CE2
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 03:44:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 65BE6305AC74
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 02:42:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 58C8C28641E;
	Wed, 17 Dec 2025 02:42:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="YYDmxp//"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f174.google.com (mail-pf1-f174.google.com [209.85.210.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9326E27B336
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 02:42:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765939344; cv=none; b=NuY9mGyQevnc25OMBnDpQh62w3AU3vWocan3vP/3N8K3SLjdxxhlhteG09v5iR3KsVHL096aW9+MjhMmzaSaI/ftskOZeBptGNmAXjJTBcTh2EcF2XogHfNpjbyjbg8+qnXWnLDDALanLBis8tx5KVMf7jrY5I/j567y6oanAs0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765939344; c=relaxed/simple;
	bh=dQbLLHcYJMgIhNMMZaEpIHn05xe7e78v1OlGtbTKSEg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=QE7HiYJT4A2CokaiozBaCkQhHMI3nNeJPa1WkM/vNG623JvLsmsIjoL9yDbc1pc9zJVjekFRCojxKZkr3DwXxqALkqwxYrOJkD5bZucU+2Dy799b4mC09mF/o1iwY2WWkTZk6wuPFc0Z7GBmECoQcEDeVkRfvJvdDsk62TPuA3c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=YYDmxp//; arc=none smtp.client-ip=209.85.210.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f174.google.com with SMTP id d2e1a72fcca58-7baf61be569so6297987b3a.3
        for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 18:42:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765939342; x=1766544142; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Sk2qbkT+uPe7dB8QD3lp2P245Y8mdzpsNSq+cs0R5ok=;
        b=YYDmxp//ryAWydeBNygLihNyC4/5Xn1llwNludqblJ68XBbO6XYUX7Y4GwkiAY50yF
         9DgLDV7Dve6hEncapF5swAhEkMK9FAIUkeSkeC121MuQhp89RHnxJShi5R9SRtd60DNq
         iG6RIwdHvS4CatCJPGVIx/1lXcfHdYyWIna+95jimllGxb1KJl0w/H97wNjrFlXiVA28
         JBnQyeFq1j84JUz0QATom16oZylYzM4NadNiLxnOrzLaqzpb099XLH8B2RiKrUcrwcgm
         a/L7nL0/BTf9NBwX8PzAYL4ZKHb1+lfH5uLcabgnb6mlr4zRM5ayEeh7jNyZq0Wdf+sb
         EMMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765939342; x=1766544142;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Sk2qbkT+uPe7dB8QD3lp2P245Y8mdzpsNSq+cs0R5ok=;
        b=OlFF/MQa2XfV/tJkY5EWp7oaaHtIGpJuvwvo7A6vKCArTy034TNxp8LfRIrXxDHI7b
         HKCoRjAKe5K7mX4eaJmLjkIQmr5fX3mx7u1jxxtDih6OdTQMnHFKuvOsbXbqPs/U68M0
         UIhLNNq6cE2sfP9C8yQb+24Nl6mh9ipnWYsb+pMrISwBMKltARY+GmjMnB8xMFIzwgSM
         aul2vbKXFem5nremEo/HuUkvxnE8h+v2rnN/4oC5UpqmPqtArOsgHquZpYRwxqppNjYI
         fTGDf3Oi/Q/vCjn6g9T/47VwuRBZMYPHFzt6pVaRTCgtbaZpiP4DlGCA8Q275kfMlUhg
         E/9Q==
X-Gm-Message-State: AOJu0YxIG/9InPfMhXGVM5rlo7UkKz7i6oV8K9jYvjx7qkVWX+8kOBnL
	0OxXaSNsZlQU4OZkpUNwEyPxvHeXThDKo/9/tOgsSeVXzoK603Q4MNOr
X-Gm-Gg: AY/fxX6gQ3yr/P3C/Q9IaB+lbQtmGgA1ICV8BsNZKRFlDQN4rOzRSbzmY3yh7VLbD2N
	buqptid9O3cKNHWaHnAKLsTOL6gIY8ymVyCUEfbJE3t27hvsK4kjzjkxO60iE6slGYeDofRQiVG
	R/dGFSVGmogzhpUZ+DmdS20CAzgSajEjnQku+y22FPeTqGOlCqP3inwOCBH7ZPeFFzTSxEvdxxX
	8cD5Pd08hHMfWrFuXcgZINKlOFwpViNiAaWRufo+jww0om2LkgoiiRC6w5MNIB2myQVGHX0Y7Dq
	xebdyixCxcQngYYjmD61x1cZBFbsGL3bF3xZZEjgytHFOmMf70UIsoVQItypQ6E62Ar0YqOb//E
	vIPAk0lLN5D2oQ7/2APItaxUpr3c1TQQ9b8o+8MXan5amI5w2UrPSaPSlgv1bMhaUl7LFY/IQGF
	hV9uiCVLfKtS05OPYDU4ZRue3pth+kdWhIwGu/uYizagJondh0xm/F6qGePc5VTCy30LH9MgXWu
	2t6NJdJN9xtgDI=
X-Google-Smtp-Source: AGHT+IEEKjfjDmcAxd44EGFsYj4XdOPu6wFwNvyi9NIvCiiOd5PWZPd+nRHMqunn54uZ6fUDCXQHcA==
X-Received: by 2002:a05:6a00:bc10:b0:7e8:4471:ae77 with SMTP id d2e1a72fcca58-7f669e80094mr13699793b3a.67.1765939341840;
        Tue, 16 Dec 2025 18:42:21 -0800 (PST)
Received: from cosmo-ubuntu-2404.dhcpserver.bu9bmc.local (61-220-246-151.hinet-ip.hinet.net. [61.220.246.151])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7fcb8c29738sm941342b3a.17.2025.12.16.18.42.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Dec 2025 18:42:21 -0800 (PST)
From: Cosmo Chou <chou.cosmo@gmail.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	joel@jms.id.au,
	andrew@codeconstruct.com.au
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-aspeed@lists.ozlabs.org,
	linux-kernel@vger.kernel.org,
	cosmo.chou@quantatw.com,
	Cosmo Chou <chou.cosmo@gmail.com>
Subject: [PATCH v2 2/5] ARM: dts: aspeed: bletchley: Fix SPI GPIO property names
Date: Wed, 17 Dec 2025 10:39:35 +0800
Message-ID: <20251217023938.445721-3-chou.cosmo@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251217023938.445721-1-chou.cosmo@gmail.com>
References: <20251217023938.445721-1-chou.cosmo@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Update SPI GPIO properties to use "-gpios" suffix:
- gpio-sck -> sck-gpios
- gpio-mosi -> mosi-gpios
- gpio-miso -> miso-gpios

Signed-off-by: Cosmo Chou <chou.cosmo@gmail.com>
---
 arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-bletchley.dts | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-bletchley.dts b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-bletchley.dts
index 9cb01381e482..5919a5046078 100644
--- a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-bletchley.dts
+++ b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-bletchley.dts
@@ -39,9 +39,9 @@ spi1_gpio: spi {
 		#address-cells = <1>;
 		#size-cells = <0>;
 
-		gpio-sck = <&gpio0 ASPEED_GPIO(Z, 3) GPIO_ACTIVE_HIGH>;
-		gpio-mosi = <&gpio0 ASPEED_GPIO(Z, 4) GPIO_ACTIVE_HIGH>;
-		gpio-miso = <&gpio0 ASPEED_GPIO(Z, 5) GPIO_ACTIVE_HIGH>;
+		sck-gpios = <&gpio0 ASPEED_GPIO(Z, 3) GPIO_ACTIVE_HIGH>;
+		mosi-gpios = <&gpio0 ASPEED_GPIO(Z, 4) GPIO_ACTIVE_HIGH>;
+		miso-gpios = <&gpio0 ASPEED_GPIO(Z, 5) GPIO_ACTIVE_HIGH>;
 		num-chipselects = <1>;
 		cs-gpios = <&gpio0 ASPEED_GPIO(Z, 0) GPIO_ACTIVE_LOW>;
 
-- 
2.43.0


