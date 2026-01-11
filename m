Return-Path: <devicetree+bounces-253553-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 35E77D0E914
	for <lists+devicetree@lfdr.de>; Sun, 11 Jan 2026 11:24:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id B27C33000B6F
	for <lists+devicetree@lfdr.de>; Sun, 11 Jan 2026 10:24:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 16299330661;
	Sun, 11 Jan 2026 10:24:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RTMdyW05"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E829A23AB88;
	Sun, 11 Jan 2026 10:24:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768127090; cv=none; b=bb93d73xg4DFH6KOIywqYNuIo6SPia0UPkIEBS6NSQAdw79SJLZ+viNA2xjyXs1aBosN8ZuAQKgJ8n4OhVZM3lM02Cs4khcDVkTcWDxGyRisGUB+T94cJhzkyOOQP6nomldAXtyeCU+trGKmHpJuFcB/2DnfDWqPCU3QLmthAbo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768127090; c=relaxed/simple;
	bh=DL3GzmlN0hpFYtlTU8ZWZz/MqKZSEvQpUMZJcmQG98c=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=lus0vIsNbUePyeEfHhoCFnUP8LHh5RkVkC/9Z3kS20u059MYk0a+xp9PhSm+hes5QSD71CUWexc/bHLjMxjdYXQEbZ9/lu0NgwreSQaLD5qCHfKJsxOdqabmlMpsIKngRQWbEuQvsHFqcXubyVHLkmOtxSnm4lPM60Dm6DE6DDs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RTMdyW05; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 054ABC4CEF7;
	Sun, 11 Jan 2026 10:24:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768127089;
	bh=DL3GzmlN0hpFYtlTU8ZWZz/MqKZSEvQpUMZJcmQG98c=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=RTMdyW05wdKcPjfsldkpS87bpuAbprWbOiOF3d3Csqq6KrCT2yz2qcjS4QnFMnA61
	 RZWBh2UTCUZboDoWk6UzfLQv3tKpx+ML8v90seABJDWHIdbsiGJ3qgxJXkz9VDz/+R
	 a6T3JHwi0BkmNUZ7iKnkze8V+lXR7ge3FEfN47s8+ba95fhzI2LCSTU//Y29/YMOOr
	 iPx2A7hNsMxnLySNuSMARMrjSpRwhHirPICephofhf//DsM21k21fIToF0tQgeAxOu
	 11qpIG7udBkCjqRGYxSD5cXSVlVrTfKvZABt5/X9EyNi7VspdmXJfzy/hBOPBwGIZR
	 n/zf7sYlbplBQ==
Date: Sun, 11 Jan 2026 11:24:47 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Chanho Min <chanho.min@lge.com>
Cc: Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Kever Yang <kever.yang@rock-chips.com>, Kael D'Alcamo <dev@kael-k.io>, 
	Manivannan Sadhasivam <mani@kernel.org>, Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2 1/2] dt-bindings: arm: lg: Add compatible for LG1215
 SoC and reference board
Message-ID: <20260111-magnetic-maroon-quokka-c70b0d@quoll>
References: <20260109082214.1583961-1-chanho.min@lge.com>
 <20260109082214.1583961-2-chanho.min@lge.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260109082214.1583961-2-chanho.min@lge.com>

On Fri, Jan 09, 2026 at 05:22:13PM +0900, Chanho Min wrote:
> Add compatible strings for the LG1215 SoC and its reference board
> (lg,lg1215 and lg,lg1215-ref).
> 
> This SoC is the next SoC following the LG1313 series, developed
> by LG Electronics.
> 
> v2:
>  - Switched to "lg," prefix

Changelog is not part of commit msg usually. Is this expected style for
LG SoC subsystem? None of previous commits follow such style.

> 
> Signed-off-by: Chanho Min <chanho.min@lge.com>

Best regards,
Krzysztof


