Return-Path: <devicetree+bounces-159442-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E7EB3A6AEBD
	for <lists+devicetree@lfdr.de>; Thu, 20 Mar 2025 20:46:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0B59D9830EE
	for <lists+devicetree@lfdr.de>; Thu, 20 Mar 2025 19:45:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 791E2229B12;
	Thu, 20 Mar 2025 19:44:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="WigfZVxa"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-io1-f48.google.com (mail-io1-f48.google.com [209.85.166.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8DA9F2288D2
	for <devicetree@vger.kernel.org>; Thu, 20 Mar 2025 19:44:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742499896; cv=none; b=pMmj/peBYa4xBDHtkdcRV3AAYe4y0zFvk6Sr6g8IxZ5R07LrSkUqhuzv56tyHPLEE9BDAbgKlOyau8xcshnNNp4Sm39J0WHi9ZBTw5NevM0fb0qtx1o+0ZZO5FjVOCZxkZ4NqHskYnbh/DUjGlLVqV9WMs3TjrSkonhONUxXVd0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742499896; c=relaxed/simple;
	bh=zrHP/gmG47t4vvKq7gzmaxI06hPKcdUhZERfPB/kMcc=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=Legdrq8qjWNUTqJL3i/X5cOceCk2ucihRRnrz9P6nuWicR1n9C6uoGcu+cyAL7w2FhaGh0eMJEuNsatqJFFKH7OIldE5h99KoSFCn/D+va9jEMZB+DExKfmSnxWOcOc6s9zi6q2V6bSnHiAb1xRJuGhMUF+alZ+TkVo8Wz7ZLnA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=WigfZVxa; arc=none smtp.client-ip=209.85.166.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-io1-f48.google.com with SMTP id ca18e2360f4ac-85dac9729c3so92620439f.2
        for <devicetree@vger.kernel.org>; Thu, 20 Mar 2025 12:44:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1742499893; x=1743104693; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=AW49rekhn13ov0fYjoV+6+dgXQ3GIdWnPfM3LeEAqlk=;
        b=WigfZVxa+Sc2C6oPQnyhmefRACIjgmVqwXmNJkP/WM6DR3pZx+dOBi66PcaL9reWZn
         Mdb+iOSMW10iLZ/2ZX/oTHU/oeoto9bmWOsv0Im0gaPpgLYfceZs4SxD1a/plAxR2bpt
         amz9FLyqlw36EVZxbkS4OwyCNHf8Tv9C/x4CSIHrlv11p8OHN7CLNdGUCPB7ZWivSNqI
         nmxja7/cQ4Z9eXvxEdyus4Ei+49JnAbczdnzoXknEjqodCHp9YHF8h17F6gplYvRteHv
         OaJT4i/230EI/fzmYsHdE7tALvLYo9xBkr29UuNY5NDRtg78TeT6eYp39SoP/AAvjIEl
         Dmjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742499893; x=1743104693;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=AW49rekhn13ov0fYjoV+6+dgXQ3GIdWnPfM3LeEAqlk=;
        b=KtebyglSfFdGXaHCMJTDcwFwkzEvtmCZQN6atRez2m+vzRHeru+nwXuahoBNOQEhKR
         w8LYAg6zfzJr7nRwm9CIw/rftrmSsj4jVXfOjvF1xbn0aG2rtEsBwzUSa6lOJu7cyFgd
         OiurJcshz0FXsRqYymS6++RtrSsUSYTFx/W72z+kzKTBa4w9Qoqw/YKplrJjOkryn/tP
         E295F9Ku3cNR7mmB02HRVQP4WlqacR1BotEzwdVO5ebSAZdx87ZT+/KV+7pcMbm+E8TO
         Tk4W3e/LstdUWuRHFxc2t2eh/O9UIZUsFehIA76XCSv6KJrbCO/5dfu7MomrxSgGB1H6
         1SKg==
X-Forwarded-Encrypted: i=1; AJvYcCXKHj25RjsRhnkk8ZSN+e93H9+Q30D8A9VDwcsIly+AXK9cPQpjqcVmruPRmCugKTGxsHgud5hIujNm@vger.kernel.org
X-Gm-Message-State: AOJu0YzgVThE3wRyt5tCW9WX1WIjYJkDVhbxmJ5YQoZHRfrf9b3WOqVm
	5uE/Ty+cafONHGE/FgiDZoOcEQIXwgahrkDEOd4juCWPsMZsXQDSbgP3QdUBW0E=
X-Gm-Gg: ASbGncuq3Lt0GWhKFMhHCnEpY5FDOM0nDEf6b4le78LTF2UsDz2YQM2BTIA9F+zKo/D
	BBYtIStbfXwymopFV3B3985W2cy+ulwoUjdMJW7dj/pYmt4gsTP44nz/xWujbPUzb8XN/IQ7WqC
	XegAptm9FOGwvG7yFK1VwQbFvuO3HUSVtUrIIXZxI71IBfvhPnDcy566JGCBGT7r6vYZsavZXKZ
	maiJPzJebSH+LBdDDqxJhXVr7ap4oMagrZGAIXIQwvOfWoeS8Z8iO7HmKRACMkcyIhGIjeOZrW8
	CdGeBOMSSznmDPH1sOx3PjvrecOLWFCvc7YsQ3PIaWz7K+wvcFeVCnexBGXKO+FkEdTfHinFJk/
	+a+ybRVGnpLTbzPOrXOvuSuiH
X-Google-Smtp-Source: AGHT+IFltPpVI0ACnzJTqj+VKPKw57T57QohZSAekfF3yS1ZRlpAvC4mmTtGWHjmmF2YmyCcadc1NQ==
X-Received: by 2002:a05:6602:4c83:b0:85b:3827:ecef with SMTP id ca18e2360f4ac-85e2cc5ebefmr62134439f.12.1742499893623;
        Thu, 20 Mar 2025 12:44:53 -0700 (PDT)
Received: from zoltan.localdomain (c-73-228-159-35.hsd1.mn.comcast.net. [73.228.159.35])
        by smtp.gmail.com with ESMTPSA id ca18e2360f4ac-85e2bd8c40fsm8341439f.32.2025.03.20.12.44.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Mar 2025 12:44:53 -0700 (PDT)
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
	devicetree@vger.kernel.org,
	linux-clk@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 0/7] clk: spacemit: add K1 reset support
Date: Thu, 20 Mar 2025 14:44:41 -0500
Message-ID: <20250320194449.510569-1-elder@riscstar.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

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


