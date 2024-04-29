Return-Path: <devicetree+bounces-63651-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CABF8B5C34
	for <lists+devicetree@lfdr.de>; Mon, 29 Apr 2024 17:01:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id EDAF0285F1A
	for <lists+devicetree@lfdr.de>; Mon, 29 Apr 2024 15:01:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E8C7D80058;
	Mon, 29 Apr 2024 15:01:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ziepe.ca header.i=@ziepe.ca header.b="aAZ4Ni5R"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f43.google.com (mail-ot1-f43.google.com [209.85.210.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46C1C7FBC8
	for <devicetree@vger.kernel.org>; Mon, 29 Apr 2024 15:00:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714402860; cv=none; b=JVDzazU1D9d22DlUyrGiYtnFAUMa08aYiscQ/ErAXPOjRvtdwzCBf9dqdXn0DjYxgpwdaBz/32BWIbr0VTFYZwhomuCGnkco4bTlv6O/KimxZR4lmZrXFRHPhnJYYcV3jyA1wcxpMhGkwSpydCE1ocpT+ntJmJgALX7gQzMTAMo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714402860; c=relaxed/simple;
	bh=ptyag3zULY46EE3cfrjM8Ikvapm7FareWHtUvzj3mxc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Nifb16TiuPks/ToJrhfcOQeklo6JWGJMiA11Kz2LeLv3l0N65XdndjqhC23F27qd8ww6trLkOKbw/z8wNA8MfyRzti+VFFPOGzJhS0xpiz2fC6oR3D11ZxZbzVmHzMjqTRgawUYyHtdHITVcC7H3OaS1kZiyQqEfEu2jfh8vzQE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ziepe.ca; spf=pass smtp.mailfrom=ziepe.ca; dkim=pass (2048-bit key) header.d=ziepe.ca header.i=@ziepe.ca header.b=aAZ4Ni5R; arc=none smtp.client-ip=209.85.210.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ziepe.ca
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ziepe.ca
Received: by mail-ot1-f43.google.com with SMTP id 46e09a7af769-6ee4dcc4567so322525a34.3
        for <devicetree@vger.kernel.org>; Mon, 29 Apr 2024 08:00:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google; t=1714402857; x=1715007657; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Zs9gDn4gEwMrdg5ATdgVAkw08vBW0VJzGDrdK3qnGyI=;
        b=aAZ4Ni5RU7GR/wPN8ZHh3zjSKkTeI5MzTtMpUBN1cmF+7RmslD7JS7lfoxiovHxgbb
         6Jo8HDKHipzL4OQCy4DdP6qo+8O/64Anr2WbYdJwKALBu7XtLXsZhGARjpsT5qQtS8Ln
         ihXT7Pv6oUX9+zIsep5ODDS3Ozt+YRwXODegYXb4k8wrpuX3bkamJKE7AWsbRk6KOhjN
         JLoVBtSrC2odtUGQU41xya9qqhl5/thkC884EIT0sRQ3VHqHbFEOYYuAogbfLTR2jS3Z
         yYC1bhMEOAF2e+R9rtquXDo1z8LxtQ1K4A9H0BOL5XOWQTd882VcAfw2Dv2+KLKPnMtj
         ZswA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714402857; x=1715007657;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Zs9gDn4gEwMrdg5ATdgVAkw08vBW0VJzGDrdK3qnGyI=;
        b=CXgmz71ugFvu6F1hfGJ1rhZALHnnVNp/ow8v9Sqicw3zplLv3jl36ai4uhVnRb1t8S
         mxSo98VNcPKS12cAFnEtXyl5K4NF7dypEgE9ssxOKvSU0t6wBLkQFXCOcEStEXUv6Vgx
         8PjJahG6+iee5qQlej9kIjTFQKxxc2LSvAYSo0RlLQzevkPUuysmR0lHsAZldK7MGxUe
         wcYgsB7sXY6ZBdm1vRmuaCC8I+lI4RsuXUg/v6RWrIHH4kMIBCkz5ZtmWAu/01aHiBQI
         x5uLv2U29HsmRiDIHUJrDszX1xIU/a1KGw9e51KM6zXgrB+xX7fAQ2uTVgnMjnWDg1Ox
         RTIw==
X-Forwarded-Encrypted: i=1; AJvYcCWi93Nq+QF7tldbp4Ly/t99tleRUfbldrn7FssPaYHwWDP+CLubQo3fsOk7kwMfxbWOVG+ADPog6LcNeWB+5gmT6qdNuicYhXk4jA==
X-Gm-Message-State: AOJu0YycZG27N/ftdwfQHckIykv1Vvb4xOLynwspjB92F+Skuf2MJYoJ
	6XBeWoGjlbsT1Bbp0RktAb9Dd907k/E1TF4GpRKnzaV/eUrbeTnt8A3XEdQdzdE=
X-Google-Smtp-Source: AGHT+IHmbKK9Qyx4FAjBmnBgz0h7jK0zmwVhyAhO2G/acRzTXIKNs7HZYL8cXLLvumgIQCohXl67Tw==
X-Received: by 2002:a9d:7a58:0:b0:6ee:4081:2e7 with SMTP id z24-20020a9d7a58000000b006ee408102e7mr2008732otm.0.1714402857407;
        Mon, 29 Apr 2024 08:00:57 -0700 (PDT)
Received: from ziepe.ca (hlfxns017vw-142-68-80-239.dhcp-dynamic.fibreop.ns.bellaliant.net. [142.68.80.239])
        by smtp.gmail.com with ESMTPSA id o15-20020a05620a0d4f00b0078ee090baa3sm10508476qkl.10.2024.04.29.08.00.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Apr 2024 08:00:56 -0700 (PDT)
Received: from jgg by wakko with local (Exim 4.95)
	(envelope-from <jgg@ziepe.ca>)
	id 1s1SUy-001XRE-DN;
	Mon, 29 Apr 2024 12:00:56 -0300
Date: Mon, 29 Apr 2024 12:00:56 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Jean-Philippe Brucker <jean-philippe@linaro.org>
Cc: will@kernel.org, lpieralisi@kernel.org, kw@linux.com, robh@kernel.org,
	bhelgaas@google.com, krzk+dt@kernel.org, conor+dt@kernel.org,
	liviu.dudau@arm.com, sudeep.holla@arm.com, joro@8bytes.org,
	robin.murphy@arm.com, nicolinc@nvidia.com, ketanp@nvidia.com,
	linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	iommu@lists.linux.dev, devicetree@vger.kernel.org
Subject: Re: [PATCH 2/3] iommu/of: Support ats-supported device-tree property
Message-ID: <20240429150056.GP231144@ziepe.ca>
References: <20240429113938.192706-2-jean-philippe@linaro.org>
 <20240429113938.192706-4-jean-philippe@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240429113938.192706-4-jean-philippe@linaro.org>

On Mon, Apr 29, 2024 at 12:39:38PM +0100, Jean-Philippe Brucker wrote:
> Device-tree declares whether a PCI root-complex supports ATS by setting
> the "ats-supported" property. Copy this flag into device fwspec to let
> IOMMU drivers quickly check if they can enable ATS for a device.
> 
> Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
> Tested-by: Ketan Patil <ketanp@nvidia.com>
> ---
>  drivers/iommu/of_iommu.c | 9 +++++++++
>  1 file changed, 9 insertions(+)

Reviewed-by: Jason Gunthorpe <jgg@nvidia.com>

Jason

