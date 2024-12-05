Return-Path: <devicetree+bounces-127536-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C0609E5ABF
	for <lists+devicetree@lfdr.de>; Thu,  5 Dec 2024 17:07:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id F295D1678FD
	for <lists+devicetree@lfdr.de>; Thu,  5 Dec 2024 16:07:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E4CE821D5B0;
	Thu,  5 Dec 2024 16:07:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=cornersoftsolutions.com header.i=@cornersoftsolutions.com header.b="KssXXnKL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f48.google.com (mail-oa1-f48.google.com [209.85.160.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD06117E473
	for <devicetree@vger.kernel.org>; Thu,  5 Dec 2024 16:07:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733414854; cv=none; b=HPpTjg7eJNDif9NNzg1/f7mMelBJXXihGJoZU0GpckjdCNA7H3XDlTNa7whPbwD/xUfsXcsEJKwz8+ssAodSVDrMuxkv/60X7FtgrtJxUYdJED2G7KtMHemH2MoqB1Ijyj/6dqCjOP9DirFwElGXzkbnqAQDHADdJ9toFrHQU0s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733414854; c=relaxed/simple;
	bh=KOckcNe8W3RQKx65UzBFy6XStXAxVc8nCNjDX8cXNw0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=dx4WJr6TuMZs9LiMrDWyclLh8a5wji9Cb0FYHi8/UNC5bJorekvl7rPtRjBGcIHSCl+fWqGfqGprDl5+BQyZE9FNYfqnQH8ZSqicyZ8bRBJgs9gHbiN5Mwqa/CdYlQz3AslHmtapiSssTQIDIvQ6xT8ZqwtmFcgq0KZQ03/9kas=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=cornersoftsolutions.com; spf=pass smtp.mailfrom=cornersoftsolutions.com; dkim=pass (2048-bit key) header.d=cornersoftsolutions.com header.i=@cornersoftsolutions.com header.b=KssXXnKL; arc=none smtp.client-ip=209.85.160.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=cornersoftsolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cornersoftsolutions.com
Received: by mail-oa1-f48.google.com with SMTP id 586e51a60fabf-288fa5ce8f0so331262fac.3
        for <devicetree@vger.kernel.org>; Thu, 05 Dec 2024 08:07:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=cornersoftsolutions.com; s=google; t=1733414851; x=1734019651; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KOckcNe8W3RQKx65UzBFy6XStXAxVc8nCNjDX8cXNw0=;
        b=KssXXnKLjSzDbkwDi6QArPLrpHMWryNsr44YocM3Djj7WjuPgnFEqHG3srma7I6SY9
         Tp8nOrHwRgaPnegnVODTpNBjJgoDc/kqWcG9j3bfKem4uEORtABqgMRiTLS1CQMcqrQB
         BMVKw4kTvbTuCRwc2TkePE2i1+O8FtmxzCTMJKsD/aA58oWK7sa6uGXNyL+3GnkcRz5Z
         jkPVLkNpamltrB95eX2/hOnsUXqI25KCLqfBfB+oKSPQzWNdOZTjbZHnFgSC6oQSdFfg
         RLdUwRPFmVQ/4BPYCx9xReHRqkRREvGLmnpttkKPPXsTDX8p1mYYjVe2VwxfixnxbPDj
         l04Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733414851; x=1734019651;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KOckcNe8W3RQKx65UzBFy6XStXAxVc8nCNjDX8cXNw0=;
        b=rf3SY3GRVbDjY4A/i5dOhROaaL3bo7hQDsY/ZwxfOwLiu9izZTNHDdReYJTdNfjTlQ
         2CBrj9YxLfXF6+peMjvGST6gN3FRYjUCXaChKjc6CCfeAI8s1zsgUWO463AmF9utCc8G
         8K7hSFy/4j7//MV2+LNYVt1yBYpGb67TVIbZ7Mi4fLnOsXuqM3FukbOAnuhhlN0fHUAo
         W/9fE19yr32QkenGCMrA67MXDMWNDs6zkIqc/OUdSVfoHpIsoZEd4tYEaZ9uggqRk/S8
         0PsBcxttjrRem8bhBFBSQaEdv7RPlqEngnm7jhnuBqn5GMCjceASe8A9GOiei/EXMG8S
         4BFg==
X-Forwarded-Encrypted: i=1; AJvYcCXMfAhwlHJErnejWLWZufAiJN9jXlDAYGPv0xd6qJHqx4CoNTueEJeiIeiQO9J2S93q9kPqHvx7QnBe@vger.kernel.org
X-Gm-Message-State: AOJu0YwYoJrzZ7XZFUYG4pduIR9Oy04Dn13otOeuyNVT3HWslU7hXUR/
	yDXsv3ZL7cxnAaIGFPK0ZoXlZdCmZ1dAsk8rjqxTboB5dKF4arBTZEYQCpA5OjbINwt69nLAKX1
	7Sq45lWi2AWrBtmYcUYfl2ApFKC1uPvCQUwdBGw==
X-Gm-Gg: ASbGncuuVxVItl13HD8C3lXyjMJx7YNaCdVJD/USbHiwJ1nzVwAy4aCOoD8J48IqkJk
	ZYTwaGB8ocZA/EJbjey2lVoi9CG6PHdn5
X-Google-Smtp-Source: AGHT+IFc4uqMYZT0SxPqLKcDtYnZCPI05fbA21AsNVCAy81bsUwRL7Rs+7Wfd6hN5qQc+lT4SQo91gDOIfd4QY1CTs0=
X-Received: by 2002:a05:6871:4b83:b0:29d:c832:840d with SMTP id
 586e51a60fabf-29e8890d522mr10222701fac.35.1733414850886; Thu, 05 Dec 2024
 08:07:30 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <CADRqkYAaCYvo3ybGdKO1F_y9jFEcwTBxZzRN-Av-adq_4fVu6g@mail.gmail.com>
 <d53538ea-f846-4a6a-bc14-22ec7ee57e53@kernel.org>
In-Reply-To: <d53538ea-f846-4a6a-bc14-22ec7ee57e53@kernel.org>
From: Ken Sloat <ksloat@cornersoftsolutions.com>
Date: Thu, 5 Dec 2024 11:07:20 -0500
Message-ID: <CADRqkYDnDNL_H2CzxjsPOdM++iYp-9Ak3PVFBw2qcjR_M=GeBA@mail.gmail.com>
Subject: Re: [PATCH v1] dt-bindings: dma: st-stm32-dmamux: Add description for
 dma-cell values
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com, 
	dmaengine@vger.kernel.org, alexandre.torgue@foss.st.com, 
	mcoquelin.stm32@gmail.com, conor+dt@kernel.org, krzk+dt@kernel.org, 
	robh@kernel.org, vkoul@kernel.org, amelie.delaunay@foss.st.com, 
	Ken Sloat <ksloat@cornersoftsolutions.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Krzysztof,

Thanks for reviewing

On Thu, Dec 5, 2024 at 10:59=E2=80=AFAM Krzysztof Kozlowski <krzk@kernel.or=
g> wrote:
>
> On 05/12/2024 16:32, Ken Sloat wrote:
> > The dma-cell values for the stm32-dmamux are used to craft the DMA spec
> > for the actual controller. These values are currently undocumented
> > leaving the user to reverse engineer the driver in order to determine
> > their meaning. Add a basic description, while avoiding duplicating
> > information by pointing the user to the associated DMA docs that
> > describe the fields in depth.
> >
> > Signed-off-by: Ken Sloat <ksloat@cornersoftsolutions.com>
> > ---
> > .../bindings/dma/stm32/st,stm32-dmamux.yaml | 11 +++++++++++
> > 1 file changed, 11 insertions(+)
> >
> > diff --git a/Documentation/devicetree/bindings/dma/stm32/st,stm32-dmamu=
x.yaml
> > b/Documentation/devicetree/bindings/dma/stm32/st,stm32-dmamux.yaml
> > index f26c914a3a9a..aa2e52027ee6 100644
> > --- a/Documentation/devicetree/bindings/dma/stm32/st,stm32-dmamux.yaml
> > +++ b/Documentation/devicetree/bindings/dma/stm32/st,stm32-dmamux.yaml
> > @@ -15,6 +15,17 @@ allOf:
> > properties:
> > "#dma-cells":
> > const: 3
>
> Your patch is corrupted. Please use git send-email or b4 or b4+relay.

Sorry about that, I will do that. I will wait for any additional
comments and then re-submit.

>
> > + description: |
> > + Should be set to <3> with each cell representing the following:
>
> Drop this part, const says this.

Ok

>
> > + 1. The mux input number/line for the request
> > + 2. Bitfield representing DMA channel configuration that is passed
> > + to the real DMA controller
> > + 3. Bitfield representing device dependent DMA features passed to
> > + the real DMA controller
> > +
> > + For bitfield definitions of cells 2 and 3, see the associated
> > + bindings doc for the actual DMA controller the mux is connected
>
> This does not sound right. This is the binding for DMA controller, so
> you are saying "please look at itself". I suggest to drop this as well.
>

While logically it is the DMA controller, this doc is specifically for
the mux - the DMA controller has its own driver and binding docs in
Documentation/devicetree/bindings/dma/stm32/st,stm32-dma.yaml

I can reference st,stm32-dma.yaml directly, but I was unsure if this
mux IP was used with another DMA controller from ST on a different
SoC.

What do you suggest here?

>
> Best regards,
> Krzysztof

--=20
Sincerely,
Ken Sloat

