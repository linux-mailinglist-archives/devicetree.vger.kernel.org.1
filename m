Return-Path: <devicetree+bounces-254227-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 159F6D1622F
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 02:20:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 8A1B93007C0D
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 01:20:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8321B267386;
	Tue, 13 Jan 2026 01:20:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="BKTOkQqT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f51.google.com (mail-pj1-f51.google.com [209.85.216.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3273325EF87
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 01:20:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768267203; cv=none; b=Y7d/DIQWLKrrnIb5+uXiTgtpMUFEDRU4keN54dtcD2tz1wQDEJdTKZDUdFGku7J9Ti02D5ODEkdfDCSwsFNOrApz4Wc3+OkwjwDLCKmXjwsljIoTkhFFq8bphE6Ki5QfrFfteyTc4fp+ctVdlseW9w36CM6l+xim8JKPIvdVntE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768267203; c=relaxed/simple;
	bh=nlrRnuagI6D7nZ3v6S+fvquWba67iWzjKpPANm/fzUA=;
	h=From:To:Cc:Subject:Date:Message-Id; b=TnOKx9o80uOUkNGIbPx39g87/+oPHkq/Ns1/bCUpcVGcrBbWvKwNa7xVNsm52sLBxCIaaJAJrlZTT5iaekqGqJYjYbaNdHCqbIcX+5nYvG+7X/IAnL2gchZDfsRlMTFpp2qppO3yAkCTjWOgGoO3zwhjVPTTNF3ng6nFzU/pmgs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=BKTOkQqT; arc=none smtp.client-ip=209.85.216.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f51.google.com with SMTP id 98e67ed59e1d1-34c30f0f12eso4076232a91.1
        for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 17:20:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768267201; x=1768872001; darn=vger.kernel.org;
        h=message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=x3CYlMR0Tmf8RQ5i5U0+ElV7tLxxhG2GMXU9rUaD4oQ=;
        b=BKTOkQqTJlS1MgMVzvHvkanMbDMXVge91QzskLnT5Xb9MhoNS0tnuanqUhp9YY5jM3
         lwNzDRzlG8CitGrHNSqO5MRNR7JRQH5hBfCM3ChFQ7PWesLUusMePYSbZZNgTqe3gc3u
         hyS8uhQaV9R70IdhhhS1nrDACabueNL2GTgQDFmE4+8ATnYs4SysS3pEHjau5deqR2z3
         FJdVRb7cORa/4ULdOtjpvqyyg4zDK7xLwvsRSUUKgmdHKonz5s18m7V8nZGDldXcAvsq
         JAdB8s2aZinyyzP7FGdFVET03AijcleFlqNgsvlH7mLkPLWt/ceHgB6Mhxi+pmHA/eZo
         lfDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768267201; x=1768872001;
        h=message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=x3CYlMR0Tmf8RQ5i5U0+ElV7tLxxhG2GMXU9rUaD4oQ=;
        b=oFNqkT27xRc8NO+0oc/5vxKsQWLVxQQjE44DPspcY4ODd1FeddoMvgXmwh5NPZxXTk
         5ZNRtHHhhiS0Iec2/VSDkg76K9WxMiLl7eSqTZnI80Ra5Bj+xbjBBx1BV+fMtVFfnUtx
         JVfsIdGHymf4uym89/wFmWvuUfZ4CF7abfCc16lhR4d9usPKBINdYzA951OkHoPsWXLE
         k74HIVPouSQso+cnMmIDJwvBbEYY+KVedweOG301Se31Ye+l9samDxKouxG2AANVjnUW
         ZQlC9EF/6b4ZjoBr7RClcTqNwZPc91Mn9rv5QMfkvY5H8RNASEhZiO597rHYYdxlroSq
         K0IA==
X-Forwarded-Encrypted: i=1; AJvYcCXwbwSNEKfjlrkfDJ+vLwL263lu1FwLfEH84/Nsz2aXK2VDGtnuoePeED4/p/+ITB4DhKXZaxbRLIWm@vger.kernel.org
X-Gm-Message-State: AOJu0YxyAOL+kQrZFiC1+r3RBt2bP3Rtk3QEjyaEBUz6JhC11uvwGh5C
	2YzSS28Nsl9tMNwy3axlk4gtJ/KkUI+jYva5Ri5nM18vu+j9lVdaJPQY
X-Gm-Gg: AY/fxX6bMQ1jPoitG/CiwraPGA1nE+0c3i4Xc8mtggCHfE5/IMi5igp/Dcqxq/Iy1dS
	2XUHVXDnUrvcBe+YDcXbeOOcim1dennRKLAyi8tHLUlA04HrbMhTLJqjJYCeysFeXqanLOm2rxW
	fcgMx64Iu5ungTfo98NE7awEZM13W34YlEpyOPmXjw4W0YrZqD/u0o7a6+F4cvyLJrndBM2EFUh
	pntQoSq4XmDjzJI4PaoB41zvNVnQ3DfQh9kmJ/4UdpBT/OPaMVLWzJj7Ax/klnchpVoaa+WOAJ5
	r7a6veYMnICPmKFSn9MdADQ9/GahvIZFwNo/WOOE1v9/VGt1L0vB+T7CoBivrpjLKVXa+/N+Wa0
	PZT0Nn3bMslemiFyjtn7WqzImtLPOBwUI5xbQRmSrLcs2rNAEMgNcecEwwBTrIOs3LJbqAJktLZ
	1zI7+40xU=
X-Google-Smtp-Source: AGHT+IG8txkoiMCUKW9YZHZofyZykPuk3kA3XK9+QfFe6Sd/CcyTQyE/WnqZnbSHsGDn+shRYOq7Gw==
X-Received: by 2002:a17:90b:2709:b0:340:bb64:c5e with SMTP id 98e67ed59e1d1-34f68b684c6mr16514934a91.14.1768267201486;
        Mon, 12 Jan 2026 17:20:01 -0800 (PST)
Received: from localhost.localdomain ([47.82.78.41])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-34f5f7c4141sm18533379a91.6.2026.01.12.17.19.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Jan 2026 17:20:01 -0800 (PST)
From: Nick Xie <xieqinick@gmail.com>
X-Google-Original-From: Nick Xie <nick@khadas.com>
To: neil.armstrong@linaro.org,
	khilman@baylibre.com,
	jbrunet@baylibre.com,
	martin.blumenstingl@googlemail.com,
	xianwei.zhao@amlogic.com,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-amlogic@lists.infradead.org,
	linux-kernel@vger.kernel.org
Cc: krzk+dt@kernel.org,
	conor+dt@kernel.org,
	robh@kernel.org,
	nick@khadas.com
Subject: [PATCH] arm64: dts: amlogic: S4: fix SD card initialization failure
Date: Tue, 13 Jan 2026 09:19:31 +0800
Message-Id: <20260113011931.40424-1-nick@khadas.com>
X-Mailer: git-send-email 2.17.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>

The SD controller (sd@fe08a000) requires a clock source capable of
generating a 400kHz frequency for the identification phase.

Currently, the sd node uses CLKID_SD_EMMC_B as clkin0 and CLKID_FCLK_DIV2
as clkin1. Both of these are high-frequency clocks (e.g., ~1GHz).
The internal divider of the SD controller is limited to a maximum value
of 64 (2^6). With input frequencies significantly higher than 25.6MHz
(400kHz * 64), the driver is unable to generate the required 400kHz
clock, causing the probe to fail with -EINVAL.

Fix this by reparenting clkin0 to the 24MHz XTAL clock, consistent with
the configuration of the sdio and emmc nodes. This allows the divider
to successfully generate 400kHz (24MHz / 60).

Verified on Khadas VIM1S with SoC S4 S905Y4.

Fixes: 3ab9d54b5d847 ("arm64: dts: amlogic: enable some device nodes for S4")

Signed-off-by: Nick Xie <nick@khadas.com>
---
 arch/arm64/boot/dts/amlogic/meson-s4.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/amlogic/meson-s4.dtsi b/arch/arm64/boot/dts/amlogic/meson-s4.dtsi
index 9d99ed2994dfa..b87bc83b5a9bb 100644
--- a/arch/arm64/boot/dts/amlogic/meson-s4.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-s4.dtsi
@@ -833,7 +833,7 @@ sd: mmc@fe08a000 {
 			reg = <0x0 0xfe08a000 0x0 0x800>;
 			interrupts = <GIC_SPI 177 IRQ_TYPE_EDGE_RISING>;
 			clocks = <&clkc_periphs CLKID_SDEMMC_B>,
-				 <&clkc_periphs CLKID_SD_EMMC_B>,
+				 <&xtal>,
 				 <&clkc_pll CLKID_FCLK_DIV2>;
 			clock-names = "core", "clkin0", "clkin1";
 			resets = <&reset RESET_SD_EMMC_B>;
-- 
2.34.1


