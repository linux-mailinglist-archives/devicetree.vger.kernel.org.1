Return-Path: <devicetree+bounces-109497-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 761879968AE
	for <lists+devicetree@lfdr.de>; Wed,  9 Oct 2024 13:24:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id D9C6CB23160
	for <lists+devicetree@lfdr.de>; Wed,  9 Oct 2024 11:24:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DB20F191F7C;
	Wed,  9 Oct 2024 11:22:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="bQkj8Ab2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com [209.85.208.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16355191F8A
	for <devicetree@vger.kernel.org>; Wed,  9 Oct 2024 11:22:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728472957; cv=none; b=C2dgKJgnVcxGe014B0/IQ7oX7yKje8QRlrB+3zWpR7EygSZyDc5rKbKfTJbygnGF1a15Bg07e4z04/HGmDc8Iz7PK2Hyd23lKaYXk/My3JRdXWjcjg4jTbfTmkFwrsKP1zS/HtQhN1fn0wclhtVvC7D55J2PW0T1/lVmylCJoag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728472957; c=relaxed/simple;
	bh=LGiw/oc9ETyEARgRG3P57WvWVitY9aVPClt8FRfIOtU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=g119i7Ez475kwy6lUcHbkF+UQ35XgKePrjBRFdd1vMoTk2MdEdM8ympPuT42veyR4lEp3zMSN3Z4rgcLitKNpCbaR3Pgm8RGGaND+gTJABOv6NMWs6j73AWFSpkp30sUKFBe2OfCmtI+brE4FmI7OblTYnpMSt6oZdpnOk6kpGw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=bQkj8Ab2; arc=none smtp.client-ip=209.85.208.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f180.google.com with SMTP id 38308e7fff4ca-2facf00b0c7so7428641fa.1
        for <devicetree@vger.kernel.org>; Wed, 09 Oct 2024 04:22:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1728472954; x=1729077754; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LGiw/oc9ETyEARgRG3P57WvWVitY9aVPClt8FRfIOtU=;
        b=bQkj8Ab24KLc7ZmUzcepDf6xshLlQ7KL2rKVtHKrfN138HHwTsRaRbySjyCISnjIjb
         suGwrTxdKzVHM2BXDrNxOTe/ylLjAo5ZMg9GDCaqifo5wynlO230qzCMlncbtYANhOrS
         l/a0HMy/OwRGCT5ye0U3dSjVvtwUYfLKa5yq2WUx9WU7f8NpI1R1gKQH3giUO4IhcdNh
         5b1FYti00nHQj7u2ugbStGqDKp3O7FusgpVLkxG3aGUf43KAEIgHp4YaYqTVNaXpOxip
         sx8Ji52k+jua7hyurFCanal31+amM1XzbyuSL0DALX/ERG+syOUgXfA6H6T1KLiL54wn
         6pug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728472954; x=1729077754;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LGiw/oc9ETyEARgRG3P57WvWVitY9aVPClt8FRfIOtU=;
        b=XvuFcs7X6MQ4k7YNq17+zsmcoR+ln7r4x9kad+N/wJVGlxRIe6gWJaJAocxx+rEfDq
         oC3pVY2rDPkp5HJKTKUMY3DH12jOteHgjeFkcsz6f0odEd4xPkbwrIu/FjiA3h0DiA95
         5YREq8gvd53FJ0BKmzKssnzAc8qfmWVEzXlENFhsHsvFBYZfw1SL7bO1NzEr2bW7ttpa
         SuE3FLd31WaA8O6tgwH35kh+NtuZb83bm91Zy0Gazeahcld7fe8M++xnIyOKooMktjJd
         VjIyvWoIpRGSs0DttBpqvWeHf40YcvSRcyurrxjP1QWsmo27NQLtXtZ4gXthAhcc9pxt
         b00w==
X-Forwarded-Encrypted: i=1; AJvYcCWI6TuVcianKAn6dBRMWVgyIaNrsHgzCJfNlhTFSqTJsoo0vuIaYLpBBIaArnzULBWgtbbZbOi/rxke@vger.kernel.org
X-Gm-Message-State: AOJu0YwgZLFKphQAKWSHM9+p+8DA58XFXb5q305Xzj9pfN+B5Gsz+FPf
	2ADnVHJt6BL80ym747MDIlD4XS+mTUddHpxNr15xCbOtfpEU/vq32JXi8+6wMPZCEXgVE0hhpQX
	CoNK6NcKn/lACZLPBoRB7L6Ki1/EZ29+6hRUl1g==
X-Google-Smtp-Source: AGHT+IF9zAl8DQPl7zn/Ing4gQVNbPa2pljdHpuKWGx3GBhCA9FkwWGI/USumIRp9+/7OCW4AwqSo0p20trwIzg0dTU=
X-Received: by 2002:a2e:809:0:b0:2fa:be1c:7ed7 with SMTP id
 38308e7fff4ca-2fb0de96d8dmr16651541fa.12.1728472954225; Wed, 09 Oct 2024
 04:22:34 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241009-mbly-i2c-v2-0-ac9230a8dac5@bootlin.com> <20241009-mbly-i2c-v2-4-ac9230a8dac5@bootlin.com>
In-Reply-To: <20241009-mbly-i2c-v2-4-ac9230a8dac5@bootlin.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 9 Oct 2024 13:22:22 +0200
Message-ID: <CACRpkdbyZMzEb2i-tjeUdns+cODBeQdgXPH7EAaEHQZ8=gAkaA@mail.gmail.com>
Subject: Re: [PATCH v2 4/6] i2c: nomadik: support Mobileye EyeQ6H I2C controller
To: =?UTF-8?B?VGjDqW8gTGVicnVu?= <theo.lebrun@bootlin.com>
Cc: Andi Shyti <andi.shyti@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-kernel@lists.infradead.org, linux-i2c@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Vladimir Kondratiev <vladimir.kondratiev@mobileye.com>, 
	=?UTF-8?Q?Gr=C3=A9gory_Clement?= <gregory.clement@bootlin.com>, 
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>, Tawfik Bayouk <tawfik.bayouk@mobileye.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Oct 9, 2024 at 12:23=E2=80=AFPM Th=C3=A9o Lebrun <theo.lebrun@bootl=
in.com> wrote:

> Add EyeQ6H support to the nmk-i2c AMBA driver. It shares the same quirk
> as EyeQ5: the memory bus only supports 32-bit accesses. Avoid writeb()
> and readb() by reusing the same `priv->has_32b_bus` flag.
>
> It does NOT need to write speed-mode specific value into a register;
> therefore it does not depend on the mobileye,olb DT property.
>
> Signed-off-by: Th=C3=A9o Lebrun <theo.lebrun@bootlin.com>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

