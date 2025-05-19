Return-Path: <devicetree+bounces-178433-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BE9EABBCC2
	for <lists+devicetree@lfdr.de>; Mon, 19 May 2025 13:40:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 5938E7AA4C9
	for <lists+devicetree@lfdr.de>; Mon, 19 May 2025 11:37:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B6E7E275104;
	Mon, 19 May 2025 11:39:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="qplCrzOO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f177.google.com (mail-yb1-f177.google.com [209.85.219.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07D2526FA6A
	for <devicetree@vger.kernel.org>; Mon, 19 May 2025 11:38:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747654740; cv=none; b=R2/dQ8eVokfUcbxT3ruLK3Cc/wn5FEly8sK8DUZpDCV4VlEXzrkvWnJCE2ppmELcRAepqh9rDQynND1+1ZDDQJspdWmWeWHK6AsXg3XNznsSTvx6vLTkemWvwE8+W5mgEpB4cpDXJ9xJxDevixnsrTK51zie8cCWxds90Mh4E8s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747654740; c=relaxed/simple;
	bh=TMHxhEkJeLRrFVomKdfUPmg32HngiwuN7Y8XouZQTSs=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=QvoaxQ5BY9rzNqEcdQYJ0O8dl+Iqc0oFTfhwaESm1OCQek7vTWpzZBasjxl5V1HEUxaEE9vybfrkDnC8zPblvPVsomYOBjXUA92UsZJb2IRP+FIGRYVTYvFqf27dmbrFmEvr5aLHswQl25hKoDGQl1bITXnqkzxKc22UBSHpzKg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=qplCrzOO; arc=none smtp.client-ip=209.85.219.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f177.google.com with SMTP id 3f1490d57ef6-e7b98303087so889422276.1
        for <devicetree@vger.kernel.org>; Mon, 19 May 2025 04:38:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1747654738; x=1748259538; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=jGbkzJ0eqqimJI7DwVKRZ7T05jAEAZTanGLLnplCIgc=;
        b=qplCrzOOeNGb+ExJFbmhlwgae5MQ/NMv0uqLEQIn1I1n5sVGLEbN21aaxQ3J6nqHa2
         jR8nMUxnKoAUeVh+cRd5kf2rwMaOoLNDGYVJxXkL9DnOECscng6dlzaclADb6RPbk0pn
         4oUgXaDC95CFSnqhEt+Ej3VlSZGvCbjQk/pGfQWL7BsltrNFChoLGshigd8jLbhJ3c3S
         GnQtbctZb6/i1WkiSnY4nX3EC+lf+B12Se0x9sbmzkM1JgkVJTNjzonW0h7lrg8S8qsm
         DHmbYg7EUx2INULKcSW6QPNM/PfRaMbtbjskt3dFuiHh6psBuuB/98HAl5M3MtZg7kKe
         IpKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747654738; x=1748259538;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jGbkzJ0eqqimJI7DwVKRZ7T05jAEAZTanGLLnplCIgc=;
        b=hGSflGM3jzvI7+84rOVyB/G2chckRN4a+oD5AIDAouLeUJh27EShEYaiIE5ZtNckn3
         yvmDgtuT5jTGIYw0WAmtj9uTiPdVURZjhw/pBY/8GwXvpLIqARcDadhUvtFNt1TVPGTF
         mL5FDoH4gBtbd70RKBAm7lKasEDSjtWOCscvUgL1L0yznNU2Q8qlmwiz7u0kXIr8pdGO
         PWI97mCMVHJeDmVsm6RDGjWLijHFhvXsMhCd4bseH3C6gKsyhX7L0bf9cpPKTjhoeir2
         zgdQqSTkhiEEvCB0H+hXCQ6QkHkgsTqgm1gRW3Oywmm5cAjw0QEuKa4sibeb9Z+rRxQH
         QYSQ==
X-Forwarded-Encrypted: i=1; AJvYcCUAImxoLzVSlHkQ3Ay/E8Te9m6SSncORhmftBxDzry2Uud/GGRU5ky/+nbfECoM3qaP9K+RQTWe+Erw@vger.kernel.org
X-Gm-Message-State: AOJu0YzREWHKJ7Hue3+Sm+ZlhCQlrSNQ0HiFqvRTLiBUcYloQEgOZxxm
	xEeAD3v/sL1VaJZ14clx/o42XejCodaixYK3geN8n3AhJHlqcnFOuMOfJmmy8Lg4CF9ovZQHJMc
	Vo6YkJifvQTp5eyR2KmaXZk2dO59x5UZk1bv/j9Xamg==
X-Gm-Gg: ASbGncuuQDap1AyiH1ZTIy2Wk11fPxqEumZYky6roP0Bop31lGfiWo7/M9vqtfkEij4
	l1hNT530YOoAXMFVEJXxF/fmseYTWqxldMHdJkAy7Y7lYpnfCbGLrkRHH5yrBb0fyOBrlqWyD3C
	+12+NIWHxHE2ERl/djXBozlaf7mGEVTBswyw==
X-Google-Smtp-Source: AGHT+IGEhk9xvOXamJcUf2c7oYgnHzt7/Q6Jc8A16RlKxL4KhnX0gE0Bk6C5w2N1j0qtNoul2O4nnkYi1A17Lqm3muU=
X-Received: by 2002:a05:6902:1547:b0:e7b:9763:6676 with SMTP id
 3f1490d57ef6-e7b97636a60mr5570580276.17.1747654737919; Mon, 19 May 2025
 04:38:57 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250509-20-k1-sdhci-v3-0-526c35feaa20@gentoo.org>
 <20250509-20-k1-sdhci-v3-2-526c35feaa20@gentoo.org> <4cee9284-8f71-4214-8bc2-48bcb4030e40@intel.com>
 <20250512075631-GYA517379@gentoo>
In-Reply-To: <20250512075631-GYA517379@gentoo>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Mon, 19 May 2025 13:38:21 +0200
X-Gm-Features: AX0GCFuvP9LYuHS81_oe6T9DU2l0mF54pVYJmbBwMEiyFEMW40gm2OmA7P10SVI
Message-ID: <CAPDyKFpgCMsaP=CZx210Ov=gTCkez-fwEPMwKTGHrzF51p5_TA@mail.gmail.com>
Subject: Re: [PATCH v3 2/2] mmc: sdhci-of-k1: add support for SpacemiT K1 SoC
To: Yixun Lan <dlan@gentoo.org>
Cc: Adrian Hunter <adrian.hunter@intel.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Alex Elder <elder@riscstar.com>, Inochi Amaoto <inochiama@gmail.com>, linux-mmc@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-riscv@lists.infradead.org, 
	spacemit@lists.linux.dev, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Mon, 12 May 2025 at 09:56, Yixun Lan <dlan@gentoo.org> wrote:
>
> Hi Ulf,
>
> On 09:04 Mon 12 May     , Adrian Hunter wrote:
> > On 09/05/2025 16:22, Yixun Lan wrote:
> > > The SDHCI controller found in SpacemiT K1 SoC features SD,
> > > SDIO, eMMC support, such as:
> > >
> > > - Compatible for 4-bit SDIO 3.0 UHS-I protocol, up to SDR104
> > > - Compatible for 4-bit SD 3.0 UHS-I protocol, up to SDR104
> > > - Compatible for 8bit eMMC5.1, up to HS400
> > >
> > > Signed-off-by: Yixun Lan <dlan@gentoo.org>
> >
> > Acked-by: Adrian Hunter <adrian.hunter@intel.com>
> >
>
> If this isn't too late (as v6.15-rc6 is tagged), I'd like to seek
> the opportunity to queue for v6.16 as no big changes during these
> two review cycles..
>
> I also know people who would expect to have a full rootfs support,
> and this driver is sufficient to bring eMMC up and will make their
> life of development easy..
>
> But if you have different opinion, then I'm totally fine to delay
> it to next merge window, thanks

I have been busy the last week, apoligize for the delay.

I just posted a few minor comments on an earlier version, I didn't see
v3 sorry. Anyway, should be pretty easy to address those comments. If
you manage to send another version within the next couple of days I
can certainly pick this up for v6.16.

Kind regards
Uffe

