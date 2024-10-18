Return-Path: <devicetree+bounces-112997-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 09C499A434A
	for <lists+devicetree@lfdr.de>; Fri, 18 Oct 2024 18:08:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 99318B2135C
	for <lists+devicetree@lfdr.de>; Fri, 18 Oct 2024 16:08:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E9D3220262C;
	Fri, 18 Oct 2024 16:08:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="AOvDj9cH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f52.google.com (mail-oa1-f52.google.com [209.85.160.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D5F4133987
	for <devicetree@vger.kernel.org>; Fri, 18 Oct 2024 16:08:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729267723; cv=none; b=MpUjbn9zmQnTzVp3kJDFHI0tTmR2ispiGEc3dP0OuY/j6lys6hWDQO98ZkP24EyzA3BrEJMNA7LS5gU93oq170Tk8uw2BFoNUJXdrSUPeuApPAfAlRxWwLY4vD0kJ0vb39t33aUIp0ti2OPEZjob6MgjBsU0oITaiHYOPgNB4Ig=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729267723; c=relaxed/simple;
	bh=OHeEhM5FF2CEYtTUx36s40wdUZnti4MNvfIZl+giNlE=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=mP0Fq9R+FmXr4wro54C8M8l3phVxqLmO6S87Yf7gJ+bGvGgIkcsOS+oJeEW7gyn7ggNNXhtt4DTX2h8P2P/9jg3wtzKEussD/nHPVSTXLrcTgsE0x8trTExp0F80yKWvNLX40/eCIFhLlfFmOxrfTqlCRi3Pvg3Tz9dCVMLNmPg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=AOvDj9cH; arc=none smtp.client-ip=209.85.160.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oa1-f52.google.com with SMTP id 586e51a60fabf-288661760d3so1227651fac.3
        for <devicetree@vger.kernel.org>; Fri, 18 Oct 2024 09:08:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1729267721; x=1729872521; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=8y6se+EJ6mvSxRBi5tp2Aqfl4AEwYhM+2/IievvAH3g=;
        b=AOvDj9cHcahnlrw+CjbwDOVpqc573BtWS+MwRCtdkyXsefO4gx7rUbax/TGX4QY40r
         v2CYrO4QqwPbQkMYR/OS2y7sss41IxIfTFBKsT0VzAVGbytkAxpoFFya+16Tmv3gz1SV
         xfuGmFKSCs5iY0fuLJREqdQXoub6x+ISqWfgymeTh8SUdwGsX3kLE/G+lMfId8mN4mI5
         B1mA5EkL9NRV8EAJPMc5Mr/tcK1DG71nBhdfh/OLmfbrhOfgFSA0vwAd4LmZhUVJWJIU
         qHdWh/ppy9VmkIls2+lbolu39GP4ACKnKN8XLKNUNsLP1Q6CdT1ki3ngZOCT2Y14wt/Q
         n0DA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729267721; x=1729872521;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8y6se+EJ6mvSxRBi5tp2Aqfl4AEwYhM+2/IievvAH3g=;
        b=EoGrdl9AeriGZGuW1GDlLAu2TX1LgFo7xc28y6xq0CiNrlS5IjivqN8elxI3/U5wMm
         4h8OML6GVAtaIOKg2rIbqCDhJUL8DyPpa39mqOcZLl6PlorCuJdOfQuo/Iz0YjYUXmIl
         UnE0rjcbKvA9FFOQkds9Bh2sL6f7/mkD7lHykiYuRiT1h2zd3J6ba/awtk2mBTfoUyx6
         fJpTqXzg0KmWwEDPmX/GwGdnbAA1cUzkiQUdc50ZkFt5FdSlzH2BrHOMYsLmZEM0f5En
         8uVSJLz7GgS5qN9OSnD1fbduQhQjL+G1W/RABiytoH9Uu8LT04Upl28GjPTQdhvS0Tg3
         V0XQ==
X-Gm-Message-State: AOJu0YwjfeLAF3i7xp3mRRcLIge67oiY9Ja2cNiyIWKFABaG2U9wwQo/
	6G1aZRbOssI2yeUK028Lb1v2m6OimTQMv/NqI6c/kcQynyYXhnk4
X-Google-Smtp-Source: AGHT+IG8JAdwTWiLrp0I2huJpsSFVUIkNRbYeYMXbCsedwLYlQs98Qp961iMWG/wQdyPOxCxEcNOKg==
X-Received: by 2002:a05:6871:581e:b0:287:b4c7:b6dc with SMTP id 586e51a60fabf-2892c375bdamr2433536fac.22.1729267721015;
        Fri, 18 Oct 2024 09:08:41 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bcf::54])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-2892afb01ebsm507350fac.50.2024.10.18.09.08.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Oct 2024 09:08:40 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-sunxi@lists.linux.dev
Cc: devicetree@vger.kernel.org,
	samuel@sholland.org,
	jernej.skrabec@gmail.com,
	wens@csie.org,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 0/4] RG35XX Add Additional Hardware Support
Date: Fri, 18 Oct 2024 11:06:13 -0500
Message-ID: <20241018160617.157083-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Chris Morgan <macromorgan@hotmail.com>

Add support for MMC2 and the second LED on the RG35XX series.
Additionally, enable the CPUSLDO regulator to be "always on" to resolve
bootloader issues during reboot, and add support for the USB host port
on the RG35XX-H.

Chris Morgan (4):
  arm64: dts: allwinner: h700: Add MMC2 for Anbernic RG35XX
  arm64: dts: allwinner: h700: Set cpusldo to always-on for RG35XX
  arm64: dts: allwinner: h700: Add LED1 for Anbernic RG35XX
  arm64: dts: allwinner: h700: Add USB Host for RG35XX-H

 .../sun50i-h700-anbernic-rg35xx-2024.dts      | 44 +++++++++++++++++--
 .../sun50i-h700-anbernic-rg35xx-h.dts         | 23 ++++++++++
 2 files changed, 64 insertions(+), 3 deletions(-)

-- 
2.43.0


