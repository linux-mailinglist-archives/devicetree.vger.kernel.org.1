Return-Path: <devicetree+bounces-181388-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 437A6AC751C
	for <lists+devicetree@lfdr.de>; Thu, 29 May 2025 02:38:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E69CF1BC61E7
	for <lists+devicetree@lfdr.de>; Thu, 29 May 2025 00:38:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 010281684B4;
	Thu, 29 May 2025 00:38:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ziepe.ca header.i=@ziepe.ca header.b="BB8bmwrL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f50.google.com (mail-qv1-f50.google.com [209.85.219.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ED571519AC
	for <devicetree@vger.kernel.org>; Thu, 29 May 2025 00:38:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748479110; cv=none; b=YfvsKOEt76pnbtpXGr4+A3uEHx+LAJHhn3LJYys0ChNrGaww+sClVmwrWBbN7nmSDzwoHiDQDdNFe+YpucOYTmKl3ncVoXnDpUVsfZz61umb/2hQeiPGZWsfqhEnzBY3J48Wp3lp+DutGAjOtXAQgYcho4/Ebz9j1CLYWUFXYWc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748479110; c=relaxed/simple;
	bh=ze/vE+pLOw8LtKqumJmv32tL8OFv0ndyxShmm8Q5lTg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=MRhE7yFJgVmnCUlbd5eEKaU/F54WDOElSmWI/TiGrZo4qOb6+/WgzlUk7Mur7mo+afiKXBmaVxHx8UodvaqpoLLFxKUqXiXU4J7JTMrTuXQrkbbekwyAYIU8vdSdwf+As66atnvb+FwrTh733WFpgVFf1OVJ6x4HyRDEShhz234=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ziepe.ca; spf=pass smtp.mailfrom=ziepe.ca; dkim=pass (2048-bit key) header.d=ziepe.ca header.i=@ziepe.ca header.b=BB8bmwrL; arc=none smtp.client-ip=209.85.219.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ziepe.ca
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ziepe.ca
Received: by mail-qv1-f50.google.com with SMTP id 6a1803df08f44-6fac7147cb8so3615146d6.1
        for <devicetree@vger.kernel.org>; Wed, 28 May 2025 17:38:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google; t=1748479108; x=1749083908; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=sVQkha02xf9SMmtYT1jV9HNI/f56xB5GG/vabKlGDf4=;
        b=BB8bmwrLjZkUBv8Tp+DAlyMP4dodyfnLupRZd0Zd9chVqXdxSKcPPr2pIs/X0fIuYf
         a7w1wUueGNjWOab3O5bxSHjzuU31Z1pmuEqn9CGx85MtnHhz0VhFDaEjatlYqo67D+0u
         0wJ2pAkvxuU0SJG9/hJAeRB1kLEy/4D3wl8qGNFgg4mfTVX2TAg8w5/mlIUGLZKXeaFI
         Gi60okRqS+RGwu/rfvRR5ro/Tr3PeGzmX4YVBzdjqTpT0/gK4Y9vMJ9Xb38gVBYltk9p
         Okfmlip73YJGln5UWnujQ72SPy9ZHEOANBj71AaAArWhG7h1ACJ69AY1HE/Ujibf72JK
         QmTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748479108; x=1749083908;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sVQkha02xf9SMmtYT1jV9HNI/f56xB5GG/vabKlGDf4=;
        b=ucnfVAzArSj5lVp33N76jACBQdgVWbqXtLHekNaYM/pQx/pe30LBDO+al/Y7RUUbSk
         3qxEn0WILBx+MtxjeyLbo/U31p5Fr/JSba9fUhHUmg58AOtKyXwzt2xFm4bXQ1TZE3AE
         s+9avj+Fu9k+jDkwjfi2bQ/UM79HgQvESDRRMQW+okoGjRGtv4+xn2JfLk++xO4s2pxL
         RyoKq+1xHg3dkFVCU9HhkqNDIAjGKTe05EL89Ox3jXIYLNv1utqtFVzHRfkiQdRFzfcz
         A0uj5iZ4u1F2jYg7IRpGfiObJqnQgJFgGK16efseJO1hjAtdFHMzlhLPjD881e0PF8/A
         qBcQ==
X-Forwarded-Encrypted: i=1; AJvYcCVVpSVktbAx8HeXgr+JLRFW9gbI7hCtEBDtFRD2Eus8Dbb7s/HsJZmxzVTSNHoFTdKZUh2fY1R+R01e@vger.kernel.org
X-Gm-Message-State: AOJu0Yw1hFejqlwv6VWuqqfv18oI/lR1AJ2HsrgBvD0kFUFoWzr+c7Qx
	XM5uAXU+E/Y0+Sj9HnHoocQa2m0dLgBLcDLNYstA6IWgODuNrf24Uv8V1urOgsZV/pc=
X-Gm-Gg: ASbGncs4wjppGQ+eGT6nxnOOTPqD58eS6vCrAWfALnSV02B54YtXBjGkTlNVkUbr3nj
	UAj98I85m2nXraFufdDt59rGBEQKMF94dVPtzRHPqAGgPEfqdGC0AbhQsc5fTJ3c5xOu7QeuG9+
	Lj+GHEWxTo8kMRN5vYzUOn4PE/KASEgog/d30+woZLZNS8kCnI7Gl0HW7YVVuUHhAB5RsZ2nHHP
	Flo37ouDD54jOIKhAAzbsTqoFnUGHbr/GyQFEoAN8Z83fMHAC6PCTMAvUVqcdtj/frtJU2+JV9W
	Pj6Nb3fVfEsmG5vMYW6qsOgDE0dglJWXV3x7wC4mRrGUUw3rkXoXR4yL4yTOygsJll4PBwphMgr
	HeI9fLjHQu3PTOhgbp0nMLNuJGTY=
X-Google-Smtp-Source: AGHT+IGrrQU6seLehXMngMNgswY4d6WsTh2X0qCSzttXJecRsw5bF1myMzmOuM/dLs2M8hI+8CLE1g==
X-Received: by 2002:a05:6214:234e:b0:6fa:c85a:20c0 with SMTP id 6a1803df08f44-6fac85a2328mr4035616d6.28.1748479107982;
        Wed, 28 May 2025 17:38:27 -0700 (PDT)
Received: from ziepe.ca (hlfxns017vw-142-167-56-70.dhcp-dynamic.fibreop.ns.bellaliant.net. [142.167.56.70])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-6fac6d337aesm2521866d6.8.2025.05.28.17.38.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 May 2025 17:38:27 -0700 (PDT)
Received: from jgg by wakko with local (Exim 4.97)
	(envelope-from <jgg@ziepe.ca>)
	id 1uKRHu-00000000qmU-32Wy;
	Wed, 28 May 2025 21:38:26 -0300
Date: Wed, 28 May 2025 21:38:26 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Jacob Pan <jacob.pan@linux.microsoft.com>
Cc: Shyam Saini <shyamsaini@linux.microsoft.com>, iommu@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
	virtualization@lists.linux.dev, will@kernel.org,
	eric.auger@redhat.com, code@tyhicks.com,
	eahariha@linux.microsoft.com, vijayb@linux.microsoft.com
Subject: Re: [PATCH v2 0/3] arm-smmu: select suitable IOVA
Message-ID: <20250529003826.GA192517@ziepe.ca>
References: <20250410225030.2528385-1-shyamsaini@linux.microsoft.com>
 <20250410230008.GA6905@ziepe.ca>
 <67fff12d.650a0220.208c7c.d69dSMTPIN_ADDED_BROKEN@mx.google.com>
 <20250416181759.GF493866@ziepe.ca>
 <20250520224224.GA16365@linuxonhyperv3.guj3yctzbm1etfxqx2vob5hsef.xx.internal.cloudapp.net>
 <20250525190703.GD12328@ziepe.ca>
 <20250527205428.GA14019@linuxonhyperv3.guj3yctzbm1etfxqx2vob5hsef.xx.internal.cloudapp.net>
 <20250528000425.GC146260@ziepe.ca>
 <68379171.170a0220.191ee0.8d6bSMTPIN_ADDED_BROKEN@mx.google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <68379171.170a0220.191ee0.8d6bSMTPIN_ADDED_BROKEN@mx.google.com>

On Wed, May 28, 2025 at 03:42:55PM -0700, Jacob Pan wrote:

> > All IOVA that the platform cannot DMA from should be reported in the
> > reserved_regions file as "reserved". You must make your platform
> > achieve this.
> > 
> Just to double confirm, the expected reserved region should be marked as
> "direct" instead of "msi", right?

I don't know, it depends what is wrong with this platform.

"msi" is the SW_MSI region created by the iommu driver, ignore it.

"reserved" should be from the DT and it says "my platform is broken,
this IOVA doesn't work, don't use it"

"direct" is something entirely different, it also should come from the
DT and it says "must be mapped 1:1 (iova:physical) at all times" which
usually means some FW or other component is controlling the device and
doing DMA using that physical memory space which is unknown to the OS.

Both cases would interfere with the MSI so if the DT/ACPI declares
such regions that overlap with the SW_MSI address then Linux should
select another SW_MSI address.

From a linux perspective "reserved" just ignores those IOVA spaces
while "direct" sets up 1:1 translations there. So FW using direct
incorrectly could become a security problem.

Jason

