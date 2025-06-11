Return-Path: <devicetree+bounces-184897-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A7772AD591F
	for <lists+devicetree@lfdr.de>; Wed, 11 Jun 2025 16:42:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2C8213A77ED
	for <lists+devicetree@lfdr.de>; Wed, 11 Jun 2025 14:41:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 54E002BE7A1;
	Wed, 11 Jun 2025 14:40:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="ymlLGxnM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D4761865FA
	for <devicetree@vger.kernel.org>; Wed, 11 Jun 2025 14:40:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749652844; cv=none; b=cjDMTxxGYFftuuiJ7vWpXa07WESlNrko3M3IT1luRBSu8eKkJQ36Vmf50c0ynr0okgh21k7oscBhELkp6pHyuIchfQP5xslMvUgYKFeN3kJP1PeTXGboasNCEDC4j+HknJhi602aW6ygU3qr+1l1jEzwQOqvS9Co61G9xhJjTrM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749652844; c=relaxed/simple;
	bh=Ves9IAlDOG6rT2wK3GTXUgHQbJsl7xwyic6gvh9n1D8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=oj2N583hiWnVp8tAdIjSxhaBW+qebSu8JWCaPNnB2jXegx+xk9njlmkif/hW8p8cXc6BprW9dYb7bGOsR9PDR7q6IpITRVaJK0ZGZ2e7Nvc5+fQzBQCiCBs6UwMQ+n+k3x/9p8CIx5JJw3NoePJPeCU+f4a1qrxJVHZJc8nlpEs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=ymlLGxnM; arc=none smtp.client-ip=209.85.218.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-ad8826c05f2so1284973866b.3
        for <devicetree@vger.kernel.org>; Wed, 11 Jun 2025 07:40:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1749652839; x=1750257639; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VanCGAV853jeZl/piu55b8cOeQ1lh3SiVReRL2SvGyU=;
        b=ymlLGxnMsVfiy/aok9AEqGYJFidNS+mNhQrefas1XlXonhcN7fIoSVeXXSYu4Ggi/6
         u1bedUuR9OXXmTBMrxtLE5IAqMZlo7ZsLjcm5ewCbfGGthkDcATGwEFuKRAlccvrEMFo
         yM1iKcqmFlwZLovjnbb1k2pIELqp9nwM1H3jyTuGwcbX2ZvCJoIbZ23yPMhn6VXIY8ja
         y+XI5/WAd5QSserPAWxtNaylQ/VZwNUljHQbAtXo8kpVfQOM9iNQeDKdvHlWQIYvtjRR
         EtZTGiPExK5QgjbQrIxpSyFmMLRn5bsoUvoA8YtJ2jlcFqCQoDRyJmaAW57HCnZLJUy4
         TSrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749652839; x=1750257639;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VanCGAV853jeZl/piu55b8cOeQ1lh3SiVReRL2SvGyU=;
        b=SVktFl9Pi8gZd/Z25ebNw/tmYyuNwa54owPFdDP5j56D8PAcp/jbgLNIDAVc2VYalX
         f969wSPyVwwOzdykCh7aemieDN0vbRNZmptfSWrOhBPkVoewtURjee57zyTQBQyHtP5c
         rYPLpVWweLIu+kyernWzILVqd9VLoUgKI1gcTGKF2bp+Qm6M1M5tdYK5pqcmtad0M4mi
         pbswQ5m3CX2/SO0VnkboDHz+jJPkpbEB9qGQpWzLqktOgHl/dEQ/IFFqxLQVzZF6QpZW
         NzrH/LbcHUbcP/eTODkXHQMIw/BUVuLrTVDhaTUr3/bSHcsKrfxk2Iw+n5XwAH4dvmjS
         QF/g==
X-Forwarded-Encrypted: i=1; AJvYcCWMEgPC8ZLZWgtjTK1nWCowHG+uKGCSyala6XgfQR+bDU6q3m/I40hiOfLFbmY9ygRhqPa13SPs3Io4@vger.kernel.org
X-Gm-Message-State: AOJu0YyxBGQVzzdCrJdxH36CbCBNYQqktkhm7GIaPq2gwcUSMXBCtX+B
	Qg9cBShFxQNBLA0lUXFbj3ww3FIPwj/X1TfgbdOrjDxW+ZR8jN8XSinlGpjsXTYWmjf6G0AmEg4
	r7nNO3rtpp2y5U6D/jVRlOnBSd1i8YPSF+PYj+dmmvA==
X-Gm-Gg: ASbGnct0H5OD+A5iVN70LkqWD5D+/X4COheW7c7cdo0K62iKoVeArMj8BwUKiHlk73k
	wP7Y2cQ5qSjLt9pGkzosTmYJMwC4O9/Nc9Qd9DHf/xTcA0cbionLAIf/nGaiR2ym6VwUh3cAH75
	JWTMgeLCPvO6xf/pDTLVFj/3ShANiiSv7HRsoGsxq80Z++
X-Google-Smtp-Source: AGHT+IHDSmTZDyiDRZOD1n1VEoO2BN/q5+1t3d32dZUsxmTdSpg0xwKQkFHQYBpUpsmp4CIhNRKBUUObLCw4k1Y89D8=
X-Received: by 2002:a17:907:968a:b0:adb:1804:db93 with SMTP id
 a640c23a62f3a-ade8c8eff15mr309077666b.49.1749652839519; Wed, 11 Jun 2025
 07:40:39 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250611125723.181711-1-guodong@riscstar.com> <20250611125723.181711-8-guodong@riscstar.com>
 <20250611135116-GYB125008@gentoo>
In-Reply-To: <20250611135116-GYB125008@gentoo>
From: Guodong Xu <guodong@riscstar.com>
Date: Wed, 11 Jun 2025 22:40:28 +0800
X-Gm-Features: AX0GCFtLP8n8AGHV29EjK0zTceQ99c8B_7Z1bY9fkoSHAd2Q1BdFWQkZ6Pv-a54
Message-ID: <CAH1PCMbP54PRq27p7Ss+cdvB86M8k3CQepzxJwfpwfJPPnrMag@mail.gmail.com>
Subject: Re: [PATCH 7/8] dma: Kconfig: MMP_PDMA: Add support for ARCH_SPACEMIT
To: Yixun Lan <dlan@gentoo.org>
Cc: vkoul@kernel.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	paul.walmsley@sifive.com, palmer@dabbelt.com, aou@eecs.berkeley.edu, 
	alex@ghiti.fr, p.zabel@pengutronix.de, drew@pdp7.com, 
	emil.renner.berthing@canonical.com, inochiama@gmail.com, 
	geert+renesas@glider.be, tglx@linutronix.de, hal.feng@starfivetech.com, 
	joel@jms.id.au, duje.mihanovic@skole.hr, elder@riscstar.com, 
	dmaengine@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org, 
	spacemit@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Jun 11, 2025 at 9:51=E2=80=AFPM Yixun Lan <dlan@gentoo.org> wrote:
>
> Hi Guodong,
>   I'd suggest moving this patch after 4/8, as both of them should go
> via DMA susbystem tree, or simply squash them?
>

Thanks for your advice. Agree. It makes sense.
I will arrange them.

-Guodong

> On 20:57 Wed 11 Jun     , Guodong Xu wrote:
> > Extend the MMP_PDMA driver to support the SpacemiT architecture
> > by adding ARCH_SPACEMIT as a dependency in Kconfig.
> >
> > This allows the driver to be built for SpacemiT-based platforms
> > alongside existing ARCH_MMP and ARCH_PXA architectures.
> >
> > Signed-off-by: Guodong Xu <guodong@riscstar.com>
> > ---
> >  drivers/dma/Kconfig | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/dma/Kconfig b/drivers/dma/Kconfig
> > index db87dd2a07f7..fff70f66c773 100644
> > --- a/drivers/dma/Kconfig
> > +++ b/drivers/dma/Kconfig
> > @@ -451,7 +451,7 @@ config MILBEAUT_XDMAC
> >
> >  config MMP_PDMA
> >       tristate "MMP PDMA support"
> > -     depends on ARCH_MMP || ARCH_PXA || COMPILE_TEST
> > +     depends on ARCH_MMP || ARCH_PXA || ARCH_SPACEMIT || COMPILE_TEST
> >       select DMA_ENGINE
> >       help
> >         Support the MMP PDMA engine for PXA and MMP platform.
> > --
> > 2.43.0
> >
> >
>
> --
> Yixun Lan (dlan)

