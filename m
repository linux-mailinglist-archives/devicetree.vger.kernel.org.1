Return-Path: <devicetree+bounces-85643-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F5E2930ED1
	for <lists+devicetree@lfdr.de>; Mon, 15 Jul 2024 09:32:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0A8422815EB
	for <lists+devicetree@lfdr.de>; Mon, 15 Jul 2024 07:32:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3D9B318411B;
	Mon, 15 Jul 2024 07:32:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b="MNMkaaUZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f175.google.com (mail-pf1-f175.google.com [209.85.210.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B591513A888
	for <devicetree@vger.kernel.org>; Mon, 15 Jul 2024 07:32:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721028732; cv=none; b=NrXiN6MTtgb3zadh5NylDevTlw7CMbR0GYS//Pa6p4FCBnPiydKsMXEidK0lvEgyb49T27a6qKb1AqYYVrRVqwF//Z1rR+ZMR+AfEM1IMzjbwkAyBdUx+H6S3BZoBhwvwwhEvrsz/tqnkXXLmThMo4uZVZr4BZkwBQrX5BghYa4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721028732; c=relaxed/simple;
	bh=N8Um/BZiDpRbAQCGRBIIhgQMzSAwLh2B1/4xdeV/dWw=;
	h=From:To:Cc:Subject:Date:Message-Id; b=QXlwf7uMk+AYUL94BYxR8RioihOZsfHtgGR522Ves6dsKsV6cpJUHQ9XwM5X0Rz1JfLJrEme85wL7nYqc/9hrOEO49hBCvpQBIiaHcaIQfEtgddyqDrjKPJWOGB9NDX3ed+pO2rW/3N5Nns1DDWKeZskyFYpgFkEB008fMVlt/o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com; dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b=MNMkaaUZ; arc=none smtp.client-ip=209.85.210.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-pf1-f175.google.com with SMTP id d2e1a72fcca58-70b3c0a00f2so2388321b3a.3
        for <devicetree@vger.kernel.org>; Mon, 15 Jul 2024 00:32:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1721028730; x=1721633530; darn=vger.kernel.org;
        h=message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BU1rxmI86o5sSy9mWgyvdZfBDmEh8iUs62QhEQ70ryU=;
        b=MNMkaaUZcGqLyIE6jjP+TR5jEdblAApaF9g5wpifNDzDLPrBQLSfUZCkG4ZIVZlxNT
         1DcCt2K5yJDZTz8Kb2bSyvvaGsVfFTjGja5wp6Q6j43EWl4LPpE2/pJEJ0IHLG4JkGhe
         GwQuWzH4q0VDIgkiqbkfQQ7pRQlx5fvN3TLSTh80XwpPhmnFZsVY9Q6seJwz3lRybLZP
         SoTc+I+Fwq8N1nrjcXoQk9t5VRZelJEYPJGKRTPGexNw/rP21GzvyiedG+A/ZTVQ4sDf
         RtaAm+fxjD0x7S3rMOXPuDOuNCHCa3XEY48gLLeEhnn8+FlkcrVIUJsuZ0kWnbsSVP8i
         Bq/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721028730; x=1721633530;
        h=message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BU1rxmI86o5sSy9mWgyvdZfBDmEh8iUs62QhEQ70ryU=;
        b=L16vXrdCOb8MHjpQIvMa2WWGnIus/qZKB2MQfVCCQWM9iNQ0CKCbQZLZJ93GvyaASu
         p0YA1aXAxy31rITgZv6ur4sGoHiT99bRc6HTm1mrLp7D36eSrd2htrRNcx9K2GPrBBhN
         6xE//ny0+lfqvs0YT2w/xkvk5SJMdi1aJLrBXk1XAuLkuaaTwT53TtSKIKridfVknf4A
         78mkWGy6YmedOxl8uoc7LByE8Jn5u7V7Fd7RM5Mfodt1Kbn0xYoDML4n0A0ejrO+V0Uk
         KgtDl1AhZPMFH+y+4aSnmAswgS9mf7ip/wiLtW67zdCKUaw9nMP10AsjXym0YJfTgHFD
         j91g==
X-Forwarded-Encrypted: i=1; AJvYcCUDbOQlp1ckqSjJxwOIPmP+ZCwd6DJN26QcPn0CprryXwqOcU2D/3AkKnJwr7f8XCoXk5/m6spX82Mj+wFb7gFf4nogpUM/w+y5ig==
X-Gm-Message-State: AOJu0Yyt+z0RT6t8ZWUDjlKZoBq2TuUKhw2AfvIZIAVx/F1wuLD2R8Rp
	HpLZsHx3qizn0YnU6+gHoKapa/TI0pNCU5Xx0/VLjeFY7veLNC7JzoN+C32vmXM=
X-Google-Smtp-Source: AGHT+IFeK1zVSa0EG0mSSa/orniI/Xcso0OuomS0td75qDeaGr6wqFxmGjNYbtPS7w/xWuJR3oCwHA==
X-Received: by 2002:a05:6a00:4650:b0:706:34d2:62bc with SMTP id d2e1a72fcca58-70b435709d9mr18101468b3a.18.1721028729929;
        Mon, 15 Jul 2024 00:32:09 -0700 (PDT)
Received: from lvzhaoxiong-KLVC-WXX9.huaqin.com ([116.66.212.162])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-70b7eca75a6sm3654464b3a.164.2024.07.15.00.32.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Jul 2024 00:32:09 -0700 (PDT)
From: Zhaoxiong Lv <lvzhaoxiong@huaqin.corp-partner.google.com>
To: dmitry.torokhov@gmail.com,
	robh@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	jikos@kernel.org,
	benjamin.tissoires@redhat.co,
	linus.walleij@linaro.org,
	dianders@google.com,
	hsinyi@google.com
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Zhaoxiong Lv <lvzhaoxiong@huaqin.corp-partner.google.com>
Subject: [PATCH v2 0/2] HID: i2c-hid: elan: Add elan-ekth6a12nay timing
Date: Mon, 15 Jul 2024 15:31:57 +0800
Message-Id: <20240715073159.25064-1-lvzhaoxiong@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.17.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>

Elan-ekth6a12nay requires reset to pull down time greater than 10ms,
so the configuration post_power_delay_ms is 10, and the chipset
initial time is required to be greater than 300ms,
so the post_gpio_reset_on_delay_ms is set to 300.

Changes between V6 and V5:
- PATCH 1/2: Respin the series on top of v6.10.
- PATCH 2/2: No changes.
- Link to v1: https://lore.kernel.org/all/20240704072958.27876-1-lvzhaoxiong@huaqin.corp-partner.google.com/

Zhaoxiong Lv (2):
  dt-bindings: HID: i2c-hid: elan: Introduce Elan ekth6a12nay
  HID: i2c-hid: elan: Add elan-ekth6a12nay timing

 .../devicetree/bindings/input/elan,ekth6915.yaml          | 1 +
 drivers/hid/i2c-hid/i2c-hid-of-elan.c                     | 8 ++++++++
 2 files changed, 9 insertions(+)

-- 
2.17.1


