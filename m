Return-Path: <devicetree+bounces-238970-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C3B0C6041B
	for <lists+devicetree@lfdr.de>; Sat, 15 Nov 2025 12:38:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C7B263B87B8
	for <lists+devicetree@lfdr.de>; Sat, 15 Nov 2025 11:38:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 28BC32877D6;
	Sat, 15 Nov 2025 11:37:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FfiHv6bg"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1CE835CBB7;
	Sat, 15 Nov 2025 11:37:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763206679; cv=none; b=LWxHtIrSgJvqfWmRslWqV2j+BvsfAG4thGfQ4YTnWi3HUa/K3JfKYPNwqAGNhZ8vfVRxuFBHvOAmUb5N8ZmtwlXq+e1bQ6q8QG2HDbDR3JAG1nwYA7UlKe7x9wTCt2MdZobKsdyaUW9dyuQSlDAdBYX5ASHw7u7BsK+Z2UvQZoI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763206679; c=relaxed/simple;
	bh=RyNJr6KEy/iMq/PeGlX/MfabCcw400KzLWVVXMt+6uI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ZxCRIE5OVbHPk/hVeGJ9KpfjJSmxAxrURfSKsMoF8vckGAuaPbaT3EX3SFVbzb0P/5gMaUHE2P7w5xHFJCze+XLwrLhdGoiPsds3/KWok/qNlP758Ql8SwvGTRFa3SMRoIHy+tLfXEBIXJM1PxjW2xYA67FL7itq91MRaEdOBQY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FfiHv6bg; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DB5C2C4AF0B;
	Sat, 15 Nov 2025 11:37:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763206678;
	bh=RyNJr6KEy/iMq/PeGlX/MfabCcw400KzLWVVXMt+6uI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=FfiHv6bgxlCivypemtSc4LdrcLrrKEFwqjnyJIDC/Iy6hRcqL7p3A+1oiH/KlOv8h
	 sn5nkLj5VvSopnQuItaZ5KyscJPMVQaXz5lVxsdSzuV38nXf5uu9fjA25AeCMJP8xk
	 ENtIz8uoP294Ws9sgTVowMrtucdPEnNeuyyISW7M1s6xh2BCeldt5l0Lh70jKVcBRJ
	 T3tYQ97wtfHrV+oJI+jNpfu3rfydg3cOHvqCMSfyodcjfFLI6bNosErKX4bDzbl+l1
	 fIC3fwYw5aPptZ8/WnLTGG99RZt+UTFY/miKy/qLJGB6ZyhoUGMq777T7w62DK7K3b
	 CFmkRPGb2gAHg==
Date: Sat, 15 Nov 2025 12:37:55 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: michael.opdenacker@rootcommit.com
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	heiko@sntech.de, dsimic@manjaro.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/2] dt-bindings: arm: rockchip: Add Asus Tinker Board
 3 and 3S
Message-ID: <20251115-dragonfly-of-fantastic-innovation-9e7f7d@kuoka>
References: <20251114154617.69950-1-michael.opdenacker@rootcommit.com>
 <20251114154617.69950-2-michael.opdenacker@rootcommit.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20251114154617.69950-2-michael.opdenacker@rootcommit.com>

On Fri, Nov 14, 2025 at 03:46:42PM +0000, michael.opdenacker@rootcommit.com wrote:
> From: Michael Opdenacker <michael.opdenacker@rootcommit.com>
> 
> Document the compatible strings for Asus Tinker Board 3 [1] and 3S [2],
> which are SBCs based on the Rockchip 3566 SoC.
> 
> The "3S" version ("S" for "storage") just adds a 16 GB eMMC
> and a "mask ROM" DIP switch to the "3" version.
> 
> [1] https://tinker-board.asus.com/series/tinker-board-3.html
> [2] https://tinker-board.asus.com/series/tinker-board-3s.htm

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


