Return-Path: <devicetree+bounces-189061-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EDECAE67E2
	for <lists+devicetree@lfdr.de>; Tue, 24 Jun 2025 16:10:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 440DF5A5435
	for <lists+devicetree@lfdr.de>; Tue, 24 Jun 2025 14:10:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 53D222C3265;
	Tue, 24 Jun 2025 14:10:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="rr915wTN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C25C628ECE2
	for <devicetree@vger.kernel.org>; Tue, 24 Jun 2025 14:10:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750774224; cv=none; b=jDFFuWyTJG/Nx0ERfEPqTM0rLfMxE1yZiziwc3OCV+8PO9HrPQx0kMY9IQzzBsS7fW8AL0tQMZp43tweBDzUlsWpjH6YYKDEZnzax8M6NCRwXBOOSxmlW5M6Hi7fa8b+TO1ErdlU/qFb6xUQo5Zzpzsj6fkVYVq6F4wX4FHuxiU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750774224; c=relaxed/simple;
	bh=NuJWCvNMDvp7A01JcwhLK1F4wGD5m4AribrwpLbZ6eQ=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=EMxNdMbi7ZgH8MxqN037M0CL8h0xrAjSwE7TJC2hImFiPV6VQ1buoBNa/A28W9kHZH/yLjNlUdC7bqcq9v8a/AFYhxYIV6Km2qYE0USsJTvqQibbrpdpBHPIc1S8SPdWrrtmpSoIZir6/3QG/cPZDvC5LpfFw/AigCNMCeCziuQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=rr915wTN; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-4531e146a24so3423455e9.0
        for <devicetree@vger.kernel.org>; Tue, 24 Jun 2025 07:10:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1750774221; x=1751379021; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=gSOei/bzMdbbI2Pm7lA3f9YENYRJXjnioWA5X0R4sEo=;
        b=rr915wTNTiK3831GdkgGT6zufwkctsTFkJ8xVX+c9kXqwqTZbKVKD+btPgOHdRXhoS
         kfwBQDFhWQoV8Tn5lBtJVQ0wNTy1+c9orNMPsANQC9tpILxhQB038HUEqOy9mO2YS2HT
         0O12hNNDoYM+WljEd9CS1mOkcgxXsaXnUqP6AZsUpVOnJfY8q2YCkOX+PdE/7nxABAd1
         GYeLip4LWQTJp7FSgSZ1Ujp/IQt9SCctn4zsUuVv43RgoqoZ+5BQVENhFUDgsc1LAh5B
         iWBPB0494QHUZpQowBdI/z2n6uzBOgYGmqKEJKkF7jF5mjLTO/IrJtEPIQdkMz6CbSjy
         yKGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750774221; x=1751379021;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gSOei/bzMdbbI2Pm7lA3f9YENYRJXjnioWA5X0R4sEo=;
        b=sroT1JFV9DgwnDWS181cBYh/oxNqV+u0qz99wWpGd9Dr42CK1NNv63bZiRvWggHKJ7
         PwYOOEmm2FlMcWR9EnAqhdzEafFP4+tUiIdz/HBUG+VyFR7wYGpaBlDUGr9JPoSgxjAj
         YcLHQ+QUlHoGGa8vXen9wpDvfeLfekZCFcYCAeaOHhkKD+0xsc08xZjMoBVCemEJFO97
         xxFP86d2eNnj7z+/QqGWWZkxFqv6cajY0lGwWWdeUdLtkXTplj6VCBYhKt+BdvD9op7s
         WH1j49ePv7tk0dVrwq6RViIr8817JicAzxssdszBYn6dK5rfILK2T8EE0SaofLfjdkf4
         w5XQ==
X-Forwarded-Encrypted: i=1; AJvYcCVEnxTGi1wRMDhK6VQvTIqEvG3TRqcJYcDFSoLH0mYjQ/i+yHSNxNi32696X7EbGbnBQ2UcqG/6LGTE@vger.kernel.org
X-Gm-Message-State: AOJu0Yw5r3kWJlr7Vyq9FlkMUmmJPAMcs5lgVrqLc/CijM7Qmrtfm3U6
	V+6fqrajOJY/TPpUYArW2jdxM4BthPAqodOd2rJurcIvefLp5p3NF/1M3c3EgATEozo=
X-Gm-Gg: ASbGncvaqe/DD5UrWwPdQqTX3ItvPiQYAsZYb0t1IDGABLAqKZFCwrrzwL3AfnL+tjJ
	AaILPV5nHf/OhMA2cHg6uJQ0hGLPAhbm5+uaJSjB3+9i/AoR6YxsP5FXdE3FRjkTvLpq2q8Lry7
	ZpS/sVyq/hIwrQmjD1eSKjrZZUFXdlZoXRfwGZ6sINy/pGqgoL7LZEpJeNSHHib4/xz2qEXlGaO
	6uH2SQ61+/oPJUiTacE9yNpRIOTVv0lwOg8d/A1+1ADzItlAAadgaVrL4wiULJYuvFfYrdibH7Y
	baHVgDREtv6YlCDSHlHWlJf6eA582mCZ3f0MUFJgrIN4ClTtnsT+gFHZ4JdWlFI=
X-Google-Smtp-Source: AGHT+IHAFIyNFoPHfcJpS9uG7ODV4IPOWAcQwwmdmU2AsHKw3IL8dxcp/xxloNOH3Z3z2+I3czNdHw==
X-Received: by 2002:a05:600c:4452:b0:43c:f0ae:da7 with SMTP id 5b1f17b1804b1-453716b567bmr78480325e9.7.1750774221073;
        Tue, 24 Jun 2025 07:10:21 -0700 (PDT)
Received: from brgl-uxlite.home ([2a01:cb1d:dc:7e00:34d2:109c:3293:19e9])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a6e805175asm2004223f8f.20.2025.06.24.07.10.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Jun 2025 07:10:20 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Michal Wilczynski <m.wilczynski@samsung.com>,
	Drew Fustini <drew@pdp7.com>,
	Guo Ren <guoren@kernel.org>,
	Fu Wei <wefu@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Bartosz Golaszewski <brgl@bgdev.pl>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Frank Binns <frank.binns@imgtec.com>,
	Matt Coster <matt.coster@imgtec.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Alexandre Ghiti <alex@ghiti.fr>,
	Ulf Hansson <ulf.hansson@linaro.org>,
	Marek Szyprowski <m.szyprowski@samsung.com>
Cc: linux-riscv@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-pm@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Subject: [GIT PULL] Immutable tag between the pwrseq, drm and pmdomain trees for v6.17-rc1
Date: Tue, 24 Jun 2025 16:10:13 +0200
Message-ID: <20250624141013.81358-1-brgl@bgdev.pl>
X-Mailer: git-send-email 2.48.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

Here's an immutable tag containing the thead 1520 power sequencing driver
for the drm and pmdomain trees to pull from.

Best Regards,
Bartosz Golaszewski

The following changes since commit 19272b37aa4f83ca52bdf9c16d5d81bdd1354494:

  Linux 6.16-rc1 (2025-06-08 13:44:43 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/brgl/linux.git tags/pwrseq-th1520-driver-for-v6.17

for you to fetch changes up to d4c2d9b5b7ceed14a3a835fd969bb0699b9608d3:

  power: sequencing: Add T-HEAD TH1520 GPU power sequencer driver (2025-06-24 15:55:05 +0200)

----------------------------------------------------------------
Immutable tag between the pwrseq, drm and pmdomain trees

Add the T-HEAD TH1520 GPU power sequencer driver

----------------------------------------------------------------
Michal Wilczynski (1):
      power: sequencing: Add T-HEAD TH1520 GPU power sequencer driver

 MAINTAINERS                                 |   1 +
 drivers/power/sequencing/Kconfig            |   8 +
 drivers/power/sequencing/Makefile           |   1 +
 drivers/power/sequencing/pwrseq-thead-gpu.c | 247 ++++++++++++++++++++++++++++
 4 files changed, 257 insertions(+)
 create mode 100644 drivers/power/sequencing/pwrseq-thead-gpu.c

