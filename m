Return-Path: <devicetree+bounces-57282-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id B28A589CEBC
	for <lists+devicetree@lfdr.de>; Tue,  9 Apr 2024 01:13:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E8EFA1C21A8F
	for <lists+devicetree@lfdr.de>; Mon,  8 Apr 2024 23:13:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 404F9146A9A;
	Mon,  8 Apr 2024 23:13:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="tfUfF1PX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f202.google.com (mail-yw1-f202.google.com [209.85.128.202])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA29238DEC
	for <devicetree@vger.kernel.org>; Mon,  8 Apr 2024 23:13:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.202
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712618004; cv=none; b=KQe5NRYkM6pgTsU9thaGkxagb8ZjlUH1jGbhtgtVAMs5AbW0CdgpPthVXuxxI5aOv0LZDfPr7YMIS+SeIp0O6usN4VwH8+29GhB2kSq5AVvbfW3RzoRy5WBtDo/5tZJuTGwD/DWYOEKaxU03MGPcLpa/wwNhYjfECTSpj7zYkoA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712618004; c=relaxed/simple;
	bh=x9mwVZCtRJZxj4SxW0pxGiYFzzdRxitCW4paJ8e6Vwk=;
	h=Date:Message-Id:Mime-Version:Subject:From:To:Cc:Content-Type; b=pVIouQUHZiykyk/2t5VMb6HEdQcwgmf8ussvdTX4Fqym8RYwvn+ZaXCgz8YaxQ9rcJgxzxcN2oL8WpmpQQB8B1Y0CCTQJ0PDXl566VSM8ohaIkkYwwAvi+O1V/hfy2MGSpEcutw2CYHwQ8AUqmtFwvRisvQdtS45ojYI8D3VIlU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=flex--saravanak.bounces.google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=tfUfF1PX; arc=none smtp.client-ip=209.85.128.202
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flex--saravanak.bounces.google.com
Received: by mail-yw1-f202.google.com with SMTP id 00721157ae682-6150dcdf83fso96950237b3.2
        for <devicetree@vger.kernel.org>; Mon, 08 Apr 2024 16:13:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1712618001; x=1713222801; darn=vger.kernel.org;
        h=cc:to:from:subject:mime-version:message-id:date:from:to:cc:subject
         :date:message-id:reply-to;
        bh=8KR9ZDVpmFlaIwvKuBx+EnAZl+aysJrEDZLL4TycsvM=;
        b=tfUfF1PX/ufUeMkiwBfJE8B2Dbxw/WmajPZ105zDKfBVIZ9eg33wauBAvVOhenKp21
         VTV5ca2mPMiwo7MsCYkqY/lcPrZG6qt3iV7crDBTqHL0ilpvMQkJCpOJBt4wXSvXM3gq
         QoqN/pHlRJyr8flcdomG8fpD5nybyDE3XUaxXPOUuAxUL53EZxUH1EG6kM39g+xnlsuP
         W/uURi2mV+pHGZrnIVRJKSW9yqUAAJ2fOb5e+8T1oPFXMBIC2S2/o9PLZXmAK/cdIx/c
         RCqsu+EW59nXMSN9ugUboQy1VxMdtz8p0HoZKGSAMmQ29lqt+dLEnrg4lc+2lbow+DBJ
         zGGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712618001; x=1713222801;
        h=cc:to:from:subject:mime-version:message-id:date:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=8KR9ZDVpmFlaIwvKuBx+EnAZl+aysJrEDZLL4TycsvM=;
        b=FiGnthV3a6sNP4yicqN0/VOxudW9CsujJA8iOAokXU7VAizGuwQlS09fyoS9VcwOjs
         4DVql2G70Fti7VoQ3iOxJPvzOMaGOfbxQnL48exKuxrx0TB73WFNR0H6nCCF2EzrfCzY
         vn/KLYwxCO7vpkfON/NqLeCXBEcFR3aVXYbRh0WuLWiTZjtrevo0BvSRb15unLKFbBHe
         1Jy3u8tlExZ8uZEbH619MMsVzrd5G+vwuK31/12KOImbOXD/mMRs5ftCN6VNs4eqmB0J
         +EELskHnRpAXgzMM0F48zVD3QT1MdPHCGbCuQn04WpDgd6uUb0BG7Jgft8OnGCTCwkNv
         /k5A==
X-Forwarded-Encrypted: i=1; AJvYcCXdgYsUVCO7asNj0yk8mtF/sh9U8crHN6VpZEzK2R51QV+eDqTTxurBClAWoBkE276lKcPbsDi7GFYB1sWwb+cselTe1ES9ovYOaA==
X-Gm-Message-State: AOJu0YyUFWDb/bUfpQBTdqXCdFUo5KuPMae/k60/0Om6abUviFKYSbC9
	GFc6H0nPrh012crWEscYnsuTT8rGvW9m1eR+0KEdpmQCZrl39aXw3yam0VnydecDLT6XWeEpwTL
	Hd8tIuPQ09FERkQ==
X-Google-Smtp-Source: AGHT+IEiBKuFp9QTgBmavvNyeuDLhVieZKacyXA60iTXYXv5owwSC1k0jFYE2SUKHElIfDGTrdBpXZCX+VZqUfk=
X-Received: from saravanak.san.corp.google.com ([2620:15c:2d:3:96d3:321a:67f3:5322])
 (user=saravanak job=sendgmr) by 2002:a81:73d6:0:b0:614:2c5c:d275 with SMTP id
 o205-20020a8173d6000000b006142c5cd275mr2854389ywc.4.1712618000795; Mon, 08
 Apr 2024 16:13:20 -0700 (PDT)
Date: Mon,  8 Apr 2024 16:13:07 -0700
Message-Id: <20240408231310.325451-1-saravanak@google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
X-Mailer: git-send-email 2.44.0.478.gd926399ef9-goog
Subject: [RFC PATCH v1 0/2] fw_devlink overlay fix
From: Saravana Kannan <saravanak@google.com>
To: Herve Codina <herve.codina@bootlin.com>, Geert Uytterhoeven <geert+renesas@glider.be>
Cc: Saravana Kannan <saravanak@google.com>, Rob Herring <robh@kernel.org>, kernel-team@android.com, 
	linux-kernel@vger.kernel.org, imx@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org, linux-i2c@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-spi@vger.kernel.org, 
	linux-acpi@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Don't bother review this patch. It needs to be refactored better once I
know it works.

Geert and Herve,

This patch serious should hopefully fix both of your use cases. Can you
please check to make sure the device links created to/from the overlay
devices are to/from the right ones?

I've only compile tested it. If I made some obvious mistake, feel free
to fix it and give it a shot.

Cc: Rob Herring <robh@kernel.org>

Thanks,
Saravana

Saravana Kannan (2):
  Revert "treewide: Fix probing of devices in DT overlays"
  of: dynamic: Fix probing of overlay devices

 drivers/base/core.c       | 10 ++++++++++
 drivers/bus/imx-weim.c    |  6 ------
 drivers/i2c/i2c-core-of.c |  5 -----
 drivers/of/dynamic.c      |  9 ++++++++-
 drivers/of/platform.c     |  5 -----
 drivers/spi/spi.c         |  5 -----
 include/linux/fwnode.h    |  2 ++
 7 files changed, 20 insertions(+), 22 deletions(-)

-- 
2.44.0.478.gd926399ef9-goog


