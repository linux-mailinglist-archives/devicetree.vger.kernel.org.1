Return-Path: <devicetree+bounces-132395-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 47A089F6E35
	for <lists+devicetree@lfdr.de>; Wed, 18 Dec 2024 20:30:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2880D188C504
	for <lists+devicetree@lfdr.de>; Wed, 18 Dec 2024 19:30:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5B70A1FC0F7;
	Wed, 18 Dec 2024 19:29:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MTLM1y9+"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30CDF155359;
	Wed, 18 Dec 2024 19:29:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734550185; cv=none; b=VpN7SII7h5qHwthQiYCBxjEd1Qj01sDXjrwxTvMsTwEyJJUv+1XH0usntJDcUfRsNdyWelQgdTM2xE/an6II6Myj9RBTH4vkFczpuvxwDvBJ4Avn0muzCoKPMbMg+y8BgDAq0uB4koW5m3a9+zJA+5KxFoAmWVwptDBrWVndgWA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734550185; c=relaxed/simple;
	bh=hpHX0UvlDSyx5pI6TYm4aijPyLWk5pW7U6lcQ6Ug62M=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=jZdI2tPSiTCMM1TuBjaWE+GigdA0m3xDTaGjhfREa6ahROXG4mLsAl85z6nv6qd6OQ6ohFT7AsIqfXcdh3NixxkcRUCyp8S3SokQFM342hwK1LGJ8UqnkcsK9oAhTAC3SYjuDGV2f09g+JcA0Yfj8oZDhyPvlg1hN8xNfWr/UNY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MTLM1y9+; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4CB43C4CECD;
	Wed, 18 Dec 2024 19:29:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734550184;
	bh=hpHX0UvlDSyx5pI6TYm4aijPyLWk5pW7U6lcQ6Ug62M=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=MTLM1y9+BaliZsAek+5vTR03HZ4lRIiGx3QMAcZopwX5TDjKj2wifgN+BF2zRiznq
	 ofdT9C+vTHx++rtK6H24eRP222dWLDeBfN8R8qMgNoSatfP8wo733evdTQwOp+xMB/
	 o9Sn99LrH/jy2Rb4xyPq41WU6PdTC8/Fta+POJjdrkPCyjTN9TH/wC39Haf4Siig2A
	 KSA//35IZw/pvAGLe1qJuUz+xocCL3ttaSpbEjWkyWrkywaAdRzdn0pt2PuwqL+dEX
	 TNFV8nyhVl+FV62uyPgtgQNTi/Jd1nEZUaDK0kRMHi15DviqjElrlEbfzdEv+mxNAN
	 fTlKl8PD07R+A==
Date: Wed, 18 Dec 2024 13:29:42 -0600
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
	Thomas Gleixner <tglx@linutronix.de>, linux-kernel@vger.kernel.org,
	Conor Dooley <conor+dt@kernel.org>, Marc Zyngier <maz@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>
Subject: Re: [PATCH] dt-bindings: interrupt-controller: arm,gic: Correct VGIC
 interrupt description
Message-ID: <173455018100.2198330.12077558801772545243.robh@kernel.org>
References: <20241217061226.14139-1-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241217061226.14139-1-krzysztof.kozlowski@linaro.org>


On Tue, 17 Dec 2024 07:12:26 +0100, Krzysztof Kozlowski wrote:
> The description of VGIC interrupt referenced obsolete "see below" after
> converting TXT to DT Schema in commit 66ed144f147a ("dt-bindings:
> interrupt-controller: Convert ARM GIC to json-schema"), because there is
> no dedicated "VGIC" chapter anymore below.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
>  .../devicetree/bindings/interrupt-controller/arm,gic.yaml     | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 

Applied, thanks!


