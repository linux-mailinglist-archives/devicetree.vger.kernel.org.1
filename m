Return-Path: <devicetree+bounces-102402-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 550FA976F39
	for <lists+devicetree@lfdr.de>; Thu, 12 Sep 2024 18:57:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id F364A1F231F5
	for <lists+devicetree@lfdr.de>; Thu, 12 Sep 2024 16:57:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3E7111BE245;
	Thu, 12 Sep 2024 16:57:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zty5W06r"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 188A017D378
	for <devicetree@vger.kernel.org>; Thu, 12 Sep 2024 16:57:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726160273; cv=none; b=RXaKh9PugRwS3KRCZXyXVY7SzayMhWKDu0qsRvdX+MH6xw3gyPE6hSTXovfGIzdXlOlJXetXDUhSVY1wRDeZsknJNPjLFo3Eh+GVRoj3z5KodjtZ02ynp2491GCPFO+VvdMsYz3XZsylWvdjbaqZkxMXC925TV7Q3Z/7uenaeaE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726160273; c=relaxed/simple;
	bh=aXiwnVgINGX+Cj7rEHCI6rfffyz/VtxpX+WpX5nu6R8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=u4lb2hktYtvAHuCIpz0Z1MtrYibugZBcSaiHml6xiJSGT1Okpk8zyw4y806iGm0/tOMyLH9X6R+205kllLIiDkpPowBpdWZW1+RLr0vgZdhcOtRqkbCO1gB9fFx7a83ulpSbuOrmyGTFyo2W+eCpwo0rTdx0ioQ7Mf/ERwQpPxU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zty5W06r; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 72AFDC4CEC3;
	Thu, 12 Sep 2024 16:57:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726160272;
	bh=aXiwnVgINGX+Cj7rEHCI6rfffyz/VtxpX+WpX5nu6R8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Zty5W06rd85zVAATqU4yu+Rhx/JU/kMCfQR60Zxzi/vsrhRq/ujqJs+9qhQnCZCUE
	 /MYawfKc9/FYDDmhzXQ7EnlxcEDnhxwM0RI+xiQVOwJVkr7B7COAKK/TCTIsKx+OcV
	 QTgu5PHRFP49bhev3AbhoV+wJD80QZW7abfNEe7R+k26kaFpLvR8c3xdnQ3UMDepTX
	 xfSy6+RyP3EZSH0OrxIq6WfC3pMlmVXObCFRRDtkVQUhU5QIKkeoGMW517clV/defg
	 XZcu9fVfmfT+madUb4pnqkNiPyMIcqjAqQb3yp97O/tNlNt9yJrw7kV45utBOcFtfr
	 jdP+Zt28YCp0A==
Date: Thu, 12 Sep 2024 11:57:51 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Fabio Estevam <festevam@gmail.com>
Cc: Fabio Estevam <festevam@denx.de>, krzk+dt@kernel.org,
	conor+dt@kernel.org, devicetree@vger.kernel.org, tglx@linutronix.de
Subject: Re: [PATCH] dt-bindings: interrupt-controller: fsl,irqsteer:
 Document fsl,imx8qm-irqsteer
Message-ID: <172616004347.3921900.1225862741191330932.robh@kernel.org>
References: <20240701204106.160128-1-festevam@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240701204106.160128-1-festevam@gmail.com>


On Mon, 01 Jul 2024 17:41:06 -0300, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@denx.de>
> 
> Add an entry to fsl,imx8qm-irqsteer.
> 
> This fixes the following dt-schema warning:
> 
> failed to match any schema with compatible: ['fsl,imx8qm-irqsteer', 'fsl,imx-irqsteer']
> 
> Signed-off-by: Fabio Estevam <festevam@denx.de>
> ---
>  .../devicetree/bindings/interrupt-controller/fsl,irqsteer.yaml  | 2 ++
>  1 file changed, 2 insertions(+)
> 

Applied, thanks!


