Return-Path: <devicetree+bounces-92873-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 681C394EA8E
	for <lists+devicetree@lfdr.de>; Mon, 12 Aug 2024 12:12:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9A1451C20832
	for <lists+devicetree@lfdr.de>; Mon, 12 Aug 2024 10:12:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 51CA916FF44;
	Mon, 12 Aug 2024 10:11:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Gff+eA1w"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 90DBB16F0E3
	for <devicetree@vger.kernel.org>; Mon, 12 Aug 2024 10:11:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723457510; cv=none; b=sZmZhrEHvFiu89+MvYC7urN5T+aczbOl2nYhrPn0F8g544IaBO6f4HQ6qdmXNKe2F/QdQ5jTl/3CmPDwiCjDNesWz3h8Jpis4YWqFwVyhJ/jNwuf2BDyoYHw0hSmLlEsRREqn90S/ykUyWuD7CRPw9S1D90nX4FA8BiNd/ERNwc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723457510; c=relaxed/simple;
	bh=m2cmqaT6C+mGvKEQfj7wWBize+vtgUWJg8Qa/fOWQdc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=Oa8A4XATx9bo6pYBMoOFk7ScRkNsTz2HXr5UD+Q/1gqPP3T2hWv3g43v0j+B0u2yQKZnQLGDL1fHi2RMbXy5qbmdB9JN7nj5Bwz6Chs61WGE9eavXYrVhRXWy+iyKoGic3t1ssf89HXsj8/+zDJutQOzDkXhnSgEmVeR1Oa2En8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Gff+eA1w; arc=none smtp.client-ip=209.85.221.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f48.google.com with SMTP id ffacd0b85a97d-3684e8220f9so2296641f8f.1
        for <devicetree@vger.kernel.org>; Mon, 12 Aug 2024 03:11:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1723457507; x=1724062307; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nvpEtMzNwgLQsHOU1IH2oI0ii5uboohzCRPepS+87v8=;
        b=Gff+eA1w6w8aXUzh6qbK3DDiPPGnelUCXrkd0NpVXCCkD198pwq5xQ+8z6oFTuY9Gs
         x8XeS/NNZevtJhFW3zt83KmTykRwl9s6am8shpFSTG0hNCEwm5k9Gw2uPOaadLpGz1of
         A/42DyjfxLCYDRJ6e2tEEW4QMe6IFhXTz9tQKL5ac0xr4tYZzKVnJ+ppCVMkUXpsymF5
         7gi7ss92DaKemaO8bUu8GqsxfTsrhDC3SJP/7ya8voSFrYoaT0fB+AbbddKshm/kYKsa
         X61yC2yu6ijOh4qP7unGVJyjW2OeG5j3V65CMBFgFi5sG8PS8jc7YrqqobdeYWfJuIII
         bN/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723457507; x=1724062307;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nvpEtMzNwgLQsHOU1IH2oI0ii5uboohzCRPepS+87v8=;
        b=OYawILrvjEoJzeRrpYRyX2P/1lJCypeP8OtETxyTHHUioyemvHjSPAnFDqVmOrr4Oy
         Jt7X5A6rfLNiJqqHjFSxdbhFS2IBOc1RtL12FoyvVN/tS0OrxE2WdTT6/u+K76jDpyIi
         5c4i6DoFiT+eJMpOA8Dp5iZvFHgQIl1ivF8rwi3qz0xx4ZD5T9iPAR5VvlO4gWj0ujww
         sp2IYEQ5foSUARlBzeAbBVQ/CtFcC0hXCqwtnIcqcuu7mK+8/VG3PgBW2IT4dd4r3RYe
         2uwqW6ipH65RlfZUiyWARCT3u4Ff25EJtpkQEq51zzxRNUSECgBuZsL+egHCHpyWAxTH
         y1aA==
X-Forwarded-Encrypted: i=1; AJvYcCX6P62Eo91EpOprqhVLScddVU49/PoBPUXGoHiMrCXS07NkI4/eOPqUOq1W6ea4Uj5bQT58v4+uONju61tdU81u0c/gX/w9yxDeqg==
X-Gm-Message-State: AOJu0YwWgXqeFJsXqGMGVly7xfnYkOU9X3pRn1CQCiIXc6PnkAEyU/d5
	5yQhKuTPNGn9UpGALbHHy5BSZXwmpX+M8FxPkFgoACyIWrzkOjrjSyiKLtn9EnI=
X-Google-Smtp-Source: AGHT+IH4iqvXCwiL5wbllkxbQFV3ruQWIhABuXEd2V4n1ZK0WwErQuITBI207+meLwSbjZjCXqfrGQ==
X-Received: by 2002:a5d:6691:0:b0:368:6bb:f79e with SMTP id ffacd0b85a97d-36d6829eadbmr7029562f8f.4.1723457506761;
        Mon, 12 Aug 2024 03:11:46 -0700 (PDT)
Received: from krzk-bin.. ([178.197.215.209])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-36e4ebd2accsm7054591f8f.90.2024.08.12.03.11.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Aug 2024 03:11:46 -0700 (PDT)
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
Subject: Re: [PATCH v2 0/4] Cleanup Spreadtum/Unisoc ARM64 DT
Date: Mon, 12 Aug 2024 12:11:34 +0200
Message-ID: <172345744176.104566.7124190910415911626.b4-ty@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <cover.1722842066.git.stano.jakubek@gmail.com>
References: <cover.1722842066.git.stano.jakubek@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Mon, 05 Aug 2024 09:23:25 +0200, Stanislav Jakubek wrote:
> This series contains various minor cleanups for Spreadtum/Unisoc ARM64
> DeviceTrees. Also contains the 2nd patch from the SC2731 MFD cleanup series
> to reduce unnecessary noise and make these easier to apply.
> 
> Changes in V2:
>   - add 2nd patch from the SC2731 MFD cleanup series (1st patch was dropped
>     due to not being correct, dt-bindings will have to get fixed up instead)
>   - add Baolin's R-b
>   - rebase on next-20240805
> 
> [...]

No one took this patchset and it waits on the list for very long.

Applied, thanks!

[1/4] arm64: dts: sprd: rename SDHCI nodes to mmc
      https://git.kernel.org/krzk/linux-dt/c/0dcc203956537696e6f936eef886fde70e049f54
[2/4] arm64: dts: sprd: reorder clock-names after clocks
      https://git.kernel.org/krzk/linux-dt/c/e2e0d4554de7182f4843415343b8888dac8a4f72
[3/4] arm64: dts: sprd: move/add SPDX license to top of the file
      https://git.kernel.org/krzk/linux-dt/c/a4b3f197bcd17ea81605f3121a459dece448e877
[4/4] arm64: dts: sprd: sc2731: rename fuel gauge node to be generic
      https://git.kernel.org/krzk/linux-dt/c/0dcc203956537696e6f936eef886fde70e049f54

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

