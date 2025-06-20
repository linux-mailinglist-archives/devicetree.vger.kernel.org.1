Return-Path: <devicetree+bounces-187978-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id F2C5FAE2027
	for <lists+devicetree@lfdr.de>; Fri, 20 Jun 2025 18:35:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B04D71C21D4B
	for <lists+devicetree@lfdr.de>; Fri, 20 Jun 2025 16:35:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5C3F92E763C;
	Fri, 20 Jun 2025 16:35:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ziepe.ca header.i=@ziepe.ca header.b="AFtBDGY4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f179.google.com (mail-qt1-f179.google.com [209.85.160.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A734D2E719A
	for <devicetree@vger.kernel.org>; Fri, 20 Jun 2025 16:35:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750437314; cv=none; b=l73F3qXKVg6APOSYw6lxAJlR6yU6qKcHMrgZCswxWQTekN/a5PLhN7Extrk9pNYZtQsP8uRdgSwKiXfLc7PnC3zZuDWOMkCxzzVnAgCF0+mTZhRbhzz6OHiZsR9zO++1PS4WyhE17I7W6FKdeVIh9fVxGuzDLte2saQstbR+Yvw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750437314; c=relaxed/simple;
	bh=NfmPX0yVFBBCDiBkKX9NhyYVI/32o1GQomiZQ8lwj04=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Fqqew/IFfUbiaL/DUc472BF3F6tel7oWxaWj6YjMCXrvSJAMg1AzCu9lZ92AzTtcElwrl8ph/4/ckUWR1QiVvEIT5W/lk4JbameEEOhnjQwrFQr4spscGLS6GUv13cxwlpv4tU5oePIPgmOcBd9XrrkqIgaXeS8p2QEU5dz8JlA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ziepe.ca; spf=pass smtp.mailfrom=ziepe.ca; dkim=pass (2048-bit key) header.d=ziepe.ca header.i=@ziepe.ca header.b=AFtBDGY4; arc=none smtp.client-ip=209.85.160.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ziepe.ca
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ziepe.ca
Received: by mail-qt1-f179.google.com with SMTP id d75a77b69052e-4a6f0bcdf45so23837471cf.0
        for <devicetree@vger.kernel.org>; Fri, 20 Jun 2025 09:35:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google; t=1750437311; x=1751042111; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=hFurqnYI+L7RUrkwAcAgkoscsXJUHEF+OS7OBiZvdjs=;
        b=AFtBDGY4u//+OcRGgsNP2nNIl3GkBu06cDTBoTr3GbiDOsqI32jTwaU1J+XH9lwAvY
         hWaQh/mJv0874X3toBckXmF6Ik6GcU2KxrGTumygmVBWqGFj7NHeafpVOTHWKmdlRENh
         n2+pcbtl98j62d7pnsl+OI9JndziiQK4dy2pJgt23PDx0YcfufkGQmzooiCFr6RuglOl
         cF+pVDRa0xj+bG76O1evGjZt4D5wi4KYclCUHuuHbnnbokf+t1EfIwY+zSTJ3ujMBOnE
         /eW1Hkn/8Ihp8Rbn6mmN6W2AIg87vLWzMAVELW3JLKTO9ff8QvQpR1R8xFzqh/+0TWJd
         1mKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750437311; x=1751042111;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=hFurqnYI+L7RUrkwAcAgkoscsXJUHEF+OS7OBiZvdjs=;
        b=bFzCck+Th9BWLxby3ogqQtij3sSJymu4PGiBQnp7zofF71O5h9ubeoxbePUjBuTpdP
         YhSDAwrS+MeyuSMk6s7tbyBQra556lkKZSGOLV0wYnJAQnITwWd9b1BPbE39VJ7R+yzN
         JDykPe1dx8XEH+z2Xlz/ncvtG9Lk7IrCiT0/Fu/fxIZ5VgmkbgaBRBUfRhcJMWGnbScg
         ag3fTHLq7KHiRhA4i4z5I552uOBSukEsthJ1AC4RoRPb066Vqg4XO73tR2jYilVjFR9t
         x6u4GJyA7uR5S2JqHKBLueOGFVNSDYQrVXD5qPsygsZQ9LzQFfaNn3ooB7AjY2/A636U
         z55Q==
X-Forwarded-Encrypted: i=1; AJvYcCUwOwZrxRmwKWyIVo8Rhj7O2MGfWUt+S0ok/UF1mfeNAj03nzCQGX19SCTJjDyWBul7E6GubJBPWSvz@vger.kernel.org
X-Gm-Message-State: AOJu0YwCoCdWR2XYslHh2RO8g49rVOvn/9vjeUXpBh2ClwVNECCwNUfH
	HxK2kb/PA2kYIzLUw8QfxHBLBL5JzlMbPS48pOJ3yc/i9VBJsqRTDCjca2HRxZ3DAnc=
X-Gm-Gg: ASbGnctJNjJ+oPScb5xyIXWQcsGgCndg31u6u+4bKFAW9a9qxKskcjaB5E9Fv0VI0WK
	F16TnnDw4owxRi0Jo4no4VKm7QTHhn5ZXnP0RQFYvdylGPJOAVRX5tcXuxrLa4iSvjfyhJ60CIM
	jfN1TVG3mg6e3Ciqh8cRsozFL6VDiYRejQ+C8J+9Qpl4x1/cHGcK80d4MuaBO2+r0qZtlrvGr76
	Wz2URNEzv2MOqfIAX55r+Xjg/8tnkihGi30mFstiH18qm6TQpzmvLgZiK4nYUtfvlJTejVGbD/1
	412QkJfZBxTvbvJcd7/Otj2oS+x5GLtfcOt8zJ4xpRGY5+zkxcd6ETkuKD5aziZlHm+HHVygLhx
	ZAjq91aVU00jGIwjOvOkk1Oma9b5vhjF6ibCUKA==
X-Google-Smtp-Source: AGHT+IFA6k631lKxrYTYm+6L/JASXk2MoP+urHg89b8SmimDGgONLFl8B84S2EQnZ661ul3HBMs1NQ==
X-Received: by 2002:a05:622a:1307:b0:4a7:2357:dc81 with SMTP id d75a77b69052e-4a77a23abbfmr54566761cf.3.1750437311156;
        Fri, 20 Jun 2025 09:35:11 -0700 (PDT)
Received: from ziepe.ca (hlfxns017vw-142-167-56-70.dhcp-dynamic.fibreop.ns.bellaliant.net. [142.167.56.70])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-4a779d9dbfesm10698501cf.36.2025.06.20.09.35.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Jun 2025 09:35:10 -0700 (PDT)
Received: from jgg by wakko with local (Exim 4.97)
	(envelope-from <jgg@ziepe.ca>)
	id 1uSehp-00000000Es0-48hW;
	Fri, 20 Jun 2025 13:35:09 -0300
Date: Fri, 20 Jun 2025 13:35:09 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Cc: joro@8bytes.org, will@kernel.org, robin.murphy@arm.com, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, heiko@sntech.de,
	nicolas.dufresne@collabora.com, iommu@lists.linux.dev,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, kernel@collabora.com
Subject: Re: [PATCH v3 3/5] iommu: Add verisilicon IOMMU driver
Message-ID: <20250620163509.GB39770@ziepe.ca>
References: <20250619131232.69208-1-benjamin.gaignard@collabora.com>
 <20250619131232.69208-4-benjamin.gaignard@collabora.com>
 <20250619134752.GB1643390@ziepe.ca>
 <073ffe14-d631-4a4f-8668-ddeb7d611448@collabora.com>
 <20250619165928.GA10257@ziepe.ca>
 <e034a111-93eb-42e8-a533-46553b4f5588@collabora.com>
 <20250620120509.GA39770@ziepe.ca>
 <d9a1b9ab-b6ab-4364-a1b7-df4debc21bc1@collabora.com>
 <3337df6c-f800-4610-8689-fbd4b4a5d07a@collabora.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <3337df6c-f800-4610-8689-fbd4b4a5d07a@collabora.com>

On Fri, Jun 20, 2025 at 04:42:02PM +0200, Benjamin Gaignard wrote:
> 
> Le 20/06/2025 à 15:52, Benjamin Gaignard a écrit :
> > 
> > Le 20/06/2025 à 14:05, Jason Gunthorpe a écrit :
> > > On Fri, Jun 20, 2025 at 10:57:49AM +0200, Benjamin Gaignard wrote:
> > > > Le 19/06/2025 à 18:59, Jason Gunthorpe a écrit :
> > > > > On Thu, Jun 19, 2025 at 06:27:52PM +0200, Benjamin Gaignard wrote:
> > > > > > Le 19/06/2025 à 15:47, Jason Gunthorpe a écrit :
> > > > > > > Ugh. This ignores the gfp flags that are passed into map because you
> > > > > > > have to force atomic due to the spinlock that shouldn't be there :(
> > > > > > > This means it does not set GFP_KERNEL_ACCOUNT when
> > > > > > > required. It would
> > > > > > > be better to continue to use the passed in GFP flags
> > > > > > > but override them
> > > > > > > to atomic mode.
> > > > > > I will add a gfp_t parameter and use it like that:
> > > > > > page_table = iommu_alloc_pages_sz(gfp | GFP_ATOMIC |
> > > > > > GFP_DMA32, SPAGE_SIZE);
> > > > > This will or together GFP_ATOMIC and GFP_KERNEL, I don't think that
> > > > > works..
> > > > I have test it, I don't see conflicts or errors. What worries you ?
> > > Just looking at the bitmaps I'm not sure? Did you run with lockdep?
> > 
> > Yes and it complains about that.
> > I see that sun50i driver have more less the same struct than my driver
> > but doesn't use lock. I will try see if I can remove the lock.
> 
> I have replace the two spinlock by a mutex in vsi_iommu structure.
> It seems it works well and lockdep doesn't complain anymore.

You cannot use a sleeping lock within the map/unmap
functions. Removing the lock is hard for your case because you have
the cache flushing problem.

Maybe mask GFP_KERNEL off and then or back in GFP_ATOMIC.

Jason

