Return-Path: <devicetree+bounces-56681-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7565389A204
	for <lists+devicetree@lfdr.de>; Fri,  5 Apr 2024 17:59:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id D4962B2421E
	for <lists+devicetree@lfdr.de>; Fri,  5 Apr 2024 15:59:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A5327171064;
	Fri,  5 Apr 2024 15:59:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="CdTjE8AR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE0AF16FF30
	for <devicetree@vger.kernel.org>; Fri,  5 Apr 2024 15:59:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712332786; cv=none; b=C2uoqJO6aRgSd1gP2HTBxzthh5TP2yOMEbFk1AtePIMRq4DAcwXhvYFOOEGg4k3h4DiY242Lf2/iSvEC2kvCcDhunmiEATa/TIN8Yl470zr+9U3a7vdTWm3CgYwR3DzaDNKvV0nq81LbxPwaowsZFVuIXVSA6V6SZOKR/B91vRE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712332786; c=relaxed/simple;
	bh=6WysufP42FX2Az3Xx8MgB1cNuc1CYX+XUTX4q5FvCN4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=pUQplWplZKIMI6Kxs+PxrCm/jc+5lTJeCcZDkExT9JM+TzykWg1GZD9OOC5Y71tRL7oXEe8S1zPKEbOhyEJ6p8dnXNgpxJJOXrYwNXajnrUhNDCZ6SWlKKtkhwP+hF7w4bIoth/kDe+8xU/utfyjRGcii/LKdsbv/TQJ37w4gdQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=CdTjE8AR; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-4163181a7ceso4961505e9.0
        for <devicetree@vger.kernel.org>; Fri, 05 Apr 2024 08:59:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1712332783; x=1712937583; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Z/+tn7yaOy1bWCod1Hwz4ffQkyy0MXOXzF4xEGdBkSM=;
        b=CdTjE8ARyIrDoCIL7WSqdKga/mX+JFEK79Pi4jCyaf58yf9SvW7NkQNcfHqbHp4W5r
         QPbw7HCfvDOKgZ5bR1EmCP3Nfn1Tn40R+eOWRXyXyahTFxDWNNlptlLkTJ9rLzKeQCA7
         HnZW0wWacuyTjqy85ar0AkWeZCOIasnLZlW3/AftFoGtEa6MUUPVHpms2GrWdvXOAkx1
         nFLnZ2IonAAOcX4LlKDVyfCWj/tVwHuULEz4NbH3X6bYscW3VUaUzsysVqgcSqUreJGs
         sWXp9dkTrCwWkSLVGBjjLlEbNfT7exPe5e2MDN3Ll4xaFqU4eMITnytPqpuqQRbTpky0
         Qw6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712332783; x=1712937583;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Z/+tn7yaOy1bWCod1Hwz4ffQkyy0MXOXzF4xEGdBkSM=;
        b=M4fAKUMY3FfxRbCREg++cAE79cHyuHn6WG+oiRfjt299HncIE9ifm3wNPEpaQSt8A0
         gRG61c/1yGuPX6L6gMv540ofk9Mq7inCdi+yj//HDrO2J7O4BdEOjjEjgDZ3/CIafZc0
         Y2XCsvuFxhwaMI2lKZWTQO2dYfC9E8tguxf1sCWQFx64FQkeGb7OUgELbkwWctXaFH2F
         UbietSDc0ehSWcOl9fRP+oY5JcpsJNIFYqsvgMYQUIDw1IE5AV+4S1iVVXqgUswC8tK7
         LkrUxXMRlfB4uOHqdoxgvtvTUTUq2YEfl0uYKf8b4k6dgBvZ7wDew2HUSo+o7L0euvO8
         S67Q==
X-Forwarded-Encrypted: i=1; AJvYcCU+1gkeTLhlCLESRZS3pyFRCXUzdX4jNRvsI1DxML2vzQIaWfuZuEpboSFrmHoSwl+86/iJM0YlPPGzhvaZgxZrLq+/hVBY8jS2aQ==
X-Gm-Message-State: AOJu0YxBMcPSueNXJG8n88sbKTPSUqRii1vBovzbqlCJFTy+qnUgW1X8
	N7Q71e5pzMtdoF4GTj2rCYP/H9DxEfDvWDriWIo8Hv4RPYmtX76WdzCI9uQTd7E=
X-Google-Smtp-Source: AGHT+IHm5FdCsOG2D2FwTVsRXO+4kOPqszWyczb81zB17ksFNLVDMEKpcib6RWK3ysnM3lM9cg2ZBw==
X-Received: by 2002:a05:600c:3107:b0:414:7909:6680 with SMTP id g7-20020a05600c310700b0041479096680mr1487874wmo.16.1712332783307;
        Fri, 05 Apr 2024 08:59:43 -0700 (PDT)
Received: from localhost (2001-1ae9-1c2-4c00-20f-c6b4-1e57-7965.ip6.tmcz.cz. [2001:1ae9:1c2:4c00:20f:c6b4:1e57:7965])
        by smtp.gmail.com with ESMTPSA id m20-20020a05600c4f5400b0041632171f51sm1770044wmq.13.2024.04.05.08.59.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Apr 2024 08:59:42 -0700 (PDT)
Date: Fri, 5 Apr 2024 17:59:41 +0200
From: Andrew Jones <ajones@ventanamicro.com>
To: Conor Dooley <conor.dooley@microchip.com>
Cc: Max Hsu <max.hsu@sifive.com>, Conor Dooley <conor@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Albert Ou <aou@eecs.berkeley.edu>, "Rafael J. Wysocki" <rafael@kernel.org>, 
	Pavel Machek <pavel@ucw.cz>, Anup Patel <anup@brainfault.org>, 
	Atish Patra <atishp@atishpatra.org>, Paolo Bonzini <pbonzini@redhat.com>, 
	Shuah Khan <shuah@kernel.org>, Palmer Dabbelt <palmer@sifive.com>, 
	linux-riscv@lists.infradead.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-pm@vger.kernel.org, kvm@vger.kernel.org, kvm-riscv@lists.infradead.org, 
	linux-kselftest@vger.kernel.org
Subject: Re: [PATCH RFC 02/11] dt-bindings: riscv: Add Sdtrig optional CSRs
 existence on DT
Message-ID: <20240405-ebdb2943657ab08d2d563c03@orel>
References: <20240329-dev-maxh-lin-452-6-9-v1-0-1534f93b94a7@sifive.com>
 <20240329-dev-maxh-lin-452-6-9-v1-2-1534f93b94a7@sifive.com>
 <20240329-affidavit-anatomist-1118a12c3e60@wendy>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240329-affidavit-anatomist-1118a12c3e60@wendy>

On Fri, Mar 29, 2024 at 10:31:10AM +0000, Conor Dooley wrote:
> On Fri, Mar 29, 2024 at 05:26:18PM +0800, Max Hsu wrote:
> > The mcontext/hcontext/scontext CSRs are optional in the Sdtrig extension,
> > to prevent RW operations to the missing CSRs, which will cause
> > illegal instructions.
> > 
> > As a solution, we have proposed the dt format for these CSRs.
> 
> As I mentioned in your other patch, I amn't sure what the actual value
> is in being told about "sdtrig" itself if so many of the CSRs are
> optional. I think we should define pseudo extensions that represent
> usable subsets that are allowed by riscv,isa-extensions, such as
> those you describe here: sdtrig + mcontext, sdtrig + scontext and
> sdtrig + hcontext. Probably also for strig + mscontext. What
> additional value does having a debug child node give us that makes
> it worth having over something like the above?

Yeah, Sdtrig, which doesn't tell you what you get, isn't nice at all.
I wonder if we can start with requiring Sdtrig to be accompanied by
Ssstrict in order to enable the context CSRs, i.e.

 Sdtrig          - support without optional CSRs
 Sdtrig+Ssstrict - probe for optional CSRs, support what's found

If there are platforms with Sdtrig and optional CSRs, but not Ssstrict,
then maybe the optional CSRs can be detected in some vendor-specific way,
where the decision as to whether or not that vendor-specific way is
acceptable is handled case-by-case.

Thanks,
drew

> 
> Thanks,
> Conor.
> 
> > 
> > Signed-off-by: Max Hsu <max.hsu@sifive.com>
> > ---
> >  Documentation/devicetree/bindings/riscv/cpus.yaml | 18 ++++++++++++++++++
> >  1 file changed, 18 insertions(+)
> > 
> > diff --git a/Documentation/devicetree/bindings/riscv/cpus.yaml b/Documentation/devicetree/bindings/riscv/cpus.yaml
> > index d87dd50f1a4b..c713a48c5025 100644
> > --- a/Documentation/devicetree/bindings/riscv/cpus.yaml
> > +++ b/Documentation/devicetree/bindings/riscv/cpus.yaml
> > @@ -137,6 +137,24 @@ properties:
> >        DMIPS/MHz, relative to highest capacity-dmips-mhz
> >        in the system.
> >  
> > +  debug:
> > +    type: object
> > +    properties:
> > +      compatible:
> > +        const: riscv,debug-v1.0.0
> > +      trigger-module:
> > +        type: object
> > +        description: |
> > +          An indication set of optional CSR existence from
> > +          riscv-debug-spec Sdtrig extension
> > +        properties:
> > +          mcontext-present:
> > +            type: boolean
> > +          hcontext-present:
> > +            type: boolean
> > +          scontext-present:
> > +            type: boolean
> > +
> >  anyOf:
> >    - required:
> >        - riscv,isa
> > 
> > -- 
> > 2.43.2
> > 



> -- 
> kvm-riscv mailing list
> kvm-riscv@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/kvm-riscv


