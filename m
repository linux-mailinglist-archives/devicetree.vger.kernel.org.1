Return-Path: <devicetree+bounces-227554-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 40168BE2810
	for <lists+devicetree@lfdr.de>; Thu, 16 Oct 2025 11:50:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id B94AD350D1B
	for <lists+devicetree@lfdr.de>; Thu, 16 Oct 2025 09:50:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 450832D7DCA;
	Thu, 16 Oct 2025 09:50:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b="i1NvkA1v"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f41.google.com (mail-pj1-f41.google.com [209.85.216.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0308B2D0C7D
	for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 09:50:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760608254; cv=none; b=UKRdIxBEA5y5yZ5C9XLZJDYBoB8aXfXhRVKI11Q8V8IAsdXCXtp5930qys0tHQoPAmNbmr/vLaXEI3tmKmoRjCIvW4v+8Qwwirrn2F6oEa4GEfbaIBv+ZtBAAvcDYDgrkZv7ng0R0R3kncn5bddUGhqp7CGvRik/rb+91iMUu/M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760608254; c=relaxed/simple;
	bh=7Lbjvpdb5yligdenfDwhsEudYnuXPAhol6Ou+wLn3aQ=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version:Content-Type; b=XkJf7RkDGh9OxoMqMDL7iNeDEnbj673vp89lQhedUpEKF5CkUgl3qOgELqWcn4+mAFB/gFJLGtMPBy1bbfb6pegcyDodTuPlgYJg3e0LC/ieez76RutiYEjUKSc47770+HTHjq3lJ27AEkaAjEdKPHxggLHEZp7VobCB7iouurI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com; dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b=i1NvkA1v; arc=none smtp.client-ip=209.85.216.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-pj1-f41.google.com with SMTP id 98e67ed59e1d1-339d7c4039aso560756a91.0
        for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 02:50:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1760608251; x=1761213051; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=1UqL1IWSrCrB8SZs0M+f9GgpD3kKZ3YvqrOYctBtGCw=;
        b=i1NvkA1vXb2EulrOByOhhsi/a/G2QMW88ej/aXfZf8lRFHoAfH96CBWzV7yQUcr2Ay
         TlgEzvW0S7PtJeNHYxQUhxxLeuUBdTQtJ18xUALj7YZz0NTtyZmvF/QfL0Wim4uxiwDY
         eXYSmR5OFQotnAbc83FV102AHLKWkQY1hjyXWfBXa6HPE8Lq7g743+Uy0d2bsgF1R2nW
         t9HGZiEbDi08zDSLLI5+d3BZeUwZccfRLgEnF3KwLobFHWzvNQ2zL8b7P8O64Ri8OFLH
         3EPWFkDrwZVP5Feb3OZ/wE30QGQEUfmSuGa6cT8YlIeaQ9J4lmatspPM45kPRCo00jPa
         t8kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760608251; x=1761213051;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1UqL1IWSrCrB8SZs0M+f9GgpD3kKZ3YvqrOYctBtGCw=;
        b=sKjO8ytBTGn1f8sgIlLo0DVXReCdVngDRZFp7/NlhmQCt0qpNWXiPbkA2jGietmHnY
         Q4SuiNTteeZQ314Fe9ofTLlu2Lmjd8L68xo5HBd4qG+pUVuQC0iItRFmQhC712UrJbRw
         HqIkbYL5+qRcAK8P55RS5s3XQcNk+o+PhRcBhDi7eS6dY+vGKQd7w+KsjqOxxNiZNNZf
         EyMGI8S/R/H98yoFyLIh5iI0WGQjQEDrq5lZkoJQuifzHP+4HAXsKRprLQWFZgegdO0I
         SUBDGQT7zU1trBCBLvFzRdUBJ6rB5d2mGyF8H5FU6nogSxhTQBy5XoMl+WZwsznC5F5+
         ssAA==
X-Forwarded-Encrypted: i=1; AJvYcCVHUG0QgHigRZ7STB25gzH1zwAKpcynhYVoA/hKBcc6B0OdvaJwag2bQNfP5EQSxuF2H2KGwAX6JzbG@vger.kernel.org
X-Gm-Message-State: AOJu0YyNHO9rGTfKNi1CdvJ45Z/k7WMyb9u0QtnE/UhO5l05TGa6Ks01
	b6vuhjDpkCHqY16mxu5Wl7wXO2WMxSWh9HYzvAl6gH0sdT+KLGYOHQMVWctBsmVntWQ=
X-Gm-Gg: ASbGncs+QvQOb1wnQciyMkLk6dt35l6e69KXDtDhZKqg92WpnMmWFie/pUfJZVgAVxm
	+H5WBzQMHSWiAlyPrTYNozCzH3ijXqp3+Gn1vGpZYQoK89+RjcyoXqYDY9hbLkVvSMUKiJy3EO7
	R0XwTCf7bd9QIZSyGzmazqajd6clFBf1AcQRlhlnmDBFQiziJRDI5lgBcrw1qRuHWO5nxfPNyuX
	Z2Dzq54j+9c4IV0BAr9we0qYSy1SdJ7u6pXWpy3XbAfMUpYME9mEhSk8OHo8xy2thWux46eY3Cr
	yunksHn/h8ahp7o43QtufiPxrhGKO6K59E7nvfRMUPOXD1724uHYDE47IqFj0UG/7Hh344cG3KK
	YXGQz9QBV5Mw16MjG0+lfbDiddLLBS6EUnyEY4yjl8FuqSs/3hvaj5GXxuEA/vJ8YqAWXMHI6zo
	c+p+pSJRLeyKVz0NL/u+8bvlAMywOh2csxQRfypPsbshOL0PWb5nSHUEGeXA==
X-Google-Smtp-Source: AGHT+IHds62hDOWB8Db/Nb46keQgSIaK4qyBY+XsAGxqUcA+ucqFv6LqUgHKR4GZ/2/Bst1JZdDjzw==
X-Received: by 2002:a17:90a:e7d2:b0:32d:d408:e86 with SMTP id 98e67ed59e1d1-33b511172d4mr45695437a91.7.1760608251293;
        Thu, 16 Oct 2025 02:50:51 -0700 (PDT)
Received: from dgp100339560-01.huaqin.com ([103.117.77.121])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-33bb6519421sm1272402a91.1.2025.10.16.02.50.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Oct 2025 02:50:50 -0700 (PDT)
From: Langyan Ye <yelangyan@huaqin.corp-partner.google.com>
To: neil.armstrong@linaro.org,
	jessica.zhang@oss.qualcomm.com,
	airlied@gmail.com,
	simona@ffwll.ch,
	maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	tzimmermann@suse.de,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	dianders@chromium.org
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Langyan Ye <yelangyan@huaqin.corp-partner.google.com>
Subject: [PATCH v3 0/2] drm/panel: Add Ilitek IL79900A controller and bindings
Date: Thu, 16 Oct 2025 17:50:41 +0800
Message-Id: <20251016095043.1694736-1-yelangyan@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

This series adds device tree bindings and a DRM panel driver for
the Ilitek IL79900A MIPI-DSI LCD controller, which is used in the
Tianma TL121BVMS07-00 12.1-inch panel.

Changes in v3:
- PATCH 1/2: Fix DT schema error for `backlight` property.
- PATCH 2/2: Address review feedback (use mipi_dsi_msleep/_multi, move init sequence to mode, minor cleanups).
- Link to v2: https://lore.kernel.org/all/20251010093751.2793492-1-yelangyan@huaqin.corp-partner.google.com/

Changes in v2:
- PATCH 1/2: Address Rob Herring’s review comments and align with panel-common.yaml conventions.
- PATCH 2/2: Rename driver to panel-ilitek-il79900a and align naming and structure with existing Ilitek panel drivers.
- Link to v1: https://lore.kernel.org/all/20250930075044.1368134-1-yelangyan@huaqin.corp-partner.google.com/

Langyan Ye (2):
  dt-bindings: display: panel: Add Tianma TL121BVMS07-00 panel
  drm/panel: Add driver for Ilitek IL79900A-based panels

 .../display/panel/ilitek,il79900a.yaml        |  66 ++++
 drivers/gpu/drm/panel/panel-ilitek-il79900a.c | 358 ++++++++++++++++++
 2 files changed, 424 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/panel/ilitek,il79900a.yaml
 create mode 100644 drivers/gpu/drm/panel/panel-ilitek-il79900a.c

-- 
2.34.1


