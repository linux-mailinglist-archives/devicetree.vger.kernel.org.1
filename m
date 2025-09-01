Return-Path: <devicetree+bounces-211169-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id A4DD4B3DCCD
	for <lists+devicetree@lfdr.de>; Mon,  1 Sep 2025 10:42:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0160A1888E15
	for <lists+devicetree@lfdr.de>; Mon,  1 Sep 2025 08:42:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B30252FB629;
	Mon,  1 Sep 2025 08:41:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b="DqpdJwZU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com [209.85.218.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E11F2F83D9
	for <devicetree@vger.kernel.org>; Mon,  1 Sep 2025 08:41:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756716117; cv=none; b=b9oRBxTZ3UtP/8me0tOYyU4QuI1VkdOxpLG4dW5pG0LfdjPOmTbjgpgQFGVbZyIyrmCEHwUatpJMEN6cpGObjMZYzOynxeJpZ+XqSOpif7nd88PKfhg5WJwxgtwwZeKtbGvbLH2sf5xbXLCTMP1q/19LgbIcrWtjEA3e7/byIhI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756716117; c=relaxed/simple;
	bh=y9iRXq590XV9YKgrt7JJWzvjNNPhcah5oQSqjYeIvPc=;
	h=From:Date:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Wirk96XsOUmm8HJY7JRZspCHuoHqVbMG6DEEBD/hanEdh9sNKtyr4TD7PGt9QbZ0iGHfaMF1b25+UHFLUMCT0uGWYTW/eMNfhq3sb9YEQVwdBnFabnj3hcDVFdBU2iXDI1ITHsNj/yV/WX2qHRw3j34n3OsPCWaKZtT1iHHnvtg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com; spf=pass smtp.mailfrom=suse.com; dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b=DqpdJwZU; arc=none smtp.client-ip=209.85.218.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=suse.com
Received: by mail-ej1-f44.google.com with SMTP id a640c23a62f3a-afedbb49c26so622292166b.2
        for <devicetree@vger.kernel.org>; Mon, 01 Sep 2025 01:41:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suse.com; s=google; t=1756716114; x=1757320914; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=WrzB9NAU8AL+JbGiYOShZmT1xWel7aF8cSCJNbT1IGQ=;
        b=DqpdJwZUZddDLfG9UCnUnhpp1pOW5hCZj7UzHbwh0/rhuPrtNnAwe0ZviDzje8ZO3K
         TSC6oUPA433UvFHESpyIsz+6OFLv2v+uv0AWYymEie3MLBkKyG+bww6F43HagJ2DWbOB
         5N01vA+bGdhWl35idrljCGlwbO0nTmrn3QuYK+wTCuUOTYVVPE+2Z2voyPrm4gwp4td4
         FQL5vksx12rSCaKujAx/he3T52MJlhXHaY9YeZop0pjXmnQuTpT2YxY/UE9Nu48oQydp
         b0Ff7dpLi9+L/7nX/9dDnkejjzBDNLWplaU8JOAO8DbvAp4VaZCfjU4XdV6Gp5cPt+Dp
         rCIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756716114; x=1757320914;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WrzB9NAU8AL+JbGiYOShZmT1xWel7aF8cSCJNbT1IGQ=;
        b=ExrikReE4zk5ofIJ7O9fn8DMc8BV4v0TzOzTIWaefTK5gcPaLbzRAgv+NgAGNQOaTM
         rubhbn7kJcqndDYrnpmdYE15zB8ue1Mrf/QUyj/yOKMUwUYk2jkVn/yJo74ywvTXkauo
         eQjLBvgxKwWFHYMBY0LyV8tiljOPDW/MXK8Ov4gvSkjP+bFXgl6qj+YH2n8lwEdgGijG
         +n6oCd3bSd3czNG8jvsYY0HdzS/h452IRMMajrqdtVUTY+nanULb2EuLFzDb8o/qYDY4
         bsxlHrFv9prJMkW0WzPm4r2GM1sdW0FPcEADlyDZqZWMFNNiOAdh7qC8KhtgY/Y8m0j6
         SZFQ==
X-Forwarded-Encrypted: i=1; AJvYcCW7OJ1JrhtJi/JbLAQq1vBzA2nvhKr3nEtJNmJXZRGP0JpWRXM6wUfs7CaeP4Moe4c5yoMaUOcoLaIp@vger.kernel.org
X-Gm-Message-State: AOJu0YwAvYJWgcRWmEs1k7nUSatBOcvS31ln3TJdFscABgmQ04JOyy4i
	5OqL+jN4vLlcCF7EFc7r72Q76FcIM6VqpsmCAUpL7Thi5zIGlkZ5V/NmuylNARCeRVQ=
X-Gm-Gg: ASbGncuBnrd8tgii7m4kX1ul77Dky4zfqEizeAVQt2rsmtBsG02LJAsV/Pd2C7vwOwR
	KEnQHDyJkMLceaclXUz/kmkz3X6EfseUwsDlUrFG6iJ5okRgd3yuUyYsQHAJOmYlQ3/AN5BOYlN
	JQ8QAVrel3cboPny0ZtuEgqbCp63kEyylVoJ4sPSIj9f593i6+EUbFcL4C6wU1gErry1oM/xdR/
	TsvkvAVoUbSPkKr5DMwCc3mgM5cTYrBVwDrOs9VOhDGZplV2v0haROMFJe0Eevx6SluvO9MSkZA
	OxU+LlY36xUXC5Im14pNn5XGV614vcfu+GPvJdIWBbSeaMP7dSRvc9U1Loc9KernYoz/BLJej4N
	o7rEoE8eRlVLvqUBf3cmeAh/F+T/SCsVl2/bXzVZ2CadIN/AmLtKK0ygZiqXCT6REqA22WUBWz4
	Xdr4/NfpHlGI1NTR1u
X-Google-Smtp-Source: AGHT+IH2zSDfBqSV/fMxZqWNDlUTgT9uEj4Uc7dil2+MCQuXaiyEKD87E68kEKAxnY0UHRKOEarrsA==
X-Received: by 2002:a17:907:e8f:b0:afe:8f28:fd5 with SMTP id a640c23a62f3a-b01d9719057mr758066166b.41.1756716113939;
        Mon, 01 Sep 2025 01:41:53 -0700 (PDT)
Received: from localhost (host-79-36-0-44.retail.telecomitalia.it. [79.36.0.44])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b0410138d0asm408801166b.53.2025.09.01.01.41.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 Sep 2025 01:41:53 -0700 (PDT)
From: Andrea della Porta <andrea.porta@suse.com>
X-Google-Original-From: Andrea della Porta <aporta@suse.de>
Date: Mon, 1 Sep 2025 10:43:49 +0200
To: Rob Herring <robh@kernel.org>
Cc: Andrea della Porta <andrea.porta@suse.com>, linus.walleij@linaro.org,
	krzk+dt@kernel.org, conor+dt@kernel.org,
	florian.fainelli@broadcom.com, wahrenst@gmx.net,
	linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>, iivanov@suse.de, svarbanov@suse.de,
	mbrugger@suse.com, Jonathan Bell <jonathan@raspberrypi.com>,
	Phil Elwell <phil@raspberrypi.com>
Subject: Re: [PATCH v4 1/3] dt-bindings: pinctrl: Add support for Broadcom
 STB pin controller
Message-ID: <aLVcxYeMeQqHoH_U@apocalypse>
References: <cover.1756372805.git.andrea.porta@suse.com>
 <7ed0f2779829f4e63b69d8cf5cedda9f849996bc.1756372805.git.andrea.porta@suse.com>
 <20250829175957.GA1073350-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250829175957.GA1073350-robh@kernel.org>

Hi Rob,

On 12:59 Fri 29 Aug     , Rob Herring wrote:
> On Thu, Aug 28, 2025 at 02:47:38PM +0200, Andrea della Porta wrote:
> > From: "Ivan T. Ivanov" <iivanov@suse.de>
> > 
> > The STB pin controller represents a family whose silicon instances
> > are found e.g. on BCM2712 SoC.
> > 
> > In particular, on RaspberryPi 5, there are two separate instantiations
> > of the same IP block which differ in the number of pins that are
> > associated and the pinmux functions for each of those pins. The
> > -aon- variant stands for 'Always On'.
> > 
> > Depending on the revision of the BCM2712 (CO or D0), the pin
> > controller instance has slight differences in the register layout.
> > 
> > Signed-off-by: Ivan T. Ivanov <iivanov@suse.de>
> > Signed-off-by: Andrea della Porta <andrea.porta@suse.com>
> > ---

[...]

> > +  - compatible
> > +  - reg
> > +
> > +unevaluatedProperties: false
> > +
> > +examples:
> > +  - |
> > +    brcm_pinctrl: pinctrl@7d504100 {
> 
> Drop unused label.

Ack.

> 
> > +        compatible = "brcm,bcm2712c0-pinctrl";
> > +        reg = <0x7d504100 0x30>;
> > +
> > +        bt-shutdown-default-state {
> > +           function = "gpio";
> > +           pins = "gpio29";
> 
> Wrong indentation. With those fixed,

Ack.

Many thanks,
Andrea

> 
> Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
> 
> > +        };
> > +
> > +        uarta-default-state {
> > +            rts-tx-pins {
> > +                function = "uart0";
> > +                pins = "gpio24", "gpio26";
> > +                bias-disable;
> > +            };
> > +
> > +            cts-rx-pins {
> > +                function = "uart0";
> > +                pins = "gpio25", "gpio27";
> > +                bias-pull-up;
> > +            };
> > +        };
> > +    };
> > -- 
> > 2.35.3
> > 

