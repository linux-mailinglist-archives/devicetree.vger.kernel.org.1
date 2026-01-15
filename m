Return-Path: <devicetree+bounces-255499-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B541BD239A6
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 10:37:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 9C1C730616CB
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 09:31:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7495335E526;
	Thu, 15 Jan 2026 09:30:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TklhVvSk"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F6FA33A03A;
	Thu, 15 Jan 2026 09:30:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768469438; cv=none; b=sH9kLwtxcwFhQt7vJ2vjxvlT4C3Y4hsJ/4F6gi0Hub9UFT9tnKm+y4hyEMjHm2LGX3od/SsOcHi2SsJMv+ETexBDhoF5/NIBQj0EdYdrca6M9ng6gcS3v9TmpsxeF8j00gxDHkwIfaVhs3m/Sax+OMMF3sJN9D1gar1GJISjIWw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768469438; c=relaxed/simple;
	bh=7po4v3HVQ6qqRQj1ceHcb4Fh/5z5S/1L/zsYqfwO5Vc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=PTbDEK8GjvPNuRYxdAWbnuFTzcq4JVQ+43AT4Kxhp9rsk9ggnSW8vnZPftV1KT7vGFAMstr8hBCZrffefE3d8OLrosdD0rjUGqLluboJRJrWud7q3OMbNAkz16jR74eIno3GE3SJdypE2wYCOyO0YqaEv4UYPukLpVbp9ckrQTg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TklhVvSk; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5177BC116D0;
	Thu, 15 Jan 2026 09:30:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768469437;
	bh=7po4v3HVQ6qqRQj1ceHcb4Fh/5z5S/1L/zsYqfwO5Vc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=TklhVvSkZNO9i5yCfjRQ2FYD9Sogt7P/3QNv+Z0OH+riH3u2GCCmAtTBxnsGmmgWc
	 jiz1g8hRAsvr0AiRjinjqlrh04Q2cSFWlkLMD1Fn55bZu5bF1H7KnP1ta/5VE/PDoq
	 yrXNCVuDnI44m6Hq5HiVjXUXYlV0jR8Hotd4WaHpbzyKlB71Lqh+7RK48Pt0Ra+8RJ
	 x5I8853uHlUJ8sc/IldcgOpDU7O1/sEWUa/PPQMLXb9Lq93VQHL3ezj0gMr8YS0C40
	 xbkX+hrdRy6c3XvcYq0ISZE7Ur+UF5GveHV010K2X+ZgPKCZRhWGZ89wgkf9F/FCRp
	 XBWNOGxHGrZvg==
Date: Thu, 15 Jan 2026 10:30:35 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Jiayu Du <jiayu.riscv@isrc.iscas.ac.cn>
Cc: conor@kernel.org, robh@kernel.org, krzk+dt@kernel.org, pjw@kernel.org, 
	palmer@dabbelt.com, aou@eecs.berkeley.edu, alex@ghiti.fr, cyy@cyyself.name, 
	dlemoal@kernel.org, devicetree@vger.kernel.org, linux-riscv@lists.infradead.org, 
	linux-kernel@vger.kernel.org, gaohan@iscas.ac.cn
Subject: Re: [PATCH v3 1/2] dt-bindings: riscv: canaan: add 100ask K230
 boards compatible strings
Message-ID: <20260115-muscular-oxpecker-of-typhoon-bbe46f@quoll>
References: <20260115060801.16819-1-jiayu.riscv@isrc.iscas.ac.cn>
 <20260115060801.16819-2-jiayu.riscv@isrc.iscas.ac.cn>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260115060801.16819-2-jiayu.riscv@isrc.iscas.ac.cn>

On Thu, Jan 15, 2026 at 02:08:00PM +0800, Jiayu Du wrote:
> K230 CANMV DSHANPI is a development board produced by 100ASK.
> 
> Add compatible string for the board and its SoM.
> 
> Signed-off-by: Jiayu Du <jiayu.riscv@isrc.iscas.ac.cn>
> ---
>

<form letter>
This is a friendly reminder during the review process.

It looks like you received a tag and forgot to add it.

If you do not know the process, here is a short explanation:
Please add Acked-by/Reviewed-by/Tested-by tags when posting new
versions of patchset, under or above your Signed-off-by tag, unless
patch changed significantly (e.g. new properties added to the DT
bindings). Tag is "received", when provided in a message replied to you
on the mailing list. Tools like b4 can help here. However, there's no
need to repost patches *only* to add the tags. The upstream maintainer
will do that for tags received on the version they apply.

Please read:
https://elixir.bootlin.com/linux/v6.12-rc3/source/Documentation/process/submitting-patches.rst#L577

If a tag was not added on purpose, please state why and what changed.
</form letter>

Best regards,
Krzysztof


