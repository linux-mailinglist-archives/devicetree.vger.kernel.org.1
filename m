Return-Path: <devicetree+bounces-92872-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id B9C5394EA8C
	for <lists+devicetree@lfdr.de>; Mon, 12 Aug 2024 12:12:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 633FE1F2267E
	for <lists+devicetree@lfdr.de>; Mon, 12 Aug 2024 10:12:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AD72B16F0F0;
	Mon, 12 Aug 2024 10:11:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="aqsl2/W9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02E6D16EC14
	for <devicetree@vger.kernel.org>; Mon, 12 Aug 2024 10:11:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723457508; cv=none; b=NMrv69PpxUdl60YNaoVsdKwVaA5kn3eiTjZ3jM/najKX2wVBRXh7A6vO9rtevfTsrQuXMdO04aRZT5zWB7pYRNBujMJ2Sr/kCppUE9hkQLQcb5X8aFcXLsi9yP2Dx7/WHRr/CZsACGOWhder56xE4bZ/QsFyBfIGnpWKqdmlqwc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723457508; c=relaxed/simple;
	bh=GH0qSyUsEuHixyjX1afzz4BOkXsjAQB7lIohzlTTV9U=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=AkfukhToHfT90Lc+I88G9Xzi77kbRV9jP2Q+nMV5mn3gx18TIzBKtGTp32SbnZetz9rvf/4DhJzvygEZ4tAifbNJ6FXRyG1R352CeQ1OWqFtMr4lFohSR66X7JBgP+RPuMJFA2ykfgoqofb26N4wHtJh08u9OMUuUyLS74wc47I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=aqsl2/W9; arc=none smtp.client-ip=209.85.221.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f43.google.com with SMTP id ffacd0b85a97d-3686b285969so2274198f8f.0
        for <devicetree@vger.kernel.org>; Mon, 12 Aug 2024 03:11:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1723457505; x=1724062305; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Zyxj0Rbqan9SXYocuvBYL2hSYqLAPhyA0e68sVXE3Kk=;
        b=aqsl2/W9kD3vR/UVSo2jpuh/0HbGXY355r30JfWXKRhxYPmFlxacbqMAd4gzuWwa/H
         v7rhor26KFWtFaA9b6A6zoAuV3Yrm0HzkLjIo+LEel8KmJFDahs0N3/riyubnBEN0l3u
         tql8cp8GJGIPSYWwfzDRIjccTBRKIh6jjYATuvvmZEG4cyQq/qmsx4eCjW9RF1UJiXZi
         p34OPJxaAl+GSx9uZwsSisns/8cSDU+Tx4Lo9kfyHVWOLqMqgM8yAEe7NtmjbyEgSnvP
         rIXXyxFQii19AEO040CryRYJ8m/hfntebJUc+ITKPt6VNXuRz+EPkwjukUbraMfcVcR6
         OJ7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723457505; x=1724062305;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Zyxj0Rbqan9SXYocuvBYL2hSYqLAPhyA0e68sVXE3Kk=;
        b=BGv/7GRMMvz+DZpjZCtVl6kC0RUo0+PB8upmJz12igCHUB7jRY1MKMLFOJrgr4AtSO
         EizMf60Lnj8aRCxiy6D5bDcXyU9EuGo3OUcvz4KZVEiJP3EOFlbHWNC5O5u9Ab4qz6Ne
         4YbvELsElx7bkd3KH7Sc9nS7DoykNXv2h7ilpQpps6kHR+NorUON4KajIKQQu7i11Wwm
         Jggttllug6KCQekrY6pS0+V+pff4kKsSra8zLeEJmIQNE4PFZP3cCg4rtcJFBgIiSpDY
         EFCUWemZyOgE7Shev91FZD4A/GTgixmI1v3DdfRwO3InqDj0MotYer7w880afHjm5xkz
         qyBA==
X-Forwarded-Encrypted: i=1; AJvYcCUi5Gej1kHIPdRhrnMaWkph0yCvp2qIcuP8UPwTqGOieB6XlnKNFMgs2si89BQrBtCE1L/E7PxGpAHpNXKH9LMIA32TrlXg3hB6Kg==
X-Gm-Message-State: AOJu0YyLo6asMs3y4ogAW48BoHh9+OtN0MQU4zRxiwUD2QJk0Hy8In7P
	+Mob35M+SF24PQikGBZGGdRNlyaiW1L7tV+jt6IROEcQEc1mbuVMQZbY7aLXu98=
X-Google-Smtp-Source: AGHT+IHOG6MT/xRPaQQHgNz/hMoENdRCR0MnQu0IK7pxqkuUKM3V8HpAPRGkZjlhmtdNcAJRvnjekQ==
X-Received: by 2002:adf:fb46:0:b0:367:96d6:4c2d with SMTP id ffacd0b85a97d-36d5e4d2ad4mr5893870f8f.25.1723457505275;
        Mon, 12 Aug 2024 03:11:45 -0700 (PDT)
Received: from krzk-bin.. ([178.197.215.209])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-36e4ebd2accsm7054591f8f.90.2024.08.12.03.11.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Aug 2024 03:11:44 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Orson Zhai <orsonzhai@gmail.com>,
	Baolin Wang <baolin.wang@linux.alibaba.com>,
	Chunyan Zhang <zhang.lyra@gmail.com>,
	Stanislav Jakubek <stano.jakubek@gmail.com>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 0/3] Cleanup Spreadtum/Unisoc ARM64 DT
Date: Mon, 12 Aug 2024 12:11:33 +0200
Message-ID: <172345744174.104566.12535192989951342506.b4-ty@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <cover.1720112081.git.stano.jakubek@gmail.com>
References: <cover.1720112081.git.stano.jakubek@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Thu, 04 Jul 2024 19:41:18 +0200, Stanislav Jakubek wrote:
> This series contains various minor cleanups for Spreadtum/Unisoc ARM64
> DeviceTrees.
> 
> Stanislav Jakubek (3):
>   arm64: dts: sprd: rename SDHCI nodes to mmc
>   arm64: dts: sprd: reorder clock-names after clocks
>   arm64: dts: sprd: move/add SPDX license to top of the file
> 
> [...]

No one took this patch and it waits on the list for very long.

Applied, thanks!

[1/3] arm64: dts: sprd: rename SDHCI nodes to mmc
      (no commit info)
[2/3] arm64: dts: sprd: reorder clock-names after clocks
      https://git.kernel.org/krzk/linux-dt/c/e2e0d4554de7182f4843415343b8888dac8a4f72
[3/3] arm64: dts: sprd: move/add SPDX license to top of the file
      https://git.kernel.org/krzk/linux-dt/c/a4b3f197bcd17ea81605f3121a459dece448e877

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

