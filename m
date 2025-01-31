Return-Path: <devicetree+bounces-141973-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CCA6A2384A
	for <lists+devicetree@lfdr.de>; Fri, 31 Jan 2025 01:36:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8C7E33A6680
	for <lists+devicetree@lfdr.de>; Fri, 31 Jan 2025 00:36:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 321E4C2FA;
	Fri, 31 Jan 2025 00:36:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ziepe.ca header.i=@ziepe.ca header.b="d/ydOcQp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f182.google.com (mail-qk1-f182.google.com [209.85.222.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6670FA930
	for <devicetree@vger.kernel.org>; Fri, 31 Jan 2025 00:36:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738283782; cv=none; b=Hx/HMdzhh5dliawNoeFI+MOy4Rex6cTrIYwngPlUqV4pVwM5mq/1vfQH+1wFjYkETfaVdrjmGbEp+pGcMZSDLVwBxkHNhJ3IHVkn21hq3PLBjpuMDNVHJwkpTRe2ZheMl6XDNoX5xMNuGKfD4704AXfSdhoIv98yc/YhCaEhr50=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738283782; c=relaxed/simple;
	bh=kI9AfXobCAN5OK389jRqqGv2IIj7d6c0IeGFW4d6GlI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Gn6txgU23/vSHOyybS9y1h1FQTO+29b/TsyFZ/52eFUSxv9k1ocpSiV3vdPZXalVM3iQ0qLm5+A65isLiJGdRhvLBzeV3AJrtabbdQh2B2gm46eyt2w2uM2wvdqCOAurvdPcFw9LRwCSpHs3Q9w0NXJBqJkYfTiDyFM+QahUU58=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ziepe.ca; spf=pass smtp.mailfrom=ziepe.ca; dkim=pass (2048-bit key) header.d=ziepe.ca header.i=@ziepe.ca header.b=d/ydOcQp; arc=none smtp.client-ip=209.85.222.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ziepe.ca
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ziepe.ca
Received: by mail-qk1-f182.google.com with SMTP id af79cd13be357-7b6f75f61f9so222945585a.0
        for <devicetree@vger.kernel.org>; Thu, 30 Jan 2025 16:36:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google; t=1738283779; x=1738888579; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=yqldt/xcAytwXtteev0RCwhSZB7KS4Y37ipxJQOWiro=;
        b=d/ydOcQp7BSV23r1GeKlyBptZjLK5/PjSbErtoFdUPFmnGzwxnIy2PnRg0jly9h3Yr
         bl89pAHlRN0x+ch0zD6r30FSYIDdeXQtkEq8s/wDibulvweie5Tzx8ocwNjQOdrDtwT0
         Wn0/Yw1kPTtBwZ9aKxcM1v4Dij26BCtzbuGInu8/eD6mFAUCcC0CK3QbAsVgJsF33m3H
         5Q08vkWCcBMjV7YYa062ocBDDDjl+1D/wDqYmlXI/kEqZRN4ypZKS+lFAlvrs4L+5Cax
         Or6vZb6WLhNCXmQbx6K62i4RV4v7rFNYZUjv7WhWbNWhguOYOyC6UvxUhw7auZAIzG94
         10aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738283779; x=1738888579;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yqldt/xcAytwXtteev0RCwhSZB7KS4Y37ipxJQOWiro=;
        b=FIT7Ai8BNgnDkW6X9aOemyShUcX7FN2FFAJ6RypOzVPOSrZtsCIlr8MtG1R5rr77O4
         2GqyLlf2MAih4qe3WCLo7J+78rPZiIqos4p1hZmjAB8urdoLacxUZXOH5ml8xp0jMd5v
         ObxWcWeXa8L+qc3dCXwQ/qsVZ5z+bI9XpeaH7bdb1gAhhA6QnqJC7IWNgVY26eVHKs0N
         ERaEddlQopaN5xefSsnlW1RmzNT+5qbc3vMqZKoT4KbwKU/X6vPYjRNlee1UIT4MvD1k
         Db5sHpZRwmJumpclV1+GbxI0mFv5XacuWc4CbYMp1WjIOeuWIiIlMV0iZKeVwsPZqGEN
         9vKg==
X-Forwarded-Encrypted: i=1; AJvYcCXe8VrVLfqFo7IfabpdYwlUb0advc0kGtxnLTC1UR+iCRQDvQDn2gng0S9GVXiEGfYfNa73WLfIxgUK@vger.kernel.org
X-Gm-Message-State: AOJu0YzNyvy7yJIagNVJ8krRMe2MxNorFVnrkwe7ueZSJSyUUQwUy0XT
	8c4wnAxId4KVb2BacqmcaCPqWG58tZKd81WD/PvkpmgeANOC3f1mfvbLzb6Qfvk=
X-Gm-Gg: ASbGnctn/zabumtS/dlMwp4hiNRn+787OhkbOHck86NcgppEUOLszsju79NE97jcSdZ
	6pSmNKY9n5JpTKkBFYP6F0S9u+ydPe9vWJWxmg5LZv+wIBWWhHqMLc7JEcjado4Iomp/fiNFUpO
	liLzf5MchJ88+wycze4XBztCIRTC/t63jPH2dTY6t9j/lD72alAIghEcfKgyWMOGMCDh9GKDOP9
	gyl4AmGpaSuGG/a8QQL912heOATWZoqAofIyOtNV1VnjLkBUztwDun0ZX0+ME8hk7U1JNvg1MtY
	hk4pPgVBQMz1dzuzjzdrC4Yac5YHt7BcZM3HkEgRP92/e7Yf91QwmtonwDilhZCE
X-Google-Smtp-Source: AGHT+IE07V3qiTAW6EZ1X13h/qc9229k1AUAAxkUW5w5v/ZxDuN93Om57N1kexxou5u4vA0fw80BGw==
X-Received: by 2002:a05:620a:3723:b0:7b6:cb66:ad74 with SMTP id af79cd13be357-7bffccdfa82mr1548427185a.18.1738283779269;
        Thu, 30 Jan 2025 16:36:19 -0800 (PST)
Received: from ziepe.ca (hlfxns017vw-142-68-128-5.dhcp-dynamic.fibreop.ns.bellaliant.net. [142.68.128.5])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-7c00a8bca3bsm130417385a.13.2025.01.30.16.36.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Jan 2025 16:36:18 -0800 (PST)
Received: from jgg by wakko with local (Exim 4.97)
	(envelope-from <jgg@ziepe.ca>)
	id 1tdf18-00000009rfr-0aTF;
	Thu, 30 Jan 2025 20:36:18 -0400
Date: Thu, 30 Jan 2025 20:36:18 -0400
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Shyam Saini <shyamsaini@linux.microsoft.com>
Cc: Jacob Pan <jacob.pan@linux.microsoft.com>, iommu@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
	virtualization@lists.linux.dev, will@kernel.org,
	eric.auger@redhat.com, code@tyhicks.com,
	eahariha@linux.microsoft.com, vijayb@linux.microsoft.com
Subject: Re: [PATCH 0/3] make MSI IOVA base address and its length
 configurable
Message-ID: <20250131003618.GB2296753@ziepe.ca>
References: <20250116232307.1436693-1-shyamsaini@linux.microsoft.com>
 <20250120142643.GM674319@ziepe.ca>
 <67901659.170a0220.20b206.f1f5SMTPIN_ADDED_BROKEN@mx.google.com>
 <20250122001924.GT674319@ziepe.ca>
 <20250130232137.GA14836@linuxonhyperv3.guj3yctzbm1etfxqx2vob5hsef.xx.internal.cloudapp.net>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250130232137.GA14836@linuxonhyperv3.guj3yctzbm1etfxqx2vob5hsef.xx.internal.cloudapp.net>

On Thu, Jan 30, 2025 at 03:21:37PM -0800, Shyam Saini wrote:

> Unfortunately, it is an HW issue.

Well, that's pretty bad to have built HW that can't DMA to low
addresses at all.. But OK.
 
> Are you okay with this passing custom MSI_IOVA via DTS approach ?

It isn't up to me, but I've understood the DT maintainers would reject
this as it isn't is describing HW but just a random Linux software
knob.

I think you should make selecting the sw_msi dynamic in Linux.

Jason

