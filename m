Return-Path: <devicetree+bounces-104897-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 2665698477E
	for <lists+devicetree@lfdr.de>; Tue, 24 Sep 2024 16:20:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E11BC1F23F89
	for <lists+devicetree@lfdr.de>; Tue, 24 Sep 2024 14:20:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8B0041A76CF;
	Tue, 24 Sep 2024 14:20:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="hq1mMgMc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE2121A706C
	for <devicetree@vger.kernel.org>; Tue, 24 Sep 2024 14:20:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727187623; cv=none; b=EQr4z/TLYWQZZI6qvcC7apXqAAGeBGCe0E+f6QHNNEzilggNgHASNWdK8ofSiT0R8Kf6tp1fThy+ScKnweobHxAh5ClafOkVUPGddaX/+F7o18WTDNLnErl3ipvAM+Vqxmf2o6RYNSIT7iodUo+5mBhSQ1diLEC4a8K6LhKFK2M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727187623; c=relaxed/simple;
	bh=Zx35elHsEg0JVu9MRu5wlLiZP7eT0TpTUMMTAu5d/PM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=mH/t80HO5nvRLp8B6aHTJCdYGlAC4cesHOA2xLl4aGI9vnl0Z1lXiaR0T0wxfwFXVlx0E/pqGWmGR1xsyIzkM9Iz4m8txV/WEF/3UhP3RYlOIZdGJ7UnaNSYyg0kTwoCnTKaP9MCPFSihv34DL3P+z8Mj3vjIt7tuBsYi9JvM7s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=hq1mMgMc; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-42cbc22e1c4so45481185e9.2
        for <devicetree@vger.kernel.org>; Tue, 24 Sep 2024 07:20:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1727187620; x=1727792420; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=IBpeVbo9z7aRe+TrzSRUi58GE2boM7RJ99mj0zVWRrw=;
        b=hq1mMgMciiSPfl7oZ7I5ZRc5vFv3OSO3Bm0Q/w7rX3QBopCmo3oVyYmkum3oWCRLcr
         CCuopVNEY/+2E4wzTXa5WCZb7YC3scI6dLLsvMVxg3+f/uuM95IIX+QGryZEDuDV3QHL
         ro44rujjAe7scAIt1WyDDKFJDA/4zja105fI/StJQaQLvBPhoKawceuW4RRrgJIUYfG+
         wnc/T3/jpJX6dpTK7KijRchY3qbwlmQr+IiFfIo8Ezw+FNKIJvOeGnbpvJaUQKVDSSXj
         NTHoq0uqNwaCzKfTTjNZbl/ZJqkdqUUqTR+1K1QhedQmaDQE3gP3IuE9RfJVRXFxMDe5
         bP5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727187620; x=1727792420;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=IBpeVbo9z7aRe+TrzSRUi58GE2boM7RJ99mj0zVWRrw=;
        b=qKCdyyhCDfsxnLBjmAmi/KT8lLDtt9BMtyyb/UXxlRZt1LubV3yUzGSSpTKwPRgkMY
         25PSClD/A878jygBeHN/Rx40ZEGp0ZHGMiw1LpU9fL3oL1cHwP50l10H1X51jNFGIX/G
         79u2DCSAaw3go+Ejm1K2AWVUibByjekMcfPXPTV5Wp1ScxfE18P5ZnsR9bj7rR7pLLFY
         YHGXCGL2xvAcN38Z0N3gVE2ohe2SuwJIHoJMUoR5/R0fprMu08JKeR03B5Uq+Ku+eeQ/
         bGC1VtLRpF067+lO2+OYztV+xDye102cS8AYi3+gU2cY0oPOCCNQad7dV2gMswel/cwd
         c7pQ==
X-Forwarded-Encrypted: i=1; AJvYcCVnfvtepiXSlA3WOXZNockkDCOICfIzsftWk3TORn7EoYSnAQnsxd9CgGFPTkgPVo8zkm81srSkRnJe@vger.kernel.org
X-Gm-Message-State: AOJu0Yzpdfpcwq+1pQR7VzTGeCNbdRCErHoVWwwbcmHUuVNhrPTZq0Bh
	oiyZnMGjyv/PlRuMC2aYiEShwEw94XfVbxhhULt+YM8OprQH/iNnEoEczlt9Vw==
X-Google-Smtp-Source: AGHT+IG9EpmgS7q9HhtLhVXQyXDQ3hAV6rgd1tCQ6i8BOd6jbZ8OgSBIMsNIk+JOUCbwzBpjj7bIjg==
X-Received: by 2002:a05:600c:458d:b0:426:6edf:6597 with SMTP id 5b1f17b1804b1-42e7ac4acfcmr104107285e9.19.1727187620292;
        Tue, 24 Sep 2024 07:20:20 -0700 (PDT)
Received: from thinkpad ([80.66.138.17])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-42e9029857fsm24204415e9.13.2024.09.24.07.20.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Sep 2024 07:20:19 -0700 (PDT)
Date: Tue, 24 Sep 2024 16:20:18 +0200
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Thippeswamy Havalige <thippesw@amd.com>
Cc: kw@linux.com, robh@kernel.org, bhelgaas@google.com,
	devicetree@vger.kernel.org, conor+dt@kernel.org, krzk+dt@kernel.org,
	bharat.kumar.gogada@amd.com, michal.simek@amd.com,
	lpieralisi@kernel.org, linux-pci@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 1/2] dt-bindings: PCI: xilinx-cpm: Add compatible
 string for CPM5 host1
Message-ID: <20240924142018.6ya5jtdxcgpunnvq@thinkpad>
References: <20240922061318.2653503-1-thippesw@amd.com>
 <20240922061318.2653503-2-thippesw@amd.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240922061318.2653503-2-thippesw@amd.com>

On Sun, Sep 22, 2024 at 11:43:17AM +0530, Thippeswamy Havalige wrote:
> The Xilinx Versal premium series has CPM5 block which supports two typeA
> Root Port controller functionality at Gen5 speed.
> 
> Add compatible string to distinguish between two CPM5 rootport controller1.
> since Legacy and error interrupt register and bits for both the controllers
> are at different offsets.
> 
> Signed-off-by: Thippeswamy Havalige <thippesw@amd.com>

Acked-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

- Mani

> ---
> changes in v3:
> --------------
> 1. Modify compatible string.
> ---
>  Documentation/devicetree/bindings/pci/xilinx-versal-cpm.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/pci/xilinx-versal-cpm.yaml b/Documentation/devicetree/bindings/pci/xilinx-versal-cpm.yaml
> index 989fb0fa2577..b63a759ec2d7 100644
> --- a/Documentation/devicetree/bindings/pci/xilinx-versal-cpm.yaml
> +++ b/Documentation/devicetree/bindings/pci/xilinx-versal-cpm.yaml
> @@ -17,6 +17,7 @@ properties:
>      enum:
>        - xlnx,versal-cpm-host-1.00
>        - xlnx,versal-cpm5-host
> +      - xlnx,versal-cpm5-host1
>  
>    reg:
>      items:
> -- 
> 2.34.1
> 

-- 
மணிவண்ணன் சதாசிவம்

