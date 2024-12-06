Return-Path: <devicetree+bounces-127942-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 767EE9E6C6C
	for <lists+devicetree@lfdr.de>; Fri,  6 Dec 2024 11:40:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2FAFE1882EBA
	for <lists+devicetree@lfdr.de>; Fri,  6 Dec 2024 10:40:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 879D71FBC88;
	Fri,  6 Dec 2024 10:40:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=cornersoftsolutions.com header.i=@cornersoftsolutions.com header.b="DRIDXevY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f43.google.com (mail-oa1-f43.google.com [209.85.160.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B902B1F6691
	for <devicetree@vger.kernel.org>; Fri,  6 Dec 2024 10:40:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733481630; cv=none; b=k1+j5aJmIV1U1ek59eGNiHZEx6LOFEY/z1S5vXGzrDbYnGT+xP6J+FexJIDQHMtoTgc8KUZPP4aYyKuVzkVpyuBy3/qeoYoxgDqCG2J99cfp9eekla+A1MF+NdQgZtLbyLiYFdM3H7culCcTVxvDNavZHNtE/44rM0p7l81hhrY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733481630; c=relaxed/simple;
	bh=g8IFaUOB4P3I43rGs+nQsOp0ozchV1oKjUnIOr2vrKY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=e0Q0OtcFW1gSfnKn3qlYqoDxPL3nTaXmw8D0Xfk+pMC1MQRF44eOGto73x66hXMJdhoNV5oMX2cz5Y0gHxbN07TuA1Bhwt5St10aZUvukSbcs9giEIRjU7lpnE3IyXiFWjBKHG/DQXZKGOy2Y3oZkNZSUU0PsM5fuDiP9nW34ZA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=cornersoftsolutions.com; spf=pass smtp.mailfrom=cornersoftsolutions.com; dkim=pass (2048-bit key) header.d=cornersoftsolutions.com header.i=@cornersoftsolutions.com header.b=DRIDXevY; arc=none smtp.client-ip=209.85.160.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=cornersoftsolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cornersoftsolutions.com
Received: by mail-oa1-f43.google.com with SMTP id 586e51a60fabf-29f87f1152cso45604fac.2
        for <devicetree@vger.kernel.org>; Fri, 06 Dec 2024 02:40:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=cornersoftsolutions.com; s=google; t=1733481628; x=1734086428; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5dpoHhnnSqF1AlwYKD5E4gHGT3XutAgIPGhaNKW/0HU=;
        b=DRIDXevYclBLvFbQOjWGLyq3N9ANzBIrkJu8pxUClP5qmcNpj4BXJo02yQ8kAu7VGX
         bcfZhBSZLqOel/sQqc6xcC24kq8u69ZJdj3oBDn9KrLMSfdaQo7qQffhOHx9gTWn4ls2
         2Acdwslm8rxG0czrHP+CZfP3X86fzfEZBHH0nNnm4lFO4TnrBcVRksoZwjFkeTuTZ+oj
         KMyYPfpvcx/p/zo6zxMREw9kLd02r32xb8JWztm6YYRq3euAcEEy56NKWt9KuZOEDXqm
         GTVUeprHyYLTPHERcaJdrcichVx8SLY5fzt5oXvDg7z7xmPa8vF1HSw+LI0GCIX4AOUJ
         +Aog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733481628; x=1734086428;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5dpoHhnnSqF1AlwYKD5E4gHGT3XutAgIPGhaNKW/0HU=;
        b=H0+Za/eh99Ho9UTpOddCF3ILymHzY8Uz/55bfYx8eIxo78RQhTZ4KsUrvFnEV+tw2T
         OzuKb+Gh4Ab8891WSy0faa8QESaqW/6Ff4tF31idvdAkr+wGoFmPEGkRxtLjXyWdl/2X
         S038quzmHMREpFoCpwxoQylo4lqzCE/kwgi+6z2I8Ri4VqDMqzbDcfAxaSK3AOnoano3
         1yO/iy+vfFFtd7tybHB2TAsheEEIz9q05IhQxeeP11rACDxwChZtWcru/acS4l1sgdJn
         ESeqk/nO6EAyjviwcQIUANFaDlQJ2SsMMWXPDAEzwRx7VYx2Xi4xS87PHSmJ8JrN/vc9
         Si8g==
X-Forwarded-Encrypted: i=1; AJvYcCXhOmYW5/iefx8LqdJ90wMz/9ZUKl4m3RHi68kh7gu1kgpO9Fo1DezvJ9agvdaF8XQHkbRx6LezQb4t@vger.kernel.org
X-Gm-Message-State: AOJu0YwLLvuqC/AOOdCH4yxMrKLCpw4KAkQlTPMIT/KHG4hsmwLuNbW1
	pivdn2wE4aRQ+fX1KkMvU1s4Us+D4i7Ibne8YPCEEMOW+VgxmJCvQMt/GqPi5R/09FCgIZiyeOu
	pqOCMmKbL9YGycrXTbYt1JQiJ87nBB7zqJV8Qqw==
X-Gm-Gg: ASbGncvCgIaO4fgtQBTd2A5rxLQ6Np2/hlhoWbbxuaM7/GeOR86+2MB5fIV06uLUYMJ
	8k6+iTXqslgRLyEaxCLCDrvt8s69eWwOv
X-Google-Smtp-Source: AGHT+IEEgtCpiEfKyepoSM+/D8HoOWbGc7v8g0uhiFB/aNLSdUw6Ym7nLZpksS0y4DeVwr2P94N5ssZLKnJh8nBacmA=
X-Received: by 2002:a05:6870:c69a:b0:29d:c832:7ef6 with SMTP id
 586e51a60fabf-29f735d53damr1234503fac.39.1733481627713; Fri, 06 Dec 2024
 02:40:27 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <CADRqkYAaCYvo3ybGdKO1F_y9jFEcwTBxZzRN-Av-adq_4fVu6g@mail.gmail.com>
 <d53538ea-f846-4a6a-bc14-22ec7ee57e53@kernel.org> <CADRqkYDnDNL_H2CzxjsPOdM++iYp-9Ak3PVFBw2qcjR_M=GeBA@mail.gmail.com>
 <28d1bb46-ab18-42da-9ca2-ff498c888d66@kernel.org> <bdfeceb6-962a-4f20-b76c-4fe5e5ff80c3@foss.st.com>
In-Reply-To: <bdfeceb6-962a-4f20-b76c-4fe5e5ff80c3@foss.st.com>
From: Ken Sloat <ksloat@cornersoftsolutions.com>
Date: Fri, 6 Dec 2024 05:40:16 -0500
Message-ID: <CADRqkYAg5k3xM81-qBBiiLsvVdJCGdCVyAJgEexMw4s-1PeQkQ@mail.gmail.com>
Subject: Re: [PATCH v1] dt-bindings: dma: st-stm32-dmamux: Add description for
 dma-cell values
To: Amelie Delaunay <amelie.delaunay@foss.st.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-stm32@st-md-mailman.stormreply.com, dmaengine@vger.kernel.org, 
	alexandre.torgue@foss.st.com, mcoquelin.stm32@gmail.com, conor+dt@kernel.org, 
	krzk+dt@kernel.org, robh@kernel.org, vkoul@kernel.org, 
	Ken Sloat <ksloat@cornersoftsolutions.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Amelie,

Thanks for reviewing

On Thu, Dec 5, 2024 at 1:06=E2=80=AFPM Amelie Delaunay
<amelie.delaunay@foss.st.com> wrote:
>
>
> On 12/5/24 17:09, Krzysztof Kozlowski wrote:
> > On 05/12/2024 17:07, Ken Sloat wrote:
> >>>> + 1. The mux input number/line for the request
> >>>> + 2. Bitfield representing DMA channel configuration that is passed
> >>>> + to the real DMA controller
> >>>> + 3. Bitfield representing device dependent DMA features passed to
> >>>> + the real DMA controller
> >>>> +
> >>>> + For bitfield definitions of cells 2 and 3, see the associated
> >>>> + bindings doc for the actual DMA controller the mux is connected
> >>>
> >>> This does not sound right. This is the binding for DMA controller, so
> >>> you are saying "please look at itself". I suggest to drop this as wel=
l.
> >>>
> >>
> >> While logically it is the DMA controller, this doc is specifically for
> >> the mux - the DMA controller has its own driver and binding docs in
> >> Documentation/devicetree/bindings/dma/stm32/st,stm32-dma.yaml
> >>
> >> I can reference st,stm32-dma.yaml directly, but I was unsure if this
> >> mux IP was used with another DMA controller from ST on a different
> >> SoC.
> >>
> >> What do you suggest here?
> >
> > Thanks for explanation, I think it is fine.
> >
> > Best regards,
> > Krzysztof
>
> This description was lost when STM32 DMAMUX binding txt file was
> converted to yaml:
> 0b7c446fa9f7 ("dt-bindings: dma: Convert stm32 DMAMUX bindings to
> json-schema")
>
> -- #dma-cells:  Should be set to <3>.
> -               First parameter is request line number.
> -               Second is DMA channel configuration
> -               Third is Fifo threshold

Thanks for the info, this aligns with what I have

> -               For more details about the three cells, please see
> -               stm32-dma.txt documentation binding file
>
>
> stm32-dmamux exclusively muxes stm32-dma channels. It is not used with
> other ST DMA controllers (STM32 MDMA, STM32 DMA3).
>
> So it is fine to refer to st,stm32-dma.yaml.

Ok, I can add that on v2

>
> Regards,
> Amelie

--=20
Sincerely,
Ken Sloat

