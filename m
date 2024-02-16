Return-Path: <devicetree+bounces-42635-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 57A9B857EB6
	for <lists+devicetree@lfdr.de>; Fri, 16 Feb 2024 15:07:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6FA9B1C22A85
	for <lists+devicetree@lfdr.de>; Fri, 16 Feb 2024 14:07:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 53B3D12C7F6;
	Fri, 16 Feb 2024 14:06:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Va6XKjgz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f177.google.com (mail-pf1-f177.google.com [209.85.210.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA64F12C7EA
	for <devicetree@vger.kernel.org>; Fri, 16 Feb 2024 14:06:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708092384; cv=none; b=S/fr/5U+4oSOfrdq14OK9/+XYaDQv5gvCPOliET+BNr0+QUzhQQ5+jmpOnbCEqtEdNmGqw54Hp530QRwyLH6YieA+4oVRfM9FF0n+U2KgfbvybbJHJldWYhLXnvXAZXjvVF42moNaXHVIKnVpDuj8vdgX+vjyOjdsfPt723eyxQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708092384; c=relaxed/simple;
	bh=bAu2PND9JYRILMhrLqb//hy/h62rVPrraWmxZ04wfFI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=rdQTfl+lz671mf2iqCdGWa18sFnfE4KTT/039hcqVkT3tNrduicTf3wgzhWVNpglrf/LQyZWLltxKGiom+gRSwGqCMyoEI8aJ752ZL102jDdy4WXL+ykMhAjU5jaGrfD0bs6IW55wOdSjxblwyE8j87ZCWdyIz9j9bEhUNydNro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Va6XKjgz; arc=none smtp.client-ip=209.85.210.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pf1-f177.google.com with SMTP id d2e1a72fcca58-6e1358dd3a1so958777b3a.1
        for <devicetree@vger.kernel.org>; Fri, 16 Feb 2024 06:06:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708092382; x=1708697182; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=O3dHLlYZRK7J9zZQzjwJFT/aM7vDnrj3CkPGq1K5fek=;
        b=Va6XKjgzSMQeP3J4R7hRgqesgj1o6PpXqIG3y6hY/P2TP3g8GVGWBx+yOlEe/ZmJVL
         tEhQxM2yTb3n5FtHeo6jRs/66QwEVTE9TeLoIT6MgyDn6xW0iGktx8lFx2nVbOK4MMYs
         Cy9AFmKTeuQWx5h2Xdb+dH7bNOfTaRbof1wxnvT8z3+emDCsb3aDCKYW/JGP4eVGXMRB
         MPBSE/EmGWKz8si5UqyKT5sjIwintV9hSgvwNJ7+mXxCly6udIauP+f94ut+ORxEZRid
         6FSQ4LYYmNFi2UCy7K2nBex3ZvE1j4WtzksBwStCYM99aDMCIyBVPGCVNv5mu+sBngG4
         A+AQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708092382; x=1708697182;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=O3dHLlYZRK7J9zZQzjwJFT/aM7vDnrj3CkPGq1K5fek=;
        b=wCt0hqtkx1aBT5M+oupzJHzv7sNvHlaxgWjafKhRnaiuQ19WptX3BNA9nOXNtSlqvr
         PSxg00memzMkiHSL8y/0t+yo0eeQAkdUUM6wM8SZVIcZfj2bCZsh5xMx2rXCWMe+ld93
         f0SPU8NyV0Hg4ifep9NBWnHmZjNK3LumYlPn+Xb/6/jwdJ0XrP1xmVUxkKP91LXeCECj
         YV9bZzp9ienusk8L2VBhYzsdl80h6RedHum7c9u95yU6SKfPZWTv4fOlomBejjnGL8Ol
         NysI6d2AawMfPmUTpJNjhMcjdK8kornw263v6LzFs9L5gDLU0BFanRzkQRoewsvLXe62
         d2BQ==
X-Forwarded-Encrypted: i=1; AJvYcCUXx9kGiCuGlzIvd2WPcigSa4suCY/ispj3YgKYp1B3OEi6IZFb5WI996WRwW02fKK0gNTFzqCE2CmP6zqhn38g2f6hS7MAWyLV0g==
X-Gm-Message-State: AOJu0YwPP4WHau5SFJJ0flY73LNXiHDFzPJCPFehjRN5Crz3jAwnO103
	iKbc6dpOuq6bfxo6yl3Quz0P11G+j6UjP/VVwlp8knauhCOCSYjXNjnwBw5+UA==
X-Google-Smtp-Source: AGHT+IEVKL2W8Ew0RqRICTu86Llx4Xnb4uMrPeGq+pPINM4mazjOtgpp66xUfqQBZJhrgWNWNweiYg==
X-Received: by 2002:a05:6a00:18aa:b0:6e1:1e05:d629 with SMTP id x42-20020a056a0018aa00b006e11e05d629mr6372478pfh.18.1708092381619;
        Fri, 16 Feb 2024 06:06:21 -0800 (PST)
Received: from thinkpad ([120.138.12.48])
        by smtp.gmail.com with ESMTPSA id l2-20020a656802000000b005dc2ca5b667sm2860185pgt.10.2024.02.16.06.06.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Feb 2024 06:06:21 -0800 (PST)
Date: Fri, 16 Feb 2024 19:36:15 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	"James E.J. Bottomley" <jejb@linux.ibm.com>,
	"Martin K. Petersen" <martin.petersen@oracle.com>,
	Nitin Rawat <quic_nitirawa@quicinc.com>,
	Can Guo <quic_cang@quicinc.com>,
	Naveen Kumar Goud Arepalli <quic_narepall@quicinc.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Avri Altman <avri.altman@wdc.com>,
	Bart Van Assche <bvanassche@acm.org>,
	Andy Gross <agross@kernel.org>, linux-arm-msm@vger.kernel.org,
	linux-scsi@vger.kernel.org, devicetree@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH v2 5/6] dt-bindings: ufs: qcom,ufs: drop source clock
 entries
Message-ID: <20240216140615.GM2559@thinkpad>
References: <20240213-msm8996-fix-ufs-v2-0-650758c26458@linaro.org>
 <20240213-msm8996-fix-ufs-v2-5-650758c26458@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240213-msm8996-fix-ufs-v2-5-650758c26458@linaro.org>

On Tue, Feb 13, 2024 at 01:22:21PM +0200, Dmitry Baryshkov wrote:
> There is no need to mention and/or to touch in any way the intermediate
> (source) clocks. Drop them from MSM8996 UFSHCD schema, making it follow
> the example lead by all other platforms.
> 
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

Acked-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

- Mani

> ---
>  Documentation/devicetree/bindings/ufs/qcom,ufs.yaml | 12 +++++-------
>  1 file changed, 5 insertions(+), 7 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/ufs/qcom,ufs.yaml b/Documentation/devicetree/bindings/ufs/qcom,ufs.yaml
> index 9a4f2b43e155..649f7951ac01 100644
> --- a/Documentation/devicetree/bindings/ufs/qcom,ufs.yaml
> +++ b/Documentation/devicetree/bindings/ufs/qcom,ufs.yaml
> @@ -44,11 +44,11 @@ properties:
>  
>    clocks:
>      minItems: 8
> -    maxItems: 11
> +    maxItems: 9
>  
>    clock-names:
>      minItems: 8
> -    maxItems: 11
> +    maxItems: 9
>  
>    dma-coherent: true
>  
> @@ -189,16 +189,14 @@ allOf:
>      then:
>        properties:
>          clocks:
> -          minItems: 11
> -          maxItems: 11
> +          minItems: 9
> +          maxItems: 9
>          clock-names:
>            items:
> -            - const: core_clk_src
>              - const: core_clk
>              - const: bus_clk
>              - const: bus_aggr_clk
>              - const: iface_clk
> -            - const: core_clk_unipro_src
>              - const: core_clk_unipro
>              - const: core_clk_ice
>              - const: ref_clk
> @@ -259,7 +257,7 @@ allOf:
>            maxItems: 2
>          clocks:
>            minItems: 8
> -          maxItems: 11
> +          maxItems: 9
>  
>  unevaluatedProperties: false
>  
> 
> -- 
> 2.39.2
> 

-- 
மணிவண்ணன் சதாசிவம்

