Return-Path: <devicetree+bounces-101081-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C72C970373
	for <lists+devicetree@lfdr.de>; Sat,  7 Sep 2024 19:58:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C49161F22196
	for <lists+devicetree@lfdr.de>; Sat,  7 Sep 2024 17:58:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A33B31649BF;
	Sat,  7 Sep 2024 17:58:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="c5vdIAt2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f180.google.com (mail-vk1-f180.google.com [209.85.221.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02D9B15E5BA
	for <devicetree@vger.kernel.org>; Sat,  7 Sep 2024 17:58:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725731932; cv=none; b=fzLRWgBlw+9viCkORpqfdv7mdPBD+lCKA3GkV2fvZfoAqH0tyCb/u/cGE09BCluoGvG85/IKYfliGbMhqx690ZGf2Oi77PZUVT48g517f/vR+H2hvSPsEsmcELSP4EptTCq/YeRYNuaLyrmQ3EzZjS9ijJidxHi6RmIRvPifQOY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725731932; c=relaxed/simple;
	bh=izSGh+6sy5PNRnbFdyM+VIV0EKPdNFOSdmi1QXPxe6k=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=BqcVTIpFq7aUkmahrBXn6DH7WwOesJO/vR6YuRgxdiOYOYsmRejlh9MYUr8dDSxILCNjxaj03G+T+sKfk+fc1muEYOtQp93UkoWW7NWlIMna6n9sHT2nt8Z59V7Aq1n4t3QeIH9vns5+0jw5RxMfh5ulVWr0VUR1c4liWCgY/wk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=c5vdIAt2; arc=none smtp.client-ip=209.85.221.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-vk1-f180.google.com with SMTP id 71dfb90a1353d-501274e2c29so755995e0c.3
        for <devicetree@vger.kernel.org>; Sat, 07 Sep 2024 10:58:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1725731930; x=1726336730; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UMtEkjEA6+MsIvWkID1mCodPN+qU9ekogIWwGSM8gSI=;
        b=c5vdIAt2LumkPNi44WHHEEhYJXcQDbKqENnTEk8fJJyhV7Dr7TDIVqsKfR22XwT0xK
         tcazANCEbHAKfI23anhA/nLVprLGcQ6Q3VTMqmRScgUQatSWhEYGyGKNmqhjJg8+Q4xY
         LYPTtHP9oLmUPUm5stPic38WIKnPKGAfmS6CX6eu03LLtTdHGIz6424ApNGlL4B4XkJm
         6Z8wh0hz9gdbHMYZjIHEN26bjQe5D11sGMNcYxrsCbHPDoSbxAoh8jn2Gi2xXqYyuGoz
         LJbLwVrjzKfWnyHPE7Z+TTXi7N7oQwWGJk7fX6JdFN6dTiPTHpEFZL+mizAFr9+Zoxxs
         N4eQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725731930; x=1726336730;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UMtEkjEA6+MsIvWkID1mCodPN+qU9ekogIWwGSM8gSI=;
        b=qiXzjMH5Gf7+SkrPE0yoRrwdDXFFmW1DIb1LJjL1Jp0xQM/IFFcHU1XX94dN9/15Ur
         7FpilwBNPRf1hU5qJcwaTpAtf9QQPFQ4DhPWy7Jn6dM1DBXwTBiz+jxp8ixNi8CInJ01
         Xk+GW2xteY2Ie8iassFcJPExTZ54iQJZ8n09uX6yPPJ3LjVxZgeMERZK3yPDx/HX0RQ6
         DTzuQ3sEYEc11uXEaRNmJrXU+Ph3elVLa96HwRfbbrLc5i1JuqhnuMxrcz1GHlM0g+C0
         WoYYb+GYLwAH10z/6Yqlq0Ai3m38apWHcH7HxEsqIVR8iJg7i22dqXIGJnPAiyvoXXpA
         d0uw==
X-Forwarded-Encrypted: i=1; AJvYcCXSpkohmAscGagNXAKqtekv0auMKDohPFEkPfg6acOIY2dv63v+JWEFJO08j+ic5xkycqUCntfOzIgf@vger.kernel.org
X-Gm-Message-State: AOJu0YwMOpdrQBU3hlVPYjhWJE1NvqQS+id0sSW8QWERJfGXzZzumnnl
	7NiI4HyXRqAsq7YnltveI26T4m4//1emdJc6193EvfTKA7/m5uNWUD11mZP9Ld+qV7MUAd+52Mc
	qGW7ZeF2X0rD9kOE7swNQoa/ovyT2PogTnP7GEO7wNOpYjhd5Roo=
X-Google-Smtp-Source: AGHT+IEOaT0BYQW8cw+NkaLwFk65fiVHI1VHeKBwUhksWakjY7xaH3BIajcAn4R4yGhCGt4ZxNyadnMqwQwOoyxhIYA=
X-Received: by 2002:a05:6122:2021:b0:4fc:da8f:c8c4 with SMTP id
 71dfb90a1353d-5022146e600mr7614978e0c.12.1725731929903; Sat, 07 Sep 2024
 10:58:49 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240907065043.771364-1-aardelean@baylibre.com>
 <20240907065043.771364-2-aardelean@baylibre.com> <20240907155139.67a296c7@jic23-huawei>
In-Reply-To: <20240907155139.67a296c7@jic23-huawei>
From: Alexandru Ardelean <aardelean@baylibre.com>
Date: Sat, 7 Sep 2024 20:58:38 +0300
Message-ID: <CA+GgBR8URUmcru0Q=ut8gVdEO=KeVOQgzwWPr7bz1ceiSJXdEA@mail.gmail.com>
Subject: Re: [PATCH v5 1/9] iio: adc: ad7606: remove frstdata check for serial mode
To: Jonathan Cameron <jic23@kernel.org>
Cc: linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, krzk+dt@kernel.org, robh@kernel.org, 
	lars@metafoo.de, michael.hennerich@analog.com, gstols@baylibre.com, 
	Nuno Sa <nuno.sa@analog.com>, Stable@vger.kernel.org, 
	Jonathan Cameron <Jonathan.Cameron@huawei.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sat, Sep 7, 2024 at 5:51=E2=80=AFPM Jonathan Cameron <jic23@kernel.org> =
wrote:
>
> On Sat,  7 Sep 2024 09:50:34 +0300
> Alexandru Ardelean <aardelean@baylibre.com> wrote:
>
> > From: Guillaume Stols <gstols@baylibre.com>
> >
> > The current implementation attempts to recover from an eventual glitch
> > in the clock by checking frstdata state after reading the first
> > channel's sample: If frstdata is low, it will reset the chip and
> > return -EIO.
> >
> > This will only work in parallel mode, where frstdata pin is set low
> > after the 2nd sample read starts.
> >
> > For the serial mode, according to the datasheet, "The FRSTDATA output
> > returns to a logic low following the 16th SCLK falling edge.", thus
> > after the Xth pulse, X being the number of bits in a sample, the check
> > will always be true, and the driver will not work at all in serial
> > mode if frstdata(optional) is defined in the devicetree as it will
> > reset the chip, and return -EIO every time read_sample is called.
> >
> > Hence, this check must be removed for serial mode.
> >
> > Fixes: b9618c0cacd7 ("staging: IIO: ADC: New driver for AD7606/AD7606-6=
/AD7606-4")
> > Signed-off-by: Guillaume Stols <gstols@baylibre.com>
> > Reviewed-by: Nuno Sa <nuno.sa@analog.com>
> > Link: https://patch.msgid.link/20240702-cleanup-ad7606-v3-1-18d5ea18770=
e@baylibre.com
> > Cc: <Stable@vger.kernel.org>
> > Signed-off-by: Jonathan Cameron <Jonathan.Cameron@huawei.com>
> Reference the fix patch in your cover letter, but don't include it in the=
 series.
>
> I'll just get confused when I pick this up.

ack
will do

