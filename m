Return-Path: <devicetree+bounces-255485-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BF2CD23A87
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 10:44:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 7F316304F6FD
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 09:28:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D551435CB96;
	Thu, 15 Jan 2026 09:28:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YCcVLdY2"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B273435B14A;
	Thu, 15 Jan 2026 09:28:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768469280; cv=none; b=JwF5b5PtFdmd1/xmUB7Dj/vuYYiJXC8vNIGuWClgNyt8dl8hKY932Yb4j+tbfgxT/n6NiRPIbUlb2KkWkocr1HjL6JgTet4+Hk2f/SIO8CKcdkk5V0qzQFGdQoEDbEbqpQIYUKCTk/eB4M5R924qcqWzIBB8an+XhT1CK37jmmA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768469280; c=relaxed/simple;
	bh=AE8OschsBHDZ7fd7Wfcbb8XnsmM+g7YOHuxXkR+JC68=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=SItF9w3o4oGydSXb5w7LvkkxdPBEzsfmqSbMhbvSt4TC8oEUEnsZvplVx5dn/ElVMijoTAY1NAKPGLb53T9zR6k0xJ+9z/Q6sj5FBZEcGDBm5MKJWETpwbjrqQ8mtjfrcqc3qeECVCszsx+L+biYQmr3BHP1NzbPUCgAMDnK4RA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YCcVLdY2; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AE455C116D0;
	Thu, 15 Jan 2026 09:27:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768469280;
	bh=AE8OschsBHDZ7fd7Wfcbb8XnsmM+g7YOHuxXkR+JC68=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=YCcVLdY2aNq4HFLq2jzUkFSvvBvLL0taVpC72YLMYncvVX39GW5CmoIbcr1MCxOPJ
	 tqlXAY3qM5j5komenfwMSFSiEf3rx2c7GrrzEKB42l1ZRJa5VdbJkk0hknW+WAAHdc
	 VKI2dsTZn50pfM0K/W2jgNWYPPq1Jd+jBVrHhRlp8N16FWsyIZGifgSqcdBXOGAQPi
	 WLEvgxsgxuiYMAtEWUOtPRHYv6iYI7EByprY3lc8DCZtym8igGqBzI1ewtP+CRGD31
	 iqfIU9NagTwfRp+9giT+oHKD8Hw5k1lSSc7l8jsxWKUBT6MhJknAAdyWhqrFtGUzU6
	 V3CELGiNNKsDw==
Date: Thu, 15 Jan 2026 10:27:57 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Nick Xie <nick@khadas.com>
Cc: neil.armstrong@linaro.org, khilman@baylibre.com, jbrunet@baylibre.com, 
	martin.blumenstingl@googlemail.com, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org, xianwei.zhao@amlogic.com, 
	christianshewitt@gmail.com, krzk+dt@kernel.org, robh@kernel.org, conor+dt@kernel.org, 
	nick@xieqinick.com
Subject: Re: [PATCH v3 1/3] dt-bindings: arm: amlogic: introduce specific
 compatibles for S4 family
Message-ID: <20260115-aquamarine-snail-of-control-f87a3e@quoll>
References: <20260115030015.1334517-1-nick@khadas.com>
 <20260115030015.1334517-2-nick@khadas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260115030015.1334517-2-nick@khadas.com>

On Thu, Jan 15, 2026 at 11:00:13AM +0800, Nick Xie wrote:
> The Amlogic S4 SoC family includes multiple variants, such as the S805X2
> and S905Y4. Currently, the bindings only define the generic "amlogic,s4"
> compatible.
> 
> This patch introduces specific compatibles "amlogic,s805x2" and
> "amlogic,s905y4" to properly differentiate these SoCs while keeping
> "amlogic,s4" as the family fallback.
> 
> This allows for more precise hardware description and future-proofing
> if SoC-specific quirks arise.
> 
> Signed-off-by: Nick Xie <nick@khadas.com>
> ---
>  Documentation/devicetree/bindings/arm/amlogic.yaml | 8 ++++++++
>  1 file changed, 8 insertions(+)

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


