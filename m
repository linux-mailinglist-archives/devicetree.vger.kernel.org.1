Return-Path: <devicetree+bounces-225607-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id F3743BCF50B
	for <lists+devicetree@lfdr.de>; Sat, 11 Oct 2025 14:16:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 865874204F5
	for <lists+devicetree@lfdr.de>; Sat, 11 Oct 2025 12:16:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 98ED62777F1;
	Sat, 11 Oct 2025 12:16:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="I7rB2hXL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E203D23B63C
	for <devicetree@vger.kernel.org>; Sat, 11 Oct 2025 12:16:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760184970; cv=none; b=mTVJmC2S9yx4usvjZJr/fa6y7yHkRKSwsPvSxHnXljbQgcrq+bYuVx59XWd7LrQUxgnKAv9N5F7ZetLjgJKvBYSX8LTpugpKkjpUMFAbcNReGCzC6PGvigt/3T0Po1N0pWgkj4xyAlR0GnDAu8c9cbuB6R8NelqsGl/6bYF7pfc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760184970; c=relaxed/simple;
	bh=K9ZlGYLFyygWWlQdxL4k3DB105kYgCqHlL4sa73rs4w=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=N80ga1DEx1ZdzX1OHmGhPoScFHPiuRbjHNgAOHObhF5wwaj0dRuWCc6gMPgN7BwqMeLkPilyWtzJHOIIfOeruX3D1PCNYOkvY29TEQTieEKdOyy4ETIM3ftqvVnA+lyHhqx1/zQpArkC9q5KJ8vNh/0dQFF7i0hYF+amoLXs7ks=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=I7rB2hXL; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-46e4f2696bdso30607685e9.0
        for <devicetree@vger.kernel.org>; Sat, 11 Oct 2025 05:16:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1760184962; x=1760789762; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ESeZUlMWivezlE3DeTyuSwyLVdykZbSbBsQ6LPdbgI0=;
        b=I7rB2hXLuU7CFe5+R8xQOXQpkumabMvRefO44qtV6FQsT+CmXsB4eLOyk6byWrIgAf
         bTYVAcNGD+XOxMM21qOx636SJbXhOslgtnULK68DD0S5yzBuMEQJPnPCwPOAvuonPQxs
         c0wMi+8z/vEld8iqDblKV/6c0S03YIS0YTJTNsq2V0H4MZwagRoMI3deYeaDhrp1cllO
         Twbg5NTyQpVx13D19ZzgfeWd4Z4pDHkRlAKlL28/LH7xse/JPnyQ46z1ZC9AptBGJCxZ
         QHx/i+4wSTeHDE8tU86hen6x3tmzm3vYa58jl4/NXg9YXDoDDIgY4d5nZTuR8ao5Wvi5
         7oQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760184962; x=1760789762;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ESeZUlMWivezlE3DeTyuSwyLVdykZbSbBsQ6LPdbgI0=;
        b=IZVei0Bw1XbvkDohJmhWNu/74aBL0R8rgnDofqMvw+v0jtMMzYPVy6BO8WD5XMccGS
         IAffsH90VnfG8kITO0bV1tXE7yQQRELyaXrg2ZqYh6RTFA2ydQ/08bNq94LtZgMFR5jC
         mZhc0GvJNRXycvdvDH/NTyAEy6TlAA5COjK8oYwGdAw+8jfEY36uz38pQxcTt+up1KtQ
         z5xaPZm1h/LHFZKAPqn3jLCHhpsLd7sGJ7G5jNyzt1nDOsiAhMvWeqzYr8xgx9uouhJI
         FIaQI1aQY1qNuFNPnJySPFjnk3I6Fz9u7V98nmb8bu9nfCTJo2t10Ys5KNBynIGjHy43
         ODKQ==
X-Forwarded-Encrypted: i=1; AJvYcCVeYBZGO5RZipkhjvDnlSJtpu3KumHFMRo6zqPMdfdvTrJTz6B3hpJZLB6bzEM2huh1WeEfqkuFwd8I@vger.kernel.org
X-Gm-Message-State: AOJu0YzkBPdUCZo9cbLm1R71gf24lxtRuJStSIO+hsxhV4MJsX1qFR4e
	aPfddJHki56vVYM8Z8ExXM6JVj9pjQJNkNN9EM1/0HEOKnfSN/gZ+Eek571JuFgZcJk=
X-Gm-Gg: ASbGnct0EUYdaHTmioy1GdK+n+HBD2LhtaE470KAg5zADJpFCSVvGCU69VVDXgfcrY9
	9uJqVvOrjoolcce2kyx5kALIdyvBJlxRXaXLPk+6u11Od02y5WILNnP1fkepK/FBMOWOPSGC373
	JRVMlyOsqWlgxaNbF8z5hP2V5KtakLWucQR2V+NvnfTvO0Tkk7YULpAHjV7xBRRg950h8iuu5ym
	EhSXGVpHMiI02I4uud9Vsq9HRf+CDe7y0576DXfbXdJwyHYw9FIyEBh1Np0A2ifslk5J3v/sdvo
	WvrLVBxmh6s3tnqxmmarVhbclFFg0z1vf6/UTD/Yfs0nFZfi6XeoF4rtamVGkqNP6sXQ6WE4+bl
	ssFBuqZ0UZUSSsBUF6s4I+2XGAcILgGfXlQSbx/41oyQkVCAbuuxI
X-Google-Smtp-Source: AGHT+IF0eKdBuninlOSWd/RRES96gVi6uKKSkT94wSVAQclPilU8XlMKpntgxCzH3mwQj1GRHiXV8Q==
X-Received: by 2002:a05:600c:4ec8:b0:46d:27b7:e7e5 with SMTP id 5b1f17b1804b1-46fa9b08d79mr103124925e9.32.1760184962016;
        Sat, 11 Oct 2025 05:16:02 -0700 (PDT)
Received: from linaro.org ([86.121.7.169])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-46fb482b99fsm93739915e9.3.2025.10.11.05.15.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 11 Oct 2025 05:15:58 -0700 (PDT)
Date: Sat, 11 Oct 2025 15:15:56 +0300
From: Abel Vesa <abel.vesa@linaro.org>
To: Wenbin Yao <wenbin.yao@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>, 
	Manivannan Sadhasivam <mani@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, 
	Bjorn Andersson <andersson@kernel.org>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org, 
	konrad.dybcio@oss.qualcomm.com, qiang.yu@oss.qualcomm.com, 
	Prudhvi Yarlagadda <quic_pyarlaga@quicinc.com>
Subject: Re: [PATCH v4 2/4] dt-bindings: PCI: qcom: Document the Glymur PCIe
 Controller
Message-ID: <w2r4yh2mgdjytteawyyh6h3kyxy36bnbfbfw4wir7jju7grldx@rypy6qjjy3a3>
References: <20250903-glymur_pcie5-v4-0-c187c2d9d3bd@oss.qualcomm.com>
 <20250903-glymur_pcie5-v4-2-c187c2d9d3bd@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250903-glymur_pcie5-v4-2-c187c2d9d3bd@oss.qualcomm.com>

On 25-09-03 23:22:03, Wenbin Yao wrote:
> From: Prudhvi Yarlagadda <quic_pyarlaga@quicinc.com>
> 
> On the Qualcomm Glymur platform the PCIe host is compatible with the DWC
> controller present on the X1E80100 platform. So document the PCIe
> controllers found on Glymur and use the X1E80100 compatible string as a
> fallback in the schema.
> 
> Signed-off-by: Prudhvi Yarlagadda <quic_pyarlaga@quicinc.com>
> Signed-off-by: Wenbin Yao <wenbin.yao@oss.qualcomm.com>
> Acked-by: Rob Herring (Arm) <robh@kernel.org>
> ---
>  Documentation/devicetree/bindings/pci/qcom,pcie-x1e80100.yaml | 7 ++++++-
>  1 file changed, 6 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie-x1e80100.yaml b/Documentation/devicetree/bindings/pci/qcom,pcie-x1e80100.yaml
> index 257068a1826492a7071600d03ca0c99babb75bd9..8600f2c74cb81bcb924fa2035d992c3bd147db31 100644
> --- a/Documentation/devicetree/bindings/pci/qcom,pcie-x1e80100.yaml
> +++ b/Documentation/devicetree/bindings/pci/qcom,pcie-x1e80100.yaml
> @@ -16,7 +16,12 @@ description:
>  
>  properties:
>    compatible:
> -    const: qcom,pcie-x1e80100
> +    oneOf:
> +      - const: qcom,pcie-x1e80100
> +      - items:
> +          - enum:
> +              - qcom,glymur-pcie
> +          - const: qcom,pcie-x1e80100
>  

The cnoc_sf_axi clock is not found on Glymur, at least according to this:

https://lore.kernel.org/all/20250925-v3_glymur_introduction-v1-19-24b601bbecc0@oss.qualcomm.com/

And dtbs_check reports the following:

arch/arm64/boot/dts/qcom/glymur-crd.dtb: pci@1b40000 (qcom,glymur-pcie): clock-names: ['aux', 'cfg', 'bus_master', 'bus_slave', 'slave_q2a', 'noc_aggr'] is too short
        from schema $id: http://devicetree.org/schemas/pci/qcom,pcie-x1e80100.yaml#

One more thing:

arch/arm64/boot/dts/qcom/glymur-crd.dtb: pci@1b40000 (qcom,glymur-pcie): max-link-speed: 5 is not one of [1, 2, 3, 4]
        from schema $id: http://devicetree.org/schemas/pci/qcom,pcie-x1e80100.yaml#

max-link-speed = <5> isn't yet supported and of_pci_get_max_link_speed returns -EINVAL and sets pci->max_link_speed to that
without checking the error.

So I guess fun stuff is happening based on that later on ...

