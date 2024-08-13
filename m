Return-Path: <devicetree+bounces-93335-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C75E95091F
	for <lists+devicetree@lfdr.de>; Tue, 13 Aug 2024 17:29:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4FDE62881F7
	for <lists+devicetree@lfdr.de>; Tue, 13 Aug 2024 15:29:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5693E1A01D9;
	Tue, 13 Aug 2024 15:29:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="NGDsSZYW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f171.google.com (mail-pf1-f171.google.com [209.85.210.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3D331A01CD
	for <devicetree@vger.kernel.org>; Tue, 13 Aug 2024 15:29:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723562961; cv=none; b=V7+LuEr+dUvueM/VEkXcDx68bDclyI5er4wtaj+KYoFEkSSq+EAjjFav1w9jf9bZ/OZls7stolXRNP2fc4bEfsKTVKC3l5b58xOpZYlH0L24oASXmLRob1CmCtP38r5nAHuXx/qprAdezwo01aGbg4UNOWrLK8r2hasOKJlmPXw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723562961; c=relaxed/simple;
	bh=MqJubU5cYz/aptjU9ySH+C98veWxton14FcRM+3KTMQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=D0Rd4coV3LcdmSD01EibZfaF1/JJkHU2JG312dt4rvpXUagJ0q1XPABRl/T5wgtppYFc8vgTGwqsmeyHneDoY+k6mssTEjoBtbQJH2RveiOiLn+Wpk88hKJD9ajIy550+/wKbJvwN5EaXNYEgtM4Uf/H97NZl4hxeRlGBfCPnEw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=NGDsSZYW; arc=none smtp.client-ip=209.85.210.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pf1-f171.google.com with SMTP id d2e1a72fcca58-70d23caf8ddso4963448b3a.0
        for <devicetree@vger.kernel.org>; Tue, 13 Aug 2024 08:29:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1723562959; x=1724167759; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=XzoifUF7R6BsxePNIhgRi9mSGSqDwAxDEVpqozSqGCQ=;
        b=NGDsSZYWEaWV7BfHAC6nw87ciEF3k2OCRcUPUQgqj8xsS6/sG2mRLmDhC0lV2jBNz9
         81N4Jo6zY5LmasrWTubaY/s5/bIHNACojxra7kRZSdkZGRA46/unQjWmotxsZUiyEEgF
         BHqQzT8NKefAZRsRDe/9pXdD4fMJ59Ql5uBWiv0EYd0RixnxCJrUvcFWj6PzcihjKc6Q
         bG0xQMt2FKbxEcb4nkJ8+th+pT0qQRIHZ9rPZBM96VZV6zjWZQEV846Svx0xelS2Izz0
         w5NT06qx8QUzcxRNTZAaL2kOfTJU5Vr9UR2wSGKClH3wGrcdONze4vDYvTQK6FvrF9uY
         nUsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723562959; x=1724167759;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XzoifUF7R6BsxePNIhgRi9mSGSqDwAxDEVpqozSqGCQ=;
        b=IN+DRRZYR01GOPnsZMEvev2/Qb/NYVo/TDAr3wHocWIh28ggfugugiTfwcRVLSDYWJ
         s9qOZO6BnFs3plPOdl5lo3izle0NcfSlTHGn2te3felcUck+NZxsXXAjq6yTkrMcGrhc
         87UJf54W7okql6MG/9xBIXrSvCvp3ouQCE4xXwKQ6LJy2eFmy/DPFMxDfMEfIYHVbZCF
         PDpbi0wqFh353t9JE4L9sDjzaae6KDdvOD0p2HOdNETJCLzXskYdrIOJlK5Mo64UZCU8
         p2h/RCSb0EJsHqQTfdbJty6tmoZcE+R304Ydo1oz/VIHfpsJpIFOazJ8eOBUcUEPZypH
         P93w==
X-Forwarded-Encrypted: i=1; AJvYcCXSm9Et1MO411CaUUSV0Ty1FIuFDRbcrNxk0SdEDdl7GL62tjX8Ce45hIdyYwTA0V0YygKoiYW61ae/7/rqs8bHekTMY98G1SMXIw==
X-Gm-Message-State: AOJu0YwHLHD7S+tB1gxPXIQCGgDf6nPo0Q3k9p8v8R7NUnodMHuYGu/d
	q0ikk7FsD8O+atEUTXtivIRQ1qzZxVh86pzVnKgecBy5FfaA0/bzX2eCALfMoRI=
X-Google-Smtp-Source: AGHT+IGDymo/Enc2VMdHdFMER69N7RN8NQYcz69tqAUf0DoJFV7XImydzeVK44nDDsmMWz2QKoXx7A==
X-Received: by 2002:a05:6a00:3a26:b0:70d:21d9:e2ae with SMTP id d2e1a72fcca58-71255105c08mr4830870b3a.6.1723562959046;
        Tue, 13 Aug 2024 08:29:19 -0700 (PDT)
Received: from p14s ([2604:3d09:148c:c800:d596:d55b:d99d:7ece])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-7c6979eda81sm1618944a12.23.2024.08.13.08.29.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Aug 2024 08:29:18 -0700 (PDT)
Date: Tue, 13 Aug 2024 09:29:15 -0600
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Michal Simek <michal.simek@amd.com>,
	Ben Levinsky <ben.levinsky@amd.com>,
	Tanmay Shah <tanmay.shah@amd.com>,
	Radhey Shyam Pandey <radhey.shyam.pandey@amd.com>,
	linux-remoteproc@vger.kernel.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: remoteproc: xlnx,zynqmp-r5fss: add missing
 "additionalProperties" on child nodes
Message-ID: <Zrt7yxTjBNkMGZlI@p14s>
References: <20240811153438.126457-1-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240811153438.126457-1-krzysztof.kozlowski@linaro.org>

On Sun, Aug 11, 2024 at 05:34:38PM +0200, Krzysztof Kozlowski wrote:
> All nodes need an explicit additionalProperties or unevaluatedProperties
> unless a $ref has one that's false.  Add missing additionalProperties
> to fix dt_binding_check warning:
> 
>   xlnx,zynqmp-r5fss.yaml: ^r(.*)@[0-9a-f]+$: Missing additionalProperties/unevaluatedProperties constraint
> 
> Fixes: 9e1b2a0757d0 ("dt-bindings: remoteproc: Add Tightly Coupled Memory (TCM) bindings")
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
>  .../devicetree/bindings/remoteproc/xlnx,zynqmp-r5fss.yaml        | 1 +
>  1 file changed, 1 insertion(+)
>

Applied.

Thanks,
Mathieu

> diff --git a/Documentation/devicetree/bindings/remoteproc/xlnx,zynqmp-r5fss.yaml b/Documentation/devicetree/bindings/remoteproc/xlnx,zynqmp-r5fss.yaml
> index 6f13da11f593..ee63c03949c9 100644
> --- a/Documentation/devicetree/bindings/remoteproc/xlnx,zynqmp-r5fss.yaml
> +++ b/Documentation/devicetree/bindings/remoteproc/xlnx,zynqmp-r5fss.yaml
> @@ -62,6 +62,7 @@ properties:
>  patternProperties:
>    "^r(.*)@[0-9a-f]+$":
>      type: object
> +    additionalProperties: false
>      description: |
>        The RPU is located in the Low Power Domain of the Processor Subsystem.
>        Each processor includes separate L1 instruction and data caches and
> -- 
> 2.43.0
> 

