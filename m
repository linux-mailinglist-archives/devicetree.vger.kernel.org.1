Return-Path: <devicetree+bounces-34386-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 23FC183993A
	for <lists+devicetree@lfdr.de>; Tue, 23 Jan 2024 20:11:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D0AE1297FBD
	for <lists+devicetree@lfdr.de>; Tue, 23 Jan 2024 19:11:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 27F1612DD93;
	Tue, 23 Jan 2024 19:04:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="PzvNcWgl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f47.google.com (mail-pj1-f47.google.com [209.85.216.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0705F12DD89
	for <devicetree@vger.kernel.org>; Tue, 23 Jan 2024 19:04:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706036672; cv=none; b=qa4Mcjy0X/rzxK2amhIXxTYHeX1nNc1gWk/mTO/lI2Uc4N54Z3bt/0d50QWOcGcXuOvzIYxWIy5/GzWEPaW863gawSra3TuXMyjPrNiQYTKkCKhOVXWWhlA9M0h4T2EVjSknvTiPXobBwIDcq/UsUuS2zse+qBVBeqCVQ2TFeBg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706036672; c=relaxed/simple;
	bh=VS75+3gB3sq+wMUOnc02c0cs4tTZ16PoaoDey6IJecQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=m4qbshCRWVj2g+jyPIlqDO/oRsabXlFjXINGbmOjBnZ5m1+HFhNyBDn6zUVhNSk+Og+1+yygr34Z3L0p4FMnF1WpHkPTd2HGvQUKmtXLxeFYU13m9i+Y/YkbsKwIAlKX1llVWvPrS0XkTWxXESDS4C4qBx10TxIxtL/jZrZLiLg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=PzvNcWgl; arc=none smtp.client-ip=209.85.216.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pj1-f47.google.com with SMTP id 98e67ed59e1d1-290617c6200so1694731a91.1
        for <devicetree@vger.kernel.org>; Tue, 23 Jan 2024 11:04:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706036669; x=1706641469; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3ITsyqbQhjxk4s57336fVZCNir8lMBGnWIW10dpi4hs=;
        b=PzvNcWglfJnGT40DePLGCymoEGi4cIQhCrPs+1RxgkdujEU8iMVipNNQl/IdTZqjpQ
         0tL1AyHoOzm8G6cL8b9fWJFqnhbvw50DtA5BjBohmZo5ruYhftChiynOu1EsgUFjMkDx
         lY+w9DeHsiwdrxYPE+7LCZQWsRPn75jl24PV6Of/2HNPmSs3rTgYV1TIOGXFP6ODZDQT
         sf9TH/TnO9puSlxLetbqKgiVaMVme6c8/5JwLKQUV2+R+vfNm/2NIdHLvUF0vkP782z4
         drp3nf0IAepPTSLi+KfGKKzpdB84wkCIDpCI3ALjsh9usk2RCb74/fhehRAXuhwxBEmh
         iiiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706036669; x=1706641469;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3ITsyqbQhjxk4s57336fVZCNir8lMBGnWIW10dpi4hs=;
        b=n1Z10pMs6Ab9YOhBvfLGq7MuHORne09+DzEfhL+pPzlGR+cz8V8HfIJEOKcelyzJ2g
         fHdX2JXFXAqNN0Bcq5pic6RIgLFFflBnGbkm+ZxdzTN8EmdeDO9Ecp4EsCDF/Sdr4Sp7
         t5E4w1CC5/GO7K2k5giJe5MsYd5SJTS8mhbxQ63Q+MLU8v9vt/GvNFGIKhpTWW57vaTh
         hBgwvBXYJ8+63X1iGmbZSsSbZyS8FGtNmxwOE/WR144wHKfhJ9x2N6vfK9WhFOOoWa4m
         7F1RRSPqNeMgKONvUf9/gIF3leywoYZPuZkYUp+xov+lTDtypFxLJs8F6iaet26cY/zw
         HmqA==
X-Gm-Message-State: AOJu0Yy3yXg548xOcNImhUn9Nq1/3y1VPG8g4GfY/yslmPBptWkAz+5f
	6H6u7FpLaVFGdeiYUDxVDg17qDbNyPnYbKRmDeFkkh+fNMixdGaJ+XWiQxkxjW9M5Mr9LVtRYa0
	93nNApkUk+dtB02XDwiTnvdBjWdUyAHvCwfldGQ==
X-Google-Smtp-Source: AGHT+IFqjIFCtd6wzKMn5T1MeVubJoGhj1g7ER8YvwlsiOaQDJe85pud46G6ASqfjh26U1Oe4Oq2VbK93aNHGLWxHN8=
X-Received: by 2002:a17:90a:c395:b0:290:6b0c:2603 with SMTP id
 h21-20020a17090ac39500b002906b0c2603mr2756498pjt.29.1706036669319; Tue, 23
 Jan 2024 11:04:29 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240123153421.715951-1-tudor.ambarus@linaro.org>
In-Reply-To: <20240123153421.715951-1-tudor.ambarus@linaro.org>
From: Sam Protsenko <semen.protsenko@linaro.org>
Date: Tue, 23 Jan 2024 13:04:18 -0600
Message-ID: <CAPLW+4mOZ=0fkrAiW1jkTMxUF1Li=s4VVzw5WgEb+D4Qa-=SoQ@mail.gmail.com>
Subject: Re: [PATCH 00/21] spi: s3c64xx: winter cleanup and gs101 support
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
> Hi,
>
> The patch set cleans a bit the driver and adds support for gs101 SPI.
>

It might be more convenient (for review purposes) to extract all the
cleanup patches into a separate series, and base it on top of the
gs101 SPI enablement series.

> Apart of the SPI patches, I added support for iowrite{8,16}_32 accessors
> in asm-generic/io.h. This will allow devices that require 32 bits
> register accesses to write data in chunks of 8 or 16 bits (a typical use
> case is SPI, where clients can request transfers in words of 8 bits for
> example). GS101 only allows 32bit register accesses otherwise it raisses
> a Serror Interrupt and hangs the system, thus the accessors are needed
> here. If the accessors are fine, I expect they'll be queued either to
> the SPI tree or to the ASM header files tree, but by providing an
> immutable tag, so that the other tree can merge them too.
>
> The SPI patches were tested with the spi-loopback-test on the gs101
> controller.
>
> Thanks!
> ta
>
> Tudor Ambarus (21):
>   spi: dt-bindings: samsung: add google,gs101-spi compatible
>   spi: s3c64xx: sort headers alphabetically
>   spi: s3c64xx: remove extra blank line
>   spi: s3c64xx: remove unneeded (void *) casts in of_match_table
>   spi: s3c64xx: explicitly include <linux/bits.h>
>   spi: s3c64xx: remove else after return
>   spi: s3c64xx: use bitfield access macros
>   spi: s3c64xx: move error check up to avoid rechecking
>   spi: s3c64xx: use full mask for {RX, TX}_FIFO_LVL
>   spi: s3c64xx: move common code outside if else
>   spi: s3c64xx: check return code of dmaengine_slave_config()
>   spi: s3c64xx: propagate the dma_submit_error() error code
>   spi: s3c64xx: rename prepare_dma() to s3c64xx_prepare_dma()
>   spi: s3c64xx: return ETIMEDOUT for wait_for_completion_timeout()
>   spi: s3c64xx: simplify s3c64xx_wait_for_pio()
>   spi: s3c64xx: add missing blank line after declaration
>   spi: s3c64xx: downgrade dev_warn to dev_dbg for optional dt props
>   asm-generic/io.h: add iowrite{8,16}_32 accessors
>   spi: s3c64xx: add support for google,gs101-spi
>   spi: s3c64xx: make the SPI alias optional for newer SoCs
>   MAINTAINERS: add Tudor Ambarus as R for the samsung SPI driver
>
>  .../devicetree/bindings/spi/samsung,spi.yaml  |   1 +
>  MAINTAINERS                                   |   1 +
>  drivers/spi/spi-s3c64xx.c                     | 447 +++++++++---------
>  include/asm-generic/io.h                      |  50 ++
>  4 files changed, 276 insertions(+), 223 deletions(-)
>
> --
> 2.43.0.429.g432eaa2c6b-goog
>

