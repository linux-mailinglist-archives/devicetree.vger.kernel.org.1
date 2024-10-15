Return-Path: <devicetree+bounces-111511-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CF98999F139
	for <lists+devicetree@lfdr.de>; Tue, 15 Oct 2024 17:31:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 59B96B21C60
	for <lists+devicetree@lfdr.de>; Tue, 15 Oct 2024 15:31:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2E6A21D8A12;
	Tue, 15 Oct 2024 15:31:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ziepe.ca header.i=@ziepe.ca header.b="jWQYRdPl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f174.google.com (mail-qk1-f174.google.com [209.85.222.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E7501C4A24
	for <devicetree@vger.kernel.org>; Tue, 15 Oct 2024 15:31:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729006274; cv=none; b=e+Ow0lMdhnLKtvkJR5WlM1J4xfBFR8nE6EpUocqSZ4CRfkNzKUg18efBoq8KS5QvoiS+cHbNYBxfQekK6OUhwA7P8DfvNjhVUfBFvMp69CPhNsUBTrem4t6b6q6mAXF5ne6w/J0D+uRPKSIWn/q1VIXuVlpOFvIcMqLSOOFbnGQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729006274; c=relaxed/simple;
	bh=V85TGvEVC+FtHONfjTskrRdVP4b9YXQixG7tpBktoH4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=BC7jgAq2TJjg7qwMFwIQYJpt0h90cS2TDzdd5DN9orOPSlvPVRxgo2gVnQAB++pAvQ+oBwfNH08KBWsA+AoUIvDNn3pYayih8+gGwxv3m76JQk74jK10N1KsGDu3yxBwAGPJPx6SYJ5thO5M6JKmCtxEKfDprjyWIk2LVVXCYRE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ziepe.ca; spf=pass smtp.mailfrom=ziepe.ca; dkim=pass (2048-bit key) header.d=ziepe.ca header.i=@ziepe.ca header.b=jWQYRdPl; arc=none smtp.client-ip=209.85.222.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ziepe.ca
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ziepe.ca
Received: by mail-qk1-f174.google.com with SMTP id af79cd13be357-7b10f2c24f0so619258285a.2
        for <devicetree@vger.kernel.org>; Tue, 15 Oct 2024 08:31:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google; t=1729006271; x=1729611071; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=slL8cxpXW1IGCJQjRxbQDziozSi1qIFH5vLZ04P2rWM=;
        b=jWQYRdPlZ7zNkaKrq27BL5wG1ChG7aZdizianTrXs4LgbemgIb+7XlKqG9/vBdXDGL
         Aj8LwIJ3NdI1+Du7ACfbhNFH3pBNBJIsbZORoOBAF3eaXRTh9pN+4hBZ8MPsOJAUu67e
         h+yJM8ZhtEQQpwrmOptb0e2PKG98B0rajOS+ySut17f+P4wV1t1XCISjp2ZZq7DNkHre
         SsIk/M9xW0rlpzf681zcZyRvnMkVXdesYLZo1P2+0Nnk27TMFt5a44CHanLYQIF6EsyJ
         pP0NAxlnMSBdQhKm8pFo8jJOD3oRWYgwOAajSdpX78T9w9xJEpxUFCll9wFzFjidwQGe
         w9rA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729006271; x=1729611071;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=slL8cxpXW1IGCJQjRxbQDziozSi1qIFH5vLZ04P2rWM=;
        b=IksGrUjMaCh0Nd/D/q1Kb+XfFGY4wH9OgpOcFfPwZs0nyYb0i6Bgf54J3k9f8tXaUm
         zVPeSmSNJg3fUWN3mZtRn59V0nHirpTOchki53WW6B060JRhRwBCgVgMUKARpe2A87AX
         jiIJ9MtuLofsW2yl5T9GvA249mPsY5opR0dhuwlI4wUaw/uskz0l/ZVbFHK+vXd+0Z05
         rvOei882U7+/SmqcJi6j3OebwzkH6M+Xj0gGv220gyHGAN7kcZ4tGOjMpB+j6hEouniF
         h2Nr5m7+nq+PnG8Ff7AaFgf1sFfi0PNgTxqdp2B+0USWbeQPjCK+cH8/DOafmljb/IwF
         5yDw==
X-Forwarded-Encrypted: i=1; AJvYcCUH4efRNYauAkqCF9vFfT2NyT+bA4wZXHvI7TJocgFjnNQapNxf36ZEa06F+86qL1b+eP47UU+pRm0C@vger.kernel.org
X-Gm-Message-State: AOJu0YyHdw6c3BvEeBTCrYaXJ+IPRtc13qZtCfo0VIbVV59Bk4wPmuJO
	US+ZT+7rIl53O5mBGGp3oKBV2jIV/TpMYapOFN3zPxvpLwWF83mnjbGZDJ+Iy5A=
X-Google-Smtp-Source: AGHT+IG16JaAevZ5Im3ptzAIoVttBffmFnOmdL7EWY1zQQkpST2IawyAAtu4U5wULGGOSjITPeN6Gg==
X-Received: by 2002:a05:620a:28cc:b0:7b1:11f4:d0af with SMTP id af79cd13be357-7b120fc3e21mr1742610385a.29.1729006271574;
        Tue, 15 Oct 2024 08:31:11 -0700 (PDT)
Received: from ziepe.ca (hlfxns017vw-142-68-128-5.dhcp-dynamic.fibreop.ns.bellaliant.net. [142.68.128.5])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-7b1363b5484sm81218685a.119.2024.10.15.08.31.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Oct 2024 08:31:11 -0700 (PDT)
Received: from jgg by wakko with local (Exim 4.95)
	(envelope-from <jgg@ziepe.ca>)
	id 1t0jVu-00DjTK-Ka;
	Tue, 15 Oct 2024 12:31:10 -0300
Date: Tue, 15 Oct 2024 12:31:10 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Robin Murphy <robin.murphy@arm.com>
Cc: Pranjal Shrivastava <praan@google.com>,
	"Peng Fan (OSS)" <peng.fan@oss.nxp.com>,
	Will Deacon <will@kernel.org>, Joerg Roedel <joro@8bytes.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Joy Zou <joy.zou@nxp.com>,
	linux-arm-kernel@lists.infradead.org, iommu@lists.linux.dev,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	Peng Fan <peng.fan@nxp.com>
Subject: Re: [PATCH RFC 2/2] iommu/arm-smmu-v3: Bypass SID0 for NXP i.MX95
Message-ID: <20241015153110.GM1825128@ziepe.ca>
References: <20241015-smmuv3-v1-0-e4b9ed1b5501@nxp.com>
 <20241015-smmuv3-v1-2-e4b9ed1b5501@nxp.com>
 <Zw4kKDFOcXEC78mb@google.com>
 <20241015124723.GI1825128@ziepe.ca>
 <ab21d602-5349-47be-b346-2fbc041fa13e@arm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ab21d602-5349-47be-b346-2fbc041fa13e@arm.com>

On Tue, Oct 15, 2024 at 04:13:13PM +0100, Robin Murphy wrote:
> On 2024-10-15 1:47 pm, Jason Gunthorpe wrote:
> > On Tue, Oct 15, 2024 at 08:13:28AM +0000, Pranjal Shrivastava wrote:
> > 
> > > Umm.. this was specific for rmr not a generic thing. I'd suggest to
> > > avoid meddling with the STEs directly for acheiving bypass. Playing
> > > with the iommu domain type could be neater. Perhaps, modify the
> > > ops->def_domain_type to return an appropriate domain?
> > 
> > Yeah, that is the expected way, to force the def_domain_type to
> > IDENTITY and refuse to attach a PAGING/BLOCKED domain.
> 
> There is no domain, this is bypassing an arbitrary StreamID not associated
> with any device.

If the stream ID is going to flow traffic shouldn't it have a DT node
for it? Something must be driving the DMA on this SID, and the kernel
does need to know what that is in some way, even for basic security
things like making sure VFIO doesn't get a hold of it :\

Jason

