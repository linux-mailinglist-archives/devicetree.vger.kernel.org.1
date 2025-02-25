Return-Path: <devicetree+bounces-151060-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AD11A4447E
	for <lists+devicetree@lfdr.de>; Tue, 25 Feb 2025 16:34:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5ECE018923ED
	for <lists+devicetree@lfdr.de>; Tue, 25 Feb 2025 15:34:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C7A4215B102;
	Tue, 25 Feb 2025 15:33:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="LqH6ahKO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com [209.85.167.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE62313CFA6
	for <devicetree@vger.kernel.org>; Tue, 25 Feb 2025 15:33:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740497615; cv=none; b=ZbtLEl7FstrZYElxj34YlaXhXGM2PKPRKhIF3+DtN9lBBhUZb0/TarmKKHOO5HWn6pQjWm2KJGbz8TgL67HRwUGJ5MvQzyXM2XvBNSLaxrAxcwwjZCAES75jdSesSe8thJsYTmlTeklqLjjGvGuWRVCHrxSW/2dyiiQhc9rpezY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740497615; c=relaxed/simple;
	bh=R6pBXTVHR9QU6qXSdZSZAmxkEn4hY2E0r+sj+/bLfjs=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=HflF2EBLOCJA1poywRvUe/oRrPErcgihfVa5Tx9bjqK0wr0hCLx7Dkxt0ofUvIM2krp75TKI49yo5aKaMzYie7J2SWtfKfZCwzxCFp5n4JZeo8PL7O90Vx/GO8beogZrAFODBvzbWSw4sCk0OQqnGSArVwYbIVM8TD7QjpQ0y+w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=LqH6ahKO; arc=none smtp.client-ip=209.85.167.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f51.google.com with SMTP id 2adb3069b0e04-54838cd334cso4755164e87.1
        for <devicetree@vger.kernel.org>; Tue, 25 Feb 2025 07:33:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740497611; x=1741102411; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=R6pBXTVHR9QU6qXSdZSZAmxkEn4hY2E0r+sj+/bLfjs=;
        b=LqH6ahKORLr0yYrijSSt946oeSNCRJzZHxtzK2hOxz9NR7IwGDYp39D73JP7UR2nCj
         idOVLhmLeC1JvqBq2mk2t01Ct1DloqTSqP/dmQ/ZdbSYeA+CJzSJuiz3EPwPgP4qoX+R
         8uly+seyzEh/g7GZEbqNP+0GD8GQ2UN1y+1Ht3Cf8+uE2igQCoMmS3Of0vFWa3Wglurf
         YLiWraylHT4fbhsYWot7iJI25ddUSvIP/pmsFGnffs/U1y9L+H6/e9RP618X1rzpfjPl
         JRWWjP7hsfh4XzNqhFHYEOyEWkCrhm6RPgSqKQYNw9K4lTWYKNDOc10lf9w8vQ/ahAxJ
         5ZGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740497611; x=1741102411;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=R6pBXTVHR9QU6qXSdZSZAmxkEn4hY2E0r+sj+/bLfjs=;
        b=L2ANqnfzaDoWHWCXG1/NmWB/BolKVN6dH5UBRsYSZ1wsuTXgaa9aKtVYq0+u35LomH
         uppMi0BFvfid+MSI7F/1t9w8vLn6ekeoHnE640qIfsXPERABWFyy4AxahrLSUV/kwHbj
         rvGXhWX36xfToRYi6WPl+moXhtSiHT8oT1jnd8VmEW98q+BL2uxA1f7qasJh3CLKYguO
         EVBa/u4hA/GZ7rHE140teJL0jxCqjsbzLVthJ88aHit1YKN89mFu6sD42ZVzcaN5Al0+
         QjmuR2EgiPZxegIUYVaigpF0QKtYs0QZTiA3Sv9Gmem2cLj38LAxVCfJpFT4M8PIUKxS
         mDOQ==
X-Gm-Message-State: AOJu0Yyui62VjUP7Er+2lSk9FLaiJpyuShmAT6Np3+EK/zjacQzSTWvb
	Cf0uvRDGuUVe26eU94/X72w3dcj4F3n0vZFoYKrMDoVoLp7YH3eNqXayqUWM5fxOsLhB0N8AmMV
	6wf4W4HloKqrcAynzRE+TuC1/UA5AoacUBOoKtw==
X-Gm-Gg: ASbGnctHH4BK45bzESQnxjRFwyUA1I5BjwVA4CLcDztTkHxrIb17iP0wo01DiTWTfYE
	iOBZozl9onUcPd8C62tkcuR3W5Qy0rQr/HNYZQqZObczkhB/AibsKz/5Hu/XncEJIKzvlbiYFv0
	6aFKnxxWA=
X-Google-Smtp-Source: AGHT+IEV90oaeu9UQxuAox5ozndHtPuNH0Ob263aEQeN5znD9xNa5kzTKRICNt8bxpmQgEzKtDBqpOJObQ7W05CiKtg=
X-Received: by 2002:a05:6512:e97:b0:545:c1e:6603 with SMTP id
 2adb3069b0e04-54838f7ad45mr6306343e87.50.1740497610771; Tue, 25 Feb 2025
 07:33:30 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250221180349.1413089-1-vincenzo.frascino@arm.com> <20250221180349.1413089-3-vincenzo.frascino@arm.com>
In-Reply-To: <20250221180349.1413089-3-vincenzo.frascino@arm.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 25 Feb 2025 16:33:19 +0100
X-Gm-Features: AWEUYZmJsXDo98RLls1F3CtT0bdN8aQhWcPtJx3KNfEkQgsWeFCVIwFiC9YVgbc
Message-ID: <CACRpkdZ+6WHJ2N3vbzPUXSj9Y86nPwkg90uwCpVQoRZY_KbLTg@mail.gmail.com>
Subject: Re: [PATCH v7 02/10] dt-bindings: arm: Add Morello compatibility
To: Vincenzo Frascino <vincenzo.frascino@arm.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Liviu Dudau <liviu.dudau@arm.com>, Sudeep Holla <sudeep.holla@arm.com>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, Russell King <linux@armlinux.org.uk>, 
	Will Deacon <will@kernel.org>, Mark Rutland <mark.rutland@arm.com>, 
	Jessica Clarke <jrtc27@jrtc27.com>, Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Feb 21, 2025 at 7:04=E2=80=AFPM Vincenzo Frascino
<vincenzo.frascino@arm.com> wrote:

> Add compatibility to Arm Morello System Development Platform.
>
> Note: Morello is at the same time the name of an Architecture [1], an SoC
> [2] and a Board [2].
> To distinguish in between Architecture/SoC and Board we refer to the firs=
t
> as arm,morello and to the second as arm,morello-sdp.
>
> [1] https://developer.arm.com/Architectures/Morello
> [2] https://www.morello-project.org/
>
> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

