Return-Path: <devicetree+bounces-94940-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 841C6957329
	for <lists+devicetree@lfdr.de>; Mon, 19 Aug 2024 20:26:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2BF871F224A0
	for <lists+devicetree@lfdr.de>; Mon, 19 Aug 2024 18:26:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4E1E518950C;
	Mon, 19 Aug 2024 18:26:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="r94+SewC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f171.google.com (mail-yb1-f171.google.com [209.85.219.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 226593B1A4
	for <devicetree@vger.kernel.org>; Mon, 19 Aug 2024 18:26:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724092006; cv=none; b=WqeuV85IG/wJrCX7OuF2YUvdgGOs0GUHw5imXxP/Tp5Y0lIuuNwfOM+oR08c7ljaXCaEankGdcnqsMhIR0oxmRFmpYVtASY+YIeGle6I6t0adptHbL+TLrigZeDpJAha2RIZEK5jY/3zyVFlsoDcbYk4iBIkxeHFDTXDH9cF0Vs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724092006; c=relaxed/simple;
	bh=5MQnDfQg0C24LyZXg2Cg/3e2ntF9Sd8G/H/VwrXWHOY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=IV3c/BcC+7WcxIF8HN8OJlGxcaAXAynF5zJl3/9ZcOAk+idc9qpBqrxW9sPQYzft1olWEGHgQsbkcP10gWx7EZcJVU7Vu0yQlfNWwdPJH3BiDm7G5beb83c4WRrHpJwJrBpA2NLknI+TYkljw34CagnyKxSgmuFZFyWRISqrQWI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=r94+SewC; arc=none smtp.client-ip=209.85.219.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f171.google.com with SMTP id 3f1490d57ef6-e0ea24477f0so4906535276.2
        for <devicetree@vger.kernel.org>; Mon, 19 Aug 2024 11:26:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1724092003; x=1724696803; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YByhFPkfPzhPmiVtK1Ws9JjJ1pYxs/CDLFifKBG4kvY=;
        b=r94+SewCvBw9PC5AHGQ/dXFBYInfKnffrEO74tFNDeaUyxJNiHFkZFiw4EUDsm0Z0G
         1kQz9C7ygwjomXOu7x2kCGEXCRQvvZTEdfosP6OLqWgMXYHC5uqgLmjPNa7GTKoa/8tH
         b/aoym83kFmZ76ygu+kxKUY8xGpZJPtRDph85hXob0C+zhQus27fyvfHUD9P1S8cfF19
         +sZ9k5IjZLphsulJ2/88YvuDWXy44KUnbFynV75Pj6OoXf7PUNvgX9342SoW1Pf0MWAd
         755gyhqWOafaYWebPM2ZtBmP8ldlz/qgJQ0q9pYHEV00p0AFZ75XPd/zXho4miU2RveI
         qtYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724092003; x=1724696803;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YByhFPkfPzhPmiVtK1Ws9JjJ1pYxs/CDLFifKBG4kvY=;
        b=q7XOi+X3aWEK3sF5i5qlsiYVaPGJyU2cKLHLYc2mUxjkZCPWw+6ZOsvyZpasob55FM
         mRP22psyyx91XE8ttiXyCy8v9anerAHiOUwvjjzgTK6jhxQCrgQMN2PT6FZyIgNwE3oa
         HS0J5L2KzQAnTGrqIcdd/7C9HC3L1MKTlozNG0KHKvQi1m5s1pAnnIqbMM5zjUtvwIxd
         n+7eDylpldaVQzrstIawu7jpmwdC6CoLkU55DmDqCDc4EvEDrR1kgegp9sfAEjFEHItY
         hfd9HsoSZUQujUgyFA8FB5T77UdnkumFR2zJHo1RMwRJLMHh3oyRzYMgLdEQEEIexifS
         w/vQ==
X-Forwarded-Encrypted: i=1; AJvYcCUmfHMZHJW1ACehp+AOKY4Cz1tuWpHzjcQa05P0QFxuFDwPLo4UDm9Vm72QNqOaEapTlOjZal6Yh3BltL4GWlcFyUAwqJw/MysTMg==
X-Gm-Message-State: AOJu0YxptxJAny01IjiC1gRt7foLgVJUVcblJdzNW63mrVoAG310xXIl
	29xhvtU5+sK/pLPs+WERZDi3WesSf4nQJwwOGFHFBrjyq9uZHF8tT767LWQQWjoNkf+uH+Zua3b
	KmCVVzukZ1ShF67IRgV8qASabUK88Qmbg3LVi4g==
X-Google-Smtp-Source: AGHT+IEnQ0qhBRiMEKWo4R6ABVuJRwuK7fIq2ZUycjGU2s/QR0txn5fcF8ylMq7Q69EGdS8HtwEP9XdhC3f4Twu2WTI=
X-Received: by 2002:a05:690c:2d07:b0:64a:e7ec:f3d with SMTP id
 00721157ae682-6b1b8ce933cmr111378807b3.18.1724092003131; Mon, 19 Aug 2024
 11:26:43 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240818172804.121666-1-krzysztof.kozlowski@linaro.org>
In-Reply-To: <20240818172804.121666-1-krzysztof.kozlowski@linaro.org>
From: Sam Protsenko <semen.protsenko@linaro.org>
Date: Mon, 19 Aug 2024 13:26:31 -0500
Message-ID: <CAPLW+4ksmXNwdACEzwBaK_VKubZ=SSduNCakkaBn8JRgHTYnoQ@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: samsung: exynos-usi: add missing constraints
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sun, Aug 18, 2024 at 12:28=E2=80=AFPM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> Properties with variable number of items per each device are expected to
> have widest constraints in top-level "properties:" block and further
> customized (narrowed) in "if:then:".  Add missing top-level constraints
> for reg, clocks and clock-names.
>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---

Reviewed-by: Sam Protsenko <semen.protsenko@linaro.org>

>  .../bindings/soc/samsung/exynos-usi.yaml          | 15 +++++++++------
>  1 file changed, 9 insertions(+), 6 deletions(-)
>
> diff --git a/Documentation/devicetree/bindings/soc/samsung/exynos-usi.yam=
l b/Documentation/devicetree/bindings/soc/samsung/exynos-usi.yaml
> index 8b478d6cdc30..f80fcbc3128b 100644
> --- a/Documentation/devicetree/bindings/soc/samsung/exynos-usi.yaml
> +++ b/Documentation/devicetree/bindings/soc/samsung/exynos-usi.yaml
> @@ -32,11 +32,16 @@ properties:
>        - enum:
>            - samsung,exynos850-usi
>
> -  reg: true
> +  reg:
> +    maxItems: 1
>
> -  clocks: true
> +  clocks:
> +    maxItems: 2
>
> -  clock-names: true
> +  clock-names:
> +    items:
> +      - const: pclk
> +      - const: ipclk
>
>    ranges: true
>
> @@ -113,9 +118,7 @@ then:
>          - description: Operating clock for UART/SPI/I2C protocol
>
>      clock-names:
> -      items:
> -        - const: pclk
> -        - const: ipclk
> +      maxItems: 2
>
>    required:
>      - reg
> --
> 2.43.0
>

