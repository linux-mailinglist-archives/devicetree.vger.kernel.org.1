Return-Path: <devicetree+bounces-41044-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 8038D8522A6
	for <lists+devicetree@lfdr.de>; Tue, 13 Feb 2024 00:38:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id EA0BD1F23B0D
	for <lists+devicetree@lfdr.de>; Mon, 12 Feb 2024 23:38:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DD1764F611;
	Mon, 12 Feb 2024 23:38:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ragnatech.se header.i=@ragnatech.se header.b="MTxLaAeE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com [209.85.208.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E56794F894
	for <devicetree@vger.kernel.org>; Mon, 12 Feb 2024 23:38:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707781122; cv=none; b=mkW9UmNf2QiebvMXcFXSkNz20C++taRldH36iiE7YrEEZdQpm19A2AdJEOoifsr0msyWRWiJXEJtBWroMKeSrS3l7tt5RTQrzbxY0K+lTkNM5MdAWCZLJCLJqcbiok9/F+pdsjboit6y5J/WqHmcMnptlP1/T9lFjhBUPNMOPKU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707781122; c=relaxed/simple;
	bh=AuU6afiLLtMngV/1qAftaiyO1mxTmmqdDUb118/ZdOs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=l74KbRX3B6OulL258tPl4BtKAvEH8zjZQqF8fhgpiFCrBmUPwLAzQThg3EUIeWfCz4kq19FZYXBvBrjZJckCQYn9mLuzltctzSmDOVO9Zb6wOyuQaSkhm4xOEPSzR+AHWrBOg10IizxeMxmOOSarA6ueuDvCsHGyQvfX3PVLQFs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ragnatech.se; spf=pass smtp.mailfrom=ragnatech.se; dkim=pass (2048-bit key) header.d=ragnatech.se header.i=@ragnatech.se header.b=MTxLaAeE; arc=none smtp.client-ip=209.85.208.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ragnatech.se
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ragnatech.se
Received: by mail-lj1-f180.google.com with SMTP id 38308e7fff4ca-2d0b4ea773eso49913231fa.0
        for <devicetree@vger.kernel.org>; Mon, 12 Feb 2024 15:38:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ragnatech.se; s=google; t=1707781118; x=1708385918; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=yzeJZdC56ElWuhMPxNxxQ6aauVKIFhCzhlnD74TWS6c=;
        b=MTxLaAeEZhSNsQquSDyD91KQkfX/xRD+qseqVdwT01af/jKZzV9jwFaGrM7pI52jFE
         3q/R/wCsVk8bRJH5KF2CbUNeHnrgNBeAxS7pj5feBaMh7myoOQyUN+VvZmpVWQqsBVP7
         kfc6fVt5D78NK6T8/kXxEH5Fv9bkj7d4OWkvMjKZ6p12wm2+RypVdEZlipDjGfbrRS9z
         tK4Qj5VIiT7sXwbD4AKIwxSW2PlF+5X+V7GzSt4R72el4UNslNfHKpJ6e7hTakaNMhfo
         ZDXzj0PT3Bm5Ep1/7PJ28EohU8BShOe9RjgMHQo6I8WRUcyQO9JVLzSsHDhz3UlVIljR
         iFVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707781118; x=1708385918;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=yzeJZdC56ElWuhMPxNxxQ6aauVKIFhCzhlnD74TWS6c=;
        b=VvMFdqvZMLebk9sR4xTk16D4VBVYbuEYJMzmahiYZUBRmLDU6CP9UeynbRhCpK3CJt
         x1LsDw26cLzOVqnT7vye/FCfLDVpy2ZsPmo7CFixgl/29rMyphyjfuwS39+7+4jQBuTD
         EbQ5qHKKYiBb6If1Zg48tZVB9WkVxkvZfkiv5iJqqNwNcekFZX7AmSh8LObRRPJD2d8v
         Ef6aOANHd22rqP4FeLSTXv0j015zDTTZbc3fQbqezXfC3fGCQ9E02vBMzkKR+r7ThGi+
         kayzqn0yPMxFfwI1AGTMXvUNNCatDCnbO39VYpvezFUQoLXlKngClbMN90xKLDsOoJ3Y
         LB+Q==
X-Forwarded-Encrypted: i=1; AJvYcCU+KYrGbbxql2OPzQnKfhKrpROKDal4yAoHPiaACQgE1ILlQA+OQrxbQZk7Pm3W3foQYAvARFsOGha1LFsbIan3ORuzOLsgXkkJXA==
X-Gm-Message-State: AOJu0YwOhMZzEo6PLHkiNsVuQCv/mY1tZNFvbAq3B4SIYWHuRi7cFpQq
	taqT/QKCPTJQj0OTB6pVOgvSjRQiypPOd3v+kFUEiB2VJ/mJP30u1ExORL/vtB0=
X-Google-Smtp-Source: AGHT+IE1sdTn9wOYJlGUVPF8Sp+Ge6tyFx475hyCcyTsCqak3TwWXsc1mNnRBasCKkJHOMNzN2+I1Q==
X-Received: by 2002:ac2:5a4c:0:b0:511:6f8b:6ece with SMTP id r12-20020ac25a4c000000b005116f8b6ecemr4249015lfn.68.1707781117747;
        Mon, 12 Feb 2024 15:38:37 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCXBF3FXTuMq7jgXLow2wDEu8DV9FbNQHnbPnEcokMezR6EAYPL+515wKmuU/nt/d1OWbX8LBbtmsEKL08Id0Ij83+fYe2iBjq1S29fut7vjc3mh5wi0SW7xKKwwL2KVSytOJOqSxSfGoD7TTCNzSUq+n/vNgDseV04622AULeD+atJavCrVVo2Eak0ox/tjlcsHZXBE3s7mfGy4IgI/MU3XOBbbzBOVp4HFK4snHadzOz62ME5Dmf4GGV4V4nTA8XC0Irj1jA==
Received: from localhost (h-46-59-36-113.A463.priv.bahnhof.se. [46.59.36.113])
        by smtp.gmail.com with ESMTPSA id k33-20020a0565123da100b005118732de28sm788485lfv.272.2024.02.12.15.38.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Feb 2024 15:38:37 -0800 (PST)
Date: Tue, 13 Feb 2024 00:38:36 +0100
From: Niklas =?utf-8?Q?S=C3=B6derlund?= <niklas.soderlund+renesas@ragnatech.se>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH v2] dt-bindings: renesas: Document preferred compatible
 naming
Message-ID: <20240212233836.GE1870743@ragnatech.se>
References: <20240127121937.2372098-1-niklas.soderlund+renesas@ragnatech.se>
 <CAMuHMdUJ0U9qnxtdJmVUJQqRhbmu0rmOxpyDZ8Lp=+hv=Oe4Og@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAMuHMdUJ0U9qnxtdJmVUJQqRhbmu0rmOxpyDZ8Lp=+hv=Oe4Og@mail.gmail.com>

Hi Geert,

Thanks for your feedback.

On 2024-02-12 20:36:12 +0100, Geert Uytterhoeven wrote:
> Hi Niklas,
> 
> On Sat, Jan 27, 2024 at 1:20 PM Niklas Söderlund
> <niklas.soderlund+renesas@ragnatech.se> wrote:
> > Compatibles can come in two formats. Either "vendor,ip-soc" or
> > "vendor,soc-ip". Add a DT schema file documenting Renesas preferred
> > policy and enforcing it for all new compatibles, except few existing
> > patterns.
> >
> > Suggested-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> > Signed-off-by: Niklas Söderlund <niklas.soderlund+renesas@ragnatech.se>
> > ---
> > * Changes since v1
> > - Split the "SoC agnostic compatibles" section into two to make it's
> >   intent clearer.
> > - Improved the documentation for each group of compatibles.
> > - Reduced the number of regexp to create a larger target area. As
> >   suggested by Krzysztof the goal is not to validate each SoC name but
> >   check for the correct order of SoC-IP.
> 
> Thanks for the update!
> 
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/soc/renesas/renesas-soc.yaml
> > @@ -0,0 +1,135 @@
> > +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/soc/renesas/renesas-soc.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Renesas SoC compatibles naming convention
> > +
> > +maintainers:
> > +  - Geert Uytterhoeven <geert+renesas@glider.be>
> > +  - Niklas Söderlund <niklas.soderlund@ragnatech.se>
> > +
> > +description: |
> > +  Guidelines for new compatibles for SoC blocks/components.
> > +  When adding new compatibles in new bindings, use the format::
> > +    renesas,SoC-IP
> 
> or renesas,Family-IP?
> 
> > +
> > +  For example::
> > +   renesas,r8a77965-csi2
> > +
> > +  When adding new compatibles to existing bindings, use the format in the
> > +  existing binding, even if it contradicts the above.
> > +
> > +select:
> > +  properties:
> > +    compatible:
> > +      pattern: "^renesas,.*-.*$"
> > +  required:
> > +    - compatible
> > +
> > +properties:
> > +  compatible:
> > +    oneOf:
> > +      # Preferred naming style for compatibles of SoC components
> > +      - pattern: "^renesas,emev2-[a-z0-9-]+$"
> > +      - pattern: "^renesas,r(7s|8a|9a)[a-z0-9]+-[a-z0-9-]+$"
> > +      - pattern: "^renesas,rcar-[a-z0-9-]+$"
> > +      - pattern: "^renesas,rz[a-z0-9]*-[a-z0-9-]+$"
> > +      - pattern: "^renesas,sh-[a-z0-9-]+$"
> > +      - pattern: "^renesas,sh7[a-z0-9]+-[a-z0-9-]+$"
> 
> I guess it's not worth adding rmobile and shmobile prefixes?

Maybe we start with this and see how it goes?

> 
> > +      # Fixed legacy compatibles
> > +      #
> > +      # List cannot grow with new bindings.
> > +      - enum:
> > +          - renesas,bsc-r8a73a4
> > +          - renesas,bsc-sh73a0
> > +          - renesas,dbsc-r8a73a4
> > +          - renesas,dbsc3-r8a7740
> > +          - renesas,em-gio
> > +          - renesas,em-sti
> > +          - renesas,em-uart
> 
> Perhaps combine these three: "renesas,em-(gpio|sti|usrt)"?

Will do.

> 
> > +          - renesas,fsi2-r8a7740
> > +          - renesas,fsi2-sh73a0
> 
> Likewise

Will do.

> 
> > +          - renesas,hspi-r8a7778
> > +          - renesas,hspi-r8a7779
> 
> Etc. ;-)

Will do :-)

> 
> Now, how do I trigger violations?
> 
> I added the following to a binding file:
> 
>           - enum:
>               - renesas,bogus-r8a7778
>               - renesas,bogus-r8a7779
>           - const: renesas,bogus
> 
> but nothing happened with "make dt_binding_check".
> 
> I added the following to a DTS file:
> 
>         compatible = "renesas,bogus-r8a7778", "renesas,bogus";
> 
> again, nothing happened with "make dtbs_check".
> 
> What am I missing?

Hum, this is odd. I have confirmed your finding that

    compatible = "renesas,bogus-r8a7778", "renesas,bogus";

or

    compatible = "renesas,bogus-r8a7778", "renesas,bogus-bar";

Do not trigger an issue, but a single compatible,

    compatible = "renesas,bogus-r8a7778";

Do trigger.

I tested this before I reduced the regexp and IIRC it worked as expected 
for the RFC. Not sure if I have updated dt-schema since, but I know I 
rebased the branch for v2. I will try to figure out what have gone 
wrong, if anyone know if something changed in this area pleas let me 
know.

> Thanks!
> 
> Gr{oetje,eeting}s,
> 
>                         Geert
> 
> --
> Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org
> 
> In personal conversations with technical people, I call myself a hacker. But
> when I'm talking to journalists I just say "programmer" or something like that.
>                                 -- Linus Torvalds

-- 
Kind Regards,
Niklas Söderlund

