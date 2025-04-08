Return-Path: <devicetree+bounces-164169-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id B15FAA7F685
	for <lists+devicetree@lfdr.de>; Tue,  8 Apr 2025 09:39:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 9455E7A97EB
	for <lists+devicetree@lfdr.de>; Tue,  8 Apr 2025 07:36:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9A1012641DA;
	Tue,  8 Apr 2025 07:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="JnQWSaZx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D6B1263F23
	for <devicetree@vger.kernel.org>; Tue,  8 Apr 2025 07:35:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744097733; cv=none; b=izMkl3p4acKNqtcpd5G+LWnwDX9SfFPOkMv+ZZkkiMdWghNa/H8Fp1vdQFkU2JqhNF7qJLR42XjwMXCgeo+32eq3akvmw6nuWSs9p9QT5LbZpQPK4NeRciePOudUIbn7Oeuc61TaNmoUVoP3rE28kfGVp06KQwxvX0N2MtR9q80=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744097733; c=relaxed/simple;
	bh=lT5mKdSlq8oPEv2oBvQ90+eQd2L1YXxqPfN8R/eFRE4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Dkj6FtFJOaycA6mHPoVr3ve83vDl/B8Q8+RHWpA9I2n8Wvkr9Usf5e3vWvlZ56ndwIiNdCTR0rC8kr43R2hcibFNV67yq7OEPcWkEZvfD7r1hWLqNbBPqhorc0PzIoeuGLOqVZwAVfGwMNskZr1z5y32Vs31ez6a7gP/+dauuNs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=JnQWSaZx; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-43edecbfb46so23014115e9.0
        for <devicetree@vger.kernel.org>; Tue, 08 Apr 2025 00:35:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1744097729; x=1744702529; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=bzDOAHoHmGJFY2C4m+oCbnEJZ1yOWSsgLDpINkYOwtw=;
        b=JnQWSaZxGQ8u8bxeKuhWxZtROTpv1UdpcKMxAlked7NqrEL0rYhgWe+0+UsT20yj5E
         9fyMpx6PhxHne4v/PcNgkVnApKe3Zof0j71+YGACPwufsRkvTRDp/Emqf/nJlWOAFka8
         AE4r9Yhzbhw54PnJKao38xgS4hmCmFdBzj8IF039TdTfHpIJf8oMdcJZZPYfdhuEtTIS
         kzunyLWUxK2zNSCTnaSUaWGJC6rTNmxJPlU3GDUTSaclpwcn4j/jGC7GPS1ojp0OWLbd
         r3pgsEYHch3JhztDjZ5OsCFvgZ7txmUlugPImCiHwiTjS7VkV1Tj3+ZwzM5Ee3VHczXK
         Abww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744097729; x=1744702529;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bzDOAHoHmGJFY2C4m+oCbnEJZ1yOWSsgLDpINkYOwtw=;
        b=WNf+1/Cm9pOwja/DNDjYgf/OeOFZomLG88/MdOsmVLuEUiDAniTbLB34auZHplt+Dj
         sA8H2P73m53jq7RXNV0wJ5smFuCjlswHx+Nc+5N5ss7u9dLbZVN3DZ9ecCbzY2Nl97gF
         Xm5+NMysFQfr6GJVGl2tWfFWKYJqI+adlHUWusagbjSKD/PejbRVHRbVhnavLUCaYSjW
         3GHhkzjpI5ITHnpEn5lf5iyw2f3yxsL0tF11t28NmqQ6k5cDD/KgrT0bmvf33dBQu2La
         PIrVECwwQVpDaAIZJjgu/LOxQ6qWLtTzR+ad+l9Z1LoXRaE7hqtxF61Kln3Tlx0PU9Hf
         6Vkg==
X-Forwarded-Encrypted: i=1; AJvYcCVxvcVECP12jUjeYFhV1HF/3tIk3amQmSqZ9KWpgsP6m41eklPR4Pvf8o26EfK2zesTo4r0vun+CBei@vger.kernel.org
X-Gm-Message-State: AOJu0YzqRqiOTh7dJpw7upcx+xNGMMz/2+9f7w6xYfOwO/8YKvQgNwEh
	gDfDRDoQ4QgKxAC0BLmQJfYwY+nZI16NFZkN7yS/Z/dfoCboTqIhCqa2MtL+5eu4BXCrTgx5dSx
	IzZM=
X-Gm-Gg: ASbGncuOdJqWSWQJd9CAk7SKWabQ9zdYYxPUTs4QQz17djql87whGxWjvv3GD3iNSQq
	2/oLKLwkBvlSCPC6PokzB1ETdHAX1UkVDUM5Etlg2csLKPFt+L6qF4uMl/+Cl7wQW7DwLVOCL4T
	tS7L1NSp3C1uXelEyXCM10zPyfY8kcUDqEBQ/2iKSiCNSakBstG3jACUttLqlXw32p+x6B/vyQo
	wJ9u+e9xyP+olcqPjxv485jVevnxpWnxzHtjbHqz4vmNs978XgvHAEyT9mSVSXfuR+sY6Qkp1aw
	+v4QLUO3GDCfKw/juEy/K0pEEG/czW77uOUYiZNrZrQ=
X-Google-Smtp-Source: AGHT+IHJ4HfDuWG19jV3pAC/z0UwKWS4vohMre2m90wxX+hddBFsMJUEGHrkQ7C6iLrYU3yh7T2Htg==
X-Received: by 2002:a05:600c:8719:b0:43c:f85d:1245 with SMTP id 5b1f17b1804b1-43ecf8e7321mr170671655e9.17.1744097728808;
        Tue, 08 Apr 2025 00:35:28 -0700 (PDT)
Received: from myrica ([2.221.137.100])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43ec34be2ffsm151346185e9.22.2025.04.08.00.35.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Apr 2025 00:35:28 -0700 (PDT)
Date: Tue, 8 Apr 2025 08:35:27 +0100
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: "Michael S. Tsirkin" <mst@redhat.com>, Jason Wang <jasowang@redhat.com>,
	Xuan Zhuo <xuanzhuo@linux.alibaba.com>,
	Eugenio =?utf-8?B?UMOpcmV6?= <eperezma@redhat.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, virtualization@lists.linux.dev,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: virtio: pci-iommu: Add ref to
 pci-device.yaml
Message-ID: <20250408073527.GA2279090@myrica>
References: <20250407165341.2934499-1-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250407165341.2934499-1-robh@kernel.org>

On Mon, Apr 07, 2025 at 11:53:40AM -0500, Rob Herring (Arm) wrote:
> The virtio pci-iommu is a PCI device, so it should have a reference to
> the pci-device.yaml schema. The pci-device.yaml schema defines the 'reg'
> format as a schema, so the text description for 'reg' can be dropped.
> 
> Signed-off-by: Rob Herring (Arm) <robh@kernel.org>

Reviewed-by: Jean-Philippe Brucker <jean-philippe@linaro.org>

> ---
>  .../devicetree/bindings/virtio/pci-iommu.yaml          | 10 ++++------
>  1 file changed, 4 insertions(+), 6 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/virtio/pci-iommu.yaml b/Documentation/devicetree/bindings/virtio/pci-iommu.yaml
> index 972a785a42de..8bd6ad72ac7a 100644
> --- a/Documentation/devicetree/bindings/virtio/pci-iommu.yaml
> +++ b/Documentation/devicetree/bindings/virtio/pci-iommu.yaml
> @@ -20,6 +20,9 @@ description: |
>    virtio-iommu node doesn't have an "iommus" property, and is omitted from
>    the iommu-map property of the root complex.
>  
> +allOf:
> +  - $ref: /schemas/pci/pci-device.yaml#
> +
>  properties:
>    # If compatible is present, it should contain the vendor and device ID
>    # according to the PCI Bus Binding specification. Since PCI provides
> @@ -33,12 +36,7 @@ properties:
>            - const: pci1af4,1057
>  
>    reg:
> -    description: |
> -      PCI address of the IOMMU. As defined in the PCI Bus Binding
> -      reference, the reg property is a five-cell address encoded as (phys.hi
> -      phys.mid phys.lo size.hi size.lo). phys.hi should contain the device's
> -      BDF as 0b00000000 bbbbbbbb dddddfff 00000000. The other cells should be
> -      zero. See Documentation/devicetree/bindings/pci/pci.txt
> +    maxItems: 1
>  
>    '#iommu-cells':
>      const: 1
> -- 
> 2.47.2
> 

