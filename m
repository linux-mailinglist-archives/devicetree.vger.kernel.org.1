Return-Path: <devicetree+bounces-140137-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id ABD32A187DD
	for <lists+devicetree@lfdr.de>; Tue, 21 Jan 2025 23:50:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 85D953A43AE
	for <lists+devicetree@lfdr.de>; Tue, 21 Jan 2025 22:50:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B62F61F8AF7;
	Tue, 21 Jan 2025 22:50:45 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f171.google.com (mail-pl1-f171.google.com [209.85.214.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 828AF1F8908
	for <devicetree@vger.kernel.org>; Tue, 21 Jan 2025 22:50:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737499845; cv=none; b=gjiP7LwMVmDIN/YnYXEdNr0LhUZ4jh2k/Z+SJuBxP1BM/IG61pNn+H5ObYj9zl/otbMxDpFEDI3kG/KxpWwzeG0Nvys5AZ5T+gYKsT31nu0UwnKKhIb/2qJTuUJ1f6vcqHvFSh7IJSDgVxdgoiKb2YlKOvZODgs7a31Ehfj1bBg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737499845; c=relaxed/simple;
	bh=J/09iJn/f8OIFoYmfEGJR1plKN5XM4G4egV7j6tGXdU=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=BcaBVExKB9bMBBkUnOfPb5ZAgCNlOkE5t+oxxvA2b8a+TMPdVRZCyJoXfczWLvrHvjp0sJ2UQ6/qSEERd1pBfLm5O1isgFY8HRlPdiApwJXwlVJZBj3Y3xvwOGo2QPdx27JeN6Ro3Pm63ngvhHTc5LP8hvh+/a7DSdG7p6Uh36w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=kernel.org; spf=pass smtp.mailfrom=baylibre.com; arc=none smtp.client-ip=209.85.214.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=kernel.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-pl1-f171.google.com with SMTP id d9443c01a7336-2164b1f05caso116720195ad.3
        for <devicetree@vger.kernel.org>; Tue, 21 Jan 2025 14:50:43 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737499843; x=1738104643;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=eY/bocEY4/ixO9G6Mvr/Z5L8XQkKrCMbNaB8Z7NbGGs=;
        b=CWlk2oqNlsghyz2v2OzoOtgR1IsjISF/Fv0eoCLjkWygHKiBpN0Fw+1vwYj1iaPuNW
         yCrSOGfeT4OVJrQbBSpFX9sHa4n79ddHk4ubpFfYu89JblwttPoPMdMnTeiBLADz1Oxf
         Jm31YozhnPsniE9h6RAJxwiYqOSyqD9IXzJUo1OP0JpQ1kHkB6UpIamGCm9+q/Z7WrMi
         Ny0AoKBYP6j60Edq53ocPuBj8TKFcYRkRzez4HV9o2EACYybNZk2uEXA/lv3fCycE6g2
         YjB22uDztD8Oe1HN28ZKcyl4tdvJ4Qq40GvcRwswSVzvpWHsS7pUYlIY0zulbVOqcO1U
         iiDg==
X-Forwarded-Encrypted: i=1; AJvYcCWJ30kCFhw8l6buEgFkZhWFpVXqVvI5SGA0VKhpsMEHfH9i/iZgkuQHmfR9fD0ShjmmEDBdULn9XTvx@vger.kernel.org
X-Gm-Message-State: AOJu0Yxqo/E0oAWdro9DfadVLBnlM7bhtZZ8UbcWtxCw8+cMjli6YPsV
	oSvzUXdZXEWw1CFPJT7At67fg4n+MshLRVa1KlLgiU31pAK8pMYH/W/PBphpRxY=
X-Gm-Gg: ASbGncsM0NuHggtf3OUh0Fx13wovYKwkUzoZUayQHfMGfELHmi2uqEWXDr5RqPvxrKQ
	gJs/VyJ3QAxSzEBcbyCcmj8UCw2Pts0rDItO5nPFuZa20GaPPEt9VfhRRHKylMlQ4N/Gj/XgcLN
	xVH2mT4sLXDYKD51+6qj0NR4xkewNO2ApcMYRtSD7OAxHgOFlV8Uu3qeH0uXYzKfPhKECO2mGP2
	51tIXcQrBw49gFGxu1Lx3/rMu+hc8IDHS54GTVuNAk2Ruz1G8uuWNI8oO8iux7jgiXm
X-Google-Smtp-Source: AGHT+IHaaAXCvryBAXeNGBTJxWdGI8mRRoTbDGvpoGAQHpPdsSxC9BsUktepgvmvmzRhBvsfjx8DQQ==
X-Received: by 2002:a05:6a21:998d:b0:1e1:b28e:a148 with SMTP id adf61e73a8af0-1eb2144d513mr25264291637.5.1737499842764;
        Tue, 21 Jan 2025 14:50:42 -0800 (PST)
Received: from localhost ([97.126.182.119])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-72dabaa6407sm9649528b3a.163.2025.01.21.14.50.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Jan 2025 14:50:42 -0800 (PST)
From: Kevin Hilman <khilman@kernel.org>
To: Tom Rini <trini@konsulko.com>, linux-kernel@vger.kernel.org
Cc: Nishanth Menon <nm@ti.com>, Tony Lindgren <tony@atomide.com>, Rob
 Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor
 Dooley <conor+dt@kernel.org>, linux-omap@vger.kernel.org,
 devicetree@vger.kernel.org
Subject: Re: [PATCH] ARM: dts: omap4-panda-a4: Add missing model and
 compatible properties
In-Reply-To: <20250121200749.4131923-1-trini@konsulko.com>
References: <20250121200749.4131923-1-trini@konsulko.com>
Date: Tue, 21 Jan 2025 14:50:41 -0800
Message-ID: <7hmsfjn5mm.fsf@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain

Hi Tom,

Tom Rini <trini@konsulko.com> writes:

> When moving the model and compatible properties out of the common
> Pandaboard files and in to the specific boards, the omap4-panda-a4
> file wasn't updated as well and so has lacked a model and compatible
> entry ever since.
>
> Fixes: a1a57abaaf82 ("ARM: dts: omap4-panda: Fix model and SoC family details")
> Signed-off-by: Tom Rini <trini@konsulko.com>
> ---

Checkpatch tells me:

 WARNING: DT compatible string "ti,omap4-panda-a4" appears un-documented

So I think Documentation/devicetree/bindings/arm/ti/omap.yaml needs an
update too.  (and note the binding update should be a separate patch[1])

> Given how long this has been broken it's entirely plausible no a4
> hardware even exists anymore and so dropping this file instead makes
> sense. I only found this because scripts/make_fit.py crashed on these
> properties being missing.

If keeping it is just this binding update, then I'd say we keep it, but
if it gets any more paninful to maintain, I'm also not going to argue
very hard to keep it.

Kevin

[1] From:  Documentation/devicetree/bindings/submitting-patches.rst

  1) The Documentation/ and include/dt-bindings/ portion of the patch should
     be a separate patch. The preferred subject prefix for binding patches is::

       "dt-bindings: <binding dir>: ..."

> Cc: Nishanth Menon <nm@ti.com>
> Cc: Tony Lindgren <tony@atomide.com>
> Cc: Rob Herring <robh@kernel.org>
> Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>
> Cc: Conor Dooley <conor+dt@kernel.org>
> Cc: linux-omap@vger.kernel.org
> Cc: devicetree@vger.kernel.org
> Cc: linux-kernel@vger.kernel.org
> ---
>  arch/arm/boot/dts/ti/omap/omap4-panda-a4.dts | 5 +++++
>  1 file changed, 5 insertions(+)
>
> diff --git a/arch/arm/boot/dts/ti/omap/omap4-panda-a4.dts b/arch/arm/boot/dts/ti/omap/omap4-panda-a4.dts
> index 8fd076e5d1b0..4b8bfd0188ad 100644
> --- a/arch/arm/boot/dts/ti/omap/omap4-panda-a4.dts
> +++ b/arch/arm/boot/dts/ti/omap/omap4-panda-a4.dts
> @@ -7,6 +7,11 @@
>  #include "omap443x.dtsi"
>  #include "omap4-panda-common.dtsi"
>  
> +/ {
> +	model = "TI OMAP4 PandaBoard (A4)";
> +	compatible = "ti,omap4-panda-a4", "ti,omap4-panda", "ti,omap4430", "ti,omap4";
> +};
> +
>  /* Pandaboard Rev A4+ have external pullups on SCL & SDA */
>  &dss_hdmi_pins {
>  	pinctrl-single,pins = <
> -- 
> 2.43.0

