Return-Path: <devicetree+bounces-168817-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B205A94762
	for <lists+devicetree@lfdr.de>; Sun, 20 Apr 2025 11:48:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B9EAF173383
	for <lists+devicetree@lfdr.de>; Sun, 20 Apr 2025 09:48:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8AFE81EE7A1;
	Sun, 20 Apr 2025 09:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="I0xt2Eyk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C935114901B
	for <devicetree@vger.kernel.org>; Sun, 20 Apr 2025 09:48:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745142513; cv=none; b=j1CGaazkPOm62UwwCyGhAW2jqLNaq+YuEqMwVfAHqueLQMa1SmJR55ITOV+Gy1FzAFYAGBAN0EAw5H7Ib1isWco65h+UDyyh5ymcZmflszr14TH2PpvdfSazUnE1TjW0mwAvjYrLuGgKAzAlL7CE8fOHsu8zFHYr0hmIhQKAj6I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745142513; c=relaxed/simple;
	bh=6VxIYaKIWn8yii/GfU9vwQ76mILw7alX8heBfuLY9lo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=QrDb9Vu1GyMBBj8QNHIMxds/oe3dMHRu9EMW7YFmqsguEXbqekM3knJC74HVFnj7X22+DhfdhIicrTHO27rpXr1Bcz3ZdVOXvES9HuY22ORIjYR0OxGt4VveDGiyRakPbSmaKP+6xWHjknT3zRMyCb3arKmBbvbMm9G9rQMK7HQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=I0xt2Eyk; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-43cebe06e9eso25968335e9.3
        for <devicetree@vger.kernel.org>; Sun, 20 Apr 2025 02:48:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1745142510; x=1745747310; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=J70zSIsICNkhe0luW48bZRB0FNJW9CojZ7pnZGLzqis=;
        b=I0xt2EykW28zS8lFTMA3up9wC0N8r+Bs5mdcJLquZWxSZyfG5lVzmamilxiRICvlr1
         xHw6Z+l3rFZyC1LIB1zkipp9wNnQQZdNzxxAE2zCBxLLexxqzI7b0l3dkxI5N2Rj1NHc
         yc94HPvastCpeB4COpJR92T/4+qhfprqYZebpvPyhDdzGJuTj3NtWhv2d5hkihpP+BOw
         SFW+OY8BdsGIgcd8tkL9M74Ygx2KZYFD7tSzW33/dBUM3niSjXIGPvOoMb0wayxiZp5p
         57OPpoje+uSSaTLhdtDzfuHFlD9PNrnksxKnnuokE71lZULs0F3+NkgiPUfWsGNRUKSh
         Pnfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745142510; x=1745747310;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=J70zSIsICNkhe0luW48bZRB0FNJW9CojZ7pnZGLzqis=;
        b=SH0SPx3VlS76fR4HnwuJGGZuzgf3NzKi74FZrb+xJxsWl7e1Ob7uoPmPquN0UwxYKt
         vd3kpdbAwLAfSBy/JnYXJg7v+ueZCUAfHc9VvkKrEelalqn7WLLtKY8rGuif7RCsDcZ2
         2aj9HgKSfLv+4OIGJ9nntUOeEbgTfucOqOKiZwGJL3TEFTe3jo6+B25vC6a9AIEM66AA
         c98M3xaVM01XeLlDn6JGgEgL2u7z+Vk5O2HS60Td8dW0OD5Bx2mfnkFAbpnuizXyarze
         HoEJbRDXWWID+A0ILXyARQq6WfGHK4Ef2wyYpHfzWDdkQml9n8qwqo4Sr15fz/XWEY8V
         ehBg==
X-Forwarded-Encrypted: i=1; AJvYcCUWzPIW1znhXI1EX4SbjxjatQ3GTwGtd7Z+2KSw8bAZnrtVYWMo8oajz/LX4cXlDlz80chNKgJgPQ3P@vger.kernel.org
X-Gm-Message-State: AOJu0YwkTof+Uz7ASVhitTqF4hDr7/aj9MnP9A7SJ5uDg9RNvRmNpauH
	gFoYntBFVQoT59QtzdAeiiAZLTuBrOM+etptNt8nYwy8gwpRcabS
X-Gm-Gg: ASbGncv4lYKsxHDmPPSm2JS484kK15aVQT/VPFjcx4l1lVAYF5iBPuELpzX4NRjC135
	d5kKbSTv818VwUN4RAGGEiD3tz1C4YxPmtu2obDi9UgR9Kfl58F9Azusrl+p0Nzf2bmxdImSONC
	jentCYu6IbMdiKwk+WyshOTG0SUqakMnu9wG2LEZTCwKYCSeI21VuP9xYZ5KLayulHd0cKd5iTa
	mk54il2fOaUBgNKfq8P5NXDndBiglav+3qhwgkIjr9ejNCksezDa9aXhihagLX/6qFonUOxQMA7
	CLKuaGAz06I9SOti2YRRDcKC2fyALZ8ajEkjHf7i8ul56/xPsvXB3nrRkQ9MZdZlC/gia7H70Jm
	dMA4YGLS0nGP6nX9F1w5uODI7xZLH9nNTl7KjjfcEv08Ovn0Hmli7Q29GNIkNqPyRZVi/9mEupn
	8=
X-Google-Smtp-Source: AGHT+IF9o36sHCpVLQh3u/uS8Mj0MuecjMIiXN/dsX6wb8zysslgsszsD29TtXQILSnoqleCJeVPxg==
X-Received: by 2002:a05:600c:8711:b0:43d:934:ea97 with SMTP id 5b1f17b1804b1-4406ac0f82bmr69263145e9.27.1745142509826;
        Sun, 20 Apr 2025 02:48:29 -0700 (PDT)
Received: from cypher.home.roving-it.com (2.c.4.1.7.3.6.4.2.a.a.3.0.f.c.2.1.8.6.2.1.1.b.f.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:fb11:2681:2cf0:3aa2:4637:14c2])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-39efa43bef1sm8273712f8f.49.2025.04.20.02.48.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 20 Apr 2025 02:48:29 -0700 (PDT)
From: Peter Robinson <pbrobinson@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Chen-Yu Tsai <wens@csie.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-sunxi@lists.linux.dev,
	Dragan Simic <dsimic@manjaro.org>
Cc: Peter Robinson <pbrobinson@gmail.com>
Subject: [PATCH v4 1/2] arm64: dts: allwinner: a64: Add WiFi/BT header on PINE A64
Date: Sun, 20 Apr 2025 10:48:04 +0100
Message-ID: <20250420094823.954073-2-pbrobinson@gmail.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250420094823.954073-1-pbrobinson@gmail.com>
References: <20250420094823.954073-1-pbrobinson@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This adds all the pin mappings on the WiFi/BT header on
the original Pine64. They're disabled by default as the
modules don't ship by default. This includes, where they
haven't been already, UART1 for BT and mmc1 for WiFi.

Signed-off-by: Peter Robinson <pbrobinson@gmail.com>
---
 arch/arm64/boot/dts/allwinner/sun50i-a64-pine64.dts | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-pine64.dts b/arch/arm64/boot/dts/allwinner/sun50i-a64-pine64.dts
index 09e71fd60785..3256acec1ff9 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-a64-pine64.dts
+++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-pine64.dts
@@ -124,6 +124,17 @@ &mmc0 {
 	status = "okay";
 };
 
+/* On Wifi/BT connector */
+&mmc1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&mmc1_pins>;
+	vmmc-supply = <&reg_dldo4>;
+	vqmmc-supply = <&reg_eldo1>;
+	bus-width = <4>;
+	non-removable;
+	status = "disabled";
+};
+
 &ohci0 {
 	status = "okay";
 };
@@ -286,6 +297,7 @@ &uart0 {
 &uart1 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&uart1_pins>, <&uart1_rts_cts_pins>;
+	uart-has-rtscts;
 	status = "disabled";
 };
 
-- 
2.49.0


