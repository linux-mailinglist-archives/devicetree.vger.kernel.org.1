Return-Path: <devicetree+bounces-150660-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 704A2A432A0
	for <lists+devicetree@lfdr.de>; Tue, 25 Feb 2025 02:49:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id B1C707A9D4A
	for <lists+devicetree@lfdr.de>; Tue, 25 Feb 2025 01:48:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D0DCE1494AB;
	Tue, 25 Feb 2025 01:48:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="B0fJUYY9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f182.google.com (mail-lj1-f182.google.com [209.85.208.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 012E9101F2
	for <devicetree@vger.kernel.org>; Tue, 25 Feb 2025 01:48:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740448112; cv=none; b=jfo+t8D+Tdzj2f0q332f3kUtIN58S7cBG1cwjLeIYnZNeLE9DWOV0xKdVbjPbVzrwHNJsO2CWWY8eHtEaA1PV7ufyVYKeJ1utXuxH/ihW2MD0sE+TX2s1L5yGxhLYnWx8S9G1lFRIChoJnZNC4VeYYTVvzh/z7VOn84E9gn1hfI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740448112; c=relaxed/simple;
	bh=c4anI0ppkEyU8s1QPXkM2U43MHW3YTHuNeOkaKXZjpw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=UcsDsKxg0PytsV018TY+qln7z712So6CPYUBJOV84Jjmf4fOx4JD3TgofhsNPjaKNlZNbV7IHxATitfjLs66URDYMp6rdJVcdeXb/4X+WTOSwzhiIWjC3hARmJVqSQ38toND3cTnWOzG8x4RAotDzRRQ9VZrTrRxa0EdmyrdLJc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=B0fJUYY9; arc=none smtp.client-ip=209.85.208.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lj1-f182.google.com with SMTP id 38308e7fff4ca-30737db1aa9so49300631fa.1
        for <devicetree@vger.kernel.org>; Mon, 24 Feb 2025 17:48:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1740448109; x=1741052909; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iiZFDEoMMUeQmVYehoWgRQ2XvY7Zgjn8HI/dvzzcXBQ=;
        b=B0fJUYY9eoJRwelDmfyToZt/Ac4MU3CZ6FleYQpbddKO586XPEpMVZFyhIRLLD5k/w
         te1/PbZq5SN5xy/KPnxLSd7qB5SzYTs0rPapWSPIDjPtMEJUr603FdaJKbL5+/voZ9IO
         CtUKR2/vbbOv1uSlNCFQ243ydrhat1UbSI4aU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740448109; x=1741052909;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iiZFDEoMMUeQmVYehoWgRQ2XvY7Zgjn8HI/dvzzcXBQ=;
        b=d7DFrK6g06lZHpogaeGD2mPthRC/bV4gygNeZ03Sgji278COVwYt79ITqWH0QMFN1K
         X9u7wdaw8qTNkcvDggVZ1AbTrmR2FBicLo32cXJxeQiGqHz0JrfG93PUuw+dy+2pvTRS
         Hb4sVeSDH/20btfr6GW4VFS+5TSJgkw0+TCdKu+6t8jtSNq6zBZjH7sWFxGStSqzzi99
         +GKgtt8kgzEgoWIQZBW2U9d2Kul0dsE7vhTBBr4IoyM2NGT3lZ4ORHCUp7Y2sejx9tBv
         XfYBnqPL8JHTbaLwyc5DihdWWuv693qWabwQOjdIMzp4YHoxO7NDQ3VoRM4f/yUmKPB2
         24Iw==
X-Forwarded-Encrypted: i=1; AJvYcCXH68wATwRrGA0MyAqAAG9SZVP55cNHhNlvzLE6ihuuwww8MkDDUoXcmdgY/BeV7JlRLcGt2BxjnRQP@vger.kernel.org
X-Gm-Message-State: AOJu0YyXfmD1K+iusKfW3cX5hd2LJjp74QA+/zAqht9uFVzeN/NZdgoL
	xgA97lum57xJ12IC6YWD7/SIgx7q+MVMgS3QRuRbDtcXzCBrThI9LpsK2haEtQLPjjXUX5S0UVr
	BBcuY
X-Gm-Gg: ASbGncvYxPW97ugFfiJ7F/lctz4PZ61JVQPx+/BK+ZjGmOoDTFBlTsCH3bbYeyoyH3B
	eVj/EUzNmnqkKFSN7+n+lbBYr4uNKSPJJGpn/onOP82GKgK7Jvb/XbMsx1wPbnFEVwdxq4DFceH
	KMZpbFgOn5SyGnfIhC29VVdripxy4pJt+LQw838vGBQKMh6mbV/T7/pjahDToQNSUfOJ8DFlkX8
	iexuygJ9vEHoXBKe+lSeqlHpXDoZhd9ZzcL15PTNIzgx3MGtfrXlCHx4WkgSaxrKRKS6hOjFUVg
	0da6Kiipy7VbRwu2YOs1VEeZsQrVsz2Kn/idbgJoBmi0szmzjA4BGAmsJ/C53MMsmpELgw==
X-Google-Smtp-Source: AGHT+IFbtwrGc7ScA/NsDnJsirWUODxR/zM0akKtF3epIo/h3vZkL0xwdkGE5p0GRtbWgwA83BZ77g==
X-Received: by 2002:a05:6512:3984:b0:545:c7d:1790 with SMTP id 2adb3069b0e04-54838ee9268mr5123111e87.22.1740448108793;
        Mon, 24 Feb 2025 17:48:28 -0800 (PST)
Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com. [209.85.208.180])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-548514f7d71sm47854e87.208.2025.02.24.17.48.28
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Feb 2025 17:48:28 -0800 (PST)
Received: by mail-lj1-f180.google.com with SMTP id 38308e7fff4ca-307325f2436so49294491fa.0
        for <devicetree@vger.kernel.org>; Mon, 24 Feb 2025 17:48:28 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCXX7DUHtHLnRYspTOpLBaq9F4zmhMb5HF4a9FJX2HCSSdEuZ6wxtC89ysSrWkmctDkcwhjVU8Okp5o4@vger.kernel.org
X-Received: by 2002:a05:6512:1591:b0:545:102f:8788 with SMTP id
 2adb3069b0e04-54838ee917cmr5921345e87.19.1740447651791; Mon, 24 Feb 2025
 17:40:51 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250224081325.96724-1-damon.ding@rock-chips.com> <20250224081325.96724-4-damon.ding@rock-chips.com>
In-Reply-To: <20250224081325.96724-4-damon.ding@rock-chips.com>
From: Doug Anderson <dianders@chromium.org>
Date: Mon, 24 Feb 2025 17:40:39 -0800
X-Gmail-Original-Message-ID: <CAD=FV=UJb=-TsXS3bgv-rgiON5-4icGgh81gYEJuA=ieDaBT+Q@mail.gmail.com>
X-Gm-Features: AWEUYZnEpuNKLIwyvEJM2DgjUifuLCeYu_2BU0vlX35x8eRwRX1_fUCYojEGI6Y
Message-ID: <CAD=FV=UJb=-TsXS3bgv-rgiON5-4icGgh81gYEJuA=ieDaBT+Q@mail.gmail.com>
Subject: Re: [PATCH v7 03/15] drm/bridge: analogix_dp: Add irq flag
 IRQF_NO_AUTOEN instead of calling disable_irq()
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
> The IRQF_NO_AUTOEN can be used for the drivers that don't want
> interrupts to be enabled automatically via devm_request_threaded_irq().
> Using this flag can provide be more robust compared to the way of
> calling disable_irq() after devm_request_threaded_irq() without the
> IRQF_NO_AUTOEN flag.
>
> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
> ---
>  drivers/gpu/drm/bridge/analogix/analogix_dp_core.c | 5 ++---
>  1 file changed, 2 insertions(+), 3 deletions(-)

Suggested-by: Douglas Anderson <dianders@chromium.org>
Reviewed-by: Douglas Anderson <dianders@chromium.org>

