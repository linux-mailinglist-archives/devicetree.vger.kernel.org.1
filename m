Return-Path: <devicetree+bounces-156864-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 06E55A5DB76
	for <lists+devicetree@lfdr.de>; Wed, 12 Mar 2025 12:27:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 48FBA177994
	for <lists+devicetree@lfdr.de>; Wed, 12 Mar 2025 11:27:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6ED262459F2;
	Wed, 12 Mar 2025 11:25:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="iGnJ2JUZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f182.google.com (mail-yw1-f182.google.com [209.85.128.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C03DF2459D6
	for <devicetree@vger.kernel.org>; Wed, 12 Mar 2025 11:25:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741778734; cv=none; b=aN8NVi2kEzFwKYIiR5G4Vutd6+0I9VTHYrxfcrWSct7OilLrEYZnB7nsHoRJnMW6SoFKZjXIXvEmi5YTbMSAkIz+eEaoyVGynpuSmrJd2XPprdX2IMy71vO3dyv51Tdz+eJ+J/Y1KLu4j7obpUwlDdeR+7THkyESDnvS0WmkCC0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741778734; c=relaxed/simple;
	bh=u09mix5wsyGZEee0OTLlbwtp/i5wIT9Jdm2M0t59Fs8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=buaDANcv0LQTLjW/EjOeCfM3qxApm6bVWw/FxLPS1KLr6FeKS7/yBT/TJoKZTXfBB5C5s4OA3DQn5JdMDETJqsZ8LKNPgRQf6HsCyGlImUBGBzfhuSMGmiuL86dixH9fVbkgxZTYaxPL9fMNSnnx3WbpE+RYk+M4O2fP+jaJBIk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=iGnJ2JUZ; arc=none smtp.client-ip=209.85.128.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f182.google.com with SMTP id 00721157ae682-6f666c94285so61550557b3.3
        for <devicetree@vger.kernel.org>; Wed, 12 Mar 2025 04:25:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741778732; x=1742383532; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=6/mrslkYIqtp2+mq8p2Qz5J6MxbjiXwBJqUTb8Ezm9o=;
        b=iGnJ2JUZrW2FGn1w6nR37KHuN7NGjmwSWyi7AJDrE9Qcd7cugwvA3uEYLKURXg1VRK
         BtMNQrdkfHUSiexHhD/qGXBlT7o05BYSvgZp1nQSnb2iKd32SncyaKMCBw18s9EeIZME
         oxG8GAwy8X1O+VN0gZhKH90rtqhVT/UKcOb70ANL2m3zXoMgNe37tRnWsFKXlUog1FyG
         s9bA/jPxa/FMobh4O0bDX8eYgMC9lPq5uKk+KgFvj4HiJbP4r0me9mGSW9NE/MHyMHf5
         czsEi/kKjYQbngMZd+ny+0igy5rtaTmODqlPfe1RHgl/YOCmpcpc5+jbQuEfp66dzFx1
         eG7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741778732; x=1742383532;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6/mrslkYIqtp2+mq8p2Qz5J6MxbjiXwBJqUTb8Ezm9o=;
        b=iJsK0xQjrTiDauLPS/p++fOxcIXAzxUF2h3WVT3Vfh2F0NeY248r15dRitO6GAfe/J
         o6uNG/GCz0CoafL0zEdVxP93JosgCbU+2k2ZtqC/xL5n0zArZmfTzKd3De1s0ejx9Xwd
         vhCHqu+ei6VrgTXaXhXoUple8hG+lITK60I+V7+ErmVX//gqNIjD38ziwoLq3QkIGI0r
         bNBg0AC2+n0G8Q0sphl/MbnEz/rZCHJWCoyxDWNjc6/aKKPyChBF+SiA7n6rywWO5maC
         lT+V/njGo7fcfu1iMjUqbbAz1iJKZq272TqT/fxcLyn/o0kYBONN3yWrduILd+NDEUNs
         LufQ==
X-Forwarded-Encrypted: i=1; AJvYcCWJAiOLIPP4TV8KhyXhact6qMHTPuT4pjCcbb2mAM5QfMQIZtiPPXUFTNIdWebnvr9OzH5UxkcLS1n7@vger.kernel.org
X-Gm-Message-State: AOJu0YzWKXtUYVfPQMv3IPUMBQPVXeWTJYdPqrm7LZfk5/iz1cZ5BXhg
	M/hCb8tSyClw6mJmpB5vuOKq9QQqTG6ulWP8wEJSNyINrnXzaXVubuzMTaOOyJTaHZo2XLpdRA3
	+y/5e/YLTf7/FEWqSQEqMxsd0ZZQ4AFK+ZMFr5g==
X-Gm-Gg: ASbGncsEFUfy+WmSDF3ZaRr3rVT0Da6oSj3atne4ICwDps5cBEWBScu7GkqEpUi+QVO
	v5nPcWP9h8eZ+WdEUdCtAnDTjJxe50BIbtlQfe//BVSe11ToiwT8AZS2HrXQxz/42WUAFEr/UD+
	dUHleWWqeMAqvenuep/yON34XMZ2HdbmhUOdaRdA==
X-Google-Smtp-Source: AGHT+IFk3gFp/cUReNnM9kzAsWOkTCM5MEQl/tCtb/z5liDbrUseKz74jkUx34wnEgejhu/lLK5rCnP3CIxzHqyLHXc=
X-Received: by 2002:a05:690c:4c02:b0:6ef:652b:91cf with SMTP id
 00721157ae682-6ff0927951fmr104983367b3.27.1741778731810; Wed, 12 Mar 2025
 04:25:31 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250305214108.1327208-1-jonas@kwiboo.se> <20250305214108.1327208-2-jonas@kwiboo.se>
In-Reply-To: <20250305214108.1327208-2-jonas@kwiboo.se>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Wed, 12 Mar 2025 12:24:56 +0100
X-Gm-Features: AQ5f1JqH2hRXUwfz_vQkPX8i5gK9j7RB0dP4G_O77fuesZmjypeV_Lu2vr_DSTs
Message-ID: <CAPDyKFqY+0MGsdZDBJ1AoDaDGrnXN=Gu3JNjuK0LoHfjT9JxiA@mail.gmail.com>
Subject: Re: [PATCH 1/3] dt-bindings: mmc: sdhci-of-dwcmhsc: Add compatible
 string for RK3528
To: Jonas Karlman <jonas@kwiboo.se>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Jisheng Zhang <jszhang@kernel.org>, Yao Zi <ziyao@disroot.org>, 
	linux-rockchip@lists.infradead.org, linux-mmc@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Wed, 5 Mar 2025 at 22:41, Jonas Karlman <jonas@kwiboo.se> wrote:
>
> The SDHCI controller in Rockchip RK3528 is similar to the one included
> in RK3588.
>
> Add compatible string for the SDHCI controller in RK3528.
>
> Signed-off-by: Jonas Karlman <jonas@kwiboo.se>

Applied for next, thanks!

Kind regards
Uffe


> ---
>  Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
>
> diff --git a/Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml b/Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml
> index c3d5e0230af1..fb2115e805f5 100644
> --- a/Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml
> +++ b/Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml
> @@ -14,7 +14,9 @@ properties:
>    compatible:
>      oneOf:
>        - items:
> -          - const: rockchip,rk3576-dwcmshc
> +          - enum:
> +              - rockchip,rk3528-dwcmshc
> +              - rockchip,rk3576-dwcmshc
>            - const: rockchip,rk3588-dwcmshc
>        - enum:
>            - rockchip,rk3568-dwcmshc
> --
> 2.48.1
>

