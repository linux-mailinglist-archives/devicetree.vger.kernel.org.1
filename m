Return-Path: <devicetree+bounces-131479-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B5C59F361E
	for <lists+devicetree@lfdr.de>; Mon, 16 Dec 2024 17:33:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C3C071627B1
	for <lists+devicetree@lfdr.de>; Mon, 16 Dec 2024 16:33:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C5743206261;
	Mon, 16 Dec 2024 16:31:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JjvtiYaR"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A04EC14D444
	for <devicetree@vger.kernel.org>; Mon, 16 Dec 2024 16:31:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734366660; cv=none; b=WFjB/g0O9fFU7ChdcUfJkJ21wUAIAbpPg1H/pLR8ExsVlXcy/mTM8Oe8U8GGcMV1wC8C+/Z/dybS2V6u9J6wegj5iDBKtn1OPn+YDaBfFezZ62NefwWgKk6COUWGst4SKycF/my85JL/xpwTaB7AKpy8iuqhGcFNstQuRE7jwB4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734366660; c=relaxed/simple;
	bh=Pv7IJ8msyWy4Ei0z80xvFm2f+U4unlwXTQBC4xMc2xw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=mNe0YAqIhxridsil1JGHwUCTBt1CLdG8wj+1QHJLhlZ6Y1C4LSgWNA+R74DZ3AHdnd82qEo1IIH6Lme72Wo+gmVJmTy9l53qzjnkeZXB3Vw5opqTC6cOhxsV3ks/+qiNseulSKKA04jUo2Xu7eYfpn9Yaj671fhvV6v3JZoMVn0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JjvtiYaR; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 31A12C4CED0;
	Mon, 16 Dec 2024 16:30:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734366660;
	bh=Pv7IJ8msyWy4Ei0z80xvFm2f+U4unlwXTQBC4xMc2xw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=JjvtiYaRuhpiPWjVb3DIuGSud6N+mMj7ZuzUr8y4+krm/oFiYtZYf80/2lm3l+sTK
	 cw6rLR1wTypwxOLEUocvQck/RF4xL3x68bkRm7vJUFZcbBiwjjrwwFM4IodhzVAgcq
	 O3dUvLeeREZcrCjujOBwIi1cbbGtmhHHmdclwChUwhU8sPMvuOJhSGPHQv06lQRPTT
	 pJUUi89Ps1rVzdNBvdsn4J62vWRgm3rLyMGMgGaTMHUOE60umFhev+aqmoaqKPAS1O
	 liSVZtaxeBhr7oSItwEFjMX56H8FE2bNeOQPTVnQ6/bWLHvKwQS0Ws89Tft4vHo3Ed
	 c8XTxVfGjQVPw==
Date: Mon, 16 Dec 2024 10:30:55 -0600
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Fabio Estevam <festevam@gmail.com>
Cc: krzk+dt@kernel.org, devicetree@vger.kernel.org, tglx@linutronix.de,
	daniel.lezcano@linaro.org, conor+dt@kernel.org,
	Fabio Estevam <festevam@denx.de>,
	linux-arm-kernel@lists.infradead.org,
	Alexander Stein <alexander.stein@ew.tq-group.com>,
	Conor Dooley <conor.dooley@microchip.com>
Subject: Re: [PATCH RESEND 1/2] dt-bindings: timer: fsl,imxgpt: Fix the
 fsl,imx7d-gpt fallback
Message-ID: <173436661185.273479.1114801374109487075.robh@kernel.org>
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


On Mon, 02 Dec 2024 10:21:46 -0300, Fabio Estevam wrote:
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
> 

Applied, thanks!


