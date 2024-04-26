Return-Path: <devicetree+bounces-62966-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id DFE9A8B34D3
	for <lists+devicetree@lfdr.de>; Fri, 26 Apr 2024 12:03:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 97662286703
	for <lists+devicetree@lfdr.de>; Fri, 26 Apr 2024 10:03:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 778E3142621;
	Fri, 26 Apr 2024 10:03:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="USJDmzH4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com [209.85.208.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7EFF01422B9
	for <devicetree@vger.kernel.org>; Fri, 26 Apr 2024 10:03:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714125791; cv=none; b=dT5qN//38t1Q9UeiMAhJXQiYQOT2FLDN++hORcjrSTYLvCaeJPkK4gGkV0ZqiEPVzhujKw1JzMyBYz/6GlWo0MdV2dAHv/XUhNnIoAWOaSInd2QYIAp1abLF591puk0YXTxKHfyYQMMNCQSYiJ8buK4Iw637DST/YDV2Lv8B8EE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714125791; c=relaxed/simple;
	bh=ryP7QOTYlztIm8nqNij3nVjhL1SYpQUIEozyw+/HVzI=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=bOlbXqM44I1OSO6iJBgWn3/2mmZOqH0N2Q7ZATsRMGjhfV5n0OPZPdDY5AVZiky0Li2Knnj2hTS++OxLr77FBVZGh1m7n4jKkN/Ry6X7F1L3Us1mdl0FDLLHTvqyDCYdIu8pwimkpp5t+yMPtBaoWrx/rqKrTvMg4p9gBzjMX+g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=USJDmzH4; arc=none smtp.client-ip=209.85.208.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f54.google.com with SMTP id 4fb4d7f45d1cf-572347c2c16so2459036a12.2
        for <devicetree@vger.kernel.org>; Fri, 26 Apr 2024 03:03:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1714125787; x=1714730587; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=NZroSo8iMfP3vk8OTX3L1wntYEviDHYNgM+pqywM7tQ=;
        b=USJDmzH4BOdZ6ax+cjfpiOwTi+m9lMHO0XVE7I3E6se0sNEPhlcPMxunC5fmMKIc4E
         PG3J6uqniXgd/OclOplVVK9YU28MQbRZJ5fzgYfdelfod3Q/axuJioQIvbd/YmCt4NeL
         AF2T1jlvKwtRct08LvN26GoorbOcMt2y++kfeSwO/WPFFJs42Yshec115ZIOgPHtgblg
         aWCLyA87IRKwwQMD4vDWhDNLeVotJYdfTcz+oSR4q1HcYSke0/Mn8HZyycfo7BrEp4js
         W3szRXeQDGt3TglDIta8ZpL87Rt0VIQfk6KoqIArUImMzgTFqqPDU1V80mVCQJms2gmv
         pVJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714125787; x=1714730587;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NZroSo8iMfP3vk8OTX3L1wntYEviDHYNgM+pqywM7tQ=;
        b=s2Yfd6fbw5M49pybbSYMZkP9ICkANx83QqtZ2+2wZxvgHHFzXp99GuDOAOyhVHOOaL
         ivTLrarvr88NFT+ryDzmNQPufjLQhi1hBTvONSer8PxbpxP4jrhbIQq2kv+IJLfTcx85
         elUU0m1Sn6iJCXLI1riSkbPD+SFztcBGZWmrLHmJbgK06FN48CYuiYAC1ldJZi1yk1gA
         CZz1Kq2eSZPVf0wjqPaX0ld8M2O1oTflsNookcj5skygjECpE2hdd6Dv6bgnQw4SAEKE
         +Pft78qFIYvU2g4zIDQ1gIOXD8IBNMOQxvbFzLc/dEMk+qY7vZ9Mm5yl1Tqr+qLbD42s
         Sveg==
X-Forwarded-Encrypted: i=1; AJvYcCXtl5H9IFBxG9wcrJ6j6YmWzn+jmFV5TEEBYH9mrJUTUpsi6tFfKomlU2dIf3I7XIUt7xUbSX5M9TVjC+tnvhXXyr+cWuXoiiV2Aw==
X-Gm-Message-State: AOJu0Yw9NLXug0RibjBuPdbEd+lwPuja+uxqiE3hI2+E1uSf49+6ObUj
	iwFa8tdBhX81lhpHfzx404ijPslTJ5vVqry9b3qyNuXGYfPOJXSef9ouMi8n+lo=
X-Google-Smtp-Source: AGHT+IFqZI2EX6TGMrhgOaiItUVC4QA3lp6lQjXgOmzliiIzZJRkthk8yLel6nW0qHdN359C7X9+Sg==
X-Received: by 2002:a17:906:16d7:b0:a58:86c0:1275 with SMTP id t23-20020a17090616d700b00a5886c01275mr1579547ejd.30.1714125786723;
        Fri, 26 Apr 2024 03:03:06 -0700 (PDT)
Received: from puffmais.c.googlers.com (8.239.204.35.bc.googleusercontent.com. [35.204.239.8])
        by smtp.gmail.com with ESMTPSA id r20-20020a170906705400b00a555ef55ab5sm10417289ejj.218.2024.04.26.03.03.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Apr 2024 03:03:06 -0700 (PDT)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Subject: [PATCH v2 0/5] HSI0 and HSI2 support for Google Tensor gs101
Date: Fri, 26 Apr 2024 11:03:03 +0100
Message-Id: <20240426-hsi0-gs101-v2-0-2157da8b63e3@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-B4-Tracking: v=1; b=H4sIANd7K2YC/23MQQ7CIBCF4as0sxYzQBXjynuYLqaFwiQGDBiia
 bi72LXL/yXv26C4zK7Addggu8qFU+yhDgMsgaJ3gm1vUKhGHJUWoTAKXyRKQWTMRZ/lvBJBPzy
 zW/m9Y/epd+DySvmz21X+1r9MlQKFWrS18wkXo/D24Eg5HVP2MLXWvrUuOfelAAAA
To: Peter Griffin <peter.griffin@linaro.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
 Krzysztof Kozlowski <krzk@kernel.org>, 
 Sylwester Nawrocki <s.nawrocki@samsung.com>, 
 Chanwoo Choi <cw00.choi@samsung.com>
Cc: Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Will McVicker <willmcvicker@google.com>, kernel-team@android.com, 
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
X-Mailer: b4 0.12.4

This patch series enables the HSI0 and HSI2 (high speed interfaces) for
gs101:

- HSI0 feeds the USB block and is a prerequisite to get USB working.
- HSI2 feeds PCIe and UFS

The parts added here have been verified to work OK without the
clk_ignore_unused kernel command line option.

Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
Changes in v2:
- My v1 just contained HSI0, but due due to changing similar areas in the
  code, I've also added Peter's HSI2 clock patches from
  https://lore.kernel.org/all/20240423205006.1785138-1-peter.griffin@linaro.org
  to this series so as to preempt any merge conflicts. Namely:
  * hsi2 bindings
  * hsi2 DT
  * hsi2 cmu clock driver
- drop patch 'dt-bindings: clock: google,gs101-clock: add HSI0 clock
  management unit' as already applied
- cometic updates to patch 4: 'clk: samsung: gs101: add support for
  cmu_hsi0' (macro name, a whitespace, subject line)
- Link to v1: https://lore.kernel.org/r/20240423-hsi0-gs101-v1-0-2c3ddb50c720@linaro.org

---
André Draszik (2):
      arm64: dts: exynos: gs101: enable cmu-hsi0 clock controller
      clk: samsung: gs101: add support for cmu_hsi0

Peter Griffin (3):
      dt-bindings: clock: google,gs101-clock: add HSI2 clock management unit
      arm64: dts: exynos: gs101: enable cmu-hsi2 clock controller
      clk: samsung: gs101: add support for cmu_hsi2

 .../bindings/clock/google,gs101-clock.yaml         |  26 +
 arch/arm64/boot/dts/exynos/google/gs101.dtsi       |  26 +
 drivers/clk/samsung/clk-gs101.c                    | 976 +++++++++++++++++++++
 include/dt-bindings/clock/google,gs101.h           |  62 ++
 4 files changed, 1090 insertions(+)
---
base-commit: bb7a2467e6beef44a80a17d45ebf2931e7631083
change-id: 20240423-hsi0-gs101-aa778361bfaa

Best regards,
-- 
André Draszik <andre.draszik@linaro.org>


