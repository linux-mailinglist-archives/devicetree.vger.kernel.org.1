Return-Path: <devicetree+bounces-74263-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 181D69027F9
	for <lists+devicetree@lfdr.de>; Mon, 10 Jun 2024 19:49:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E446A1C21FAE
	for <lists+devicetree@lfdr.de>; Mon, 10 Jun 2024 17:49:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 01C73147C74;
	Mon, 10 Jun 2024 17:49:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ziepe.ca header.i=@ziepe.ca header.b="axT/7pGA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f181.google.com (mail-yw1-f181.google.com [209.85.128.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7941F1EA85
	for <devicetree@vger.kernel.org>; Mon, 10 Jun 2024 17:49:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718041778; cv=none; b=NBGi4/0YE/aeSBe5JAzxIH9Ry7Q1ip2LdzUmj8Lpi5sxEdDdtBlVSMi/ooTADJ5YkUMNGlg6LbnoKuwEp0wXUSB+iCg9Bv1fPjDHWdtYqWCa8Lnprw/dUut3q4xjjeLNsjO4OA61+OSAUlWx4KAN9VmoojqA7bS6b9gz96gK3Dc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718041778; c=relaxed/simple;
	bh=iOCQA3gFhsaGFrQM1y+O+3mLLYJQ5KrPcSjHAx+iK2s=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=KtUDxi+BpkeA5vaJ1lFwyNP3odSrdMGocpFkGJoCltlR4NwEVdOQd+a564FcI8jMtbJec4dMjJ4kzxxdcnDQD+NdKJz42IywnCQyqs6VE2/uM96C/UTPHWC5WHitG5K4bMdo0DYRT3e7/exIA+qOwtXwXx9+4EJvjvqRa87ZNkY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ziepe.ca; spf=pass smtp.mailfrom=ziepe.ca; dkim=pass (2048-bit key) header.d=ziepe.ca header.i=@ziepe.ca header.b=axT/7pGA; arc=none smtp.client-ip=209.85.128.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ziepe.ca
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ziepe.ca
Received: by mail-yw1-f181.google.com with SMTP id 00721157ae682-627ea4e0becso50961867b3.0
        for <devicetree@vger.kernel.org>; Mon, 10 Jun 2024 10:49:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google; t=1718041776; x=1718646576; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=rLnQ2l5LC4vBk1KAktpJMA8+PgPoixo2FswnJOlP1yg=;
        b=axT/7pGA2KuK2hmbj9U2tGetDxGEFcgntD6ROfNX7iatlqMW33wmcsZZEPxtq1PaXA
         37gaRouVg3yZZuOOnwh9n6bnMYjJNn+cnRbuW9AmCJusoGIEJDCLEACN0yCiHOsIGovQ
         YBftl/ag4CTDFHsKcv4db06QKFhPMo2siXIIX8xKu0fNBB4wVo8hDttdH8b96m63inEk
         bizGbAi7MIEO+QO2U5nkoILiheGJrSkGVWYP+0eTR3EEC4j5oaoOqbDR9Nz6G1GtblHT
         79NVNv4OgPuCCeLFzuTK/7RN4M2gS/LIzqyPYrzzzhuyyR/x/g9vRYT1EopZgEiAD4iH
         KSfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718041776; x=1718646576;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rLnQ2l5LC4vBk1KAktpJMA8+PgPoixo2FswnJOlP1yg=;
        b=vxKiAVsNvyOfYrmmIhttIaLDYHEWlYyqbg1vCkwo5KtSvMQ2nXaTAUQbtdxIZS2E85
         5CQkgHbwASjpzZJkawDAPqp5C7ql5dPggRS9Kgq8q2nx/HgUXMzSKKiIH0NDJ01wrinC
         A5pio7E3QZg6P9Hwz94wm+OOT4m7/JWi1xJoyQSe2p4AXiApHegxbpsS6fcehJrEdGtV
         qcPTh2EeNGUHu5o6pJRpOK2qC9OhIeEgJF63nHasrUeFJROM9+5I1IM7oe1s326nvoos
         UqfKJbIrSVXEifwSqGo0JZZFfuEENhKlhHY77dNZjy0EArB3pVYdkSehrPkRIWlxzXVh
         LyrQ==
X-Forwarded-Encrypted: i=1; AJvYcCUoEWyTUHoxO/r1JHHDDUnfG8Pd6JtimoAfcpT4yeFceAGL1yQlDfzylrEHusYrbnOE7DhtPyHTkJUtvwWd1bP33Nt3tc8LzLK7QA==
X-Gm-Message-State: AOJu0YzbcpYEaty8dWeVHrDAtYViJv8PDG+r75Y7VxYWOLb0iKyVFctS
	vUn5D3d8mZgFh5ddgekhjLQoHh41M4sx45TQhHomC9weJzs065JJUnMwKZ/CP4c=
X-Google-Smtp-Source: AGHT+IFe8OwLGzvnbALaK/BDvvOAZwFQVf4gWc79kKkP946QP6T5IhIBj387LfKTGJKnPwAn+7jYYg==
X-Received: by 2002:a05:690c:72f:b0:627:7ff0:fb4e with SMTP id 00721157ae682-62cd55f3aa3mr88716287b3.26.1718041776199;
        Mon, 10 Jun 2024 10:49:36 -0700 (PDT)
Received: from ziepe.ca ([128.77.69.89])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-6b04fa1a628sm48037996d6.136.2024.06.10.10.49.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Jun 2024 10:49:35 -0700 (PDT)
Received: from jgg by wakko with local (Exim 4.95)
	(envelope-from <jgg@ziepe.ca>)
	id 1sGj9C-00Etv9-1y;
	Mon, 10 Jun 2024 14:49:34 -0300
Date: Mon, 10 Jun 2024 14:49:34 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Zong Li <zong.li@sifive.com>
Cc: Tomasz Jeznach <tjeznach@rivosinc.com>, Joerg Roedel <joro@8bytes.org>,
	Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Anup Patel <apatel@ventanamicro.com>,
	Sunil V L <sunilvl@ventanamicro.com>,
	Nick Kossifidis <mick@ics.forth.gr>,
	Sebastien Boeuf <seb@rivosinc.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	iommu@lists.linux.dev, linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org, linux@rivosinc.com,
	Lu Baolu <baolu.lu@linux.intel.com>, Jim Shu <jim.shu@sifive.com>,
	Vincent Chen <vincent.chen@sifive.com>
Subject: Re: [PATCH v6 5/7] iommu/riscv: Device directory management.
Message-ID: <20240610174934.GM791043@ziepe.ca>
References: <cover.1716578450.git.tjeznach@rivosinc.com>
 <e18ec8ac169ae7f76e9044c26d0768e6469bad19.1716578450.git.tjeznach@rivosinc.com>
 <CANXhq0p4gERQeROSCSKqxnRZq9-fGfmROGV8JZyqFaenNpnsLA@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CANXhq0p4gERQeROSCSKqxnRZq9-fGfmROGV8JZyqFaenNpnsLA@mail.gmail.com>

On Fri, May 31, 2024 at 02:25:15PM +0800, Zong Li wrote:

> > +static void riscv_iommu_iodir_update(struct riscv_iommu_device *iommu,
> > +                                    struct device *dev, u64 fsc, u64 ta)
> > +{
> > +       struct iommu_fwspec *fwspec = dev_iommu_fwspec_get(dev);
> > +       struct riscv_iommu_dc *dc;
> > +       u64 tc;
> > +       int i;
> > +
> > +       /* Device context invalidation ignored for now. */
> > +
> > +       /*
> > +        * For device context with DC_TC_PDTV = 0, translation attributes valid bit
> > +        * is stored as DC_TC_V bit (both sharing the same location at BIT(0)).
> > +        */
> > +       for (i = 0; i < fwspec->num_ids; i++) {
> > +               dc = riscv_iommu_get_dc(iommu, fwspec->ids[i]);
> > +               tc = READ_ONCE(dc->tc);
> > +               tc |= ta & RISCV_IOMMU_DC_TC_V;
> > +
> > +               WRITE_ONCE(dc->fsc, fsc);
> > +               WRITE_ONCE(dc->ta, ta & RISCV_IOMMU_PC_TA_PSCID);
> > +               /* Update device context, write TC.V as the last step. */
> > +               dma_wmb();
> > +               WRITE_ONCE(dc->tc, tc);
> > +       }
> 
> Does it make sense to invalidate the DDTE after we update the DDTE in
> memory? This behavior will affect the nested IOMMU mechanism. The VMM
> has to catch the event of a DDTE update from the guest and then
> eventually go into the host IOMMU driver to configure the IOMMU
> hardware. 

Right, this is why I asked about negative caching.

The VMMs are a prime example of negative caching, in something like
the SMMU implementation the VMM will cache the V=0 STE until they see
an invalidation.

Driving the VMM shadowing/caching entirely off of the standard
invalidation mechanism is so much better than any other option.

IMHO you should have the RISCV spec revised to allow negative caching
in any invalidated data structure to permit the typical VMM design
driven off of shadowing triggered by invalidation commands.

Once the spec permits negative caching then the software would have to
invalidate after going V=0 -> V=1.

Jason

