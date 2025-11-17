Return-Path: <devicetree+bounces-239310-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 91E46C63E2E
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 12:44:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by tor.lore.kernel.org (Postfix) with ESMTPS id A384B2403A
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 11:44:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 874ED32A3D7;
	Mon, 17 Nov 2025 11:43:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LHsvRWy4"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F0C6329E75;
	Mon, 17 Nov 2025 11:43:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763379827; cv=none; b=ZzgQPzqn7xDaQwrcpZ0nfs7oEuaxBzKyLW02aUEoRhuHaR4NFbEPy4X6Iggdvq90CQfs1VSXz5p9OjekYnmMtSzk/qsJ1Ki2GsCyVNN6GwTEVQ53BSLpT5PsOuSEMc7SjqB1kxefEUWt7P0wLG9klcf6H8t/p3C+vLdy9H1P19Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763379827; c=relaxed/simple;
	bh=pL4s37Y7gyj47zNd4AAy9LwDBdgFe+R+cwMwH3NeqrE=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=Ft9pmVsgQ++hI+hZn7i2e02l4zOd4lVCTZW7MBeXZh8MVq5gx400Cpk/b2i5+sY89Q1VlZNqSTrTM5KDOde98W8wJzXFvNG1iHrsWoDavC6gd3G8OyLSwlUt9atgQSK/PWipcWJbjJ+5JPRZ+b4rBlzoRpMdaxLI1K4Xf4LO1rA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LHsvRWy4; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7B467C4CEF1;
	Mon, 17 Nov 2025 11:43:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763379827;
	bh=pL4s37Y7gyj47zNd4AAy9LwDBdgFe+R+cwMwH3NeqrE=;
	h=Date:Subject:To:References:From:In-Reply-To:From;
	b=LHsvRWy4n2KagqpwvoZS1dZx0wi3Lepy3882w7eYK6q5AiMSYMNHZcnxqThxkFXtO
	 KnI4R+K3OoQdNOqfJYaiTPZF1Wkjm7/m6wFMB7CIsHWRGFG51fWujch7iy3M38Uw/h
	 3u9Ty7xALhs19vWZRkC3lAf0vNLq1MguKmGHjf1zg6sKEhD7vpBmE3VeKQAlW+nHeE
	 bkmHNrNWSiPCen3z9j2wJ+YNL6FPtVk4xcPU4jgCIBR+s6PW5ICZvYtxh90A5r5csX
	 m0fOwThtYThyooLn8986ivdAedT38UYrVcdM+4APjfLSMSWgNuMm0Mzy/mDe8BRo7C
	 qr4hU1+KIB9Ig==
Message-ID: <49ba6e9a-4ce7-48d8-932b-e164e57309a4@kernel.org>
Date: Mon, 17 Nov 2025 05:43:45 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: socfpga: agilex5: update qspi partitions for
 013b board
To: niravkumarlaxmidas.rabara@altera.com, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20251114154017.1523720-1-niravkumarlaxmidas.rabara@altera.com>
Content-Language: en-US
From: Dinh Nguyen <dinguyen@kernel.org>
In-Reply-To: <20251114154017.1523720-1-niravkumarlaxmidas.rabara@altera.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 11/14/25 09:40, niravkumarlaxmidas.rabara@altera.com wrote:
> From: Niravkumar L Rabara <niravkumarlaxmidas.rabara@altera.com>
> 
> Update qspi flash partitions to support Remote System Update (RSU).
> 
> Signed-off-by: Niravkumar L Rabara <niravkumarlaxmidas.rabara@altera.com>
> ---
> 
> This patch is based on socfpga maintainer's tree
> https://git.kernel.org/pub/scm/linux/kernel/git/dinguyen/linux.git/log/?h=socfpga_dts_for_v6.19
>   
>   arch/arm64/boot/dts/intel/socfpga_agilex5_socdk_013b.dts | 6 +++---
>   1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/intel/socfpga_agilex5_socdk_013b.dts b/arch/arm64/boot/dts/intel/socfpga_agilex5_socdk_013b.dts
> index 37ff715b7928..f71e1280c778 100644
> --- a/arch/arm64/boot/dts/intel/socfpga_agilex5_socdk_013b.dts
> +++ b/arch/arm64/boot/dts/intel/socfpga_agilex5_socdk_013b.dts

Applied!

Thanks,
Dinh

