Return-Path: <devicetree+bounces-164655-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id B4A4FA81DE1
	for <lists+devicetree@lfdr.de>; Wed,  9 Apr 2025 09:06:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9250F173F24
	for <lists+devicetree@lfdr.de>; Wed,  9 Apr 2025 07:06:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 462721DE3DB;
	Wed,  9 Apr 2025 07:06:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="PrD1SWNd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f178.google.com (mail-pl1-f178.google.com [209.85.214.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ABA0B22ACEE
	for <devicetree@vger.kernel.org>; Wed,  9 Apr 2025 07:06:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744182381; cv=none; b=ceEk5IYMuoyYWr2YF/mC6CgBeOLQE04bnrO9sQRZPxM4Ov77+2fXUw/c+cLmKeawLOZ+kYUBdxy7FQ18SGpAwy1Om4nyAeCivhEB0zWXeduugcn5vB3wHy4x06hBrJhWVUiLfvkbSBAAQT5qU3EV/dvhrc1dcWW03GtMpv6SPq0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744182381; c=relaxed/simple;
	bh=yS+f3fqEzIoMXoYigNyYL1iRCbrDvUkMQNrAccauF30=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=nK7wqyRldNbdB+G7/4qnFV9E0q5bIMDNd8BI0UzcZ/iAUJpCcTqJ5hSTGDPaN4hwLYxIwRDFCQ7iqcyYw7+Ef9jyhWGqKKV/WNNqzq84m0iUHyFvBfdy6f9ecnporrnK85r8XKCbu2mXoQw0yaeaB8lz1mPQYNZnpoJiVIdgacI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=PrD1SWNd; arc=none smtp.client-ip=209.85.214.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pl1-f178.google.com with SMTP id d9443c01a7336-22403cbb47fso68961045ad.0
        for <devicetree@vger.kernel.org>; Wed, 09 Apr 2025 00:06:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1744182379; x=1744787179; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Nm7nG2cOghl5We3pl16VQKS1/9Lv238uk1E4idOp5vQ=;
        b=PrD1SWNdTtPZUgQjRNif2ls9MubJr9v7WpJMbQBGMplnDg/ESsiWZdjv3qFwkjXX84
         lONLGQro2/xnruJpKObbR0aS2CwXuG+xYN7mEDe6swzRcwdKYHIsV0Tdsf7qulqmhtGs
         Cc8rW41SvaR0djm60tukZRnm7/UJwVxZfwxkgxrg3Tr655x/wfxsO4clFVrmI7HuSYf/
         de5vws9DkS4T4CONHe/9F/zIFWKLZezzppEir0ux2e3BT9qXb+QxEmfcGt7X0//8ObMG
         o9xHdnnb1H9q0Krb0GTqrwVDZp/zBjXN+7WsSUD+qKjqcbBhQI5bcyCIkorcYa4Wfe0y
         Ch+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744182379; x=1744787179;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Nm7nG2cOghl5We3pl16VQKS1/9Lv238uk1E4idOp5vQ=;
        b=cG8Aepo+PiFBWBpZKDMyUD/UmY1CygNr4CqQk8xvGdCnTWTxNSRQGvmF89cmd2S2Yl
         ah/t0EBvMzJHigaMHFr9zYjEuuKMTXKkxdkeoxZWQZFvRHdjen+vZ/v07fE7C+iMCpUB
         JgWXlgPrVbHXJyz5KmazJrsEAuim3DtpKqxRLAdtsuaPLLO+xEaaDTu0i47oKL2ZNwmE
         cdxCw05hc6Emk+W8xjlAzgm+TjTYg+/uBMuROemn7n4T7nKo2eY/GgrjNhmT2mzmPs7a
         SmzdRubcxFmZE/FPasOBR6IkQudKENW6S93DARK9aByyQOS5G4wrvQ/9YmZbiCukpP5G
         B3IQ==
X-Forwarded-Encrypted: i=1; AJvYcCXkRvPaya8O5ReLVqjm0/KWTXy7tSNlbrqJYmDiOxwkK6H+tzI/DArfuWxgAv13ENrk2kmEMJ8cJUnv@vger.kernel.org
X-Gm-Message-State: AOJu0Yz+BVpvvTlTyKRSmn+HTGo9OBGokim9ZEtryJW/vb+6/NUtXRkh
	RD280IyxIoxj6dPISmMNY/jZtS4cTYYB/Bcpe948g39NxF/8c09e6WqpXgwWqg==
X-Gm-Gg: ASbGncuNPOTgmdqj+OZ884qwNeLCJkDnFeAwbdotM3D7j0Pw2q0E9LC9nFkut9/5SOg
	kpnHj97oqT3a6f53HRXAi1mebyDMl4w9UpXU1DjoqmLxVOdAyZssuEC4gKBjKfgejsxSbZ6+/+u
	ildoFKxXCtwqLOExRKxcbzIOKl/dU72OpV/Qryy2wEgKEaBdmrn6lFWvWgnAcgfNdVpHqrVa5r+
	mth3hhBtd8XEw0eo99dEvgFodqsJt3gGnkdqQNNF44TZ2MjWpnFqxRpjMaExSmUk9enhx4yM0Ho
	qheXgzgihCYPxAETGXzYf3qOvgc6rzAz40nJ4S6xeGGLf02Ba04=
X-Google-Smtp-Source: AGHT+IG2IBbUsP4jpyoBsAQl7I0S2iGdcUbnYfvvANGYcDIZAtyYHJ27CyPFx40ttshkAUckDfLO7g==
X-Received: by 2002:a17:903:3bc6:b0:224:10a2:cad9 with SMTP id d9443c01a7336-22ac2a2991bmr35596635ad.41.1744182379003;
        Wed, 09 Apr 2025 00:06:19 -0700 (PDT)
Received: from thinkpad ([120.56.198.53])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-22ac7cb5047sm4544815ad.170.2025.04.09.00.06.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Apr 2025 00:06:18 -0700 (PDT)
Date: Wed, 9 Apr 2025 12:36:08 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Florian Fainelli <florian.fainelli@broadcom.com>, 
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, Jim Quinlan <jim2101024@gmail.com>, 
	Nicolas Saenz Julienne <nsaenz@kernel.org>, Lorenzo Pieralisi <lpieralisi@kernel.org>, 
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>, Rob Herring <robh@kernel.org>, 
	Bjorn Helgaas <bhelgaas@google.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Srikanth Thokala <srikanth.thokala@intel.com>, 
	Daire McNamara <daire.mcnamara@microchip.com>, Marek Vasut <marek.vasut+renesas@gmail.com>, 
	Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>, Paul Walmsley <paul.walmsley@sifive.com>, 
	Greentime Hu <greentime.hu@sifive.com>, Samuel Holland <samuel.holland@sifive.com>, 
	Bharat Kumar Gogada <bharat.kumar.gogada@amd.com>, Michal Simek <michal.simek@amd.com>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Magnus Damm <magnus.damm@gmail.com>, 
	Tom Joseph <tjoseph@cadence.com>, Ahmad Zainie <wan.ahmad.zainie.wan.mohamad@intel.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>, linux-rpi-kernel@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, linux-pci@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org, 
	linux-riscv@lists.infradead.org
Subject: Re: [PATCH 2/2] dt-bindings: PCI: sifive,fu740-pcie: Fix include
 placement in DTS example
Message-ID: <3cfkeludmigojzadrgyxyidiydb3mx6yqjcvmgpbhdk75cflog@66i4zpvjcwzv>
References: <20250324125202.81986-1-krzysztof.kozlowski@linaro.org>
 <20250324125202.81986-2-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250324125202.81986-2-krzysztof.kozlowski@linaro.org>

On Mon, Mar 24, 2025 at 01:52:02PM +0100, Krzysztof Kozlowski wrote:
> Coding style and common logic dictates that headers should not be
> included in device nodes.  No functional impact.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

- Mani

> ---
>  Documentation/devicetree/bindings/pci/sifive,fu740-pcie.yaml | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/pci/sifive,fu740-pcie.yaml b/Documentation/devicetree/bindings/pci/sifive,fu740-pcie.yaml
> index 844fc7142302..d35ff807936b 100644
> --- a/Documentation/devicetree/bindings/pci/sifive,fu740-pcie.yaml
> +++ b/Documentation/devicetree/bindings/pci/sifive,fu740-pcie.yaml
> @@ -81,10 +81,10 @@ unevaluatedProperties: false
>  
>  examples:
>    - |
> +    #include <dt-bindings/clock/sifive-fu740-prci.h>
>      bus {
>          #address-cells = <2>;
>          #size-cells = <2>;
> -        #include <dt-bindings/clock/sifive-fu740-prci.h>
>  
>          pcie@e00000000 {
>              compatible = "sifive,fu740-pcie";
> -- 
> 2.43.0
> 

-- 
மணிவண்ணன் சதாசிவம்

