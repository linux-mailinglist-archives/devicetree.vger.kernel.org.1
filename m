Return-Path: <devicetree+bounces-249597-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id D1F97CDD1FF
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 23:48:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 4FAC9301A5A9
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 22:48:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BFC4C2F0C78;
	Wed, 24 Dec 2025 22:48:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cdKQ2EGz"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 948DA295DA6;
	Wed, 24 Dec 2025 22:48:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766616524; cv=none; b=kvQmz0wNeVo1NwDNvNnKYCq6cedO2xUU57fUoOCSj5D8SK+/4sT2MnvHab+js2PYhj1eelWkkVcugyO5VW/NF+mqQKe1DVsSuRoJx4+hRXJCqvoUssXHPIxpI1TvRPRYLFNooF6v0+mEwWWETVjbs9yiW3genEIZeg6Z2h0YOG0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766616524; c=relaxed/simple;
	bh=pnbvEwGNI6TF771DkplCvslfTR2GTnABbOrBdwuW9ek=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=V21fDeeP83DELu+fajERtu2Rt4w8P4x7Imh7zGBh/1onr+OytNIwCjgvjK4zQOUglceENfL5DqpQCAjdAzd3A3E4X7DaT10HHu9OIx2j01h1yJVHkpkQIMOpNsmCbtZlx2ulyI5+QuMvevEPP4qxG937RfSfjAlH1AgFOsStdxE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cdKQ2EGz; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E0559C4CEF7;
	Wed, 24 Dec 2025 22:48:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766616524;
	bh=pnbvEwGNI6TF771DkplCvslfTR2GTnABbOrBdwuW9ek=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=cdKQ2EGzHz8Ri2yX5GbdjVSKBN5zuYqZSS5g36vxHG6JCjhm/TIL9Ed9IK/oNvomD
	 2fD76805UH+BLl4bWnPsJZ13W5V9TZosoHTw9LbdD+RH2FjY3Vz7YHLarrF0AGoWQw
	 IupS+jG/z+ha0W3TRIrbxIfu9cS90u2KKpDLRje62IcK7jX61r+ZW2/2gOJv1v22K9
	 ijbB1aVC4Nf1c6SmnrcqUn1ALm3QhCaWWnP2iY7wCWHc6Z1PIuC3lwGTdriUD7Bx5O
	 bVlvBlM+Xr0zA3x4FUB7JUlx2+HYwYUw0489jR8x/dlS569DKqZipYkZrDIn8Wf8u+
	 6dbU/gB4sX5eA==
Date: Wed, 24 Dec 2025 14:48:41 -0800
From: Drew Fustini <fustini@kernel.org>
To: yunhui cui <cuiyunhui@bytedance.com>
Cc: Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>,
	Conor Dooley <conor@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Kornel =?utf-8?Q?Dul=C4=99ba?= <mindal@semihalf.com>,
	Adrien Ricciardi <aricciardi@baylibre.com>,
	James Morse <james.morse@arm.com>,
	Atish Kumar Patra <atishp@rivosinc.com>,
	Atish Patra <atish.patra@linux.dev>,
	Vasudevan Srinivasan <vasu@rivosinc.com>,
	Conor Dooley <conor.dooley@microchip.com>, guo.wenjia23@zte.com.cn,
	liu.qingtao2@zte.com.cn, linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v4 0/3] RISC-V: Detect Ssqosid extension and handle
 srmcfg CSR
Message-ID: <aUxtySYYiAk1WjNt@x1>
References: <20251007-ssqosid-v4-0-e8b57e59d812@kernel.org>
 <CAEEQ3w=3pte5=CR9-R3rmCGFZ9ErJ9YcWS9i=JwPUb1Ty3ipwQ@mail.gmail.com>
 <aOmA8DNt/y+WxT97@x1>
 <CAEEQ3wmHH6=ZNCEq3hV6Cmf7gGd0kZsH-3VYr6awZmPCz8h_cA@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAEEQ3wmHH6=ZNCEq3hV6Cmf7gGd0kZsH-3VYr6awZmPCz8h_cA@mail.gmail.com>

On Wed, Dec 24, 2025 at 04:40:26PM +0800, yunhui cui wrote:
> Hi Drew,
> 
> [3] https://lore.kernel.org/all/20250910204309.20751-1-james.morse@arm.com/
> seems to have been merged into the mainline. Do you plan to submit a
> series of ssqosid + cbqri patches with ACPI support?
> 
> Thanks,
> Yunhui

Hi, yes, I plan do that by the end of next week. I got feedback on the
kernel Ssqosid series that I should focus fist on upstreaming the Qemu
implemenation as there is no public hardware implementation yet. There
was a lot that needed to be cleaned up in the Qemu patches and I'm
finally near the end of addressing all the feedback.

I'm about to post a new revision of the Qemu series and then I'll rebase
and post the kernel ssqosid+cbqri patch series. The initial series will
just have the DT-based support. I plan to cleanup the Qemu patches for
the RQSC and PPTT tables and then I will post the RQSC kernel patches.

Thanks,
Drew

