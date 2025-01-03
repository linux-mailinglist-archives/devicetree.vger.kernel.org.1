Return-Path: <devicetree+bounces-135361-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D5B04A00AEC
	for <lists+devicetree@lfdr.de>; Fri,  3 Jan 2025 15:56:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9689D3A40A7
	for <lists+devicetree@lfdr.de>; Fri,  3 Jan 2025 14:56:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C57571FAC53;
	Fri,  3 Jan 2025 14:56:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="c5fMnJCj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f180.google.com (mail-yb1-f180.google.com [209.85.219.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3E5E1FAC48
	for <devicetree@vger.kernel.org>; Fri,  3 Jan 2025 14:56:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735916176; cv=none; b=nNnC4WBj+vowGvacVZPNTm74XT1m+s6ZFQNNJm3OyixZ/RdPafsAZnhqwRxlDkOD1K4Ew449d7GzRQPwdX7JJ98INAjCXFkTdrqlwEw6J07w/Q+mFtQ8MQWZLlFa0qLmhRv3OnXG9mMqXJZvpU5WOBRQTzJ8FthMOGCklEZ2KlE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735916176; c=relaxed/simple;
	bh=GURb/R99L2QiRk4OoGAGO+BYfj1uJi7sjd1PiC4oDQo=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=rflArBnrBbuAKrUEP1OaHjitO+A0upUT7MtEUrdlamGK4m4JJv9LASyp8nH4QIkFubfmg3jIyzksoXv6AurWvMeoURWwovLpdbnHu/W3Ch79mOpGXOsRd4Due2LYqm4zM2jz2b+tYVXDaM9tD4H7bW1J0stTE70f7tFg4lPrzMQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=c5fMnJCj; arc=none smtp.client-ip=209.85.219.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f180.google.com with SMTP id 3f1490d57ef6-e398484b60bso15215107276.1
        for <devicetree@vger.kernel.org>; Fri, 03 Jan 2025 06:56:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1735916174; x=1736520974; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zhapTHXOL6nnyzfeibqtjCKKJ3noEWy6OsULxomBlLw=;
        b=c5fMnJCjeE27wNKbzScGC+mOZ/LXYZEZ+i8YkqIIn2b9AVTilzTSiGqJEr/y8vQdq5
         GzOQ+R3NyQeT//+osfERQneVz2y9Kp/aq9EBCaDYkofnQQLINL4VOQDxAty355ew/jYZ
         D9TuhjOUp2EZBryNvF8j+Qc5t5dvo11ScPFPp3osZNMUdKbUXSOUfq1wrR2Jr7TvOvpg
         UKi2tmKdR/D6uAIVA+W0Mrd7m0UrxYIqytezN1MHuw06a83OZWAF3taQFpZK/Zu0YLhY
         cbKNqrBRezDpDJfMKVa/Pz3DdZWsOkplP7V9LDICTo5MYXSHEkT+HxYy8IlQ6B669YVF
         iIPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735916174; x=1736520974;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zhapTHXOL6nnyzfeibqtjCKKJ3noEWy6OsULxomBlLw=;
        b=fRzmBA67Mo2U3nL8wYuAubgyvrn5XgsastAxInKXfmscAtzHwFGqfEJFzggjVVy36k
         U04v9SS3LzGKRLofYQPqiYeZlReAcoVSepDBonbl1z/bjR0aBkg4ExEQE9GGphZHiCC4
         48ZHShW4VuYxrFMF/iZUU1OavDtOUFvoZ9lK5oQhVndFlGMIKIZtppTuriHK6KglAIJa
         kSBdv1kD03LhviX5OyIdjqt+SIiXL815aLywzXMp9Ld4QafzoVWvKB3zAiC7n5CPrDE5
         rE7ReuxcC/+Zb1pTQh7kB6jxQ5YTofn/rU/ZfyQYTvKZ7QUQQlYjnSF80DHcP1mwrn6n
         H9sA==
X-Forwarded-Encrypted: i=1; AJvYcCUexNQVZcdVJ5+agdw2rtYeTGy4h5tkLutH4pjLnPFXtGY1rHla4nTg5av9yP6khG/X2Yf9g6G5IwU5@vger.kernel.org
X-Gm-Message-State: AOJu0YwrCwz9kGC0VgxNrkuJNJGHwR8SA9yi8YR3btFnHBYByUe2Mons
	kDxx/YBd5lWsGlaerqTT6R8HVtCJf3iZBgzWmfDZMAmlR88T3ZMMwVbHIFwU32aMh4e8q+X5sDu
	vyvXLyUSLCYPPK4qiwTUftVM4Jj0I2jLOWm5yLw==
X-Gm-Gg: ASbGnct80tF3bgQ0OjMAQjlWbobu/hmfaXyLLKSQ8D9lWyvsvui7PsOxP0MYTaQ2aZg
	s/tk506fqIuQTTVV07V+QFHsJQcywVm1p9ykCK4r06lVMi8CSMNEL0yhgOw9+Xw599iCrIWg0
X-Google-Smtp-Source: AGHT+IF8PgxghS0Yr8Fk32/LsnBMib2ycn/MjDyFQwGcJ2L9c+3xpdMG7fYH2+JRjVmj3XvaZJC4FTktLg/66x4obwQ=
X-Received: by 2002:a05:6902:1589:b0:e4b:3d71:346a with SMTP id
 3f1490d57ef6-e538c20774dmr30599997276.11.1735916173951; Fri, 03 Jan 2025
 06:56:13 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250103082549.19419-1-krzysztof.kozlowski@linaro.org>
In-Reply-To: <20250103082549.19419-1-krzysztof.kozlowski@linaro.org>
From: Sam Protsenko <semen.protsenko@linaro.org>
Date: Fri, 3 Jan 2025 08:56:03 -0600
Message-ID: <CAPLW+4ncvOxj7nmypsw-+Tvj_gk5AHoWVeE9YKL=W=8y_MTjUg@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: samsung: exynos-usi: Restrict possible
 samsung,mode values
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Jan 3, 2025 at 2:25=E2=80=AFAM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> "samsung,mode" property defines the desired mode of the serial engine
> (e.g. I2C or SPI) and only few values are allowed/used by Linux driver.
>
> Cc: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---

Reviewed-by: Sam Protsenko <semen.protsenko@linaro.org>

>  Documentation/devicetree/bindings/soc/samsung/exynos-usi.yaml | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/Documentation/devicetree/bindings/soc/samsung/exynos-usi.yam=
l b/Documentation/devicetree/bindings/soc/samsung/exynos-usi.yaml
> index f80fcbc3128b..5b046932fbc3 100644
> --- a/Documentation/devicetree/bindings/soc/samsung/exynos-usi.yaml
> +++ b/Documentation/devicetree/bindings/soc/samsung/exynos-usi.yaml
> @@ -64,6 +64,7 @@ properties:
>
>    samsung,mode:
>      $ref: /schemas/types.yaml#/definitions/uint32
> +    enum: [0, 1, 2, 3]
>      description:
>        Selects USI function (which serial protocol to use). Refer to
>        <include/dt-bindings/soc/samsung,exynos-usi.h> for valid USI mode =
values.
> --
> 2.43.0
>

