Return-Path: <devicetree+bounces-192773-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C9759AF7D48
	for <lists+devicetree@lfdr.de>; Thu,  3 Jul 2025 18:07:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4DF2754659E
	for <lists+devicetree@lfdr.de>; Thu,  3 Jul 2025 16:04:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7219023BCE7;
	Thu,  3 Jul 2025 16:03:28 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5260C1BD4F7;
	Thu,  3 Jul 2025 16:03:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751558608; cv=none; b=nLF3REQlD5/4QhwN96LM4JTlrsE3X15dogJgJvh0Z6fU4QPVm9ZnhwFb9ZGxE1KsTa/4ogD6VyVhlEgYoW0noVOjG8cx30mMe4nI19UdvjKFBuNXgJZZwiS8NYTfsDwRJumjwWIvEjtCz9K3mYJCsIjTLYWVn/8VH2n7+8hpT8o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751558608; c=relaxed/simple;
	bh=UuMhKsPsA5TT4OVwbmIA7kbIQ25Ilw+Q6NtT8dG7+eI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Sr8zU/RFNYhKC36bLpNgccaZWc1g6YaQRXTmUkYxTGhx6IRhjER2zoa+Q68ae54ceQzXHroKfnQJJkk9KeQiKAjkLhLaTOr/dipSsl5zLxsrtD4gPkpkjWt7EFG9gNfAzTKG9jDURdhyH+LRZdOrpImg1WSoW247Ut2Yh6i/Skc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6E39CC4CEE3;
	Thu,  3 Jul 2025 16:03:24 +0000 (UTC)
Date: Thu, 3 Jul 2025 17:03:22 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Lorenzo Pieralisi <lpieralisi@kernel.org>
Cc: Marc Zyngier <maz@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Will Deacon <will@kernel.org>,
	Arnd Bergmann <arnd@arndb.de>,
	Sascha Bischoff <sascha.bischoff@arm.com>,
	Jonathan Cameron <Jonathan.Cameron@huawei.com>,
	Timothy Hayes <timothy.hayes@arm.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	"Liam R. Howlett" <Liam.Howlett@oracle.com>,
	Peter Maydell <peter.maydell@linaro.org>,
	Mark Rutland <mark.rutland@arm.com>,
	Jiri Slaby <jirislaby@kernel.org>,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org, linux-pci@vger.kernel.org
Subject: Re: [PATCH v7 15/31] arm64: Disable GICv5 read/write/instruction
 traps
Message-ID: <aGapyvHsFP_xreOj@arm.com>
References: <20250703-gicv5-host-v7-0-12e71f1b3528@kernel.org>
 <20250703-gicv5-host-v7-15-12e71f1b3528@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250703-gicv5-host-v7-15-12e71f1b3528@kernel.org>

On Thu, Jul 03, 2025 at 12:25:05PM +0200, Lorenzo Pieralisi wrote:
> GICv5 trap configuration registers value is UNKNOWN at reset.
> 
> Initialize GICv5 EL2 trap configuration registers to prevent
> trapping GICv5 instruction/register access upon entering the
> kernel.
> 
> Signed-off-by: Lorenzo Pieralisi <lpieralisi@kernel.org>
> Reviewed-by: Marc Zyngier <maz@kernel.org>
> Cc: Will Deacon <will@kernel.org>
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Marc Zyngier <maz@kernel.org>

Acked-by: Catalin Marinas <catalin.marinas@arm.com>

