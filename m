Return-Path: <devicetree+bounces-105675-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CD8469876E6
	for <lists+devicetree@lfdr.de>; Thu, 26 Sep 2024 17:49:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 921B22870EA
	for <lists+devicetree@lfdr.de>; Thu, 26 Sep 2024 15:49:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8A7701531C2;
	Thu, 26 Sep 2024 15:49:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="BKqJIntv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f176.google.com (mail-yb1-f176.google.com [209.85.219.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0870653368
	for <devicetree@vger.kernel.org>; Thu, 26 Sep 2024 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727365795; cv=none; b=sRQcmVN4pAsIj6HQ9Z7GHHWJgSqrrLseK03elkdYOf83DgScTciwSY4DZ5fmV4ZxER4besNEV/HShWS5YQreD11+jeMxAa5kZr8nzbQ4X8vOUAzV+eg0eJF5W1vq/fKG/va9yoZyTtx3CQ5Z17iKlCALS+HdzTXvR+jEjoc5vJ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727365795; c=relaxed/simple;
	bh=w14sq6XUk0SsNzgK6mSSVRdxP/9svZ9tMx+UgCkG04M=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=dZSLnfY40kekac/ujHcK19GCinb6R1IFc8Ees6iP5VrT9p9m47cxDJbv1VzK1P2XGIZaY9uamneB2gA82th7vK5thxCz+AI3GUtqL7vabsZUOk3V+XTunBFbFaJKLKbJQ9Mjpgthv6JkqvHxZ0wHGT3OtL09+dmX7aPF8GWM5y4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=BKqJIntv; arc=none smtp.client-ip=209.85.219.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f176.google.com with SMTP id 3f1490d57ef6-e1d0e1bffc8so1164756276.1
        for <devicetree@vger.kernel.org>; Thu, 26 Sep 2024 08:49:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1727365793; x=1727970593; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=q/C6W+i03PB1ReYtpl5/qyhBiUgWpLGUr9VE1GQJcEg=;
        b=BKqJIntvXVws/7R07F/j1FCDPj6qOhKIpd2KmHUBJcuxaUWEVjjEo5dgDkZDgZCv+V
         2cO5x/OUEKRKZ2Vu0b0jaqAMA4donXKuj0/fFGC71k4IcRAy1mH0oP/5lIJOW+CZo3ad
         V34y+/BkWraJHHk9qr6uRr+JIN342aBSHSFw+zBvQ6WHqyRyK2om3lQUryeCrQd2MZwt
         EdKkSQr+jB4M/JRiIayMxqjJnuGlCOq5XKURAFFvMsfjj4qZidLlKNOlXwrBHtk0/HIW
         uy9lOl/tDUs7pWlcJBFNRtU4+nSidi5Hs4ylXld0uclgPazBRrgrUFGM1E3ZSxtbSsWO
         lVIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727365793; x=1727970593;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=q/C6W+i03PB1ReYtpl5/qyhBiUgWpLGUr9VE1GQJcEg=;
        b=wzGS1zHBpdMGEDGTV8DurAj9ggVJNYojMQXPq6U+5BuqH6FUx5Flc1dH2ICnLbsCSZ
         drcEAc5o8TVCyFPmfe4F/+45nQJceeMjECKIFE2+XkaT4LuaYwtr1rVAj12sNMB1ApRs
         4oJinFPo2w7vhXPOuhSeFU3vl4Ii0FS8l8aLSEINan2ee4RBOnC28w8aKmUZoJLQdwzm
         aLMcEzxkesB2Nv3yT67h45Z1ORKv/jWRhKXGpkGjdsij5M3izM6MiSCA7gOIdUXMdSgC
         u4bHzXsgWRKj7Qn/naS0RGdMHkMtK2N2V3myR7U1DhtCd1lH5H4W/JGDettteE86mssJ
         fosQ==
X-Forwarded-Encrypted: i=1; AJvYcCWadbRzebdsDsy4fzjaIEgw1CGb5E8KGMxirhnWzKSt0xz4SEkpSHBZJtUyhqVHEtOWAx82A5hpBon2@vger.kernel.org
X-Gm-Message-State: AOJu0YyiarX9/tM5Bl7wma3momd7nqh4PcvguqKO6M1x+6ypt9dMP8e4
	rPbnRRtpucRLfbB8dsyLnufOZ4NQmpj56zHxEdd2hrwVP4KdcjJnGRjz0YIRyClttLJaVkxTTPX
	Paew8y+R/XE8kJhXEv4qVqyemTolSuBF/8Is89g==
X-Google-Smtp-Source: AGHT+IFqqGJreMRNFfnsSuthz64Gd/N9P25tYQ9qT6LFx4CM65znxx9CuUuNf/VeLj3Ht2p1xv5M9snqdM0j4M8TDec=
X-Received: by 2002:a05:6902:2583:b0:e25:e2f5:38ce with SMTP id
 3f1490d57ef6-e25e2f539e1mr696097276.37.1727365793039; Thu, 26 Sep 2024
 08:49:53 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240925093807.1026949-1-wenst@chromium.org>
In-Reply-To: <20240925093807.1026949-1-wenst@chromium.org>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Thu, 26 Sep 2024 17:49:16 +0200
Message-ID: <CAPDyKFqoqppLipOG1vK-8oU_6cMdZ3DV5Gxqhs5-+7+cQJ6=qQ@mail.gmail.com>
Subject: Re: [PATCH v8 0/3] Add of_regulator_get_optional() and Fix MTK Power
 Domain Driver
To: Chen-Yu Tsai <wenst@chromium.org>, Mark Brown <broonie@kernel.org>, 
	Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org, 
	Douglas Anderson <dianders@chromium.org>, Johan Hovold <johan@kernel.org>, 
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>, Pablo Sun <pablo.sun@mediatek.com>, 
	Macpaul Lin <macpaul.lin@mediatek.com>
Content-Type: text/plain; charset="UTF-8"

On Wed, 25 Sept 2024 at 11:38, Chen-Yu Tsai <wenst@chromium.org> wrote:
>
> Hi folks,
>
> This series is split off from my "DT hardware prober" series [1].
>
> Changes since v7:
> - Added stub versions for of_regulator_get_optional() for !CONFIG_OF
>   and !CONFIG_REGULATOR
> - Added new patches for devres version and converting MTK pmdomain
>   driver
>
> At ELCE, Sebastian told me about his recent work on adding regulator
> supply support to the Rockchip power domain driver [2], how the MediaTek
> driver has been using the existing devm_regulator_get() API and
> reassigning different device nodes to the device doing the lookup, and
> how the new of_regulator_get_optional() is the proper fit for this.
>
> Patch 1 adds a new of_regulator_get_optional() function to look up
> regulator supplies using device tree nodes.
>
> Patch 2 adds a devres version of the aforementioned function at
> Sebastian's request for the two power domain drivers.
>
> Patch 3 converts the MediaTek power domain driver to use function.
>
>
> Each of the latter two patches depend on the previous one at build time.
> Mark, would it be possible for you to put the two regulator patches
> on an immutable branch / tag? Otherwise we could have Ulf ack the
> pmdomain patch and merge it through your tree. Sebastian was fine
> with converting the rockchip pmdomain some time later.

Thanks for providing some context!

In my opinion I would prefer an immutable branch/tag of the regulator
core changes, so I can carry the pmdomain changes for MTK through my
pmdomain tree, but also because I would prefer if Sebastian could make
the corresponding conversion for the Rockchip pmdomain driver. If this
can get queued soon, there is really no need to have an intermediate
step for Rockchip, I think.

Does it make sense - or do you prefer another way forward?

[...]

Kind regards
Uffe

