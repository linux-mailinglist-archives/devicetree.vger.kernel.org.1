Return-Path: <devicetree+bounces-204917-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 24F70B27419
	for <lists+devicetree@lfdr.de>; Fri, 15 Aug 2025 02:40:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2FC2017D35C
	for <lists+devicetree@lfdr.de>; Fri, 15 Aug 2025 00:40:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 57ACC26AF3;
	Fri, 15 Aug 2025 00:40:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ziepe.ca header.i=@ziepe.ca header.b="IdrPPFjq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f178.google.com (mail-oi1-f178.google.com [209.85.167.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 86FFA1B960
	for <devicetree@vger.kernel.org>; Fri, 15 Aug 2025 00:40:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755218404; cv=none; b=OS9n1QfiM8uobxOZz1Yw+tplgdvcCkzj86SxrnNwU5AY4uP66V0gns24krTZc5QzTU+y70bNWSBLgMN6xxbQIbxAcXYymccUWyXi6OcrOhtFfiXwC58fg9SwirjWqkanNaHSsUN7J61bWpxd5EWcWOfGP5jUkQ7HHZd8jPLZ7l4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755218404; c=relaxed/simple;
	bh=6/sdWQJeWOfXNeyHNijjYMueBETIfV4LG3tVO9cWGsY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=T6gmDRQx0hQtBW67CTmcY3WveGSc83U7hNggLRMSup9URtylCz9r4qhNYwxQG4dtbRQu2jc+sSthVpIvcc7xTKPiOPcUeNKDOct95LlZDdOOvhDXZkA/UfQfJtt0gkoyMZ5v6ddOQkfDRa6mcEHcf4KfjVxmJX4Tkcv0I6dfqbE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ziepe.ca; spf=pass smtp.mailfrom=ziepe.ca; dkim=pass (2048-bit key) header.d=ziepe.ca header.i=@ziepe.ca header.b=IdrPPFjq; arc=none smtp.client-ip=209.85.167.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ziepe.ca
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ziepe.ca
Received: by mail-oi1-f178.google.com with SMTP id 5614622812f47-435de7d6d05so905293b6e.2
        for <devicetree@vger.kernel.org>; Thu, 14 Aug 2025 17:40:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google; t=1755218401; x=1755823201; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Hr3wKIH0ILNJrROQ8e7R3YmlW6yepWJRJ+67Lc0p55k=;
        b=IdrPPFjqpuwCJ93QNn5sm1Xaa3ERKtw+9DRQXQcjYE+MpVjJSZGMXL6oQvYYtxa7ZT
         4H10Tv7sVHIOYOkOqrc9ptE7mF9CJG+U1Py72J/cUP+BDXVZdWF0iJe8PiaqyvM0pAf6
         BhxFqIP6RF2SIbLjlRiw3zE9qrqBTQtFZj+zuy3wyWXSLHTHVm2jDF2+M832QCGeiv7l
         zgtdZ2j01QS2K1icD8YBgYAXeqF7VfAc7/6CrNC1/Pm21pRSrtGfcZyoCo3U7BmkCMzl
         L2LufBnIZWR26SmP7j+4VHmBWZvT9mzWuwd8XlHoc1LjUhL9LimAXE2w5Oxtgjf/O4bg
         8hzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755218401; x=1755823201;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Hr3wKIH0ILNJrROQ8e7R3YmlW6yepWJRJ+67Lc0p55k=;
        b=YsemuRRbXQvG5+eH+8hQE01GQ4HAqnmeCAwmnDgBh7FuIDtTbyRA/j5pP+3HhCqB0M
         csRUTAyJsX2W+XupQa1Ns5/aHYF2fE9oT9dIEC8KyYDCRfK3rILr0iGs3qaVrU/QUMyw
         xofhlhp6IYIarpB9dBW1r8XjXc4Tpv0IvxAzJ3tBdHdlAUSui5L8tCNq0zG5eF68z1//
         mDFxAnooyBypH/GYKhtb6F4GBf88RzSl3QlUCriL2H5rd7hNdjAbBaeCgINGTDdjZLZX
         wjjJJFXQQ4dkkHZq5XfAOc4KkmCDuZd4KyLI7rg5MWQus+q/YCkSjUS1VZvv2VYooPz8
         Appg==
X-Forwarded-Encrypted: i=1; AJvYcCUGd8UMClXCXmO7VfbenXihgRI4pQNm8uVksJTzdMFxOaUOyAZl51CeybO/usDOCnaoXDa+8qk2ES7o@vger.kernel.org
X-Gm-Message-State: AOJu0YwuYox+xFFZfB7G3hW6FuomA3n2rgjcnsM+8U8yvgJEaX3RY6lB
	yQ8G7MUas3hluN7VfB25w0RQpCiAgVIOm4inGuFBnVxW6gGmfi/bwdEjafNYHMTLjik=
X-Gm-Gg: ASbGncs/IPGDwqZU4m1pE6tLTCPDzj16WDBamXfIoDAPthMep5Cy2AgrT8MOMLHFfPI
	ftwXSSyyMp6q1/Z/9Uo5oB0lUI3zxu1YKHwiSERJP2Bn8cbPdzvN0plel5tPQUJBJcjWFIFBAtg
	tutsao1d6W3J983g6KFtnM9V+bRjntX4bU7adMPNuTD1TK7obmI2aeQNIgE+/rJlbvo+5ri5uQG
	8MbdCHIYD/ZGNeNCXTPy/6o9cr4B97cQgFFtryAdZXie7b/++JSqO+H51tCE6yAAR18VHXx8aDX
	WKMhfmOStD6cJyJgyam7aMVnUBxAFsKYpNxQigWMSj+h35B2IC6PxweKfV0pwL9ujShtyru1
X-Google-Smtp-Source: AGHT+IHz/V+zZ7uzfzwx637Ui4sGjmYjl6eL7eDG1gc5kCGFqOg5QIIhe2oPTd/JaDh2sRuwhvdoeg==
X-Received: by 2002:a05:6808:1a14:b0:434:54a:40bc with SMTP id 5614622812f47-435ec3bc7eamr73006b6e.1.1755218401405;
        Thu, 14 Aug 2025 17:40:01 -0700 (PDT)
Received: from ziepe.ca ([130.41.10.202])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-310ab87a099sm3458fac.1.2025.08.14.17.39.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Aug 2025 17:40:00 -0700 (PDT)
Received: from jgg by wakko with local (Exim 4.97)
	(envelope-from <jgg@ziepe.ca>)
	id 1umiUA-00000003TLB-28WR;
	Thu, 14 Aug 2025 21:39:58 -0300
Date: Thu, 14 Aug 2025 21:39:58 -0300
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
Message-ID: <20250815003958.GE599331@ziepe.ca>
References: <20250806215539.1240561-1-shyamsaini@linux.microsoft.com>
 <20250806215539.1240561-3-shyamsaini@linux.microsoft.com>
 <20250808121515.GE377696@ziepe.ca>
 <20250814233018.GA31418@linuxonhyperv3.guj3yctzbm1etfxqx2vob5hsef.xx.internal.cloudapp.net>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250814233018.GA31418@linuxonhyperv3.guj3yctzbm1etfxqx2vob5hsef.xx.internal.cloudapp.net>

On Thu, Aug 14, 2025 at 04:30:18PM -0700, Shyam Saini wrote:
> or were you referring to [2]?
> 
> In that case, the PCI child node data needs to be parsed, which is
> currently handled individually by each host controller driver.

Yes, this looks like it may be what I was thinking of, the pci@1,0
specifes the BDF effectively
 
> This might not be a strong argument, but since firmware updates tend
> to happen less frequently than OS updates, any addition or modification
> to the FDT would require a firmware update. Wouldn't it be more
> maintainable to keep this logic in Linux, which is easier to update
> and typically updated more often?

The DT is supposed to describe the HW, if the PCI device has an issue
with its dma ranges then it seems reasonable to me the FW will use the
existing standards based way to describe that issue?

Presumably this is a fixed issue of the platform. You never did
explain how your system has such werdio behavior, or how something
like iommu=pt can function on it...

Jason

