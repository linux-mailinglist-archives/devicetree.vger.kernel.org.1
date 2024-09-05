Return-Path: <devicetree+bounces-100343-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id C4D8896D5AD
	for <lists+devicetree@lfdr.de>; Thu,  5 Sep 2024 12:19:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 773701F25409
	for <lists+devicetree@lfdr.de>; Thu,  5 Sep 2024 10:19:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9595F198E9B;
	Thu,  5 Sep 2024 10:19:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="UkQvnH6a"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f177.google.com (mail-yb1-f177.google.com [209.85.219.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E2EF194149
	for <devicetree@vger.kernel.org>; Thu,  5 Sep 2024 10:19:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725531546; cv=none; b=r77RkPDhnfst939Uf62rmYkosern7o5qJe3hFZeVBK7S9l8cdmHax2p9V5ZPR6Bmv6hLYD2GoITg7Uc6JkcMUDk86W3n2ZY43n9jL0IjD27VSqV64630kjcs3zKupyX6zqQfUYJ6YeG21qk54HkNTwI5vetRBnwaoSiCPoZvkYY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725531546; c=relaxed/simple;
	bh=N5GZ6QaGpaG9BOOZe8Qz5x7aSLENpOxDadCaaNOcHSo=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=kqDiNZCw5OTScLANqfyxNtKclnrhp3Z42oogsJconZP9cEVdlFRUHqZpQS6Kc9Fu525Mb3GDIbOy9B4hJKmoHOXVfSHAOyjUF5qBA9BVPQGTbOTASMsx3icgi9jYc0nBbiiyGI6wxnP+U/XDLEIg3i2EUOL3VPJ1Y0V7HzzfU38=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=UkQvnH6a; arc=none smtp.client-ip=209.85.219.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f177.google.com with SMTP id 3f1490d57ef6-e1a8ae00f5eso740402276.0
        for <devicetree@vger.kernel.org>; Thu, 05 Sep 2024 03:19:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1725531543; x=1726136343; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=TbvNzEhcUc2/e6npSPa/SUaLRFH3LWeQVUSLoJZyzEA=;
        b=UkQvnH6aI8Ixws4yVjH6aPFhAfs2u57fNBIg4e7czby/ooCZeirQE1JOGCy5Jn5iw3
         MKcor4WraYEC7VygGMlgYaRlbF026Mw+CboIHN/1qaguwQTXNVDyFMo5/Yodl2TOrYlv
         FcUcJ8n+9/mTVhw7MtCUl4tqSLzAbrQkmSEyDsdFwal1eSKWCM5Py0xCeMMBicRYHXsS
         spo5T294LZVDsY5K8AAv4ZGVaA3SXGAamUgSXDzfVXNoJP/MDh/OUrp/10hhqnnbjebP
         kcMG6dH0KJSgC32E/2043dvCmWCw39eelSRe5BwMu+gBAcEAJ8fVP8Fm1vZPq9BT3KHy
         vGpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725531543; x=1726136343;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=TbvNzEhcUc2/e6npSPa/SUaLRFH3LWeQVUSLoJZyzEA=;
        b=ekcHboUPG9FGYPA1Awe1RQhd/KgUS4lyufheIC5ny9gHxj5tqnCdy9UTnbZwgxWj1J
         f52EyW/Cf18z+GsJ0HHt38HYhTXCc8QCvJElkP86UD/sv9n7g4cBsVqrIyMdgJ9q8Q38
         rBIBXyp1ki8zl5qlWCzgtKdiP84v2z5Jnng6cxn440Tt/kgkmp6933XLSVhGGEnFP8YA
         97ywKay+ZWFwaZPjf7GorHvJcYfodsBCiFB1AvJ9DM4TkfU/MTqeCZjw1tgo+2I0imcm
         U1O/3fawoSFtDHeW1fQP51SYijQ+Kt2ak4zsejM/zy7/N1nQMAcUsP9thirlic2A3QeP
         7VgA==
X-Forwarded-Encrypted: i=1; AJvYcCVdryjKqoJDdLSLdyV3p5h74uYYs0116ZxAoKkuMAMuU5V2XiKiOhY7mwkrrc8jnq5D+gnaLxz4Vl0U@vger.kernel.org
X-Gm-Message-State: AOJu0YyAkaSDhxC0ZvkzMpordRU1souXb3BN1FxxkFlQD+WpEc8B5DZ7
	wYVLIKOajoO/dEuzLZNiISWLQIoK3xjq15Pzof/JEuX60xX7PRmrcGgLlTbLjD4Y0oIvkxaOV7/
	QF86yO42Hopem/yFI8/60ePOCr3StnT2jfszYiw==
X-Google-Smtp-Source: AGHT+IEfkmXdZbiQFZA2SCdDFNC5ZztKbmifchwoAz1t7Bhire9A/0dhUzANW4hoWsdcwjCWYY1qjZMm+Dtgf/DNne4=
X-Received: by 2002:a05:6902:2406:b0:e1a:b361:4d9b with SMTP id
 3f1490d57ef6-e1ab36153f7mr14748193276.24.1725531543111; Thu, 05 Sep 2024
 03:19:03 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240904203154.253655-1-detlev.casanova@collabora.com> <20240904203154.253655-2-detlev.casanova@collabora.com>
In-Reply-To: <20240904203154.253655-2-detlev.casanova@collabora.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Thu, 5 Sep 2024 12:18:26 +0200
Message-ID: <CAPDyKFp1iOUdp=pL_xpP0DNu24Z-wC5SYhwzNy5CcEkz3XWWyA@mail.gmail.com>
Subject: Re: [PATCH v4 1/1] dt-bindings: mmc: Add support for rk3576 eMMC
To: Detlev Casanova <detlev.casanova@collabora.com>
Cc: linux-kernel@vger.kernel.org, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Jisheng Zhang <jszhang@kernel.org>, linux-mmc@vger.kernel.org, devicetree@vger.kernel.org, 
	kernel@collabora.com
Content-Type: text/plain; charset="UTF-8"

On Wed, 4 Sept 2024 at 22:32, Detlev Casanova
<detlev.casanova@collabora.com> wrote:
>
> The device is compatible with rk3588, so add an entry for the 2
> compatibles together.
>
> The rk3576 device has a power-domain that needs to be on for the eMMC to
> be used. Add it as a requirement.
>
> Signed-off-by: Detlev Casanova <detlev.casanova@collabora.com>

Applied for next, thanks!

Kind regards
Uffe


> ---
>  .../bindings/mmc/snps,dwcmshc-sdhci.yaml      | 37 +++++++++++++++----
>  1 file changed, 29 insertions(+), 8 deletions(-)
>
> diff --git a/Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml b/Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml
> index 80d50178d2e3..c3d5e0230af1 100644
> --- a/Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml
> +++ b/Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml
> @@ -12,14 +12,18 @@ maintainers:
>
>  properties:
>    compatible:
> -    enum:
> -      - rockchip,rk3568-dwcmshc
> -      - rockchip,rk3588-dwcmshc
> -      - snps,dwcmshc-sdhci
> -      - sophgo,cv1800b-dwcmshc
> -      - sophgo,sg2002-dwcmshc
> -      - sophgo,sg2042-dwcmshc
> -      - thead,th1520-dwcmshc
> +    oneOf:
> +      - items:
> +          - const: rockchip,rk3576-dwcmshc
> +          - const: rockchip,rk3588-dwcmshc
> +      - enum:
> +          - rockchip,rk3568-dwcmshc
> +          - rockchip,rk3588-dwcmshc
> +          - snps,dwcmshc-sdhci
> +          - sophgo,cv1800b-dwcmshc
> +          - sophgo,sg2002-dwcmshc
> +          - sophgo,sg2042-dwcmshc
> +          - thead,th1520-dwcmshc
>
>    reg:
>      maxItems: 1
> @@ -35,6 +39,9 @@ properties:
>      minItems: 1
>      maxItems: 5
>
> +  power-domains:
> +    maxItems: 1
> +
>    resets:
>      maxItems: 5
>
> @@ -97,6 +104,20 @@ allOf:
>              - const: block
>              - const: timer
>
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: rockchip,rk3576-dwcmshc
> +
> +    then:
> +      required:
> +        - power-domains
> +
> +    else:
> +      properties:
> +        power-domains: false
> +
>  unevaluatedProperties: false
>
>  examples:
> --
> 2.46.0
>

