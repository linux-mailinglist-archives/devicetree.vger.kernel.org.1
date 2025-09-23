Return-Path: <devicetree+bounces-220495-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 857DFB96C9E
	for <lists+devicetree@lfdr.de>; Tue, 23 Sep 2025 18:19:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id AD0BD189FEFD
	for <lists+devicetree@lfdr.de>; Tue, 23 Sep 2025 16:19:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 258B731D733;
	Tue, 23 Sep 2025 16:19:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ziepe.ca header.i=@ziepe.ca header.b="pCrGDEmO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f173.google.com (mail-qk1-f173.google.com [209.85.222.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 81FC1313536
	for <devicetree@vger.kernel.org>; Tue, 23 Sep 2025 16:19:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758644357; cv=none; b=jX0Mr4C4dqIqtZt1XzLLMAidCytTeceNElIaH/zY8c8Oxtoqw6Oc/u6EvWJsWoq7z+Py3q9ZZe9afOPNNgVuhH9mhr9ewrwRIaLiPNEqVsuyBkc2XqSjG60kSBWYTJ1pLeHUP+AiGcRwLnGVzOLBrR66aYxlxPPVFFMFxDRppTw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758644357; c=relaxed/simple;
	bh=QkKOS+cKXEg7Fh/n2Mposi0sIPirZ5RMkl5yEj5Yt9M=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=WsYsKnikf5Wn/kOqLoU4ydmrilnNIBN1U+Y4Vka2287/jZsNtu7I0r1hjlmjuU2kVkX/KkdO2wUO7S18pm0jq0dyTNy+XRsR8K8xFCCI1iu6iC64t3uIojOAOiBfrsjL4detBqc5nmhxCCHeXYjhwF2hv24CRnnvUVKW379Uovo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ziepe.ca; spf=pass smtp.mailfrom=ziepe.ca; dkim=pass (2048-bit key) header.d=ziepe.ca header.i=@ziepe.ca header.b=pCrGDEmO; arc=none smtp.client-ip=209.85.222.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ziepe.ca
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ziepe.ca
Received: by mail-qk1-f173.google.com with SMTP id af79cd13be357-84b690f94bdso214410485a.2
        for <devicetree@vger.kernel.org>; Tue, 23 Sep 2025 09:19:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google; t=1758644354; x=1759249154; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=xKb7tsSmZ0H6Wdl04tAiaIQVZQbhBUd7k5adJ7pyr5g=;
        b=pCrGDEmOZjr74w3QG1VjiFDlTmU1rtQjcqd/MkFNU3fDsHWrKsYeQ/TvMwyOCV+nJS
         hcQcbYqOQ2JqZsd/R3TJR4SApdJygsK6Te7vci9SHOxfevbf9IRs1/+/JHm/zvFsUMW/
         fmvO6AI5He7qgkXtzf3d+IcSVdWsKyuCD9AqA6+WEQSksnm5yGvSN/qPH6Ax5uqbEjxw
         rA+eE0PIsvWPVN4VlJMXDjndCdgVmE1PKDptlOUFshoRUyXB6sJI07E7//XxVKwZEJZd
         PeTVrg0ttS2LHR6pjJyrRHlOkU7zwGeSZHUOZrDtASTzbbbc0DwcIYgqS2GRcjRZP8A/
         WZCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758644354; x=1759249154;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xKb7tsSmZ0H6Wdl04tAiaIQVZQbhBUd7k5adJ7pyr5g=;
        b=FIoaxIWCJ5TXlB4QgbuMVNmoxHLFdjYfL99MPhelIgI6sjmD9sxEYImMpHZDvviY4W
         klxcw0Hji9+nfBw14n4k3AgCFKFDMlzGrWc97UcKo7C3V1Lq/qQRorfuDDX6oFqzb4k+
         q1Jgu5g/lhaLlgtKz8qz3U/HjFIwqvIWX8TUJuPAZilyLohcdNTH88bqtNkSqPxE+GO+
         cmk9qRkW3BUfelweN09mZU42Bp6iURdtiY11MVSk7bKhEro2Yhgk86NqKMFnB/6XgCXL
         0N9FKbNxD1GyA9TodqF+2y6RwJM8nu4vZQxzRZO51DPJDXks5BgUQrueeZtqiljCxGcF
         t0ug==
X-Forwarded-Encrypted: i=1; AJvYcCV6en0VEJUNXnX/+0wzEKXC2LO8I+QyzyJqLv/9U/GzN40qOxL1OOGya9Z38dWWgZjqok1yAPLLJa46@vger.kernel.org
X-Gm-Message-State: AOJu0YydMuNJxuuFyOzIZ9XhAR5ZSqAQBC5POzHxND69LjMh4S/GsP4n
	bDx5TMjj7Q3ttA2bDdQEVoOpEnm/ZstSTscsZ2mf2gDmyA7PV8LPXUZXffsTe3/29Zg=
X-Gm-Gg: ASbGncvoYWxLZ37UrEASKTCqMZPTUsZM0Nbvr2XXBy9NdnCFiwBQ+9O7VvfMM4MpofC
	PQZKGEsWXKZ58Vpp1wZtYI8GGCNAnHJVT7zWQwemubP3WiA3UBAHnS0I2GO/LM6Djs49GpDIyfS
	ahGMfHBh/gVhDlhNB36Dk3JTm6NfozVzmvl3qp7h0vALh79IJJrRcaTzP1S3YCd7xgws4iLfDCR
	AX1qqJlJUeH0fK0KG1iHXn4th3CiXIW/6GV3JIjRH/t8DfGZ/r2sNN/Hxu9CiJX6Vkx8kP61cu7
	+ZmGpbLF9zjXAybMLXX2jZwgYlyFWJJMZmD+MJTfnU9jjvPTNizv6yR2infTO1MLiWae1CDd
X-Google-Smtp-Source: AGHT+IFknn95PHhsPs7zw84kBzlaAQkMLHRCQnMY3jCMzKXPkKXu2wtZSYWkgGZ0B6Tp/B1GZcGGDg==
X-Received: by 2002:a05:620a:1a20:b0:827:e9b0:2752 with SMTP id af79cd13be357-851777634a2mr367039185a.80.1758644353963;
        Tue, 23 Sep 2025 09:19:13 -0700 (PDT)
Received: from ziepe.ca ([130.41.10.202])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-852847b70f4sm117567585a.15.2025.09.23.09.19.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Sep 2025 09:19:13 -0700 (PDT)
Received: from jgg by wakko with local (Exim 4.97)
	(envelope-from <jgg@ziepe.ca>)
	id 1v15jU-0000000Axa9-0WlS;
	Tue, 23 Sep 2025 13:19:12 -0300
Date: Tue, 23 Sep 2025 13:19:12 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Shyam Saini <shyamsaini@linux.microsoft.com>
Cc: Will Deacon <will@kernel.org>, thierry.reding@gmail.com,
	robin.murphy@arm.com, robh@kernel.org, joro@8bytes.org,
	iommu@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org, virtualization@lists.linux.dev,
	jacob.pan@linux.microsoft.com, eric.auger@redhat.com,
	code@tyhicks.com, eahariha@linux.microsoft.com,
	vijayb@linux.microsoft.com, bboscaccy@linux.microsoft.com,
	saravanak@google.com, krzk+dt@kernel.org, conor+dt@kernel.org,
	lizhi.hou@amd.com, clement.leger@bootlin.com
Subject: Re: [PATCH v4 3/4] arm-smmu: select suitable MSI IOVA
Message-ID: <20250923161912.GB2547959@ziepe.ca>
References: <20250909154600.910110-1-shyamsaini@linux.microsoft.com>
 <20250909154600.910110-4-shyamsaini@linux.microsoft.com>
 <aMw4I0AjKNPY6SOw@willie-the-truck>
 <20250918224322.GR1326709@ziepe.ca>
 <aM0HQ51DelZW_Rt8@willie-the-truck>
 <20250919120839.GV1326709@ziepe.ca>
 <20250923155647.GA22010@linuxonhyperv3.guj3yctzbm1etfxqx2vob5hsef.xx.internal.cloudapp.net>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250923155647.GA22010@linuxonhyperv3.guj3yctzbm1etfxqx2vob5hsef.xx.internal.cloudapp.net>

On Tue, Sep 23, 2025 at 08:56:47AM -0700, Shyam Saini wrote:
> Hi Jason, Will,
> 
> On 19 Sep 2025 09:08, Jason Gunthorpe wrote:
> > On Fri, Sep 19, 2025 at 08:33:23AM +0100, Will Deacon wrote:
> > > pieces and will need to work on the userspace side. It's not like
> > > MSI_IOVA2 is magically going to work (and I bet it won't be tested).
> > 
> > It could, if someone checks the default memory map a second constant
> > could be selected that works.
> > 
> > > > Nicolin has some patches on the iommufd side to let userspace select
> > > > the MSI address instead, but they are not done yet.
> > > 
> > > Maybe we should just wait for that? Carrying a temporary hack with ABI
> > > implications to support broken hardware isn't particularly compelling
> > > to me.
> > 
> > This patch would still be needed for kernel users.
> > 
> > Arguably the kernel users should just be using the iova allocator from
> > dma-iommu.c. This whole hard coded constant/sneaky uapi is just a hack
> > to make vfio work..
> > 
> > So maybe if the single constant doesn't work we could set some
> > indication that the caller must allocate the MSI iova, the kernel can
> > use the dma-iommu allocator and VFIO can just refuse to use the device
> > for now.
> 
> So, are we settling on having two predefined MSI IOVA base constants,
> and if both of those conflict with reserved regions on a given platform,
> falling back to dynamic allocation via the IOVA allocator? Just checking
> if that's the consensus we're reaching.

I think Will is arguing against introducing a new constant..

Yesterday I was looking at the SW_MSI code again.. What specific
problem is it you have?

It looks to me like dma-iommu.c is already allocating MSI addresses
using its built in IOVA allocator. So if your DT is marking that space
reserved then it should Just Work right now as dma-iommu.c already
processes the reserved ranges and will allocate MSI addresses around
them?

The base value of the SW_MSI is only used by VFIO - are you trying to
use VFIO with this device, or have I misunderstood the dma-iommu.c
logic?

If it is only VFIO at issue then perhaps we should solve this by
completing the work Nicolin started to allow VFIO userspace to specify
the MSI Aperture?

Jason

