Return-Path: <devicetree+bounces-29216-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B207B821FBB
	for <lists+devicetree@lfdr.de>; Tue,  2 Jan 2024 17:56:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 49563283C3A
	for <lists+devicetree@lfdr.de>; Tue,  2 Jan 2024 16:56:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C957214F9B;
	Tue,  2 Jan 2024 16:55:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="IOGHtBB+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f171.google.com (mail-yw1-f171.google.com [209.85.128.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CC8414F93
	for <devicetree@vger.kernel.org>; Tue,  2 Jan 2024 16:55:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f171.google.com with SMTP id 00721157ae682-5e745891a69so77916817b3.2
        for <devicetree@vger.kernel.org>; Tue, 02 Jan 2024 08:55:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1704214552; x=1704819352; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=CNqL3syd8tajxdXP6DeZWAspQXGwstc+HdsQhu/G50A=;
        b=IOGHtBB+A2YpRHNpVLTI+6mbYTwnFix6w/wUEiZPom/SAbpYZ4gCQPuvmSFwfAqH8V
         nAwxMmNLNL5R7Mx4nyttoVxe10h5dt6cxgKskDuPTIcGXov+zcHaHWSNsuCv9qJMoTCf
         CSTPVOxoD0GnV9fCpY/uMRFXkqoXkFfpJCkLD6VWX5lHkfD+xhHh7jKu3qTVXRualz9G
         jb9FLzFdMP7Thm5MioKoo3qHoN9F3VWVyyfqa6/3k1DrJIzCdxy9rjRICqLrMs8y2tsy
         xeR2yFiGsDDPw9rOCph04n8prtnZcfsF4rpH43BFnsophlzjc/LGIpJxcunob/gC2W3C
         L3nA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704214552; x=1704819352;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=CNqL3syd8tajxdXP6DeZWAspQXGwstc+HdsQhu/G50A=;
        b=Tc6Y4jEe9fcHjYqPuQWBqSAbd9MNR0PSWctrODRwnPrHQaSJ/wGpD591dupLh5PvO6
         DCqdhlVCPqN4dc6lG73NP1c9USbAKlv2nxeOYdHhnu7U/2q9j5YXlZ/xlcJCzmVwEEIn
         EDAT8rfWz5+zPMcjqTOgEjwbhOg3N+d4SfT4jsnogkBPbv8GiqFFdqVnBSrvieuz34qK
         gSQFm9kjEKhJzV9EF6DTtX83tEsCmJf2lE8rIU6CvMwC+/s/2gi4kimNEHNQf3eKDAQe
         1klwBy+Gb658athcV2bEhxkfLEjwxmxaNgk5zDLwz7589ScvK+LG5QXTSNCAXrGcSgIW
         cn6w==
X-Gm-Message-State: AOJu0Yx4zzgXXHaI1lPNCE9t8fmSOFaY+gam3OvVOC2o6/AqCtVohfw6
	rxsG6LLA8LELQXWg1tF0VjV9m62aRl8NrdjPF4svpD3Tk2/RSQ==
X-Google-Smtp-Source: AGHT+IH38GyzntASw7CHnKSqj+ZQZUAgzv27O4Az+xAQMxD5JqXuBWTwK69lQ4VL7IfiINHMXODTxxSi7cIGSCiDaF4=
X-Received: by 2002:a81:4a44:0:b0:5d7:1940:7d8a with SMTP id
 x65-20020a814a44000000b005d719407d8amr10235618ywa.97.1704214552024; Tue, 02
 Jan 2024 08:55:52 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231213224219.2191721-1-robh@kernel.org> <170421203410.2946186.5030215776329721242.robh@kernel.org>
In-Reply-To: <170421203410.2946186.5030215776329721242.robh@kernel.org>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Tue, 2 Jan 2024 17:55:15 +0100
Message-ID: <CAPDyKFrOc9MnvjOjA8Wg_zFg9G2rtxoTs_iEY1oLWME59v1jiw@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: mmc: sdhci-pxa: Fix 'regs' typo
To: Rob Herring <robh@kernel.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	devicetree@vger.kernel.org, linux-mmc@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Lubomir Rintel <lkundrak@v3.sk>
Content-Type: text/plain; charset="UTF-8"

On Tue, 2 Jan 2024 at 17:30, Rob Herring <robh@kernel.org> wrote:
>
>
> On Wed, 13 Dec 2023 16:42:19 -0600, Rob Herring wrote:
> > The correct property name is 'reg' not 'regs'.
> >
> > Fixes: ae5c0585dfc2 ("dt-bindings: mmc: Convert sdhci-pxa to json-schema")
> > Signed-off-by: Rob Herring <robh@kernel.org>
> > ---
> >  Documentation/devicetree/bindings/mmc/sdhci-pxa.yaml | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> >
>
> Applied, thanks!

I was just about to apply this, sorry for the delay. Anyway, let's
keep this in your tree this time.

Kind regards
Uffe

