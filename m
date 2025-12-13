Return-Path: <devicetree+bounces-246228-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 43B8BCBA407
	for <lists+devicetree@lfdr.de>; Sat, 13 Dec 2025 04:21:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id BF11330358DE
	for <lists+devicetree@lfdr.de>; Sat, 13 Dec 2025 03:21:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 38B9B2DA763;
	Sat, 13 Dec 2025 03:21:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VlTkL9FD"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D1652D1319;
	Sat, 13 Dec 2025 03:21:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765596089; cv=none; b=H1m8NKecCuJeTeEhDrukEBG/U8GDLq2zcnZ3fVY4SD13OELMWEJQ7iT/LXef1Nh117dWPUB24RBBjL1nuTzwSPAZ+M3JhA5H6lpxoeHQd2vT2ctSos1g2ZhaNiVAMvChWWuobkcIJ2yrqggI0KgpExnw+lnit1gbq36q79pcw6o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765596089; c=relaxed/simple;
	bh=8lCxTyTY0KcxZMMB0kU/7LQ6zw+ZzAKRLEXnR5zIcg8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=R3x5gbEbW0pLK2Ors0b0eaFkmbDvKHaferEk1fEC7EcVP6cUEcrRKImWxUWD8IqTIKKgCuvWuzUHkm5vX7G7gqQAeQHyeq6h2P5/t+mLOZEXYS22PcZaUyfmnCKNc1mOLxka5eXkt1EBJyoknOkZ/oVmWgnOKCT4mwX3Lre1hXw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VlTkL9FD; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BFA01C4CEF7;
	Sat, 13 Dec 2025 03:21:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765596088;
	bh=8lCxTyTY0KcxZMMB0kU/7LQ6zw+ZzAKRLEXnR5zIcg8=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=VlTkL9FD4raSJcpuZZ5lOUq63Zc+/lNfASTYrRSBkAKrc9DIxCX+WucDCZgZXh40h
	 TWBVf6Jq7NPLcXokj8H2gAR2U3P7ewQpXShdgbJV/3HTpBKvtlSt9m863gR1gXcHmx
	 26hxhLG57PqTeU79wL2QexZmgAuLLxStTZOrtgnGxXruO1igRPP4FsrOqINyAfcRhr
	 Lnxe14loix0lY/FBD2Lc1JitEOin0+YJD5g1CgHnJIkW07Yb1o0OL2AdLrJN5lTNof
	 z8M58bGwK+SiAudASTKvNT4KBUfgKxkT0UpTfvUgb6BMUtwbM6nABQczBVyrEm0qhv
	 43eznM51xSRDg==
Message-ID: <3cfea9e6-0cc6-406f-9a4c-3564ef1e3569@kernel.org>
Date: Sat, 13 Dec 2025 04:21:21 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/4] dt-bindings: firmware: stratix10-svc: add fcs-config
 property
To: hangsuan.wang@altera.com, linux-kernel <linux-kernel@vger.kernel.org>,
 devicetree <devicetree@vger.kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Florian Fainelli <florian.fainelli@broadcom.com>,
 Thierry Reding <treding@nvidia.com>, Lee Jones <lee@kernel.org>,
 Romain Gantois <romain.gantois@bootlin.com>,
 Andrea della Porta <andrea.porta@suse.com>,
 Andrei Simion <andrei.simion@microchip.com>,
 Dinh Nguyen <dinguyen@kernel.org>, Mahesh Rao <mahesh.rao@altera.com>
Cc: Marek <marex@denx.de>, Simon <simon.k.r.goldschmidt@gmail.com>,
 linux-drivers-review@altera.com,
 Muhammad Amirul Asyraf Mohamad Jamian
 <muhammad.amirul.asyraf.mohamad.jamian@altera.com>,
 Khairul Anuar Romli <khairul.anuar.romli@altera.com>
References: <cover.1765534135.git.hang.suan.wang@altera.com>
 <c5b2e76a7dd04d2143580c4574def095d3f0550c.1765534135.git.hang.suan.wang@altera.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Content-Language: en-US
Autocrypt: addr=krzk@kernel.org; keydata=
 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 a/A=
In-Reply-To: <c5b2e76a7dd04d2143580c4574def095d3f0550c.1765534135.git.hang.suan.wang@altera.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 12/12/2025 12:35, hangsuan.wang@altera.com wrote:
> From: "Wang, Hang Suan" <hangsuan.wang@altera.com>
> 
> Altera SoC FPGA Crypto Service (fcs) provide hardware crypto features
> through mailbox. Fcs property has to be added to compliance with device
> tree schema fcs bindings and driver.

Last sentence is completely redundant. If you add new devices for some
"compliance" you do it wrong. We don't build hardware for "dt compliance"...

> 
> Signed-off-by: Wang, Hang Suan <hangsuan.wang@altera.com>
> ---
> ---
>  .../devicetree/bindings/firmware/intel,stratix10-svc.yaml     | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/firmware/intel,stratix10-svc.yaml b/Documentation/devicetree/bindings/firmware/intel,stratix10-svc.yaml
> index b42cfa78b28b..c105f8dc4b7d 100644
> --- a/Documentation/devicetree/bindings/firmware/intel,stratix10-svc.yaml
> +++ b/Documentation/devicetree/bindings/firmware/intel,stratix10-svc.yaml
> @@ -62,6 +62,10 @@ properties:
>      $ref: /schemas/fpga/intel,stratix10-soc-fpga-mgr.yaml
>      description: Optional child node for fpga manager to perform fabric configuration.
>  
> +  fcs-config:
> +    $ref: /schemas/misc/intel,agilex5-soc-fcs-config.yaml
> +    description: Optional child node for fcs Fpga Crypto Service (fcs) to perform SoC Crypto Engine.

You need to wrap according to Linux coding style. Anyway, above schema
is NAKed so is this child.

> +
>  required:
>    - compatible
>    - method


Best regards,
Krzysztof

