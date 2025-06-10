Return-Path: <devicetree+bounces-184009-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id A5ED1AD2BCD
	for <lists+devicetree@lfdr.de>; Tue, 10 Jun 2025 04:10:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5BA3517058C
	for <lists+devicetree@lfdr.de>; Tue, 10 Jun 2025 02:11:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5C6CE1B0411;
	Tue, 10 Jun 2025 02:10:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pdp7-com.20230601.gappssmtp.com header.i=@pdp7-com.20230601.gappssmtp.com header.b="ELeBHnP1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f178.google.com (mail-pl1-f178.google.com [209.85.214.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 068821A8419
	for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 02:10:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749521448; cv=none; b=P9F7gAIT1qDhyt/4x1q6WOsTkRwjssZXfqH3AaPPj6a1y1AMT0mtEOcUAiwHwO9U+IUXByNPbKiMRymtgt3NmbvT0SUQruXRo+cmJ6Z4RxgXvwyN/DNmVkehi4tZufsczj0bLPE1YuRq2sSr587TWV0JGGGUEl8nQr6FGbL5SfY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749521448; c=relaxed/simple;
	bh=5aU7eapGM/ei5f45aN1KDGXaOdpkZ89epyfvqNAl4eA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=bPvCeM3ZndXoFXokao3zxEpIj/PYpshvlDmrBAJcBIeuYmVJ3SLxlJRCEA9EL/sAODw7L+43Mmyp+buXJcBHzZKr2ftVNZBdkBOYXv1mNr6zKh+rOSpFZyWaTXQeuEq3vY/umc9scaDys4mBqbGDpCRtPtHRB6v7jf3IXfnZfuw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pdp7.com; spf=none smtp.mailfrom=pdp7.com; dkim=pass (2048-bit key) header.d=pdp7-com.20230601.gappssmtp.com header.i=@pdp7-com.20230601.gappssmtp.com header.b=ELeBHnP1; arc=none smtp.client-ip=209.85.214.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pdp7.com
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=pdp7.com
Received: by mail-pl1-f178.google.com with SMTP id d9443c01a7336-235e1d710d8so60013045ad.1
        for <devicetree@vger.kernel.org>; Mon, 09 Jun 2025 19:10:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pdp7-com.20230601.gappssmtp.com; s=20230601; t=1749521445; x=1750126245; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ya/YooFCKAb0uxl/VSVdQA32RSK9pJJ/D62fB+0PERk=;
        b=ELeBHnP1u/i5PlAoyN3PB0tbjxVTHs3n0ABGReccegrjNSbyC6nICA3ukRT1ccUQkK
         R6ONKB4TcddbEzV7+f2H1nu2ADq/ids6mqnu5/N01kGPBWtWURSwf3MuGAMLHeugoeM/
         vTdXv+Husmic/yjyZb+k/1kGPl2af2kB144q7PKeMYAncBbOrC7H5CPysik5MMiuoFQ4
         7WcnvSZgaXI8bDIfkPe5SzKtdV9cEWyAHcw/CluHlQwrj39pz2W+xhykq1qQMc5ca6e5
         b4LxuA5WmUZvnhOb/9hzJ+GRmwxU7JTCVXXvxt0FSj6lvgW3qetBFYiV5qzk9BVsXZJ8
         n5Dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749521445; x=1750126245;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ya/YooFCKAb0uxl/VSVdQA32RSK9pJJ/D62fB+0PERk=;
        b=o9fTdpXD1jjbnYYvVEoHyApexAhbEqAdNW5AyPMeHnYYUMSsAJ1z4DiGle5spw7lso
         JbmbEZsGoiBxBmiOKYW+phAEGBKFF78tcH9FkNWtBtaZikkHvoe2WO9qdtCsCYi8F6xy
         LACQ9RSnhnZnrGFEGc4gYYM/56S4zG+4h9emTQklIPhbNq/8+fkqV3spr74YZ8AgpzmE
         Zo6JPYSDn+MpZEa2Syop188N4Ncr7tofRkxr0yBt2CGHkuER99O648dI+nrsuha49JyI
         cqL+9V9VJ5WbW19kuLyEOoRRW04k+zqCw3mkblLogJD47pkizzqzkL0mnnILcnNlR+u8
         qyIA==
X-Forwarded-Encrypted: i=1; AJvYcCV0RL0VbY32dXKxIIJhehkb5/hw1A73eOaF4zgsv+BhBA7I2ZzxSe88gb4lsybHBFqHCQ3jOf0Fp/KR@vger.kernel.org
X-Gm-Message-State: AOJu0YxfvjaFUMKvfrn3e80p8ixL5JbL+xqi+L+FaeVg6sDE0L913hV4
	1m1K3r5A8CaUbL6OAPsRJLd53BbhwzBgitScYalO+v2cV01iCMJziWQjU/4FcFtTKnY=
X-Gm-Gg: ASbGncv4p4ivoRW4YQ5cvumHmZ8HjClL85MRd9EPdi9OFSEiYN/dvE/ZmEMWEEaZ4rz
	QteIQD1uZ8CNQFIaDZTZJxrGpxl3hs7vT6rTrtJZz1Bc+Wvm9zR8b+wOgbF4FD55QnwQ+r2SvnA
	ipEgRFZoZaFOms7oXUqPNUTJBWbGQcBTWAke1Q+s15V5XeJR7xtURfvlu1SiAKWi0rp0+DBdb4u
	M06t8crKOLCM8WNm2V33fyyoAt6B43374zrzvpL8BkhCFVN3C7pkaLaFHGvxe28UnjHcon4v+W3
	jS44aLhFlOO5/EOwMKcjXUAdy1IupaHrCTp0Ey2a1H8lpkxCbTJX91rhPh0RPHIJpAVX2sr+ioE
	Fy7ESS6th
X-Google-Smtp-Source: AGHT+IHiLzOREAtFVISmftxMjRL3+S4jCj4+M1zY33h7bufBc03vR1T1goruVVU0oe6Aj5IJJ3iEbg==
X-Received: by 2002:a17:903:f87:b0:236:15b7:62e8 with SMTP id d9443c01a7336-23638331c1emr13447465ad.25.1749521445312;
        Mon, 09 Jun 2025 19:10:45 -0700 (PDT)
Received: from x1 (97-120-245-201.ptld.qwest.net. [97.120.245.201])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-23603078175sm60500825ad.9.2025.06.09.19.10.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Jun 2025 19:10:44 -0700 (PDT)
Date: Mon, 9 Jun 2025 19:10:42 -0700
From: Drew Fustini <drew@pdp7.com>
To: Ira Weiny <ira.weiny@intel.com>
Cc: Dan Williams <dan.j.williams@intel.com>,
	Vishal Verma <vishal.l.verma@intel.com>,
	Dave Jiang <dave.jiang@intel.com>, nvdimm@lists.linux.dev,
	Oliver O'Halloran <oohall@gmail.com>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Conor Dooley <conor.dooley@microchip.com>
Subject: Re: [PATCH v3] dt-bindings: pmem: Convert binding to YAML
Message-ID: <aEeUInXN6U40YSog@x1>
References: <20250606184405.359812-4-drew@pdp7.com>
 <6843a4159242e_249110032@dwillia2-xfh.jf.intel.com.notmuch>
 <6846f03e7b695_1a3419294dc@iweiny-mobl.notmuch>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <6846f03e7b695_1a3419294dc@iweiny-mobl.notmuch>

On Mon, Jun 09, 2025 at 09:31:26AM -0500, Ira Weiny wrote:
> Dan Williams wrote:
> > [ add Ira ]
> > 
> > Drew Fustini wrote:
> > > Convert the PMEM device tree binding from text to YAML. This will allow
> > > device trees with pmem-region nodes to pass dtbs_check.
> > > 
> > > Acked-by: Conor Dooley <conor.dooley@microchip.com>
> > > Acked-by: Oliver O'Halloran <oohall@gmail.com>
> > > Signed-off-by: Drew Fustini <drew@pdp7.com>
> > > ---
> > > Dan/Dave/Vishal: does it make sense for this pmem binding patch to go
> > > through the nvdimm tree?
> > 
> > Ira has been handling nvdimm pull requests as of late. Oliver's ack is
> > sufficient for me.
> > 
> > Acked-by: Dan Williams <dan.j.williams@intel.com>
> > 
> > @Ira do you have anything else pending?
> > 
> 
> I don't.  I've never built the device tree make targets to test.
> 
> The docs[1] say to run make dtbs_check but it is failing:
> 
> $ make dtbs_check
> make[1]: *** No rule to make target 'dtbs_check'.  Stop.
> make: *** [Makefile:248: __sub-make] Error 2

I believe this is because the ARCH is set to x86 and I don't believe
dtbs_check is valid for that. I work on riscv which does use device tree
so I use this command:

make ARCH=riscv CROSS_COMPILE=riscv64-linux-gnu- dtbs_check


> 
> 
> dt_binding_check fails too.
> 
> $ make dt_binding_check
>   SCHEMA  Documentation/devicetree/bindings/processed-schema.json
> Traceback (most recent call last):
>   File "/usr/bin/dt-mk-schema", line 8, in <module>
>     sys.exit(main())
>              ~~~~^^
>   File "/usr/lib/python3.13/site-packages/dtschema/mk_schema.py", line 28, in main
>     schemas = dtschema.DTValidator(args.schemas).schemas
>               ~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^
>   File "/usr/lib/python3.13/site-packages/dtschema/validator.py", line 373, in __init__
>     self.make_property_type_cache()
>     ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^^
>   File "/usr/lib/python3.13/site-packages/dtschema/validator.py", line 460, in make_property_type_cache
>     self.props, self.pat_props = get_prop_types(self.schemas)
>                                  ~~~~~~~~~~~~~~^^^^^^^^^^^^^^
>   File "/usr/lib/python3.13/site-packages/dtschema/validator.py", line 194, in get_prop_types
>     del props[r'^[a-z][a-z0-9\-]*$']
>         ~~~~~^^^^^^^^^^^^^^^^^^^^^^^
> KeyError: '^[a-z][a-z0-9\\-]*$'
> make[2]: *** [Documentation/devicetree/bindings/Makefile:63: Documentation/devicetree/bindings/processed-schema.json] Error 1
> make[2]: *** Deleting file 'Documentation/devicetree/bindings/processed-schema.json'
> make[1]: *** [/home/iweiny/dev/linux-nvdimm/Makefile:1522: dt_binding_schemas] Error 2
> make: *** [Makefile:248: __sub-make] Error 2
> 
> How do I test this?

dt_binding_check should work on x86. Maybe you don't have dtschema and
yamllint installed?

You should be able to install with:

pip3 install dtschema yamllint

And run the binding check with:

make dt_binding_check DT_SCHEMA_FILES=pmem-region.yaml

You should see the following output:

  SCHEMA  Documentation/devicetree/bindings/processed-schema.json
  CHKDT   ./Documentation/devicetree/bindings
  LINT    ./Documentation/devicetree/bindings
  DTEX    Documentation/devicetree/bindings/pmem/pmem-region.example.dts
  DTC [C] Documentation/devicetree/bindings/pmem/pmem-region.example.dtb

Thanks,
Drew

