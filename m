Return-Path: <devicetree+bounces-150661-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id A1C05A4329F
	for <lists+devicetree@lfdr.de>; Tue, 25 Feb 2025 02:49:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 30B4118867C9
	for <lists+devicetree@lfdr.de>; Tue, 25 Feb 2025 01:49:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A2E72537E9;
	Tue, 25 Feb 2025 01:49:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="VCZbxp4n"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f177.google.com (mail-lj1-f177.google.com [209.85.208.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6E7F101F2
	for <devicetree@vger.kernel.org>; Tue, 25 Feb 2025 01:49:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740448173; cv=none; b=n+oSJ++lBhqGvhGrA0OjGqurO8F/nkgMl+l2T05rlj8I8IMZyxT02OrE00bSJfaPewNC3ZaNfVgJwxmznriL/u4/ZOYCwGv1nXlRTkE/Q+VS3FtQ72JmsbE3eZallHyBaghQ/AkZLYkxgUhSeVpo09OuptPV3h+wHUHPuI2g7Yw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740448173; c=relaxed/simple;
	bh=71ALkwh4lV1GOQf6XwUxLBOPX9rYbG8qB4YRKiZ0PHc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ZEaLXVuMW7554vNClXWGu5FYQSiM7V3hUYfC2IvxhRf1LgANAwnDKQYLLS0nnHljf9pDdF7YXguIk6+74EvxvgZwU4uCrLDXBLGfydlsnMjd9W31blc5qIcZf/TC00HgUEtzg/9pkuq9/D86BVnWg8ZSCSGoQKMaK7Ooo3sDEQ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=VCZbxp4n; arc=none smtp.client-ip=209.85.208.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lj1-f177.google.com with SMTP id 38308e7fff4ca-30737db1ab1so39639351fa.1
        for <devicetree@vger.kernel.org>; Mon, 24 Feb 2025 17:49:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1740448169; x=1741052969; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5BIxNZpAxXmgtUZVoY5Vf5YilI6JIk11YmgayAzmSTM=;
        b=VCZbxp4nuh0fq6th7DvCHf1WwHfBgmuyF905XGPdgPNhk3BXcG0xnyJLINFLByNtnP
         sCsz2ZmJw33V1kDOu8hggPc4wXri7pshkNC8rusIBWsiGaO9zsRZ0+Opl0hQhMC2fq+2
         E+HHGS94hc1JWnluvKcXnTnGgUDh02A2aZ/Mg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740448169; x=1741052969;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5BIxNZpAxXmgtUZVoY5Vf5YilI6JIk11YmgayAzmSTM=;
        b=wD1hNSQOOMx1ww69hgWa5bAYbWBONigi2ICozj38+8jqS2sMkJxftNWBfMt8W211u8
         jjECGacxaEPi2A9rYGfSUIW+ymKVzMPu4IxSzRGHLGdINjgLgxustmGZM0vl2HviRtDq
         xSBJgnCycyactvB5bdffVKmFNspN37yExoTKZ/pIygpB3JbbJ2Sl6mLVf/M6Hf+QwUFY
         eS12c/5kdDJMyOcdRkG7j9v5yT4cHjqO7wZqeLH7Q0dWeLY/TvYN6UrFaTxqlla5kxmp
         7F/xZ3WcaiV8D0XIVZl/dDTF/pfM9xpBMVF77A1vFUJOSyrJrO2W3x55noXrsWf6Jdtg
         qo1w==
X-Forwarded-Encrypted: i=1; AJvYcCWv73D45uUmJf5FGAO26xq3qaSVF0qzDd5OxM3HaTbSzFwSQupoPs9eQ6xxdaiez36hCTHbSC8XuViv@vger.kernel.org
X-Gm-Message-State: AOJu0YyKdlAiV/PVSAUhsnxBRijTYx4lzozGogcB8O/lunICcGscRQ7c
	hotLWKhtgTzBw0ZQQtcK05R+3MIwl3IIM/bQkUwTQUnzgCxvqUdcxyvwv34ma4KK3fi2rOJdFJp
	oWlSw
X-Gm-Gg: ASbGnctmXz/2KBiWRqG6k/5dn3jdgfj6l7DUVQuNp9dIVNzaH2w1iWZI34sEiB/VEBe
	DXISYKVNAlqsKQ+h4DwKokpmVgr3MCiu91ei1XjwMpWE7Vt4nFeW/9KhF1jUeH3xKQNcO8eIEEU
	MbVHZp37T57a04Bt0D0/OYJuOlL6sOa6mCWigId53o882AI9WaHVSPZWmGn2d/SSf5tcbRKInN9
	75voqmXR2p6UoUOtcXkNgXfP2MbJnNjnfD3CqEL8pgAJ7HzEIAQkRoEQV9uCmXt0yTNHCPb9eH0
	LnsWzD3zVgzKrtdNmYuVWcsyPgJ029GDnreOuEgVvF3+622ZPyRtvGLekSXz1wuSCcw3DQ==
X-Google-Smtp-Source: AGHT+IELtKnPJDe4nqNdjk2sBhCI6I2xvz/wOPoQGsElZVYTg/ySRtquZIa1AuUSxEajiH3skylvlA==
X-Received: by 2002:a2e:884a:0:b0:308:fd11:7715 with SMTP id 38308e7fff4ca-30a5b21d972mr53559811fa.33.1740448169413;
        Mon, 24 Feb 2025 17:49:29 -0800 (PST)
Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com. [209.85.208.173])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-30a819ebfeesm947191fa.31.2025.02.24.17.49.29
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Feb 2025 17:49:29 -0800 (PST)
Received: by mail-lj1-f173.google.com with SMTP id 38308e7fff4ca-3078fb1fa28so38998631fa.3
        for <devicetree@vger.kernel.org>; Mon, 24 Feb 2025 17:49:29 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCW6q+ArVlpTDsaa5GSRYdeoiBU5dUxm0lZeZt4XVxc6Z1TRPOnwMXLF7ZInEkWlRqKODDGOVue+Z1fm@vger.kernel.org
X-Received: by 2002:a05:6512:10c6:b0:540:1f7d:8bce with SMTP id
 2adb3069b0e04-54839268617mr4611865e87.38.1740447670508; Mon, 24 Feb 2025
 17:41:10 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250224081325.96724-1-damon.ding@rock-chips.com> <20250224081325.96724-6-damon.ding@rock-chips.com>
In-Reply-To: <20250224081325.96724-6-damon.ding@rock-chips.com>
From: Doug Anderson <dianders@chromium.org>
Date: Mon, 24 Feb 2025 17:40:58 -0800
X-Gmail-Original-Message-ID: <CAD=FV=Uu+EvZzuFmCvq5qJ=FeBjmLTtfGT4Aq6QBSoH=Sen8PA@mail.gmail.com>
X-Gm-Features: AWEUYZkhmeaAQLOMDj5xS_yarIgfu2NVlCE358kcuOa-b55Ak-RhS879p-uOQpk
Message-ID: <CAD=FV=Uu+EvZzuFmCvq5qJ=FeBjmLTtfGT4Aq6QBSoH=Sen8PA@mail.gmail.com>
Subject: Re: [PATCH v7 05/15] drm/bridge: analogix_dp: Remove CONFIG_PM
 related check in analogix_dp_bind()/analogix_dp_unbind()
To: Damon Ding <damon.ding@rock-chips.com>
Cc: heiko@sntech.de, andy.yan@rock-chips.com, hjc@rock-chips.com, 
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	andrzej.hajda@intel.com, neil.armstrong@linaro.org, rfoss@kernel.org, 
	Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se, jernej.skrabec@gmail.com, 
	dmitry.baryshkov@linaro.org, sebastian.reichel@collabora.com, 
	cristian.ciocaltea@collabora.com, boris.brezillon@collabora.com, 
	l.stach@pengutronix.de, dri-devel@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Mon, Feb 24, 2025 at 12:14=E2=80=AFAM Damon Ding <damon.ding@rock-chips.=
com> wrote:
>
> Remove the check related to CONFIG_PM in order to make the code more
> concise, as the CONFIG_PM should be a required option for many drivers.
>
> In addition, it is preferable to use devm_pm_runtime_enable() instead of
> manually invoking pm_runtime_enable() followed by pm_runtime_disable().
>
> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
> ---
>  .../drm/bridge/analogix/analogix_dp_core.c    | 30 ++++---------------
>  1 file changed, 6 insertions(+), 24 deletions(-)

If someone really has a reason to run this driver without CONFIG_PM
then happy to hear about it. Until then, I'd say this is fine and
matches what most drivers assume.

Suggested-by: Douglas Anderson <dianders@chromium.org>
Reviewed-by: Douglas Anderson <dianders@chromium.org>

