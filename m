Return-Path: <devicetree+bounces-171859-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 31BBAAA0642
	for <lists+devicetree@lfdr.de>; Tue, 29 Apr 2025 10:52:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 22F79480413
	for <lists+devicetree@lfdr.de>; Tue, 29 Apr 2025 08:52:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 46C17296D3C;
	Tue, 29 Apr 2025 08:52:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="SCRRoWfe"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f171.google.com (mail-pl1-f171.google.com [209.85.214.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA55B1FCFE9
	for <devicetree@vger.kernel.org>; Tue, 29 Apr 2025 08:52:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745916763; cv=none; b=V9wixEd8R5UWb/3df9/hcYDg2P4/m/NlmBxYrFgxxTg1bxTFz1eIz2HwVJZNCzadXTZ552jJZQ4kc0O0AjDy1sQp6zO+ce97uYet+MyuCPkwHOuWyfr9UfF/SE9CK0cFd9aZsvP5SycAUWxTIDVUpP42WZ4n0nLaNfUv3Rh5KEE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745916763; c=relaxed/simple;
	bh=snO5UlRxqymfMmKvVew8ZDq0Uh+aBwp66nsHilnsiK4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=iyscHLkPYja3ASsfpPNWsH3E2uVbPT4IihLFX+yDVWrB7B48bTaE5vOn8fcu/SJuQOyRiJHInfDshyvG2PTVD+nkRLR7ZL3Qs3VAV6TjktDCggt9F9k0RgDlD530v9ZZMTtZhF6YXMYPlVGataYZAR4y3m1R6U80Dtksh9IW2HA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=SCRRoWfe; arc=none smtp.client-ip=209.85.214.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-pl1-f171.google.com with SMTP id d9443c01a7336-224341bbc1dso61048405ad.3
        for <devicetree@vger.kernel.org>; Tue, 29 Apr 2025 01:52:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1745916760; x=1746521560; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2mEqVehBRCDyoxu9q2vBqacMHsZUXwyFpRPZVYhXUX8=;
        b=SCRRoWfedbJL16NYxzyE8b4wtFlqY+PhCtRsg9BMzyqBc0SP7X0aAgB2Ovr4QF3vGE
         K6XhrgoT+/iiL4CFUsNoUkMUyw2gdLDw/4tu7l/BGk7tg+dm2zHDnjcKB83LYceZNIxB
         73vZG66nl44xhHJLJcoZcZNGVCTGXIukd+lynH2uAPkrR0ofw16DgFLrHBcZNvAhFuAw
         CjmLGkh28N6YLXYW2qbk/43Au2eQe7fmvZ1aycQquA5UniCWtvlZECoXMG3nCdI/x+HZ
         uI5Uh5YSbVxtw3frS2Ac3CcPWfJPhqlEHhTUUzWh5oEgeP5hCrKWRIxnabJ+dDPFCKAV
         T1Mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745916760; x=1746521560;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2mEqVehBRCDyoxu9q2vBqacMHsZUXwyFpRPZVYhXUX8=;
        b=khcO59TIqGMaTCISqFrR/FrRm/BY39vK3Jd9bH9Kqppb5MVkVtIgrvVn78IIyfMaFE
         2cEeMg/cYuknS4paL738vBzF/FYsNVHBFVlUx8mHH4+g70CrCq7AWezRecpAeru7aGQt
         mRjwjLeFXhSQoE8G1iYSGpKktGKBvU/wdS+UAncNRANtzMiULntO280CVdZ8xFI5OytS
         wNjf4H9Qk7k2ro+LYB9kRpNMFDQMjM90Q1RWWGRz7jEleSrCW1JYrjmcW8kDrUyu+tOm
         /GhNamigN7UjRqw/92vw2Uu5lybMDREI9gUSM3asV7saaJo6cE2ftRV986XIcEjI7bQD
         Q7QA==
X-Forwarded-Encrypted: i=1; AJvYcCV4QoySCJ1wsJKEwa5oxsqNzuD2zP3LN/4E7R7czpLOTcTulHylvBbV88FzLY5Y39fCR5ZqE8P6y4Qn@vger.kernel.org
X-Gm-Message-State: AOJu0YwR9rzNKOFfSPLgEX3NClp0RZkWpX+8OvngkCA+X3M+6qFLTkFn
	oOW5OB12dlPNjHKKsbijV+IwqAEmPesQOtO+uKpsZhpphqd0JTMzZ4NLvXkuL/A=
X-Gm-Gg: ASbGncslfw8pJSpckaxahJTJoszzKPthvwpWiGS1RpTRULT9PStW5hRyNn2LgCVz8LK
	XC2hyQdA/f2EaQX7NxjXqhtA8cXpgOlCYMmD7MixAQW6nDQi68QQZAx9fJFT53s+vluVS+EZy9n
	PAY0gtQfRfFGcofDlh4hiKQ+rjH7qUZU3enFKuSonh7NdLM85obaBXQc0fcUNygKaZI1pRmGpTP
	t0aZsc9VioZyNo7Uyk8DpD8KvPQE8UtGgpGkKQo2MdCbneKE/NRw8qwf2z/yHl+ZFlIV1XyyX6a
	yFvjesxrFUwQJV9keRJLfXlJkXbGyHJ8W4xLpEFQlVy4rbkxtcwQjqloXn1/yHVqBoiZyrTqhCc
	lspgN9NIGfD50xhZePGAKmiy4Dg==
X-Google-Smtp-Source: AGHT+IGnvzbUWhLI/YOaGHPG2HlwGVUVLczRsChSXyhLNMaAX1vRU5+feyFIpxGpmIkb1IMqyytUCA==
X-Received: by 2002:a17:902:e5cd:b0:220:fe50:5b44 with SMTP id d9443c01a7336-22de7037cb5mr28009905ad.31.1745916760002;
        Tue, 29 Apr 2025 01:52:40 -0700 (PDT)
Received: from localhost.localdomain (210-61-187-174.hinet-ip.hinet.net. [210.61.187.174])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b15f8597e0bsm8550119a12.44.2025.04.29.01.52.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Apr 2025 01:52:39 -0700 (PDT)
From: Guodong Xu <guodong@riscstar.com>
To: ukleinek@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	paul.walmsley@sifive.com,
	palmer@dabbelt.com,
	aou@eecs.berkeley.edu,
	alex@ghiti.fr,
	dlan@gentoo.org,
	p.zabel@pengutronix.de,
	drew@pdp7.com,
	inochiama@gmail.com,
	geert+renesas@glider.be,
	heylenay@4d2.org,
	tglx@linutronix.de,
	hal.feng@starfivetech.com,
	unicorn_wang@outlook.com,
	duje.mihanovic@skole.hr,
	heikki.krogerus@linux.intel.com
Cc: elder@riscstar.com,
	linux-pwm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	spacemit@lists.linux.dev,
	guodong@riscstar.com
Subject: [PATCH v3 6/6] riscv: defconfig: Enable PWM support for SpacemiT K1 SoC
Date: Tue, 29 Apr 2025 16:50:48 +0800
Message-ID: <20250429085048.1310409-7-guodong@riscstar.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250429085048.1310409-1-guodong@riscstar.com>
References: <20250429085048.1310409-1-guodong@riscstar.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Enable CONFIG_PWM and CONFIG_PWM_PXA in the defconfig
to support the PWM controller used on the SpacemiT K1 SoC.

Signed-off-by: Guodong Xu <guodong@riscstar.com>
---
v3: No change
v2: Changed PWM_PXA from built-in to a loadable module (=m)

 arch/riscv/configs/defconfig | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/riscv/configs/defconfig b/arch/riscv/configs/defconfig
index 3c8e16d71e17..3c4d9bb8f01e 100644
--- a/arch/riscv/configs/defconfig
+++ b/arch/riscv/configs/defconfig
@@ -257,6 +257,8 @@ CONFIG_RPMSG_CTRL=y
 CONFIG_RPMSG_VIRTIO=y
 CONFIG_PM_DEVFREQ=y
 CONFIG_IIO=y
+CONFIG_PWM=y
+CONFIG_PWM_PXA=m
 CONFIG_THEAD_C900_ACLINT_SSWI=y
 CONFIG_PHY_SUN4I_USB=m
 CONFIG_PHY_STARFIVE_JH7110_DPHY_RX=m
-- 
2.43.0


