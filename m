Return-Path: <devicetree+bounces-50208-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 41FC087A579
	for <lists+devicetree@lfdr.de>; Wed, 13 Mar 2024 11:03:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D7D791F229E2
	for <lists+devicetree@lfdr.de>; Wed, 13 Mar 2024 10:03:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 14A0922615;
	Wed, 13 Mar 2024 10:03:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="c+3q6Co/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D83039AE1
	for <devicetree@vger.kernel.org>; Wed, 13 Mar 2024 10:03:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710324219; cv=none; b=YDuCLdQcf5O+borxxNc+yc6WN+LeOFs1+Vr8RbPFxpz1oHxKfi9abInnEHkNhcy6ygLmGRB3Orb8XgurzhNwmFkP1jnmBwSm8JfvMm04fsxjUPCffrfSaHDuUf9OaxPPyeMXllcvZA82UJAG8jxE74kaeEq8G5bnZoJvZbIGJTQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710324219; c=relaxed/simple;
	bh=HwGbsRac51u5IWwjbzw3ouLNHThjNvNYMLQfmsHJPTw=;
	h=References:From:To:Cc:Subject:Date:In-reply-to:Message-ID:
	 MIME-Version:Content-Type; b=aVfgfbzMGs3Bcp0JRQAaG2h4KNKQ5DMP/LBTaS5H55accuRBONuXCdvTlAbLMRoTursoYsRjMeQzTY58Zk5IBhOHN7yVmZwrXy21EUje9q98o4IzcU6OyIncPT6L1NeEbZR3zYmmLTNH2CvwLlWP06z7fLoEJwlj64tM8KsjNHQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=c+3q6Co/; arc=none smtp.client-ip=209.85.167.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-5131a9b3d5bso6327181e87.0
        for <devicetree@vger.kernel.org>; Wed, 13 Mar 2024 03:03:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1710324214; x=1710929014; darn=vger.kernel.org;
        h=mime-version:message-id:in-reply-to:date:subject:cc:to:from
         :user-agent:references:from:to:cc:subject:date:message-id:reply-to;
        bh=mFXVAdau/l1Yd43WSAm/Bs1i7fcklBkhvYYQSoayl5k=;
        b=c+3q6Co/wbznX+anh8rfvPYC66r6IvjVgBU3KB6dNF3sGAPLzgvD0B6S1DVGaFv2kt
         oKwuvj4+AYdUjYN4R5af/iUGIPJk7/U7Ay6N1eMYhBMt9x4SYJBLMpBThehM6us9Pofx
         Ser40VKcW8FLlDF9msgpnEYSQgPGxWNiAGLwAvntRcYtUVl95I2cdwDXBipPtkul4hVg
         OQbuCWMlY7gzZ6Otv398rYKr6BTrjVH66GO5P7liMrXamaM1z/bZ5vzHbm/AXtWmRoaV
         33ETuXAm52a4kY43fFwDONnEYqPPVmACN1OM6SQoLpH5Q39Qif+/tCCD0cS5GeC9e7fT
         b5QA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710324214; x=1710929014;
        h=mime-version:message-id:in-reply-to:date:subject:cc:to:from
         :user-agent:references:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mFXVAdau/l1Yd43WSAm/Bs1i7fcklBkhvYYQSoayl5k=;
        b=eb2xJSTKIHwcjh4C9DHX4Xbbfjsgk8B6M/TxK48iwJxuUZoB7vT0rssqIXyCAofJOP
         Vh3n0zvbMYmehs/wySSY5xcKvVyhI7c44IZshhs9wQ/S7mvUxTAvTvZPUSr7uw51v7Cd
         bHwh1UirJI6HcjS5hr5as4fcSzI+K9c2IDLYUlq4ivCKneL8gi4KAyq/LrfYT3o+T9gR
         RUTbNFbubvQXc8PgKQfd/uacd0Tsz7618GTT2Yb27qfYUUgn2z2iZTnyk/72mFDaxXvF
         T2/8DXtmYE9obZvLBsZHje6fNGdpC+t3yZq2MqK4LZopQ6eJGnior12QUH6R7guAL5hu
         MNxw==
X-Forwarded-Encrypted: i=1; AJvYcCVW2weqATFfFKzquHRAxxzl3ecU+lrpB7lfmYQbb/ujU2RV6cE0TBinuPmg5bDFGgtKeqt6iiO9365lJK04VgOWT5gtVmB0vXY5Tw==
X-Gm-Message-State: AOJu0YzyWFT7O1OSdRFYpaJWyWVWY/nL5SE94aO+U6tpu+YRb4Kt3nyw
	Mh5gV4xFN+AQD4AfGmNk1iWAH6jfvzGIx7n9kbrOJN2yIXk9Q8ut4k5v3b8IBfc=
X-Google-Smtp-Source: AGHT+IFt0tL9EYUI8h3Qhh2fon51usuWluueHQ7dWS5cclJS8uIzb9fifp0Y06P8l3gUr4jEE5P/5g==
X-Received: by 2002:a05:6512:3d06:b0:513:4afa:a719 with SMTP id d6-20020a0565123d0600b005134afaa719mr2343299lfv.59.1710324213904;
        Wed, 13 Mar 2024 03:03:33 -0700 (PDT)
Received: from localhost ([2a01:e0a:3c5:5fb1:5791:c3f6:da5e:acb8])
        by smtp.gmail.com with ESMTPSA id j15-20020a05600c190f00b0041312855081sm1828615wmq.5.2024.03.13.03.03.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Mar 2024 03:03:33 -0700 (PDT)
References: <87v8a64f3d.wl-kuninori.morimoto.gx@renesas.com>
 <87ttpq4f2c.wl-kuninori.morimoto.gx@renesas.com>
 <e7121fbc-c814-4153-9f17-82ad5de13e64@sirena.org.uk>
 <87a5n46xjk.wl-kuninori.morimoto.gx@renesas.com>
 <7248b107-db87-4409-b93c-f65035d0a6b4@sirena.org.uk>
 <1jo7bje6da.fsf@starbuckisacylon.baylibre.com>
 <b9de4fd1-ef4a-4c30-b3cf-e36931be90f1@sirena.org.uk>
User-agent: mu4e 1.10.8; emacs 29.2
From: Jerome Brunet <jbrunet@baylibre.com>
To: Mark Brown <broonie@kernel.org>
Cc: Jerome Brunet <jbrunet@baylibre.com>, Kuninori Morimoto
 <kuninori.morimoto.gx@renesas.com>, Pierre-Louis Bossart
 <pierre-louis.bossart@linux.intel.com>, Bard Liao
 <yung-chuan.liao@linux.intel.com>, bard.liao@intel.com, Conor Dooley
 <conor+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 alsa-devel@alsa-project.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v7 1/5] ASoC: makes CPU/Codec channel connection map
 more generic
Date: Wed, 13 Mar 2024 10:36:41 +0100
In-reply-to: <b9de4fd1-ef4a-4c30-b3cf-e36931be90f1@sirena.org.uk>
Message-ID: <1jh6haih3f.fsf@starbuckisacylon.baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain


On Tue 12 Mar 2024 at 17:06, Mark Brown <broonie@kernel.org> wrote:

> [[PGP Signed Part:Undecided]]
> On Tue, Mar 12, 2024 at 05:29:25PM +0100, Jerome Brunet wrote:
>
>> Mark, I suspect the boards you have (like the libretech Alta/Solitude or
>> the kvim3 maybe) will show the same thing.
>
> I don't have the kvim3 but I can try with the other two (modulo pain
> with u-boot), it'll be tomorrow now though.

I've check the other boards from same SoC family (g12 and sm1) for the
same kernel build:

https://linux.kernelci.org/test/job/mainline/branch/master/kernel/v6.8-rc7-250-g137e0ec05aeb/plan/baseline/

* Only the u200 is failing. The others devices of the same family are fine.
* The u200 is the only one being test with gcc-10 / defconfig + debug
* The others have been tested with clang-16 / defconfig + CONFIG_ARM64_64K_PAGES

I've checked locally with gcc-13 on the vim3l (sm1 - s905x3)
* OK with defconfig
* Problem reproduced with defconfig + debug fragment from kCI - Observations:
  * Kernel is extremely fat (150+ MB)
  * Boot process incredibly slow.

Fragment is here:
https://storage.kernelci.org/mainline/master/v6.8-rc7-250-g137e0ec05aeb/arm64/defconfig+debug/gcc-10/config/kernelci.config

I'll continue to check but this is apparently related to the options
turned on by the debug fragment. Maybe it could be interesting to check
another non-intel SoC manufacturer using DPCM with this fragment ?
(another device relying on cleared ch_maps - Renesas and/or MTK maybe ?)

-- 
Jerome

