Return-Path: <devicetree+bounces-28118-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E074A81CD5D
	for <lists+devicetree@lfdr.de>; Fri, 22 Dec 2023 17:58:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1F4161C2211A
	for <lists+devicetree@lfdr.de>; Fri, 22 Dec 2023 16:58:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7A6CC2555E;
	Fri, 22 Dec 2023 16:58:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="vBhGAepk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f181.google.com (mail-pf1-f181.google.com [209.85.210.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A5692511D
	for <devicetree@vger.kernel.org>; Fri, 22 Dec 2023 16:58:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pf1-f181.google.com with SMTP id d2e1a72fcca58-6d7f1109abcso1345931b3a.3
        for <devicetree@vger.kernel.org>; Fri, 22 Dec 2023 08:58:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1703264317; x=1703869117; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jI7DM2Rll9cMWDSBkPQqYE2b+cEYdcGCt87cQ5pOFak=;
        b=vBhGAepkHVdty1RqRHuycXporDxXn+mk8gkHGXXCvIWDBsQxXzikqQRW5b+H+DtZLx
         oBIuBGgh9Dxm4AuGNYtMqC6YjSjncVkNW8kCefQZr3AXuIc0Dmck2mYM4xyrMCCpkqPz
         yV2w1omnNkET7021ZYmLzHbo5Tdhz2Cq3JSZXYAMCQRbMDsLccqQGb5v3DPLPGwxw+pM
         SALc0OltUasRxRIzopvpBqV6S/PT686+0VQChDGa40IuAkobRHCOte20WxXUSL5C9uUh
         2ZznmrfupyEwwWu9HXUCqwp9aFXUw/kx+S9nCrX70bAemA0/bOZ3eP6LbfoVndgulUII
         7EhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703264317; x=1703869117;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jI7DM2Rll9cMWDSBkPQqYE2b+cEYdcGCt87cQ5pOFak=;
        b=rxf68+JSw/m/mUshmIzUELNTRiK04RNFFbmnjP7MXCKUPc7rHjJWvZR8tHRnMsqnC3
         mxjKAUIE2GxISBjDakL2/VI1+9CfI2EiTNwZnxWIja3Zhb8MZfa20hxV8xNnuURoWGvh
         cnzXf3fFgkDyCVBy0w7e+SG0UC1S7ZG9HmlqU3vKWofjhLcp7TpO5UuBZYDMaIlaF+2G
         +HjRvD6tB+Yp6sO0O9UFCs8SKTtN/B6ZMt93skWwKwYMcK97xbbH5iFxrRQKGvQV3r2q
         KD0sXwwawLVKT2/fkyQbyYWVpqq9eY/CWx9kgkeG56jq8u1jpt3cn7vD7R2JWCGpis5H
         ntng==
X-Gm-Message-State: AOJu0YyGu5na5eIrNyg3g75Cb7u2/AsxS6+rRYp4VWjQlCQ5OSvYndtM
	bhdEnpv1rPBbaNlMn9C2Pz3K1IWypSWubZip3YiREd692vr0IQ==
X-Google-Smtp-Source: AGHT+IG+9G+bRaSRG+bi095LKcnglp3HFBbGmgrz709R/imvyo51JcRThk74/BzKs4QLutx/KFYXQTYPqtSeSH6wEHw=
X-Received: by 2002:a05:6a21:3291:b0:191:e72c:24df with SMTP id
 yt17-20020a056a21329100b00191e72c24dfmr1464156pzb.19.1703264317421; Fri, 22
 Dec 2023 08:58:37 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231222165355.1462740-1-peter.griffin@linaro.org> <20231222165355.1462740-2-peter.griffin@linaro.org>
In-Reply-To: <20231222165355.1462740-2-peter.griffin@linaro.org>
From: Sam Protsenko <semen.protsenko@linaro.org>
Date: Fri, 22 Dec 2023 10:58:25 -0600
Message-ID: <CAPLW+4mDnHXjvsqGVB4ORP1e_t5RrOf7mWqNLxJJfBhOaHO0wg@mail.gmail.com>
Subject: Re: [PATCH 1/3] dt-bindings: timer: exynos4210-mct: Add
 google,gs101-mct compatible
To: Peter Griffin <peter.griffin@linaro.org>
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, 
	daniel.lezcano@linaro.org, tglx@linutronix.de, conor+dt@kernel.org, 
	alim.akhtar@samsung.com, s.nawrocki@samsung.com, tomasz.figa@gmail.com, 
	cw00.choi@samsung.com, mturquette@baylibre.com, sboyd@kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org, linux-clk@vger.kernel.org, 
	linux-kernel@vger.kernel.org, kernel-team@android.com, 
	tudor.ambarus@linaro.org, andre.draszik@linaro.org, saravanak@google.com, 
	willmcvicker@google.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Dec 22, 2023 at 10:54=E2=80=AFAM Peter Griffin <peter.griffin@linar=
o.org> wrote:
>
> Add dedicated google,gs101-mct compatible to the dt-schema for
> representing mct timer of the Google Tensor gs101 SoC.
>
> Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
> ---

Reviewed-by: Sam Protsenko <semen.protsenko@linaro.org>

>  .../devicetree/bindings/timer/samsung,exynos4210-mct.yaml       | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/timer/samsung,exynos4210-m=
ct.yaml b/Documentation/devicetree/bindings/timer/samsung,exynos4210-mct.ya=
ml
> index 829bd2227f7c..774b7992a0ca 100644
> --- a/Documentation/devicetree/bindings/timer/samsung,exynos4210-mct.yaml
> +++ b/Documentation/devicetree/bindings/timer/samsung,exynos4210-mct.yaml
> @@ -26,6 +26,7 @@ properties:
>        - items:
>            - enum:
>                - axis,artpec8-mct
> +              - google,gs101-mct
>                - samsung,exynos3250-mct
>                - samsung,exynos5250-mct
>                - samsung,exynos5260-mct
> @@ -127,6 +128,7 @@ allOf:
>            contains:
>              enum:
>                - axis,artpec8-mct
> +              - google,gs101-mct
>                - samsung,exynos5260-mct
>                - samsung,exynos5420-mct
>                - samsung,exynos5433-mct
> --
> 2.43.0.472.g3155946c3a-goog
>

