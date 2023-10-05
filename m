Return-Path: <devicetree+bounces-6094-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E2DD97B9D78
	for <lists+devicetree@lfdr.de>; Thu,  5 Oct 2023 15:45:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sy.mirrors.kernel.org (Postfix) with ESMTP id 92953B209A3
	for <lists+devicetree@lfdr.de>; Thu,  5 Oct 2023 13:45:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E4BEB20B31;
	Thu,  5 Oct 2023 13:45:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kUYID7x6"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C029620B08
	for <devicetree@vger.kernel.org>; Thu,  5 Oct 2023 13:45:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 99550C4AF75;
	Thu,  5 Oct 2023 13:45:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696513532;
	bh=vqu+fFoHGpohKG1mWSUhsvBpzumWkJeROSRoIa9+DVo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=kUYID7x6le67JFoKgGTzvbOTjyJO9NDAdrJ3AEs17CFNCTmHQB3iiehmDUoGRvI16
	 RTQK/rSA7fykjZtx5smqscln90NaNT25zQ9duynurs9ANBT1K8US5Tu+y2xCEymowP
	 pfOsKPNNJ38+ogNc3HROV3NlPWkeHwb4NOYgcnKpmXLBM7zsS+6Y3ykVnNibdrogC/
	 YLJ1XeiljTIxcifJNOLabr9iZ+pQZdGzKl/yptPIb/7yS77O8RR/3KLj3ki3Acv3aJ
	 Y39WVOS2TYW5MsSoApmvY+QPjLAUQ1YA5u1nPxPs+BlkipZ8paTR1ejwC7Qyu4y5rw
	 KsSnKTuLL0aVw==
Date: Thu, 5 Oct 2023 14:45:25 +0100
From: Lee Jones <lee@kernel.org>
To: Anjelique Melendez <quic_amelende@quicinc.com>
Cc: pavel@ucw.cz, thierry.reding@gmail.com, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	agross@kernel.org, andersson@kernel.org, luca.weiss@fairphone.com,
	konrad.dybcio@linaro.org, u.kleine-koenig@pengutronix.de,
	quic_subbaram@quicinc.com, quic_gurus@quicinc.com,
	linux-leds@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
	linux-pwm@vger.kernel.org, kernel@quicinc.com
Subject: Re: [PATCH v5 7/7] leds: rgb: Update PM8350C lpg_data to support
 two-nvmem PPG Scheme
Message-ID: <20231005134525.GG681678@google.com>
References: <20230929003901.15086-1-quic_amelende@quicinc.com>
 <20230929003901.15086-8-quic_amelende@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230929003901.15086-8-quic_amelende@quicinc.com>

On Thu, 28 Sep 2023, Anjelique Melendez wrote:

> Update the pm8350c lpg_data struct so that pm8350c devices are treated as
> PWM devices that support two-nvmem PPG scheme.
> 
> Signed-off-by: Anjelique Melendez <quic_amelende@quicinc.com>
> ---
>  drivers/leds/rgb/leds-qcom-lpg.c | 8 +++++---
>  1 file changed, 5 insertions(+), 3 deletions(-)

Reviewed-by: Lee Jones <lee@kernel.org>

> diff --git a/drivers/leds/rgb/leds-qcom-lpg.c b/drivers/leds/rgb/leds-qcom-lpg.c
> index 910c7cf740cc..8962ea13df29 100644
> --- a/drivers/leds/rgb/leds-qcom-lpg.c
> +++ b/drivers/leds/rgb/leds-qcom-lpg.c
> @@ -1800,11 +1800,13 @@ static const struct lpg_data pm8150l_lpg_data = {
>  static const struct lpg_data pm8350c_pwm_data = {
>  	.triled_base = 0xef00,
>  
> +	.lut_size = 122,
> +
>  	.num_channels = 4,
>  	.channels = (const struct lpg_channel_data[]) {
> -		{ .base = 0xe800, .triled_mask = BIT(7) },
> -		{ .base = 0xe900, .triled_mask = BIT(6) },
> -		{ .base = 0xea00, .triled_mask = BIT(5) },
> +		{ .base = 0xe800, .triled_mask = BIT(7), .sdam_offset = 0x48 },
> +		{ .base = 0xe900, .triled_mask = BIT(6), .sdam_offset = 0x56 },
> +		{ .base = 0xea00, .triled_mask = BIT(5), .sdam_offset = 0x64 },
>  		{ .base = 0xeb00 },
>  	},
>  };
> -- 
> 2.41.0
> 

-- 
Lee Jones [李琼斯]

