Return-Path: <devicetree+bounces-210003-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id CDFCDB39DA4
	for <lists+devicetree@lfdr.de>; Thu, 28 Aug 2025 14:46:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 94E9A203691
	for <lists+devicetree@lfdr.de>; Thu, 28 Aug 2025 12:46:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D68EB30FF20;
	Thu, 28 Aug 2025 12:45:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b="EPbx2oD+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC61026AD9
	for <devicetree@vger.kernel.org>; Thu, 28 Aug 2025 12:45:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756385158; cv=none; b=WmJfszydEfwQS/YrEsPVM95iuKv4L6gKea+YtVOBmIOZUt7tthOIYlGeOS2Sr0fYwzH4Jrm2dR8Pk9Vcy8PdSU0DSoRZSwaQcJSUJaCSsNK15+hGOd1dBDv2SR6bG/b7SpD6ub7QFiI6MxtekxbTuhUhz7kc8gyguepQitgOLwA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756385158; c=relaxed/simple;
	bh=2/h75LC4QC05CD1+ReHV0CacW5rn5FqjyW+yHnAE8pg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=i5ahdcjzBQPzHc7LYVo64qEF2QVikzVoQkojpYQBWzFyeb0cvxqvfbq64A7S1PWEisJ8VKhw1UxGHODNz6xbo5vT9NZ0WLdcOdTNlh5IBQ5coe4gRlTez/9tIJoKebOBiZNQ39oKH1rH2+VAfez+RMiTZpcNSI1CoHlqfc6zHgg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com; spf=pass smtp.mailfrom=suse.com; dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b=EPbx2oD+; arc=none smtp.client-ip=209.85.218.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=suse.com
Received: by mail-ej1-f51.google.com with SMTP id a640c23a62f3a-afebe21a1c0so138120466b.1
        for <devicetree@vger.kernel.org>; Thu, 28 Aug 2025 05:45:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suse.com; s=google; t=1756385154; x=1756989954; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IcHld7eWfS9k/YycQdQCcj1jL0BjbTeZ29msr8uUtu8=;
        b=EPbx2oD+csIbjuwTq1/K6hmbrd6qHZjsuN6mSfh647WSdJg1yeq3/N6SQx4UXvkoW5
         SYEsmvJ6N2TW2smH/fPnzjRCcUEh7ENVC+Yx2wSZvqgWtBH0EfroEKzrH73EooXwA2GQ
         SMljvug19Uwv54IxWnvXTsyB3YAfLHncyEj7RepS/tR2TrscbPbYdPF5IulMmwV5KrHg
         HBV40fwAetc0Tg6qytaaCG82imDBpbUB2L8LVUNOYZrhyLgSHCDtrDr7xLAwPLa4wJPx
         nXW6SOe+Av/zzKDvQlXcHMmJ27FxyODF6KcPvE+FkFrUUzXisosPa5FSMZGMLQVk4ULw
         mc3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756385154; x=1756989954;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=IcHld7eWfS9k/YycQdQCcj1jL0BjbTeZ29msr8uUtu8=;
        b=lA4S8oRn+x77D+GV/TLDlQ6miwfRV2/8aqX1/orZXjV0HnetnWgk3dT5qLJR67TYJH
         ZxbFWxmTWEYk1tFdD3kdn+KSZUJX1LV3RXqBW9JklevjMgtzlxDvn8+F40MFz3KKWgUQ
         l6fm0wdRy5G7n5L5wDwOnQeJHbep4bv8FrRflCMVOvE743jQBFYVqNyt6sdBlQYWYV9p
         t6DiEFr/qcdE3t9a+m2iIpnYTK1wZfqT94qUZyKrb/EYo2OxUDQkR9CCChp5E2zgK0KH
         XqbEWBu/ewtw+KiQXiW8di3oc6VTAYw9S904ABlOrl4gVkRKP7WcFkPOebWsAMZvnWAu
         zjAw==
X-Forwarded-Encrypted: i=1; AJvYcCWo/yQ1a8obaFfowMpwN3stHv/agNCvvsH1Y3WYZweCCP+yHeQtgl0GvsSIn+r0Ls7eFYRG49LdrJB6@vger.kernel.org
X-Gm-Message-State: AOJu0YzkHKo0Ys43ShpBajWoc8i3Bqqs3zl0jHwZdi0Yv7R5KEePEpjB
	htLabNHUvNAQRu9rupsyxKLoaBeDiHq5J8NfFrYF/naFUzNLrvmHvLjzPI1oLeuGtuk=
X-Gm-Gg: ASbGncs9EN8GzCBhSFvAJ+j77MNe98poGJdc1fom3BszC8LA/GjyPzIiIPTXMj+qKZe
	BweQhyeEANAx++2oDPZpSMH/4KNAqSlv7pFtFDqAKA4usrtCiYH5nPW+qYs/eB/ENVxKNGLY4YX
	kDQvO00jisTV07kFdOUuE9w8aTDBMHBxL1bMObBctlEHuInWd/NDJ13Od7cwBMtDu2HNauFiTZf
	AzLKbfjsurgQtPd3nUy/MdNZOSbecnopukIrHNUcGoi0XsoQenE/EvnqFvb4iQRKJOyJZQ7uhmw
	Nuid53zrtKJ2m5CZ4QpQ/XjAN9GRm2/S1zgvkHdrLVLUHwqQwWO3FdkpNzCgoKJLHUoaEZq6AJU
	kCzozis5twvB1wWJ3AQeJA5QTiIgBvG/R78Cjbd3f3d9wSYIgFAlEVn7xrgNy5s7cHtLHsMwo6y
	pzIsy2nMDhV9VYKxAZy0pjRcrV5+M=
X-Google-Smtp-Source: AGHT+IHTlEX0jDh5wp25sL0tVvvc1vBRnSxN+hiigX84aZY8E/p/0EJNR7c73UuEDJXxDs1etOxKiA==
X-Received: by 2002:a17:907:7e9c:b0:af9:d863:5ce4 with SMTP id a640c23a62f3a-afe28fc281emr2095490466b.15.1756385154182;
        Thu, 28 Aug 2025 05:45:54 -0700 (PDT)
Received: from localhost (host-79-36-0-44.retail.telecomitalia.it. [79.36.0.44])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-afe91744c66sm733090166b.88.2025.08.28.05.45.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Aug 2025 05:45:53 -0700 (PDT)
From: Andrea della Porta <andrea.porta@suse.com>
To: linus.walleij@linaro.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	florian.fainelli@broadcom.com,
	wahrenst@gmx.net,
	linux-gpio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>,
	iivanov@suse.de,
	svarbanov@suse.de,
	mbrugger@suse.com,
	Jonathan Bell <jonathan@raspberrypi.com>,
	Phil Elwell <phil@raspberrypi.com>
Cc: Andrea della Porta <andrea.porta@suse.com>
Subject: [PATCH v4 3/3] arm64: defconfig: Enable BCM2712 on-chip pin controller driver
Date: Thu, 28 Aug 2025 14:47:40 +0200
Message-ID: <38704a5ab6913845bbf9178170e83004ab3e8fcf.1756372805.git.andrea.porta@suse.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <cover.1756372805.git.andrea.porta@suse.com>
References: <cover.1756372805.git.andrea.porta@suse.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Select the on-chip pin controller driver for BCM2712 SoC.

On RapsberryPi 5 devices it is primarily needed to operate the
bluetooth and WiFi devices, to configure the uSD interface
and the power button.

Signed-off-by: Andrea della Porta <andrea.porta@suse.com>
---
 arch/arm64/configs/defconfig | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 58f87d09366c..d4c3853d885d 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -592,6 +592,8 @@ CONFIG_SPI_TEGRA114=m
 CONFIG_SPI_SPIDEV=m
 CONFIG_SPMI=y
 CONFIG_SPMI_MTK_PMIF=m
+CONFIG_PINCTRL_BRCMSTB=y
+CONFIG_PINCTRL_BCM2712=y
 CONFIG_PINCTRL_DA9062=m
 CONFIG_PINCTRL_MAX77620=y
 CONFIG_PINCTRL_RK805=m
-- 
2.35.3


