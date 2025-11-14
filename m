Return-Path: <devicetree+bounces-238410-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 346C4C5AD2D
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 01:45:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 027A23AA06F
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 00:44:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0A5F2231836;
	Fri, 14 Nov 2025 00:44:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="aVgq7lyI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f181.google.com (mail-pg1-f181.google.com [209.85.215.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6AD921ADA7
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 00:44:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763081085; cv=none; b=haeAHG889UUkxFNEX3JDVlhGbrlzzElhDQddjm2BfICCZ1uPKYhqC6Rsdckroc/3cAGOfh+GNXJJnRaYjBwXrGnXI3bkqjqFKDWCxcv7ExTNOcLiNHu00tIoMwSGCrpH3CE/Bw4NLx9sPIGVvLsj9MWJZhMe27yuQqySlBtb5JQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763081085; c=relaxed/simple;
	bh=LwIRwAFzw0dXy5ckYyTbkNonSYIHgG2ZAUuHV9IY4Po=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=i5DLdpmYgIgy7ZOlf0kpws0RebE5RNXfgGwZe3z4aHIUPYj7GHAwmEvjPzlC+L5/ZzgtbBwAe4J4XzwnuIwA9mrbsm06Ywpjd34XU1uICfbq2cXbtbvqzVpsgY6v3xf40YpoVpHELzHMoK9EeVdh1kx2dMzhXh2kcmIx7k3+K5g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=aVgq7lyI; arc=none smtp.client-ip=209.85.215.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f181.google.com with SMTP id 41be03b00d2f7-b55517e74e3so1195028a12.2
        for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 16:44:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763081083; x=1763685883; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=5LXJv7wRXF9U/cick5b/LfhiRGQebQw7e2o2OTwwBSk=;
        b=aVgq7lyIf57iXFvKndprSSywmm1mtO31l3X5WK6ZtHPRGqzHJ0eAC0ra/Y0sDGgVRg
         UHCjSQ2Hvdq1PIB6Ovl7GyA/E4erBCoDJGthumOjoJRYzUlPMYEih04obKLWcSRgfRUI
         yc5XLBT3TFG+TpuSDyhm+virRmnLF1uo9pVeps2tk2S9P4j714HHHR9oNSHhE35N7q92
         8xFYMJJfci86oSBGKGGIxYn1H9K0U2GMoZL8YZ7Qu/l7e4CryvrCv0riC3e2NQP+eKNo
         US2F58jQT/B/RgD9tRn6ZTuGCVMK1JxXbwS6ml6aQzp6X4KXZ9hef+mvOC/+810aFrjk
         UcyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763081083; x=1763685883;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5LXJv7wRXF9U/cick5b/LfhiRGQebQw7e2o2OTwwBSk=;
        b=gOj64gTxK9u88oMDZXTgxhQPAWL/VJCiMXFg1Kd6wjuiRHFjDK/Qy+vq48iDSOwwDN
         ep5w0twrTd7WPOg0iDpWUJOFIglE4ssPU2Rxc5pfqxaJ3H7qMTJvoSNsTa+RYOxLaEjZ
         4/0xdzT5C0Qk9yxCmGDzJtg4r1jvQ2V33Pi/WPz2ntdzeapKHSqeqqTnkm8yG2x4IF3y
         pUhM8JdWiXDabK0IfE+clxjyiDKDXmoRPq5SIQECXv4oABkEwCRQnaNFji3TGGYHbl6z
         3ugphTSjMs9QBMukaQdutV0DxUfD+gRKzQiz/AWlCPJOxNhws1z8cgoeETYXVvbMM09Y
         jkAw==
X-Forwarded-Encrypted: i=1; AJvYcCWIM3zJRQzD7H4WBFuVSd/+glM/Vbxv1ggiXjoj1Z4mXaoYUCKXP86i5p/InGuDoNwm5LeufGPJZx6I@vger.kernel.org
X-Gm-Message-State: AOJu0YxpNCizbpUs2tvjEfVeUoazaSeTq32iZ+Cj20KkN1XS98mYtrbG
	A44q9OJZ3bPDVJxoDZwT/NygJjyAHYavo/gK4dIUnun9aUIGzFMPnbVx
X-Gm-Gg: ASbGncsCJJJp36I6BO4nxAzQcuh7W2wIAGLfRlD9xaweigLLzOhtaXjxyEAQFLcvRwq
	wfGKHnKLht0GY/93uNmUmiw2Mv4lL20kj5toB1vk2+k0flK/IMMlrMC6ktL7cR3HZZvJ2Z90xwE
	srxcufLLgbYmjicZr62db8dFZgM9NzCd1ryFWFhwZbb2tYPY/wBoXbY9maGdJY2GsKKsAy3tNBI
	wwIfrFrMQQHalxZofvnUtY89lvvf/KRdkqGLVuBWNZNR982PA4BnWLjjcksoBua7r9onV203DpW
	aiCqLucC0548UIaKUtMduGIwf7ZC43lJG1p8yvkwngVgnF+qQitfrvU3g3OoNAoXtot0URiHRMU
	y9M51RuRjiMa/5h3ucHVWgi9D019pHevpQUNDu+DBlpT5/qlSq4QWbsYYeL1YAobAyZ8GTGrhmG
	I=
X-Google-Smtp-Source: AGHT+IEIKjjPhOVUqGPDpl5dOo+GAofGTEs4SPWCZYKYPUBqhOjG64m/9E3v+5NweXcdOCz4DDVv4g==
X-Received: by 2002:a05:701a:ca8c:b0:119:e569:f62b with SMTP id a92af1059eb24-11b41707c45mr465043c88.36.1763081082981;
        Thu, 13 Nov 2025 16:44:42 -0800 (PST)
Received: from localhost ([2001:19f0:ac00:4eb8:5400:5ff:fe30:7df3])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-11b060885e3sm3672341c88.0.2025.11.13.16.44.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Nov 2025 16:44:42 -0800 (PST)
Date: Fri, 14 Nov 2025 08:44:15 +0800
From: Inochi Amaoto <inochiama@gmail.com>
To: Conor Dooley <conor+dt@kernel.org>
Cc: Han Gao <rabenda.cn@gmail.com>, Icenowy Zheng <uwu@icenowy.me>, 
	Vivian Wang <wangruikang@iscas.ac.cn>, Yao Zi <ziyao@disroot.org>, Andrew Lunn <andrew+netdev@lunn.ch>, 
	"David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Chen Wang <unicorn_wang@outlook.com>, 
	Inochi Amaoto <inochiama@gmail.com>, Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
	Alexandre Torgue <alexandre.torgue@foss.st.com>, Heiner Kallweit <hkallweit1@gmail.com>, 
	Russell King <linux@armlinux.org.uk>, "Russell King (Oracle)" <rmk+kernel@armlinux.org.uk>, 
	netdev@vger.kernel.org, devicetree@vger.kernel.org, sophgo@lists.linux.dev, 
	linux-kernel@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com, 
	linux-arm-kernel@lists.infradead.org, Yixun Lan <dlan@gentoo.org>, Longbin Li <looong.bin@gmail.com>, 
	Conor Dooley <conor.dooley@microchip.com>
Subject: Re: [PATCH v8 1/3] dt-bindings: net: sophgo,sg2044-dwmac: add phy
 mode restriction
Message-ID: <yjl3gnf2gwh327wbbwcbkxwnqy5tyhwutffovlxhcm7b4vr2xu@he4tg6bcrduu>
References: <20251114003805.494387-1-inochiama@gmail.com>
 <20251114003805.494387-2-inochiama@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251114003805.494387-2-inochiama@gmail.com>

On Fri, Nov 14, 2025 at 08:38:03AM +0800, Inochi Amaoto wrote:
> As the ethernet controller of SG2044 and SG2042 only supports
> RGMII phy. Add phy-mode property to restrict the value.
> 
> Also, since SG2042 has internal rx delay in its mac, make
> only "rgmii-txid" and "rgmii-id" valid for phy-mode.
> 
> Fixes: e281c48a7336 ("dt-bindings: net: sophgo,sg2044-dwmac: Add support for Sophgo SG2042 dwmac")
> Signed-off-by: Inochi Amaoto <inochiama@gmail.com>
> Acked-by: Conor Dooley <conor.dooley@microchip.com>

> ---
>  .../bindings/net/sophgo,sg2044-dwmac.yaml     | 19 +++++++++++++++++++
>  1 file changed, 19 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/net/sophgo,sg2044-dwmac.yaml b/Documentation/devicetree/bindings/net/sophgo,sg2044-dwmac.yaml
> index ce21979a2d9a..e8d3814db0e9 100644
> --- a/Documentation/devicetree/bindings/net/sophgo,sg2044-dwmac.yaml
> +++ b/Documentation/devicetree/bindings/net/sophgo,sg2044-dwmac.yaml
> @@ -70,6 +70,25 @@ required:
>  
>  allOf:
>    - $ref: snps,dwmac.yaml#
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: sophgo,sg2042-dwmac
> +    then:
> +      properties:
> +        phy-mode:
> +          enum:

> +            - rgmii-rxid
> +            - rgmii-id

Hi, Conor,

I have restricted the phy-mode with wrong mode here, it should be
rgmii-rxid instead of rgmii-txid as the SG2042 always add rx delay
in their mac. As this is more like a mistake for me when writing
the binding, I keep you tag with the fix. If you need something
further, please let me know.

Regards,
Inochi

> +    else:
> +      properties:
> +        phy-mode:
> +          enum:
> +            - rgmii
> +            - rgmii-rxid
> +            - rgmii-txid
> +            - rgmii-id
>  
>  unevaluatedProperties: false
>  
> -- 
> 2.51.2
> 

