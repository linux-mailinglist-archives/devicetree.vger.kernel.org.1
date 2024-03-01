Return-Path: <devicetree+bounces-47796-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 67CF286E98F
	for <lists+devicetree@lfdr.de>; Fri,  1 Mar 2024 20:28:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 074CB1F26BFB
	for <lists+devicetree@lfdr.de>; Fri,  1 Mar 2024 19:28:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 24B0A3A27E;
	Fri,  1 Mar 2024 19:28:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="pQxSkOAJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f180.google.com (mail-yb1-f180.google.com [209.85.219.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 81B183A1C2
	for <devicetree@vger.kernel.org>; Fri,  1 Mar 2024 19:28:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709321329; cv=none; b=AEYJPImsizdgYBLfVR0UhSlqzgmCrjLAvvfx6bNy9GH1N6e/iyoFxIKlpvu4K6bGZrS0qQj5KUHK/Fz1s5Ty+CfR7azDB43LbmTfv9ZsGfXtpFPE4ancAnDrU/t50KXMWtvsMavCoQCVahHw7CvIJiKbg+DXE9Vqa9mgjYxJITM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709321329; c=relaxed/simple;
	bh=t546p6Brvs3tkX10UPo7s28no8BBdd+IpN6RcODT7kM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Bnqm/H5HEoE6s74SuenMDrkw4/WBJX9wP9C43aHngx1gMRowcKirroYkGDokUph0F3tajxdlrBGtm4d62YRt9/bi7yXAK6v3Ct5z5zp1mG6IYlyQwAFq/N8kuN6rWLV1u5THrFpXtdezFZdNTt17FZNE7zl8oOkQ6Vb0PP7ITHg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=pQxSkOAJ; arc=none smtp.client-ip=209.85.219.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f180.google.com with SMTP id 3f1490d57ef6-dcc80d6004bso2434271276.0
        for <devicetree@vger.kernel.org>; Fri, 01 Mar 2024 11:28:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1709321326; x=1709926126; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=j3eQJfKffcVJndSl+5ss1Mu5dgdvX9a32YznZ6LbejE=;
        b=pQxSkOAJc+OYxnkdKNqJHOBERphIxBoVFUhM8TrCuu4yyi3jKu239WWJZGSkZ8T7gM
         mUh6NtKGZzCBM2bncN3mxXBFp6H0gnBF9HBikTpTzH7bJ2D/1/O2uoHBDAbfp0aamuJD
         PhjWwu+YfdnKh01DElhy/DMkAs40iNfEs8vjrzQqNunnCsf2AfqmLvyfgXG2i/5Asau5
         DsnPMnF+tnyjJOabK0zW/tpoAsEUX/YR/vDpxPnQKpySQkkJGfcKbRe1MNYbC/eMTUM4
         Bw6AeAOFz0q1q9IOC/CrbNn3G/Gy//D7zz/JeyjcyuJ8hEXyXFaF0WEN2Q3vh421GUHU
         kDQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709321326; x=1709926126;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=j3eQJfKffcVJndSl+5ss1Mu5dgdvX9a32YznZ6LbejE=;
        b=AO05tUQ5PXbF7jxXUVAjKFDPowIhq+PQYIJWAsKjATVlfmwDDIkJEMOaZnwP3DIm0W
         aFMjmvtJ7MGjEZcNmCoBuPHArHt0HQ9IF0Bhga9gCI49psj5okW+02FTfTVaJnpuZu8v
         KSXWMjmw6VNClydqGBNTm1UWxP7j/nArbHarfhk0BIT0F+kGZnhtaPi+fex0lT/nQol+
         1rg10RgJjWTM+OHST3NjBsf77Vh0OsWbiIpatnGTWbLSmJ+0dma+IlP6pRcj4TkEkWsJ
         jDnrh1eJt1kABqdIaJ3489skhOv6KAkRoyh5GECTk0CjeTpnR7feotLXqCtw3sJkBT0u
         ktkg==
X-Forwarded-Encrypted: i=1; AJvYcCUNeQecN/WyojOlm60MV10yOqucfmeIwejsR69MSOEIgSDZTT9OrH9oFWye7NyWu5qZ37czv0elueY0w24ggO84WfSwlQJDn5E/Xg==
X-Gm-Message-State: AOJu0YxJpsX2SU0tbQGC2Si3jNbWh6PlOZJSuhCLkvNur2HZIPvMf+c+
	b/FAh6k4bHA2c3JoSB+a4MmbUtAQCK0LpMqMfUJKH4etxFxRo5dnZIs2KyypTBjPKpvJFq7AWoa
	i1mCmv1/S3m6/yLSQuJpagpbfMiW+hM3B0WFsgw==
X-Google-Smtp-Source: AGHT+IEv03n8LbjI9tr6DDazz4uxUVmvw+zxPE7+xUkw8/yPG1uVEj4/9mSLSkT4tUUhQpyxWWLPRcYiL/VYZLB4rZY=
X-Received: by 2002:a25:b109:0:b0:dcc:1814:ace9 with SMTP id
 g9-20020a25b109000000b00dcc1814ace9mr2464922ybj.28.1709321326441; Fri, 01 Mar
 2024 11:28:46 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240301115546.2266676-1-tudor.ambarus@linaro.org>
In-Reply-To: <20240301115546.2266676-1-tudor.ambarus@linaro.org>
From: Sam Protsenko <semen.protsenko@linaro.org>
Date: Fri, 1 Mar 2024 13:28:35 -0600
Message-ID: <CAPLW+4=6oYcs0NPXo4ffLiCvtNQ-tY1s_isaxTX8dcPkV56xMw@mail.gmail.com>
Subject: Re: [PATCH] spi: dt-bindings: samsung: make dma properties not required
To: Tudor Ambarus <tudor.ambarus@linaro.org>
Cc: andi.shyti@kernel.org, broonie@kernel.org, robh+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	linux-spi@vger.kernel.org, linux-samsung-soc@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	andre.draszik@linaro.org, peter.griffin@linaro.org, willmcvicker@google.com, 
	kernel-team@android.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Mar 1, 2024 at 5:55=E2=80=AFAM Tudor Ambarus <tudor.ambarus@linaro.=
org> wrote:
>
> Since the addition of the driver in 2009, the driver selects between DMA
> and polling mode depending on the transfer length - DMA mode for
> transfers bigger than the FIFO depth, polling mode otherwise. All
> versions of the IP support polling mode, make the dma properties not
> required.
>

AFAIU, the device tree has nothing to do with drivers, it's about
hardware description. Does making DMA properties not required here
mean that there are some HW out there which doesn't integrate DMA in
SPI blocks? Even if this change is ok (I'm not sure), the
argumentation doesn't look sound to me.

> Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
> ---
>  Documentation/devicetree/bindings/spi/samsung,spi.yaml | 2 --
>  1 file changed, 2 deletions(-)
>
> diff --git a/Documentation/devicetree/bindings/spi/samsung,spi.yaml b/Doc=
umentation/devicetree/bindings/spi/samsung,spi.yaml
> index 2f0a0835ecfb..f681372da81f 100644
> --- a/Documentation/devicetree/bindings/spi/samsung,spi.yaml
> +++ b/Documentation/devicetree/bindings/spi/samsung,spi.yaml
> @@ -76,8 +76,6 @@ required:
>    - compatible
>    - clocks
>    - clock-names
> -  - dmas
> -  - dma-names
>    - interrupts
>    - reg
>
> --
> 2.44.0.278.ge034bb2e1d-goog
>

