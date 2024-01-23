Return-Path: <devicetree+bounces-34384-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 013AB83991F
	for <lists+devicetree@lfdr.de>; Tue, 23 Jan 2024 20:07:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id BDFFBB2BCEF
	for <lists+devicetree@lfdr.de>; Tue, 23 Jan 2024 19:06:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8BB32129A75;
	Tue, 23 Jan 2024 19:00:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Gv1+sAfN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f175.google.com (mail-pg1-f175.google.com [209.85.215.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AFEF129A70
	for <devicetree@vger.kernel.org>; Tue, 23 Jan 2024 19:00:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706036439; cv=none; b=JEchdQEN6/yzFhfU/hPJmyKFmvj5capgl0P+5I4E7Bz9UHh6xasAUWYJs/8TB4zzzdJNSAoakWxvFVV+vlONX5yJEhS7g1mnPriWm6VYtzraz0IPuDuurnCEz32YMtWYqJd6TR4O4BL/h8x/QpI5bxe+iFcSxUoaRE584U0JcI8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706036439; c=relaxed/simple;
	bh=ZKIUReDJHL8PnaXbcu3q7fLjNP7xT5ogthRdWpyN2Kk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=JkS1eOH7Nd57B2qCyWEWBKU4mib7b6je4HtWqmtQKhwFjZ8RTArCLxJuSP47JP2q+BuHRCjgaQtBJQz1T7DI9wYVzozyt9z8VrL7QWdqiu//9DDt7XNqEdGUFMXWOf9rTn9gIERKSmLbuIpb0Ykr3UnwUM0CCseGA7R3HJS/n7w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Gv1+sAfN; arc=none smtp.client-ip=209.85.215.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pg1-f175.google.com with SMTP id 41be03b00d2f7-5cedfc32250so2474269a12.0
        for <devicetree@vger.kernel.org>; Tue, 23 Jan 2024 11:00:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706036437; x=1706641237; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WmD7dH3qV8pv67RKjqLHiAxOFddNPr4ehUigPqKBvas=;
        b=Gv1+sAfN9oQ3ohxET0P9VDHpRQAScBVhCmZBc7zYVHpZsHYZUKmv/zdyjt9WEKgZUC
         zxPwGNyddiGL1WMgPYI5ISVdReZtuDL6NuVZg/OrJLfog33zn6lejW9cdM1B3MuNpxGP
         mCDO83y6C53ZboG0jqDd8C2WGM2c2ykc4OrtNLlQk+90cOZOKugEbccgQbAbpGhJk0xD
         Zu6ENNWKGnAQfQz12L7ds3RmjzbdWm0HJLGoEP14AHgr/Z8dpmiCaXJHWWXNEWXE+3nY
         mywZEP2Ckp1jT5UKZp0arJL0mRXqfef5ok6DGc9RZG4hs/AfijlhgWmiymEjVcN/WeP2
         xcbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706036437; x=1706641237;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WmD7dH3qV8pv67RKjqLHiAxOFddNPr4ehUigPqKBvas=;
        b=Q7Py00/RIjZTqdIEBr+n5nKm070mW8SAcwzueLwo3nVyV4Nk12uqBW4KKdDq2dJBQo
         ThWt3pTKEAqDnICUl4NAT6dgq37bBxq4AMKvM5HO29anBOXwWOB9dVT6sCb638urH5qc
         CNQgY5h+24ziK89nuPkquJNdB1BvjdV+TWjzO4aCzcLhjXwaFe8f6KrnHnjotf7i/924
         qA7xPSHQA/CyGuMKxZK1vv8XjT8FGMa5IcoelcfqSZ+j3sUcZDOW7nfNUYWG04F32Prl
         fYRgmgS2JYsZfpxRWqJ3+QbgHDKc+zP740x8pSdAGWQ+sk2VxSkzLNj+hqDQH6YZ9Irq
         ce9w==
X-Gm-Message-State: AOJu0YwDVJXUrEHYSbs0GJxHZjLLyP+Q8czfdxDZXzrkn1tMbXIZEK6m
	BB9TJXQYQqUDpgu/N2G9ofmJReKT88Ygtjxx4LWB4+w5wXou/sNsfEm5RS52LIjj4f2CYiH21mJ
	FX1cp011hsPTmutDcK8T5zmkecQ8E+6Vp0kuIGA==
X-Google-Smtp-Source: AGHT+IFtt2avi3/WFpubHex5rv8MfO7wLgxXcE6UTmcf3PTwqa8lOjnkVcGgZpxjZjETxZcvz2YZkN830u6srUK93C4=
X-Received: by 2002:a05:6a20:3d95:b0:19b:1da3:cb99 with SMTP id
 s21-20020a056a203d9500b0019b1da3cb99mr3801518pzi.5.1706036435251; Tue, 23 Jan
 2024 11:00:35 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240123153421.715951-1-tudor.ambarus@linaro.org> <20240123153421.715951-22-tudor.ambarus@linaro.org>
In-Reply-To: <20240123153421.715951-22-tudor.ambarus@linaro.org>
From: Sam Protsenko <semen.protsenko@linaro.org>
Date: Tue, 23 Jan 2024 13:00:24 -0600
Message-ID: <CAPLW+4=dtRQT3QMfXLPE_0=TfANTZVa-Jm1Kt9CVTH64hUsGCA@mail.gmail.com>
Subject: Re: [PATCH 21/21] MAINTAINERS: add Tudor Ambarus as R for the samsung
 SPI driver
To: Tudor Ambarus <tudor.ambarus@linaro.org>
Cc: broonie@kernel.org, andi.shyti@kernel.org, arnd@arndb.de, 
	robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	alim.akhtar@samsung.com, linux-spi@vger.kernel.org, 
	linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-arch@vger.kernel.org, andre.draszik@linaro.org, 
	peter.griffin@linaro.org, kernel-team@android.com, willmcvicker@google.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Jan 23, 2024 at 9:34=E2=80=AFAM Tudor Ambarus <tudor.ambarus@linaro=
.org> wrote:
>
> I'm working with the samsung SPI driver and I'd like to review further
> patches on this driver. Add myself as reviewer.
>
> Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
> ---

Reviewed-by: Sam Protsenko <semen.protsenko@linaro.org>

>  MAINTAINERS | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 8d1052fa6a69..b9cde7ed8489 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -19404,6 +19404,7 @@ F:      include/linux/clk/samsung.h
>
>  SAMSUNG SPI DRIVERS
>  M:     Andi Shyti <andi.shyti@kernel.org>
> +R:     Tudor Ambarus <tudor.ambarus@linaro.org>
>  L:     linux-spi@vger.kernel.org
>  L:     linux-samsung-soc@vger.kernel.org
>  S:     Maintained
> --
> 2.43.0.429.g432eaa2c6b-goog
>

