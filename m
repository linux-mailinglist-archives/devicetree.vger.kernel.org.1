Return-Path: <devicetree+bounces-123968-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 8530B9D6D75
	for <lists+devicetree@lfdr.de>; Sun, 24 Nov 2024 11:05:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1C50E1619D0
	for <lists+devicetree@lfdr.de>; Sun, 24 Nov 2024 10:05:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A53F1188734;
	Sun, 24 Nov 2024 10:05:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b="TLKQGZKh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f66.google.com (mail-ej1-f66.google.com [209.85.218.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C150D14287
	for <devicetree@vger.kernel.org>; Sun, 24 Nov 2024 10:05:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.66
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732442713; cv=none; b=oHPtaN6P/xSqljpHCVMF7E5fUhIYc1Gdh8mcDu5pbOh88x35F3lni/2Ommp7NNdPnc/+R0nI3vSa5LRPKjZOfMuJtFOh3fLnvPxo5dagAKKCwYEjR2FiaSB6dp9bxdEbmJqkpb+wxGidD9GjpVkTSmc/JQTdhQx6oh1t46lFSKQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732442713; c=relaxed/simple;
	bh=xYyBbJ1bV1F/AvNsXaz4DN1NT7f6hP3J7eQ9A3tlTH4=;
	h=From:To:Subject:Date:Message-ID:MIME-Version; b=C0k3E6M8J1Vc3lRr8XoNpJ55OdBGcGu9rD5tSWcyChxkzGz1ZAtDjSkhlB50PvBM0SF2s68BkdGvEwXJRxH6sh2GxaLe015BcYV8HEthMpIygkb1x6iwGgK1ZAm5csmc2dx/OT98EPiStf9kfFMyWO+5WxJHXs9MaZXYUZeeH30=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com; spf=pass smtp.mailfrom=suse.com; dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b=TLKQGZKh; arc=none smtp.client-ip=209.85.218.66
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=suse.com
Received: by mail-ej1-f66.google.com with SMTP id a640c23a62f3a-a9e44654ae3so481177466b.1
        for <devicetree@vger.kernel.org>; Sun, 24 Nov 2024 02:05:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suse.com; s=google; t=1732442709; x=1733047509; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=Rc/jEUsBswYkaNb52ief0DkwziwerNcpWx/rdhbBFpU=;
        b=TLKQGZKh+ukC5GklXmw+ac1cisJMfJ/M6s7jxDRqmrl/2wE9o6QcwwPv2dvzgZPJXa
         DazyQG9LwNsz7SQqZV3eq2KfztXmaGh7rT3wU8uP6gijFuhzjlIKvWwGLeWuz75FecLS
         WLpcpZ1seh/UX1LbbyRXR+rAd4s8ltTJON0tKceFw1cfduXDH9GU/RQ9JGdx6PGvzJ2j
         UoG0Q4v9tMq0XLmlHClz1y5CWirF+nOmbL9MdkWCb7MdkgFAmln758io8bywfuYT2PCV
         wQnc3c+Ki/6NECj4RX6fFWvJFla8KVGE6wOd+WwnbqR8zA/uoD+B+1CZ3sHp73fqW0kV
         JAow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732442709; x=1733047509;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Rc/jEUsBswYkaNb52ief0DkwziwerNcpWx/rdhbBFpU=;
        b=anmaTB5bAkJpOrs/PyTGjos1Z7GHSikqkmV/5NhlKcgkUiDKVXfF7MQWXmjV9QvCsI
         yvTi6FzgmKp0AsGT4BBRZodPBp6ra0CtyTSmP5+XkREl0Z8vCWGdIGZBtfXN4JcuGUU8
         vkvr7THWV23uSNOc+KpkSHUEjKyNQXQH6S+ClLXVvVKwiEwvzOI7WPEjrDs3dvOTFX0S
         PEhVur5u2aRLwrqF2NhVUTAKma9wUSzsULVsziXYeqdGS0fRuw7LS7kvSz4/AwmcZ+JQ
         k6znZpltipRrpFGzSl3GGpfljTPcoT53Q1y0nj3ujV1JzqJRHxwKBU5/Qv/QcsZ5IlFp
         U1Og==
X-Forwarded-Encrypted: i=1; AJvYcCUgeY4eQLbIIUpz4Mhn/tJzDtnz3JOfoDnc9Q+eT1ziDAu/n+SJYLdqqTYVfeUnvYIbyhXfElzyGVNm@vger.kernel.org
X-Gm-Message-State: AOJu0YyZnmDmFdHFh0D+zZGtbfhQzMQzBqfa/SD2TKlwwFm38kFVEaf1
	BrECKQ0MbCdFrAyyn8oKmhxtSLsAhSHCdHMZBx21p/sH17r+uFiEdYcVlcPY7xY=
X-Gm-Gg: ASbGncsWe0cGm+cNY+FKLBnGpYcdKAtuxQpd43oz0dlbnNO3xi00Z1HVWelEHm1ZLXB
	8plKbc2opTDcXZmT+EreEh0xQsOrKAUgglcpz6xgLwSVUKxWTnQx/4IZz53yZXR1FNrxB4q7AaA
	o77F8RQghFFQdeQqlvRYgsRHRjmL+XyjF7TV0dQnlLJ0wQoQ1XmRBmpTFC0/e4q0lhNT4Q7kTbP
	GrZ1oCW2vM8xOgQBP6dZzc84GPh51nnwaMhIRwEpyB3T5q+5m4ujUR/udHDPuQyYbfQXYPNOGzb
	g4rIfYoFPKqkEVRQZmNR
X-Google-Smtp-Source: AGHT+IE6n1Sl2VjDnUF5IiR4wNGa1GDW8vw2+O+cu/s3Q+7FHS16Q8BL2O+lyk7mxoO9jBhc7KuPpQ==
X-Received: by 2002:a17:907:77c9:b0:a9a:67aa:31f5 with SMTP id a640c23a62f3a-aa50990b2a9mr726045266b.10.1732442709155;
        Sun, 24 Nov 2024 02:05:09 -0800 (PST)
Received: from localhost (host-79-49-220-127.retail.telecomitalia.it. [79.49.220.127])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa51759732asm295266666b.14.2024.11.24.02.05.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 24 Nov 2024 02:05:08 -0800 (PST)
From: Andrea della Porta <andrea.porta@suse.com>
To: Andrea della Porta <andrea.porta@suse.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof Wilczynski <kw@linux.com>,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Linus Walleij <linus.walleij@linaro.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>,
	Bartosz Golaszewski <brgl@bgdev.pl>,
	Derek Kiernan <derek.kiernan@amd.com>,
	Dragan Cvetic <dragan.cvetic@amd.com>,
	Arnd Bergmann <arnd@arndb.de>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Saravana Kannan <saravanak@google.com>,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-rpi-kernel@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-pci@vger.kernel.org,
	linux-gpio@vger.kernel.org,
	Masahiro Yamada <masahiroy@kernel.org>,
	Stefan Wahren <wahrenst@gmx.net>,
	Herve Codina <herve.codina@bootlin.com>,
	Luca Ceresoli <luca.ceresoli@bootlin.com>,
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
	Andrew Lunn <andrew@lunn.ch>
Subject: [PATCH v2 0/2] Preserve the flags portion on 1:1 dma-ranges mapping
Date: Sun, 24 Nov 2024 11:05:35 +0100
Message-ID: <cover.1732441813.git.andrea.porta@suse.com>
X-Mailer: git-send-email 2.44.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Empty dma-ranges in DT nodes using 3-cell address spcifier cause the
flag portion to be dropped by of_translate_one(), failing the translation
chain. This patch aims at fixing this issue.

Part of this patchset was originally preparatory for a bigger patchset
(see [1]). It has been split in a standalone one for better management
and because it contains a bugfix which is probably of interest to stable
branch.
I've also added new tests to unittest to prove it.

Many thanks,
Andrea

References:
[1] - https://lore.kernel.org/all/3029857353c9499659369c1540ba887d7860670f.1730123575.git.andrea.porta@suse.com/


Changes in V2:

- Added blank lines between paragraphs in commit message for patch 2
- Fixed a comment to explain the code behaviour in a straighter way


Andrea della Porta (2):
  of/unittest: Add empty dma-ranges address translation tests
  of: address: Preserve the flags portion on 1:1 dma-ranges mapping

 drivers/of/address.c                        |  3 +-
 drivers/of/unittest-data/tests-address.dtsi |  2 ++
 drivers/of/unittest.c                       | 39 +++++++++++++++++++++
 3 files changed, 43 insertions(+), 1 deletion(-)

-- 
2.35.3


