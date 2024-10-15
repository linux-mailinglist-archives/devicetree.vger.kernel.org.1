Return-Path: <devicetree+bounces-111554-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DC0A099F42C
	for <lists+devicetree@lfdr.de>; Tue, 15 Oct 2024 19:35:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DBF421C221FB
	for <lists+devicetree@lfdr.de>; Tue, 15 Oct 2024 17:35:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7FD4B1F9EDF;
	Tue, 15 Oct 2024 17:35:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tenstorrent.com header.i=@tenstorrent.com header.b="OB59CKMm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f171.google.com (mail-pl1-f171.google.com [209.85.214.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6FC11AF0CF
	for <devicetree@vger.kernel.org>; Tue, 15 Oct 2024 17:35:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729013725; cv=none; b=uUTHOWScCMNgLAK+k33dJeF69ttisRIY5Cx+wj7Fq6HuD9RzfvNtCabgKqDpFDATno5tRvSqboMmRnoS7lgObkE+jnJEuZ/pKOEy+4YX272h85vshqTeD7esCbwyf8XQGwKc38vb8D7Rcjd2XWHTZ7ZGS4osnFOr84Ah7uVQ7r8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729013725; c=relaxed/simple;
	bh=NnE26QuJL8kx6+nbQti902lo90aIRg62wHnFCAy3axM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=SOEk3GVEped/5/OYDb59vqR1SSXIvaS9bW9MRbfOT5ozG+jteyMowqrZFLH7Fc+hQlSQ8HZrU9QxJFCGvzq1tels1zjpW9+9N8h2NHXk/HVwDGhQtdBSkwUg6+u9Iye0fv+B+/4U2pIrPDN3bwFTSpRAafK6gSWp62HtNYX9OyU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=tenstorrent.com; spf=pass smtp.mailfrom=tenstorrent.com; dkim=pass (2048-bit key) header.d=tenstorrent.com header.i=@tenstorrent.com header.b=OB59CKMm; arc=none smtp.client-ip=209.85.214.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=tenstorrent.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tenstorrent.com
Received: by mail-pl1-f171.google.com with SMTP id d9443c01a7336-20ca96a155cso35020115ad.2
        for <devicetree@vger.kernel.org>; Tue, 15 Oct 2024 10:35:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tenstorrent.com; s=google; t=1729013722; x=1729618522; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=JytOzcc+dUIDL9WdRCARe9Uv3pKvU7/eSVdxVkOAXWI=;
        b=OB59CKMmnuVW8Gv4Jyw7vxRpstTMGWAa/XpilTdlpgIeXoZuDF6NnlzfiVkbxf6TbT
         EZaWkFGR4UZ8QVuswGw2sVHhvkYat/jqf2ZOW8eppiS8gy6iBYqclvIZFzuGgrN1mJ9A
         qZkTq08umUdMw+kHbJB72hXSSumbmVv5Dpt2Dnd/xCpXWEE9PbcBgrdhVRVg8Uqs3Zzk
         vyPzI/+LHi04B3S6DSqqxgmkq9F/UTn/lCO+RtzMPIOGdq+vj5r9m0mweMIranXVzXug
         fgocse758hBtLfMM2BAAz6IkFNhHfPTm0tzmQQ89PUSniw3AdWVB09snPkR2T0SGrnNd
         NgNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729013722; x=1729618522;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JytOzcc+dUIDL9WdRCARe9Uv3pKvU7/eSVdxVkOAXWI=;
        b=ZEAiAXnA4IK8kng0CDENYDLnJv5iJzUdrdbyF/AjFNJtSGEIZqdEGRYDiNqHQh9Rls
         oCjVLst/vZ/VJBBDmh/XTT8y9rY65pan1yL02fxEK9LY1imSXWjLKrm/F4SHZLoz9eXI
         oUJIF9IhSJI1Wmfb9nl3eLUwCvZkhyCY85pOCuAejtpjn9lNx1LzmjoeGr5RbmIXQker
         t1EwtXRL9OmWUN/Fmj8xm1j3EAuCf5w5WajvXQ1r2wRHQHyM3i0spA8Sz7yef0r+73d3
         IYns9axgKFbpG7eCsLPITGQhtdkXrdSxbGCJEmMm4UEwcQe71TATVSEPUVj3u+ypYUOW
         pdPg==
X-Forwarded-Encrypted: i=1; AJvYcCXMkBcbUyteQpckVYVZ1XwWQ9OK7Sr5riNf99JHBoGu30zsN1cjBw9duh2tjEJANtQPhFaRa/oW8ois@vger.kernel.org
X-Gm-Message-State: AOJu0Yy0c7c2JJsmObSzH5Mr0zVLfitPfd79YA5ZX5Y72MqKzwaequsm
	nBH0BwcHKOsLIwyIEqHB8BTq13JZGsq4nqn07/bsExkMWy3reo43Mufx2F1iSno=
X-Google-Smtp-Source: AGHT+IHgnKPG+JToMuAc0LWW3oeijO/iQFtN52pi0xgDD1whm+yFZJ03BLmZqH4aS986t90jj6sCwA==
X-Received: by 2002:a17:903:2301:b0:20c:7d4c:64db with SMTP id d9443c01a7336-20ca16be1f5mr250149925ad.49.1729013722182;
        Tue, 15 Oct 2024 10:35:22 -0700 (PDT)
Received: from x1 (71-34-69-82.ptld.qwest.net. [71.34.69.82])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-20d1805a180sm14526195ad.242.2024.10.15.10.35.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Oct 2024 10:35:21 -0700 (PDT)
Date: Tue, 15 Oct 2024 10:35:20 -0700
From: Drew Fustini <dfustini@tenstorrent.com>
To: Conor Dooley <conor@kernel.org>
Cc: Emil Renner Berthing <emil.renner.berthing@canonical.com>,
	Drew Fustini <drew@pdp7.com>, Guo Ren <guoren@kernel.org>,
	Fu Wei <wefu@redhat.com>, Linus Walleij <linus.walleij@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Thomas Bonnefille <thomas.bonnefille@bootlin.com>,
	Kanak Shilledar <kanakshilledar@gmail.com>,
	linux-riscv@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 0/8] riscv: dts: thead: Add TH1520 pin controller support
Message-ID: <Zw6n2HJqltna1Y3U@x1>
References: <20241014-th1520-pinctrl-dts-v1-0-268592ca786e@tenstorrent.com>
 <20241015-thriving-dizzy-4708ff6b6ebe@spud>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241015-thriving-dizzy-4708ff6b6ebe@spud>

On Tue, Oct 15, 2024 at 06:19:19PM +0100, Conor Dooley wrote:
> On Mon, Oct 14, 2024 at 10:54:17AM -0700, Drew Fustini wrote:
> > This series of device tree patches enables the TH1520 pin controllers on
> > the BeagleV Ahead and Lichee Pi 4A boards.
> > 
> > Patches 1-7 have all been cherry picked from esmil's th1520 branch [1].
> > They do not have the issues pointed out in the previous series [2] that
> > I sent out which contained out dated versions of the patches.
> > 
> > The final patch was suggested by Emil as there are not currently any
> > users of the spi0 node so there is no need to enable it in the board dts
> > files.
> > 
> > I have tested on the BeagleV Ahead and the LicheePi 4A. The leds on the
> > BeagleV can be controlled as expected through sysfs.
> > 
> > [1] https://github.com/esmil/linux
> > [2] https://lore.kernel.org/lkml/20240930-th1520-pinctrl-v3-0-32cea2bdbecb@tenstorrent.com/
> 
> btw, this should have continued the version numbering from [2] and been
> v4

Thanks, I'll keep that in mind for the future.

-Drew

