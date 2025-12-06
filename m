Return-Path: <devicetree+bounces-244926-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id AF8A7CAA480
	for <lists+devicetree@lfdr.de>; Sat, 06 Dec 2025 11:59:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 6261A300B689
	for <lists+devicetree@lfdr.de>; Sat,  6 Dec 2025 10:59:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 63D5D2EBBAA;
	Sat,  6 Dec 2025 10:59:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bioRNtsb"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39FC3199FBA;
	Sat,  6 Dec 2025 10:59:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765018783; cv=none; b=o/R172ZFAnMV9QikwEyLjcW9XeR9Ow+EHzT67M/PjYzcirbBoc/kx0Ta44fE3TMdZSkqV78iLqGPdpkY9RM7T+UWGy36Gj/26MB2f9CnHvBP+G6x+h3/8lfsFgplwkMcNx1CTikQOKvhYG62xtxqzfTfMT7kJWA3VSCP1eMJwJU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765018783; c=relaxed/simple;
	bh=mVtxHvfKDSwsOF+k/I1O7IvZGQN9zzUOSWGgR6lRQHk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=MZj0ZtQaLMCxAcGNf63fniZBi6xXLwjKfJYtGf6pvu/EoNXBZLPOJYwxjzQupmaUlFz3x4B5uwANTgsydvYnvv/RApYgdGmEGm0tjKwrBFxxDGKKE70na987WKlpp95i14h+K0ay+AbTRyH8ZU39KLI5XADpQS0JYGwarmxDB4E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bioRNtsb; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 48AE5C4CEF5;
	Sat,  6 Dec 2025 10:59:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765018782;
	bh=mVtxHvfKDSwsOF+k/I1O7IvZGQN9zzUOSWGgR6lRQHk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=bioRNtsbUPd/wMgtQikuvLXC551V7dJnfwL7rRkhAQbu4agfVklkXO4VWU8kVqBi7
	 rAzh0xQ1eE91ssqZoyYCEd8SGDY3e8e2dWGRcx61oqdrpSG5GfUFRmhWr1u9MeXTPg
	 9ydXezHRoYQOvBHeikzFmomGInrqfpdzRrioGTo4bDoqxx1sKCGBxE6Pp4TwXUtuv2
	 jSDvmHJSPjIW/sNHuOcvCv35sV/coi7nCLpLzRn/poFCk60DRrYzmMlgwHykXbxJHB
	 5gYVweNpTKc119rvA11Ug8lYqOUga6kVqxhFnbUUd02Yl+NsG3J6HG126n39pKf3Zj
	 dgbH7fR9QiFsw==
Date: Sat, 6 Dec 2025 11:59:40 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Joan-Na-adi <joan.na.devcode@gmail.com>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
	Joan Na <joan.na@analog.com>
Subject: Re: [PATCH v7 1/2] regulator: dt-bindings: Add MAX77675 regulator
Message-ID: <20251206-acrid-jellyfish-of-sufficiency-0b1b23@quoll>
References: <20251205045648.3725-1-joan.na@analog.com>
 <20251205045648.3725-2-joan.na@analog.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20251205045648.3725-2-joan.na@analog.com>

On Fri, Dec 05, 2025 at 01:56:47PM +0900, Joan-Na-adi wrote:
> From: Joan Na <joan.na@analog.com>
> 
> Add device tree binding YAML schema for the Maxim MAX77675 PMIC regulator.
> 
> Signed-off-by: Joan Na <joan.na@analog.com>

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

Or REALLY please read the exact paragraph I linked here.

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>

Best regards,
Krzysztof


