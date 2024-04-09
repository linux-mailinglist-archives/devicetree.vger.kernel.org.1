Return-Path: <devicetree+bounces-57309-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CF7F89D1F8
	for <lists+devicetree@lfdr.de>; Tue,  9 Apr 2024 07:37:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 113C4B22A87
	for <lists+devicetree@lfdr.de>; Tue,  9 Apr 2024 05:37:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C9ED6657D4;
	Tue,  9 Apr 2024 05:37:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="juYm7F5F"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f202.google.com (mail-yb1-f202.google.com [209.85.219.202])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 716675F569
	for <devicetree@vger.kernel.org>; Tue,  9 Apr 2024 05:37:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.202
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712641034; cv=none; b=PNxw6deYZyOOwMHXOdMaUvj8oigVz/KtWPvVcoyYfPgVqoQh66u5Z8M8HkyjcQDtY5wWtFpmV57jVu8jza4TWOkIARBrHbiJUa0srWTOSYDCSIAnvpSCmZs4/tJEXAt1eTG4IO1ol27Syb0sHufAsvqYGS+tpneFMtXtaGoCz20=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712641034; c=relaxed/simple;
	bh=3Orb3QTXRaXb11VTVjJfinDvuFxce8w6tXhNzD+FbhU=;
	h=Date:Message-Id:Mime-Version:Subject:From:To:Cc:Content-Type; b=eQyIrGCjn/4Q4M+y8R/LGPIZ3JsTxiWMjEZYV/glnKkTgSiCe65X9wkAya0o2g6AUn95lpXzjuQYI2Waxv4OzEXlGEZ6NiABkcbQHMCYDS0GM/sPr22qOAgCyoxgpynwtfdeV4ffP1Q5ZHFo7fnTR++hx9B0UG/xKeLaWyWEsn8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=flex--saravanak.bounces.google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=juYm7F5F; arc=none smtp.client-ip=209.85.219.202
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flex--saravanak.bounces.google.com
Received: by mail-yb1-f202.google.com with SMTP id 3f1490d57ef6-dcc05887ee9so7001256276.1
        for <devicetree@vger.kernel.org>; Mon, 08 Apr 2024 22:37:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1712641031; x=1713245831; darn=vger.kernel.org;
        h=cc:to:from:subject:mime-version:message-id:date:from:to:cc:subject
         :date:message-id:reply-to;
        bh=hOqyoqJhFYBkPD/fv6EEJ8QaMaUrKnwkxLRauGRufLU=;
        b=juYm7F5F58aiiqHfi9irfv0VIKj8QMh04KmB4N8cSKXLg7qocgydhJbm9yw1IAtmRJ
         ypH/kX+jQd4GS0i/X+MYU7DxNZ/uM+rirTFgZrwYDvpmRJ+zjCDEcLc+EPr2NG+yE7hH
         w5fidtv6qOW8btVwdBYh5TmOjMF03lb8sDoQeX2OHVYZFMlHVsEWyNFVh2NH9yK9mRmr
         R7UK5TXD38K9wcKFnxbn8IZKqQOYLsKJL+ffYskSwOT9tkKlt48yHrJnOljl5dHwCYnN
         zMCMBsz5Yg6tr2pyYZjGDCGi6ZkXi0zxLvbFvU5baZFf82Er5ohKrzsPDX/q6GvXo2TG
         SvYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712641031; x=1713245831;
        h=cc:to:from:subject:mime-version:message-id:date:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=hOqyoqJhFYBkPD/fv6EEJ8QaMaUrKnwkxLRauGRufLU=;
        b=oft53EN5DBzoTK/kuJvSbomKRecZx46RWLy8OQiMaFR0HdNVbkQZzCtvwWMtsoUxML
         RJeCiz1qYakzItnQyaQSL0w9cj+MLmNnJiMp6kZPiUgpaqaNHHVpDzavD8tBp//m7owh
         KtN6v0z5O2tSUuz4xwbj2+N9VqzgJF0Sg3dKwhsJkisbkq14Ey0B0ig7hkXJ07HD28Mm
         9//9Vxkin6y7ifhAzwxK+vpZPxzEr+J5jXe5I7qadaxB8hVL1aIv+IIDU6q/lhlYO7o4
         Os/e8uuULnMyiS6pvjaQke+vlvcgPSrrl+e2qViAW7MmF3q0Crj1B63W2gcoHHAgsJEK
         Ak7w==
X-Forwarded-Encrypted: i=1; AJvYcCUCfC0HJNV25xd3nI/Y7z/o+QjwZaaF4qjzuqAYX8PqjZKv3pxVhPML1xWbmNeaRN93y+HLP5mhvkQMZxs4NMtA9mIvmLcuceRrsw==
X-Gm-Message-State: AOJu0YxTj3nO1gsIjRYCi9VbmISv6SRO1B4XdTZP9ZolHLr5I1lf3rUH
	5+hubHCTL7b+YrAZtDXMp/scgIsfT/pI1VdKSYOVRERs72jJ+VnfHqT5IFMRs4gxflKybDz7Lqt
	3OmNIG7MWKhjQuA==
X-Google-Smtp-Source: AGHT+IEXsQTn58SjL0AXbnGAEQZAHy7tglhTrT7s6F3JP4JY3Y5iTZNaVZhMJrCPYpvtxpls9D0HyzeJhRGHDfY=
X-Received: from saravanak.san.corp.google.com ([2620:15c:2d:3:96d3:321a:67f3:5322])
 (user=saravanak job=sendgmr) by 2002:a05:6902:18c8:b0:dcd:59a5:7545 with SMTP
 id ck8-20020a05690218c800b00dcd59a57545mr879392ybb.10.1712641031555; Mon, 08
 Apr 2024 22:37:11 -0700 (PDT)
Date: Mon,  8 Apr 2024 22:37:01 -0700
Message-Id: <20240409053704.428336-1-saravanak@google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
X-Mailer: git-send-email 2.44.0.478.gd926399ef9-goog
Subject: [RFC PATCH v2 0/2] fw_devlink overlay fix
From: Saravana Kannan <saravanak@google.com>
To: Herve Codina <herve.codina@bootlin.com>, Geert Uytterhoeven <geert+renesas@glider.be>
Cc: Saravana Kannan <saravanak@google.com>, Rob Herring <robh@kernel.org>, kernel-team@android.com, 
	linux-kernel@vger.kernel.org, imx@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org, linux-i2c@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-spi@vger.kernel.org, 
	linux-acpi@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Don't bother reviewing this patch. It needs to be tested and possibly
refactored first.

Geert and Herve,

This patch serious should hopefully fix both of your use cases
[1][2][3]. Can you please check to make sure the device links created
to/from the overlay devices are to/from the right ones?

I've only compile tested it. If I made some obvious mistake, feel free
to fix it and give it a shot.

Cc: Rob Herring <robh@kernel.org>

[1] - https://lore.kernel.org/lkml/CAMuHMdXEnSD4rRJ-o90x4OprUacN_rJgyo8x6=9F9rZ+-KzjOg@mail.gmail.com/
[2] - https://lore.kernel.org/all/20240221095137.616d2aaa@bootlin.com/
[3] - https://lore.kernel.org/lkml/20240312151835.29ef62a0@bootlin.com/

Thanks,
Saravana


Saravana Kannan (2):
  Revert "treewide: Fix probing of devices in DT overlays"
  of: dynamic: Fix probing of overlay devices

 drivers/base/core.c       | 23 +++++++++++++++++++++++
 drivers/bus/imx-weim.c    |  6 ------
 drivers/i2c/i2c-core-of.c |  5 -----
 drivers/of/dynamic.c      |  2 +-
 drivers/of/platform.c     |  5 -----
 drivers/spi/spi.c         |  5 -----
 include/linux/fwnode.h    |  1 +
 7 files changed, 25 insertions(+), 22 deletions(-)

-- 
2.44.0.478.gd926399ef9-goog


