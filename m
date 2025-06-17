Return-Path: <devicetree+bounces-186784-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 90D88ADD45F
	for <lists+devicetree@lfdr.de>; Tue, 17 Jun 2025 18:09:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 122312C2221
	for <lists+devicetree@lfdr.de>; Tue, 17 Jun 2025 16:02:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DF4F12DFF0C;
	Tue, 17 Jun 2025 15:58:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ziepe.ca header.i=@ziepe.ca header.b="QHHvi1J8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f173.google.com (mail-qk1-f173.google.com [209.85.222.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F41B2DFF04
	for <devicetree@vger.kernel.org>; Tue, 17 Jun 2025 15:58:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750175905; cv=none; b=tMgZ7VDUCFVzmWYpT33K7ra6Trb1XvOKLjgia5VBeS7OshpSxW2VfKy1dWrV/14WtetL3AQ7VdJT0wvxEOVs9rGMETwKP5Q8DOYslMlTq/h+En6ZTZFVIxucHmN80OJjbDDkdp7C39Dsv4bI87AYlQJdf463LLkn7oOWQsFBOZo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750175905; c=relaxed/simple;
	bh=hqAmW2+tkDQoBFUTnquUpaKj3CzkKyd3cuJ8lhWF2fM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=FdD/rErN3BF1VMqZoCl0UqL8+WKBEy8+V4+F/n4Q9eV/p1WhMsKXrmi8FZx03ikTMYyEqA7mMuBUPTFYgr8MWHqUIa8F8OasGbY6O0hR/59kh17yds0g7zpxqJgHpIPVJq8EPzVMsOcNi9gognviaeKTQ3EJK90e8fJdEvob3LM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ziepe.ca; spf=pass smtp.mailfrom=ziepe.ca; dkim=pass (2048-bit key) header.d=ziepe.ca header.i=@ziepe.ca header.b=QHHvi1J8; arc=none smtp.client-ip=209.85.222.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ziepe.ca
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ziepe.ca
Received: by mail-qk1-f173.google.com with SMTP id af79cd13be357-7d094ef02e5so741287985a.1
        for <devicetree@vger.kernel.org>; Tue, 17 Jun 2025 08:58:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google; t=1750175903; x=1750780703; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=5QVoUfdHdJ48HnCFe+0ux01ldLUN4WiVyX0euOzInBM=;
        b=QHHvi1J8WlnjQCQmVzs1Q2bgXI50wYIJ2CtBxydw8JsbD2ts9AXgc/bdVoJ1TVEIVX
         9lx6/E46+fUhvJu3Jqllird2ffekFWg9Ox5KbViSZ22TmRLDXMMQfRsyr3DpBplxp+Mj
         0M36uTcDlFFiNSbPMIm8pM0b3SmJCEcOZFr9Ngrsa6eeYARa2A8q2IcnRpmjGAvawmKQ
         pa/YTqUVjmq9ihME9jyLyiHJsjv+TKrapuutLSCoS/+hm9oxVLD0kBA8B0O6YR+zWeLR
         l4Lncys2xnlQwmJ+rDkKl2UJj46gIkqJY7BobN8mWiImd251XRqJ4eGvcmBXFlUDF1ML
         6Tew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750175903; x=1750780703;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5QVoUfdHdJ48HnCFe+0ux01ldLUN4WiVyX0euOzInBM=;
        b=N/i/zxd4GYwQmarTPR1FUHINDjh5krrPvB1uXvqEickKCnhznOdlQd3koq9noqUE/W
         Y/CX2Kq+HmhX/+1wE3jK1M30eqV1s/fbg9IBgYuXDZ4S9Y0vPAQoecaBcUHfHIFc9nRb
         YkgzPVe+S6b3txlWoxKXSY+Jp0/XM7pKlW7pm5vtksxpkhequFwYcZeuo/FZpOaZDliQ
         iBJ/WEHYuYrX7CiqCj/Vbi26WM+BqS7sjvspXdJFPbtMmlhPDUoQyi8gdcLSO6Vh4JFU
         KInqmxGBIVh02S9O52RVmjkxhXhtuS1PjG1xTQTqNNPws2fJ4SLXWAGwbyiw6G1EoBH4
         s/5Q==
X-Forwarded-Encrypted: i=1; AJvYcCUr06jR7hrUx+yMJl9DwJQqBh2Afs9F0Ldf4ThfpWwkJG8clBx78Ty321WmDbcEz8q1xwxzJSHEdb+I@vger.kernel.org
X-Gm-Message-State: AOJu0YwjGWeQxBGqf0aS/SvQPL+42F98+uLPjOCgdn5T+7cZL1IARpCm
	weRk8MojYrN3lKeX5WEFrCxvIVWZBGDqMoIznlyjE4I8b+d4RjYVWDOdz0T694QLrYo=
X-Gm-Gg: ASbGncvyOZFsgIHda2K/bMYtACcrLed9xiX9Mp24IssG1IN39wKCldtd2f0yewCuKQ2
	7tpylye4612Zh3G9EWl6kRRj6Cvju1CfW6Vmtx0KrKV9UlSTFW2tCVoawQ3Xnu5up8cVILTMgQd
	TZJSHGFwB6NC3t1X1xtcYhYNhWBqRlYizYMj2dkiY1mWQCj26qwbTz9PwxO1/SuFiVOJQPYji0x
	v2Rj5xBkNWEsLf9MJ1rQr2jagsQW9iqaXWfiDOTDVs+D4JBsCn0RVNDACzbsm/yfmtocHSQ8Mkn
	6CgDUtb9sstygWVtVtUAN7x8zMUtXsoezvBslLdGh2rkbiy/XLo5LZ44nEnkfN33VS4eUzTneoO
	9notC71yWpNrzv95cHB7icTRJTPDnXhPln9SLhg==
X-Google-Smtp-Source: AGHT+IGQBUFbF+tPc3zGviUG0wR17BWPg+rb3PkSRtQpO74uvfm4fcaKBtbG84+832ByxCugbO/j+w==
X-Received: by 2002:a05:620a:44c5:b0:7d3:d14a:38aa with SMTP id af79cd13be357-7d3e07649b8mr472642785a.16.1750175903195;
        Tue, 17 Jun 2025 08:58:23 -0700 (PDT)
Received: from ziepe.ca (hlfxns017vw-142-167-56-70.dhcp-dynamic.fibreop.ns.bellaliant.net. [142.167.56.70])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-7d3b8e0535csm664773285a.41.2025.06.17.08.58.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Jun 2025 08:58:22 -0700 (PDT)
Received: from jgg by wakko with local (Exim 4.97)
	(envelope-from <jgg@ziepe.ca>)
	id 1uRYha-00000006Wgi-0qrY;
	Tue, 17 Jun 2025 12:58:22 -0300
Date: Tue, 17 Jun 2025 12:58:22 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Cc: joro@8bytes.org, will@kernel.org, robin.murphy@arm.com, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, heiko@sntech.de,
	nicolas.dufresne@collabora.com, p.zabel@pengutronix.de,
	mchehab@kernel.org, iommu@lists.linux.dev,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-media@vger.kernel.org,
	kernel@collabora.com
Subject: Re: [PATCH 5/5] media: verisilicon: Flush IOMMU before decoding a
 frame
Message-ID: <20250617155822.GE1376515@ziepe.ca>
References: <20250616145607.116639-1-benjamin.gaignard@collabora.com>
 <20250616145607.116639-6-benjamin.gaignard@collabora.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250616145607.116639-6-benjamin.gaignard@collabora.com>

On Mon, Jun 16, 2025 at 04:55:53PM +0200, Benjamin Gaignard wrote:
> Flush the IOMMU mapping before decoding a frame to ensure that all memory
> translations are properly applied.
> 
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
> ---
>  drivers/media/platform/verisilicon/hantro_drv.c | 11 +++++++++++
>  1 file changed, 11 insertions(+)

This is a really big red flag.

iommu translations are supposed to be controlled by the iommu driver
and should be flushed as part of the iommu map/unmap flows. It should
never be necessary to do something like this.

Jason

