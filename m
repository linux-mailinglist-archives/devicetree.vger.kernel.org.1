Return-Path: <devicetree+bounces-255132-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D2CDD1FF36
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 16:52:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id EFCDB30167B8
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 15:48:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9A90438A2BE;
	Wed, 14 Jan 2026 15:48:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="VXdQ6Na/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2179A39A7E5
	for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 15:48:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768405703; cv=none; b=eGjus2vRT6kgG8UP59jAYA2FCa498wmd7cWgfckTLv9w8sAm08LJI427JmNgnrbPRKOQ0ljQ7cjsSztbD1krvttwmbetuU17cALUsuA4Gst0ACjueQIitozjkAHDMw5raFurb1T5ITUpm/xzRsfzuFUYxGVFV7BGFX7pZtHBjLA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768405703; c=relaxed/simple;
	bh=TV16ywr+bfqMRUG+Xsz04+A0GSeKmtLKO0S6DHFq7/c=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=FgHHn7Vj4c97vCnmCJUhMzsgi0h6ZJcC96ysOLhwfI1Tb4DQLTcXrhOKp4Fn1F5YV7uMwPsCFR/qEBhITIaRoigEE2Dwr7l6VKIGRBndqSEevnuUHESOx+fv+IwmHPl6qY1I2n1+Uypjj7kLMwfC2zQ197Jl/RCzfi3CREAJgnc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=VXdQ6Na/; arc=none smtp.client-ip=209.85.221.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-42fb2314f52so4778659f8f.0
        for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 07:48:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768405700; x=1769010500; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=QyUFd+fTAc4ItpNI6LyTbMTp3pSM+0F1/ggxvGiRT80=;
        b=VXdQ6Na//JAjO0Bj2wV5/8u1/ovQ9LPEO+GPMLWJPZ0x3ytO2dVDwlnj9PIbBcbkhN
         toEqCass/R8zl2pG3MCeoYeYF06KaHAK7Fxd5i39iGrhtu5rXCidz2WkfXiJQrLwKDQA
         QS2Ev1LDCKXrG3bQe1KegDvWdYNVpJFJ+CQrtz1fsD0iV4vyY73KG0PbJUhoRa4o5LRk
         PARaPyPyz5hHeHmAFgSB/3s6zHAXbu55xKQaaAGZV7hRHt0EmUkCYOpP/UnQtSm+b/2Q
         ORD4URLgynf00igZya4lvROfMshk1BNKhGjYKLWGJ1/ShrWHwY/601vkBo6XXYPaJYcy
         J35w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768405700; x=1769010500;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QyUFd+fTAc4ItpNI6LyTbMTp3pSM+0F1/ggxvGiRT80=;
        b=UtcZYqJOKOTNtvegh1Q8K9C4wKVrzatlhwQ5CAQ9SYWHsyWOZUVtMMYsM9j8nSeA30
         QBPSBtL1C+WFM1ubh+LRjGdiG1n0eMl+k59b/oOejkwMVVVipy4BtUcyWm1999Puyirv
         pXlDhJONOpBF8dFZ7MVqcOk0W3mrQOf4O3hnmdyrcP0A9XSKrqKAJ6uSnUShNCa1CLBi
         0CEwNRHQYFZmwIlFwJqZSz0nEAjzHZ7gwlPx0yIt36m57icVG4JyNdI1lx38SUBUOrjD
         PcHqfu64HS9vwAbeXgH7tqpG33JHyiDfJHGaboVWPrbcEFKs/NLLCAR8VAgmPCUwYiFU
         i3KA==
X-Forwarded-Encrypted: i=1; AJvYcCV3gjCjqeb2N8ihkrY/A/TKIhfJQq/GXsE3lN7yzna0zo0GyQ0SBVegGrLeht+8GxafqIhJAAxC+d22@vger.kernel.org
X-Gm-Message-State: AOJu0Yw+nnDKxZAg9vtcaHuBhQI+8LwTviJoXjk8hVh0F7r8IaP/vd9w
	5878e4iz46mFTqd1S0FClZ2DMpbtKW1bZ7/xNP3LbHE2hVMw7dmDm9RS3wVFqA==
X-Gm-Gg: AY/fxX4unjE+xnWriwmF4qIXd9eA1e+MRdQYXqDDJFp4aC/DHs4Fv3/a7Z5qS6fKvgj
	+2ki80hXKmCRcbUx5M1htAloNYmyfJvuIEHvVQ4xBQD7zWqtuW9vLewRNoT5Z1eJ7OfW4gtTuaE
	+dU6uKkD4SLeG60SaBrM51ILd2klYENCkLii8D3hQWCANnEsE+5wiA0IJ9CaYEoAneOoTOf7uoI
	92YHLsjaQKFpY3cRJbfhF+qYVyC7/yvJUmK5K4Y4x1EYyUuVmOCDKm4cpSt6v0z8OHrFaEqhxDX
	GIGUiLwK93iSlWif4khC9ZE2JvTfp8xoj04UkhLqz8F0hfmDudMVync0wAiWw5MLxOCRJldiQws
	ZfdjQikChwC9641O+a7PwPF8iv3mQMSahe4wVAQrZHY4ygk/6sxuFeiftq+wbgvcYi0AZ8eeoAH
	TBOebuX4L0NqdX7qtJKGxuCvZJ/qSnVW406yYSWbkZAsTcMl9euVS2Zgf3u9CkeEeN
X-Received: by 2002:a5d:5d07:0:b0:430:fd9f:e705 with SMTP id ffacd0b85a97d-4342c500124mr4391028f8f.27.1768405700354;
        Wed, 14 Jan 2026 07:48:20 -0800 (PST)
Received: from localhost (brnt-04-b2-v4wan-170138-cust2432.vm7.cable.virginm.net. [94.175.9.129])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-434af64a671sm16216f8f.9.2026.01.14.07.48.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Jan 2026 07:48:19 -0800 (PST)
Date: Wed, 14 Jan 2026 15:48:18 +0000
From: Stafford Horne <shorne@gmail.com>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: LKML <linux-kernel@vger.kernel.org>,
	Linux OpenRISC <linux-openrisc@vger.kernel.org>,
	devicetree <devicetree@vger.kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Linus Walleij <linusw@kernel.org>,
	Bartosz Golaszewski <brgl@kernel.org>, linux-gpio@vger.kernel.org
Subject: Re: [PATCH v5 1/6] dt-bindings: gpio-mmio: Correct opencores GPIO
Message-ID: <aWe6wsho70kEXirE@antec>
References: <20260114151328.3827992-1-shorne@gmail.com>
 <20260114151328.3827992-2-shorne@gmail.com>
 <CAMuHMdVdeepsCSMBrzUvhAFXj4zjA7VwRpxn+xVuZ0d1+9mTEA@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAMuHMdVdeepsCSMBrzUvhAFXj4zjA7VwRpxn+xVuZ0d1+9mTEA@mail.gmail.com>

On Wed, Jan 14, 2026 at 04:36:23PM +0100, Geert Uytterhoeven wrote:
> Hi Stafford,
> 
> Thanks for your patch!
> 
> On Wed, 14 Jan 2026 at 16:14, Stafford Horne <shorne@gmail.com> wrote:
> > In commit f48b5e8bc2e1 ("dt-bindings: gpio-mmio: Add compatible
> > string for opencores,gpio") we marked opencores,gpio to be allowed with
> > brcm,bcm6345-gpio. This was wrong, opencores,gpio is not hardware
> > equivalent to brcm,bcm6345-gpio. It has a different register map and
> > is 8-bit vs braodcom which is 32-bit.  Change opencores,gpio to be a
> 
> broadcom or Broadcom

Right, thanks for spotting this.

> > separate compatible string for MMIO GPIO.
> >
> > Fixes: f48b5e8bc2e1 ("dt-bindings: gpio-mmio: Add compatible string for opencores,gpio")
> > Signed-off-by: Stafford Horne <shorne@gmail.com>
> > ---
> > Since v4:
> >  - New patch.
> >  - Rebased old patch and rewrote commit message.
> 
> The actual patch LGTM, so
> Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

Thanks.

-Stafford

