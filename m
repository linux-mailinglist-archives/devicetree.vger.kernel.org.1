Return-Path: <devicetree+bounces-227154-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id D74BABDF1F4
	for <lists+devicetree@lfdr.de>; Wed, 15 Oct 2025 16:41:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 82C9935796F
	for <lists+devicetree@lfdr.de>; Wed, 15 Oct 2025 14:41:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 277E72D839C;
	Wed, 15 Oct 2025 14:39:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="eJTMLG3Y"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f174.google.com (mail-pg1-f174.google.com [209.85.215.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 895302D73B0
	for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 14:39:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760539187; cv=none; b=WNbAyL1wp0NpwiMtCfNZ1gAyYggYUKqBqNQxOHopylhlScZ8svUIBJisGFovP+6r+AseaXZC3hSvhAyqohhtryRZkqxXdA7tBLxvJvq8EtcNo4mngeFKDxW5vReS3ok8rk0jZRo3WkrfYFY5i03tlVI2o3vabMCczKYUVdeNwDQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760539187; c=relaxed/simple;
	bh=lYf/qe80oLGAnbA7MhV4NFVx5ShYiQse0PXVM1jfQ10=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=HyT0dsL3ZrA+AOWgiVWTyVkP+TU5B7rJflYuoiaGGvfMEC9K0z5QxEqtE7+BegP3bwq8M0ufxHjG6NcwNoOy30BbN8woPiSO83PMlC1gw7VkwdUJxN6JvRFiZWNWo0Rfg3OvE5l+x5E4jEVlCF6F9D/jupWjOqJ9ZKXt4vlQTCI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=eJTMLG3Y; arc=none smtp.client-ip=209.85.215.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f174.google.com with SMTP id 41be03b00d2f7-b62ed9c3e79so4335676a12.0
        for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 07:39:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760539185; x=1761143985; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=F/LQNtZoS7OfijYrFt3rjrDuiajb22vvwUPhElheOqs=;
        b=eJTMLG3YVH8WC6q/6qdtQD0sYY23AFn61FQaDZFIIe3O0hQKLTifeLDS2Kn5qwovFm
         6kcPhrJ0YHyxBbaMbgaECNEQW5M30VCry2w2u7rl/KpSY+V15K2OBWwPRF7oefySKFVf
         xkFs0/kFNaVuVa11Huf1vF8XjBogj31DU9MHnM/bCqXmLuO8kQC1yl747mSlpaIcYfee
         W+rVizuNLS3YCAcyz2eVcdCCIumrlLMlvA8nMu5bysjrUsYxbzqGeN6noV4jNNYeuyVm
         Qmsae+oyvtgk3Qr3TyhQu/FNGe4JgY+dYc/xUi6AqUOB3XYHzJhQ3MFuP1BrOSQ/APMk
         +s5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760539185; x=1761143985;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=F/LQNtZoS7OfijYrFt3rjrDuiajb22vvwUPhElheOqs=;
        b=V6bJNe+FAnRx6CMqOy26eQdgvaLEajwTpLsXvjJMokxosyc4M9oI9d4h8R3/dvx5PJ
         XDp2G23M+MZ1hJiZk21NhkDMTPDg1sKZE5gnR5uLTGTx8N+GJo1KP2iJ+8DF+Wne5kFM
         LJT/fIy/Xd0TAjUU8QVYVp2U3IZjfg7pgt2gjSn0bhTNW87Vc8JTTlOlpBI/Qbx5u/Vt
         7g6Z7TMAihOb5toMziiu5VhbfuBHWrn+u6mCNEZ52XS7geMmhvzdwXfG/BH6iVMCllB0
         0/TFJCsol9QHnJOs+Al075gN1wL8hSoNgxXl7j669eiAmqBDXp0Xc0aOBKaMRXEgu0R4
         bubQ==
X-Forwarded-Encrypted: i=1; AJvYcCWEubyck4leJ6t/G+EO6VLXaDrTrQx4mwcNm6XXcz99KoowIta5Fs4u/TV7wDvwEaUqAN8weNXd+uEn@vger.kernel.org
X-Gm-Message-State: AOJu0YzTbJKUqrKcNkutZVHPigwvk4uCErh9nQ7hTsJP3yw95LiEXqfY
	q9//Ugcxo1Ud2GP8ShzZsLi63IX0TDv4RISFxLkLlFR0s4ArcQwjrMhA
X-Gm-Gg: ASbGncu8OHQOGkWRZ5qB0mRdB2rcYiA0PAbfUHVz9I66+xmr5G1mrcDp/4YRlDyD1lP
	+sj+OY/jDkp5TKpdzA1AnTLEs6s5xs9zFFM+uZs2M9JXoVR2HwC30lgDzz1znJpj97IWR7WZ+rW
	Snsh8/I41/MA2vibuHfnFWV8mIhVyjRkxy6DweITXfIWBap2DLgqCqHqJQNfsweMFdgptrvaamc
	WNwuFUpZbdGRnyzVVgGlbS2G02lfzdTN0yHfCvhCkLl1sjQaMJ7xLCgma0+VyVaPlCa6PaeNLAH
	fyvx+Mln7zTCLDjoen8S41/0lYhq+t5MMweNBIt48QKf1gNIxZbkZKSmk2xSe+A+dtBp0z9otkD
	lcohgiMbf4ylqUS0HCF/sc6osQVhyPh3dBoXNJ+M378EDpeMyVNHbryHavU52lMd8x8weWNM76u
	cneNfbPRSutXUJFiZqGV0f25edpg2aRQ==
X-Google-Smtp-Source: AGHT+IF2UAqKBEIsjWDU03fhnfdk79hzfXklRzmYJu0XI5WZNyJUsJl9A1TbaofF+An7RpHOubeYSA==
X-Received: by 2002:a17:903:2c10:b0:27e:e96a:4c3 with SMTP id d9443c01a7336-29027374b5amr331259715ad.14.1760539184757;
        Wed, 15 Oct 2025 07:39:44 -0700 (PDT)
Received: from fred-System-Product-Name.. (61-220-246-151.hinet-ip.hinet.net. [61.220.246.151])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29034f36738sm199853455ad.87.2025.10.15.07.39.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Oct 2025 07:39:44 -0700 (PDT)
From: Fred Chen <fredchen.openbmc@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Joel Stanley <joel@jms.id.au>,
	Andrew Jeffery <andrew@codeconstruct.com.au>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-aspeed@lists.ozlabs.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v4 7/7] ARM: dts: aspeed: santabarbara: Add eeprom device node for PRoT module
Date: Wed, 15 Oct 2025 22:39:03 +0800
Message-ID: <20251015143916.1850450-8-fredchen.openbmc@gmail.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20251015143916.1850450-1-fredchen.openbmc@gmail.com>
References: <20251015143916.1850450-1-fredchen.openbmc@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add eeprom device node for PRot module FRU.

Signed-off-by: Fred Chen <fredchen.openbmc@gmail.com>
---
 .../arm/boot/dts/aspeed/aspeed-bmc-facebook-santabarbara.dts | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-santabarbara.dts b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-santabarbara.dts
index 3ca5109af19b..f74f463cc878 100644
--- a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-santabarbara.dts
+++ b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-santabarbara.dts
@@ -1076,6 +1076,11 @@ eeprom@50 {
 		reg = <0x50>;
 	};
 
+	eeprom@51 {
+		compatible = "atmel,24c128";
+		reg = <0x51>;
+	};
+
 	// BSM FRU
 	eeprom@56 {
 		compatible = "atmel,24c64";
-- 
2.49.0


