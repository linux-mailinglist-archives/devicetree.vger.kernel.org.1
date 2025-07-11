Return-Path: <devicetree+bounces-195599-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id E9FD4B023B2
	for <lists+devicetree@lfdr.de>; Fri, 11 Jul 2025 20:33:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id F2BBE1CC2D87
	for <lists+devicetree@lfdr.de>; Fri, 11 Jul 2025 18:33:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E664D2EF670;
	Fri, 11 Jul 2025 18:33:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=hammernet-be.20230601.gappssmtp.com header.i=@hammernet-be.20230601.gappssmtp.com header.b="twv8jBC6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 010342ED842
	for <devicetree@vger.kernel.org>; Fri, 11 Jul 2025 18:33:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752258808; cv=none; b=pnRxLy3aMIWU6tahDZ5d/KVt5eFHslIQUtaSVqAd15E4z+i5IEfGhpvSKpZiMXQ0po/CMDPJyaPV3c9sUZse/n4uxWwI3BD6lfoks2CH78mxSWCl3Sx5ytA0LA0SaB7IrOLyF8DEspeY86ggFG3AUG7aiaugBhpqReOwfA6uRfw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752258808; c=relaxed/simple;
	bh=1G0N7Bw1f4gd8ihh0vme3OMtchuWzqYwrdve1euwDuw=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=bOcqfADpqNPUT/jSQVPicHW9MyS0FFPhY4nyGYjfhnMbri75npL3ZuXVNTkbW6CE4T+6tFAoy/RzVFwVaC+yGot0GHMmmRxwv7pcVQsq6bs6ZlSDnDwYYerzvmtCk3mghNWWtwo11/liW59S8HattXxR09wB0vy6PDUz7lnj47U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=hammernet.be; spf=fail smtp.mailfrom=hammernet.be; dkim=pass (2048-bit key) header.d=hammernet-be.20230601.gappssmtp.com header.i=@hammernet-be.20230601.gappssmtp.com header.b=twv8jBC6; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=hammernet.be
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=hammernet.be
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-4530921461aso16011025e9.0
        for <devicetree@vger.kernel.org>; Fri, 11 Jul 2025 11:33:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=hammernet-be.20230601.gappssmtp.com; s=20230601; t=1752258804; x=1752863604; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=wGlAjOiaXk4Ea4ZU7FQtfjdQUVKQwTgsf1DZ7CdrvG8=;
        b=twv8jBC6dv1Ip0AVbkbCguXn4S4OtDYswzOmShzGdb3nI/yX1Oc9h8O8s6EJ1s9uZq
         yznJLg2LwmI4KPrzi8wE9yvJCeLR7jyEWscHqrRjzc3I8rocowuOP90NOOTiDQJ7NLfm
         dm7rrUQr3kvpKCg6Gg/FylSyA4fSVAHjshlAcP/2MUub00Oh9reSX5upS4LYBS98CkVM
         yUmJbTELPmW9ZzG5Uy5qASGCTipGAh09f1pFVt78zfWZq30PziJ33nEglUiTa1pBGYKm
         k/xUjSALfsVegYseuAeLw2S0RKKkA7Bo+ofmNJ/ZGnzqbZyP3sY7m38hhlJ6oIv/1inw
         qcsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752258804; x=1752863604;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wGlAjOiaXk4Ea4ZU7FQtfjdQUVKQwTgsf1DZ7CdrvG8=;
        b=XYuGtTsA3i1Ha0/0hsYsuGVxflpUdOVvvB7ccLWeMY4/GVmGTaQgkUynrKW/OndqmN
         5xD2wuqJujFR2/eDh3Ec0heg8bXppGae1XHrVq/5DYkY74iwwR+V0cZHJ6gJ62STBjZA
         tQeDbSIdWwei6FjsM13FucEqQHC0Xxr62tnCIQYDCC6GseEbszwwHOjGqL5jTTnpuvEn
         Qw7LUeAoD0PzFwBu23ty+XQZCPhccX86WiAhxr2VtjAZrUbRT/e5xBfSPsU2M2O6ViiD
         s//0EMiJxqVaY3z1OWY9sV2pZcExxlXuGAdaK09nPmSF4ST5qWkA4FnbE/g68dPhm1KK
         AhMw==
X-Forwarded-Encrypted: i=1; AJvYcCXaIn8kG1azsIjaWbB6uo3x/SthAfeulAPKeKHVH8D55udrH73bxbJYumZlaTlxs5HYyQchZQ2ZPVYD@vger.kernel.org
X-Gm-Message-State: AOJu0Yw8OATgOMAGCw0yR/koJ5JNvpm1qFm0tTvrpm72jUUCqwKmK3st
	G3Ct7NamevWmblKsPsjsG0hFXCcfEuNOEKMJqHFp57FlWWDCJhYcIaJwqgsiXVqmT6Q=
X-Gm-Gg: ASbGncsQ+o/onwX5OWHZ3Uyg4gocoDgDtiGvGy+BQU7uJN2WBxeZDLwv5ib9nFjjFb5
	YBhjRPM+A6aHqxAeH+o6tSkhxJeZ8QGoYeoE5lrhK0tkFr0Z/dbqY3vaShBX7gjnmf5FZiXZ9a3
	5pMAAON5rQPvDLOFuMM76S0F2ivrRjsOqYL5KgT9FQleD/F3/sRjiFWiLGzLx0GR+EbB6ueTxm9
	qqa8Awvtme05Tb4pbGVa4ssCbrmoAyVZl+v23gtHJQT7ScvzSTnyJH31SVBAwVedPV5fd8nCSnK
	xOSQzlmMLPhN4SYuqZnc02E4nhaq9wZwM0ojtC63xEi3yNIfctBGfLnAHcZS2f5o0BDmgKq8twQ
	gO4dmzF5w63dpSZAhUCs0Ti2IbXIUAGkeSG+OPpEQKulI94/JTQ==
X-Google-Smtp-Source: AGHT+IG0eptajR/3ce/67Zp32WT9bRB0ErxbOxP9NIp+sKL8MyAm504UpLdi7e8zbMZpfT85BGq8cQ==
X-Received: by 2002:a05:600c:1908:b0:450:cac5:45e7 with SMTP id 5b1f17b1804b1-4555f895800mr32393375e9.1.1752258803998;
        Fri, 11 Jul 2025 11:33:23 -0700 (PDT)
Received: from pop-os.telenet.be ([2a02:1807:2a00:3400:bed2:2848:b66c:32d3])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45601053020sm705205e9.36.2025.07.11.11.33.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Jul 2025 11:33:23 -0700 (PDT)
From: Hendrik Hamerlinck <hendrik.hamerlinck@hammernet.be>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	paul.walmsley@sifive.com,
	aou@eecs.berkeley.edu,
	alex@ghiti.fr,
	dlan@gentoo.org,
	palmer@dabbelt.com
Cc: skhan@linuxfoundation.org,
	linux-kernel-mentees@lists.linux.dev,
	devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	spacemit@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	Hendrik Hamerlinck <hendrik.hamerlinck@hammernet.be>
Subject: [PATCH 0/2] riscv: dts: spacemit: Add initial support for OrangePi RV2
Date: Fri, 11 Jul 2025 20:32:43 +0200
Message-ID: <20250711183245.256683-1-hendrik.hamerlinck@hammernet.be>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This patchset adds initial device tree support for the OrangePi RV2 board.

The OrangePi RV2 [1] is marketed as using the Ky X1 SoC.
However, after research and testing, it is in fact identical to the 
SpacemiT K1 [2]. My proof:

- Similar integration in the Banana Pi kernel tree [3], which uses the 
  OrangePi RV2 and identifies it as the SpacemiT K1.
- Comparison of the device tree code showing a match to the OrangePi RV2 
  Linux tree [4].
- Locally tested the OrangePi RV2 with the SpacemiT K1 device tree, 
  confirming it boots and operates correctly.

Patch #1 documents the compatible string for the OrangePi RV2, and 
patch #2 adds its minimal device tree. This enables booting to a serial
console with UART output and blinking a LED, similar to other K1-based 
boards such as the Banana Pi BPI-F3 or the Milk-V Jupiter.

Link: http://www.orangepi.org/html/hardWare/computerAndMicrocontrollers/details/Orange-Pi-RV2.html [1]
Link: https://www.spacemit.com/en/key-stone-k1 [2]
Link: https://github.com/BPI-SINOVOIP/pi-linux/blob/linux-6.6.63-k1/arch/riscv/boot/dts/spacemit/k1-x_orangepi-rv2.dts [3]
Link: https://github.com/orangepi-xunlong/linux-orangepi/tree/orange-pi-6.6-ky [4]

Hendrik Hamerlinck (2):
  dt-bindings: riscv: spacemit: Add OrangePi RV2 board
  riscv: dts: spacemit: Add OrangePi RV2 board device tree

 .../devicetree/bindings/riscv/spacemit.yaml   |  1 +
 arch/riscv/boot/dts/spacemit/Makefile         |  1 +
 .../boot/dts/spacemit/k1-orangepi-rv2.dts     | 43 +++++++++++++++++++
 3 files changed, 45 insertions(+)
 create mode 100644 arch/riscv/boot/dts/spacemit/k1-orangepi-rv2.dts

-- 
2.43.0


