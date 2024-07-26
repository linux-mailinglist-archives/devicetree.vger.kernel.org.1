Return-Path: <devicetree+bounces-88401-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 91A0D93D688
	for <lists+devicetree@lfdr.de>; Fri, 26 Jul 2024 18:05:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4613B1F24948
	for <lists+devicetree@lfdr.de>; Fri, 26 Jul 2024 16:05:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F330917B4E8;
	Fri, 26 Jul 2024 16:05:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pdp7-com.20230601.gappssmtp.com header.i=@pdp7-com.20230601.gappssmtp.com header.b="NKHCyAK2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f45.google.com (mail-oa1-f45.google.com [209.85.160.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F0AE5588B
	for <devicetree@vger.kernel.org>; Fri, 26 Jul 2024 16:05:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722009924; cv=none; b=SDrUEKEBbdcYRIOr7v5me/bjmjpwDuwVEhxUnr1woT1kMOMDctwZdedvQG3W8ZgiESsqt74LpsBKXz9l16HEkRcsZ24dtEWyYyrI+jCjNz9j0a4rexA50kQBLp32flxXX5ykNidAw+4ax5W25UO5O+GRxYafo6KBPrXC3RrwpYA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722009924; c=relaxed/simple;
	bh=+jiv+kL+MxHX09fUys/zYIAjsyoQbkviXtDOiuTe8Bk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=dWwkYQVqOUyrYXy6MXKYNCdcIu/hlCLUlrvt3u9K7jcWs6R8mG6Bl9zt5WRC2jtKrDnSoy1PdvMfkdaeeR4cdPF81CzquahyzGNf1dvBm9U/Ew2qTf8XxAoonQB+1o073akSfPxwQSXj1jUfEEd3u5eGrOFRtdG5iW6RoCjipyU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pdp7.com; spf=none smtp.mailfrom=pdp7.com; dkim=pass (2048-bit key) header.d=pdp7-com.20230601.gappssmtp.com header.i=@pdp7-com.20230601.gappssmtp.com header.b=NKHCyAK2; arc=none smtp.client-ip=209.85.160.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pdp7.com
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=pdp7.com
Received: by mail-oa1-f45.google.com with SMTP id 586e51a60fabf-25d6dd59170so899998fac.0
        for <devicetree@vger.kernel.org>; Fri, 26 Jul 2024 09:05:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pdp7-com.20230601.gappssmtp.com; s=20230601; t=1722009922; x=1722614722; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=PvbEqWL5j+GN3Ik5CL00onvHz+Bz9PXQQigu5LQIRIw=;
        b=NKHCyAK2VQowlKhhES9LLvADp98H73duPb5rMgq+qy8ahmfAF0SKB7DFPH5M0SqsPs
         rkc1it82ELCNLp78t9B3OHU/I2BpGiIFFxVIRn/mfJY184AAkVXsvPyBB53m6Fp1FIJP
         lXvU+nbR8OXYgdFCEzwFX/BzylxhhrlREmmEOyGL92gWj7LIftmI3Rtdai+05AgdgDn8
         aHN/jGFpdEL76q5TRB+kXr+F99/OOQv6oYOj7VU9xmr8x/gIuvv5FKilSv6G3s7K7yrp
         zBaDDePQQYLTrEPLUQnghxxa2bTlPT9qThdNot4OC3KN2IDoO+okHc/jFp/RsSrzn9SV
         G7QQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722009922; x=1722614722;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PvbEqWL5j+GN3Ik5CL00onvHz+Bz9PXQQigu5LQIRIw=;
        b=pBSLB+COs6W0kjJFYJP9eDX816L2cFjA5U10VkPeNCGOrbB/nopUqctKOjAeN2T5+l
         GDM2Xifg0kwE/VyXWV/ce1OO6sEvqnekV2xciJFF/E4HtusOuCR4rIwDxKlmw5GXeGsn
         6rjm/FMeHcOZXoOg8ajBmU35wKFSUKnG6Jzh3nTGrFm4g/93B2bv3tpgXmoh2u6YLOsg
         AR7GzgsQozrSR2br6d0ZXzrTfIIvnsAROvqWI8vF6f4bLPyeFoa8/G9KppNQDBHJvR7T
         5hD3u4jCL5CZ6wZxOlEELzACPeF+AtKQXVFtVI3z39eQm7La/l+nbYCzG3NSaF4peqLd
         UYnQ==
X-Forwarded-Encrypted: i=1; AJvYcCUVV3YENoYkSdbQWcXiSVdGliKErdOnXWESpxIr2f7Q0WoD+raaHCx8iFUGWZpcS+Tp+pjGNoChG4TzqV86kpkngcRkQtt67uj77A==
X-Gm-Message-State: AOJu0YyBnFc9zgqHgK+lHp396eIQhxcFRktkwZKWjiW1/pm0Fj/Kl5B1
	reBm/AVsSZfhT5/gliPI14HgN+uVBvJ0yN5lc3c4dAfEPuwNeRnTexVfARYSkpI=
X-Google-Smtp-Source: AGHT+IFDWKbRtXGN12vbxH/YCBj69sr4LV9l4Sw5hPuRUYNe3O/XobimAvxVyMcYWga3N6RbHvbWGQ==
X-Received: by 2002:a05:6870:7a11:b0:25d:e3d:b441 with SMTP id 586e51a60fabf-267d4ef4551mr207175fac.40.1722009922555;
        Fri, 26 Jul 2024 09:05:22 -0700 (PDT)
Received: from x1 ([2601:1c2:1802:170:dd1c:823c:f5e3:153f])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-70ead8215b3sm2865594b3a.121.2024.07.26.09.05.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Jul 2024 09:05:21 -0700 (PDT)
Date: Fri, 26 Jul 2024 09:05:19 -0700
From: Drew Fustini <drew@pdp7.com>
To: Emil Renner Berthing <emil.renner.berthing@canonical.com>
Cc: Kanak Shilledar <kanakshilledar@gmail.com>,
	Jisheng Zhang <jszhang@kernel.org>, Guo Ren <guoren@kernel.org>,
	Fu Wei <wefu@redhat.com>, Conor Dooley <conor@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>, linux-riscv@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 0/1] Add basic SPI support on TH1520
Message-ID: <ZqPJP+b7iqSajXI9@x1>
References: <20240705093503.215787-1-kanakshilledar@gmail.com>
 <ZqMdeTrV5GE0TVUV@x1>
 <CAJM55Z9WFZJ=vyosx8LSUxBXs-Uftr76yKuWqGi7D_L+v1cKRw@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAJM55Z9WFZJ=vyosx8LSUxBXs-Uftr76yKuWqGi7D_L+v1cKRw@mail.gmail.com>

On Fri, Jul 26, 2024 at 04:19:51AM -0400, Emil Renner Berthing wrote:
> Drew Fustini wrote:
> > On Fri, Jul 05, 2024 at 03:04:58PM +0530, Kanak Shilledar wrote:
> > > Implemented basic SPI support for TH1520 SoC. There are two SPIs reserved
> > > on the LicheePi4A, one on the SPI Flash pads that are blanked out on the
> > > back, and one on the pins. I implemented the one connected to the pad.
> > >
> > > It is using a fixed clock of 396MHz. The address and clock frequency was
> > > referenced from the TH1520 System Reference Manual [1].
> > >
> > > [...]
> >
> > Applied to thead-dt-for-next, thanks!
> 
> Hi Drew,
> 
> Are you sure you want to merge this patch? It adds another dummy clock for the
> SPI, but the next kernel should have your clock driver that actually models the
> SPI clock.
> Also the clock driver says the SPI clock has a frequency of 792MHz, eg. double
> of what this dummy clock is set to.
> 
> /Emil

I am planning send updated dts patches for thead,th1520-clk-ap support
that addresses your recent comment [1]. I'll include a patch to convert
the SPI clock similar to the other dts patches in that series. Assuming
there are no issues with that new series, I will apply them to
thead-dt-for-next with enough testing time for them to be included in
the 6.12 pull request to Arnd.

Thanks,
Drew

[1] https://lore.kernel.org/linux-riscv/CAJM55Z8uo-Z_9ruyqygK1pbBCTkCxMBVoF8GD2dajhTKOYrAfA@mail.gmail.com/

