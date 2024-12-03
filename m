Return-Path: <devicetree+bounces-126672-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B7DF9E2779
	for <lists+devicetree@lfdr.de>; Tue,  3 Dec 2024 17:30:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 61AE2286C75
	for <lists+devicetree@lfdr.de>; Tue,  3 Dec 2024 16:30:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A6BB91F7577;
	Tue,  3 Dec 2024 16:30:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aO6U0f0C"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 819741F4283
	for <devicetree@vger.kernel.org>; Tue,  3 Dec 2024 16:30:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733243440; cv=none; b=J4qvRaXbcUJ61tHlEUPWcZsmw+p2cnaCkFDC+QKlynYRJk17aENSz2S3BSMYqoWsUTfSn/hKryJVfKjmYJrIT5hclABRQQUgQl5ReBA+DYoppytvbgmqTCHVbieg87womVm+ggVgNeShRuf57Ufdn1a8S4BpXubISWxLg9mIaPs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733243440; c=relaxed/simple;
	bh=5aIILQ8vCEEGstfEFANtW97dEOQ5+Qqnq6GpbrG84H0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Y4bZOQiMsIYhpwy52ps3ZImj9dAMdI+3EkhXRkx6jTCE18Jwty4ZHkXKnz+6WN6QKjsCNtEYiKbMUYP3nOLOIU5mP7HCDPCTubLEp4kBEh8hZDgMiOjDEI7KRrjVyJe9hRso3hCc3r+5gk4Ztpi3aSinGJOIGQFTwAwq08K74es=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aO6U0f0C; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D7560C4CECF;
	Tue,  3 Dec 2024 16:30:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733243440;
	bh=5aIILQ8vCEEGstfEFANtW97dEOQ5+Qqnq6GpbrG84H0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=aO6U0f0C5Jmf7qtIRKeyVWbTtWiKYvLUuTbF9FMNH16onz16c2xljQ49DWqe2dB6+
	 kFbLRXJab/K14ap/xiSC5dSI3rudg0Inn76ZEycolGZRcBbhfvIgjfeaNuVWir3tco
	 SP2q5nfgHTCo39cn3X80LPzsTJlpXRWHr588rjubTdibD3C9gQZL5s3VmKRvRtS+s6
	 DsiP/8e9Dj2gJRHoF7fYg21DiLI52lrDW222WInSQ64E/6/3Zgx+7pJUP3g2MJfKRA
	 BrCGBFAo+AjJywbPFtaf8Mczy47uJuvPK9poujreDdQaAWbqPlpwvrmE4WEEl2an27
	 Y8TfEqI3yHW8w==
Date: Tue, 3 Dec 2024 10:30:37 -0600
From: Rob Herring <robh@kernel.org>
To: Fabio Estevam <festevam@gmail.com>
Cc: krzk+dt@kernel.org, conor+dt@kernel.org, tglx@linutronix.de,
	daniel.lezcano@linaro.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Fabio Estevam <festevam@denx.de>,
	Alexander Stein <alexander.stein@ew.tq-group.com>,
	Conor Dooley <conor.dooley@microchip.com>
Subject: Re: [PATCH RESEND 1/2] dt-bindings: timer: fsl,imxgpt: Fix the
 fsl,imx7d-gpt fallback
Message-ID: <20241203163037.GA1916867-robh@kernel.org>
References: <20241202132147.587799-1-festevam@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241202132147.587799-1-festevam@gmail.com>

On Mon, Dec 02, 2024 at 10:21:46AM -0300, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@denx.de>
> 
> imx7s.dtsi correctly describes the GPT node as:
> 
> compatible = "fsl,imx7d-gpt", "fsl,imx6dl-gpt";
> 
> Document the fallback compatible to be "fsl,imx6dl-gpt" in the bindings.
> 
> This fixes the following dt-schema warnings:
> 
> timer@302f0000: compatible: 'oneOf' conditional failed, one must be fixed:
> 	['fsl,imx7d-gpt', 'fsl,imx6dl-gpt'] is too long
> 	'fsl,imx1-gpt' was expected
> 	'fsl,imx21-gpt' was expected
> 	'fsl,imx27-gpt' was expected
> 	'fsl,imx31-gpt' was expected
> 	'fsl,imx7d-gpt' is not one of ['fsl,imx25-gpt', 'fsl,imx50-gpt', 'fsl,imx51-gpt', 'fsl,imx53-gpt', 'fsl,imx6q-gpt']
> 	'fsl,imx6dl-gpt' was expected
> 	'fsl,imx7d-gpt' is not one of ['fsl,imx6sl-gpt', 'fsl,imx6sx-gpt', 'fsl,imx8mp-gpt', 'fsl,imxrt1050-gpt', 'fsl,imxrt1170-gpt']
> 	'fsl,imx6sx-gpt' was expected
> 
> Signed-off-by: Fabio Estevam <festevam@denx.de>
> Reviewed-by: Alexander Stein <alexander.stein@ew.tq-group.com>
> Acked-by: Conor Dooley <conor.dooley@microchip.com>
> ---
>  Documentation/devicetree/bindings/timer/fsl,imxgpt.yaml | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

I'm assuming Daniel will apply, but I'll keep these in my queue until 
that happens.

> 
> diff --git a/Documentation/devicetree/bindings/timer/fsl,imxgpt.yaml b/Documentation/devicetree/bindings/timer/fsl,imxgpt.yaml
> index e2607377cbae..a2fcb1e8e74e 100644
> --- a/Documentation/devicetree/bindings/timer/fsl,imxgpt.yaml
> +++ b/Documentation/devicetree/bindings/timer/fsl,imxgpt.yaml
> @@ -31,6 +31,7 @@ properties:
>            - enum:
>                - fsl,imx6sl-gpt
>                - fsl,imx6sx-gpt
> +              - fsl,imx7d-gpt
>                - fsl,imx8mp-gpt
>                - fsl,imxrt1050-gpt
>                - fsl,imxrt1170-gpt
> @@ -38,7 +39,6 @@ properties:
>        - items:
>            - enum:
>                - fsl,imx6ul-gpt
> -              - fsl,imx7d-gpt
>            - const: fsl,imx6sx-gpt
>  
>    reg:
> -- 
> 2.34.1
> 

