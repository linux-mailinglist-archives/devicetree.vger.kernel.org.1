Return-Path: <devicetree+bounces-199208-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C410B0FEBE
	for <lists+devicetree@lfdr.de>; Thu, 24 Jul 2025 04:24:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 80CA4188EDA1
	for <lists+devicetree@lfdr.de>; Thu, 24 Jul 2025 02:24:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4181715ADB4;
	Thu, 24 Jul 2025 02:24:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="aosQesvb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f170.google.com (mail-yw1-f170.google.com [209.85.128.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8BC722E63F
	for <devicetree@vger.kernel.org>; Thu, 24 Jul 2025 02:24:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753323855; cv=none; b=hF3bIQfGamHWWTVC+PciqvhtXqPJOE8nTV0+hz3BJ7LMR552zWp2xY4FNKCXm+hEFa/14BFbAURNBMr+5Oz5qtizsM6ewAG4husNBarv4OBhkE+FdHAQhMbfI6uMRi+nQPXxxvvSCLmfEezEQlzn1AN/K65w0M/v9KXlXIo3eiQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753323855; c=relaxed/simple;
	bh=tOs4YYP2lGgetYVk/Z+31oGgEulwyZYfySAc44/5prU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Ha/dSG2R7tw3/2K7ghjEW2g5ssS9stLTIgMeExISrATR27JIFsds0SzpQvVIsNZh5RBLbxEd6JdlfZ8lebPAFwtyfkDfKRCcKxJhM39B3gHDPsmgUgacqAvviJkMocnOuYpn8ZwNM4rVbSjPqzBo/18cRvFpRK49vMwG5KJGhMU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=aosQesvb; arc=none smtp.client-ip=209.85.128.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f170.google.com with SMTP id 00721157ae682-70e1d8c2dc2so5014337b3.3
        for <devicetree@vger.kernel.org>; Wed, 23 Jul 2025 19:24:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1753323852; x=1753928652; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=plbqbjhGD5ArB2K1OZe2qy+YoPX7JAw+94CxrkAAtgI=;
        b=aosQesvb1RN/bDlK43fg3LwvUKbEDliKq1AklTPGR6xjOoempj0Iwx9vkCg7oNC34C
         ZWLVP2E/dik3xZekAlijgGGIRtqh518uCede6KZxHcni8yQWbmhYbSeZufdoJEB/g1Ui
         izBexMdIgAojlerNAfPvFbl+UY4svhAK1jNokq3wNf2FxJBmc1FRDS0Mm9V6OnK85V+H
         c8b9syAyUqsq7YNwf8WKc+AQ4Zo8x43B0KYUBg20faKATnQt1ZQOOjXhnZOAD+lqvHfN
         2zOQaeEq7RUYDd5+IOL1yaNUuv31qfXfzpszgyBdDftUrA9Wf8i8+yrXuUjhk5VhXH1o
         oiVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753323852; x=1753928652;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=plbqbjhGD5ArB2K1OZe2qy+YoPX7JAw+94CxrkAAtgI=;
        b=mqwaq0nLtROJHJumctmzViqPMigprONwN2rh4WwPhpE5aXWORcIa1P2VRqHlg2UkrG
         wwlezNjIX6JXDINLRalqdbrSgYQBK9KBfksbMqRGPnAUTvnY/+JK70nesEFtVsA6WtXR
         BTbD5UAdOD8OFrWrf1MLAefIPAxBI8ljRc3C+9OztvZZkZ7hSR9W0n592gTXwP1JN/3L
         sQbN6Nx4a7nQxfniP75GSk9Eutau6xZIgtLHHa7QcaQwvrurbFriTCrQJ9tkUhIbXZbY
         XVmTvSQjXU1cKR8n1yxYjED6yK32XsdjweV4cYyUQlTTRcEK5eAOG25Gi6bo6P+bSSD8
         tceQ==
X-Forwarded-Encrypted: i=1; AJvYcCVJ16imx2zSsQb5AGvMD99FVPz48Ns9o7m1GeXVe1YZ3XAFNPMO0eKEmofGFrL4m3nI+VNfJ3Lw+LxI@vger.kernel.org
X-Gm-Message-State: AOJu0YzLmRCe3x4dOvmJvvvarjQVLN6AFz9mFiTssnVYKXoV1ETl8xIi
	r+/c3zXXjTvdwcZOY6F3YYbcLMCHeBprg8pY/IqrQz9KkHRHfQh8C2+Fps/HtQ/M+ov3I1KV7p+
	YeoyyzAiGARf9PNJtwnxYUJxL0ZaiD0I2BsWdiaM14A==
X-Gm-Gg: ASbGnctR9n2lwsXva0edaC40TSJqgRfhkaRAAzqBJKG+AuDLCFQ1K5mx6WKpyApS0s2
	ye08Rd+8ELSuB44mtau8rkzx88wbItK3NfoTkgzxsB1gLO+hmIRnzf1THuP2RtDc6GVd6Qf/d4R
	KuvIFdGwCLiLzmD2WeqA+dLZhrULfPdBsOkjxQzCHe1+9wPR2Z5Vxeu5nf3Wx0IvjTU0fcZ0sUt
	iVO3wQ=
X-Google-Smtp-Source: AGHT+IFLCRGVWPBVKenBrgCb8KAsi3QO1NHPmUt4DTtA6N603DyqDpRgB5QVxKqVTa0yz2Twj20zCixVG7xRGCICKmo=
X-Received: by 2002:a05:690c:7109:b0:719:635b:a024 with SMTP id
 00721157ae682-719b414973dmr61644717b3.5.1753323852459; Wed, 23 Jul 2025
 19:24:12 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250722121037.443385-1-ivo.ivanov.ivanov1@gmail.com> <20250722121037.443385-2-ivo.ivanov.ivanov1@gmail.com>
In-Reply-To: <20250722121037.443385-2-ivo.ivanov.ivanov1@gmail.com>
From: Sam Protsenko <semen.protsenko@linaro.org>
Date: Wed, 23 Jul 2025 21:24:01 -0500
X-Gm-Features: Ac12FXxZX8EzAUJNlTWvjXuwV24vStrDA_xIZ9oDwGDZ1h66dojGNIklv72yNkE
Message-ID: <CAPLW+4n1kYpGDM=VLgcXU0acxgi_8yY7mv5ty_42fhCOoctL5A@mail.gmail.com>
Subject: Re: [PATCH v1 2/2] dt-bindings: soc: samsung: usi: add
 samsung,exynos2200-usi compatible
To: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
	Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, linux-samsung-soc@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Jul 22, 2025 at 7:11=E2=80=AFAM Ivaylo Ivanov
<ivo.ivanov.ivanov1@gmail.com> wrote:
>
> Add samsung,exynos2200-usi dedicated compatible for representing the USI
> of Samsung Exynos 2200 SoC.
>
> Signed-off-by: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
> ---

Reviewed-by: Sam Protsenko <semen.protsenko@linaro.org>

>  Documentation/devicetree/bindings/soc/samsung/exynos-usi.yaml | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/Documentation/devicetree/bindings/soc/samsung/exynos-usi.yam=
l b/Documentation/devicetree/bindings/soc/samsung/exynos-usi.yaml
> index 4ce871676..bbf6d3b2f 100644
> --- a/Documentation/devicetree/bindings/soc/samsung/exynos-usi.yaml
> +++ b/Documentation/devicetree/bindings/soc/samsung/exynos-usi.yaml
> @@ -36,6 +36,7 @@ properties:
>        - items:
>            - enum:
>                - google,gs101-usi
> +              - samsung,exynos2200-usi
>                - samsung,exynosautov9-usi
>                - samsung,exynosautov920-usi
>            - const: samsung,exynos850-usi
> --
> 2.43.0
>

