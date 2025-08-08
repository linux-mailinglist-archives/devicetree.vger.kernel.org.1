Return-Path: <devicetree+bounces-202722-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id BCCA7B1E822
	for <lists+devicetree@lfdr.de>; Fri,  8 Aug 2025 14:15:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 8CFBA7ACA3B
	for <lists+devicetree@lfdr.de>; Fri,  8 Aug 2025 12:13:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8AEF2277C87;
	Fri,  8 Aug 2025 12:15:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ziepe.ca header.i=@ziepe.ca header.b="WrdxU2xo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f177.google.com (mail-qk1-f177.google.com [209.85.222.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E9EE277CBB
	for <devicetree@vger.kernel.org>; Fri,  8 Aug 2025 12:15:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754655323; cv=none; b=Aw7tT950+SpGIhlbKDaKGnds4DXak2oIpxo1ec8DM52Z8IqKXGq45pVK658kBqp0l0O3uLva1loB65rof8C9dZI5q3uS/sSV2iRLx+T7UPmrfN3nZr73dIatFNqD7FhtVubV8htcQjLUHrfihytUGkNPIp+PTuuWIMThCL4d+W8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754655323; c=relaxed/simple;
	bh=KjlLTJox+aEPkr7SyVNi+vSqzknO8UAJgxNui7KfZqI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=a55W9zdS+BlHAdJWr1Xcn+bvNjDWKY8m2b5c3TMRzJ8fn6Q5j7N4gF9B8neATSaIzxcL+SDBGq2Iz8XHA2m6RUMyA9rO1qfdhj1kmRFKhj6VPucBi8mw+unSW/EW6XyMiQveYaexPbk/9CCRK51YWtfgsS2HtZ2/vWprNb3xfbk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ziepe.ca; spf=pass smtp.mailfrom=ziepe.ca; dkim=pass (2048-bit key) header.d=ziepe.ca header.i=@ziepe.ca header.b=WrdxU2xo; arc=none smtp.client-ip=209.85.222.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ziepe.ca
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ziepe.ca
Received: by mail-qk1-f177.google.com with SMTP id af79cd13be357-7e6696eb47bso215032885a.3
        for <devicetree@vger.kernel.org>; Fri, 08 Aug 2025 05:15:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google; t=1754655317; x=1755260117; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=KjlLTJox+aEPkr7SyVNi+vSqzknO8UAJgxNui7KfZqI=;
        b=WrdxU2xovNgWI7r/owMVXNP8AaP1TzGG9BcQuGmSHP1eq8ioFioqIUYL6Ia2Glff9N
         omuCHpFpqAeOsEXpNgVnR71d+HtkzR+f7qTNOf1HiIziFDtJU3OyHvtXNRPKSWiJCNft
         hcUmsFrvz6gzPOseFCRMhWtnl32Iqzsg7f4w381t/0a1UmKB18gBQe9U1lHtUtVCGfR3
         9ab849g9hsxp8HVz4cfyR6UnAUsQxCaLsH73fMTDUEQzRngzbrCXhJkiBwXZX1Fa2+Oh
         a4Ih6/KiMi+nFjaHS8jsECt2BTXPM5Rymza2VLS154jkoSMa3uTqhJMWn6mDR18IJlaR
         kjrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754655317; x=1755260117;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KjlLTJox+aEPkr7SyVNi+vSqzknO8UAJgxNui7KfZqI=;
        b=DjKQo6ys66jX5oS/07Q4ezLpEgFIQr6iwO9b/ZF0KXAQpWSvPXmLa8V5e+XjQ3X/oI
         c02foupYRiGlvKmIZyFWzkQQXyH1DplIJ0hTMsWrACZMR2Kl43qr+1ixJ4enQQ4Dem+g
         HjIsrSnZTeod/4CMbEYuoSAgYXMUubQeeItoV1NfAJRP1M9aw2OzJuOarVfhlwgTWYBx
         iVHIO7GHR/M3AFkkj9XokJWOESipQ/wbrD1GFxdVgH+2+tnitj/2ikiBqoMwWaG8yJK3
         MsJ1Tg3Umv/pnMtdYHMysAO927HnFCaFlVhP2X6gGjdJQvqtP/5gO3HTx0DwYIrMIg5n
         b0Cw==
X-Forwarded-Encrypted: i=1; AJvYcCVvXtEeymYmC1bUmcSc9PrfYFdyjO8BYr8g+CoA3yjwT1deA5uY8BgCkUAWCsWjW4Fq8+Etqc3xbICq@vger.kernel.org
X-Gm-Message-State: AOJu0Yw8HpTjl7M2X6M4cJjjD3OqzGwzzx8yvkO9dwq0oA3ai2STIXyf
	EJE5Zw49mgK9MKpBIs6sb+Ydcx8Tqj1EWN37DlBWmrPSFEuWFOx/5GchgnJ6JUFQjlg=
X-Gm-Gg: ASbGncvj4jKme5f0//xF7l7/cQMmG8ReaQoPvy958L8Tg6d8gXyQZW1/LlN2tf03CGv
	yLudYBcStNVbyKULN5+bDP3e3TvDZe8zV7Z0YU6KYRrflpBjbSQkTj5juEmCnScRsaIncZeLu5t
	Qsck4VhhXIyE2LWmbZtUnbKWzDeNwDYH6eG5sRAkGktVuOWrM8uDlJaef2OTMxkLsXuGFqJvaxa
	EYFOsQxyhAbboVaQxCHZ50D7lYvrZnkW/qJq8BVbJNx8nVjBsN4/dn9nN1PMw5NEIY61qMZ/0fK
	NDHBTZAWZYrH1uU66XCXlCjrLAGWR8HDlGkKy4E0caJXgr71hGuxLbwUClz1+2TxQ9U6DGy/BND
	Rhw8O1gU84l3F8jdsYoRLVfGEpeeA2t1UTeNN36plUcAVuZv7Ws25WEzcdxIZMfA9kaXt/LosAM
	8SFEY=
X-Google-Smtp-Source: AGHT+IFydq6l6b5JXXNn6gOqeE0yXEq9dZ/J9DKgW7tPI3RiBa0ZAO/jnR4IhHmIeHf5pIqVx18YPw==
X-Received: by 2002:a05:6214:29cb:b0:709:3d74:2ed5 with SMTP id 6a1803df08f44-7099a301143mr35261076d6.29.1754655317080;
        Fri, 08 Aug 2025 05:15:17 -0700 (PDT)
Received: from ziepe.ca (hlfxns017vw-47-55-120-4.dhcp-dynamic.fibreop.ns.bellaliant.net. [47.55.120.4])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-7077cddc290sm112232056d6.63.2025.08.08.05.15.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 08 Aug 2025 05:15:16 -0700 (PDT)
Received: from jgg by wakko with local (Exim 4.97)
	(envelope-from <jgg@ziepe.ca>)
	id 1ukM0B-0000000256j-2zO9;
	Fri, 08 Aug 2025 09:15:15 -0300
Date: Fri, 8 Aug 2025 09:15:15 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Shyam Saini <shyamsaini@linux.microsoft.com>
Cc: iommu@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org, virtualization@lists.linux.dev,
	will@kernel.org, jacob.pan@linux.microsoft.com,
	eric.auger@redhat.com, code@tyhicks.com,
	eahariha@linux.microsoft.com, vijayb@linux.microsoft.com,
	bboscaccy@linux.microsoft.com
Subject: Re: [PATCH v3 2/3] iommu/of: fix device tree configuration for PCI
 devices
Message-ID: <20250808121515.GE377696@ziepe.ca>
References: <20250806215539.1240561-1-shyamsaini@linux.microsoft.com>
 <20250806215539.1240561-3-shyamsaini@linux.microsoft.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250806215539.1240561-3-shyamsaini@linux.microsoft.com>

On Wed, Aug 06, 2025 at 02:55:38PM -0700, Shyam Saini wrote:
> Individual PCI devices lack dedicated device tree nodes, but

This is not the case, you can put PCI devices in the DT as well, there
is a syntax for it. Why not do that and have the FW populate it on the
device node itself?

You should CC all the device tree maintainers on something like this
as well.

Jason

