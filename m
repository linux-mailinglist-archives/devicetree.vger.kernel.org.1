Return-Path: <devicetree+bounces-62675-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A47C8B1EF9
	for <lists+devicetree@lfdr.de>; Thu, 25 Apr 2024 12:17:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8BDE51C2174B
	for <lists+devicetree@lfdr.de>; Thu, 25 Apr 2024 10:17:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D682D126F02;
	Thu, 25 Apr 2024 10:17:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="oy+eKMjh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f48.google.com (mail-oo1-f48.google.com [209.85.161.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B84486652
	for <devicetree@vger.kernel.org>; Thu, 25 Apr 2024 10:17:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714040247; cv=none; b=a1aBHNA7e1pX7I8pe/QQlzd0IgN2R9192Xe9CJtR9LtnagwQtclt8k0BuCtkYiDJg+ByJ3IINlPn3wuBeg5oWhyWBnbAq/6LFCRSTgokroHfPpFw4ObWGKTY05QqbpE2WW2BkGSaz40htUP30vcwVWk/tkW/OU5jtjGHDjMZtoU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714040247; c=relaxed/simple;
	bh=BPeJNPgeuu5yEfnxBU92okYv01EBLJ2vMEzm8JSUpts=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Toi27hWEI79Dz+81MtBfvOE9BNje/3fF7eGQ1vcTJz9aw4V5THihyqfWwn4Jbvn1zXzDJ+xFvj24GQkPtJUA6fHmyglomREMxzmgnxMRfwIjoAkOJiFE8cIhYb35P/lM0vwy4X+hGerfILNd4b/Xlj2Qw/xBikO+AhcfDZRYO8U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=oy+eKMjh; arc=none smtp.client-ip=209.85.161.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-oo1-f48.google.com with SMTP id 006d021491bc7-5af2358c7e5so469042eaf.0
        for <devicetree@vger.kernel.org>; Thu, 25 Apr 2024 03:17:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1714040245; x=1714645045; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6fgWl3/LS6xcTJ1My1IOi3hltkpdLJpEDvFYJw1KZLA=;
        b=oy+eKMjhLlRSjIcb30pEN4R7ya29RGHbBagREnBGXUVYzonkCTxEuxPUGoOe1/jJ2I
         i3iHcMXnc1Uix8dpw7iXDkjMzJU6j1kKwqmx4nX5EwwPJwFzbED6ZngUAhAcOJgKaxL6
         Xqkr1n1HyjUuQfKiUh+aJHZFMOg+9ABtRRhqd9vH2HioBkShVE4wOHj8jqhgjnRHBTgT
         EZ0rJo76U1FLvctqif4uZwf4bxD7nendzevtMeHd3Xom8uP0rFLHjCAOijCKQCSKtaji
         oZ3iGQYPvBfggg40vffxa+NWj6IDnPnrws12CzaNdb0KQp1g75xQ9reJoskBEJE4we0Z
         UoEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714040245; x=1714645045;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6fgWl3/LS6xcTJ1My1IOi3hltkpdLJpEDvFYJw1KZLA=;
        b=ArhjM5nK8gp3+D+JzbJfE5eleGWo1/z7JlazRe/cks+v9vLWJAR+UnsKPc7BIpfw7K
         i9TL0JN8AF61cTUlhP9qCe1A2DFW51d6xZHYrun+bNqyPP4PvC04TByHqC1R5qttgtcD
         ZMWFTZxjl3m/DEe5MHCsYiXCE57Gf+z2lviR1dA+TE+toGXr6N79h9ukiX1M76SI3shR
         irfvaWKOHzF86att46uN9WLeUu5NSTSPabUUBnbKEFac4Rm0Ehl/PHkZM9u67cq58TOC
         8umqXkInCKm0zBX8+QBA71UyAu2H5YoN1C1iCvvi/d7hqPbS6blnxNI2xr9PLZPUEMeH
         h72w==
X-Forwarded-Encrypted: i=1; AJvYcCVosN0pAzEKcaxs0YOgUWLQFaQcFRFdeFle0PCvPebi25TtwfweuK6N/0zlKasywekh9TcPy1cxaBLfJYnO+cTc+1u1zmMW4l7Qug==
X-Gm-Message-State: AOJu0YxQkDxIFMePJlQZFb2cEeC9jKNZWaIXCzGP/wVtXUCUPBuOwKVt
	B62+aP9u06Eqq1fPDQGkitE6Re6GZevXao6Om0ctOU01Reupn1Q91Ww5BRXKqqdBtMeussOP07V
	oxRPTdxUQc+Z03N43i+H2HO9DRvdb5HEk3Cm4oA==
X-Google-Smtp-Source: AGHT+IEtS55U01N1UHgWrnso9WLvSZJG6q6OApUI854HVfe3yLiduHtXnsLcr3c8YSqi3fNxiU17jRDnA4GPIckhyV0=
X-Received: by 2002:a4a:987:0:b0:5ac:9efc:3b02 with SMTP id
 129-20020a4a0987000000b005ac9efc3b02mr5567163ooa.8.1714040245481; Thu, 25 Apr
 2024 03:17:25 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240423-usb-dwc3-gs101-v1-0-2f331f88203f@linaro.org> <20240423-usb-dwc3-gs101-v1-2-2f331f88203f@linaro.org>
In-Reply-To: <20240423-usb-dwc3-gs101-v1-2-2f331f88203f@linaro.org>
From: Peter Griffin <peter.griffin@linaro.org>
Date: Thu, 25 Apr 2024 11:17:14 +0100
Message-ID: <CADrjBPoyY2p1pwpO-wgMD_o6o1YjEAt_nmAnaniASHNoimE2EQ@mail.gmail.com>
Subject: Re: [PATCH 2/2] usb: dwc3: exynos: add support for Google Tensor gs101
To: =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Alim Akhtar <alim.akhtar@samsung.com>, Thinh Nguyen <Thinh.Nguyen@synopsys.com>, 
	Krzysztof Kozlowski <krzk@kernel.org>, Tudor Ambarus <tudor.ambarus@linaro.org>, 
	Will McVicker <willmcvicker@google.com>, Roy Luo <royluo@google.com>, kernel-team@android.com, 
	linux-usb@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, 23 Apr 2024 at 21:19, Andr=C3=A9 Draszik <andre.draszik@linaro.org>=
 wrote:
>
> The Exynos-based Google Tensor gs101 SoC has a DWC3 compatible USB
> controller and can reuse the existing Exynos glue. Add the
> google,gs101-dwusb3 compatible and associated driver data. Four clocks
> are required for USB for this SoC:
>     * bus clock
>     * suspend clock
>     * Link interface AXI clock
>     * Link interface APB clock
>
> Signed-off-by: Andr=C3=A9 Draszik <andre.draszik@linaro.org>
> ---

Reviewed-by:  Peter Griffin <peter.griffin@linaro.org>

regards,

Peter

