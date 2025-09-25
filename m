Return-Path: <devicetree+bounces-221289-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id AF401B9E471
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 11:21:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 35AD217615A
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 09:21:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 523CD2E7F2F;
	Thu, 25 Sep 2025 09:21:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="lzq15rjT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f182.google.com (mail-pl1-f182.google.com [209.85.214.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CEEDB2DE71A
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 09:21:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758792083; cv=none; b=YgiLB+SzbEqeCyKtTIlzHJZFqEGdmf11OoQRswLaQn8o58NGcp+0nEFcNn5g0eDVr19cr4suv6T1ISGQiggSlLeXH68zvZxctQweHaNNYZnYpsmohqxGmdZ2z4vhC9rCk7ht2UFQPcNheKiYxbTnF4tPiqDosNTQzfJ3m1Q188U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758792083; c=relaxed/simple;
	bh=jUgn42r5a8mNNBXp0C9lNyB4hr+HTa+eeMoWV7f//J8=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=VKwDryh7RR4YSHNkBz3nF6Akl3s2+89XAFv/zQQoLVHWAZ3zVJuTanwG0x6szz524B7xrg3I46a7BEYqlbgpCrNdqktnaq6QsWg+79L8apmEZLEq7POudjjgdosa/rTORXh+ONAr+SunY7PoHmSwn8GkABvih7KJRtTmEpR2O1g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=lzq15rjT; arc=none smtp.client-ip=209.85.214.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f182.google.com with SMTP id d9443c01a7336-279e2554c8fso7347395ad.2
        for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 02:21:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758792081; x=1759396881; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=jUgn42r5a8mNNBXp0C9lNyB4hr+HTa+eeMoWV7f//J8=;
        b=lzq15rjTodpavZM6PxRaiAzce2nvWNVMxUwAdXCUxt4xCPpRdSxfGvREwNzS2YsxZ4
         /UIGFgzGF3YgC3JBp0AR5fql3a7GJHPtHq8jSwNKN0kXISPEUM5qzwh4O1WgrLWagfns
         hDtldiukKc91WRlOblv8nqlkx03j/M2yCEIKBqVeLk2CFomuvRORdf8a6jfbqctugMkG
         THIZMCNPyzwl/lFILtsLKPAqB4b8qPlsk20qzQyEiSAh6iLvEFInKYrhgdZRW1uHJlxA
         gXiIniq/luVHLum0jpNLETTjBSgK1lwzLQ00eLVfIvJE76x5WGWZ/wGVIzL/0rL+CoD4
         BQNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758792081; x=1759396881;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jUgn42r5a8mNNBXp0C9lNyB4hr+HTa+eeMoWV7f//J8=;
        b=jH/BLpNwIaOR75EjcDjk8z8coCKr/4VRPyeqiqqXYLiPmNMFwS+EsmowUxN/U7NxzW
         wKMsdZtMpjuZysIz2UelU2pi7RiNCg5V8ZYC6dU3tKfxeaV3DPP80DFvJnOuyOtLQfbV
         c2V2WQyqVAE13BZSjqZEsZL1lWF0uhhpiTye16MSGfEy7Iu6o3q8E5IvTrFzwh5KYdW2
         gJaqTdFWXfGBUUrqwzKyI/7whQtelY7MxM+WJtP3GQocRoDYNVITaVI3FgVQUnNL/vOz
         387Qb7qHcrGd6lnl15PnvO01ReX5omsHpsKi1RNXyDeDrNryw8zGVYm617vy7OQwyOv5
         YIzg==
X-Gm-Message-State: AOJu0YwISpwfMR4FbCwCBs90j147IGFJ3/OI5+byYkg5MRWbqcGzQQul
	TJmOhjC8YM85tb2I0f+hOZcDf3quI/KMP/H/1zzr5Ot4luzs0D8/Gm+v
X-Gm-Gg: ASbGncu19g6yIJWm2S8ygdTjZt49GRzxBnF9idfgg/Ux6HG3SgFeZsXjH6LcmQFI/8I
	UZk9vPk+vF3Vcv3j0W/mNQy4QBH6+RycIgrcPLQxbiY+tM/2jeNyMYJmmFEEU6hcly0+Thayxg3
	zmQ3k4Qd6lE93VCOXqseSmIOrh4CXqG5JyXBMAJE5VhECmaaiXadm/mv1i8q7JI8EShkju2+Px8
	FHYr/drSjSyWEHifxSat6ZfOMKLRV3maj2SZqh51jXDcvyAwgiTF6G044WoaPVCftEe/u8VIyCm
	KyESxilRgjtEYQhH5igi8fG9smEUq06LUO9rLmr0HPmIu6idx/yedyOi+9d8/JOeZ30jFJIUu6Q
	aH0pW0QsRgDp2ZOZ776DPN/xAU7NwRv1aKiVnOFc7JA==
X-Google-Smtp-Source: AGHT+IFnE3x/HOJtgYIO/KfGDkE6OL9Yv5CTm7GbsosRRNTd2+C/2E/tc4yHiROdLQZc06HYbTLMNQ==
X-Received: by 2002:a17:903:384b:b0:260:df70:f753 with SMTP id d9443c01a7336-27ed4a7eadamr32620015ad.38.1758792081013;
        Thu, 25 Sep 2025 02:21:21 -0700 (PDT)
Received: from localhost.localdomain ([120.229.16.62])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-27ed66cdfafsm18251855ad.30.2025.09.25.02.21.16
        (version=TLS1_3 cipher=TLS_CHACHA20_POLY1305_SHA256 bits=256/256);
        Thu, 25 Sep 2025 02:21:20 -0700 (PDT)
From: Liangbin Lian <jjm2473@gmail.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	heiko@sntech.de,
	quentin.schulz@cherry.de,
	kever.yang@rock-chips.com,
	naoki@radxa.com,
	honyuenkwun@gmail.com,
	inindev@gmail.com,
	ivan8215145640@gmail.com,
	neil.armstrong@linaro.org,
	mani@kernel.org,
	dsimic@manjaro.org,
	pbrobinson@gmail.com,
	alchark@gmail.com,
	didi.debian@cknow.org,
	jjm2473@gmail.com,
	jbx6244@gmail.com
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 0/3] arm64: dts: rockchip: introduce LinkEase EasePi R1
Date: Thu, 25 Sep 2025 17:20:34 +0800
Message-ID: <20250925092037.13582-1-jjm2473@gmail.com>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

LinkEase EasePi R1 [1] is a high-performance mini router.

Specification:
- Rockchip RK3568
- 2GB/4GB LPDDR4 RAM
- 16GB on-board eMMC
- 1x M.2 key for 2280 NVMe (PCIe 3.0)
- 1x USB 3.0 Type-A
- 1x USB 2.0 Type-C (for USB flashing)
- 2x 1000 Base-T (native, RTL8211F)
- 2x 2500 Base-T (PCIe, RTL8125B)
- 1x HDMI 2.0 Output
- 12v DC Jack
- 1x Power key connected to PMIC
- 2x LEDs (one static power supplied, one GPIO controlled)

[1] https://doc.linkease.com/zh/guide/easepi-r1/hardware.html

Signed-off-by: Liangbin Lian <jjm2473@gmail.com>
---
Changes in v2:
- Change deprecated "rockchip,system-power-controller" to "system-power-controller"
- Link to v1: https://lore.kernel.org/r/20250925055906.83375-1-jjm2473@gmail.com/

---

