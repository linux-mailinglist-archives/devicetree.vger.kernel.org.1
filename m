Return-Path: <devicetree+bounces-168234-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AA167A91EA7
	for <lists+devicetree@lfdr.de>; Thu, 17 Apr 2025 15:49:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9C3778A0EFF
	for <lists+devicetree@lfdr.de>; Thu, 17 Apr 2025 13:49:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6F32D238165;
	Thu, 17 Apr 2025 13:49:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rosenzweig.io header.i=@rosenzweig.io header.b="0cHKdrEI"
X-Original-To: devicetree@vger.kernel.org
Received: from out-177.mta1.migadu.com (out-177.mta1.migadu.com [95.215.58.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F27823F420
	for <devicetree@vger.kernel.org>; Thu, 17 Apr 2025 13:49:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=95.215.58.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744897781; cv=none; b=qIpMKT88f+EACI5LfC3HPFTQ7TpXCqnyRFAoJKr2BCcY0lV/gCsnYU6zoYJgbu5xXn6AqB/+Hn5z13Dcm0P6WcHpfAzyXUN17g50vXN1BzflTqdO9RoZ6GwfSqqx7kbzeQd0cey9j7cZwCMXskOREDMSee5kyJLj+rztP3vjkF4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744897781; c=relaxed/simple;
	bh=dkb+icaACUZIbyG7K3Hkb/Ao7A4rs1DYlRtFW0eXFh8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=WjEtc2Y6hAwXBQMJZr7mXzeYAWn6CmQUk7g06hCqqtUpL5T1m++NFhE3+6jAiBm6qR5/8cfEZ/1pymjzqLlnA+y88/KWgfgVv62NNIq2HHGfdIoTmwQ6Czi9hGrbT3x6+7bX78I7tSnYq3iKKqRMvXF3RQXycrFAsmqjSmCr9aI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=rosenzweig.io; spf=pass smtp.mailfrom=rosenzweig.io; dkim=pass (2048-bit key) header.d=rosenzweig.io header.i=@rosenzweig.io header.b=0cHKdrEI; arc=none smtp.client-ip=95.215.58.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=rosenzweig.io
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rosenzweig.io
Date: Thu, 17 Apr 2025 09:49:28 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=rosenzweig.io;
	s=key1; t=1744897775;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=3qb5qcUkVqoqTANb8er0vsrSQ+//z69cq30K77YtSYw=;
	b=0cHKdrEI6AjJ3/G+2nZkkSZ3jBm8hhaDffU2CmEbFtCZ81mgvivxImAmK19WY+8e+r8lkr
	4O2shhmntrbpDYGuyL+OWBKeIWZqc6+rdHdPn0gyfVu1lB9NMvJxuqsTNiWUgNxwpX1OyB
	wp4aDIPzWecyklVAmjJIthheS3yPnr/KTpywWeRjPsJ9He2x2ItR6JJOVNH6W+0Bi4aBPU
	+kjCbYqVjUAwv2oYopj5mUZyPH4R+jHqc9v4oBGzPYgMdrg3rp0YnBrPvkjjAPcwEKgWhr
	01Pyy1vvTOAR/yVegEBIVzWMX2XXXNlIhWElSswXbN0PDUqZA9eV+Dx/AzXHTw==
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Alyssa Rosenzweig <alyssa@rosenzweig.io>
To: Srinivas Kandagatla <srini@kernel.org>
Cc: fnkl.kernel@gmail.com, Sven Peter <sven@svenpeter.dev>,
	Janne Grunau <j@jannau.net>, Neal Gompa <neal@gompa.dev>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, asahi@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, Hector Martin <marcan@marcan.st>
Subject: Re: [PATCH 2/3] nvmem: Add spmi-nvmem driver
Message-ID: <aAEG6D2hjtVOlhS4@blossom>
References: <20250415-spmi-nvmem-v1-0-22067be253cf@gmail.com>
 <20250415-spmi-nvmem-v1-2-22067be253cf@gmail.com>
 <81fb1290-fb39-40b7-9d79-f147fae5b269@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <81fb1290-fb39-40b7-9d79-f147fae5b269@kernel.org>
X-Migadu-Flow: FLOW_OUT

> > +config NVMEM_SPMI
> > +	tristate "Generic SPMI NVMEM"
> > +	default ARCH_APPLE
> Why default is set to ARCH_APPLE?
> 
> This will endup with y in arm64 defconfig, means increasing the size of
> kernel.

I mean, eventually I think we /do/ want M1 properly supported in the
arm64 defconfig, no? I'm not sure what the criteria is for any other
driver to be defconfig or not, though.

