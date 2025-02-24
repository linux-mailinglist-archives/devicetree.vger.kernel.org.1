Return-Path: <devicetree+bounces-150124-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 36027A414DE
	for <lists+devicetree@lfdr.de>; Mon, 24 Feb 2025 06:44:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 949A93B2B43
	for <lists+devicetree@lfdr.de>; Mon, 24 Feb 2025 05:43:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BDB231AA1FF;
	Mon, 24 Feb 2025 05:44:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="zoazNnS/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f180.google.com (mail-pl1-f180.google.com [209.85.214.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20B491A76AC
	for <devicetree@vger.kernel.org>; Mon, 24 Feb 2025 05:43:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740375841; cv=none; b=nEMIqFogKJOX99AgJFWMhuTrPGJKPZ5fv/4E8HEA2xRUIKumIAtClrMgTV0EGUJHUWBP+o/5a5abC8FdyM2KLhKeJZl969NvExCStDpbnYvg2JJ1A4xmZpF2c6f8sfmhbCNVQP5ZADMjt0aL3z1UbvDNmHhFxEhRqN3ppHCK+tY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740375841; c=relaxed/simple;
	bh=6vqGCANtAX9VcV8YYZOtNyZdC+xLqgpXJgWUdVceStY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=TN7DfDvIPZ4TH6ch22CSw1u9ZGyMqP2avlF1Krluwq9H7Q9r6aPoC5UPBEUA37zNJG4XzdKXz7znvPD3WgRwFvZBaO7Sd6JHqRQAdk5ks/jEjGEYZicLL7bqXy9TtmHocklw8FXA54QRC3PjUd4ZZ9JFSqnYQRFl4ywEKtHLxnc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=zoazNnS/; arc=none smtp.client-ip=209.85.214.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pl1-f180.google.com with SMTP id d9443c01a7336-220ec47991aso52100845ad.1
        for <devicetree@vger.kernel.org>; Sun, 23 Feb 2025 21:43:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740375839; x=1740980639; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=sqF2oB0fOJ00qITszHytsg//Jw5NU1rfZI3/hzZUwto=;
        b=zoazNnS/ok47uWqp1bla1Ly1yhl8niybC+b/UI4pIwQZKGt6DnfetF6K6uJ+I2CSGD
         i/5VdVz0vCn3ARLZLoKMpuy7l+bBPU6NG/fpfgrqxL/VNL9rY32WlCcQdWUKabeKm64L
         Jdk4rnqIeNZsHTalgYMoOIkcFKWCjT6x2GpwHcDmkc5aj67mfUW0SfEydgOykGkxus3y
         rMsASVBHtLkLOffiQqgl3KD9OrBBfX1VjE0kByjMAghOvo/aZ5Vn+LyIEFzJEjuqJQva
         N70nge2xuxpsTOeHCBkUVNX7DY1T96LDPs1Vm8w4TGVelrf3pYOh/JDasqAqXUnViWTL
         wZLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740375839; x=1740980639;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=sqF2oB0fOJ00qITszHytsg//Jw5NU1rfZI3/hzZUwto=;
        b=fY3SQOhAShLqK0xwE/p34bs+ET0iS0P1W+Y+iqIAzaZDK1NlZUFFBUiJ2DrmfBIOrJ
         QF7hq3Ve0oKo92nwiCG6Dk9lSgeh67UGqhLMK61R7EKIfxUKqcU1ZKmFiLOxcTiuO2Iq
         kI3xy6KyQn2FUGyNtYqdmH4J1eavK1/MQwMoEGY/thDUDpgnfOf/7pRURGGH6bq+W6Jd
         p+DPG6Rjv1WKLJeQ9pG1CjBGXgNKHS9XRQAeMS6tAE8nhRBa7KQWKD7IDVfvIL13gQnb
         TSvBrw0sKbjYbyOna6XFPSnTY2dJafuWiyd7sB5Zmm3nHwBIEhpJTdumK99U8SMh4MoN
         ZtIA==
X-Forwarded-Encrypted: i=1; AJvYcCWrIcg/sCjt2CsFMWnvK7MelU8r1yuCMkoX3WuilLveJ44T2jkUBrBiJ8xtYQkF4WM1vchaEw3HZrg2@vger.kernel.org
X-Gm-Message-State: AOJu0YwIcc0SGml+DA46DabegoVEm5WLpKJAnzjBo7FQN7CMyTGle9nn
	S+Ow/j+iMlLdedcbhiJiwrUEjAravRY3NuR1BvYX6C0FBkgY2+I8ljHG+r7h8Q==
X-Gm-Gg: ASbGncvhGP7UopbejSuOEgndVcy/3WgYweutj3Kl74chWg62bw/C1G5pIAJXRzXu2nh
	tJPbbvbakQh81oQrN49Nrqdi7XC8JbhsLi5EODzTf7pG4PbR4Iw834TBodcMQTSQwqM8bspKHBc
	mmae6xgXWnmwmLvjYplidW8B/jDwW5ZTM8f+2SDGbEJ1bHQgUiE/Ohtj8oZIrpO0B+j1Uy7tt3u
	HrDXnrJbGmTGOwvfpg53URnEfwKoRppaN2xvLF42t8c+VDmVqtTwWihGJjVaDvc8J9TFDO36e9j
	APTGgFGPkR1k6M8bBb9aUHOu5KYTWUBzVAUO
X-Google-Smtp-Source: AGHT+IEiXXDmNWiIoyS4g/sMa+CHtSKXB9iHnryoV5l5+xYp1a39XIVItxTv64eAI9cSRTAKN1SUlg==
X-Received: by 2002:a05:6a20:6a0b:b0:1e1:ad39:cc5c with SMTP id adf61e73a8af0-1eef3c7718dmr22630530637.14.1740375839448;
        Sun, 23 Feb 2025 21:43:59 -0800 (PST)
Received: from thinkpad ([36.255.17.162])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-adf35fb47c4sm11085874a12.31.2025.02.23.21.43.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 23 Feb 2025 21:43:58 -0800 (PST)
Date: Mon, 24 Feb 2025 11:13:53 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Lorenzo Bianconi <lorenzo@kernel.org>
Cc: Ryder Lee <ryder.lee@mediatek.com>,
	Jianjun Wang <jianjun.wang@mediatek.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	linux-pci@vger.kernel.org, linux-mediatek@lists.infradead.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>
Subject: Re: [PATCH v3 1/2] dt-bindings: PCI: mediatek-gen3: Add
 mediatek,pbus-csr phandle array property
Message-ID: <20250224054353.c24rcplzsvskzceq@thinkpad>
References: <20250222-en7581-pcie-pbus-csr-v3-0-e0cca1f4d394@kernel.org>
 <20250222-en7581-pcie-pbus-csr-v3-1-e0cca1f4d394@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250222-en7581-pcie-pbus-csr-v3-1-e0cca1f4d394@kernel.org>

On Sat, Feb 22, 2025 at 11:43:44AM +0100, Lorenzo Bianconi wrote:
> Introduce the mediatek,pbus-csr property for the pbus-csr syscon node
> available on EN7581 SoC. The airoha pbus-csr block provides a configuration
> interface for the PBUS controller used to detect if a given address is
> accessible on PCIe controller.
> 
> Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>

Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

- Mani

> ---
>  .../devicetree/bindings/pci/mediatek-pcie-gen3.yaml     | 17 +++++++++++++++++
>  1 file changed, 17 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/pci/mediatek-pcie-gen3.yaml b/Documentation/devicetree/bindings/pci/mediatek-pcie-gen3.yaml
> index f05aab2b1addcac91d4685d7d94f421814822b92..162406e0691a81044406aa8f9e60605d0d917811 100644
> --- a/Documentation/devicetree/bindings/pci/mediatek-pcie-gen3.yaml
> +++ b/Documentation/devicetree/bindings/pci/mediatek-pcie-gen3.yaml
> @@ -109,6 +109,17 @@ properties:
>    power-domains:
>      maxItems: 1
>  
> +  mediatek,pbus-csr:
> +    $ref: /schemas/types.yaml#/definitions/phandle-array
> +    items:
> +      - items:
> +          - description: phandle to pbus-csr syscon
> +          - description: offset of pbus-csr base address register
> +          - description: offset of pbus-csr base address mask register
> +    description:
> +      Phandle with two arguments to the syscon node used to detect if
> +      a given address is accessible on PCIe controller.
> +
>    '#interrupt-cells':
>      const: 1
>  
> @@ -168,6 +179,8 @@ allOf:
>            minItems: 1
>            maxItems: 2
>  
> +        mediatek,pbus-csr: false
> +
>    - if:
>        properties:
>          compatible:
> @@ -197,6 +210,8 @@ allOf:
>            minItems: 1
>            maxItems: 2
>  
> +        mediatek,pbus-csr: false
> +
>    - if:
>        properties:
>          compatible:
> @@ -224,6 +239,8 @@ allOf:
>            minItems: 1
>            maxItems: 2
>  
> +        mediatek,pbus-csr: false
> +
>    - if:
>        properties:
>          compatible:
> 
> -- 
> 2.48.1
> 

-- 
மணிவண்ணன் சதாசிவம்

