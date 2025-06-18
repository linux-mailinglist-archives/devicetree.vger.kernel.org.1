Return-Path: <devicetree+bounces-186900-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A139ADE1B6
	for <lists+devicetree@lfdr.de>; Wed, 18 Jun 2025 05:38:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1252717B28C
	for <lists+devicetree@lfdr.de>; Wed, 18 Jun 2025 03:38:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 358F41A238C;
	Wed, 18 Jun 2025 03:38:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="nUJ0f/zq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f179.google.com (mail-pf1-f179.google.com [209.85.210.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B2D8928E7
	for <devicetree@vger.kernel.org>; Wed, 18 Jun 2025 03:38:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750217910; cv=none; b=XCo4m+pnFb9MmrrLNKq6LM2Gs24trLlLtFdFbI8Mcp8QLyUfCbfIuxartz2mJLYr9M4HK2pEFXkeYWs6MrxaFvH77q/ybB4q3bI8DfOwr4wRyf+hT3o4WwbHAmXieRTuvqNJ6zEFL2s3vdaklVmAcAOYuDM4yOvsCeaqXzCnwUg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750217910; c=relaxed/simple;
	bh=LAz+GaoUDVwgdCSLKZR/wFDA6hi6vkeJUGukzvmLfCo=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=Tk1SLFxMZ/B2TXldHQYsAdufXaooCKOrcDBecWWBk/IjDyfujxUzj5BTam+cKR0ehVFsZJrE8jBdh5g6pBM0R5SqMQCEcJleyAabZJXANBa9vymYXrF9U7YB9TwOoT0yLabgkTvZNef37CgLkqn9jok2I3BzkfoccPUFNVFN4Rw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=nUJ0f/zq; arc=none smtp.client-ip=209.85.210.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f179.google.com with SMTP id d2e1a72fcca58-7399a2dc13fso6880185b3a.2
        for <devicetree@vger.kernel.org>; Tue, 17 Jun 2025 20:38:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1750217908; x=1750822708; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=uonrVs/pRpGNPcjjmWWOHRenHXMMDe5KqCaZ0WZ1vWc=;
        b=nUJ0f/zq7FcgwsWmEvU9mRU4W1rrRMP8Db9Mugevi9oGeThTC3ZlbjgdDld81d3pyK
         q3G8vTxJh5bOyz8aygZhp8EL7hT859+GNJspKVnEDAwhoP5ecIZoZPi085WD7yuDhk+R
         OJa5lc3alCZ9CFuhb88qmxSeJJO1urtHIY5JtimxEb400mnbyunDaS7cwbdBkMTAWPyk
         AxvJWgMHC1DS/VJE8/VfVdXcvwsbTl28DCXV3LYidn7I1Sg5FFWpdSeNyrsdcK5/o3kn
         RJ1s+RZ8ip3J6zxQUBbdqPnpKpJerrRAbkYZ+MDrISQcLW7fKIH5Y5DHJVCRhPOwflSX
         hsTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750217908; x=1750822708;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uonrVs/pRpGNPcjjmWWOHRenHXMMDe5KqCaZ0WZ1vWc=;
        b=GDVmzuCupj2J/TonGIEIEPTglY0D+rnGO8Qeh6/41PVXF5Q569bhgNkjLVFQbxbRir
         en7sn2EletK3pf74LA9dxnMnPPlWR0sP6QPoAaJL/g1+rHQIavIrTf3Xit4tNeg3e2FS
         mSu9zaEgnEn09eMgaEJPe3uFeenXgWP5KaVorbcc43kVkVMplOXPKzJ9End5Issx2h1A
         6XNyZ7W+9o72Lu6svz3NbCwWUxPscjLrFPmtOYELhwQ/cWwdjOR/q9WBZyeKFuA4AnSg
         f0OLbwt8Eod0eFI+j1TBqiToNuzHSyDZuN6K2k/bMv5eKegKgQpigSMVSbqmQj1lxFFG
         26Ow==
X-Forwarded-Encrypted: i=1; AJvYcCUJbeHx4/eXcVy5t15AxZ/tUyAYsPkxr3BM9MXkuyJsk23/He5IkLNQKvRM+ZRnRYOqRvdSVNK8avTs@vger.kernel.org
X-Gm-Message-State: AOJu0Yx7tcQYvb01NWNJowkWjWx7LD9rmKuehP63ymdX3y97FCsLWQZk
	yk7+ayjpFip5LjiI8rZ0bqcQmG0WGJlb4NNyTo/abUF1sMylz38UzKYI
X-Gm-Gg: ASbGncvSouP5okOmoBGypzU1YYPxSG7qCwDpceamUFFjVlZBAQFD8xavRUH7+XYS6ef
	nIQ9bcMcJyO7XoLyNII4PZ/Yr5LLmIln3MFniznlOvy6NxjDadUm1X/TGc/hoqAbl5kxFr9pv/i
	H2K0g4NBd4i5YUTjZWyV9fkhuqBg/OGPvmzPKCkj3Zell3Kj9szrMohtsV2iNgUTPI0YwTnCfwo
	c9kby0/ywnV+uKROvKJO9pEowGECiaBez4jKGOw+WIHRNoYZWRfzTfiK+D/0xAh6Hq6g7QZJLbr
	lynZyZZmt2rxzw642mL4ASiEOa0jPm8VXd9m423CmuKrc8zLzghJGl7B8gB5TcUKsMSsFpSHSPh
	rpmsAMKvPr2G7WC3esvfXGp2UKTucSgNXQTmp6atrTTsrtgwmBw==
X-Google-Smtp-Source: AGHT+IGCpeONFeK+vCUHFAZvHE7jFSRmu9ICiUPdwHMxfwRud5mRe2MvyXaWeKME0aWnWjENgIdySQ==
X-Received: by 2002:a05:6a20:d049:b0:1f5:8a1d:3904 with SMTP id adf61e73a8af0-21fbd459503mr26148333637.7.1750217907834;
        Tue, 17 Jun 2025 20:38:27 -0700 (PDT)
Received: from lcwang-Precision-3630-Tower.. (211-23-39-77.hinet-ip.hinet.net. [211.23.39.77])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-748900822b7sm10147934b3a.101.2025.06.17.20.38.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Jun 2025 20:38:27 -0700 (PDT)
From: LiangCheng Wang <zaq14760@gmail.com>
To: cip-dev@lists.cip-project.org
Cc: drm@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	noralf@tronnes.org,
	robh+dt@kernel.org,
	krzk@kernel.org,
	zaq14760@gmail.com,
	onlywig@gmail.com
Subject: [PATCH 0/3] drm/tiny: Add MAYQUEEN PIXPAPER e-ink panel support
Date: Wed, 18 Jun 2025 11:37:28 +0800
Message-Id: <20250618033731.171812-1-zaq14760@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This series adds support for the MAYQUEEN PIXPAPER e-ink panel
(122x250 pixels, SPI-controlled) to the tiny drm subsystem.

Patches (must be applied in order due to dependencies):
Patch 1/3: Adds 'mayqueen' vendor prefix.
Patch 2/3: Implements PIXPAPER tiny drm driver.
Patch 3/3: Adds PIXPAPER device tree bindings.

Tested on PIXPAPER hardware with linux-5.10.y-cip,
verifying display initialization and refresh.
All patches pass checkpatch.pl.

Signed-off-by: Wig Cheng <onlywig@gmail.com>
Signed-off-by: LiangCheng Wang <zaq14760@gmail.com>

--

LiangCheng Wang (2):
  drm: tiny: Add support for PIXPAPER e-ink panel
  dt-bindings: display: Add MAYQUEEN PIXPAPER e-ink panel

Wig Cheng (1):
  dt-bindings: vendor-prefixes: Add Mayqueen name

 .../bindings/display/mayqueen,pixpaper.yaml   |  67 ++
 .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
 MAINTAINERS                                   |   6 +
 drivers/gpu/drm/tiny/Kconfig                  |  11 +
 drivers/gpu/drm/tiny/Makefile                 |   1 +
 drivers/gpu/drm/tiny/pixpaper.c               | 716 ++++++++++++++++++
 6 files changed, 803 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/mayqueen,pixpaper.yaml
 create mode 100644 drivers/gpu/drm/tiny/pixpaper.c

-- 
2.34.1


