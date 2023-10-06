Return-Path: <devicetree+bounces-6570-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F2BCB7BBD4E
	for <lists+devicetree@lfdr.de>; Fri,  6 Oct 2023 18:54:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AD77828202F
	for <lists+devicetree@lfdr.de>; Fri,  6 Oct 2023 16:54:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 47AE728E13;
	Fri,  6 Oct 2023 16:54:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kko/ueaW"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B5A9208A3
	for <devicetree@vger.kernel.org>; Fri,  6 Oct 2023 16:54:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 73EA1C433C7;
	Fri,  6 Oct 2023 16:54:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696611280;
	bh=MdieDKCo2DSTUIjEnuP5J1PpUDXZyJx/S+iF2rRsaaQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=kko/ueaWF42t2FC5fwhK4NFL8EU/io7v8XknmVWpLTakCOvsIphLZEcc/x3dJ+E7z
	 RLV7JpncvbsWqTDIcCzysjRm1AFAqAI6Do19sY9APsNl+L4KlAwI1aRqWhOCgXxtwl
	 a9HLGq0gd3O5PyfvRATkv+W92u48jKPgpFOrusIndcoxmsZ7zs8c/kH3aXwyZsTafs
	 tChG2JOc/5bmun7F4Xo46s3kZdAoCRCzTEA/HXWQidMbXS8loJMy3+cPHUVYcm2xmH
	 yXURDRYLn9YSo+eM1w9BDXYVAkGD5cpwz3epUqcnqmc3hj534Vtwna9PqjGd+Cz865
	 jEYfVp0ssasRg==
Received: (nullmailer pid 4064407 invoked by uid 1000);
	Fri, 06 Oct 2023 16:54:38 -0000
Date: Fri, 6 Oct 2023 11:54:38 -0500
From: Rob Herring <robh@kernel.org>
To: Gregory CLEMENT <gregory.clement@bootlin.com>
Cc: Paul Burton <paulburton@kernel.org>, Thomas Bogendoerfer <tsbogend@alpha.franken.de>, linux-mips@vger.kernel.org, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, Vladimir Kondratiev <vladimir.kondratiev@intel.com>, Tawfik Bayouk <tawfik.bayouk@mobileye.com>, Alexandre Belloni <alexandre.belloni@bootlin.com>, =?iso-8859-1?Q?Th=E9o?= Lebrun <theo.lebrun@bootlin.com>, Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Subject: Re: [PATCH 07/11] dt-bindings: mfd: syscon: Document EyeQ5 OLB
Message-ID: <20231006165438.GA4061751-robh@kernel.org>
References: <20231004161038.2818327-1-gregory.clement@bootlin.com>
 <20231004161038.2818327-8-gregory.clement@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231004161038.2818327-8-gregory.clement@bootlin.com>

On Wed, Oct 04, 2023 at 06:10:34PM +0200, Gregory CLEMENT wrote:
> Document Mobileye EyeQ5 compatibles for OLB registers that are
> misceallanous SoC related registers.

typo.

Please state what OLB is and what kind of things are in this block. IOW, 
convince me this is not just a skeleton placeholder until you add a 
bunch of providers in a real binding.

> 
> Signed-off-by: Gregory CLEMENT <gregory.clement@bootlin.com>
> ---
>  Documentation/devicetree/bindings/mfd/syscon.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/mfd/syscon.yaml b/Documentation/devicetree/bindings/mfd/syscon.yaml
> index 8103154bbb52..70bc6e8d15ba 100644
> --- a/Documentation/devicetree/bindings/mfd/syscon.yaml
> +++ b/Documentation/devicetree/bindings/mfd/syscon.yaml
> @@ -53,6 +53,7 @@ properties:
>                - mediatek,mt8135-pctl-a-syscfg
>                - mediatek,mt8135-pctl-b-syscfg
>                - mediatek,mt8365-syscfg
> +              - mobileye,eyeq5-olb
>                - microchip,lan966x-cpu-syscon
>                - microchip,sparx5-cpu-syscon
>                - mstar,msc313-pmsleep
> -- 
> 2.40.1
> 

