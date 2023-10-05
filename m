Return-Path: <devicetree+bounces-6090-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 994D67B9D66
	for <lists+devicetree@lfdr.de>; Thu,  5 Oct 2023 15:38:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 50460281A63
	for <lists+devicetree@lfdr.de>; Thu,  5 Oct 2023 13:38:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 571FD1CAA3;
	Thu,  5 Oct 2023 13:38:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p5SUr0Vx"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 371B41C29A
	for <devicetree@vger.kernel.org>; Thu,  5 Oct 2023 13:38:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4E97BC4AF76;
	Thu,  5 Oct 2023 13:38:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696513119;
	bh=F8uLKRMaqIMTxEEJ0Tsvy4TdC8fIt8Vx4EseGKGLtPc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=p5SUr0VxoNw+IMG3d+fiAzkAjXm8HBBlx+hHso1qsYXmPAT8O0zA5EIrAoa5dOJ29
	 AWqrQ1SeDYDcKFHNGuFBhsqnVDdUleFpRpShtXXR0py1kMq2uz6CGz+9swRsrXhoS4
	 H4cHn7bEHfyCivvLnm4J8Pq6RWsQEJSOAW74mSjKLRQjk6Ty1JpwvMe0NRhs5H1c0b
	 rakipOaXlBZbpQ2A+U0LubipL2oLp7e7rqiH4/hSMqB5BDVc4DtSXSZJRmlsDxfKIL
	 C8vGeYTbMHHJC5BGs6Xr05XC1yLPcN+o7LITZ7NemOphJSzQgjghmJPadPGiVSjx4s
	 dBbAkOEUYMRxg==
Date: Thu, 5 Oct 2023 14:38:32 +0100
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
Subject: Re: [PATCH v5 5/7] leds: rgb: leds-qcom-lpg: Update PMI632 lpg_data
 to support PPG
Message-ID: <20231005133832.GE681678@google.com>
References: <20230929003901.15086-1-quic_amelende@quicinc.com>
 <20230929003901.15086-6-quic_amelende@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230929003901.15086-6-quic_amelende@quicinc.com>

On Thu, 28 Sep 2023, Anjelique Melendez wrote:

> Update the pmi632 lpg_data struct so that pmi632 devices use PPG
> for LUT pattern.
> 
> Signed-off-by: Anjelique Melendez <quic_amelende@quicinc.com>
> ---
>  drivers/leds/rgb/leds-qcom-lpg.c | 8 +++++---
>  1 file changed, 5 insertions(+), 3 deletions(-)

Reviewed-by: Lee Jones <lee@kernel.org>

> diff --git a/drivers/leds/rgb/leds-qcom-lpg.c b/drivers/leds/rgb/leds-qcom-lpg.c
> index 4d87686f916c..a6cea6bd7167 100644
> --- a/drivers/leds/rgb/leds-qcom-lpg.c
> +++ b/drivers/leds/rgb/leds-qcom-lpg.c
> @@ -1660,11 +1660,13 @@ static const struct lpg_data pm8994_lpg_data = {
>  static const struct lpg_data pmi632_lpg_data = {
>  	.triled_base = 0xd000,
>  
> +	.lut_size = 64,
> +
>  	.num_channels = 5,
>  	.channels = (const struct lpg_channel_data[]) {
> -		{ .base = 0xb300, .triled_mask = BIT(7) },
> -		{ .base = 0xb400, .triled_mask = BIT(6) },
> -		{ .base = 0xb500, .triled_mask = BIT(5) },
> +		{ .base = 0xb300, .triled_mask = BIT(7), .sdam_offset = 0x48 },
> +		{ .base = 0xb400, .triled_mask = BIT(6), .sdam_offset = 0x56 },
> +		{ .base = 0xb500, .triled_mask = BIT(5), .sdam_offset = 0x64 },
>  		{ .base = 0xb600 },
>  		{ .base = 0xb700 },
>  	},
> -- 
> 2.41.0
> 

-- 
Lee Jones [李琼斯]

