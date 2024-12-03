Return-Path: <devicetree+bounces-126644-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 6ED299E233C
	for <lists+devicetree@lfdr.de>; Tue,  3 Dec 2024 16:34:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8FEEF16632D
	for <lists+devicetree@lfdr.de>; Tue,  3 Dec 2024 15:29:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7B58C1F76A4;
	Tue,  3 Dec 2024 15:29:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="BanYC0op"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C95CD1F4276
	for <devicetree@vger.kernel.org>; Tue,  3 Dec 2024 15:29:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733239758; cv=none; b=qiYQ4OjBbUpitYMMa06fza3wvdZv7G4R0OZCEFpKd1nDT06af5LWDXsHeI2nbb2EWHsNjqGBRFe6aD8wIL7IveOH/6TqTBHMhGOCyvD+ks7DLDdvjiTZGM2eyEhdcdQX/asbHLC/u0kIOppzwxFnK9tqrlF7L1qLLdrSHdKIrd0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733239758; c=relaxed/simple;
	bh=8mqfvdU74vH9ZSU9MATXgEKnH3/8mW6oJ58BTcHD8cY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=r7K65M0O0seHJfFaCk/GUPTCE7oijrqKEj7saIRGImVYnzKgGsabhuRKUltfFKJBb91nhinVib7d4KK/u7VOBAXYgsazkpnEvFX4JjwGlIPzUR/LDoJzbM6ekcn/a9uW10qklshDNmbNU5N2LgVHleZnLhtronDy0ZcRFkBs5qw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=BanYC0op; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1733239755;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=6QU1EnJ1BaXMVfYiRhAHSxvTRukbAoSNbyni68t4ov0=;
	b=BanYC0opgLZ9iLVBrlbaSHQRkod1L50e0uJIn4VLfu+0E/sjE+PyzzKlX4cVGYsJFr3MoW
	bVbFv+kEq6HSQA9hSaYhcDXTHgrp4DyiYq9kgLjw4iznkzFncjvXoREr53wq/aB5EmAk+K
	dOLi+pM5dnDZlu+slRlYzXTVamhtY3M=
Received: from mail-ot1-f71.google.com (mail-ot1-f71.google.com
 [209.85.210.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-58-_WNSDHIJNmWSgoJhEgjRTQ-1; Tue, 03 Dec 2024 10:29:14 -0500
X-MC-Unique: _WNSDHIJNmWSgoJhEgjRTQ-1
X-Mimecast-MFC-AGG-ID: _WNSDHIJNmWSgoJhEgjRTQ
Received: by mail-ot1-f71.google.com with SMTP id 46e09a7af769-71d3fc258fbso1063856a34.3
        for <devicetree@vger.kernel.org>; Tue, 03 Dec 2024 07:29:14 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733239754; x=1733844554;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6QU1EnJ1BaXMVfYiRhAHSxvTRukbAoSNbyni68t4ov0=;
        b=c9tRE0HXT5t64YSauLnOpsuY80w6bW+C3z0Cs8/jxtgbQNgQspnhzTBHzT/Zz8vVOl
         np+RMIz6U6UqsnW+efTeKHJR0Ma/6lznp42q/lLHDdHK05cZ1HEh+0M2KU5zWSLG9O4U
         wD870yPtiVdwStB2DBzUYIa4o1bjfhoSKKL2xdIqGLgiGqtA9qOVQnHqkx8lLT+GoNOW
         5uyBbRR+qIlIHmMeiyyu3PVh0VfDZy6QR2aA7CGOKEtJZHHLVplNInI+XVXhJ68X2Rxn
         yFtRR7bXJw9lCvrryx8VH5FwsS1941F3v7YvgEGZFvPvYIZ5AaAafNxmPCBuu3LeNEq/
         URzQ==
X-Forwarded-Encrypted: i=1; AJvYcCWBu/4NgA8w81tu1xpvC15hVoNcLcqzImdZyJTDqiVwjknI6Vh471a7lshvmaUHX7Bb0F0vOP+Nd/6s@vger.kernel.org
X-Gm-Message-State: AOJu0YwfQVVNI8NKsY11F4k7LB1/YszkoQMcUKWboWjVZu0aN/aybItb
	+vdOtfHgw16l3qxrNZBNqfwNlPEpKqDP81PCdzf4txmyN9z65cZthwhMDo325tqrFy75FgrpwQm
	rEuLLeMUBoIcBM1IH8DhJAtUoQFArXF7AVIEGa2vFZGYKpFH7Y0x2NWglh5iGnPkl8XHrEE+YSG
	5z0vvbivjXJQIotHV2IuwEzPwILxJtUj3oUA==
X-Gm-Gg: ASbGncuA+2hc2Bm74GsB8nYQ6Gwvd8XDoJeAgCu0AwagkBtNrnbYfeWMsvTz5hXCRek
	QL35Jc6qw9Bb4LKkRxR7jSngQvjBqiQ==
X-Received: by 2002:a05:6830:2aa5:b0:71d:5290:4b0a with SMTP id 46e09a7af769-71dae4057famr723608a34.0.1733239753809;
        Tue, 03 Dec 2024 07:29:13 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHowgZk/e3MXb1mhieu2vCwR76idfUlz6/II/BUj2dbmWaA1ntB1qRuQmc4QRLODYAXY7IRZgLgXUJnlG7wXdE=
X-Received: by 2002:a05:6830:2aa5:b0:71d:5290:4b0a with SMTP id
 46e09a7af769-71dae4057famr723600a34.0.1733239753522; Tue, 03 Dec 2024
 07:29:13 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241126-am69sk-dt-usb-v1-1-aa55aed7b89e@redhat.com>
 <2nuncc5rscu6h74ylaiu6yozg34aoigaj5d4uzvdtolt5q7bmv@6hacpxyb2532>
 <CALE0LRtUN2N_Z05jH_BMSg7yvirSRob0pSErmQxTu8AatmODgw@mail.gmail.com>
 <CALE0LRu-Sx5oTVNY3hm+Msu-zb04a7_ZD+r3xF1eRfR_WtK0VA@mail.gmail.com> <wbsg3fmco6rwjj7vtiqtqv7trfjor73j7rjx7efnlafo4pz4bc@awixm2iygd55>
In-Reply-To: <wbsg3fmco6rwjj7vtiqtqv7trfjor73j7rjx7efnlafo4pz4bc@awixm2iygd55>
From: Enric Balletbo i Serra <eballetb@redhat.com>
Date: Tue, 3 Dec 2024 16:29:02 +0100
Message-ID: <CALE0LRvZNnNJ8jBG35bU8Ev5Fvr2400O5qXUsRn0zufkidJeJw@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: ti: k3-am69-sk: Add USB SuperSpeed support
To: s-vadapalli <s-vadapalli@ti.com>
Cc: Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>, Tero Kristo <kristo@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Dasnavis Sabiya <sabiya.d@ti.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Thu, Nov 28, 2024 at 10:58=E2=80=AFAM s-vadapalli <s-vadapalli@ti.com> w=
rote:
>
> On Thu, Nov 28, 2024 at 10:47:42AM +0100, Enric Balletbo i Serra wrote:
> > Hi,
>
> [...]
>
> > So I changed the dr_mode to otg instead of host and tried to configure
> > a usb mass storage gadget but unfortunately didn't work, but this
> > could be a driver problem, I got the following error
> >
> >   UDC core: g1: couldn't find an available UDC
> >
> > As the devicetree should describe the hardware, and as far as I can
> > see it should support the type-c port act as a gadget, I'm fine with
> > changing the dr_mode, unless anyone have more information about this,
> > the thing that makes me think a bit more is that, in the TI kernel
> > this is set to host, so I'm wondering if I'm missing something or is
> > just that was never tested.
>
> Are all interfaces (Type-A and Type-C) functional as Host when the
> dr_mode is set to "otg"? (Do USB devices connected to the interfaces
> enumerate on AM69-SK?) If yes, then it could be a DIP Switch setting
> that is related to OTG mode of operation or a USB-C Mux that needs to be
> configured.
>

Yes, all interfaces (Type-A and Type-C) are functional as host when
the dr_mode is set to "otg". Looking at SK-AM69 Processor Start Kit
User's Guide (Rev. A) [1] I don't see any DIP Switch related to the
OTG  mode. Looks like the type-c connector connects directly to the
SoC through a USB HUB (TUSB4041).

[1] https://www.ti.com/lit/ug/spruj70a/spruj70a.pdf?ts=3D1733215039014

Regards,
  Enric

> Regards,
> Siddharth.
>


