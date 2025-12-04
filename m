Return-Path: <devicetree+bounces-244213-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BC52CA27EF
	for <lists+devicetree@lfdr.de>; Thu, 04 Dec 2025 07:17:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id BBBD630A77A5
	for <lists+devicetree@lfdr.de>; Thu,  4 Dec 2025 06:17:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CC04F30B514;
	Thu,  4 Dec 2025 06:17:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="kgxBRsKM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com [209.85.208.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01D5E1A316E
	for <devicetree@vger.kernel.org>; Thu,  4 Dec 2025 06:17:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764829035; cv=none; b=ci2e2uVlWBwCwOI8JoLEeH9RBoUcNWUOo1TDeze2JxOiMjQVCJCY2X3hlOa2BCOwom/rClhsX/GkHYIYdt2+GfAkjpUGGaThfiwofSCCntdj3fPtqsY98PGpqtIaEyB8IrgC4/wquAny3axsqjL0oqn56o+UwNN4V9wCS5/3Ncg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764829035; c=relaxed/simple;
	bh=o9IcrFnimv7ibOLrNRYV7WuA4rm8uS1dfW5VR+qdcDs=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=Hy+Gvh6QyCj2KtTqN58xXtdtXyx/xczVyz/NgfVGc3/m/oYhswPVHEY4euSLewkuvKjA4cKpLZK+nI/C3jI/G96cXwO/VxGwaqIKC5yDkSjdybF9z8TGfaSUlAI3FKfRHxxegvaGvViOfOmJEv88HApKhvxuZy11evhIsS+NtfE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=kgxBRsKM; arc=none smtp.client-ip=209.85.208.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f53.google.com with SMTP id 4fb4d7f45d1cf-64088c6b309so959755a12.0
        for <devicetree@vger.kernel.org>; Wed, 03 Dec 2025 22:17:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764829031; x=1765433831; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=o5cPONIgu6mzYa/WMF+RelFJ2K/lRyJPaqEbFSvDOqU=;
        b=kgxBRsKMI227Ed/vvX/GnIK/qV3+r1/uu0E/k3N83xM0cicTTRcq0QQEMs2S3TKmgv
         xVWBLKj+KSvKbgXqr7lwO7KsA7cLIPv48ieCTvq0V2oiGuXVR3VEVqU6FI+uxpsQlHqT
         X8Gi3kGecz0+SHX1PkzVuT/ZCpkN5Z72g6LqvMq4MHdmQVnXWNox3AFyEPRogmL3W8Lx
         v1Vjwov4tl7KdhNpJ/YdTFftvMn+lNN+YOiGLJ3nAaWr93CNGHHHGuxKsCzcotDzeo36
         qPsDoLoFWfeQuReSS0HOg73+/umFn2VDRzo4zKQy2HIb3JCAsAG0X3Zd9vouqriF3y6+
         d/6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764829031; x=1765433831;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=o5cPONIgu6mzYa/WMF+RelFJ2K/lRyJPaqEbFSvDOqU=;
        b=O76g6ziR5Ae1sZzHSh96zLHzINB1Ih4BoZ3Un75R3knRNmBGzw+UO6m+OLGvWhtixC
         dKsBhSIj2ADknWWP0dQcvVh2RwFRRqhsfi29ldR/VNlEB2AEBWEsfM5P17AuPMmUHEt9
         FSBfaZ2RSHK1zUixjt+8bjh4OrRstcHaD9B1GR6yIn48IVY0sgK3H1PCZ8t3dhMsTr1N
         iBVvcmx8+5dyK2i7zRWKLNv95993v7jJiKEkZuOM7aBaiVcKFeS6fNNhjBrp5buOmeJl
         ET7Vtne9kCy8icM1N2dHdwwwnhcqAR7ToKUv7hxEvtobzx7Y7CSdSqhAO5oInO1/ru4D
         5ZZw==
X-Gm-Message-State: AOJu0YxwiwkZV2gic7cw7AKIgnXiskE5UvBdRHNpFOW2AOwFM0cyLgnp
	X1ZUjdXGrmCFClHnCXgBYatOEQ6G57+Qxe/BHTZYxhu9wLjXBbzEHM57
X-Gm-Gg: ASbGncs0N3Gr4I24fifTmOQvi+rEcWAkdNXt3oHW6Ku8edfpg6SSqBkbOnj83vB3ZpW
	MDgazlksOe1SgFcgZfEyEtLa7cfxnEBJ8/3S/CzUQUGQHxgbNZ/PG7OpiYyAKkTn91sfRuCLEcx
	3z4kmiNPN5yXtqjNcFOnSp1AddyULKRa7P9QVJksVKgNXOupb8nqNkYcN8ZRw9DLEYzS4sMp5MK
	Y9bR6elgul9s+IZFUJpL9oMKHf53uG9IGswOOpMQgpbyn79mRkFy88LyP3t2zDUAI6q4+/HsLK3
	XAgEiDQqKywP5mdSoOE+ZinchUKSHxXTTBuNu/x3WRDno2l2pxkB8AhHfzNRTgdog+NPRQiJsx1
	VpQ+mx95eVDNA3Zru4AR+KFlmQq/Xi7b9gvDhcvbUcNqcBCZAh6iWh5TvNvyqzXmFnMFjqbrtNJ
	4=
X-Google-Smtp-Source: AGHT+IE96b/uxsEEqrl87S6Pg6TRMB1JugG4AhVEQkgPU/uciaxk7pEZZBKrlSNBh92a+3pEa9CVUQ==
X-Received: by 2002:a05:6402:1ecd:b0:647:57db:c997 with SMTP id 4fb4d7f45d1cf-6479c4f6d31mr4107684a12.21.1764829031175;
        Wed, 03 Dec 2025 22:17:11 -0800 (PST)
Received: from xeon ([188.163.112.74])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-647b2ec2d8csm490159a12.5.2025.12.03.22.17.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Dec 2025 22:17:10 -0800 (PST)
From: Svyatoslav Ryhel <clamor95@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Thierry Reding <thierry.reding@gmail.com>,
	Thierry Reding <treding@nvidia.com>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	Prashant Gaikwad <pgaikwad@nvidia.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Mikko Perttunen <mperttunen@nvidia.com>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Svyatoslav Ryhel <clamor95@gmail.com>,
	Dmitry Osipenko <digetx@gmail.com>,
	Charan Pedumuru <charan.pedumuru@gmail.com>
Cc: devicetree@vger.kernel.org,
	linux-tegra@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-clk@vger.kernel.org,
	dri-devel@lists.freedesktop.org
Subject: [PATCH v2 0/4 RESEND] gpu/drm: tegra: add DSI support for Tegra20/Tegra30
Date: Thu,  4 Dec 2025 08:16:59 +0200
Message-ID: <20251204061703.5579-1-clamor95@gmail.com>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Tegra20/Tegra30 DSI is quite similar to Tegra114+ apart MIPI calibration
logic and clocks. With a few minor tweaks, existing tegra DSI driver
should work on Tegra20/Tegra30 devices just fine. Tested on
Motorola Atrix 4G (T20) and ASUS VivoTab RT TF600T (T30).

This patchset depends on Tegra20/Tegra30 CSI bringup since both share
MIPI calibration logic. Ideally these patches should be picked after
CSI bringup but they will not break anything even if picked before
CSI patches.

---
Changes in v2:
- removed all MIPI calibration, it is handled within CSI bringup
- added per-soc structures into of_match
- added fix for hang caused by register access with uninited hw
---

Svyatoslav Ryhel (4):
  clk: tegra20: reparent dsi clock to pll_d_out0
  gpu/drm: tegra: dsi: move prepare function at the top of encoder
    enable
  gpu/drm: tegra: dsi: add support for Tegra20/Tegra30
  ARM: tegra: adjust DSI nodes for Tegra20/Tegra30

 arch/arm/boot/dts/nvidia/tegra20.dtsi |   4 ++
 arch/arm/boot/dts/nvidia/tegra30.dtsi |   8 +++
 drivers/clk/tegra/clk-tegra20.c       |   6 +-
 drivers/gpu/drm/tegra/drm.c           |   2 +
 drivers/gpu/drm/tegra/dsi.c           | 100 ++++++++++++++++----------
 drivers/gpu/drm/tegra/dsi.h           |  15 ++++
 6 files changed, 95 insertions(+), 40 deletions(-)

-- 
2.48.1


