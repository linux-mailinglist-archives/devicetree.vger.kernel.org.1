Return-Path: <devicetree+bounces-168807-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 483F9A946F4
	for <lists+devicetree@lfdr.de>; Sun, 20 Apr 2025 09:06:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 76AEF1754F8
	for <lists+devicetree@lfdr.de>; Sun, 20 Apr 2025 07:06:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A730E1DFE22;
	Sun, 20 Apr 2025 07:06:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="N3ZIWMYT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f177.google.com (mail-pf1-f177.google.com [209.85.210.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E70991D8A10
	for <devicetree@vger.kernel.org>; Sun, 20 Apr 2025 07:06:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745132773; cv=none; b=BH5CqefAsw6Iam0jJHSBUZyD7cN/q0pbDL0krZpf5SWJAt3QhEFhLQLTIdom/N9FOV794MCFpKpkAq4Jz6D2u0OVV5//EzfrgIKBppMKGV7q7rZb65BCpfZ00SECNHeRZdtVk+YS+4q+Er4YU4rt0y8azlaLoS2DDbbr/Tzs7aY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745132773; c=relaxed/simple;
	bh=iTRDl9eIM1vHDXRz79uJ7GC6Y8TqkdFZFbsYIQKe0dE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=dZ8qRxmvSLC6tCXFIshKbw2WnIcvk0AOF5h3wSwPFsTFa5xl6PWjE/UHu8wNDf4vTDtZZBj3c8NLGsJjHvNOwFptC+ykNWqfaESCa/cap39K3GZwuHx/NmPb6qIJTk1C3QG6uap86lsxfw5vUU83Cpf/E4HN76KssYFXGwyeT+c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=N3ZIWMYT; arc=none smtp.client-ip=209.85.210.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-pf1-f177.google.com with SMTP id d2e1a72fcca58-736c1138ae5so2699104b3a.3
        for <devicetree@vger.kernel.org>; Sun, 20 Apr 2025 00:06:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1745132771; x=1745737571; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3fcZq8o5SROXi3wQjym5oYgJNhmITCc4NsmF81Zj+a8=;
        b=N3ZIWMYT7WYg6o2oswnh9mWBD3/lr92fFqSpsSBKkOKYJuHJfFt93PULzu161OwmQy
         P1ZJrohuGcmOFtdLFYUrufCQ7gtZW0A8Dsr+mD0L1LnfRET1JGSbyKAJ82YvLwKwgU1W
         FpCYip81stmLB9nwOHCjxywC6eKF7hjYZeYkGUEIYlHHSX3ZUbFI5j0tTPo5qgc5BuLx
         4wAXTw9JtJ7lO9J9jRHmFtozgkcjmz83nQQDF526VongXKtc4U1L98oFAClDSXcXcDiC
         +FWQntTmrBjW/pQGMUdiUQWiw1SKHVbHnJjoON19h/YuRYrC+Xq8e8ycXR0lt1GRxuL4
         YqEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745132771; x=1745737571;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3fcZq8o5SROXi3wQjym5oYgJNhmITCc4NsmF81Zj+a8=;
        b=uAaP1H4vrtlF/K6SRRmnhsf35kFrwJR+pGiQ8UDFdpKTK/4QVJyHv9/YbVohx99hus
         rh2wgLFc66YgljHLKE6KbKOv+x2gYiYUJ7GnjBujn19Oahvy6oLra1pg3CPpHYki2vAj
         iF6HjuEAjmC33SdVoEd5biDA9jCLeSZ6XyukIA9Z9cmrcs66v3CB4ey/E6KfvwRwgp6A
         whUYErWHFdpE15SYkaHiG56qUO79UyW3Mqaxo6PrI8u2C8YRJREeHL6OkpNhnUfGvDRY
         DCyENZD0LI7DKcqZkc+ASMRBgaTUhpzEsiv75tPyMibxqLKzDnAAzxDTdebg2OBlFY+8
         Hz1A==
X-Forwarded-Encrypted: i=1; AJvYcCXhqZ2cP+j91+s4WgQdTcLcSrfCIV0Q0Qg2eC5i+QTLEWtmAHU5y89yGcb8B1MRyXgZXR5XpGMKu9VT@vger.kernel.org
X-Gm-Message-State: AOJu0YwY+KFzKyd9Fy1Hx4opVy/fwm0Bf5zACdSWZ9leOMtXJdWoiP/1
	CinKHP/YIMe3OsR2LDb6Wiqktff5u1DBt44aivZqSxqGbK/moeodc0FrX8RfIco=
X-Gm-Gg: ASbGnctnLUTW4ECVJDOuyCTmeyWC4ZWalfwupeMIDc8YIXPfDqJlyPo0SaOYfZQUob6
	cegrgyWniwgh6JKO/kosLdW7gWLUPD7oJY6NxbkMBu3ZO4/KLvph08txqG1mlJDYF8ks6/VaHDi
	3AAU9dzmwRjdxwt7lhAzLx9iVuhRUlv/mdU2R7gE+eXZH4q2hwd3toiSoBiRgplJnA9g1P+rkru
	JB/M1/HuLf0sLfc5JcGcaFuTmq9iVKmVxLwzfIoiwyESBKHXVo44yOCen3c4tm2onpsKiJUMJJn
	B78AIseeG8wZzPdtWMlTa4Y3Cs1mkSWuZlNM2pVe
X-Google-Smtp-Source: AGHT+IEE+OeQFiCCtU8Ee9YBkXu2dzO/ybh/igItlS4KQN0WO89uCSH/pwRn+/1oKh3T6c5poKcuYg==
X-Received: by 2002:a05:6a00:1305:b0:736:42a8:a742 with SMTP id d2e1a72fcca58-73dc14ccd73mr10174885b3a.11.1745132771298;
        Sun, 20 Apr 2025 00:06:11 -0700 (PDT)
Received: from localhost.localdomain ([2a11:3:200::40b3])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b0db12743afsm3742626a12.16.2025.04.20.00.05.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 20 Apr 2025 00:06:10 -0700 (PDT)
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
	duje.mihanovic@skole.hr
Cc: elder@riscstar.com,
	linux-pwm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	spacemit@lists.linux.dev,
	guodong@riscstar.com
Subject: [PATCH v2 6/6] riscv: defconfig: Enable PWM support for SpacemiT K1 SoC
Date: Sun, 20 Apr 2025 15:02:51 +0800
Message-ID: <20250420070251.378950-7-guodong@riscstar.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250420070251.378950-1-guodong@riscstar.com>
References: <20250420070251.378950-1-guodong@riscstar.com>
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
v2: Changed PWM_PXA from built-in to a loadable module (=m)

arch/riscv/configs/defconfig | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/riscv/configs/defconfig b/arch/riscv/configs/defconfig
index 4888529df1d8..8a8b77a0ac5a 100644
--- a/arch/riscv/configs/defconfig
+++ b/arch/riscv/configs/defconfig
@@ -259,6 +259,8 @@ CONFIG_RPMSG_CTRL=y
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


