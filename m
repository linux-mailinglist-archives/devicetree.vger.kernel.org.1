Return-Path: <devicetree+bounces-254860-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 5463CD1D47C
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 09:55:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 565A3301276C
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 08:51:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AEDA937C102;
	Wed, 14 Jan 2026 08:51:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RuvCw2+q"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 068D737C10F;
	Wed, 14 Jan 2026 08:51:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768380675; cv=none; b=p1s6WaaY6lvexJe4PrkNVGBZ9SRxjap+AYZf4kjinNWnyHGWl1HqMjdzEdI3tepPV6CbFBtkqHCedtbl9ca6O1QzMuPbGempQeUdZErEqIO6u6c6V+28G/G3Bir3H6BljWEzzOT1p3UYCzW74u7xHee4pKOQ5U0emNmA0vEpPXo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768380675; c=relaxed/simple;
	bh=tHwsOI/njW36fmYeCP5unv0K4fnE8sD5VIB2pzlG0f0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=klXxATnCDwCMdIlo7rTU8scTglecNhS/ZaNl9h1CMO1zxwMCMorkEZOwTPXqGgKflH5uSE7sHL1VxjoSFMgcn0u8niwwgJiIFSKqHW0y7hbOlTxhE6dTTeEzvdzBd6ULmtZ3YhxVya+NSWG0dmrU6BSz4nrBr+5W6NtXP1DoElc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RuvCw2+q; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E27B2C4CEF7;
	Wed, 14 Jan 2026 08:51:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768380674;
	bh=tHwsOI/njW36fmYeCP5unv0K4fnE8sD5VIB2pzlG0f0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=RuvCw2+qQkMHeYnLPdoKsLmhApvy8m2/N9xCpUa34KbC5OGehFBObxp+b/JbQqXzz
	 9PHBHU0agGQkLhsvCOMzJgdOFHZFLAhLuLJwNOuIlLFuupmHYxFbrAfQghqt2NLyTg
	 ySrH9vGcTdPODhdSLPfSklzy6+o/hxv6ooMvkZaXJv91qDS6zbnmiupKrNl7+r4SaQ
	 OBR5ZwP+cklDbsPAwVuixJ9uvGrqa4G2uJjfUdmmjfisbYmz1AcEw8ugcj7JWA55NF
	 gD7f7G3bIgK8BFubJQswDYZa4oPMLFHefS89/2nyGCVBEsPRzpFBuQFio+dN4Y8FJJ
	 9N0s+bFCpXrew==
Date: Wed, 14 Jan 2026 09:51:11 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Nick Xie <xieqinick@gmail.com>
Cc: neil.armstrong@linaro.org, khilman@baylibre.com, jbrunet@baylibre.com, 
	martin.blumenstingl@googlemail.com, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org, xianwei.zhao@amlogic.com, 
	christianshewitt@gmail.com, krzk+dt@kernel.org, robh@kernel.org, conor+dt@kernel.org, 
	nick@khadas.com
Subject: Re: [PATCH v2 1/2] dt-bindings: arm: amlogic: add Khadas VIM1S
 binding
Message-ID: <20260114-slick-passionate-mink-216a3a@quoll>
References: <20260114062549.68954-1-nick@khadas.com>
 <20260114062549.68954-2-nick@khadas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260114062549.68954-2-nick@khadas.com>

On Wed, Jan 14, 2026 at 02:25:48PM +0800, Nick Xie wrote:
> Add devicetree binding for Khadas VIM1S board based on
> Amlogic S4 S905Y4 SoC.
> 
> Signed-off-by: Nick Xie <nick@khadas.com>

You still have the same From/SoB mismatch.

> ---
>  Documentation/devicetree/bindings/arm/amlogic.yaml | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/amlogic.yaml b/Documentation/devicetree/bindings/arm/amlogic.yaml
> index 08d9963fe9259..55663e0f7f915 100644
> --- a/Documentation/devicetree/bindings/arm/amlogic.yaml
> +++ b/Documentation/devicetree/bindings/arm/amlogic.yaml
> @@ -247,6 +247,12 @@ properties:
>                - amlogic,aq222
>            - const: amlogic,s4
>  
> +      - description: Boards with the Amlogic Meson S4 S905Y4 SoC
> +        items:
> +          - enum:

Yopu already have exactly such enum with such description, so your
compatible goes there. Look - it is called "Boards" - plural.

> +              - khadas,vim1s
> +          - const: amlogic,s4

Best regards,
Krzysztof


