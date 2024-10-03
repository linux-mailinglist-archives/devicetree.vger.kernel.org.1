Return-Path: <devicetree+bounces-107379-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 9811C98E882
	for <lists+devicetree@lfdr.de>; Thu,  3 Oct 2024 04:43:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 3B7F7B23828
	for <lists+devicetree@lfdr.de>; Thu,  3 Oct 2024 02:43:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6AFB018054;
	Thu,  3 Oct 2024 02:43:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tenstorrent.com header.i=@tenstorrent.com header.b="Kqedv9ub"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f174.google.com (mail-pl1-f174.google.com [209.85.214.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DAC451A270
	for <devicetree@vger.kernel.org>; Thu,  3 Oct 2024 02:43:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727923398; cv=none; b=QwXE8Ax2pReGxJGD4iaFBCJeh9RXTaf3LWoSJyvBZ+m4XGI4hO9JiU4mE5iZhr2UHWzVyCvM/0TDpz1Y9gCf94mDd6cfmd+iOYezRwPxbaUHaf0fr7jCAKwLFfkkOdFAkxNwzXk9lfRBKPen6uCx1i0/bEOFN7gWVJ0ap3ScQ8w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727923398; c=relaxed/simple;
	bh=ntn9NuPWQhchEd27EVLiDhu8oBGQ5J9up85N1DXiVrM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Scwgl0d2yiRNHdiTOPp1XY41YlDC6T8+gb20V1UTYz3KSKSTGMHoJBvPCBMECPPhetCc3gd11guPvJc+9RDmaZ3C+OMqPsGIcYsCIXr4J93++W5HMf/kI2LKeaHaoIBjPIDaLsPhXsmyMUiVTcEmgRrSmoJoSA0fz0belJ+wI/s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=tenstorrent.com; spf=pass smtp.mailfrom=tenstorrent.com; dkim=pass (2048-bit key) header.d=tenstorrent.com header.i=@tenstorrent.com header.b=Kqedv9ub; arc=none smtp.client-ip=209.85.214.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=tenstorrent.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tenstorrent.com
Received: by mail-pl1-f174.google.com with SMTP id d9443c01a7336-20b8be13cb1so4069945ad.1
        for <devicetree@vger.kernel.org>; Wed, 02 Oct 2024 19:43:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tenstorrent.com; s=google; t=1727923395; x=1728528195; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=lXs8iVoA3xDw1I5xisdrYRt5+VMwKclfUTPuuGaalk4=;
        b=Kqedv9ubElMseQWCYGO8c0BY9A8+0kzWS6/jax4nqijk0bqBXUL4sWFlFvXYZuhwL/
         eA8mKcx6CeBOdbiyXbHkkpNRIUVFu5RLAjQIJaE5W8VYB3BVxWHiAnlUqSP0CAn8efLZ
         fGmZCEaTqhbC8osf3lZC671nJP+e/YoLTVeRejBZznYdY+4tOMFqcQkRGBLKoKb3aZ5Y
         UfF/+4WYh2C8pQd8tsomeqm6Qm8cRVF3l3xpoGrRhE6lZVfYQ0BQVyJNC4b8blCI3tS0
         IIpiWDA93BVhmxO20jnZBHsHTdAf5e0exnZWFha15Ss6w/lQj63FJY0r7rMzbiwDuI8D
         96bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727923395; x=1728528195;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=lXs8iVoA3xDw1I5xisdrYRt5+VMwKclfUTPuuGaalk4=;
        b=P7rkCuWGZq9YHFF7oy0TvKBKcEqLUB2s8rjdFoCck7CyUYXVkrT/dUvggnk+4MI03a
         5I68h5oKDohUZf6o9idcWj4AV2zaosWLFrlVLq7QRqj/j6AEMl8CEZmDxlIra8nBpOJ0
         pYrM5QbwBGH7ZRkNwFmppxq+7enOCkp/NppzfQ/d67elAUZTFLkz+mODTSPgVLVuVpEX
         pyvocBj9zDmGW+eB3ppnOD3jA1xDUlms56JsM75RtRBkPccuufWsj5p3WPBt6nlK8diT
         erFk9QBOjeI86pQr2LdvjEMmJ/ABClDqEMnWxiJdGYmImpSuT/Hoc8bLBCn7mBltFgf0
         cujg==
X-Forwarded-Encrypted: i=1; AJvYcCVxf8bvfdGrarcyzGgZr7MkAB/dabiVxhSpBZktbNc+7vjLi+SA3xn3CNeeeyai+DFoh0iZ5EOCgsLQ@vger.kernel.org
X-Gm-Message-State: AOJu0YwfM0M/vTfGyGkGyMH/9W9Mm3cF1RVTgwQ9ABMe+fqLknBud1Kj
	+5F+dArXkrMaJCXKX8esQuQ5jNMSEV/WP5jo+Zm+/ZD+UZaJYvEm86O4AFh/XiI=
X-Google-Smtp-Source: AGHT+IFmnarGxtfVMhsP2WlVCNvnBFTDrQupQCfaWA8uaZjTwWGK1PTCiEnToYrWYyuvGooZGOdFZA==
X-Received: by 2002:a17:902:ce87:b0:20b:9fa3:233c with SMTP id d9443c01a7336-20bc5a6a4c2mr70055895ad.40.1727923395210;
        Wed, 02 Oct 2024 19:43:15 -0700 (PDT)
Received: from x1 (71-34-69-82.ptld.qwest.net. [71.34.69.82])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-20beeca4ad9sm173235ad.95.2024.10.02.19.43.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Oct 2024 19:43:14 -0700 (PDT)
Date: Wed, 2 Oct 2024 19:43:13 -0700
From: Drew Fustini <dfustini@tenstorrent.com>
To: Kees Bakker <kees@ijzerbout.nl>
Cc: Drew Fustini <drew@pdp7.com>, Guo Ren <guoren@kernel.org>,
	Fu Wei <wefu@redhat.com>, Linus Walleij <linus.walleij@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Emil Renner Berthing <emil.renner.berthing@canonical.com>,
	Thomas Bonnefille <thomas.bonnefille@bootlin.com>,
	linux-riscv@lists.infradead.org, linux-gpio@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 2/8] pinctrl: Add driver for the T-Head TH1520 SoC
Message-ID: <Zv4EwWPoSMir1C2J@x1>
References: <20240930-th1520-pinctrl-v3-0-32cea2bdbecb@tenstorrent.com>
 <20240930-th1520-pinctrl-v3-2-32cea2bdbecb@tenstorrent.com>
 <87770518-5f63-4adf-b6ea-c7f92b58ce22@ijzerbout.nl>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <87770518-5f63-4adf-b6ea-c7f92b58ce22@ijzerbout.nl>

On Wed, Oct 02, 2024 at 09:36:59PM +0200, Kees Bakker wrote:
> Op 30-09-2024 om 21:50 schreef Drew Fustini:
> > From: Emil Renner Berthing <emil.renner.berthing@canonical.com>
> > 
> > Add pinctrl driver for the T-Head TH1520 RISC-V SoC.
> > 
> > Tested-by: Thomas Bonnefille <thomas.bonnefille@bootlin.com>
> > Signed-off-by: Emil Renner Berthing <emil.renner.berthing@canonical.com>
> > [dfustini: use thead,pad-group to identify the pin controller instance]
> > Signed-off-by: Drew Fustini <dfustini@tenstorrent.com>
> > ---
> >   MAINTAINERS                      |   1 +
> >   drivers/pinctrl/Kconfig          |  13 +
> >   drivers/pinctrl/Makefile         |   1 +
> >   drivers/pinctrl/pinctrl-th1520.c | 907 +++++++++++++++++++++++++++++++++++++++
> >   4 files changed, 922 insertions(+)
> > 
> > [...]
> > +static int th1520_pinmux_set_mux(struct pinctrl_dev *pctldev,
> > +				 unsigned int fsel, unsigned int gsel)
> > +{
> > +	struct th1520_pinctrl *thp = pinctrl_dev_get_drvdata(pctldev);
> > +	const struct function_desc *func = pinmux_generic_get_function(pctldev, fsel);
> func can be NULL after calling pinmux_generic_get_function
> Please add something to avoid NULL pointer dereferencing in the next
> statement.
> All other callers of pinmux_generic_get_function have something like this:
>     if (!func)
>         return -EINVAL;

Thanks for catching this. I see that another person has posted a patch
as a result so I'll respond over in that thread [1].

Drew

[1] https://lore.kernel.org/lkml/20241003023307.2138695-1-clf700383@gmail.com/

