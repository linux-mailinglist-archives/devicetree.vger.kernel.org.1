Return-Path: <devicetree+bounces-122065-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 14B4F9CD9DF
	for <lists+devicetree@lfdr.de>; Fri, 15 Nov 2024 08:26:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 56A751F21055
	for <lists+devicetree@lfdr.de>; Fri, 15 Nov 2024 07:26:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 045FE186E26;
	Fri, 15 Nov 2024 07:26:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="NeneI/Xq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f169.google.com (mail-pl1-f169.google.com [209.85.214.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E75F183CC7
	for <devicetree@vger.kernel.org>; Fri, 15 Nov 2024 07:26:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731655573; cv=none; b=J66SdRV/X4mrBOQAClyn5dgYN4Bk0ErMpZuC5qDMvF74TBCVVfhKlrEJZKI+LiydU3dnA0x9EXr5wDkbkmZve65+qB1/Xz907I/+GoVvs0LlptiNJvp2+QkZTqS70Bcdu//epXjd1WzIGbRfT5zDvoiIFxqkZD5LZCPOCvY6O+4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731655573; c=relaxed/simple;
	bh=kmy/XrVB2997ryrPkfAqlPTqEpXt76Ofqetkymj+YpU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=cX5vMIIvXB7g+nIOm38Xd1eqq/KW4AHev7I5jnz/IaqjlHrxtwWWF8/oQOZlZrXnyhW2OnT0OTkhmEzFaUwQmG4GOmjMTn8i1Do8xLfL9zqRPFSKTBFga3vjPDrG5HfzGC/o0xDf/J+TTKraPA8YmjFTcGKWHOj7i8ntgThCII8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=NeneI/Xq; arc=none smtp.client-ip=209.85.214.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pl1-f169.google.com with SMTP id d9443c01a7336-20cdb889222so3808255ad.3
        for <devicetree@vger.kernel.org>; Thu, 14 Nov 2024 23:26:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1731655572; x=1732260372; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=q/td2OHK6Uv6OlvtXPu6vE7g7uy24DWzvPVKBds7d3U=;
        b=NeneI/Xq/z60FaJAiQ/u+pGPCFSLlGQY8wTLLxH5XrZAhGdnzyl6gduEnaPtPrpLkY
         LdLcTj1EhHDYez440sF7qn3VC9gVU5n0KnSSxHnDBfleq0IPpjveHcvXCjUIYDYfQwEs
         wvz8CIxDeHNBv53+VYEYCQERAOuEhsVRnuF4AZFj4oRvTnVHecowAgNILBL4kizu7mWv
         5mzc/cgqx09cCOhQsjnW+cFid8PxSf5Zuqsl3ES56+D7pgBG8Ji/NXDCZrgpm7oKc5za
         d4yV3E/Xr5U0LMJ5sVjh3JfaYpqTCueNETuWJkLY8C2Ya/KT9LZ1+6R2kXfEib0+/Vjh
         T52w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731655572; x=1732260372;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=q/td2OHK6Uv6OlvtXPu6vE7g7uy24DWzvPVKBds7d3U=;
        b=mLE0gVpfPERgZuFMd0Cs9u5pr+Uv/uN9cA7uzMODeGxWJs8AY9ObRmn3/dpIsjy2Ou
         B8WpJ8/SIobt6Ie2Brr4/yg+O/mGHOdM56H/rgu4k3bbLTgL42HX4OyDdxEb9wx9rEaF
         7Klhu6GDI8P7yKXuU+WYDL2sFfeb9fjuxp0zi7XKH309i0kmIS4Pr96rRR0gq3ZrY9Sh
         gSK1TkmKcKQG/ej6lay5emu3bn6aoQ6GvR+XTL/OeIgcEIifHYLS6KIugKke8Z1q+iHt
         yAtiqcdN+fvlZsEFfkI5vY7Om/16oXVfnxPlApd1eqXKl6QMsaI1NCRW+J55NDXDq59T
         9Hyg==
X-Forwarded-Encrypted: i=1; AJvYcCXFqSApoKGHGfVpynb2jIAixTlX1BBh6figu3DDm017bug2TBaWyZs0ynliLjUrMZX/tylrdz9+t4W9@vger.kernel.org
X-Gm-Message-State: AOJu0YzgWo5fh6gHfgyGE35tNz4/RrMCMWg0Mrcl8BdRB+FfgaqI2uPA
	lgMz/gRkuj78L/vShxfdgj9/NYr8fMfEgiefTCw4yIZVaIvxH8xScYPLKShFLNawVzqTnoIyDeQ
	=
X-Google-Smtp-Source: AGHT+IHF/h7Xa2A+zRkLdeKjCwTQRdlDQlAAp44kZhFqgVsoIp+fBjbt5btngDZE1kkJjv4kY/f0xQ==
X-Received: by 2002:a17:903:2450:b0:211:ebd:e35f with SMTP id d9443c01a7336-211d0ecb12fmr20281755ad.39.1731655571824;
        Thu, 14 Nov 2024 23:26:11 -0800 (PST)
Received: from thinkpad ([117.193.208.47])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-211d0ecaad0sm6850975ad.100.2024.11.14.23.26.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Nov 2024 23:26:11 -0800 (PST)
Date: Fri, 15 Nov 2024 12:56:04 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Jingoo Han <jingoohan1@gmail.com>, Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
	linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: PCI: snps,dw-pcie: Drop "#interrupt-cells"
 from example
Message-ID: <20241115072604.yre2d7yiclt5d3w5@thinkpad>
References: <20241105213217.442809-1-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20241105213217.442809-1-robh@kernel.org>

On Tue, Nov 05, 2024 at 03:32:16PM -0600, Rob Herring (Arm) wrote:
> "#interrupt-cells" is not valid without a corresponding "interrupt-map"
> or "interrupt-controller" property. As the example has neither, drop
> "#interrupt-cells". This fixes a dtc interrupt_provider warning.
> 

But the DWC controllers have an in-built MSI controller. Shouldn't we add
'interrrupt-controller' property then?

- Mani

> Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
> ---
>  Documentation/devicetree/bindings/pci/snps,dw-pcie.yaml | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/pci/snps,dw-pcie.yaml b/Documentation/devicetree/bindings/pci/snps,dw-pcie.yaml
> index 548f59d76ef2..205326fb2d75 100644
> --- a/Documentation/devicetree/bindings/pci/snps,dw-pcie.yaml
> +++ b/Documentation/devicetree/bindings/pci/snps,dw-pcie.yaml
> @@ -230,7 +230,6 @@ examples:
>  
>        interrupts = <25>, <24>;
>        interrupt-names = "msi", "hp";
> -      #interrupt-cells = <1>;
>  
>        reset-gpios = <&port0 0 1>;
>  
> -- 
> 2.45.2
> 

-- 
மணிவண்ணன் சதாசிவம்

