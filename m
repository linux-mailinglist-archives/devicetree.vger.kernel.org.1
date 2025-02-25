Return-Path: <devicetree+bounces-150895-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 13CB8A43DCE
	for <lists+devicetree@lfdr.de>; Tue, 25 Feb 2025 12:38:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 7B90F7A3DCB
	for <lists+devicetree@lfdr.de>; Tue, 25 Feb 2025 11:37:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 42FB126772C;
	Tue, 25 Feb 2025 11:37:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="mKQL5vi4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f170.google.com (mail-yb1-f170.google.com [209.85.219.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF0612BB13
	for <devicetree@vger.kernel.org>; Tue, 25 Feb 2025 11:37:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740483479; cv=none; b=LGv9Zr2de+37nQ6KD/VHNdYLosBKH/du3VaE3Dp6j+kAu0mQOLF8kr7lmeKDu/ZXFIc6j6vJRZS3pmFeqdDpLt89h643iXNrj0zofeIQ3nB+x7YAZV76JnolKP+odwZr9kq1No+ZfwG8Vfvr6JI5XCyb4DFcFsl80IQ++VnRFGc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740483479; c=relaxed/simple;
	bh=yt2R0RS1TqSbKw/Jt2UsZPUVcnMdVRQFPe4UhVWU6gw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=GSYoovWIMNO3S6tIcq+9o8xzsrzNQeK4IJ1B7c06LOrj1E59ACp3xNibHRc/iFpP3VyTe/beDJ6arz2qI/dBt/kFXsZIVzyEMrHlb1i82iLBV09gbnC9FmwpcGEEqxYbKgtNDpFN9Y2N6iskhv/dnBvcguUpGrhPJuSDNFQSM1c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=mKQL5vi4; arc=none smtp.client-ip=209.85.219.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f170.google.com with SMTP id 3f1490d57ef6-e3c8ae3a3b2so4048039276.0
        for <devicetree@vger.kernel.org>; Tue, 25 Feb 2025 03:37:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740483476; x=1741088276; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=n1TWnKYSjWgGvb3cyxt3TX5DamTHuovBzjkuSknBSeU=;
        b=mKQL5vi4qGOJRLNpfXdtofuJbytPCxHNMU9f1tg4sQGkA9LmiJLUUnYV2K/6x+Foqo
         X4b1+WjYxO0NbzdXZ2x9I6xbWGj6s8mmaVDuzv3K71KgfISMkkbl89BpTPmecRPl/DNf
         lkw8yLL+brU/PjVEKZZCMUgMoGuL25c28+T2unlydgObpEmUc7nftZCGlxkHOEvqHPZS
         LATnblprmHKRH8zZ629/vS8HUTGBQY1pGgpnaC3jBGbyZiO94TJlGoMmPyy2CmuENXlV
         Wb570NAxOAfyPJ9R0mXBwM/YwU/sd3SxplXuCHLDcekbb7KfRb9HsDC1Bp94Y8qnberX
         hi/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740483476; x=1741088276;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=n1TWnKYSjWgGvb3cyxt3TX5DamTHuovBzjkuSknBSeU=;
        b=dEXGCPcmWKuQ7dojca7jWdvTmZSFNmJMqfFFXQQR2CCs0k1dhxD86hFLqRCGQ/groW
         R+7BQ4owBHa0H9RqOxNRw4e9raLbJ8SbpBkYs7jnCRKt6RhV2DJDDdk5Zwpe4UlOM1il
         vcIYwpupfp9GDW+q+Qo1BGfZt3kyQh+g58Q3sbWzMywSHPNsvTiunbtKIxMT2i/A6wff
         CNWuMfTEm3O1N0NasREduIcKO8shIo5R58wEcwxGHgvQgTOf0IvPTEYHK87qbDf+y1uh
         aWyftTAkVa3FH9lsWt2y0uIQ4UGPSt/tdpeBqzgR1XDTlweGEtNhGaKNw7rQIWqg6Pzl
         Wfmw==
X-Forwarded-Encrypted: i=1; AJvYcCVeWvuOh52FQPT8dFNFyLSeXgdQM4ZJHWDgdMll5H+cujdjV1+4zQDKsPecqEyiL3UKgghigfybgGTt@vger.kernel.org
X-Gm-Message-State: AOJu0YwcnXjrmJGcEHd9UEFHUgg5CVZAjQFBKyGukr9Iy2dLGkBJyIjb
	G8juxvZbm3b0qSXrWwoRQ518wL+xwQIJXU/Kzv/sReEuGJkLDH/AqH1xjTpegI/HRgGN93aP1vT
	HGroLKliMtW5DMbydSz8uaJPeluDE7hgRN9Eung==
X-Gm-Gg: ASbGnctf2LKDTItWO+2MrDIxRg6Nn8IkrsnNzGDBeLCp6bkApgVVFveOVeCwZEPhdfN
	6v9HW+QDR8m2L9qi4Y3Etm2Rc43OkANz5eP4U6/pU/wI2ZLGWU54mb63k6wcVvD1lOVItE4IAQ0
	T7fyFOERXaDUvPG8a8foyAQamcp+DSEcBaspbrkhE=
X-Google-Smtp-Source: AGHT+IFoRV0tABvVleGcPGFjITHVSAozbUIV7vt/JXOPnNAtmYOOQYQ8LJ70dKpeCX04ppbU+mmusjSHjBwHx6qf6uI=
X-Received: by 2002:a05:6902:18cd:b0:e5d:fccc:7907 with SMTP id
 3f1490d57ef6-e607a4e3c9bmr1939202276.14.1740483476663; Tue, 25 Feb 2025
 03:37:56 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250217-adpdrm-v7-0-ca2e44b3c7d8@gmail.com> <174047913824.2131221.6545389561298332217.b4-ty@linaro.org>
In-Reply-To: <174047913824.2131221.6545389561298332217.b4-ty@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 25 Feb 2025 13:37:45 +0200
X-Gm-Features: AQ5f1Jq_8vz2X92aaDmmCRK3QuSACEM5CmHNBFF9CumkaBecyk4PuPviBAdIWp0
Message-ID: <CAA8EJpqM8ZQ-ScEtEBXaUF2Nargtp_TBAyMYvbJ49PGbwPWjaQ@mail.gmail.com>
Subject: Re: (subset) [PATCH v7 0/5] Driver for pre-DCP apple display controller.
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Hector Martin <marcan@marcan.st>, Sven Peter <sven@svenpeter.dev>, 
	Alyssa Rosenzweig <alyssa@rosenzweig.io>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Jessica Zhang <quic_jesszhan@quicinc.com>, asahi@lists.linux.dev, 
	Janne Grunau <j@jannau.net>, Sasha Finkelstein <fnkl.kernel@gmail.com>, 
	linux-arm-kernel@lists.infradead.org, dri-devel@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Alyssa Ross <hi@alyssa.is>, Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
	Neal Gompa <neal@gompa.dev>, Nick Chan <towinchenmi@gmail.com>
Content-Type: text/plain; charset="UTF-8"

On Tue, 25 Feb 2025 at 12:25, Neil Armstrong <neil.armstrong@linaro.org> wrote:
>
> Hi,
>
> On Mon, 17 Feb 2025 12:39:30 +0100, Sasha Finkelstein wrote:
> > This patch series adds support for a secondary display controller
> > present on Apple M1/M2 chips and used to drive the display of the
> > "touchbar" touch panel present on those.
> >
> >
>
> Thanks, Applied to https://gitlab.freedesktop.org/drm/misc/kernel.git (drm-misc-next)
>
> [3/5] drm: panel: Add a panel driver for the Summit display
>       https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/40115947b59f2ca361a47615304dff0a2b69a2b4

Without the bindings?!

-- 
With best wishes
Dmitry

