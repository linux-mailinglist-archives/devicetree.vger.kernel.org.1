Return-Path: <devicetree+bounces-41472-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id CEE4F853EF0
	for <lists+devicetree@lfdr.de>; Tue, 13 Feb 2024 23:42:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 08A24B24BEA
	for <lists+devicetree@lfdr.de>; Tue, 13 Feb 2024 22:42:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 08B38626C6;
	Tue, 13 Feb 2024 22:42:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ragnatech.se header.i=@ragnatech.se header.b="zdbDEc53"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f176.google.com (mail-lj1-f176.google.com [209.85.208.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85946626BD
	for <devicetree@vger.kernel.org>; Tue, 13 Feb 2024 22:42:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707864156; cv=none; b=YR7AG6pIDdYSXHAyqchcS5qEWmZRjLpfnHP1Bo4fPkCf5irLCD9pZdgxC7PL73kJ3zKsmpxlChk4/6aPHTJlTpTZyed06bCjs9vqvwj8UKAZrq/gamjalern/V7EtFvlEQTpnXtugNWWgH+oqmMwOLiTW9b9drdc9r7FWISQS44=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707864156; c=relaxed/simple;
	bh=ksgy5yypSJtNWUyTuJtVvHP4fBMNZPJLpUeKCpj0t+0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=GPJir2nVs4urmGutN9YdommoZeLkvHqEqWz6LGMYEHmTF8bsxu7xlUSEvb2Tn9lZriUnJAV4su1zh/I6gsKjNigvLF2zASAOBZrcbaUaZCZ1IPUH9aGB1iyzwNs1XK5Pb3Q8TIvogk19pSarUvAj4juRoaDY5aHXlUJfJ71S3XI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ragnatech.se; spf=pass smtp.mailfrom=ragnatech.se; dkim=pass (2048-bit key) header.d=ragnatech.se header.i=@ragnatech.se header.b=zdbDEc53; arc=none smtp.client-ip=209.85.208.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ragnatech.se
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ragnatech.se
Received: by mail-lj1-f176.google.com with SMTP id 38308e7fff4ca-2d1094b5568so14653261fa.1
        for <devicetree@vger.kernel.org>; Tue, 13 Feb 2024 14:42:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ragnatech.se; s=google; t=1707864152; x=1708468952; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=JRUoJk1ehrfPxg4KwpeWPiQJdJqZxueZoN4hWzPPHIY=;
        b=zdbDEc53dOrVBxKVsRgARS90MJ0HnVg1i4kvMFLR6XYbfGh11KsZTv5DWFhl/UzfDA
         NMGa+dqB8aDaH7G4V+6YnkiMiI+baVAZutM+xXecCslwdbGLKP+jw0Gppgv26RiSKrqE
         0Dy1mkEGNr7pe4YO5W32asKEKnSmzQXDWfKWGRO1CZ3xWRHS8vgp5j8C18sufB8dMADq
         4voKBZF1ajtl3BGI95+Bb4QCWV78awg25igPak7q8B+Xp7Vjnbbqx+85ooj2n0OiA3Mb
         1/970WAmQpd+qOapIIbiZkuw8pthoDNfIeQCtk54gZ/H8UlgNGvKwifx3ILeVxc3tUI+
         yiRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707864152; x=1708468952;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=JRUoJk1ehrfPxg4KwpeWPiQJdJqZxueZoN4hWzPPHIY=;
        b=gb6w8HbwWyWWOnlNWPvHiZlPh72poSbi84HSOPkAwqbXShyGcheGsSF46E22zaodd1
         JjJqdzbQoSdBjRmhwJuEuFtejliXp5t3N1grdvYzGHsBGyShBlgkW6ypdmWb6srFJb/b
         UGcumy79snGVAc45VcUN9PQdmHDfpLKOXZsacHw6v8vZfgJJnIGPx1VEJMHsqnbUWTX8
         pjNXI0zirK42DWqmoEx/gITpMGGrZvGiQW615F9g9U3wZVrNy3KOGtCyaZHHUHkvcYVq
         O5ad2Pw2Z39whQFeeKkigpMWPe8n0uiFmtxCA6i+jbPOM9f6WIIzT9qCQPuhs6SFQELJ
         7oxQ==
X-Forwarded-Encrypted: i=1; AJvYcCVIV5qx9ZrqBCanWjluVTgVnrLZRYdolGCtH1DYsjZeX5ofoM8KtY6emu6n2KxCdZRu7M/CuoqU6hhdwPkfYZhSOAEGRR3M1GCpaw==
X-Gm-Message-State: AOJu0YwpWsrXo9hGg9A8dQmvi2E59ImzBgTdyp7g6QPUauvjcwdLzhtD
	FNmdZPjfakBHwKnXS0ZEWEtcbp4XsBXCH+lyRT3hEO9qSSZeMOIL0h2TLw606Ck=
X-Google-Smtp-Source: AGHT+IFJ1u9wg1H35xiqLKN8drXV3R2V+FL6PTHevWsG0TfNVZZzCMrNnDGsgS/iYnBqOSpOZIq2NA==
X-Received: by 2002:a2e:b0d2:0:b0:2d0:c1df:b4df with SMTP id g18-20020a2eb0d2000000b002d0c1dfb4dfmr832795ljl.39.1707864152181;
        Tue, 13 Feb 2024 14:42:32 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCX9cMPQ3CFq+ArLX2s54v53S5YGgwWD9ftwiU7uxb/oY8F3y1VO6ikcSPeJzSMS5sk6cPMsms1624fb9YSp8YYBoMw4x4EfXhfPoDN1KfFwCe3akgRqXjICHW6mul1Mnz08Kfh5AZvcmI1szmfVSbjQc14K8Ksh2SsJdRTiphcRkjDKq3w9jy3KmIqMRtvJccgo7g80PJK5sNFiEK/VlV7D3pqyJayhxga3LJrBlmoZAnY2Kj2AXPqiR3wXM7L01dBXIFQIbA==
Received: from localhost (h-46-59-36-113.A463.priv.bahnhof.se. [46.59.36.113])
        by smtp.gmail.com with ESMTPSA id a21-20020a2eb555000000b002d10facb5bfsm160667ljn.97.2024.02.13.14.42.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Feb 2024 14:42:31 -0800 (PST)
Date: Tue, 13 Feb 2024 23:42:31 +0100
From: Niklas =?utf-8?Q?S=C3=B6derlund?= <niklas.soderlund+renesas@ragnatech.se>
To: Rob Herring <robh@kernel.org>
Cc: Geert Uytterhoeven <geert+renesas@glider.be>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH v3] dt-bindings: renesas: Document preferred compatible
 naming
Message-ID: <20240213224231.GG1870743@ragnatech.se>
References: <20240213192340.2786430-1-niklas.soderlund+renesas@ragnatech.se>
 <20240213223738.GA2506718-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240213223738.GA2506718-robh@kernel.org>

Hi Rob,

On 2024-02-13 16:37:38 -0600, Rob Herring wrote:
> On Tue, Feb 13, 2024 at 08:23:40PM +0100, Niklas Söderlund wrote:
> > Compatibles can come in two formats. Either "vendor,ip-soc" or
> > "vendor,soc-ip". Add a DT schema file documenting Renesas preferred
> > policy and enforcing it for all new compatibles, except few existing
> > patterns.
> > 
> > Suggested-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> > Signed-off-by: Niklas Söderlund <niklas.soderlund+renesas@ragnatech.se>
> > ---
> > * Changes since v2
> > - Improve the select so it matches on any compatible containing a
> >   component specific Renesas value.
> > - Make the regexps more compact.
> > - Define MaxItems to allow the increased selection to work.
> > - Add rmobile and shmobile prefixes.
> > - I did not take Rob's ack from v2 as the schema changed a lot after
> >   Geerts review.
> > 
> > * Changes since v1
> > - Split the "SoC agnostic compatibles" section into two to make it's
> >   intent clearer.
> > - Improved the documentation for each group of compatibles.
> > - Reduced the number of regexp to create a larger target area. As
> >   suggested by Krzysztof the goal is not to validate each SoC name but
> >   check for the correct order of SoC-IP.
> > 
> > * Changes since RFC
> > - Moved to Documentation/devicetree/bindings/soc/renesas.
> > - Changed the pattern in the initial select to match on .*-.*.
> > - Added a lot of missing compatible values.
> > ---
> >  .../bindings/soc/renesas/renesas-soc.yaml     | 72 +++++++++++++++++++
> >  1 file changed, 72 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/soc/renesas/renesas-soc.yaml
> > 
> > diff --git a/Documentation/devicetree/bindings/soc/renesas/renesas-soc.yaml b/Documentation/devicetree/bindings/soc/renesas/renesas-soc.yaml
> > new file mode 100644
> > index 000000000000..57c11022d793
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/soc/renesas/renesas-soc.yaml
> > @@ -0,0 +1,72 @@
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
> > +      contains:
> > +        pattern: "^renesas,.+-.+$"
> > +  required:
> > +    - compatible
> > +
> > +properties:
> > +  compatible:
> > +    maxItems: 4
> 
> 'minItems: 1' should fix the error reported.

Thanks, was just about to send a v4 to fix this mistake.

> 
> 
> > +    items:
> > +      anyOf:
> > +        # Preferred naming style for compatibles of SoC components
> > +        - pattern: "^renesas,(emev2|r(7s|8a|9a)[a-z0-9]+|rcar|rmobile|rz[a-z0-9]*|sh(7[a-z0-9]+)?|mobile)-[a-z0-9-]+$"
> > +        - pattern: "^renesas,(condor|falcon|gr-peach|salvator|sk-rz|smar(c(2)?)?|spider|white-hawk)(.*)?$"
> > +
> > +        # Legacy compatibles
> > +        #
> > +        # New compatibles are not allowed.
> > +        - pattern: "^renesas,(can|cpg|dmac|du|(g)?ether(avb)?|gpio|hscif|(r)?i[i2]c|imr|intc|ipmmu|irqc|jpu|mmcif|msiof|mtu2|pci(e)?|pfc|pwm|[rq]spi|rcar_sound|sata|scif[ab]*|sdhi|thermal|tmu|tpu|usb(2|hs)?|vin|xhci)-[a-z0-9-]+$"
> > +        - pattern: "^renesas,(d|s)?bsc(3)?-(r8a73a4|r8a7740|sh73a0)$"
> > +        - pattern: "^renesas,em-(gio|sti|uart)$"
> > +        - pattern: "^renesas,fsi2-(r8a7740|sh73a0)$"
> > +        - pattern: "^renesas,hspi-r8a777[89]$"
> > +        - pattern: "^renesas,sysc-(r8a73a4|r8a7740|rmobile|sh73a0)$"
> > +        - enum:
> > +            - renesas,imr-lx4
> > +            - renesas,mtu2-r7s72100
> > +
> > +        # None SoC component compatibles
> > +        #
> > +        # Compatibles with the Renesas vendor prefix that do not relate to any SoC
> > +        # component are OK. New compatibles are allowed.
> > +        - enum:
> > +            - renesas,smp-sram
> > +
> > +        # Do not fail compatibles not matching the select pattern
> > +        #
> > +        # Some SoC components in addition to a Renesas compatible list
> > +        # compatibles not related to Renesas. The select pattern for this
> > +        # schema hits all compatibles that have at lest one Renesas compatible
> > +        # and try to validate all values in that compatible array, allow all
> > +        # that don't match the schema select pattern. For example,
> > +        #
> > +        #   compatible = "renesas,r9a07g044-mali", "arm,mali-bifrost";
> > +        - pattern: "^(?!renesas,.+-.+).+$"
> > +
> > +additionalProperties: true
> > -- 
> > 2.43.0
> > 

-- 
Kind Regards,
Niklas Söderlund

