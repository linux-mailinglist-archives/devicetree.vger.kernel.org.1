Return-Path: <devicetree+bounces-205900-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BB4DB2AD82
	for <lists+devicetree@lfdr.de>; Mon, 18 Aug 2025 17:57:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 804B13B824B
	for <lists+devicetree@lfdr.de>; Mon, 18 Aug 2025 15:53:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4DC18326D5C;
	Mon, 18 Aug 2025 15:53:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ziepe.ca header.i=@ziepe.ca header.b="Lgj7Y3XJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f54.google.com (mail-qv1-f54.google.com [209.85.219.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 949D13218BA
	for <devicetree@vger.kernel.org>; Mon, 18 Aug 2025 15:53:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755532395; cv=none; b=MxPbEkQBXpJN/8k45fm0rW6Cy4ArdWFHeB73TjEbrMayfL8vLXE9E9RAqBlgngybqUB0c72FCINBl3d6yH7sb3gn3vk30Q4nc5/3hTotMsmuX2nmAZKP6OTPtBtukjHDZuGi/OzA7ZXT/Si5sxXoSsMK7V9NR3kIwfV2P4Us0Ak=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755532395; c=relaxed/simple;
	bh=EI7ph71E7vzBhJM3BGJQWwVv5bNRggTZ4F6M7dXxS+k=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=sXJoPL1jOt7ZDsmKurgm7bzW1uaPwbO6EgvmElfHxpZqTGapNXKSbS4sP/0Y9okHDVGmd9YWVqhrIFjFG+4Y4lHWxPMHUzpJNuNKp2t//njypKhI9H035WPFnng04LMCCEk1FtSZF9Eg+QN5mts19HNLybr1TNnR7oc3J2xbbIE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ziepe.ca; spf=pass smtp.mailfrom=ziepe.ca; dkim=pass (2048-bit key) header.d=ziepe.ca header.i=@ziepe.ca header.b=Lgj7Y3XJ; arc=none smtp.client-ip=209.85.219.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ziepe.ca
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ziepe.ca
Received: by mail-qv1-f54.google.com with SMTP id 6a1803df08f44-70a88daec47so22810396d6.0
        for <devicetree@vger.kernel.org>; Mon, 18 Aug 2025 08:53:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google; t=1755532392; x=1756137192; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Vj+qz5uWtdxe1t/4yn/fG3Kx2sOHLsT2H8fxH0m0kcM=;
        b=Lgj7Y3XJckp+AU0tBLyhndUmRdzALwbbliHclZG6YCYCUlYNrIMOzgczZs/4aW+QBD
         JVBVvwXmLSSWJ5jTMN8296/m0lpsZdjILYfw+6Sbo3jcI/nVeHVMYYi37kCOzmSQGRes
         3LJjFyF0WOZMnhb0SULQ8QyPNs+sgQt1DYWLPBb3A2Qa57K9TiCR4WJCy9zZSAsEd3Jr
         t9yr0W9xwRpo6YZkaTt3vDxPg2VtEJdvrcq/G0NYl1uZpYoAVIXlHSHt7CqA6bK/Mnea
         95h457c2z2F4YOZwFXp3BdIoXyIkj1fJmLXqGkruFi7Lk8mksGsAifyhE0OIJOK5hl7F
         FTig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755532392; x=1756137192;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Vj+qz5uWtdxe1t/4yn/fG3Kx2sOHLsT2H8fxH0m0kcM=;
        b=eHNmUxQqPxpGTNZwQV6pejR7Xt8o6083xkPVz0nSYrGe25cnYq1ZbsCjeNQM+bbFOZ
         ik2M3ezmjDR0c0F6JCyAnfF9o18vE9/2PSUjomssn42iyEl5j3609nSsgWuOtvrPJ46y
         K3G5aazpTkejRLwkN2HxEuJ51QONr/5jWa62EuzPS1X6K1QCs7TFd6zyhEDI0lVegQJf
         dOZqLIWLBb+7SLfHr4XvCy0bXZ0vqgy9YoOwWl0erY2D0k18PrYdg4DIEuZCaxQEgIN2
         H/2XQM0pnjckugMijrgsnVO/PY9Hp9PX0YARIiMVy0HEduUfQO31jpdzddYc4tNK+xoe
         s8Mg==
X-Forwarded-Encrypted: i=1; AJvYcCUL32icwpzKuqDA03MXCvHG8+Fmsid62wMf2Ve5IFBOGrYlEKPM2iGKC1cRriGkkQQDeEY+WYF0qj2n@vger.kernel.org
X-Gm-Message-State: AOJu0YxYZg+piJL9mjQ3Bc/YOrNDePfJ65XBs2l8XE3EC23zASL+jVvM
	gjtwJYNccFcVNRqNi7G+6NyaVKkYtT4sh2KFSSoZxGiYknnFAh12xjj+ymNDDic9yWQ=
X-Gm-Gg: ASbGnctwbPG4y9aqfQpjK4Nvu090pDl2/r2YQyHzCtKGrrULCVcLg65d0UnKPhAKfw4
	xxoNtREptJNMu5AnejxnN85dVTKQbmdRItIYPICpaqlgy0QkJV5TcERg/oRCnA3b9CT3L9w54FH
	OPm2JgI8ZzK0uMouhKKAz+TTlLTOmDzfiWeAJfVQJUpe/ppXtmNuQPPHX98dopcBVPf0xEVRshB
	CfPTOoaS/eNrE5GCgDsZ/EcYVDYleTtR8hOFA61WTGG4jfQXOnN9w49XzfoucwIznEnkL2TJQqC
	Y9PRhk7za4rKAqNyhigj/qqWVDNp8Y8kMySbLGRkxxq8PW1gUEo51MhhlbfvUoy7ZewatMOx
X-Google-Smtp-Source: AGHT+IHy5xjjBQNaLhq2Kl2pjcBSM8TtgEpdzaR3B4TcAc3XiKHcP9uaHgX//cMvSIYk535Uc7uNQQ==
X-Received: by 2002:a05:6214:20ad:b0:709:e519:fbfb with SMTP id 6a1803df08f44-70ba7b5df3cmr141480306d6.22.1755532392375;
        Mon, 18 Aug 2025 08:53:12 -0700 (PDT)
Received: from ziepe.ca ([130.41.10.202])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-70ba90bcf7esm54232646d6.31.2025.08.18.08.53.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 Aug 2025 08:53:11 -0700 (PDT)
Received: from jgg by wakko with local (Exim 4.97)
	(envelope-from <jgg@ziepe.ca>)
	id 1uo2AY-00000004OfV-46ks;
	Mon, 18 Aug 2025 12:53:10 -0300
Date: Mon, 18 Aug 2025 12:53:10 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Shyam Saini <shyamsaini@linux.microsoft.com>
Cc: iommu@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org, virtualization@lists.linux.dev,
	will@kernel.org, jacob.pan@linux.microsoft.com,
	eric.auger@redhat.com, code@tyhicks.com,
	eahariha@linux.microsoft.com, vijayb@linux.microsoft.com,
	bboscaccy@linux.microsoft.com, robh@kernel.org,
	saravanak@google.com, krzk+dt@kernel.org, conor+dt@kernel.org,
	lizhi.hou@amd.com, clement.leger@bootlin.com
Subject: Re: [PATCH v3 2/3] iommu/of: fix device tree configuration for PCI
 devices
Message-ID: <20250818155310.GG599331@ziepe.ca>
References: <20250806215539.1240561-1-shyamsaini@linux.microsoft.com>
 <20250806215539.1240561-3-shyamsaini@linux.microsoft.com>
 <20250808121515.GE377696@ziepe.ca>
 <20250814233018.GA31418@linuxonhyperv3.guj3yctzbm1etfxqx2vob5hsef.xx.internal.cloudapp.net>
 <20250815003958.GE599331@ziepe.ca>
 <20250815023236.GA30997@linuxonhyperv3.guj3yctzbm1etfxqx2vob5hsef.xx.internal.cloudapp.net>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250815023236.GA30997@linuxonhyperv3.guj3yctzbm1etfxqx2vob5hsef.xx.internal.cloudapp.net>

On Thu, Aug 14, 2025 at 07:32:36PM -0700, Shyam Saini wrote:
> On Thu, Aug 14, 2025 at 09:39:58PM -0300, Jason Gunthorpe wrote:
> > On Thu, Aug 14, 2025 at 04:30:18PM -0700, Shyam Saini wrote:
> > > or were you referring to [2]?
> > > 
> > > In that case, the PCI child node data needs to be parsed, which is
> > > currently handled individually by each host controller driver.
> > 
> > Yes, this looks like it may be what I was thinking of, the pci@1,0
> > specifes the BDF effectively
> 
> In that case, we'll need to parse the child DTS nodes properly
> within of_iommu_get_resv_regions(). I'll include this in v4.

Kinda surprised this isn't happening already? It would be good to
refer to the original specs and describe how whatetever you propose is
aligned there.

> > Presumably this is a fixed issue of the platform. You never did
> > explain how your system has such werdio behavior, or how something
> > like iommu=pt can function on it...
> Yes, this issue is platform-specific. On this platform, the default MSI IOVA
> range overlaps with an address region that is reserved for another purpose,
> Other than that we haven't observed any obvious issues for DMA operations

Usually DRAM is at the default MSI IOVA address, so if you run
iommu=pt then presumably your DRAM map has a nice hole in it.. But
maybe the memory map told the OS about that.

Jason

