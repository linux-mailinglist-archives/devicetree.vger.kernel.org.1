Return-Path: <devicetree+bounces-211487-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B0C9B3F3A9
	for <lists+devicetree@lfdr.de>; Tue,  2 Sep 2025 06:24:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D6F1E1A8467B
	for <lists+devicetree@lfdr.de>; Tue,  2 Sep 2025 04:25:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2934B270551;
	Tue,  2 Sep 2025 04:24:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bytedance.com header.i=@bytedance.com header.b="HYCfyFCM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f178.google.com (mail-pf1-f178.google.com [209.85.210.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 360A61DD877
	for <devicetree@vger.kernel.org>; Tue,  2 Sep 2025 04:24:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756787086; cv=none; b=JyS6nWCTnNXQhqKhrpq0sjsSW5Xot1u/c9p5AMtf81ocSyBtOBfJdF3dg91Loe//TqykDXnWsTsVJyVIF3AuHTkiMJJG42p3sE3dsh8kTGM3NVXguzWzCWFZu1VTh6/3vZqrZp3vy+UUrS7m1IqPAB/jgla4cvbvEyCUk4E3Xuo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756787086; c=relaxed/simple;
	bh=M+Q9v9flGjdDETMSwkt4HMUVbn6KWMaG+8KVF9eW0eU=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=lr6GXiJholOcdB97FIY6dwPQwnuO1WvSgqwp/TI2NOghGe7YEL1Uz6vhZ18b3GFtr5hiax5o2cEnFN+jX6rH2eDUG5pZLOTtr8MvN8oenuWVip15ycqtPc3qhaDXMtBk5OiL/1XPg3v6kcknWdb8SFW9Vy+jcmpu5N7i1bh6bMU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=bytedance.com; spf=pass smtp.mailfrom=bytedance.com; dkim=pass (2048-bit key) header.d=bytedance.com header.i=@bytedance.com header.b=HYCfyFCM; arc=none smtp.client-ip=209.85.210.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=bytedance.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bytedance.com
Received: by mail-pf1-f178.google.com with SMTP id d2e1a72fcca58-77238cb3cbbso2509672b3a.0
        for <devicetree@vger.kernel.org>; Mon, 01 Sep 2025 21:24:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bytedance.com; s=google; t=1756787082; x=1757391882; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ELXyWcssNZnLWjFVF7tpe1q7V/V3XE3CzBOArXpJV3A=;
        b=HYCfyFCMvxB8HA64jgV9xk4YN1QUoZ+XYyurJSa9MXiIgRUTuGEnzHuqTvz+gI0/tk
         DvtkH6Pi4bvEQXU8T7z3ZHxncB16flF+VpTOzSAa/9Ela4TXe/Zf9xJiEo5HbQt0sjoe
         gAkN3VnizwrlUi4Z2Bo6cnkPbu3LK8o9sh27eZxHmWXi61g+bJFfokiRumWRyd7KTzag
         ooTH25JE69L11dl4kLwUIv55SmYZdSX7ZNEpB1/GwkU8KSQAE8H3OhP5/TxrFsjZc51w
         oI/9E7DTgXYSmbRt1p7zgOsqmk8amFothKDGA1uOnIdN29dEKMvO71Ub2DylI3ZlBkoC
         fXaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756787082; x=1757391882;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ELXyWcssNZnLWjFVF7tpe1q7V/V3XE3CzBOArXpJV3A=;
        b=tTF5hyfvboF7O7D+dvie6by0llh1mu5HFkPQPZ2URCyd8l4oyYTwAUY2Otp9h8Ijf4
         97m6mKJNaOJFRwmthIOeCOk3uMfVKedLH62DS4zfwHQ5iGlOPHKml1n2iuGmhBicawcV
         YdVZPVtOAhFhsNncMzcjppIlAIndibEy3uWnmq80AL0ZeTSkUutS1PAhuRcONm5G9YCw
         5Dmjs+ewp+EvanG+0EMrXGQVG9k3mB+T7puv6JxnbXN76RqI3VUj73rqb1Iian3ub0pB
         KAs85LQQPd90gtQnMOo4VljHNQb4TBV39yQBCVkXRZa+mI8jSwBz8B2icPccNqiWSfCA
         KlVw==
X-Gm-Message-State: AOJu0YwGXLWN33cKlTBgPZ0SoLLkMZxPlo7k2kB+fvA5CfENxHjZotBs
	fdcBi/vTshK/9eB3EGBZSq9PKgcAa/ZVwUbsjIb64je1NdVu12EhhZYP0stlx7FiLlhCmYV8gyl
	coPHP2LA=
X-Gm-Gg: ASbGnctAwhA2XeifzxDt/d6g3UrZjIIyg8SR8gHIsNm7IN2hRARsY3YBPipX/gjWL4B
	snQfbItzWG6CcRtgUd0yYUCSxclZE2jM0FzlASv9AARuhyEK1dV/Th1y6dnchlIaso7ejxZCiQ7
	a5Ei5bIu1pDblNnc/8LX0F0bSpvC5tfQpp5Clly8+SqRA5/YgWOVlKLCocrf4r70WMw+lQBPafT
	+lUbMMUjfAVFsWHbihhWwO4FqDYCBnsMW0Sk8WzgptOShz412WJP4ijsMrM8gmXfwB2Fypjh3wS
	lptuxcE1DHyMSDIim+stlkvaafdfQLVIDOw0FCAZIuHV3fuSPUumNAubZI4lJZUVd4atJWq/g7i
	xfyohjvwEgtB1E2UJLlR226bm0YAO2y8vJ+p+GIkKEF9xJk0NO3qL/HMbPe5PhUwxTvwflEVwoA
	mYhRiO8olU6ukaIUVlFVbOGA9vDRPQp9eL+SGr8Kb8mdrl8icK+wJJVA==
X-Google-Smtp-Source: AGHT+IGgZRRv1+lJvcGUzyqHqMqDpjPoMrsqY0dxwET91a5H7O0B+l/j1QflRtVZPNoA7S61H349iA==
X-Received: by 2002:a05:6a20:2589:b0:243:a91c:6561 with SMTP id adf61e73a8af0-243d6f04d71mr13318621637.30.1756787082321;
        Mon, 01 Sep 2025 21:24:42 -0700 (PDT)
Received: from J9GPGXL7NT.bytedance.net ([61.213.176.56])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-327e21d14a8sm12216706a91.2.2025.09.01.21.24.36
        (version=TLS1_3 cipher=TLS_CHACHA20_POLY1305_SHA256 bits=256/256);
        Mon, 01 Sep 2025 21:24:42 -0700 (PDT)
From: Xu Lu <luxu.kernel@bytedance.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	paul.walmsley@sifive.com,
	palmer@dabbelt.com,
	aou@eecs.berkeley.edu,
	alex@ghiti.fr,
	ajones@ventanamicro.com,
	brs@rivosinc.com
Cc: devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	apw@canonical.com,
	joe@perches.com,
	Xu Lu <luxu.kernel@bytedance.com>
Subject: [PATCH v2 0/4] riscv: Add Zalasr ISA extension support
Date: Tue,  2 Sep 2025 12:24:28 +0800
Message-Id: <20250902042432.78960-1-luxu.kernel@bytedance.com>
X-Mailer: git-send-email 2.39.5 (Apple Git-154)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This patch adds support for the Zalasr ISA extension, which supplies the
real load acquire/store release instructions.

The specification can be found here:
https://github.com/riscv/riscv-zalasr/blob/main/chapter2.adoc

This patch seires has been tested with ltp on Qemu with Brensan's zalasr
support patch[1].

Some false positive spacing error happens during patch checking. Thus I
CCed maintainers of checkpatch.pl as well.

[1] https://lore.kernel.org/all/CAGPSXwJEdtqW=nx71oufZp64nK6tK=0rytVEcz4F-gfvCOXk2w@mail.gmail.com/

v2:
 - Adjust the order of Zalasr and Zalrsc in dt-bindings. Thanks to 
Conor.

Xu Lu (4):
  riscv: add ISA extension parsing for Zalasr
  dt-bindings: riscv: Add Zalasr ISA extension description
  riscv: Instroduce Zalasr instructions
  riscv: Use Zalasr for smp_load_acquire/smp_store_release

 .../devicetree/bindings/riscv/extensions.yaml |  5 ++
 arch/riscv/include/asm/barrier.h              | 79 ++++++++++++++++---
 arch/riscv/include/asm/hwcap.h                |  1 +
 arch/riscv/include/asm/insn-def.h             | 79 +++++++++++++++++++
 arch/riscv/kernel/cpufeature.c                |  1 +
 5 files changed, 154 insertions(+), 11 deletions(-)

-- 
2.20.1


