Return-Path: <devicetree+bounces-139793-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 49A96A16E70
	for <lists+devicetree@lfdr.de>; Mon, 20 Jan 2025 15:26:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7AB07169D82
	for <lists+devicetree@lfdr.de>; Mon, 20 Jan 2025 14:26:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0BC841E32BE;
	Mon, 20 Jan 2025 14:26:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ziepe.ca header.i=@ziepe.ca header.b="OnRuNjib"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f178.google.com (mail-qk1-f178.google.com [209.85.222.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B63C1E0E0A
	for <devicetree@vger.kernel.org>; Mon, 20 Jan 2025 14:26:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737383207; cv=none; b=ai35QcbGEn/kJBXLUgdnT7itQFkSxjxeSKaQCgucaMyt/p/EAIDoU5fYgIXeiJglzuqEVwLkYrty3pUcK2PU9Sl5ziOa8yyxgp44jeU6a9t9Lmg3Kq/wNHhs58l+IKBNSqKSQnZedwxPYSUd2xHJ9NNdXpDhZK6j0WxRCTRbE4U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737383207; c=relaxed/simple;
	bh=tv0Xp3xiPoEPgBSdoRMHuXoCTFjFb60HbGfkmSrhd+I=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=uyZYc0asOnlnmL7v/mLf4wYnfJMQ4+5oQ6oOHGja8Uued8PAAG/qCeVhq/44awzBUncDaU2VRsIlq0tWU/pYGPVxNxIwvH7MM/sHO5a+HDd5pOCThzqJoQTHbmxthtkEBc3GO1xwJ425BJMBhzIdBSVCiJB232ZBd1m1DPaSN5I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ziepe.ca; spf=pass smtp.mailfrom=ziepe.ca; dkim=pass (2048-bit key) header.d=ziepe.ca header.i=@ziepe.ca header.b=OnRuNjib; arc=none smtp.client-ip=209.85.222.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ziepe.ca
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ziepe.ca
Received: by mail-qk1-f178.google.com with SMTP id af79cd13be357-7b6e8fe401eso425271085a.2
        for <devicetree@vger.kernel.org>; Mon, 20 Jan 2025 06:26:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google; t=1737383205; x=1737988005; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=vr2EIyCsdB5gdGa7/0WwIe6wMDGX9eJ5N6s6izoCruk=;
        b=OnRuNjibRLWFImw9JWFMVOTDGsLEZpbpgXgw2S6J/2z8k11WIj/77nrxB6WO8YXHwJ
         J8+fIBN713b2Bk8EeoMzCDFqk+l1DD/uIlppwF7bTN9hhEMjiEAy6mZYg/9qbM4EcO11
         wV1/0pMhZLvqa+xOEC95SfMpCeB8RUd8GakuF6AH+IU8fjzyu3Gmj4QoBm1cDD3/wBoz
         GI8P1pUKIFFw7HTcviP9jO5O8sepnQ3kbXNfqHGVqwrZafeEqJxCzSloOyirecmv56V3
         tQIF9U+o4oyavEZ08FFlVLEIsk2KK3kwQK54EX/THHZwhZnznxfM8hUPU85OCn+X+tJ0
         rNag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737383205; x=1737988005;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vr2EIyCsdB5gdGa7/0WwIe6wMDGX9eJ5N6s6izoCruk=;
        b=XPQfZKMBr0qnoYPWS66nsOgblezLztQYVXgjjz5DaAs7vSQWFbg2I5RzaOF54pP1GU
         r1BhDXTBPgZ5R+Wf2kX8y6KTkRxs5KNW85wxFdrROgMo+2BuKuxaxXS2V7QoSFB7k959
         ec0vahfLVjvIYC/5RO69X/wcenRkhtJriswb8Fue2L1yPAO8U2j7wUXAXZh3YhKUyt5F
         bi+2KvO2dSuJ+TNPVh+BUxEhai4jJIWqDzhH5ABy8WmRtCOzdV3liBLdfJO93oXAVH7l
         RDGmdDyHsn7QiE4fTKRPZHGnW6I20FIMpuALlRBJ6dRsQI8H+cBSN8ccr8spMqWtR4qR
         c3lQ==
X-Forwarded-Encrypted: i=1; AJvYcCXa+InJ3Hi7pOgd6vjizZI8SwOXvVZ5TDOM/fnLv/ZKKj9TDBO61VvPy371faEulQXfPUzP9Wjan++4@vger.kernel.org
X-Gm-Message-State: AOJu0YwVK9MSFXrZu94sWjK3UX/XqcW7MF/5g9BSp1y6sH0EmzFsHCQ3
	CjyzPn3RZz+et2hrlFf07fdvYkXMmp6qA9OPDANNjb/5lj0+37EQpKSgz4OPn+g=
X-Gm-Gg: ASbGncvS5xbg0E6xGPGfLH20rotVY/uja0qYenUtl3dqeRb5ebBr2tj9cCqqflba71c
	MJY3llPx++4RQSL72x61MP4KebvpnRy1o2Jx59yXSI9u8xe+889cOSeiWv9Zdrr4332V9vbCxHb
	Pj6tO9o90vn6bTMnYhj9hZmicU86SllZFToNGHwEC5VUOqtuaSEW288nCVDWelCDg3yv+WRuh5l
	YZcOUrVSZ4vctNESIikI4oUl4zlLzOGr/JnGQUzBojXc3ukO25u/kEmWcMsoBH5ngftWs2qhfJt
	WJzWwELuDZWt7IqNveyJuCcACkqfw4NCvhqWQcv9g94=
X-Google-Smtp-Source: AGHT+IGtvIsUesTGjb37GoPOTTbLeWODGXjdLhV2Jx7A+73Ah5xBJFQ5DKfLkBk9bBAu2jSA4Q8O9Q==
X-Received: by 2002:a05:620a:4513:b0:7b6:c462:6b82 with SMTP id af79cd13be357-7be63288222mr2782957385a.54.1737383205075;
        Mon, 20 Jan 2025 06:26:45 -0800 (PST)
Received: from ziepe.ca (hlfxns017vw-142-68-128-5.dhcp-dynamic.fibreop.ns.bellaliant.net. [142.68.128.5])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-7be6148931bsm446023485a.65.2025.01.20.06.26.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Jan 2025 06:26:44 -0800 (PST)
Received: from jgg by wakko with local (Exim 4.97)
	(envelope-from <jgg@ziepe.ca>)
	id 1tZsjj-00000003PkA-2hgf;
	Mon, 20 Jan 2025 10:26:43 -0400
Date: Mon, 20 Jan 2025 10:26:43 -0400
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Shyam Saini <shyamsaini@linux.microsoft.com>
Cc: iommu@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org, virtualization@lists.linux.dev,
	will@kernel.org, jacob.pan@linux.microsoft.com,
	eric.auger@redhat.com, code@tyhicks.com,
	eahariha@linux.microsoft.com, vijayb@linux.microsoft.com
Subject: Re: [PATCH 0/3] make MSI IOVA base address and its length
 configurable
Message-ID: <20250120142643.GM674319@ziepe.ca>
References: <20250116232307.1436693-1-shyamsaini@linux.microsoft.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250116232307.1436693-1-shyamsaini@linux.microsoft.com>

On Thu, Jan 16, 2025 at 03:23:04PM -0800, Shyam Saini wrote:
> Hi,
> 
> Currently, the MSI_IOVA_BASE address is hard-coded to 0x80000000,
> assuming that all platforms have this address available for MSI IOVA
> reservation. However, this is not always the case, as some platforms
> reserve this address for other purposes.

Can you explain this some more? This address is in the kernel
controlled IOVA space, there are few ways a platform can impact this.

How is the platform impacting it? Is the non-functional IOVA always
reflected in the iommu_get_resv_regions()?

Why not avoid this conflict in your platform software?

> There was an [1] attempt to fix this problem by passing the MSI IOVA
> base as a kernel command line parameter. 

Yuk

> In the previous attempt,
> Will suggested reserving the MSI IOVA at runtime whenever there is a
> conflict with the default MSI_IOVA_BASE. However, dynamically reserving
> this address has debuggability concerns, as it becomes difficult to
> track IOMMU mapping failures.

Still, this approach seems like the best to me..

> This patch series aims to address the issue by introducing a new DTS
> property, "arm,smmu-pci-msi-iova-data". This property allows the
> configuration of MSI IOVA with a custom MSI base address and a custom
> length for IOMMU/SMMU drivers. It accommodates platforms that do not
> have the default MSI base address available for MSI reservation.

My understand was using DT to set kernel configurables was frowned
upon? Ultimately MSI_IOVA_BASE is an arbitary choice by kernel
software.

Jason

