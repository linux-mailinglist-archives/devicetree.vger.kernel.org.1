Return-Path: <devicetree+bounces-213319-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id A7ECDB4519F
	for <lists+devicetree@lfdr.de>; Fri,  5 Sep 2025 10:36:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 845441C8421F
	for <lists+devicetree@lfdr.de>; Fri,  5 Sep 2025 08:36:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 92EDA30BF55;
	Fri,  5 Sep 2025 08:33:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b="bM5X2F4O"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f68.google.com (mail-ej1-f68.google.com [209.85.218.68])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77F812F747F
	for <devicetree@vger.kernel.org>; Fri,  5 Sep 2025 08:33:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.68
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757061232; cv=none; b=teDUd+7FBUZvWG+W3unVtCnnow49ehUsypwBZdRWblzz4jt1Xe6SbyW2gtyDqqIqFnjk3inyQTaMh8M/QJf4Z0Fg3jz1lddBNE3Ga1aPzBmblPz7wAC1aCeXGelljKAKkXKiZvfFhzr3ujmFI+5P/0VvbHzNcl4l29vBA5uqx9c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757061232; c=relaxed/simple;
	bh=FIivkbvlsUwuCxef19rZwLbxAQtBUlqR3Yy9oUPywFI=;
	h=From:Date:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=GwOUJ4IwqZrEc9RCIQvQ9eM0lRY9PspTRQqNum8YN8Z7YneFLnWY2MPOPGJ0of6PsP3FwGJ8IYIieT5MrfsVWikHQ5jpV5zGZGPfRrryUxqQ7ULJOAagROQZbk+0c+VXXyY0eph/81Zc1qNO+2IkCDfystgXl4YdovVyaQ3fjTs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com; spf=pass smtp.mailfrom=suse.com; dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b=bM5X2F4O; arc=none smtp.client-ip=209.85.218.68
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=suse.com
Received: by mail-ej1-f68.google.com with SMTP id a640c23a62f3a-b0428b537e5so325482966b.3
        for <devicetree@vger.kernel.org>; Fri, 05 Sep 2025 01:33:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suse.com; s=google; t=1757061229; x=1757666029; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from:from:to
         :cc:subject:date:message-id:reply-to;
        bh=SgnJRI/egxtjaoqDVVqBQgVUu4WIklNB+SAbz2GeD+U=;
        b=bM5X2F4OTu3PSqq7ZmNy1ueoiv/Vp0mDkCHdr+t0dYC5PImWCb7A2v/60CoYr3GqbG
         Ru7KQ6zZ5f4761Lm0TLl/AbO4oQ0GuWt400MZJc3p8I13zm+kWS7TkM9kPJJG7XNVSKq
         gjQ0jQHcM19+d862lZ9Ax0jPyHlx6yk4GaOu3T1aEx+GnOqOd0QGzUs7hgPrZfXjrT/J
         MyXAqRIb4LAEbe1wSFnRCkGTCvIXSo4qfKo1TUYND0hnJUsylwEEsfLiaKaYLxCQ4DQr
         L4h4p0jH/tcX+nTP49pHtaIbYF9+gyHnLhTRUayDaHjyFOOjIjo17GMNWr6taewaGpNE
         qPDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757061229; x=1757666029;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=SgnJRI/egxtjaoqDVVqBQgVUu4WIklNB+SAbz2GeD+U=;
        b=VnN1ThEr5rp5J82iS7D2nPFGUli9stxvUeHGkQ4FxwbCcI6LxoUi7EjyDMVLFCNXfP
         1RtaykdR07kPQemeoRKikzq06CIUyBoKLglqflgetChoWkUidRaLAKn4s7aFTEakNiza
         WHxR6YivDuZckT7SOMFGeNhAH2KTduuud5glbMA522t5CjmJtJn2JX4VZ8I4/rmjsoLY
         gdwywti0/fUmy8xXIHrbTixMcQtGoV8YwJKkSiczkLU3hq1Zyz9w5NLgcxSY+6OOch+h
         oTkWUvWIrIlDVx7cbdZBdR8ZOvRJlZQIj9C3nAw4gKVULH+sM4NRZCMU2GALNgBY5E08
         /Z1A==
X-Forwarded-Encrypted: i=1; AJvYcCUyVvJkiknJOScXyup1/f6b5iLaj4zCAkeXDHJrA3A10ZjFbYdLCI/xxLcHiYym8xpuT4XFtqpYOZQA@vger.kernel.org
X-Gm-Message-State: AOJu0YxD8+WDJXdeCo4/a0fK4z5I8h1VhXBpLpAOLr6HJ+Ljd5KGXJwv
	dgtylXa9q2eAMhMuerePNlBFTDqdDv5pk8bjqLDJ3oVBSblazB+q4FAEvXaUvxbNJ2k=
X-Gm-Gg: ASbGncvwJdI63TI8wFWya8mNDmoGWSmFLbhE8YKmE0mwdzNSJ7uEPcZGl0euVKV6oUn
	On3ihuE+WA8jKO3s4HF45boK+ppQHjcdbqsTjjU8dlpKwWbMu6RfWRHAbKUhI/MRsRMOaCUmoPR
	sNA5MuDpYYvA92XqQpuUfktwQvwNEM6E9mrDHAY2612cmNxXG1DF/g3ZdCAJBD58lBOU9Djz+Ye
	BD+kFvfJGX85sxBzK+ekPfnpcJR0Zi+48qib5dUJBAypKrBVNTs2DD3Dw/r11kCcrEvFAeqYaHu
	42Z556PYYEFu9KkyNaK+0HuV+45STTwUnnNzMpqYEHzVXA+bPLuEeyGwvmHTAgsCdXQKmFdyS3v
	lp1yQR+LSNYqOGuD0Rp+yDR87fA5PWRdh1S2kyRfOD8qTl/wANRiZEZUfe07E+TiF9VAOlzqUaD
	MuSJFxZk0hSU+myiZgMTVLe0diKmqtxdYJ
X-Google-Smtp-Source: AGHT+IGKUP3RZ5t2/gasPzJzuI8AOjzwK+b1qdxRjHmmhV48QCT+F5m6d9XTYWi3CHhwJeSzib8Gkg==
X-Received: by 2002:a17:907:a44:b0:aff:9906:e452 with SMTP id a640c23a62f3a-b01d972d878mr2222435766b.31.1757061228746;
        Fri, 05 Sep 2025 01:33:48 -0700 (PDT)
Received: from localhost (host-79-31-194-29.retail.telecomitalia.it. [79.31.194.29])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b0474be5e99sm476564766b.94.2025.09.05.01.33.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Sep 2025 01:33:48 -0700 (PDT)
From: Andrea della Porta <andrea.porta@suse.com>
X-Google-Original-From: Andrea della Porta <aporta@suse.de>
Date: Fri, 5 Sep 2025 10:35:45 +0200
To: Linus Walleij <linus.walleij@linaro.org>
Cc: Andrea della Porta <andrea.porta@suse.com>,
	Peter Robinson <pbrobinson@gmail.com>, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org,
	florian.fainelli@broadcom.com, wahrenst@gmx.net,
	linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>, iivanov@suse.de, svarbanov@suse.de,
	mbrugger@suse.com, Jonathan Bell <jonathan@raspberrypi.com>,
	Phil Elwell <phil@raspberrypi.com>
Subject: Re: [PATCH v4 2/3] pinctrl: bcm: Add STB family pin controller driver
Message-ID: <aLqg4ZTbUjsgoMwy@apocalypse>
References: <cover.1756372805.git.andrea.porta@suse.com>
 <bee7c98a96c7000db32495b94ebae2ea06fe0e77.1756372805.git.andrea.porta@suse.com>
 <CACRpkdY82ohgX_7YP16DJrzDvxMHcSu3rW+UtEmrP0AQiD_Exg@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CACRpkdY82ohgX_7YP16DJrzDvxMHcSu3rW+UtEmrP0AQiD_Exg@mail.gmail.com>

Hi Linus,

On 21:06 Thu 04 Sep     , Linus Walleij wrote:
> On Thu, Aug 28, 2025 at 2:45 PM Andrea della Porta
> <andrea.porta@suse.com> wrote:
> 
> > From: "Ivan T. Ivanov" <iivanov@suse.de>
> >
> > This driver provide pin muxing and configuration functionality
> > for BCM2712 SoC used by RPi5. According to [1] this chip is an
> > instance of the one used in Broadcom STB  product line.
> >
> > [1] https://lore.kernel.org/lkml/f6601f73-cb22-4ba3-88c5-241be8421fc3@broadcom.com/
> >
> > Cc: Jonathan Bell <jonathan@raspberrypi.com>
> > Cc: Phil Elwell <phil@raspberrypi.com>
> > Signed-off-by: Ivan T. Ivanov <iivanov@suse.de>
> > Reviewed-by: Phil Elwell <phil@raspberrypi.com>
> > Signed-off-by: Andrea della Porta <andrea.porta@suse.com>
> 
> Patch applied!
> 
> > +config PINCTRL_BRCMSTB
> > +        tristate "Broadcom STB product line pin controller driver"
> > +        depends on OF && (ARCH_BRCMSTB || COMPILE_TEST)
> 
> I changed this to (ARCH_BCM2835 || ARCH_BRCMSTB || COMPILE_TEST)
> because Peter Robinson told me the Pi5 needs this driver too.
> See commit 1d99f92f71b6b4b2eee776562c991428490f71ef for details.

Indeed, thanks for spotting this!

Cheers,
Andrea

> 
> Yours,
> Linus Walleij

