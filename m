Return-Path: <devicetree+bounces-83092-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C7F9C92723F
	for <lists+devicetree@lfdr.de>; Thu,  4 Jul 2024 10:56:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8594A28AF93
	for <lists+devicetree@lfdr.de>; Thu,  4 Jul 2024 08:56:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 091C31AAE08;
	Thu,  4 Jul 2024 08:56:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b="E9GjZDfF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f50.google.com (mail-pj1-f50.google.com [209.85.216.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 773A91A4F0B
	for <devicetree@vger.kernel.org>; Thu,  4 Jul 2024 08:56:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720083369; cv=none; b=O7GnqgkUtvyqL/rGxW7m1cdZmfygC8/gV+dhrPtEor0fMSopWtGBkSiX7BFD72JubWkO/FmwIrP1YP5jgW5fFKseiapalDTSK2JxcuFau1dKU+c0Ve83a//nEu7ZxQ9+F9pkIji5v9Llj2DdAoQlzA+rUkhyJyDPqactfr9O5p4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720083369; c=relaxed/simple;
	bh=d5j1weksNxK7Mx181KjldjiWTxmsafDJhHV9fjQXaTQ=;
	h=From:To:Cc:Subject:Date:Message-Id; b=JzfuXRdkbC02/n/KeUWxsOvUJvsFvK3g0cQef4MCfcpOg9sMgN3KISs3oNevLchBZQ07EDlq0eZzvoK9EQ61ZEqvImNXcvuNB8nspdVzAZz85SL/W6z62sQa+VSm/t9oenf9YFLBuwFvXcnMnHamVEwPACEr5UUkZAVnEIIY9SM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com; dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b=E9GjZDfF; arc=none smtp.client-ip=209.85.216.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-pj1-f50.google.com with SMTP id 98e67ed59e1d1-2c1a4192d55so310688a91.2
        for <devicetree@vger.kernel.org>; Thu, 04 Jul 2024 01:56:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1720083368; x=1720688168; darn=vger.kernel.org;
        h=message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OXOoxvvOe31w1ncPerleKixgz0Ceuj04whgXRu8l0SQ=;
        b=E9GjZDfFbB+t8YrDbbk51JHijNvF0d/5P0j3NXxtVPT+POZzHFtbKxRxuM2y1RQQto
         yXQywx7XQHLLlD//sEsYCmG6YiPQmYnncjxrp3sWy5RDqMmy5T4Qhqa69CR4MInYrMjJ
         p4DgEiopF/DyEU4utRBUTP4nA76zbR8zAb2ZBzq9vM81ZCD+Gxxi0oUOeMBZBWgzuBzS
         C3PrDgTFuQJTBWpI02EWQLDMbsEob2lLkseZjyIGvJgy4wHAmnorjeSYHNV7KnqjxkpZ
         2nvmEwK1V9sIPvtm+C+PrzAKQC0yzQsBe/pjXJGaIYiYOJNVzEPjbNupK0zPf2bppfSz
         HSfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720083368; x=1720688168;
        h=message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OXOoxvvOe31w1ncPerleKixgz0Ceuj04whgXRu8l0SQ=;
        b=IvgxHF9DosPlv2SF7CCoGDcYTBg74PpB+9lnrwEXNAlDA5U4NuzoHsEo0E4laCPhXZ
         LjWWnukOVqyss9AfjqS+F4EMdDq6vDtj9n9pMYGnkfz9Sw9LEiO7j/GOVUJbNXy+2OS+
         X0Q8w71OCkDLdmZd1a/DAbgyyz389OX/OI+6fgUtgLVczdHNCeqVoT9WzEfwnoVrvtO6
         0rLiiAbb/bP6KpUcnLGb+gy0mvfwtDSwWT1nSFtt6xmnmP0/FbgDsRvOLUsPLPyqrvp8
         ZUdnoMryF+t1dFmWGO3FhJf9dbjaezWK9lxhzlsOrrimg3GYqlxQ489B+n/k8LIDut65
         /Vag==
X-Forwarded-Encrypted: i=1; AJvYcCU7mvCiQEQnpPojhP7FpvCJaYjmAjz8UTY0pjaiTqVIejWxa5iJ90moiFGYHeKeNJH30JHUVvneS6tVHTYMN1xkjJ8ot7/9MRYezA==
X-Gm-Message-State: AOJu0YyVSff5mTFlk7EW44x9OTfeBzmn3SZmCp+CowRYjhjNQ9pj91Dg
	iGEjzgjOBRPPMq0fYbC5Bv8vEF8GYRjCWqk8jrtjKVR6CRlECq3Q2cvfISlygDo=
X-Google-Smtp-Source: AGHT+IEwW4pDtpfHuwfN8E1EywFvTESPh1XIyJapLgL8zwTEtD/NyP7knccVK4/CsOptrrx9sDsSuw==
X-Received: by 2002:a17:90a:eb05:b0:2c9:888a:7a7b with SMTP id 98e67ed59e1d1-2c99c570392mr636231a91.25.1720083367671;
        Thu, 04 Jul 2024 01:56:07 -0700 (PDT)
Received: from lvzhaoxiong-KLVC-WXX9.huaqin.com ([116.66.212.162])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2c99a97282csm962572a91.20.2024.07.04.01.56.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Jul 2024 01:56:07 -0700 (PDT)
From: Zhaoxiong Lv <lvzhaoxiong@huaqin.corp-partner.google.com>
To: dmitry.torokhov@gmail.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	jikos@kernel.org,
	bentiss@kernel.org,
	linus.walleij@linaro.org,
	dianders@google.com,
	hsinyi@google.com
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Zhaoxiong Lv <lvzhaoxiong@huaqin.corp-partner.google.com>
Subject: [PATCH v1 0/2] HID: i2c-hid: elan: Add elan-ekth6a12nay timing
Date: Thu,  4 Jul 2024 16:55:53 +0800
Message-Id: <20240704085555.11204-1-lvzhaoxiong@huaqin.corp-partner.google.com>
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

Zhaoxiong Lv (2):
  dt-bindings: HID: i2c-hid: elan: Introduce Elan ekth6a12nay
  HID: i2c-hid: elan: Add elan-ekth6a12nay timing

 .../devicetree/bindings/input/elan,ekth6915.yaml          | 1 +
 drivers/hid/i2c-hid/i2c-hid-of-elan.c                     | 8 ++++++++
 2 files changed, 9 insertions(+)

-- 
2.17.1


