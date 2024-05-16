Return-Path: <devicetree+bounces-67255-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id B96228C7320
	for <lists+devicetree@lfdr.de>; Thu, 16 May 2024 10:47:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id EAEA71C2197A
	for <lists+devicetree@lfdr.de>; Thu, 16 May 2024 08:47:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 228A5142E74;
	Thu, 16 May 2024 08:47:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="a2llyB7+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com [209.85.208.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 482092D054
	for <devicetree@vger.kernel.org>; Thu, 16 May 2024 08:47:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715849270; cv=none; b=nCBTPNMWe5T+JvkxNy5AgM8fL3RdLyUcaXtuMNuR3ls3Ch08EEoXkzjcMUhYT/eZ/wTzDIx0Ntmal04ir1qSZQ7oEzz8CQb2YRCOoAkuJeQv7vhYd2/W+sST14G6mHbSmEesDmpEs0Rfdm8QB+9ypmYDJHuxpIz6gRmn/+lTmf4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715849270; c=relaxed/simple;
	bh=JYLiC15xPKHo/yD+uSSJ9wDz0+qLW1T3bP68vggaJBw=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version:Content-Type; b=VoKVX4xNYoTCw4EhPTZd9fgXXox4i+v8OxR81dzbiuJKjVX33udz2wesJJFcavNSrCTU1hLdAZV/WfdR7qDBoyxsLFt+VaJkWoCZeLY+9oNuEI9QJ7s3KvRIERLCvjC0HFvkfAXvo+JiVdThJeFefUy9drqfsGe2IjWkm+8NDAU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=a2llyB7+; arc=none smtp.client-ip=209.85.208.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f51.google.com with SMTP id 4fb4d7f45d1cf-57342829409so4479643a12.1
        for <devicetree@vger.kernel.org>; Thu, 16 May 2024 01:47:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1715849266; x=1716454066; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=suPdXTSTJ+Ddc+aoRlLcCgbP+AoN7DB5vkGE08JQMOQ=;
        b=a2llyB7+cTy/9mve526rRW9zj2tCa8JX1jTTQym/CMMn/Vm6kE4VMzX6cHdMXL4X3d
         l6G0HMDwdRPLc2t75zLkUdqz99AgQR8k+s6lBV9V/yce8UNBI2dAwoaaKWhKP2kCbtAm
         sHu+A/g4U6/Vk8r4glJgNgUpgfO4FBVbvbGs/2Zec7I2wClU7WpSuboSK4gVFkWUYy6P
         j+4f4dIXtSCawHHid2bwaKXCfVTmrMEGccAkrQ4Omawi+utonvzfejySAZjvC/9jEvXf
         2UYmOI0rSQ9Xrd9s4y+ns5lraGvAfUCWBTuz1Ix09TIlR1cHLmtfiuRBqlrQdvVb07Yt
         ULPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715849266; x=1716454066;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=suPdXTSTJ+Ddc+aoRlLcCgbP+AoN7DB5vkGE08JQMOQ=;
        b=GxTHI6aXwrzU5yTf3WK+Ul5zZrNYFhxhDpwfMyhyG0FBvQs9sNGqttgfhdQVL+7lIY
         YhEmRIhS3lN2r3f3rI6QdIUyUlNNaoHs1Qvy/ZcHTuNYDRvDGjBKwKNenJZh1D3f2mHu
         psiQGXVcLMuptaMGTFSiSRdTtEkr65y8jQtmPEamOqU2qSsled1KgzhPvJl3IBLVVnbY
         PgYNxMcXNDuuBC01VaGOZeFT7BMj6SeQtfE86e4SnI89IggGUZKAxLPuH1HprIsv/XiU
         qOaMfh4R8nWnF22qXg+fHXPDP3rqWHHbnEOJI++YcDuBe9cg4HJ6OWj5YK07i4Oh1WSm
         xEeA==
X-Forwarded-Encrypted: i=1; AJvYcCXaOpJnxu4xvLJW+/i2ARXrG3qtIy55GjwLEbso6g2hadEcsqE2D16k4+xDjv8fUILf/0B2aR72LtEHNgliSOxR5a6n76FyiIFVnQ==
X-Gm-Message-State: AOJu0Yz7EpXkAWdGhWOxkKhVhn5dYGoNDiWf1EiO05+MlSJE3e/VrVHC
	ZxQxuz23T/+cKzE+LZfPtvqSv2fl3tiMS630WpNn4i5kpTsUhYyF
X-Google-Smtp-Source: AGHT+IH8MjxLFf8UGxQeoQQb1lXYQvHlQo2CZW6V6e5ObrVREE0xB8A/J6YJbWKZNRPiBP104Ifqpg==
X-Received: by 2002:a50:c18a:0:b0:571:bf62:81ce with SMTP id 4fb4d7f45d1cf-5734d5e35c5mr15738457a12.9.1715849266424;
        Thu, 16 May 2024 01:47:46 -0700 (PDT)
Received: from localhost.lan (031011218106.poznan.vectranet.pl. [31.11.218.106])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5733bed0af0sm10220371a12.49.2024.05.16.01.47.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 May 2024 01:47:45 -0700 (PDT)
From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To: Florian Fainelli <florian.fainelli@broadcom.com>,
	Hauke Mehrtens <hauke@hauke-m.de>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Ray Jui <rjui@broadcom.com>,
	Scott Branden <sbranden@broadcom.com>,
	Andre Przywara <andre.przywara@arm.com>,
	Tony Lindgren <tony@atomide.com>,
	Alexandre TORGUE <alexandre.torgue@st.com>,
	Peter Rosin <peda@axentia.se>,
	Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	bcm-kernel-feedback-list@broadcom.com,
	=?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH] ARM: dts: broadcom: convert NVMEM content to layout syntax
Date: Thu, 16 May 2024 10:47:37 +0200
Message-Id: <20240516084737.2789-1-zajec5@gmail.com>
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

Use cleaner (and non-deprecated) bindings syntax. See commit
bd912c991d2e ("dt-bindings: nvmem: layouts: add fixed-layout") for
details.

Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
---
 arch/arm/boot/dts/broadcom/bcm53016-meraki-mr32.dts  | 12 ++++++++----
 .../dts/broadcom/bcm958625-meraki-mx6x-common.dtsi   | 12 ++++++++----
 2 files changed, 16 insertions(+), 8 deletions(-)

diff --git a/arch/arm/boot/dts/broadcom/bcm53016-meraki-mr32.dts b/arch/arm/boot/dts/broadcom/bcm53016-meraki-mr32.dts
index 25eeacf6a248..45bd27906f29 100644
--- a/arch/arm/boot/dts/broadcom/bcm53016-meraki-mr32.dts
+++ b/arch/arm/boot/dts/broadcom/bcm53016-meraki-mr32.dts
@@ -215,11 +215,15 @@ eeprom: eeprom@50 {
 		reg = <0x50>;
 		pagesize = <32>;
 		read-only;
-		#address-cells = <1>;
-		#size-cells = <1>;
 
-		mac_address: mac-address@66 {
-			reg = <0x66 0x6>;
+		nvmem-layout {
+			compatible = "fixed-layout";
+			#address-cells = <1>;
+			#size-cells = <1>;
+
+			mac_address: mac-address@66 {
+				reg = <0x66 0x6>;
+			};
 		};
 	};
 };
diff --git a/arch/arm/boot/dts/broadcom/bcm958625-meraki-mx6x-common.dtsi b/arch/arm/boot/dts/broadcom/bcm958625-meraki-mx6x-common.dtsi
index b0854d881ac6..71a8b77b46f4 100644
--- a/arch/arm/boot/dts/broadcom/bcm958625-meraki-mx6x-common.dtsi
+++ b/arch/arm/boot/dts/broadcom/bcm958625-meraki-mx6x-common.dtsi
@@ -55,11 +55,15 @@ eeprom@50 {
 		reg = <0x50>;
 		pagesize = <32>;
 		read-only;
-		#address-cells = <1>;
-		#size-cells = <1>;
 
-		mac_address: mac-address@66 {
-			reg = <0x66 0x6>;
+		nvmem-layout {
+			compatible = "fixed-layout";
+			#address-cells = <1>;
+			#size-cells = <1>;
+
+			mac_address: mac-address@66 {
+				reg = <0x66 0x6>;
+			};
 		};
 	};
 };
-- 
2.35.3


