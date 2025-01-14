Return-Path: <devicetree+bounces-138523-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C9BFA10E2C
	for <lists+devicetree@lfdr.de>; Tue, 14 Jan 2025 18:50:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 50F8318883B2
	for <lists+devicetree@lfdr.de>; Tue, 14 Jan 2025 17:50:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9286A1CAA7A;
	Tue, 14 Jan 2025 17:50:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="I8XFZjoI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3283232456
	for <devicetree@vger.kernel.org>; Tue, 14 Jan 2025 17:50:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736877029; cv=none; b=n6AoROouKI4oAs22jts9iCCVLNEYHBr4n4qH+0GjLKohXnKr+4XRF8qmGDg/PmHi1gTWaTW4y3jwGLDyYEfxe/OLiZzFwcbcgUQAGciheleNkpMraA3An2wFL/TutW+OxtkM/6+aR4qT5OvZ5mrkwdmszsyN65zs/KZfKbdckrI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736877029; c=relaxed/simple;
	bh=uzwTioenZg5xf7H0vQHKLQdODMzc7DOYT5bZwjqjYWU=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=gdKzBcXoLg8jJhyYA8iclvAnPhCW6296uqF3rDngp24mmb/J9/BHreiFzuanZrUNVgezaEWw6CK8MwTb1n7Nx486cUMyPmwkWInU37KAK6HLP7wHL50MEUIf6LKyjhqYgg6yWSmEoChXR1eVv6efiEYC4hyuojaxqnbzprrSuvM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=I8XFZjoI; arc=none smtp.client-ip=209.85.221.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-3863494591bso3093603f8f.1
        for <devicetree@vger.kernel.org>; Tue, 14 Jan 2025 09:50:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1736877025; x=1737481825; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:user-agent
         :references:in-reply-to:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=r7kyhS+AN7mALzi6gxFmcRFltHcX9PkTUE9xxZswSTo=;
        b=I8XFZjoItrHbQ1kezhXcKw/mkvx0ui/2soKJ7q3dnShNnfzujBYdBG3V+Lls9djnlZ
         x+eWjTsqbaQ/MXjQfwAJvVKnUTWF4SabF61DSJQ5rJEjO8QScZRR80o7+F72gRYpJ2E/
         a7eRwJobjo9kbr8WUSGAeFROfNxczmPsR8ecrC2+poe9Kjcnu3FVua0Rx6JQEFGXqBYu
         pv/RSsZMOogZsSWlC4vpWsHDAMs+C0HCuL7aPINiazZEdXzi4S8ozwWKiEy9lSKc6U+0
         wYhu6flNXVWiMuo+YA8GooJKT1YM/0MtHMcV6ahc9io030mANyLNNGW6vbvGm11PONZ3
         evQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736877025; x=1737481825;
        h=content-transfer-encoding:mime-version:message-id:date:user-agent
         :references:in-reply-to:subject:cc:to:from:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=r7kyhS+AN7mALzi6gxFmcRFltHcX9PkTUE9xxZswSTo=;
        b=cEeEOsofCfhet+kR2DuA10vp0Jz5p4RSAYupEyVl1D62ua4hA0GeVZJlX1uGRJSpRv
         mMW23rw7y2I3WGC66GfE32wG9jGgVuGuswxUVWxbLMJ7rHIvKN4YrKZKkGoDfa+3PxSe
         lrmWVuHihsSaNEdptRpBzDE+8WsOiOtA5Pw4YkFQHI+o/s96StqeL0n1poJji+SyUP4/
         KMRDBp3ZZ0qYFFnfrXfN4zqjlNR3t8hGnlJ29koe51oS2B3a1idy4zy6kLfB5OTfH+/z
         NuAEArCYelqs99SSQVVf2xkxbkcS6h0VSxbQYzMYxutrqUMGtRnHYrBjmcv224hvNzh7
         qGOw==
X-Forwarded-Encrypted: i=1; AJvYcCXZ5beVx70bxDZz05xFyfpL3HP3YWpai30fdvj/ZXgJO/MCF9RzskphwOGaPXlgegIXdaeIPyiCumc1@vger.kernel.org
X-Gm-Message-State: AOJu0Ywz6q10eeClJsqJ8XKcRTAPsxATZhyXohSP6BfnvvoOgXY5K0/p
	rTOTR24cmOSjCLsCzdcPaA74gu0NQbC/iiiW1RrrrhEBmMkiGYgoOFA/OtEM044=
X-Gm-Gg: ASbGnctWyeUe9osmTOpzny7EC5jA5aMAzzMz/d270IFpflL0jTtYE/kEJZIhY52pp7j
	m9zLpPJUgDtxdoO0bFsjxBnaYTqIYrNGkyi1EGdb+Wa4Pl2WpzrvdP347oiy6gVpte2BebNKVGC
	EWAxnQoP6GrABpbHcRiuPJ5rTzScHOSkHXdaMBk7I1+h1Uo+ySa5b9aFC3j/Fr2Ug8LOCTI7WFe
	Ulpo1i/SHHRGVD1SfEL+0TyxQW49ufEhuTgAqJAczC0ALFvrk0hfjsS
X-Google-Smtp-Source: AGHT+IGniaS5vKpw5UThOug4qTnk81tkkU2MITchcBy/hQw5sKSXoGOKno5PQ4PZG23+YM4eJ9Ctww==
X-Received: by 2002:a05:6000:1547:b0:386:391e:bc75 with SMTP id ffacd0b85a97d-38a872debb2mr24343563f8f.16.1736877025045;
        Tue, 14 Jan 2025 09:50:25 -0800 (PST)
Received: from localhost ([2a01:e0a:3c5:5fb1:317c:3d93:b7d4:96cd])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38a8e4c23dcsm15192221f8f.101.2025.01.14.09.50.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Jan 2025 09:50:24 -0800 (PST)
From: Jerome Brunet <jbrunet@baylibre.com>
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc: ao.xu@amlogic.com,  Neil Armstrong <neil.armstrong@linaro.org>,  Maarten
 Lankhorst <maarten.lankhorst@linux.intel.com>,  Maxime Ripard
 <mripard@kernel.org>,  Thomas Zimmermann <tzimmermann@suse.de>,  David
 Airlie <airlied@gmail.com>,  Simona Vetter <simona@ffwll.ch>,  Rob Herring
 <robh@kernel.org>,  Krzysztof Kozlowski <krzk+dt@kernel.org>,  Conor
 Dooley <conor+dt@kernel.org>,  Kevin Hilman <khilman@baylibre.com>,
  dri-devel@lists.freedesktop.org,  linux-amlogic@lists.infradead.org,
  devicetree@vger.kernel.org,  linux-arm-kernel@lists.infradead.org,
  linux-kernel@vger.kernel.org
Subject: Re: [PATCH 00/11] Subject: [PATCH 00/11] Add DRM support for
 Amlogic S4
In-Reply-To: <CAFBinCDG2in4ZZAp2LXnz8bgiZoPL3G_c9+aCo9+Ort2W-tFCA@mail.gmail.com>
	(Martin Blumenstingl's message of "Sun, 12 Jan 2025 23:44:52 +0100")
References: <20250110-drm-s4-v1-0-cbc2d5edaae8@amlogic.com>
	<CAFBinCDG2in4ZZAp2LXnz8bgiZoPL3G_c9+aCo9+Ort2W-tFCA@mail.gmail.com>
User-Agent: mu4e 1.12.7; emacs 29.4
Date: Tue, 14 Jan 2025 18:50:23 +0100
Message-ID: <1jwmex5lpc.fsf@starbuckisacylon.baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

On Sun 12 Jan 2025 at 23:44, Martin Blumenstingl <martin.blumenstingl@googl=
email.com> wrote:

> Hello,
>
> On Fri, Jan 10, 2025 at 6:39=E2=80=AFAM Ao Xu via B4 Relay
> <devnull+ao.xu.amlogic.com@kernel.org> wrote:
>>
>> This patch series adds DRM support for the Amlogic S4-series SoCs.
>> Compared to the Amlogic G12-series, the S4-series introduces the followi=
ng changes:
> Thanks for your patches. With this mail I'll try to summarize my
> understanding of the situation with the drm/meson driver as I'm not
> sure how familiar you are with previous discussions.
>
>> 1 The S4-series splits the HIU into three separate components: `sys_ctrl=
`, `pwr_ctrl`, and `clk_ctrl`.
>>   As a result, VENC and VCLK drivers are updated with S4-specific compat=
ible strings to accommodate these changes.
> Jerome has already commented on patch 3/11 that this mixes in too many
> IP blocks into one driver.
> This is not a new situation, the existing code is doing exactly the same.
>
> Jerome has previously sent a series which started "an effort to remove
> the use HHI syscon" [0] from the drm/meson hdmi driver.
> In the same mail he further notes: "[the patchset] stops short of
> making any controversial DT changes. To decouple the HDMI
> phy driver and main DRM driver, allowing the PHY to get hold of its
> registers, I believe a DT ABI break is inevitable. Ideally the
> register region of the PHY within the HHI should provided, not the
> whole HHI. That's pain for another day ..."
>
> For now I'm assuming you're familiar with device-tree ABI.
> If not then please let us know so we can elaborate further on this.
>
> My own notes for meson_dw_hdmi.c are:
> - we should not program HHI_HDMI_CLK_CNTL directly but go through CCF
> (common clock framework) instead (we should already have the driver
> for this in place)
> - we should not program HHI_MEM_PD_REG0 directly but go through the
> genpd/pmdomain framework (we should already have the driver for this
> in place)
> - for the HDMI PHY registers: on Meson8/8b/8m2 (those were 32-bit SoCs
> in case you're not familiar with them, they predate GXBB/GXL/...) I
> wrote a PHY driver (which is already upstream:
> drivers/phy/amlogic/phy-meson8-hdmi-tx.c) as that made most sense to
> me
>
> Then there's meson_venc.c which has two writes to HHI_GCLK_MPEG2.
> I think those should go through CCF instead of directly accessing this re=
gister.
>
> Also there's the VDAC registers in meson_encoder_cvbs.c:
> I think Neil suggested at one point to make it a PHY driver. I even
> started working on this (if you're curious: see [0] and [1]).
> DT ABI backwards compatibility is also a concern here.
>
> And finally there's the video clock tree programming in meson_vclk.c.
> My understanding here is that video PLL settings are very sensitive
> and require fine-tuning according to the desired output clock.
> Since it's a bunch of clocks I'd say that direct programming of the
> clock registers should be avoided and we need to go through CCF as
> well.
> But to me those register values are all magic (as I am not aware of
> any documentation that's available to me which describes how to
> determine the correct PLL register values - otherside the standard
> en/m/n/frac/lock and reset bits).
>
> I'm not saying that all of my thoughts are correct and immediately
> need to be put into code.
> Think of them more as an explanation to Jerome's reaction.
>
> I think what we need next is a discussion on how to move forward with
> device-tree ABI for new SoCs.
> Neil, Jerome: I'd like to hear your feedback on this.

I completely agree with your description of the problem, that and
Krzysztof's remark on patch 6. This is not new with this series indeed,
so it does not introduce new problems really but it compounds the
existing ones.

Addressing those issues, if we want to, will get more difficult as more
support is added for sure.

>
>> 2 The S4-series secures access to HDMITX DWC and TOP registers,
>>   requiring modifications to the driver to handle this new access method.

Regmap buses are made for those cases where the registers are the same,
but accessed differently. There is an example in the patchset referenced by
Martin, to handle GXL and G12 diff.

> This info should go into patch 1/11 to explain why the g12a compatible
> string cannot be used as fallback.
>
>
> Best regards,
> Martin
>
>
> [0] https://github.com/xdarklight/linux/commit/36e698edc25dc698a0d57b729a=
7a4587fafc0987
> [1] https://github.com/xdarklight/linux/commit/824b792fdbd2d3c0b71b21e110=
5eca0aaad8daa6

--=20
Jerome

