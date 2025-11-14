Return-Path: <devicetree+bounces-238451-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CA73C5B517
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 05:30:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 537B9348864
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 04:30:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CBA8F2C0F8F;
	Fri, 14 Nov 2025 04:30:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b="QGP5Yb12"
X-Original-To: devicetree@vger.kernel.org
Received: from codeconstruct.com.au (pi.codeconstruct.com.au [203.29.241.158])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27D2A2C08A1;
	Fri, 14 Nov 2025 04:30:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=203.29.241.158
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763094615; cv=none; b=nUHDiGDvp8n0j+6zzPjQonYNYFd6feUsoKS2o7YWpJr4U17c44xJKFAE5KGHmx+FY7Rdndc4swBNz2ORMv7pJD5WUfpoRImzQj5zixoHBtdavXYLhITtCM3/Dfuj3VPMbRu80yx6vsOH6kqNdbH5ZUgGwWYOmymJUcUY9J3mVzg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763094615; c=relaxed/simple;
	bh=Asl2n77HU3heubUqSeGFUaLgvo8IPQ436F0WxE2PGX0=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=JBI2/ZqAziKZpEayuPduMDqSL0QEPuGC49whFUnXBCTkX3Onf+CG66jc1Qo9jxAtU+6+IaOffkIKSPIz8d+JGL+WD+fEeq3QIBVnnm34w7VjbYEB52uST5Drr3rnG/qvjp9xD43x63zRR0HUpNAex5W4WYslRVtstwARD4BK+tU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au; spf=pass smtp.mailfrom=codeconstruct.com.au; dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b=QGP5Yb12; arc=none smtp.client-ip=203.29.241.158
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=codeconstruct.com.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=codeconstruct.com.au; s=2022a; t=1763094611;
	bh=Asl2n77HU3heubUqSeGFUaLgvo8IPQ436F0WxE2PGX0=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References;
	b=QGP5Yb12xJXFWdCyPoGzgklbAoRrvIoeVYaYzwPUwi/V8gT/P5FinrJrjwHjkbOWy
	 p4FYmlSlNYNesjTZv5fQCYPAeiOLm2DNRu43/KuC87rM7+qUrXKkvRitIwPTm/PZ+W
	 SCpvrIHopL8h75j8jx4QZHqb22sftUNvwBSD1KvP2yo3BKam7OG99V32+ahF0Zh5ue
	 x+inRUwUd6T70FtkiQjTFKzmeQh6W96EHdRsSvfqW6o2s3/8u/ofdsBOM0b/VEjLVr
	 12pgtYVKulZNx7duVVG0sSTG+kVo00wauh4v3XyM2hMNxLv1Dsc6O+zIR9k9+4FJI3
	 eVm1DjAZbHmdg==
Received: from [192.168.68.115] (unknown [180.150.112.244])
	by mail.codeconstruct.com.au (Postfix) with ESMTPSA id 5BE61783DF;
	Fri, 14 Nov 2025 12:30:11 +0800 (AWST)
Message-ID: <a4d3dc7e6186f41f5bae9135574c21411826e554.camel@codeconstruct.com.au>
Subject: Re: [PATCH v6 0/2] ARM: dts: aspeed: Add Device Tree for Facebook
 Anacapa BMC
From: Andrew Jeffery <andrew@codeconstruct.com.au>
To: Peter Shen <sjg168@gmail.com>
Cc: Joel Stanley <joel@jms.id.au>, Rob Herring <robh@kernel.org>, Krzysztof
 Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 devicetree@vger.kernel.org, 	linux-arm-kernel@lists.infradead.org,
 linux-aspeed@lists.ozlabs.org, 	linux-kernel@vger.kernel.org,
 peter.shen@amd.com, Krzysztof Kozlowski	 <krzk@kernel.org>
Date: Fri, 14 Nov 2025 15:00:11 +1030
In-Reply-To: <20251112211248.3711889-1-sjg168@gmail.com>
References: <20251112211248.3711889-1-sjg168@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.1-1+deb13u1 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

On Thu, 2025-11-13 at 05:12 +0800, Peter Shen wrote:
> This patch series adds the device tree binding and the initial device tre=
e
> source file for the Facebook Anacapa BMC, which utilizes the Aspeed AST26=
00
> SoC.
>=20
> The patches configure the necessary platform peripherals and aliases for
> OpenBMC usage.
>=20
> ---
> Changes in v6:
> - Rebased onto the latest upstream kernel (v6.18-rc5+) to minimize potent=
ial merge conflicts.
> - Restarted the patch series submission as a **NEW THREAD** to fix the in=
correct threading/In-Reply-To usage in v5, as advised by the maintainer.
> - The email sender address (From:) is now corrected to fully match the Si=
gned-off-by: and Author: address (sjg168@gmail.com), fixing the DCO mismatc=
h issue reported against v3/v4.
> - Corrected all previous style issues: fixed block comment styles, line l=
ength issues, and removed un-documented/unused device tree nodes (amd,helio=
s_cpld and eeprom@53).

I recommend using b4 to manage your patch series. Using `b4 send`
automatically tracks your series submission and adds links to prior
versions to your cover letter. This makes it easier for us to track
down feedback and changes.

Andrew

