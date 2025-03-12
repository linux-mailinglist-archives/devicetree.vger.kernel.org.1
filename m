Return-Path: <devicetree+bounces-156860-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id ED71AA5DB6C
	for <lists+devicetree@lfdr.de>; Wed, 12 Mar 2025 12:26:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 48D123B8CCB
	for <lists+devicetree@lfdr.de>; Wed, 12 Mar 2025 11:26:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 80594243965;
	Wed, 12 Mar 2025 11:25:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="c8tTnLeS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f177.google.com (mail-yw1-f177.google.com [209.85.128.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DCAB24336B
	for <devicetree@vger.kernel.org>; Wed, 12 Mar 2025 11:25:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741778721; cv=none; b=sN8jasjObj9uHUu0uB8V1CgI92Duj0AbvP6ZL0Pe8LJShC4vCFMVKyPGz8C28PYdFYlMcbJjAD8aIomGUlblJ4UrqLgBUna4tJTHxwowZ1lqzX/My9mFhMC0w9FtHt3siGtnvmFNlLR2roP1V7ChMnrJjLbaZGZkaY7NVTc+uZE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741778721; c=relaxed/simple;
	bh=yMvqv5UmFT7AIpq8F8YeUqicsmsyJRqccpHBeoe274Q=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=V54zf4TBzSVub4vxAMb3Ua5GZHLkWNlVoVhZRRcjYleg0H3sD4ytGHWvwiSVIYDHcb93ssVgGTgSTgCHzlfmJEZ16eRkKQjwg/eCvLN/l9Az+EeSWC5IAz21q5JMLTUGZ8b71q2wuSWarlAYkg+N/EgoeK2/V98PDqu6g+8aY6E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=c8tTnLeS; arc=none smtp.client-ip=209.85.128.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f177.google.com with SMTP id 00721157ae682-6ff0c9d1761so17188917b3.1
        for <devicetree@vger.kernel.org>; Wed, 12 Mar 2025 04:25:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741778718; x=1742383518; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=eq7CbEnzO7luGgtEaDN5nrJnBFu8hWWVpatVuYHiagc=;
        b=c8tTnLeSGtlwgoeHahliIAdX75n6agHaNt9LmL7xRqe2mJIgZ+0x10HWALD//U0waE
         HQO2NXxVI4N21D96uTQGiJS+EuD+han4zrgnZG/y5ZWb/HI3O2H+ICwUwSjHwXzVt3oR
         /80NXdBAWtQZ3QPWei8ngdvJe83SkA4KFsRjuB7+vH9kjVDwGy1bS9yr8n4fWmGNVvRf
         iRH9jx/nVG94cFoCKszqImXQsntqWJiMTy4DZS/xqutW8FynZQy+tquQETcIXFVgdAU5
         zSfe2pxdfInPXjaMDeJvhFYlunxtujx5FK83WnxIrmPUgUc2mvymTnkp2MyZNG6gy0FU
         bbxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741778718; x=1742383518;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=eq7CbEnzO7luGgtEaDN5nrJnBFu8hWWVpatVuYHiagc=;
        b=uRGJj2m3weZ6J2zOHY8iZcWESGwOFL749uH7km6+bxaXm3NCQnfnRV06uUkGbK1Gab
         3mkwV+ptv/gqi4Ji82BpLfeeOBodmcFnxm48Kbs5wa1Ivxy62tjzEy5GeiEnoJ1RoE15
         BiKeS9wK5MjMxivjLbmWayhoMfJUgnCmCk7vVhV3nP5XtIVOkeLMt9cqyFRjuF6aK3ey
         fJ4Y1PQrjaf68NM0O5jWOOsZQJGDN3n4C7diCugy4TN4k00o8yj7DOdXhKDvkOOzCck+
         O5xxNdN20/1+b+u0ES/9N1musjCtY39gDrxvlV5+a8uHLvcHfjOZ+0e1afIq+S1/3yaf
         YX7w==
X-Forwarded-Encrypted: i=1; AJvYcCU6Px0co8gabxyBgWEejupWt97BsZlfm05hp+W9lP3H5O9zb4TOVOJI3V1XBnuhgjeymi02cPpWHSIY@vger.kernel.org
X-Gm-Message-State: AOJu0YydvXf1HMIQTf8ca6dNeFgpqCsYquRWAPszYk1IA+A86B/RcYct
	d2q+MxEl5nFDLi1tlqdcvcpy0OIAq8OP+mX+jY/cAC3cgZOWQ2Yzg747Hw5ruHwQBKKmDlpYoca
	d4TUHwdE/2qIMGn3TdrwAeLA7xXBgbhR2cpcclQ==
X-Gm-Gg: ASbGnctm6Vzbf7z7Gf3RNy5D+W0HpKxt8Le4343LMV8aLEyRQuXeHqmpbdmTYaWR6iL
	IhP9DvJig7YKPqQeuuow5m+aqE6UIMGxmeHv8JA3B6YA/TdnryA5WxzJcUL6pqaR5ZBL/AeRd8j
	zk2FmfNPXigJ5LSgNOTt8rwmt/9DQ=
X-Google-Smtp-Source: AGHT+IF6eG8PozRnESEd+R3ZnvGLnXtUo4BkvfgZwwoCUSGgHtU5TC7KInrEna3NWKS8wRzqC2uVDFF7ZV4wfbroPfU=
X-Received: by 2002:a05:690c:6f12:b0:6fd:9f44:f3ab with SMTP id
 00721157ae682-6febf2f2438mr302004087b3.13.1741778718231; Wed, 12 Mar 2025
 04:25:18 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250227111913.2344207-1-kever.yang@rock-chips.com> <20250227111913.2344207-3-kever.yang@rock-chips.com>
In-Reply-To: <20250227111913.2344207-3-kever.yang@rock-chips.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Wed, 12 Mar 2025 12:24:42 +0100
X-Gm-Features: AQ5f1JpJoF0WsaJEsGs8Ev2GK1W0qmOLgd16kceh61tUecpXUlKoJF3fFSj3-Bg
Message-ID: <CAPDyKFqmODGkWPA5Doc_6HsfihxnoABzu_1QvR=03dqXZRFmpg@mail.gmail.com>
Subject: Re: [PATCH v3 02/15] dt-bindings: mmc: Add support for rk3562 eMMC
To: Kever Yang <kever.yang@rock-chips.com>
Cc: heiko@sntech.de, linux-rockchip@lists.infradead.org, 
	devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, 
	Rob Herring <robh@kernel.org>, Jisheng Zhang <jszhang@kernel.org>, linux-mmc@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Krzysztof Kozlowski <krzk+dt@kernel.org>
Content-Type: text/plain; charset="UTF-8"

On Thu, 27 Feb 2025 at 12:19, Kever Yang <kever.yang@rock-chips.com> wrote:
>
> The eMMC core on Rockchip's RK3562 is the same as the one already
> included in RK3588. Extend the binding accordingly to allow
>
>         compatible = "rockchip,rk3562-dwcmshc", "rockchip,rk3588-dwcmshc";
>
> Signed-off-by: Kever Yang <kever.yang@rock-chips.com>

Applied for next, thanks!

Kind regards
Uffe


> ---
>
> Changes in v3:
> - Updae to fix dt_binding_check fail
>
> Changes in v2: None
>
>  Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
>
> diff --git a/Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml b/Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml
> index c3d5e0230af1..2d5c9931f623 100644
> --- a/Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml
> +++ b/Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml
> @@ -14,7 +14,9 @@ properties:
>    compatible:
>      oneOf:
>        - items:
> -          - const: rockchip,rk3576-dwcmshc
> +          - enum:
> +              - rockchip,rk3562-dwcmshc
> +              - rockchip,rk3576-dwcmshc
>            - const: rockchip,rk3588-dwcmshc
>        - enum:
>            - rockchip,rk3568-dwcmshc
> --
> 2.25.1
>

