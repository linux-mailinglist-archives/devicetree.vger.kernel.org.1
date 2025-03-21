Return-Path: <devicetree+bounces-159732-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 00FF2A6BE22
	for <lists+devicetree@lfdr.de>; Fri, 21 Mar 2025 16:18:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1A39B16B8CF
	for <lists+devicetree@lfdr.de>; Fri, 21 Mar 2025 15:18:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1CFEF1DE4C4;
	Fri, 21 Mar 2025 15:18:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="hXkiOk/i"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-io1-f44.google.com (mail-io1-f44.google.com [209.85.166.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 495AE18DF6D
	for <devicetree@vger.kernel.org>; Fri, 21 Mar 2025 15:18:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742570318; cv=none; b=hZ6sUqU/cxxcMuJs5T0/hIOH5DTVMQhnGBdd/HQMVl3Xsp7c9PjkfIyPjBN7faxNuh0Jy5v+4T39sJPVCZls1ApeeDIdVRSHEFF/LAo26i2dBgVDHuq9f+nj0zzEs7VsTJHip3auxkqBvWuFh2T07J/UmxjnUSX4kdlPxp7d3B0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742570318; c=relaxed/simple;
	bh=zhaML4Pm1m+KgXGzKB1u6T1c5KY484O/gyZwJl4YL/E=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=ckveQNHeeiph5mZSsRgMSWR2Q6uBs7w49YvQ14WFB1Iw7R4jMD8J60chEligRtLwCn8251x/NsYOe3hq+pIKfk3Dwx/fpv/hK6WbxQ9OHRgUzNGswDMnV4IZYLtJGMPWXyzXqDCHUgFrwV2ete75BUqDX8M8irleTrPlqsQt6mg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=hXkiOk/i; arc=none smtp.client-ip=209.85.166.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-io1-f44.google.com with SMTP id ca18e2360f4ac-85b515e4521so63893039f.1
        for <devicetree@vger.kernel.org>; Fri, 21 Mar 2025 08:18:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1742570315; x=1743175115; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=UTantLRj2g1pI/nv2rQCu8piWojTNSsUaDvPh+ZcZxc=;
        b=hXkiOk/ihh6uAQp8bV1d4GUG0/Shih91SHUOWa3E+gxKndxMWJT7xTfkhqDVlypUiw
         QFI/Kmdi4a0DnbOBkeql/WVhXSrhT8rjeW9OljzsVNWuETVUVVbNn2YfL0PDoQ4/IaE0
         qiCrzO7QBiOdYWiDPNGnORRmaN04WvUOQ8EFN8d2Lez1uxcahG2pgXOL3HdsLdb6IZ5w
         pJBOzZlGZ6c2bZ//x7S0fzXICfi1EAtY56Ec7tPYew9UkLq87oY5L2te/Az5bkCR5grI
         4xQkyOge3+qq1ryui2DbbG0vX3jJ9vJxDaz3JDCK4HgZY6FHjAmZJwuQqWf6YhZd9vcf
         ABHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742570315; x=1743175115;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=UTantLRj2g1pI/nv2rQCu8piWojTNSsUaDvPh+ZcZxc=;
        b=KEeo5bU7koMqhOFmcXhFKriyWzGV5e5uC0hGWw4Ugg+keCAnlc69ByD/CAEjZT69JS
         2myB/fvC/Fz4ZzTbBdCWmK1bkN2BkaR0Gg7x2xj67CjCWgMK8wgRin/2vDdILKRjE4pJ
         SWqZaQae40l0yvV8N1LqAZ1bjpi11PBoEYHmbPOVqdSQPNPEPgz91SeteD5tTE+Nq/jv
         fCt7Vv0OJuNXo38dpuTLUQpegGHRRXvxHxdir32Tt+SWPLl83iXepr45dGnwBgNl84VW
         J6zHJy1DKEYNDJxFzd8X5Wz3wPgQxCC5wD6tKDeJ8exu/rkXY+8goGfvhT0fr/KM6OFM
         nmdw==
X-Forwarded-Encrypted: i=1; AJvYcCXF8MMsikHLyqQUrJK2xTeIcW7ekNokuxf+vsxar2Ij+TzPgr7lxnK4JHp/OrTAT5GHRaQlFQI60uwQ@vger.kernel.org
X-Gm-Message-State: AOJu0Yyt1ZAhTzSzPnX1DNV2//aPNKV6+MYk/8ib+OMZlLUSZdHFuyJ9
	VgJ4o/wsNzvbwVPMDnUAXqzopGYLh/BvlYq8Ceono275FL8xQhbogIcYBgtW8zk=
X-Gm-Gg: ASbGncvqDe0FUGK562R07AgQ5a4dX8UqszU6pQxkD2UHu3SrtQdzw1gpQpGe+nB9u++
	H4h+7z/WKvHMSVpZ/aTS8PQNp8g+eVmpCLEsmCy15s9JJ4aAXhdRG6gLZGMEDqDu6HZXk1I5D58
	+kdFzVxN2hdXVK7IzoJpBN3lYVWPuJOHsiEiJ9FkrRqFUkRUzvKmnAFa8IvI5x5cm5YQfAuaG1L
	3UEgt/Le8EzKDdiPFMlGGvdWxry9P6OaMvUYhY8nNCWULkFlAtce8nS5RDauAP5jzNb3qvnwYI9
	Nu0hhE/RkRWD2lMoPBcHEAgXyVxkq8CEuMXpYKBM4Y+fVrfwHBIuuguO6ZIqQlU1kcS9Gwr3iae
	fvdR1tl4LAmDEEFHLyBo9QGRb+HzNBW3GFtw=
X-Google-Smtp-Source: AGHT+IGSab75MXOOp0j710KIm4LrkQU9r7YtJUQHaFEL9MotB5UuhKhBeVLzh5RSsEP9NerpL6ljFQ==
X-Received: by 2002:a05:6602:3998:b0:85b:46d7:1892 with SMTP id ca18e2360f4ac-85e2ca1895amr415643939f.2.1742570315183;
        Fri, 21 Mar 2025 08:18:35 -0700 (PDT)
Received: from zoltan.localdomain (c-73-228-159-35.hsd1.mn.comcast.net. [73.228.159.35])
        by smtp.gmail.com with ESMTPSA id 8926c6da1cb9f-4f2cbdd0a21sm475553173.41.2025.03.21.08.18.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Mar 2025 08:18:34 -0700 (PDT)
From: Alex Elder <elder@riscstar.com>
To: p.zabel@pengutronix.de,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	dlan@gentoo.org
Cc: heylenay@4d2.org,
	guodong@riscstar.com,
	paul.walmsley@sifive.com,
	palmer@dabbelt.com,
	aou@eecs.berkeley.edu,
	spacemit@lists.linux.dev,
	devicetree@vger.kernel.org,
	linux-clk@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH RESEND 0/7] clk: spacemit: add K1 reset support
Date: Fri, 21 Mar 2025 10:18:23 -0500
Message-ID: <20250321151831.623575-1-elder@riscstar.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

(Resending as requested by Yixun, this timing adding the SpacemiT
mailing list to the CC list.)

This series adds reset controller support for the SpacemiT K1 SoC.
It is based on Linux v6.14-rc1.

It is built upon the clock controller driver that Haylen Chu
currently has out for review (currently at v5):
  https://lore.kernel.org/lkml/20250306175750.22480-2-heylenay@4d2.org/

It also depends on two commits that will land in v6.15: 5728c92ae1123
("mfd: syscon: Restore device_node_to_regmap() for non-syscon nodes")
and 7ff4faba63571 ("pinctrl: spacemit: enable config option").

The first patch adds three more system controller CCU nodes to those
implemented by the SpacemiT K1.  The second updates the existing clock
driver with a structure used for OF match data, allowing both clocks
and resets to be specified.  The third provides code that implements
reset functionality.  The fourth defines groups of reset controls
implemented by the CCUs that have alraady been defined.  The fifth
makes it possible for a CCU to be defined with resets but no clocks.
The sixth defines three new CCUs which define only resets.  And the
last patch defines these additional syscon nodes in "k1.dtsi".

All of these patches are available here:
  https://github.com/riscstar/linux/tree/outgoing/reset-v1

					-Alex

Alex Elder (7):
  dt-bindings: soc: spacemit: define spacemit,k1-ccu resets
  clk: spacemit: define struct k1_ccu_data
  clk: spacemit: add reset controller support
  clk: spacemit: define existing syscon resets
  clk: spacemit: make clocks optional
  clk: spacemit: define new syscons with only resets
  riscv: dts: spacemit: add reset support for the K1 SoC

 .../soc/spacemit/spacemit,k1-syscon.yaml      |  13 +-
 arch/riscv/boot/dts/spacemit/k1.dtsi          |  18 +
 drivers/clk/spacemit/ccu-k1.c                 | 393 +++++++++++++++++-
 include/dt-bindings/clock/spacemit,k1-ccu.h   | 134 ++++++
 4 files changed, 539 insertions(+), 19 deletions(-)

-- 
2.43.0


