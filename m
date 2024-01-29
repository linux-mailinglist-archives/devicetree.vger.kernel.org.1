Return-Path: <devicetree+bounces-36160-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 738C9840115
	for <lists+devicetree@lfdr.de>; Mon, 29 Jan 2024 10:14:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id D3C90B20CE3
	for <lists+devicetree@lfdr.de>; Mon, 29 Jan 2024 09:14:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BA82654F9D;
	Mon, 29 Jan 2024 09:14:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="jlJYNiyT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f178.google.com (mail-qk1-f178.google.com [209.85.222.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2458554F8A
	for <devicetree@vger.kernel.org>; Mon, 29 Jan 2024 09:14:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706519672; cv=none; b=ZjelQ2rrDtSOLMtjOSw1CM8QAcViqF0Rmdj8KpsV9HH1kBIqCKnGgo5mzY3ioRw6ho3xs0L40W+h73Ndqe2Un9TK7Ad0y+bEPItHVal7KlTDolYgCZGNUWAhbmN+DoSzUftz4h2njPqkwHrj2fQKAvWEZhdevjxBBrCXenRQtgg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706519672; c=relaxed/simple;
	bh=vuRFhnAb0QvxdIswU7JMO3BMfaGNmH0kJhYkDLBQUeo=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=dOI6ONl3XTKEounh3DXBZsGKdkjXUdHP6l68isC0apR6tNgao0N41UNCzsPJY0UsLzEnAv86F74/mvVQTnPwoTdD2bQPH2ByARPszHmG63vPYZonZ0CFrcad6DFK5WCZw4YDyOMya/y2isPMYbkI9Kut3QiBkhqty1sncYLzJ4U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=jlJYNiyT; arc=none smtp.client-ip=209.85.222.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-qk1-f178.google.com with SMTP id af79cd13be357-783cd288ac5so226448685a.1
        for <devicetree@vger.kernel.org>; Mon, 29 Jan 2024 01:14:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706519670; x=1707124470; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mIls3X+c7u3FdSJgCYO346X8vHVfzQy7RDRpONBzCs8=;
        b=jlJYNiyTVvtCtg+W42yTvBOR+eF7IDtXW19YrGQoYR0fz9hYHWLMTooGXy68RIDP4O
         9L7diEFLbNwW8nEBkDTPXGR7SnXPSpb2dMhVcz1D5no8zUvizefhkfAmVYrsQKYs6gQm
         0UrZxQD7bHWBg0on7Ew3ftl+YiZ1ToVuQazzemK20U23e/fSi31AGCdeZqxepDoB4Yxo
         0grg5qzjVXXFl7lARcVN5qbqAU1T0AZHDYiQtZcDIsHQJnqkrWLeTXFhHrwROPR4CYhW
         OiHoiO2RN8E5nepxFGIAn7rEBFydbg1mP4UjVPKn8DeFPxvYbY6+46yD6V0I1Rwzp6JH
         y6Jw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706519670; x=1707124470;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mIls3X+c7u3FdSJgCYO346X8vHVfzQy7RDRpONBzCs8=;
        b=jFPIGpBzUXbpJcNV3RlvZ/FfxOt9waYKHsGBgc2NdxLPcsa8VJwn+5b3xea1LrBg9C
         pFAUI7frBt/TPRVFspYMt2YbM02HTyEzJMVJcY9OcFofWBxMmRlZmv9h64Ev+NLbO4BH
         hoYREcL0ORSG5yjdCEDsWcW35Omw1/7X5OK2yGdI23NDyQrBKcvPz7Ghx/UAyyiQd/2A
         R3XqYZd0zEBKXwj5sLeJjlIOosM0MA9WTn847jWX0cjtBLswUnxuRbBNNNIRXLt+ayPd
         60Wrs44mEpLWw4oXrG9QJOJlRkfeZwXME9FUl0mfaneYRIKDjUjNbW8TijyvdO4H3Z0b
         9y6g==
X-Gm-Message-State: AOJu0Yx6bPXn3vYKIS1uY87FRqn6nC23Z72kbTQk8emXtx7MyU3N5cnT
	TRUCRQrQzRrXA+iLZEJo0+vevZ7lMPD3Tc/CU7OGmTjcoSTPj+JgvOyTRjEUOWJ9VjSNxmdq3ER
	CfELQiU4Z0YoAaaSiQioI9yS4MgX/Jmh1FXlNVg==
X-Google-Smtp-Source: AGHT+IFOcIWuTItyZKqMTQd4K9HAAjevtLTdNnIelgtBGxUq4gOyJJ5yPRFVzaiTjsZLBGg/m4xqzyKcXshN7qzswkE=
X-Received: by 2002:a05:6214:1927:b0:68c:4523:cb74 with SMTP id
 es7-20020a056214192700b0068c4523cb74mr2758364qvb.21.1706519670005; Mon, 29
 Jan 2024 01:14:30 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240127001926.495769-1-andre.draszik@linaro.org> <20240127001926.495769-2-andre.draszik@linaro.org>
In-Reply-To: <20240127001926.495769-2-andre.draszik@linaro.org>
From: Peter Griffin <peter.griffin@linaro.org>
Date: Mon, 29 Jan 2024 09:14:18 +0000
Message-ID: <CADrjBPpOrxczkLxeo7QpaOGy31SUriKUQmQe9QcRQKniEXg99g@mail.gmail.com>
Subject: Re: [PATCH 1/9] clk: samsung: gs-101: drop extra empty line
To: =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Cc: mturquette@baylibre.com, sboyd@kernel.org, robh+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	linux-kernel@vger.kernel.org, kernel-team@android.com, 
	tudor.ambarus@linaro.org, willmcvicker@google.com, semen.protsenko@linaro.org, 
	alim.akhtar@samsung.com, s.nawrocki@samsung.com, tomasz.figa@gmail.com, 
	cw00.choi@samsung.com, linux-arm-kernel@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org, linux-clk@vger.kernel.org, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sat, 27 Jan 2024 at 00:19, Andr=C3=A9 Draszik <andre.draszik@linaro.org>=
 wrote:
>
> There is an extra empty line here which doesn't exist in any of the
> other cmu code blocks in this file.
>
> Drop it to align cmu_top with the rest of the file.
>
> Signed-off-by: Andr=C3=A9 Draszik <andre.draszik@linaro.org>
> ---

Reviewed-by: Peter Griffin <peter.griffin@linaro.org>

>  drivers/clk/samsung/clk-gs101.c | 1 -
>  1 file changed, 1 deletion(-)
>
> diff --git a/drivers/clk/samsung/clk-gs101.c b/drivers/clk/samsung/clk-gs=
101.c
> index 4a0520e825b6..27debbafdce4 100644
> --- a/drivers/clk/samsung/clk-gs101.c
> +++ b/drivers/clk/samsung/clk-gs101.c
> @@ -25,7 +25,6 @@
>  /* ---- CMU_TOP --------------------------------------------------------=
----- */
>
>  /* Register Offset definitions for CMU_TOP (0x1e080000) */
> -
>  #define PLL_LOCKTIME_PLL_SHARED0                       0x0000
>  #define PLL_LOCKTIME_PLL_SHARED1                       0x0004
>  #define PLL_LOCKTIME_PLL_SHARED2                       0x0008
> --
> 2.43.0.429.g432eaa2c6b-goog
>

