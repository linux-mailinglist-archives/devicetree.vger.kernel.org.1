Return-Path: <devicetree+bounces-250135-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 341E4CE6717
	for <lists+devicetree@lfdr.de>; Mon, 29 Dec 2025 12:04:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 26E6B3007E44
	for <lists+devicetree@lfdr.de>; Mon, 29 Dec 2025 11:04:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9E9A12F5487;
	Mon, 29 Dec 2025 11:04:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="Gig0BYJX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f182.google.com (mail-pf1-f182.google.com [209.85.210.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF42E2E092D
	for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 11:04:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767006270; cv=none; b=s9mQOlINSvYwwgGVVdTuEYhzjNfRr5p6FeDQkVoq1VkkxLY1reFKv/CYf6y9+ZYf8AXTUcPzU8LXLmP7ghG9KcrOOAKO4+f0HIzR5mLkfyRi2ji0WFvAYix1F/teIFVhFS13SHkjYNb6zztFRtibqjuqLwkzNN3xkv5kvbJqjIY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767006270; c=relaxed/simple;
	bh=ktIWwmpfHqKVnE2olidD3WpkQg0kxx8RJ8bXuIa1abc=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=KoDnB2Bm9WcAi98EjhVm0Qx6dLLNOn3U7MT4YoGXUypqH8hNACr7xUC5wQS4Mqox/wPBZF931sxHCnFvJ0ZiDBzP6x/wxuar222u6tpJDGhBFgaxCdn/QaeHWuu1SmjEdKynLjbQIuQZdneF0etDd0KuO9xl40WlnViA7zfx1nQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=Gig0BYJX; arc=none smtp.client-ip=209.85.210.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-pf1-f182.google.com with SMTP id d2e1a72fcca58-7f1243792f2so5945945b3a.1
        for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 03:04:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1767006267; x=1767611067; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=lUNSVe/sd1lYKp8l9IYubt2NU/sufakOfvhG/jIITbo=;
        b=Gig0BYJXZjqe8hUjO9unoLKDD9jSvY9KxAbZCw9ylf5OEbmfCm6wRy5+PQkVjrM2gc
         XyJzqNdbxzXROK98XNEfvMvy14uingGgeoS6cY0pSMZBm2cezVXpv9iOh2wfKhKS9pKw
         BUb0SLgOke6GYPdxRr5tL1w7jqo9kpHkXPlUs1oTvvGlXO6d641QoRV/ZuLG9203l40m
         WlIlsMiARJb6YON+yyyj8kV0GZ/m5YX6r72QtfhBw7vs9fBb9+FSaSe90a7lZUhUhFk2
         IBTTZ2KIfLPKpEBbXJyq/vLf30+DXOiMCxD+BpnuBiDiMzQ++PSSIVP8vN2l6bIkNqNc
         VYAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767006267; x=1767611067;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lUNSVe/sd1lYKp8l9IYubt2NU/sufakOfvhG/jIITbo=;
        b=p62Haw2h66RP9G/SAixnp7hWjtHa59A1QrECim98aSrkb8XGSfYa1C5GA1TDsEIbHd
         8z9wCDOdHkk+tlQKtXZ3CyJM+cX3bSLCwBx4OI//RnnfwLOxLL2AyzkFPiqC0ajVbC9w
         dKAOQI0+c1EvoYb2wKc4+a58LZFYSgDX28USYWVcun+C8jak9Ugi7n+a2jdV5pILiKnr
         0907AZ9jbM79ujO7UWBioCqDqOZAd5+QkQL5McmMyfvLzmopMafnAmpmDc4sUG/Q8f6t
         Kfi+22mOY3iBoghym8bmcipw7UgO7BTRrcKDqqw83QHld1yX3vEMzr7VbJMy1M5kY0he
         H9SQ==
X-Forwarded-Encrypted: i=1; AJvYcCVKCZ3kzbjhVXfsOoB38pxXaHOqTdkBPW/7bslpgKEMUx33sr/JM9bhm4OFNJnL9IgbXuln5VW7i7w0@vger.kernel.org
X-Gm-Message-State: AOJu0YxNll3OjuQPdpjAc/FZhKbfw6VfmhdIQfNJsWo+1BBWwlBCMaLt
	89LGMLXJ0aICQ/tg/g0Oy6RH7QOhAJMI/aFr4tX2XE8ph3EjgXWFsYxqWC633gHetls=
X-Gm-Gg: AY/fxX7YNguBUrLJgRAczOeR3J9PlA8dqQaJmzfNlsHngJOJqSWNlYM+CZlurqC2ghg
	+ICOMhOb0wjG3NNImNg8f3UCNN/6hvfRV2vXVdAVIfsULiZYuNtY/Kmyjx2WAATB8mjEVZ36UZw
	kjU7ub2h75lOXtiV/7vU/DphXa4GLNL5ouGsT69E+WXPYkw68umXHRFiPfEcOT/VqC4j1ESMx47
	bh37J4tYLxG9uod4oYCXXPnZWBivRA6F674AAgF7jr0Y29OiO3gGkk5QIKbnoZ5RiYLWwMkonK+
	B5aJIgHQS50HVxjQKVbbr0vQoN8uqiA7BjlDZNBTpWkkkRhRUL3Ra9eP5+xN3w1C4WBibofZFy0
	bbZHXKy0GI6qy0ghIYfm8f1C7O4KuRz7hE3WnZQVCYEf9Nv0t4h5XYjU3yLLYnl/uKhJvq2ntiD
	d+3MseGiR5bhaNPxdQcCf/2cLzsEErR+U=
X-Google-Smtp-Source: AGHT+IEBHFLAKZFYMyyqorMLa7esl33p/rcxioC0H1BC7C+EyM+BB/PbnfCpeJf/1UDq9wdwVE528Q==
X-Received: by 2002:a05:6a00:438d:b0:7e8:43f5:bd5a with SMTP id d2e1a72fcca58-7ff67852a95mr26500403b3a.70.1767006267092;
        Mon, 29 Dec 2025 03:04:27 -0800 (PST)
Received: from [127.0.1.1] ([2a12:a305:4::40d7])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7ff7aa32916sm29338817b3a.8.2025.12.29.03.04.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Dec 2025 03:04:26 -0800 (PST)
From: Guodong Xu <guodong@riscstar.com>
Subject: [PATCH 0/4] reset: spacemit: Add support for SpacemiT K3 SoC
Date: Mon, 29 Dec 2025 19:04:03 +0800
Message-Id: <20251229-k3-reset-v1-0-eda0747bded3@riscstar.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIACNgUmkC/33PwW6DMAwG4FdBOc8oToASNE19j6mHJBga0SRbw
 tCkqu++FG7TtONv+f8s31mm5CizobqzRJvLLoYS8KVi9qrDTODGkpngokUhFCwSEmVaoR+VObV
 Ik1TIyvpHosl979T75ciJPr+KuB5D5ilnvYtD9XqAqDiKHlXdNFydBCC4EO3Vaa/Ps9fuVtvo3
 578H2XRAe9gQbC3BcqejwE2ARxEb1rVYG+acTrPFNYY65jmf5zy1RPZZGl3XFhS0pjOyt9tozP
 tp9w6VFtXo4JkJbs8Hj/iFgI7SgEAAA==
X-Change-ID: 20251229-k3-reset-8d9b751ef391
To: Philipp Zabel <p.zabel@pengutronix.de>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Yixun Lan <dlan@gentoo.org>
Cc: Alex Elder <elder@riscstar.com>, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-riscv@lists.infradead.org, 
 spacemit@lists.linux.dev, Guodong Xu <guodong@riscstar.com>
X-Mailer: b4 0.14.3

This series adds support for the reset controller found on the SpacemiT
K3 SoC.

The K3 reset controller shares the same architecture as the K1. To
facilitate support for both and future SoCs, the existing K1 reset
driver is refactored with the following changes:

1. The existing K1 driver is moved to a dedicated 'drivers/reset/spacemit/'
   directory.
2. Common reset operations are extracted into reset-spacemit-common.{c,h}

The K3 driver is implemented using this common infrastructure.

This patchset is based on v6.19-rc3 and depends on the K3 clock drirver
patchset [3] and the K1 common clock work [2] and [1]:

Link: https://lore.kernel.org/all/20251219012819.440972-1-inochiama@gmail.com/ [1]
Link: https://lore.kernel.org/all/20251226-06-k1-clk-common-v2-0-28b59418b4df@gentoo.org [2]
Link: https://lore.kernel.org/all/20251226-k3-clk-v3-0-602ce93bb6c3@gentoo.org/ [3]

Signed-off-by: Guodong Xu <guodong@riscstar.com>
---
Guodong Xu (4):
      dt-bindings: reset: spacemit: Add K3 reset IDs
      reset: Create subdirectory for SpacemiT drivers
      reset: spacemit: Extract common K1 reset code
      reset: spacemit: Add SpacemiT K3 reset driver

 drivers/reset/Kconfig                              |  12 +-
 drivers/reset/Makefile                             |   2 +-
 drivers/reset/spacemit/Kconfig                     |  36 ++++
 drivers/reset/spacemit/Makefile                    |   6 +
 drivers/reset/spacemit/reset-spacemit-common.c     |  79 +++++++
 drivers/reset/spacemit/reset-spacemit-common.h     |  53 +++++
 .../reset-spacemit-k1.c}                           | 113 +---------
 drivers/reset/spacemit/reset-spacemit-k3.c         | 229 +++++++++++++++++++++
 include/dt-bindings/reset/spacemit,k3-resets.h     | 171 +++++++++++++++
 9 files changed, 587 insertions(+), 114 deletions(-)
---
base-commit: 82791741762a870f5f2ede9f909301770f66f867
change-id: 20251229-k3-reset-8d9b751ef391
prerequisite-message-id: <20251219012819.440972-1-inochiama@gmail.com>
prerequisite-patch-id: df430730ed961011cee5c5d47b7ace84b3c5ebb7
prerequisite-patch-id: 64003618c33be925602e46b7543f2c13d3f36474
prerequisite-message-id: <20251226-06-k1-clk-common-v2-0-28b59418b4df@gentoo.org>
prerequisite-patch-id: 478955b6a6ab7c82910cdd9de7caf2d8be95b99f
prerequisite-patch-id: 9d9f553c3430fa2bda0e980679efa60c46cdd8e9
prerequisite-patch-id: 50eb74bd253e779458b52b242144e79807675461
prerequisite-message-id: <20251226-k3-clk-v3-0-602ce93bb6c3@gentoo.org>
prerequisite-patch-id: 5c03cda3a94467833d7d6c97889edb2909a8377f
prerequisite-patch-id: dce85ac6e4e94b1d2622a8231ddab3de766373ff
prerequisite-patch-id: af1fb571f0d19d72e69dd41d15fc2dbd730b17c7
prerequisite-patch-id: 96f735ba6592797c77ad17568e9065b285dba453
prerequisite-patch-id: 2fdd0abff5d58f5c99646ba00f82d81672679796

Best regards,
-- 
Guodong Xu <guodong@riscstar.com>


