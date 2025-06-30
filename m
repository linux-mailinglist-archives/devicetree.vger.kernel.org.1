Return-Path: <devicetree+bounces-191019-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3442AAED840
	for <lists+devicetree@lfdr.de>; Mon, 30 Jun 2025 11:11:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 224F33A553A
	for <lists+devicetree@lfdr.de>; Mon, 30 Jun 2025 09:10:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B2E9523F413;
	Mon, 30 Jun 2025 09:10:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="XUzJg0co"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C22F5479B
	for <devicetree@vger.kernel.org>; Mon, 30 Jun 2025 09:10:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751274659; cv=none; b=rCs/hAcyjkD/qHxp0YoBPy10udEInAZChdT/gjvtbIh15suGItAA+rr3Pg28fz3niEdQ4f7gVF9Uz4025edUeZra4bGOoJgVGMefs7d7Jh5XqoAW7xldMGjiy947rvs8dC+URjPkwWG6gMPeSD0WbBAXThYew0nFnLp7vcR6Ubc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751274659; c=relaxed/simple;
	bh=wtv+LFHxuM9AWX0L6ikf56UwuRoDnrS0tJ6y5ORCVkc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=RhaWgpdEJmy18QzVHPjh2cyZSpMUE6trdR2DpXkGBmR/22Y+RVa/zl5THawye6IBUJ+F7cqsNQRsVXkNPIgI490uDTJIThabhmeBP0tv8o1E32lqFVoQw9Cm0sUmFrEKu8s1RZCbkbrZYtSswlMd8JWEo6f4WtP8VvnsYxUSXw0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=XUzJg0co; arc=none smtp.client-ip=209.85.218.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ej1-f52.google.com with SMTP id a640c23a62f3a-ade5a0442dfso806100666b.1
        for <devicetree@vger.kernel.org>; Mon, 30 Jun 2025 02:10:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1751274655; x=1751879455; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=1c7UVB+HsIrwMhQKzoKR+ElhzYVbyK56CpcLANHfHcs=;
        b=XUzJg0cojs/dxd+UBiRjXtZwrbSlJGH9jluzmCVpyoH2taWOlsFi575EFNHyrXYwtq
         aSfOhtvslDhj8Xy0TywNl+PGrRiuQKIYG4eXJOnLirBKiNCvepBBeyBF2ny0GOh/MJ+J
         abXLDkBBMv2mStLY+QemkOsTBwTeNLNeugABv25HCB/gnEwNQDHT3++ZK+fenyIOPkrB
         DojJKHlSn3TGDgVkrnFmox/KYfsunXTYZ/jpgtqFOujdE7LTESpDvESz0xtHOo5usBXE
         dp1MkgOU0z5XP6dMRnn7N+51d421NXPhW5cwQ/yv5fwQm1KsM0VMW6tlPaQCgzbwf/13
         NsKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751274655; x=1751879455;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1c7UVB+HsIrwMhQKzoKR+ElhzYVbyK56CpcLANHfHcs=;
        b=MEM+edIS/+gR1eCFkzyq5BYJhZlYdo4v55N6qhRJeOfLsX7NB9ukN+OEkFrYWWEIyp
         wz6yMe8By/0TQypmGmPa5/Nulvw+3/c80iwfSqcomVmmfEuDCF36Va/KjydKegma8vM9
         jgCnXuiPslXcAjFjJ3rE08lD6OYClbgXkBK5Oq2wJXu7HpdGDIGGlhc4avirBgRn74tM
         9j2myy1SfXyWUOWmn7I0+7i+5qUUvNBfgZfs/3a2i5nQe/gDoTcvZQGy+r1y0hBwPZ9G
         iXaks80OTyr72d5jPmn62jZ2vVs0j0iHcvq9d4wV04DGSwn6DO8D1I0GvO87J/TBqOE4
         pjOw==
X-Forwarded-Encrypted: i=1; AJvYcCUx8LVcxygw5A8JQGEwS+DAuCcoeo+i8NLs46+l1alwKILvRPQYw6eEZ7tZUabunCbvbvR30t2URCnp@vger.kernel.org
X-Gm-Message-State: AOJu0YypKWo71/Df+3kcP9zXnkAbXmnka2qi27T9JC9MGJq87lTTfaCU
	nKLqk98jllzhrD2gGOlb/Gh+NGIhNMBzkUqTFuWkTDtGTTQB7ykThKLV9FvlJ6yO4vk=
X-Gm-Gg: ASbGncuzcNOym1DcBtby+8Xuu0lcqLUeO4b6INUHjzzwF06dIbNap2MVwJ42qdtnbmC
	WX7hu12DK39CI98dR8AIqHl1YNoHkBniG9fvpDgKUpWyhocEvjeEBaFu+arJP19gauFv8qficIe
	9PeXaOebWlDTUwxsct3+viVdyQObZLxc5IfWK7XJKX1krkuYmylqtf7Uo+n79x3RjrJsWpB2X+y
	Cvqp5hQFSc2dN4CAHxU4rLJphdOL98x0rP5p2C4e2zp0IFLxhLCKv4PRlRqdq9EWhiNYA4kmdcD
	7eAtyvysdpI34R8JeKN68YX1kasJNf0dhM0fcTUYB6w9982vXP+nI24HrrqmwpC3JN4jby2Ur8c
	wIVXAWC3MHGQQV8mRbpGNeU4ucPT6pNkpUE5H
X-Google-Smtp-Source: AGHT+IEkCjklJgOVn9m2h0ZYB9RYj1O2BKk8vmPV0JoHQsw1aXV4Ln/c1FHctMmon20dE6hzBNg4oA==
X-Received: by 2002:a17:907:7e95:b0:adb:469d:2246 with SMTP id a640c23a62f3a-ae34fd89929mr1069995666b.17.1751274654602;
        Mon, 30 Jun 2025 02:10:54 -0700 (PDT)
Received: from archlinux (host-87-14-238-240.retail.telecomitalia.it. [87.14.238.240])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae35363a9a8sm635407166b.33.2025.06.30.02.10.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Jun 2025 02:10:53 -0700 (PDT)
Date: Mon, 30 Jun 2025 11:09:02 +0200
From: Angelo Dureghello <adureghello@baylibre.com>
To: Jonathan Cameron <jic23@kernel.org>
Cc: Nuno Sa <nuno.sa@analog.com>, Lars-Peter Clausen <lars@metafoo.de>, 
	Michael Hennerich <Michael.Hennerich@analog.com>, David Lechner <dlechner@baylibre.com>, 
	Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, linux-iio@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Jonathan Cameron <Jonathan.Cameron@huawei.com>, 
	devicetree@vger.kernel.org
Subject: Re: [PATCH v2] dt-bindings: iio: adc: adi,ad7606: fix dt_schema
 validation warning
Message-ID: <epswbthrftxecrgm2rjkag6yxkpegr7boodzpjqfx675gghziy@p7dy7cns2ot6>
References: <20250526-wip-bl-ad7606-dtschema-fixes-v2-1-9bd56d039489@baylibre.com>
 <20250531170448.2be25330@jic23-huawei>
 <20250629171908.122a5163@jic23-huawei>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250629171908.122a5163@jic23-huawei>

Hi Jonathan,

sorry, could you merge this, or do you need the hash fix ? 

Regards,
angelo

On 29.06.2025 17:19, Jonathan Cameron wrote:
> On Sat, 31 May 2025 17:04:48 +0100
> Jonathan Cameron <jic23@kernel.org> wrote:
> 
> > On Mon, 26 May 2025 15:19:08 +0200
> > Angelo Dureghello <adureghello@baylibre.com> wrote:
> > 
> > > From: Angelo Dureghello <adureghello@baylibre.com>
> > > 
> > > Fix following dt_schema warning when offload is used:
> > > 
> > >   DTC [C] arch/arm/boot/dts/xilinx/zynq-zed-adv7511-ad7606.dtb
> > > /home/angelo/dev-baylibre/linux-iio/arch/arm/boot/dts/xilinx/zynq-zed-adv7511-ad7606.dtb: adc@0: 'oneOf' conditional failed, one must be fixed:
> > > 	'interrupts' is a required property
> > > 	'io-backends' is a required property
> > > 	from schema $id: http://devicetree.org/schemas/iio/adc/adi,ad7606.yaml#
> > > 
> > > There isn't any reason that we couldn't have interrupts wired up at the
> > > same time we are using io-backends or SPI offload, so dropping off the
> > > related "oneOf" block entirely.
> > > 
> > > Fixes: ccf8c3f106a2 ("dt-bindings: iio: adc: adi,ad7606: add SPI offload properties")  
> > That ID seems to be wrong.   Probably down to the messy rebase I had to do pre pull
> > request.  Fixed up to be 81fe5529e812
> > 
> > Applied to the fixes-togreg-for-6.16 branch that will become fixes-togreg after rc1
> > is available to rebase on.
> I guess something related to the rebase I had to do just before the last
> merge window caused it, but that Fixes sha is wrong.
> 
> 
> > 
> > Thanks,
> > 
> > Jonathan
> > 
> > > Signed-off-by: Angelo Dureghello <adureghello@baylibre.com>
> > > ---
> > > Fix dt_schema validation warning.
> > > 
> > > Link: https://lore.kernel.org/linux-iio/20250408-wip-bl-ad3552r-fixes-v4-0-b33c0264bd78@baylibre.com
> > > ---
> > > Changes in v2:
> > > - Change removing the related oneOf block. 
> > > - Link to v1: https://lore.kernel.org/r/20250523-wip-bl-ad7606-dtschema-fixes-v1-1-d9147fb2a199@baylibre.com
> > > ---
> > >  Documentation/devicetree/bindings/iio/adc/adi,ad7606.yaml | 6 ------
> > >  1 file changed, 6 deletions(-)
> > > 
> > > diff --git a/Documentation/devicetree/bindings/iio/adc/adi,ad7606.yaml b/Documentation/devicetree/bindings/iio/adc/adi,ad7606.yaml
> > > index 29f12d650442b8ff2eb455306ce59a0e87867ddd..1a5209139e1338f803c66ad2b4d63ad53cc11d96 100644
> > > --- a/Documentation/devicetree/bindings/iio/adc/adi,ad7606.yaml
> > > +++ b/Documentation/devicetree/bindings/iio/adc/adi,ad7606.yaml
> > > @@ -223,12 +223,6 @@ allOf:
> > >        - required:
> > >            - pwms
> > >  
> > > -  - oneOf:
> > > -      - required:
> > > -          - interrupts
> > > -      - required:
> > > -          - io-backends
> > > -
> > >    - if:
> > >        properties:
> > >          compatible:
> > > 
> > > ---
> > > base-commit: 3964c6e5877f054497ffccc7d00f8f7add307d0d
> > > change-id: 20250523-wip-bl-ad7606-dtschema-fixes-5e6ab342e043
> > > 
> > > Best regards,  
> > 
> > 
> 

