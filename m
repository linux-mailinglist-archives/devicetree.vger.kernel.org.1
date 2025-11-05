Return-Path: <devicetree+bounces-235396-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id AD8D0C37D05
	for <lists+devicetree@lfdr.de>; Wed, 05 Nov 2025 21:59:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 5AE9634FE38
	for <lists+devicetree@lfdr.de>; Wed,  5 Nov 2025 20:59:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D26692D9EC4;
	Wed,  5 Nov 2025 20:59:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="AMKUB+3W"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f51.google.com (mail-oo1-f51.google.com [209.85.161.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54B7A2D9784
	for <devicetree@vger.kernel.org>; Wed,  5 Nov 2025 20:59:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762376390; cv=none; b=ldcyNuiA+0H0pPYnESgR8Rxu3zKGiYLMhLbiTlDVf+C2VYDG4ymGm0Lxg691fAwForjTTvW1r0waxT0nzpnepKO8VxH2gazyF0H4APLfQGr4P+rvIWjBC1if/2bleYmXhF2B/uPM2dUElXps9u7K+G1nSCJln7p33xn/EDoTCn0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762376390; c=relaxed/simple;
	bh=MuYy0V9exkQaYWSobtlVQfh7qInLLMXRSurHjEg6AEE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=TX88td2Sd8N5tQwRDnXxNwJly/OntrUl8BBl2NcJo6S9Lc/aRxqXDs8/5PefLidGM/ms6vw0SCusD6uyJVl5vEsSTXwGj3plE7znKw/JhlDjILFEmhXmn7ba8yoTV+UMh0BY2iwYt7XIfEG8vseSD8BvvMYwJBjHAVxkzSRFIa8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=AMKUB+3W; arc=none smtp.client-ip=209.85.161.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oo1-f51.google.com with SMTP id 006d021491bc7-656b4094e4eso38827eaf.3
        for <devicetree@vger.kernel.org>; Wed, 05 Nov 2025 12:59:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762376387; x=1762981187; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=N22dGVtS/3pOfQFih0jmM+cFj7E1JVHpsRdCDkBqmL4=;
        b=AMKUB+3W80XTU7sxgGJEmhodY413zniRyhXQbSrFOu2/EO2yd2b85HtSlJs5GlGBpZ
         loMqaAT6Ii0LoQBzVQZi/QaEyuGtfYTmuLJcPRc2rKGof9gM2cHYcYD8vkmlKYeUzVaB
         2gThnh9s7UdJjCxBCvZWD3PpoNR80XZIAhaegEyJbtwFyk1oEvL+LZ2cUt7v/uNzeCQ9
         Cj3OXpshkE/FqzZvoKvI6hEH0XVCaV1LU8IH8RhX2GsiKBFORhriDFZAnusJWcFnytRe
         PYHMVLhpMYKcGgy07S6OmezChozUaYXeBn4SfFOe/ye2+AxxoOlKdFYLl1JsP8VGD0d9
         6EYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762376387; x=1762981187;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=N22dGVtS/3pOfQFih0jmM+cFj7E1JVHpsRdCDkBqmL4=;
        b=v74ajGd/sZ3+AxYceSP1TkPXQsjb48EX8yP7KP2+jASMLcTB0yiW7cJR4eOkvzRdW6
         1zOjdC2vxpUbAycNFF6oeSYeWWt+qUo2aEh+SSFC/6PTOJYXBWvObv5GNjEzW61Nx16s
         EJU5suuEn/vlUX3cDoj4AcIURLRa+J8MNgYnf87EZgDkNqZAUM9mMKkv72dNZ3Rz182m
         C2F4GPsnR1NOgThuV4sxrVAG3WamvOUrlMVp7ffk0hxoY5rNPTsf4zUh7hdGuj4alyof
         0J/hewlEWc6eDG0gUVMLe8397ajjBPGmBIFVibeCDyju2luCEjQZ7Rjd7Tvmk6VefUtb
         NXkw==
X-Gm-Message-State: AOJu0YzzBeaxoMUUFYfxXk39hdI4oZIdLN9w+gU5uZiZoKlczjWM/txQ
	gYmUegFJd38+PULU3xmZgI21wVfQnkkbvnOOzIABtMvxywsHNlnBuu+1
X-Gm-Gg: ASbGnctnzQhF7DCa2DZrMBgRFeUN6qlK3iqmbjSBfEoFFDpyoYHrkkvwtTWhNMytKDH
	pIxGUflocFvHh8b1Wk909X77JqxIwmyg9iA5e1b+royPjlyxq+N954tHRC9RMYyXrGPBEthrHSl
	uWydkywvwoROM5L67+Y6b5mmUs3JAbpJ+Ze7Wa0KwiX1wXzY94KNX+flugLBBznotm4uQxkCxIs
	WJpTh3V/bknxE0GTrldFFc9iMAL2di3i0o9U+/fpz3+Ap1XQHgwzTDqppXumxO9X9WkYbzOkDhY
	weNI9TUmsFcCOsDjwUJNQC+ezuOBJ72hupPBL+h9EV2O1BSkQT+g16cVds/v5NmVY7ur0OTt7s7
	Ww7goPh/mRDqyGQSNCPT4J94EUKN8GDWIfPHTJzX8oaoKwaHbA9NMUpHEV9B3MY2DY1W31+7iMQ
	==
X-Google-Smtp-Source: AGHT+IEWz824Eyik5jV6bGE+8iMtXIfPNIwn3pxabNdKpRbpIMMD1Sw3cT1AACv65t3yhikmRX0kMQ==
X-Received: by 2002:a05:6820:188a:b0:653:63d2:22c4 with SMTP id 006d021491bc7-656bb509200mr1869080eaf.0.1762376387402;
        Wed, 05 Nov 2025 12:59:47 -0800 (PST)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0::54])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-656c5713288sm160312eaf.5.2025.11.05.12.59.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Nov 2025 12:59:46 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	sebastian.reichel@collabora.com,
	damon.ding@rock-chips.com,
	jbx6244@gmail.com,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 5/5] arm64: dts: rockchip: Fix DMA for Indiedroid Nova Bluetooth
Date: Wed,  5 Nov 2025 14:57:08 -0600
Message-ID: <20251105205708.732125-6-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251105205708.732125-1-macroalpha82@gmail.com>
References: <20251105205708.732125-1-macroalpha82@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Chris Morgan <macromorgan@hotmail.com>

When the device was first added, there was a problem with the bluetooth
controller that manifested when DMA was enabled for the underlying UART
interface. At some point in the intervening time the problem appears to
have been resolved. Add the UART rx and tx channels back to re-enable
UART.

Fixes: 3900160e164b ("arm64: dts: rockchip: Add Indiedroid Nova board")
Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts b/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
index 0796ba6d2504..dee053afc6b6 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
@@ -944,12 +944,9 @@ &uart2 {
 	status = "okay";
 };
 
-/* DMA seems to interfere with bluetooth device normal operation. */
 &uart9 {
 	pinctrl-0 = <&uart9m2_xfer>, <&uart9m2_ctsn>, <&uart9m2_rtsn>;
 	pinctrl-names = "default";
-	/delete-property/ dma-names;
-	/delete-property/ dmas;
 	uart-has-rtscts;
 	status = "okay";
 
-- 
2.43.0


