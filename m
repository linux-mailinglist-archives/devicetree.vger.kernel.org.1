Return-Path: <devicetree+bounces-207777-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 09FD0B30C56
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 05:11:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 00FBEAC81E9
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 03:08:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6A701283CA2;
	Fri, 22 Aug 2025 03:07:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="QP+P3Ho7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f169.google.com (mail-pl1-f169.google.com [209.85.214.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C97EA28152F
	for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 03:07:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755832035; cv=none; b=lhqe/GWr9si8NNpJY3Bnn5Q/YTxwIF7TRW0UujkAyirZ8qMimwQGYYEFD3ehCaPrcL4c04IsA3/potkI5B6ove/7+9nNvCAjABaXxgq3ckYzwdFJ4iysk98HNl80aC4kdEecUIOR9R+q5p4N0KEC6tEzqQZN1XZUqqgGPeNozYE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755832035; c=relaxed/simple;
	bh=BCHnUU58o8kcbkrtBnovBDjIBR3GZtD2vocIDuWis4M=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=UGToWyh0sUBkTHNT2GPlhKCdJ81oZ/RbpwODgB1U4cTaU/iZwzQlHauAnuA9amhKo9Jcmyw4Q6C4s1wBgfwfubFWu6+gyx8Cr7rc8QDhqjPq/1kb7S+km9OgvfZSWzKKEnYdg4lL/RTwED5E5NmMuebSWRHnev5s0krko4z7wsk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=QP+P3Ho7; arc=none smtp.client-ip=209.85.214.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-pl1-f169.google.com with SMTP id d9443c01a7336-2445827be70so17287175ad.3
        for <devicetree@vger.kernel.org>; Thu, 21 Aug 2025 20:07:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1755832033; x=1756436833; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=quTPMYj7s5QwSm0woBLSQz7z4VVYjT+IYu8GwKKHe24=;
        b=QP+P3Ho7hFeya4G8Rx7/0rmic6N+Qw9YOHrPmI+nuFu6OREE1k3zNjMiqky6AQZcmB
         Te56XtNuaYlEVY0SM8SemfgLpN71SUwucTaD7AXMUeZwgUgSeaR8AUGQJNAJGJA0NgZw
         kXxuVYEtCJZI96eyXmBsgv9FRKYo2JCTfRU0LS+egJV+cGTGUeoxiQzX853ANdaUKTil
         D3SWcNrv2J763LiszEB8TY5VoxJ4kaMtmucWUHHVOYh6yD0/P9e2+2t/DAUUzN8oTZX4
         7hvCXrQuYRv7UJ3Jfm4el993I53OV/C6quUtit6fHFubFTc2MGbsmI60c70wKQmICgMZ
         OUSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755832033; x=1756436833;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=quTPMYj7s5QwSm0woBLSQz7z4VVYjT+IYu8GwKKHe24=;
        b=cVbL6xObHNdVBueApb1lNz1JxKvGdG+dQLhaTs1TMWvgmBTpue1LC9vnsWsXBxUecK
         bRrJ7giUd0m+Kb9CPMgn6/FCzuBFhOY+l1IDuODblhLF8QfmrnxUCIFKI/IbdmXxw8uO
         wQduhN5VeovDG3Siqsydpn+uJea9Es6E7yRfY337smhrG0+OiCDmERhNE1PfTUdjLnqI
         M6BDWdhJ0dpcx2nmiRv1BX8TSWuY2OSs5MlTl1x79WCIcnSvh3zlo1KzzxnEEvtPrHac
         SQUvK2lw1DbRAB6H/KRh5v+4SHYWfYAL8AB+kL+F37ekWqvw7kTDJhLp1auiq+IK4cjr
         NCMw==
X-Forwarded-Encrypted: i=1; AJvYcCVZ9DnXwniNKqOa2rAG7gf+nMw2g0TZb7Bpsme5P2PpKLsbiNSMa6p5/UiKEWKNbyp6reiExdloxaf1@vger.kernel.org
X-Gm-Message-State: AOJu0YzKpDkY2h0c85QXPstvrjrVsrG5fdRK9dUvl//2XCFZ/SRx7VYS
	LnOMMlAc/FbK6DSSOhUWevT2OSF0B3+9w6dhvvMnkYxDwSl98/Gs/FxSTNI//ZN1Z7o=
X-Gm-Gg: ASbGncsifdL7BcovXOhhdZctT97+BEiEs2z2K6QyjcpLeeTf+RFxGjGfCOn+6mISqE6
	irXm5jq6Gw2FtkYR9fnC45+8LunEndJvaMsuzlbdwAk4ULppq4QdSvO/DOOUAYWs1dE6by+7NAZ
	8ZiKnoX5CX1Exi3P04ehCje4K33bKYEI8T+76pKyJdDMZs5WYbfFIdlexUSfUVssmm7tu64dClq
	wV7Oku9QEM9hk8+zd/aZltHjuoqCby68hjdEoSkRFrh9gTPdVyWzmWWx94UxLBQbZHxqTvSVNHz
	1/g0B+eE9iLV9fOh0yx5OXhhNaQLQD0OwM+zPsYufVZKLZlXrSEYQ5rzV60SS2vT7WIChKxZgI7
	TuiJUAB4q/QP7qyfJQVrCaUITcz1NRiedag==
X-Google-Smtp-Source: AGHT+IGxr6BvRlq9gDlCAE/XGtF9F2t4Uze1UvterPKqOgW+FIUz6fdAVotEWXje2mAfPXpMbJnhUA==
X-Received: by 2002:a17:902:ce91:b0:234:d292:be95 with SMTP id d9443c01a7336-2462eeea5f4mr23986195ad.42.1755832033132;
        Thu, 21 Aug 2025 20:07:13 -0700 (PDT)
Received: from [127.0.1.1] ([222.71.237.178])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b47769afc1bsm2756777a12.19.2025.08.21.20.07.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Aug 2025 20:07:12 -0700 (PDT)
From: Guodong Xu <guodong@riscstar.com>
Date: Fri, 22 Aug 2025 11:06:34 +0800
Subject: [PATCH v5 8/8] riscv: defconfig: Enable MMP_PDMA support for
 SpacemiT K1 SoC
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250822-working_dma_0701_v2-v5-8-f5c0eda734cc@riscstar.com>
References: <20250822-working_dma_0701_v2-v5-0-f5c0eda734cc@riscstar.com>
In-Reply-To: <20250822-working_dma_0701_v2-v5-0-f5c0eda734cc@riscstar.com>
To: Vinod Koul <vkoul@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Yixun Lan <dlan@gentoo.org>, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Paul Walmsley <paul.walmsley@sifive.com>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
 Alexandre Ghiti <alex@ghiti.fr>, duje@dujemihanovic.xyz
Cc: Alex Elder <elder@riscstar.com>, Vivian Wang <wangruikang@iscas.ac.cn>, 
 dmaengine@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org, 
 spacemit@lists.linux.dev, Guodong Xu <guodong@riscstar.com>, 
 Troy Mitchell <troy.mitchell@linux.spacemit.com>
X-Mailer: b4 0.14.2

Enable CONFIG_MMP_PDMA in the riscv defconfig for SpacemiT K1 SoC boards.

Signed-off-by: Guodong Xu <guodong@riscstar.com>
---
v5: No change.
v4: No change.
v3: No change.
v2: Rebased. Part of the modification in v1 is now in this patch:
     - "riscv: defconfig: run savedefconfig to reorder it"
        , which has been merged into riscv/linux.git (for-next)
     - Link: https://git.kernel.org/riscv/c/d958097bdf88
---
 arch/riscv/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/riscv/configs/defconfig b/arch/riscv/configs/defconfig
index f25394d088d0d3cbee41fa9fb553c71e495036fd..b9ef2da15fb22f08bdb5ee5d1bba9f6eed49ff97 100644
--- a/arch/riscv/configs/defconfig
+++ b/arch/riscv/configs/defconfig
@@ -241,6 +241,7 @@ CONFIG_RTC_DRV_SUN6I=y
 CONFIG_DMADEVICES=y
 CONFIG_DMA_SUN6I=m
 CONFIG_DW_AXI_DMAC=y
+CONFIG_MMP_PDMA=m
 CONFIG_VIRTIO_PCI=y
 CONFIG_VIRTIO_BALLOON=y
 CONFIG_VIRTIO_INPUT=y

-- 
2.43.0


