Return-Path: <devicetree+bounces-151412-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E034A45BC0
	for <lists+devicetree@lfdr.de>; Wed, 26 Feb 2025 11:29:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3A63E18897E8
	for <lists+devicetree@lfdr.de>; Wed, 26 Feb 2025 10:29:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4B8772459DA;
	Wed, 26 Feb 2025 10:29:43 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C9F4519CC11;
	Wed, 26 Feb 2025 10:29:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740565783; cv=none; b=QwKMP3RW3+wGDOI8ZkJ5paoy1nVvTLjSCnFZJD0dhCSF/TFdZKu5btQA3RiLPiYzK+WuKGPV/7PUSVTI8BGmMm9Xk4OtTjDDzbwrcvFxA/t2L26plMk4OqY14kfDrYb+bEZosdAPoUSjIbQd1Wz+1WHuiU6SSThFyXOXknCr978=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740565783; c=relaxed/simple;
	bh=RlUYGEUxy9K5HaDO00v9WvQaO74sAGsT8jOGOdcqc1I=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=dIs14RGJWk5mvsxAgSziyUJQHyEPpyWjd5SUrFI04372QVgERtaaWJaREJfiUuBe6t1HySu2Ys/JIT6SWBkwcYmfT2RziyMXqNCM40Au2UcnFk69U5RAiOHUcntCGPVlP50OwJ8dGqG905A93meh8MsSznHDlsMQK5q7KZP0dxY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 007A31BA8;
	Wed, 26 Feb 2025 02:29:57 -0800 (PST)
Received: from bogus (e133711.arm.com [10.1.196.55])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 831503F6A8;
	Wed, 26 Feb 2025 02:29:38 -0800 (PST)
Date: Wed, 26 Feb 2025 10:29:35 +0000
From: Sudeep Holla <sudeep.holla@arm.com>
To: Vincenzo Frascino <vincenzo.frascino@arm.com>
Cc: <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
	<linux-arm-kernel@lists.infradead.org>,
	Linus Walleij <linus.walleij@linaro.org>,
	Sudeep Holla <sudeep.holla@arm.com>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Liviu Dudau <liviu.dudau@arm.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Russell King <linux@armlinux.org.uk>, Will Deacon <will@kernel.org>,
	Mark Rutland <mark.rutland@arm.com>,
	Jessica Clarke <jrtc27@jrtc27.com>
Subject: Re: [PATCH v6 06/10] perf: arm_pmuv3: Add support for ARM Rainier PMU
Message-ID: <Z77tD1VuD_W0CK5B@bogus>
References: <20250220180427.3382482-1-vincenzo.frascino@arm.com>
 <20250220180427.3382482-7-vincenzo.frascino@arm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250220180427.3382482-7-vincenzo.frascino@arm.com>

On Thu, Feb 20, 2025 at 06:04:24PM +0000, Vincenzo Frascino wrote:
> Add support for the ARM Rainier CPU core PMU.
>

I can't take this through Arm SoC unless there is a strong dependency
and/or urgency. I can take 05/10. The other option is you can take
05 and 06/10 via Will's perf changes as usual as I they seem quite
independent to me.

I can take the rest of the patches through Arm SoC tree for next merge
window.

-- 
Regards,
Sudeep

