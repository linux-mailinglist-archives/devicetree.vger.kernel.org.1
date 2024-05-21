Return-Path: <devicetree+bounces-68128-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C6378CAE97
	for <lists+devicetree@lfdr.de>; Tue, 21 May 2024 14:52:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3368F283DA0
	for <lists+devicetree@lfdr.de>; Tue, 21 May 2024 12:52:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ABE0576025;
	Tue, 21 May 2024 12:52:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b="ANPrTSxD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f169.google.com (mail-lj1-f169.google.com [209.85.208.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D91B60253
	for <devicetree@vger.kernel.org>; Tue, 21 May 2024 12:52:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716295934; cv=none; b=WIzyLTN2D8/snzSrB3yAjk/NOjnE8fM5xlPyOmez/6G0fPG64F/XV8m6qsuFG7Ys7Z+WiRT7d6hfbvgsWrwaBjV23fH979iUQCJyA14odzWIepauZ4zlgoDBwZt5oyggUD/jXUd4nbUZDPr4uh+1g5UQRp6NpZ+k7xv36/PxSfQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716295934; c=relaxed/simple;
	bh=cf5jWdMCCzC70EWwqirmwWz9mPNpeT6ra6qZ/BPw9fI=;
	h=From:Date:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=bBcdPBJ82Ln+anPEq6h/HsaYO8Sd/0QoJNWIRvPkx0hotHJ9hHG/JQrmPLTO8HjlKDRfrSQS5ulFu/T+wY3veofxg3nfFvoqcUqfKck3Eiz0/jokoxc7DRsiwtgTz9E7Dn8m9p+eqaAka48XwiF9wFsiq2KRjRLrYhqXBu9nojM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com; spf=pass smtp.mailfrom=suse.com; dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b=ANPrTSxD; arc=none smtp.client-ip=209.85.208.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=suse.com
Received: by mail-lj1-f169.google.com with SMTP id 38308e7fff4ca-2e6f2534e41so38640241fa.0
        for <devicetree@vger.kernel.org>; Tue, 21 May 2024 05:52:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suse.com; s=google; t=1716295931; x=1716900731; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:date:from:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1u5xJDOD57W6YVCnN4RepdIN+phyLa7DjVqYRoxfZgU=;
        b=ANPrTSxDgeAVaq571MqfgqLF8iE5hqp7M+RYWFQ7w4tVq0RIH+lCsMNCh9yc7zqmke
         zyuqJXTmAXa7yW0pF2S8xlpXHHNi15ofDcJfC9aOP6AkcVpQhr+fBPoIZG3jJ8TvLAvw
         YhLjs7pJe642qaEXRqEp0sNvRetno0SrTRpyzGAUTn5YtY0fQfO29ymnhzaRFXHx9PjB
         CcHNkZoZnXSIhVWLuL7KA/XZs3JZUlXCppnxb8q4Fu41ATH/qI1IUm92EYiO9sWhbTN6
         wJG/BJpaXyDfY2eKv7CReeFMzbLiCOTw+LYAyCPhVhf+j9lvbaDy0Fhs7wYSGAkPblaC
         Wi8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716295931; x=1716900731;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:date:from
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=1u5xJDOD57W6YVCnN4RepdIN+phyLa7DjVqYRoxfZgU=;
        b=tuQOMKrSzMlIGDzZZ/k1PjdI5cyjgcG+eFIglAjUVFMaJ3k+9yA8yuMH50dlquwhQE
         31s1EOYNuGC06oJ01sARpfpI0NABZp+RYC8csxx4RKWYf326SfbNGac3yGZoo3DT4x/i
         TG3baAmqfG/UnzvTaUixK8zWF5ujH2F/ZL54FstA/Yq5pqHBp+CGQPQQKehZfliJoxGd
         tUOjq9NrB+Tu6OCWvnoFsGsAzekJ1RNT+8JJYBtiu+wC/4GApKasl6Cx6ii9SGdNy+JC
         xokhbqV+rZN80jSgVZ5xxipfnjBmCk9lmsyfYekjg8NHUOCfmRYcT1t5N8IyJICu+W9V
         s2Jw==
X-Forwarded-Encrypted: i=1; AJvYcCVxr71lGiaWqn8nhT1V8er0GSoEMBqUMGr8Vi0beZLWXlCtZi0RZ7xFCRi0G18m5Jirm0vEa+qqynVEpETQB/cBH3uKoj+dsNPfAg==
X-Gm-Message-State: AOJu0YzW6VQfyO0YVVYsp956n2HCBR21aAAc34556elXsjrbjeCRgOVf
	5hw0ZG5N9/nNL2lHPbBxsjfaMf0aIrCq7uBgCLACn8ciGepbDpKEAU9GiSvSvp0=
X-Google-Smtp-Source: AGHT+IGWqjR12HPSB0jzPyPqMM3bUylbm55ZAq4klh7qS446LYCfduZoAUBb6DBdgrKY9LqhUuIk0w==
X-Received: by 2002:a2e:958f:0:b0:2e2:9d0:9295 with SMTP id 38308e7fff4ca-2e51fd41f7emr207167051fa.8.1716295930722;
        Tue, 21 May 2024 05:52:10 -0700 (PDT)
Received: from localhost (host-87-18-209-253.retail.telecomitalia.it. [87.18.209.253])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-574f6b8b9d7sm8750595a12.82.2024.05.21.05.52.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 May 2024 05:52:10 -0700 (PDT)
From: Andrea della Porta <andrea.porta@suse.com>
X-Google-Original-From: Andrea della Porta <aporta@suse.de>
Date: Tue, 21 May 2024 14:52:20 +0200
To: Stefan Wahren <wahrenst@gmx.net>
Cc: Andrea della Porta <andrea.porta@suse.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
	Marc Zyngier <maz@kernel.org>,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	Ulf Hansson <ulf.hansson@linaro.org>,
	Adrian Hunter <adrian.hunter@intel.com>,
	Kamal Dasu <kamal.dasu@broadcom.com>,
	Al Cooper <alcooperx@gmail.com>, devicetree@vger.kernel.org,
	linux-rpi-kernel@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-mmc@vger.kernel.org
Subject: Re: [PATCH v3 2/4] dt-bindings: mmc: Add support for BCM2712 SD host
 controller
Message-ID: <ZkyZBJw_RJ8SMYK_@apocalypse>
Mail-Followup-To: Stefan Wahren <wahrenst@gmx.net>,
	Andrea della Porta <andrea.porta@suse.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
	Marc Zyngier <maz@kernel.org>,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	Ulf Hansson <ulf.hansson@linaro.org>,
	Adrian Hunter <adrian.hunter@intel.com>,
	Kamal Dasu <kamal.dasu@broadcom.com>,
	Al Cooper <alcooperx@gmail.com>, devicetree@vger.kernel.org,
	linux-rpi-kernel@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-mmc@vger.kernel.org
References: <cover.1716277695.git.andrea.porta@suse.com>
 <d7c8bc0143c6b8c8b313413860840ae5bf2dc22a.1716277695.git.andrea.porta@suse.com>
 <bc1eb98c-9d49-4424-ab89-16be6c67c3f5@gmx.net>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <bc1eb98c-9d49-4424-ab89-16be6c67c3f5@gmx.net>

On 13:56 Tue 21 May     , Stefan Wahren wrote:
> Hi Andrea,
> 
> Am 21.05.24 um 10:35 schrieb Andrea della Porta:
> > The BCM2712 has an SDHCI capable host interface similar to the one found
> > in other STB chipsets. Add the relevant compatible string.
> > 
> > Signed-off-by: Andrea della Porta <andrea.porta@suse.com>
> > ---
> >   Documentation/devicetree/bindings/mmc/brcm,sdhci-brcmstb.yaml | 4 ++++
> >   1 file changed, 4 insertions(+)
> > 
> > diff --git a/Documentation/devicetree/bindings/mmc/brcm,sdhci-brcmstb.yaml b/Documentation/devicetree/bindings/mmc/brcm,sdhci-brcmstb.yaml
> > index cbd3d6c6c77f..d584a7ea707a 100644
> > --- a/Documentation/devicetree/bindings/mmc/brcm,sdhci-brcmstb.yaml
> > +++ b/Documentation/devicetree/bindings/mmc/brcm,sdhci-brcmstb.yaml
> > @@ -13,6 +13,10 @@ maintainers:
> >   properties:
> >     compatible:
> >       oneOf:
> > +      - items:
> > +          - enum:
> > +              - brcm,bcm2712-sdhci
> > +          - const: brcm,sdhci-brcmstb
> sorry i didn't noticed in V2, but why can't we just extend the second
> items list?

Hi Stefan,
I initially thought that the two different item lists represent two
different controller families, but now that you point that out, I'm more
and more convinced that probably we can shorten the representation as
you are suggesting, adding 'brcm,bcm2712-sdhci' to the second item list
enum. Will be so in V4.

Many thanks,
Andrea

> >         - items:
> >             - enum:
> >                 - brcm,bcm7216-sdhci
> 

