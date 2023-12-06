Return-Path: <devicetree+bounces-22461-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id D014F807817
	for <lists+devicetree@lfdr.de>; Wed,  6 Dec 2023 19:50:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7A91C1F21302
	for <lists+devicetree@lfdr.de>; Wed,  6 Dec 2023 18:50:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0965947763;
	Wed,  6 Dec 2023 18:50:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="fmcDYdyp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-x102a.google.com (mail-pj1-x102a.google.com [IPv6:2607:f8b0:4864:20::102a])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8CC5B1984
	for <devicetree@vger.kernel.org>; Wed,  6 Dec 2023 10:48:42 -0800 (PST)
Received: by mail-pj1-x102a.google.com with SMTP id 98e67ed59e1d1-286de610668so25971a91.1
        for <devicetree@vger.kernel.org>; Wed, 06 Dec 2023 10:48:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1701888522; x=1702493322; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=jAybnoXUPmmnjimwppJwbCtNCv9V5v2xiMszdqym8XU=;
        b=fmcDYdypDnTvjH8tRPNHPt4wlwNf7mqz6Ii0wfKdPUWiOTWWmg/J6xzjx4c3lJjQuJ
         N7NOm+u24CybB7Ez16UEM8csfUq6sOkTZC09weNPxv73GR6Uyz3LjD65+iEkaubYK8n1
         nz6hujL7c54ia58NjoDjXs+v+gvbaKaILnoNY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701888522; x=1702493322;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jAybnoXUPmmnjimwppJwbCtNCv9V5v2xiMszdqym8XU=;
        b=AkryIC0gAo0kjRTWNh0ODn8afyjJVyXeGHSfZRugCjFa4SbjBGDGvgk3FdrjORGLKh
         TcCS0qdBes89wu6NLBRTvF/NngTeQbHyewN2Z0n41kW00PSeFTTGkPiiMyOBNK0VWJb/
         1NyYxY7QUx3LvNwE8kajpH14tphKQspm54Nj8r6UejmyBXR35Q2dCzRaNxF9yUMsnP2U
         7eN+flmm4P56CCkZu8D/rJQXRdNEzbtwyLjFOvztW1YQFZqskBwKdmQGxvGcY1unx0/M
         EgqdVH68rMeqMxozrLoOMH0JU9vusooFc8lsduTYmu8mLDCPgvQHi9z9VgcKOQaDTiiX
         TmtA==
X-Gm-Message-State: AOJu0Yx0VdtiZZzL4JbFw4CsadMO2dUW5FIUx/T2j/dGGInJiAPOsF4L
	lPdz2twPD9j4vtemfMIXNYNP72o7OkcjQF6zhm2EnQ==
X-Google-Smtp-Source: AGHT+IGUzqnQbIAp0NKPi2togelz22nMFB8YKrQx+sSw32s78lLb4ultUCt0fKhCD2OhbHNNqZHTUapKVsBevmbyJnU=
X-Received: by 2002:a17:90b:1e05:b0:286:6cbf:e240 with SMTP id
 pg5-20020a17090b1e0500b002866cbfe240mr2673295pjb.4.1701888521864; Wed, 06 Dec
 2023 10:48:41 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231205184741.3092376-1-mmayer@broadcom.com> <20231205184741.3092376-4-mmayer@broadcom.com>
 <e63906cf-9f76-4fed-91b0-1a9168b179bd@linaro.org> <12f3c515-71cf-46a5-ad92-15bf6c4c2f2c@broadcom.com>
 <c483e962-a565-45b0-91e2-41f47e2cf4bb@linaro.org>
In-Reply-To: <c483e962-a565-45b0-91e2-41f47e2cf4bb@linaro.org>
From: Markus Mayer <mmayer@broadcom.com>
Date: Wed, 6 Dec 2023 10:48:30 -0800
Message-ID: <CAGt4E5smwohGsPkvFOY8o270mNQnTkSWz8UKh3un2=XtEibzAg@mail.gmail.com>
Subject: Re: [PATCH 3/4] memory: brcmstb_dpfe: support DPFE API v4
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Florian Fainelli <florian.fainelli@broadcom.com>, Rob Herring <robh+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, 
	Linux ARM Kernel List <linux-arm-kernel@lists.infradead.org>, 
	Device Tree Mailing List <devicetree@vger.kernel.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"

On Wed, 6 Dec 2023 at 09:32, Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> On 06/12/2023 17:18, Florian Fainelli wrote:
> >
> >
> > On 12/6/2023 3:10 AM, Krzysztof Kozlowski wrote:
> >> On 05/12/2023 19:47, Markus Mayer wrote:
> >>> Add support for version 4 of the DPFE API. This new version is largely
> >>> identical to version 3. The main difference is that all commands now
> >>> take the MHS version number as the first argument. Any other arguments
> >>> have been pushed down by one (i.e. what used to be arg0 in v3 is arg1 in
> >>> v4).
> >>>
> >>> Signed-off-by: Markus Mayer <mmayer@broadcom.com>
> >>
> >> ...
> >>
> >>> +
> >>>   static const char *get_error_text(unsigned int i)
> >>>   {
> >>>     static const char * const error_text[] = {
> >>> @@ -929,8 +954,12 @@ static const struct of_device_id brcmstb_dpfe_of_match[] = {
> >>>     { .compatible = "brcm,dpfe-cpu-v1", .data = &dpfe_api_old_v2 },
> >>>     { .compatible = "brcm,dpfe-cpu-v2", .data = &dpfe_api_new_v2 },
> >>>     { .compatible = "brcm,dpfe-cpu-v3", .data = &dpfe_api_v3 },
> >>> +   { .compatible = "brcm,dpfe-cpu-v4", .data = &dpfe_api_v4 },
> >>>
> >>
> >> No, use SoC specific compatible.
> >
> > This is not that simple because for a given SoC, the API implemented by
> > the firmware can change, in fact it has changed over the lifetime of a
> > given SoC as firmware updates get rolled out. Arguably the dialect
> > spoken by the firmware should not have changed and we told the firmware
> > team about that but it basically went nowhere and here we are.
> >
> > The Device Tree gets populated by the boot loader which figures out
> > which API is spoken and places one of those compatible strings
> > accordingly for the kernel to avoid having to do any sort of run-time
> > detection which is slow and completely unnecessary when we can simply
> > tell it ahead of time what to use.
>
> Thanks for providing justification, quite reasonable. A pity that none
> of the commit msgs answered this way.

The real pity is how this API was designed, making all of this
necessary in the first place.

We can definitely spell out more clearly in the commit messages what
is going on and why all of this is needed. I'll pull all the pieces
together from the various responses. As long as there's a way we can
reasonably implement what we need, we'll be happy.

> Best regards,
> Krzysztof

