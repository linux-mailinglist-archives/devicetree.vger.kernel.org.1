Return-Path: <devicetree+bounces-138131-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CA18A0BC30
	for <lists+devicetree@lfdr.de>; Mon, 13 Jan 2025 16:38:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6B5A4162063
	for <lists+devicetree@lfdr.de>; Mon, 13 Jan 2025 15:38:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AFA341C5D6E;
	Mon, 13 Jan 2025 15:38:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="pdMjRWGB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f182.google.com (mail-yb1-f182.google.com [209.85.219.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62DE329D19
	for <devicetree@vger.kernel.org>; Mon, 13 Jan 2025 15:37:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736782681; cv=none; b=Mzd2H8KfbF0ouYd2jIwqQmUnDqG0lqO9WWqA2RVTFTdNH6DakQRlHFLciKX1s3LQa9otEt9GXCiq8qYqDb4MbvIwiYysTqokvj0WP7HamRswk0C7a6VIf772vt/UySX5vAomhogx5h9rVNpDLzDNbxtjDdKtjOl6FZPf6xWJ6LM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736782681; c=relaxed/simple;
	bh=UgWOTZGuQDDiIxbJBPlqOCO2mm65GMRFIxvKgoDvxME=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=onQAPJdVl4XjY0wI1y5+gGMdJVnuM16EAfCSANsUeyyCPSbZIEZHoHBEdg2WpAcaP+Os+6Wk+mDxY+Iajz9xL/TDZrN5rLRSe1NhQZFAZLtq98Nw6LUO+4o/sUAxiFsnbIaIAazhQLIOYPtmC2N/Sz454+I6FZCmlCl3hEGZL3k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=pdMjRWGB; arc=none smtp.client-ip=209.85.219.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f182.google.com with SMTP id 3f1490d57ef6-e549be93d5eso7751218276.1
        for <devicetree@vger.kernel.org>; Mon, 13 Jan 2025 07:37:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1736782678; x=1737387478; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=WHmss5GuNuMPMuJLhtCwmXANZEgbIohfRiOzTjx30TE=;
        b=pdMjRWGBChwMkQSArt/FWlYOnKMAkNdm5rLxmczBuOHSYZ5QTQ82EajGzZheCAcC71
         GVBPA1PWx6B0znGYojwt8mLfGz2sdGtmBPrpfc9yB/43LHnHSsWKYqqxDJNy5fak62V/
         oJRH+t934TWoC4pWZOtidyhHKfPzvHFh2lCLkubETddcNFj/NCE/u0UWLxqUCNLQgeeM
         5INH7bQHNa+t69p0QXQRmmUKtqZoouOtW4G0McB68qhxOMPvW7A4sw3SD23Cdl70K1qL
         wsanF3+k9aCsz4AxLELOyu8cuVkrcsanKPq2O4k8ThFrpsYGGR9JKwGFe4yyaNvQtzT2
         RA8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736782678; x=1737387478;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WHmss5GuNuMPMuJLhtCwmXANZEgbIohfRiOzTjx30TE=;
        b=pjf/XmbHkOWmfKJ1Y2Zs7j4f/fpK0ewnarKS+OaxW128SIe+iAfnRxoEICuO8bNNlj
         0dEQasQXHVAZeVnD3EcgUQ7aLB4ArWSNurARr9kCIDe8RFJ/VkymjV9NC+BxfykeSVDl
         iBPjCOM7Q65CisYQca0qDUI+vEzTkLy0BL7bAiChGBHsWXBpNrDNrwjihmmwid1/St7J
         5I9TIhl3AQecsuTf/e68PtXQmJrPbF7eQI+5H4yB763Ll4mlsLI9uAo1AFTYqUvJjXr2
         CzuQu3zCKTe9qrrz8hksndwlRFHdriY5HzdBKXGQGu0dBcHPn8aeKeA3qiqXngo/m9aX
         meiQ==
X-Forwarded-Encrypted: i=1; AJvYcCW5T00pE7DwL/dhEBk8x4Vie4Cppv2fa7EwZsJPPBO2L25zZT96Nbs9bWDYpH05d97JmNZ2yGsIPmxo@vger.kernel.org
X-Gm-Message-State: AOJu0YynFqGaVpTHzB5BmK1g1IW7LrCghKbRTi0+ylwchjHdwpsz5Gva
	JwRa6sLZ7IPj2BGVWhK/ddBHz2vLMNSdPXKGKLY++/h5vQH4gcjBUxjt9F4snpgcx3pjkTkK+dW
	xKI9/mr1SdRKfz52caVOLal7+O6LbIpGU3DJBYg==
X-Gm-Gg: ASbGncus3i8o+K93PIwT+EKrfI2vCQE1JPNZPNqaOvGjiSR2WDQ96M57WM5mcM0GMmW
	l55iJVrY/3sGXp20uh1I85W24n1JCfThh6N04oJ4=
X-Google-Smtp-Source: AGHT+IHmfuzafpUqk3KxG+kn0+sH+vHEKlPScEseDnN/W27tVQ+3wEY9S4Ua75At7AAxf3Kwrj/jQOrBdgSbPpY4wvU=
X-Received: by 2002:a05:690c:3693:b0:6ef:5abd:d0d with SMTP id
 00721157ae682-6f530f28e53mr163298117b3.0.1736782678456; Mon, 13 Jan 2025
 07:37:58 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250105161344.420749-1-ivo.ivanov.ivanov1@gmail.com> <20250105161344.420749-2-ivo.ivanov.ivanov1@gmail.com>
In-Reply-To: <20250105161344.420749-2-ivo.ivanov.ivanov1@gmail.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Mon, 13 Jan 2025 16:37:22 +0100
X-Gm-Features: AbW1kvb6SL7ENMYcV-U0gwzZDQlxjULLo1-VKuQbPKeXd7cbjjP45Tg9iM2uUAc
Message-ID: <CAPDyKFoUajmhPu-xTzvjrMZUzqmECGXX-N-KLq=A6+hrwNuvWQ@mail.gmail.com>
Subject: Re: [PATCH v3 1/6] dt-bindings: mmc: samsung,exynos-dw-mshc: add
 specific compatible for exynos8895
To: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Alim Akhtar <alim.akhtar@samsung.com>, Jaehoon Chung <jh80.chung@samsung.com>, 
	linux-mmc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Sun, 5 Jan 2025 at 17:13, Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com> wrote:
>
> Add samsung,exynos8895-dw-mshc-smu specific compatible to the bindings
> documentation. Since Samsung, as usual, likes reusing devices from older
> designs, use the samsung,exynos7-dw-mshc-smu compatible.
>
> Signed-off-by: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Applied for next, thanks!

Kind regards
Uffe


> ---
>  .../devicetree/bindings/mmc/samsung,exynos-dw-mshc.yaml          | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/Documentation/devicetree/bindings/mmc/samsung,exynos-dw-mshc.yaml b/Documentation/devicetree/bindings/mmc/samsung,exynos-dw-mshc.yaml
> index 5fe65795f..ef2d1d7c9 100644
> --- a/Documentation/devicetree/bindings/mmc/samsung,exynos-dw-mshc.yaml
> +++ b/Documentation/devicetree/bindings/mmc/samsung,exynos-dw-mshc.yaml
> @@ -29,6 +29,7 @@ properties:
>                - samsung,exynos5433-dw-mshc-smu
>                - samsung,exynos7885-dw-mshc-smu
>                - samsung,exynos850-dw-mshc-smu
> +              - samsung,exynos8895-dw-mshc-smu
>            - const: samsung,exynos7-dw-mshc-smu
>
>    reg:
> --
> 2.43.0
>

