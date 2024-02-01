Return-Path: <devicetree+bounces-37786-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DF93846313
	for <lists+devicetree@lfdr.de>; Thu,  1 Feb 2024 23:02:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 094811F25835
	for <lists+devicetree@lfdr.de>; Thu,  1 Feb 2024 22:02:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6AF843F8D6;
	Thu,  1 Feb 2024 22:02:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="PJ8CSMz/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f182.google.com (mail-pg1-f182.google.com [209.85.215.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCE743C47C
	for <devicetree@vger.kernel.org>; Thu,  1 Feb 2024 22:02:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706824924; cv=none; b=ZD3ZnN20HhvvD15EOT7oGubTazatPplYor0VOJSpmEv0Sy9rzkDE8mH1U55iecBDSawTWcwag8kRaxxWDJLPjLQGqGUiNjsIr2r0YQQbFf/08BnDBNf/933WFfmFUxXA9rd7zvASWxlMq14xWauXcYgiuBtPDA2NV0BO54+kjSk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706824924; c=relaxed/simple;
	bh=S6DpmYrKJpOGFAgtneCrOt+ncWmf0tGol08ByubioAA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=u6uxpcbOXKL+w5wBGXLO1L8BumQqfAGMtRnePlEgkIlZ+b1UV1urGvznDx/hLa60VecS2ENJA2GW6C5iIOASldwU1UNa10AG16gNh0BDeG3kP1+Tded+5c8NaxCbZWwC8R+LGgqN8KCepQFMX7/IN92Ry+9G7R9gPQXleW3up+4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=PJ8CSMz/; arc=none smtp.client-ip=209.85.215.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-pg1-f182.google.com with SMTP id 41be03b00d2f7-5a0dc313058so191377a12.0
        for <devicetree@vger.kernel.org>; Thu, 01 Feb 2024 14:02:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1706824922; x=1707429722; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=8ppaICaXf3g7Wt71Pc3oHyszUVtZ6Se3vtGBU6vpn9Y=;
        b=PJ8CSMz/xxDqogSZpn5t85QoNuUIdE9p21al4RNAJ9niDxip0fF2Y+t4m8U8Bkbkoe
         nAbX4PZMzFfUclJhbvGjEmQZ1xYjsNOSGSPtUDKS/V2hWKcFLkYs2ZuzQfng4MzosuqV
         UANAUOBE4F4JWhVFGOXjb4HQpTAUbOlKJzAbA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706824922; x=1707429722;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8ppaICaXf3g7Wt71Pc3oHyszUVtZ6Se3vtGBU6vpn9Y=;
        b=v/sWnxQ1YxcsdSYnjhHpPvGaFh3XZfTTgT76p9DN3yPYRjkLJ/wApIRuhmQ9tQiSJK
         YdffH5WEbgv3cG7aeifxwDevJeonh1F/UVazCdpVqnI9TgMJvyulBEtsgkOLl5k7h7eD
         SuGkBmVyXp55LNZCLKWwYvJIP2ZP8sGwMHc3EMyYTxkppunma4/IPz59i42K2XrJP6TT
         FMmBxNriFUxeT0Go+7fys3yEzbY91pDJP0H7U6TJpsHxa5vu/8BoowLRgaEHVUv0NnfT
         ek25xCfJGxrABP8EAnohQDk12b7dPnyWmLqFvZj8PrzpW4QwsZ0UVjEKqY2dyAZDZ+DE
         S0Wg==
X-Gm-Message-State: AOJu0YwySdoy2aUFB3bzibtv0nfsJJ6KrlIFgIlkVYO/uWbHg+Jqck9f
	Hx8L14r0K7oBRTZHk3nicYWwECAoBg0XkLQYY07K8PE+NCDsNBAl0UZ0t8dZzDc23yxIKkuXvsC
	Jl/9BUwy8KwzAqNfUI8Q12xA3F5HaRFVno/Fe
X-Google-Smtp-Source: AGHT+IGK7NczUcaboxCiNkef8pw/9OZXamqniEcxc5GJeGDmCBGqmnlJE/0IzKhUGAkYGNJDJenikr0cOUmw9MrwRVs=
X-Received: by 2002:a05:6a20:7d8c:b0:19e:3390:4a42 with SMTP id
 v12-20020a056a207d8c00b0019e33904a42mr4291134pzj.3.1706824922026; Thu, 01 Feb
 2024 14:02:02 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240119215231.758844-1-mmayer@broadcom.com> <20240119215231.758844-2-mmayer@broadcom.com>
 <6d8d5c33-f814-4c06-ae97-7579aec3bb15@linaro.org>
In-Reply-To: <6d8d5c33-f814-4c06-ae97-7579aec3bb15@linaro.org>
From: Markus Mayer <mmayer@broadcom.com>
Date: Thu, 1 Feb 2024 14:01:50 -0800
Message-ID: <CAGt4E5uU1aiS9ZFowYFUYM5ARdzR2sP+FaWErjZ-VbEoui3-0A@mail.gmail.com>
Subject: Re: [PATCH v2 1/5] dt-bindings: memory: remove generic compatible
 string brcm,dpfe-cpu
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Florian Fainelli <florian.fainelli@broadcom.com>, Rob Herring <robh+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, 
	Linux ARM Kernel List <linux-arm-kernel@lists.infradead.org>, 
	Device Tree Mailing List <devicetree@vger.kernel.org>, Linux Kernel <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"

On Tue, 23 Jan 2024 at 13:22, Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> On 19/01/2024 22:52, Markus Mayer wrote:
> > The generic compatible string "brcm,dpfe-cpu" is removed from the
> > binding as it does not provide any actual benefit.
> >
> > Signed-off-by: Markus Mayer <mmayer@broadcom.com>
> > ---
> >  .../devicetree/bindings/memory-controllers/brcm,dpfe-cpu.yaml  | 3 +--
> >  1 file changed, 1 insertion(+), 2 deletions(-)
> >
> > diff --git a/Documentation/devicetree/bindings/memory-controllers/brcm,dpfe-cpu.yaml b/Documentation/devicetree/bindings/memory-controllers/brcm,dpfe-cpu.yaml
> > index 08cbdcddfead..e2b990e4a792 100644
> > --- a/Documentation/devicetree/bindings/memory-controllers/brcm,dpfe-cpu.yaml
> > +++ b/Documentation/devicetree/bindings/memory-controllers/brcm,dpfe-cpu.yaml
> > @@ -16,7 +16,6 @@ properties:
> >        - enum:
> >            - brcm,bcm7271-dpfe-cpu
> >            - brcm,bcm7268-dpfe-cpu
> > -      - const: brcm,dpfe-cpu
>
> We cannot have undocumented compatibles, so I think you wanted to
> deprecate it instead. Also, please extend the reasoning from "any actual
> benefit". Were there any users? Don't they need it?

Absolutely. I'll change it to deprecate the compatible string instead.

As for the reason deprecating it, it was intended as the "standard"
compatible string that everybody would end up using with the
chip-specific one as fallback should a particular chip require a tweak
down the road. That's why it was introduced. But then the business
with the incompatible DPFE APIs started happening, and the plan to use
"brcm,dpfe-cpu" as the "normal" compatible string that everybody could
use was no longer workable.

Does that make sense as the more in-depth explanation for deprecating it?

Regards,
-Markus

