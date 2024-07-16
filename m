Return-Path: <devicetree+bounces-85995-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 3274A9321CE
	for <lists+devicetree@lfdr.de>; Tue, 16 Jul 2024 10:29:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 565601C21A4A
	for <lists+devicetree@lfdr.de>; Tue, 16 Jul 2024 08:29:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8E05E4D8CE;
	Tue, 16 Jul 2024 08:29:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b="vTqtcioj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f43.google.com (mail-ot1-f43.google.com [209.85.210.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBA0255885
	for <devicetree@vger.kernel.org>; Tue, 16 Jul 2024 08:29:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721118544; cv=none; b=VZT3Ma17aP1Lx1FYPQrDErrSyNHrje8WTTRqg4F/6cCKtqrVUiHWt/ctixHzx+qggvi/bAIJbDHvTKbJ3qrx2cseQ8Um6LDpnBBXRBLeXM1+S78fATjkczTEAHySwV/+VJ8tkTBOTjaB6Zpm4Mxk4293ExEXTTkO2Z3ri8oyz1Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721118544; c=relaxed/simple;
	bh=+XJUbKH9XVGi0Un4JVKR6Zse7a3JV6qmob6cOiJJw4k=;
	h=From:To:Cc:Subject:Date:Message-Id; b=q23XlQ+r4J7eX120Ua/EP9wsZ1u/BQTl8SJ8LNc5SKX8FdnrrVawWHN6AL5lOUWGr8r5hfBSg8LGRqoOoxscNYGwKF9ugVmHMvn/HsqxBw2UR8yvjP4AdeAzE0VvaBcHNt/NRaOrs8FF9WqIrCsQWBxuFExKuO4q0myJ8yrVyl8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com; dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b=vTqtcioj; arc=none smtp.client-ip=209.85.210.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-ot1-f43.google.com with SMTP id 46e09a7af769-708bf659898so1519504a34.2
        for <devicetree@vger.kernel.org>; Tue, 16 Jul 2024 01:29:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1721118542; x=1721723342; darn=vger.kernel.org;
        h=message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LCtvvIx/yZJGexuJqTFw9RuA3ab7qr2Xt+qsnXbhE9U=;
        b=vTqtciojOJsT9+BXL6aLqtY61J3qJldL6/SBHsP0g/SZm03muSdc6rHWUJRCl17HS1
         TVoYA3WqYwChiOoVNGCsVY7amBISOcF2Ktbi+zbKKzIN/DpCj60vOE5ZuIrtJv6OUIV3
         BwWZCyoEkzVSEO9r+Z3qBIdoZcCtF+yuuVsak9n76bnF/RgLXekTAMtwu9He2A572g93
         jN1coO+4TDc0J7SWJN69a5ZdtmGT070EC0J3Z2mavwoZ2ApmuvxGz/r+LOacM/QPe3Sj
         lPDb2DVbFvfThjf53MwKhcQk799Vf6oUADLvR98+KZiMCg9SQdOivoe2g7iFvN7KvUfZ
         3WXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721118542; x=1721723342;
        h=message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LCtvvIx/yZJGexuJqTFw9RuA3ab7qr2Xt+qsnXbhE9U=;
        b=UybM+iB21EaW2vBemXayVw6A8XQZKcy3FinXyKtf9JYmfXQ45LOmrNl68O3kHO2OO6
         qpQQR2Eik0UQqAT51ZAsKlndzzyzS8uBvHkBAPNYo6tBciP5IAMl3YTMxoXAh3vF7gbp
         FsA4TK6VdOlkbpel3VRCOz1hyxWx6skMwYxn60dLtyeXFexeZSgpB+m/wDI3Jhq84OF4
         BJfIQcMe/HbkkkFsu/hHdS565MDTG8ZW/7moYiZXUfKIm+Ac00SqYePxgtxKETC4QWH0
         +mYe9Bx4qCpHo4fE8Rhty0PJ2l5uE9ePubdE7OyQycQl2h6Z4ea/jBk6KV2tY1B2Q19r
         0wBw==
X-Forwarded-Encrypted: i=1; AJvYcCXNkaqjZ87DMdRpaavtklFWyI0elhKvP0RjkWEUZLClfi9bEIC86KP7KkwTkVXlL+ytxaJ8NkB9TX4Zep2yCPPRz3v4sfAe09b//Q==
X-Gm-Message-State: AOJu0YzqyUzqgApgD8Ap+zFymI7PXBciNnbRM6/ZEhovLK2pZmJ4NVwW
	Znb4t+zYq7s1prMW4fqKTYLkEM0B3LsPM+vp5qw+3pI3BpBlfMk85MWpe+0N4Ok=
X-Google-Smtp-Source: AGHT+IEdh7/ptoL+oZD1LR9e0MBdyHHjA70akBaKcXOjtXoQ623zVqNT3IYVU90f2CE4eUeMZnXb5g==
X-Received: by 2002:a05:6830:25c3:b0:707:9b5:90aa with SMTP id 46e09a7af769-708d9948af8mr1706743a34.12.1721118541931;
        Tue, 16 Jul 2024 01:29:01 -0700 (PDT)
Received: from lvzhaoxiong-KLVC-WXX9.huaqin.com ([116.66.212.162])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-70b7ec7e110sm5714347b3a.121.2024.07.16.01.28.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Jul 2024 01:29:01 -0700 (PDT)
From: Zhaoxiong Lv <lvzhaoxiong@huaqin.corp-partner.google.com>
To: dmitry.torokhov@gmail.com,
	robh@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	jikos@kernel.org,
	bentiss@kernel.org,
	linus.walleij@linaro.org,
	dianders@chromium.org,
	hsinyi@google.com
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Zhaoxiong Lv <lvzhaoxiong@huaqin.corp-partner.google.com>
Subject: [PATCH v3 0/2] Add Add elan-ekth6a12nay on the basis of elan-ekth6915
Date: Tue, 16 Jul 2024 16:28:49 +0800
Message-Id: <20240716082851.18173-1-lvzhaoxiong@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.17.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>

Elan-ekth6a12nay requires reset to pull down time greater than 10ms,
so the configuration post_power_delay_ms is 10, and the chipset
initial time is required to be greater than 300ms, so the 
post_gpio_reset_on_delay_ms is set to 300.

The Elan-ekth6a12nay touch screen chip same as Elan-eKTH6915 controller
has a reset gpio. The difference is that they have different
post_power_delay_ms.

Changes between V3 and V2:
- PATCH 1/2: Respin the series on top of v6.10.
- PATCH 2/2: No changes.
- Link to v1: https://lore.kernel.org/all/20240715073159.25064-1-lvzhaoxiong@huaqin.corp-partner.google.com/

Changes between V2 and V1:
- PATCH 1/2: Respin the series on top of v6.10.
- PATCH 2/2: No changes.
- Link to v1: https://lore.kernel.org/all/20240704085555.11204-1-lvzhaoxiong@huaqin.corp-partner.google.com/

Zhaoxiong Lv (2):
  dt-bindings: HID: i2c-hid: elan: Introduce Elan ekth6a12nay
  HID: i2c-hid: elan: Add elan-ekth6a12nay timing

 .../devicetree/bindings/input/elan,ekth6915.yaml          | 1 +
 drivers/hid/i2c-hid/i2c-hid-of-elan.c                     | 8 ++++++++
 2 files changed, 9 insertions(+)

-- 
2.17.1


