Return-Path: <devicetree+bounces-165668-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 630A7A84FF4
	for <lists+devicetree@lfdr.de>; Fri, 11 Apr 2025 01:00:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 72DD61BA0E25
	for <lists+devicetree@lfdr.de>; Thu, 10 Apr 2025 23:00:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4CB9A213E81;
	Thu, 10 Apr 2025 23:00:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ziepe.ca header.i=@ziepe.ca header.b="L2CBI0He"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f181.google.com (mail-qk1-f181.google.com [209.85.222.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A8CB211466
	for <devicetree@vger.kernel.org>; Thu, 10 Apr 2025 23:00:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744326013; cv=none; b=RGI54wzdQNLCRnBPsrZ5mzbJFieXeQbEdu3acyEY6zOL27/K6+B0GnF/VnVVGKAlqigcfkgeigJGE4WLQzEjoBr6Aky1OW9UxqcobcoEy8+monhfTmpQYJIuLvcJSzJJu0CokPRu1jAFVifh7uv+4H+aBhRm9TISTl+iaoPgx5Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744326013; c=relaxed/simple;
	bh=KJDeLRPNP4KR15v2b6aVw2383AZQQQwiuSEL1SwZOgk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=GdwqXdyYZxDi7MdJ5ZYiaQitwNS5Ng+7Er5ojjh59gLdj60JbsgmKsw2M5KpsSDA1DPTNeZDtWEDoK4VIrAgLDLkvQidNUWveFsYSFHTcpU1cAoCdQC8/6KSR4SxfO2DxTXLJt00YE7AkN5oYZgooGHB8k+Bh7TtYyqHNw4fGLo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ziepe.ca; spf=pass smtp.mailfrom=ziepe.ca; dkim=pass (2048-bit key) header.d=ziepe.ca header.i=@ziepe.ca header.b=L2CBI0He; arc=none smtp.client-ip=209.85.222.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ziepe.ca
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ziepe.ca
Received: by mail-qk1-f181.google.com with SMTP id af79cd13be357-7c7913bab2cso136813485a.0
        for <devicetree@vger.kernel.org>; Thu, 10 Apr 2025 16:00:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google; t=1744326010; x=1744930810; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=JpO2S4wctyk68CVyOkNnoYhQpTc8ULQAveyt4WbuIOg=;
        b=L2CBI0Heiq1yq4qt8uUgSEn2EE+RgklnIntHk6kPP+HX7O7wcYH3P61KE867R7oX6V
         KH9b6CuGQGYyedmg//l1T11HpdDlam7ZAb98wzSIH7S9a8UK1KXwik3tUsqCeIiK0hzN
         AZAm0HPUet4no7oACpg3w1zYF6I7p7Vw3EotsOdNNT+aB7pGAQO9KfxkI0fOc2l8nTiq
         iBJIyrNgsznpukF1h7eQWXuFLPZQ+idk1PhQZ7H/csC8e8/NLrMw5QYJq2pFK/YjRhXX
         iIBfCU4PqnogoYiacZoGp4VjXvs82+uoUawyG82giFRa1+yUM6CqMgUVKApFLOHat5Wk
         szCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744326010; x=1744930810;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JpO2S4wctyk68CVyOkNnoYhQpTc8ULQAveyt4WbuIOg=;
        b=YMyZdnzlJPEynLOqLnAy4yx/W/FH4gL4IDSpC6C3fmeI/48OqWIODO7Asg79/KSgtU
         /2bhsHYnDNdjnS6JhNaHzMxCvR2L82XEwIGUV1I8F0Ts7pBeu04F9ApfgL9uZWk6w9Wg
         m0OauIlB7Qok48oN10i6SluGwKaz8agzBTpO9KnbeY78AwihVUJWIYQzjNnIIn+dfqC+
         ghjtblaYjxeSP62q2d8DFBuC9kcNiSAPzwg2ACohAVIKwGIGoZOJnUwXu08S6JmYP7kP
         TWrbp62LYMgZodCdfLtcaLyc6khKQzRS37rHoVf/sRWzuc536r3XxHk9seQ02SNLvliE
         uQtQ==
X-Forwarded-Encrypted: i=1; AJvYcCUitf2hMkjU8A/net0DuP5Ra5qxjDqSDYR+KUQs0uv9Kb57IhydBmVPxbUNNqX8EgLto9ziKgz7dKPE@vger.kernel.org
X-Gm-Message-State: AOJu0YxRl0VHuAND8+6IYya76in6H6QV3Y6qic25hLELtvPmmvO2SgIZ
	S/fIXZKhDOCpdX2lU8vqU9NSCFDO0zayYl2xYg4roias3MIXltZFfItK+/nJguI=
X-Gm-Gg: ASbGncu59k1qn5e+qFb/BwvIEoF5xH7Upjgcb5feDkzkUyovdrARfOhW+qUhWqfv6l8
	Zxo1YWsCTY+BA+v1b9a1sBKmE/CxMqgI0OjQU8GKyYTIctI8Wbn41Ew6mj33OOufMRWmkLIcw/J
	OCQZca0vxjhR7K4dyxMGZRaQC9nfrJnke9Zy/pwn2Wr/IT9O8o0tKS5OqTcawX0CMCOUi9dufAx
	mb5c+eqFC2H5pGia7uWjhpGEdiUKIY6AOOPnl2i7+gOW5JA3zIeUTRCnS9zeMOoez4elp+sy+gu
	QKrUMDFgYR1+qPDr1+/0OfFK7xd/yZASk9RnZbQ+1FRnXokom1hUE/sELcPasfOiTRuDq2ouEsg
	+VkUNpdEMjA0q9jIKC68=
X-Google-Smtp-Source: AGHT+IHr0/WY2Rqb4JC2JVZGgAH4AixNta9jAPZvPdjOUO1pv6CI6b5DlSO9IE1VF0/bDnrgXDRKew==
X-Received: by 2002:a05:620a:4306:b0:7c5:5cc4:ca5c with SMTP id af79cd13be357-7c7af12e6ebmr102606285a.14.1744326010083;
        Thu, 10 Apr 2025 16:00:10 -0700 (PDT)
Received: from ziepe.ca (hlfxns017vw-142-167-219-86.dhcp-dynamic.fibreop.ns.bellaliant.net. [142.167.219.86])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-7c7a89437a4sm164415585a.23.2025.04.10.16.00.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Apr 2025 16:00:09 -0700 (PDT)
Received: from jgg by wakko with local (Exim 4.97)
	(envelope-from <jgg@ziepe.ca>)
	id 1u30sS-00000000GRz-4851;
	Thu, 10 Apr 2025 20:00:08 -0300
Date: Thu, 10 Apr 2025 20:00:08 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Shyam Saini <shyamsaini@linux.microsoft.com>
Cc: iommu@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org, virtualization@lists.linux.dev,
	will@kernel.org, jacob.pan@linux.microsoft.com,
	eric.auger@redhat.com, code@tyhicks.com,
	eahariha@linux.microsoft.com, vijayb@linux.microsoft.com
Subject: Re: [PATCH v2 0/3] arm-smmu: select suitable IOVA
Message-ID: <20250410230008.GA6905@ziepe.ca>
References: <20250410225030.2528385-1-shyamsaini@linux.microsoft.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250410225030.2528385-1-shyamsaini@linux.microsoft.com>

On Thu, Apr 10, 2025 at 03:50:27PM -0700, Shyam Saini wrote:
> 
> Hi,
> 
> Currently, the MSI_IOVA_BASE address is hard-coded to 0x80000000,
> assuming that all platforms have this address available for MSI IOVA
> reservation. However, this is not always the case, as some platforms
> reserve this address for other purposes. Consequently, these platforms
> cannot reserve the MSI_IOVA_BASE address for MSI.
> 
> There was an [1] attempt to fix this problem by passing the MSI IOVA
> base as a kernel command line parameter.
> 
> This patch series aims to address the issue by introducing a new DTS
> property, "arm,smmu-faulty-msi-iova" which can be used to hold faulty
> MSI IOVA address. This property can be passed to ARM SMMU drivers
> via device tree so that the drivers can select appropriate MSI IOVA base
> address which doesn't intersect with the faulty MSI IOVA address.

I thought we already talked about this and you were not going to be
doing a DT proposal for a software knob?

And then you didn't even link to the recent discussion :(

https://lore.kernel.org/linux-iommu/20250403232619.GA681099@ziepe.ca/

It is easily solved in the smmuv3 driver without out any DT. Please
do that.

Jason

