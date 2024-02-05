Return-Path: <devicetree+bounces-38594-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AE3F8499EE
	for <lists+devicetree@lfdr.de>; Mon,  5 Feb 2024 13:19:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 25843B2096A
	for <lists+devicetree@lfdr.de>; Mon,  5 Feb 2024 12:18:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5B1611AADA;
	Mon,  5 Feb 2024 12:16:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="VilCHDqt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f43.google.com (mail-qv1-f43.google.com [209.85.219.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 876771B7FC
	for <devicetree@vger.kernel.org>; Mon,  5 Feb 2024 12:16:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707135409; cv=none; b=n+w2M9YW/evHkpcULMveMhttxkoskJ5jW1CW2ERsrTY0fU6j309nzgjPb7l/gE1hx/iMZNuwUz2Dg1EV7dPZCdw40+z/0se2nzkO4GuaG8kbAHtzuGUQ7f79n8lYdxzEt/hYrFbcEEzyYYJLJsA9YG3QzWCbmwH6RCqPFUUqHC8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707135409; c=relaxed/simple;
	bh=tsXtjL3jKFMB+WSk0JpzVAP7MGhXmM9+c92lwZxU+TI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=p9njA2ra54UHG5wQkjqcXOPTWn60wAO3WBc1T/7meUIZiB+2OL1UsqPjbvvReZ8WyU59YUuF5Bv6UyNhpszEUOo2CUuks9LND4vXhoSaKv9q4JOq6RFWlQTZz3etqZzD38EoP9/3U9dZKhgFfK46gLM1Jv1yFGeUizqx981Til8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=VilCHDqt; arc=none smtp.client-ip=209.85.219.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-qv1-f43.google.com with SMTP id 6a1803df08f44-68c8d3c445fso8771586d6.1
        for <devicetree@vger.kernel.org>; Mon, 05 Feb 2024 04:16:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707135406; x=1707740206; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=sKcJxDs2U0CIXHnJF8C0W50g0s8I45Q1IJyWjWMP9gw=;
        b=VilCHDqta/dyZUPZ0b+rGNL2YWAW84uoPbkWa8oJ00IO6idt6tALD+c1LnL0utRC2x
         GewSye1Md71pxk1wBTyh7Waoh1HpUDOqEHD2s2U4Eo2BrxhStMqRAZsGMUZHnME7uJF9
         ijlDZE1RxLg+gdj0NtDNnk6DGJB9jOuRd/h+k79Kppg6SLgXmyPOKGxivxpSeIClJUmb
         enbirnT4Q3oWUtZR6zpNhWnwCJddpW/LGzLA+7ckUeOU/5YYliGVCXVtNb0L7vugsasU
         NyJgBkonN6yeYEmC+BIFgpOLo21OUqOZuw16ZnIF9ccA56giG0mTL4sM/Xd94sAxTkT8
         NoxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707135406; x=1707740206;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=sKcJxDs2U0CIXHnJF8C0W50g0s8I45Q1IJyWjWMP9gw=;
        b=cwTQXHz9eOVjHVllcx/g3iWHo4AOqs9asLKMSWldcQdhXOBnmwTO69KPzLcARvgDqj
         Pewswc5ahVO2u5KTkZVw9t1hMgoE8AY117HUP8KxHbyCzUuEdSS+7eKLhBrfBssLhyL4
         1Rov5M1sQVA5FQbLRm79ILBCjZAMrmJfLZSCVsj6C2g0JnFIhvMUW5rYEa6It9Kr1P4j
         KV21ukprjiyYyCztxAFVCqiEqvZWx8yn92WS5d9QBm7Uw5PyaKwqrneDie+twP8Bry/k
         wTnqfOc4XK4nooZoluUUihaGlwFEaO8A8u4t4jGNLqI6583Q+WHjgVoK3FPxVoD2QTps
         +9dA==
X-Gm-Message-State: AOJu0YwBBv53iISCmQbfEsezzyVBKyWUiTG0/Wm159+2/9u2Tgp1Czq6
	hEe0CD3hGVewNtnnPoZ8/gXGr6wsgOzhWT1EJMV0i5zkpJ4/5h6aopqQ7ilwbHNjP9v+NfrOn7o
	jYVVkG81WEVBETWbp05X3x1F8OR2YwK0PPpEgFQ==
X-Google-Smtp-Source: AGHT+IEH+Cx3grIh4RFwuym81P8SCvqndy7OV48SZ4DoGUqzDfRuEgpFnLJzR0P8Lq8xfGiMsEUmLLlpG0IRRPH8hdM=
X-Received: by 2002:a05:6214:410e:b0:68c:89e2:66a0 with SMTP id
 kc14-20020a056214410e00b0068c89e266a0mr7904983qvb.39.1707135406395; Mon, 05
 Feb 2024 04:16:46 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240201172224.574238-1-alexey.klimov@linaro.org>
In-Reply-To: <20240201172224.574238-1-alexey.klimov@linaro.org>
From: Peter Griffin <peter.griffin@linaro.org>
Date: Mon, 5 Feb 2024 12:16:35 +0000
Message-ID: <CADrjBPpm1LrZNxd+uA_xrBp7_vojCnKKEeyQ5ambcBE=snPJOg@mail.gmail.com>
Subject: Re: [PATCH 1/4] dt-bindings: hwinfo: samsung,exynos-chipid: add
 gs101-chipid compatible
To: Alexey Klimov <alexey.klimov@linaro.org>
Cc: krzysztof.kozlowski@linaro.org, alim.akhtar@samsung.com, 
	linux-samsung-soc@vger.kernel.org, semen.protsenko@linaro.org, 
	robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, klimov.linux@gmail.com, kernel-team@android.com, 
	tudor.ambarus@linaro.org, andre.draszik@linaro.org, saravanak@google.com, 
	willmcvicker@google.com, arnd@arndb.de
Content-Type: text/plain; charset="UTF-8"

Hi Alexey,

On Thu, 1 Feb 2024 at 17:22, Alexey Klimov <alexey.klimov@linaro.org> wrote:
>
> Add "google,gs101-chipid" compatible string to binding document.
>
> Signed-off-by: Alexey Klimov <alexey.klimov@linaro.org>
> ---

Thanks for your contribution.
Reviewed-by: Peter Griffin <peter.griffin@linaro.org>






>  .../devicetree/bindings/hwinfo/samsung,exynos-chipid.yaml        | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/Documentation/devicetree/bindings/hwinfo/samsung,exynos-chipid.yaml b/Documentation/devicetree/bindings/hwinfo/samsung,exynos-chipid.yaml
> index 780ccb5ee9b4..b1d933808b6c 100644
> --- a/Documentation/devicetree/bindings/hwinfo/samsung,exynos-chipid.yaml
> +++ b/Documentation/devicetree/bindings/hwinfo/samsung,exynos-chipid.yaml
> @@ -13,6 +13,7 @@ properties:
>    compatible:
>      oneOf:
>        - enum:
> +          - google,gs101-chipid
>            - samsung,exynos4210-chipid
>            - samsung,exynos850-chipid
>        - items:
> --
> 2.43.0
>

