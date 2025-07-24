Return-Path: <devicetree+bounces-199381-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BDB1EB1073E
	for <lists+devicetree@lfdr.de>; Thu, 24 Jul 2025 12:02:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7B9D5AC7F1D
	for <lists+devicetree@lfdr.de>; Thu, 24 Jul 2025 10:01:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CE93A25524C;
	Thu, 24 Jul 2025 10:02:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="V/vPM8Rb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA97B256C89
	for <devicetree@vger.kernel.org>; Thu, 24 Jul 2025 10:02:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753351335; cv=none; b=o6oldyKQviSYQ9wQ3hp4pftxZ3T0H2cyhL6d38qKg6NGqGPuLCWEGIzQm4C5uPu5LXg/tiQ9YmzD8ERalCOP9gNmjTgGJavpizbVuESj7lpVT/SvV+RBxBGegRD+C0o/xO11faHmAK7U1CH779/XsNloDhdsolM+c6adIUEZaoU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753351335; c=relaxed/simple;
	bh=KWyqMGEUBT6sPlAYGN8ahqpDMLDIFJaLyGGzuzUqjK0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=RMgV6ubadGP3AycdSDDc11wIYVvBQqIleAOWrE0Ee9kTl4/gPysDJmWQlfwW8HHhvphpXsvWX51DWPFVPK9wBMXYpavd3OacL6yAsX8v9ZmM9r/xVbH9TOZNuFSPOlskLf7rgzdQqYki7KEPTU7oHBL4Zb0vJdBvUj44fFclKw8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=V/vPM8Rb; arc=none smtp.client-ip=209.85.167.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-553b3316160so798940e87.2
        for <devicetree@vger.kernel.org>; Thu, 24 Jul 2025 03:02:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1753351332; x=1753956132; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KWyqMGEUBT6sPlAYGN8ahqpDMLDIFJaLyGGzuzUqjK0=;
        b=V/vPM8Rb1cbKAv+XnKhAJOmIjhQO4tB4NYqtbMsIQL7++wi1r1fweGMRbtHgsBo/Fm
         zYyyOLRDr8faufcUrwibj8Spaz00uUBCsmQ+qSzgCbek0JhsssboISKnyBfMp/3C/YPn
         njKEMYZwFYlJuwY7yQU3VSUy3nc9MBGEtQqBI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753351332; x=1753956132;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KWyqMGEUBT6sPlAYGN8ahqpDMLDIFJaLyGGzuzUqjK0=;
        b=DhFgOpJ+8w739AoSKgyUbZlaqWh9NtYqK/Hx/Hzkkyz+4AH5MNDpsA+LG65tuaMcKZ
         UyMVCgB6DOYs6MRXGWNJBmxGtAFDN4EiYlwdKinBDVF3CLNeslXZ35ew5bksJIicv23e
         cpbipKoVOk7Hj7LElQGdIUyl4bCzggthL0kiAIc8gvajZy+M1nym1A4nG3bYli4SLNUB
         WztxaIkxJtzB8Tk0YZzB1W962kQvgP6ep24sC9jxzajcRnIP9QlQ/q0K0qCqNGCjhLo6
         70wMlidU0HhWotn+2fCxzr3XnLy/5p/3qLmHt1soElmnBMS9SsDD+G1a1Bd9BkvaK9rt
         a38w==
X-Forwarded-Encrypted: i=1; AJvYcCX7b1vMYjUZXKsN2nc1cj7CT71n7+7vYf4LO9psSfAIUtSAd5CISGURdNCXmOqzgPNLc0PATJ8vlFRF@vger.kernel.org
X-Gm-Message-State: AOJu0YwZOIWmHtqWnKrbXPt6DF7iF+JJGgsvINoBDDjJO0I439B3mn5g
	paeNuWJlUTherzlWArPjdJC2nyK6pTCj86cjgVQ3FtmXUa8tBVL+9hm3mG/qBkco6pABOGGo01S
	WWXSBzDahFQGQWbLPXaBL6UjVmJCgGkUz7RLAXqjE
X-Gm-Gg: ASbGncsJxFrggNo6Yu/VJDAVU/xggAx9W1qMQlX4Ra0uZS2BWH989tT0QJnXcOl/7Vd
	71dKz6s0bcKV1xjvHiIe+6LasS1i920sTkLJYJwms7sIDqAKcyiCrVMT/8dpnLJWqskwie2ovlL
	nCnESyLGoIO+V/rdKskrYz0CXCYYVMWK/4d9QveJzuY3S0U+bLPsGl75phd0sfMCq+7Z1Tyuvwq
	lUkXtXQfYR+gJurzahUz95+3jUUq43nTt8=
X-Google-Smtp-Source: AGHT+IESUy0W5d8sN6DOxHQC9VYSfHke7csoBbtn4oiuNMESAIIOLfvRI9EoIcZqqzK+oAmlqA1BtKODIpYwZl1nk3k=
X-Received: by 2002:a05:6512:b06:b0:55a:4b25:b33b with SMTP id
 2adb3069b0e04-55a513879f4mr2300615e87.15.1753351331794; Thu, 24 Jul 2025
 03:02:11 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250724083914.61351-1-angelogioacchino.delregno@collabora.com> <20250724083914.61351-36-angelogioacchino.delregno@collabora.com>
In-Reply-To: <20250724083914.61351-36-angelogioacchino.delregno@collabora.com>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Thu, 24 Jul 2025 18:02:00 +0800
X-Gm-Features: Ac12FXxwmEtskk9yW4VS4U_sXrqKN7rxCsdJIjp0VaKRTEqFbUzw8Bs63nu9Nbw
Message-ID: <CAGXv+5Gar47gRZoT6DUDpPRabjzoSE==Zi0wrR76A7g-SJL1=A@mail.gmail.com>
Subject: Re: [PATCH 35/38] arm64: dts: mediatek: mt8195-cherry: Move
 VBAT-supply to Tomato R1/R2
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: linux-mediatek@lists.infradead.org, robh@kernel.org, 
	herbert@gondor.apana.org.au, davem@davemloft.net, krzk+dt@kernel.org, 
	conor+dt@kernel.org, chunkuang.hu@kernel.org, p.zabel@pengutronix.de, 
	airlied@gmail.com, simona@ffwll.ch, maarten.lankhorst@linux.intel.com, 
	mripard@kernel.org, tzimmermann@suse.de, jassisinghbrar@gmail.com, 
	mchehab@kernel.org, matthias.bgg@gmail.com, chunfeng.yun@mediatek.com, 
	vkoul@kernel.org, kishon@kernel.org, sean.wang@kernel.org, 
	linus.walleij@linaro.org, lgirdwood@gmail.com, broonie@kernel.org, 
	andersson@kernel.org, mathieu.poirier@linaro.org, daniel.lezcano@linaro.org, 
	tglx@linutronix.de, atenart@kernel.org, jitao.shi@mediatek.com, 
	ck.hu@mediatek.com, houlong.wei@mediatek.com, 
	kyrie.wu@mediatek.corp-partner.google.com, andy.teng@mediatek.com, 
	tinghan.shen@mediatek.com, jiaxin.yu@mediatek.com, shane.chien@mediatek.com, 
	olivia.wen@mediatek.com, granquet@baylibre.com, eugen.hristev@linaro.org, 
	arnd@arndb.de, sam.shih@mediatek.com, jieyy.yang@mediatek.com, 
	frank-w@public-files.de, mwalle@kernel.org, fparent@baylibre.com, 
	linux-crypto@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	linux-media@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-phy@lists.infradead.org, linux-gpio@vger.kernel.org, 
	linux-remoteproc@vger.kernel.org, linux-sound@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Jul 24, 2025 at 4:41=E2=80=AFPM AngeloGioacchino Del Regno
<angelogioacchino.delregno@collabora.com> wrote:
>
> Move the VBAT supply to mt8195-cherry-tomato-{r1,r2} as this power
> supply is named like that only for the Realtek RT5682i codec.
>
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@coll=
abora.com>

Reviewed-by: Chen-Yu Tsai <wenst@chromium.org>

