Return-Path: <devicetree+bounces-73541-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CEC888FFF17
	for <lists+devicetree@lfdr.de>; Fri,  7 Jun 2024 11:18:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id A030AB20FB1
	for <lists+devicetree@lfdr.de>; Fri,  7 Jun 2024 09:18:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B54C115357A;
	Fri,  7 Jun 2024 09:18:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="IFUjB55B"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CEC9A525D
	for <devicetree@vger.kernel.org>; Fri,  7 Jun 2024 09:18:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717751926; cv=none; b=aGiznmrJkHM0HAEPJYuEvS11lqujyd51h6BaCXGKM7ldFTpQuuRCcF4sna6Vh8/mE5/g8lb8O/iO8vBwMb08QIEyXZcxiiWy7NDYPzcYS6Fg3GQGkOrfh9VsswhEa32egOl5ViA4bC3npCnLY21A9S/y0sE7y6+WhUkqaC/Py5w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717751926; c=relaxed/simple;
	bh=QmYVPjiMxKlMx4Wi3ggC4rjBK0tNb+Mg6c81XQQdyNU=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=Kzi+8IeUc7Xp79VCkAoOfHLVWI1fv2mJska5hwU0tXzYqFBW97+wV47Yuybod4uXeDQdYb80j9C/NOI7zrpIjloy9A/ffhhDetC7YC8LK05VYs9WavyIxh3/quFPpuVDcpNycMz1dwqGkkzQPzwhEpeqoPTTIIzIl/yqO2Jirmg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=IFUjB55B; arc=none smtp.client-ip=209.85.221.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-35f06861ae6so295633f8f.2
        for <devicetree@vger.kernel.org>; Fri, 07 Jun 2024 02:18:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1717751923; x=1718356723; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Lc1anBJkTUjNMfHbklFybf/ydEv1AmoaOOCKkC7EYg0=;
        b=IFUjB55BZoCAxmTUUeNl0PGcrwJ1YzfDSqywS+2xIHs7bVppVZciftUUizLkhIBl0w
         TpHf2Gbm4Hq7dDZy0QDXY3a5Mqd3yGPpo/G8TbDGmYiXns0zxEpJJR+TI9F2AhZx45Zg
         nJngJRndRg47WZNGd+2ds85MLroiYHszKSmQ0kSgLfUavRk1zPPOA9N+TD9Nmbrq3nkD
         9cIOJ2PDo2V/0lR6wF6zP3DnPsm9OHgv1ngklQQiO+lIiNELBuVQTqCJ6+w8qX74i/nB
         KIpNFbdQUyGJ0JC64bK7iSzlH9dSn7IFYppUN1mDPr54+5kctsccOKpnHXHY2Ec8D3ks
         4gug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717751923; x=1718356723;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Lc1anBJkTUjNMfHbklFybf/ydEv1AmoaOOCKkC7EYg0=;
        b=i1cNYL4Px/T/trtYWBWrmcLc1h/4SvT1st+JbTqoENO46BqYO+1i9u0KzPSDHJPz1l
         ZadEKLl75BdG/pwYzEncnT8g/oRvOzzIo6tBqGAR92fNvhwVxVTvGqnJ1qi4ZinxqMzS
         jP2YvLEANS+5mC1K8djycapJVa8UQczcrsFkaf7368jkBFMVz+R8EfnLZNmN3UV+IYjh
         vhLe+PB6uSgvoZwNAOsaAXXffNTTurqNOyJq2bn6jl9OXoIpPo6lO7wKBsaX22MS7pdG
         JWmtTtvSeRHzWLza6OpSl9mqa6ZDTJtDxPMWZYbeOTD9MWQZK6i9IFygqdIQtu0ys1JO
         W8fQ==
X-Gm-Message-State: AOJu0Yxe2G5ydIaTxui8yE1lKP0ksHEKtagpJQf++/4Djx7kj4+H4qr/
	vgvJoXObnsdrT4yc5Bcncz7Sf7tdyIHi9sk2nrKd1E1pijhtfMZ3nGMPBD3KKNQ=
X-Google-Smtp-Source: AGHT+IE0A5LvzXh/9B0zg4BZupJ8VQsgR+oICmqezeGO79jFKoxLUaz0F68c7mLS+i9vKZRr2GtwdA==
X-Received: by 2002:a05:6000:e01:b0:35d:a567:4dda with SMTP id ffacd0b85a97d-35efedf2a13mr1356563f8f.49.1717751923108;
        Fri, 07 Jun 2024 02:18:43 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-35ef5fc169fsm3573066f8f.94.2024.06.07.02.18.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 07 Jun 2024 02:18:42 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
To: Kevin Hilman <khilman@baylibre.com>, 
 Jerome Brunet <jbrunet@baylibre.com>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org
In-Reply-To: <20240606-topic-amlogic-upstream-bindings-fixes-dts-v1-0-62e812729541@linaro.org>
References: <20240606-topic-amlogic-upstream-bindings-fixes-dts-v1-0-62e812729541@linaro.org>
Subject: Re: (subset) [PATCH 00/12] arm64: meson: bunch of DT fixes, take 4
 (final one ??)
Message-Id: <171775192240.1064805.3116303977641331374.b4-ty@linaro.org>
Date: Fri, 07 Jun 2024 11:18:42 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.13.0

Hi,

On Thu, 06 Jun 2024 10:48:07 +0200, Neil Armstrong wrote:
> Along with the following:
> - https://lore.kernel.org/all/20240422-t7-reset-v2-1-cb82271d3296@amlogic.com/
> - https://lore.kernel.org/all/20240513224552.800153-1-jan.dakinevich@salutedevices.com/
> - https://lore.kernel.org/all/20240605-topic-amlogic-upstream-bindings-fixes-power-domains-spifc-v1-1-380f29ba4a16@linaro.org/
> - https://lore.kernel.org/all/20240605-topic-amlogic-upstream-bindings-convert-spdif-receiver-v1-1-262465adbac2@linaro.org/
> - https://lore.kernel.org/all/20240605-topic-amlogic-upstream-bindings-fixes-power-domains-mmc-v1-1-4acbb8cc2626@linaro.org/
> - https://lore.kernel.org/all/20240605-topic-amlogic-upstream-bindings-fixes-power-domains-nvmem-v1-1-ef6f10c86a63@linaro.org/
> - https://lore.kernel.org/all/20240605-topic-amlogic-upstream-bindings-fixes-power-domains-phy-v1-1-c819b0ecd8c8@linaro.org/
> - https://lore.kernel.org/all/20240605-topic-amlogic-upstream-bindings-fixes-power-domains-rng-v1-1-0a55a7ba55e4@linaro.org/
> - https://lore.kernel.org/all/20240605-topic-amlogic-upstream-bindings-fixes-audio-widgets-v1-1-65bd7cc2e09b@linaro.org/
> - https://lore.kernel.org/all/20240605-topic-amlogic-upstream-bindings-fixes-power-domains-sardac-v1-1-40a8de6baa59@linaro.org/
> - https://lore.kernel.org/all/20240606-topic-amlogic-upstream-bindings-convert-g12a-tohdmitx-v2-1-70d44fa30790@linaro.org/
> 
> [...]

Thanks, Applied to https://git.kernel.org/pub/scm/linux/kernel/git/amlogic/linux.git (v6.11/arm64-dt)

[01/12] arm64: dts: amlogic: meson-g12b-bananapi: remove invalid fan on wrong pwm_cd controller
        https://git.kernel.org/amlogic/c/1095ad0e92175d19cb7f0b5256af300c921a2d63
[02/12] arm64: dts: amlogic: move ao_pinctrl into aobus
        https://git.kernel.org/amlogic/c/cf42ea27fd7f087b43da27b709267211e7e0e8c4
[04/12] arm64: dts: amlogic: sm1: fix tdm audio-controller clock order
        https://git.kernel.org/amlogic/c/2478d7bee215cdf6a3a581239d12a17407e30771
[05/12] arm64: dts: amlogic: sm1: fix tdm controllers compatible
        https://git.kernel.org/amlogic/c/94befcb819d47b155554997ccfac52354d1b4380
[06/12] arm64: dts: amlogic: g12a-u200: drop invalid sound-dai-cells
        https://git.kernel.org/amlogic/c/4b7df533684032233f65ea1157ec94215ab3f3da
[07/12] arm64: dts: amlogic: g12a-u200: add missing AVDD-supply to acodec
        https://git.kernel.org/amlogic/c/5dab35f183b30c40fb7fb99015811edde96f90d6
[08/12] arm64: dts: amlogic: axg: fix tdm audio-controller clock order
        https://git.kernel.org/amlogic/c/0cb2a3b0d10a3938df546913d738bca121667455
[09/12] arm64: dts: amlogic: c3: use correct compatible for gpio_intc node
        https://git.kernel.org/amlogic/c/e5d4d006a8c5504dfebce7f090ddfb75444491ba
[10/12] arm64: dts: amlogic: a1: use correct node name for mmc controller
        https://git.kernel.org/amlogic/c/ea99706a438f19cf352242ffabab46bbc76a03d3
[11/12] arm64: dts: amlogic: a1: drop the invalid reset-name for usb@fe004400
        https://git.kernel.org/amlogic/c/edc15ee0e43948568fa5380c9147feb9a767ae67
[12/12] arm64: dts: amlogic: gxbb-odroidc2: fix invalid reset-gpio property
        https://git.kernel.org/amlogic/c/e822ce43968daf9da4368617d2c948c22ccf93f9

These changes has been applied on the intermediate git tree [1].

The v6.11/arm64-dt branch will then be sent via a formal Pull Request to the Linux SoC maintainers
for inclusion in their intermediate git branches in order to be sent to Linus during
the next merge window, or sooner if it's a set of fixes.

In the cases of fixes, those will be merged in the current release candidate
kernel and as soon they appear on the Linux master branch they will be
backported to the previous Stable and Long-Stable kernels [2].

The intermediate git branches are merged daily in the linux-next tree [3],
people are encouraged testing these pre-release kernels and report issues on the
relevant mailing-lists.

If problems are discovered on those changes, please submit a signed-off-by revert
patch followed by a corrective changeset.

[1] https://git.kernel.org/pub/scm/linux/kernel/git/amlogic/linux.git
[2] https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git
[3] https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git

-- 
Neil


