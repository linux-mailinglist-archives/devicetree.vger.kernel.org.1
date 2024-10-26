Return-Path: <devicetree+bounces-115976-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2842F9B18A9
	for <lists+devicetree@lfdr.de>; Sat, 26 Oct 2024 16:45:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0496C1C2121F
	for <lists+devicetree@lfdr.de>; Sat, 26 Oct 2024 14:45:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A076D1CA9C;
	Sat, 26 Oct 2024 14:45:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="VJlgHG3h"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com [209.85.208.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6EDA41C695
	for <devicetree@vger.kernel.org>; Sat, 26 Oct 2024 14:45:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729953911; cv=none; b=XxsdHS3eWoY2CwsOwAj/JRTbuI6XFrDqiCKSJrTxZAd8voFo1l/ZwpWvTWOD9VK6PTQTQ8sNfhnz+u0uE/hvtqh5579TCJuIhtElem+BSWiee38ga+835wEksGpCHF/CqwuoeUHRvgQR45JC97MrNMxXIcC0Rn2JHO3qO3//tDw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729953911; c=relaxed/simple;
	bh=H5JCTWHzJDfFcAzAjGbw0AJ975PXVf9SASk8fDJqYR4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=HzcAcjMSWcvi94Qp6jHZ5/3cNFQueymbGv1A2clll/HjZFycPoEMa/GMoN/rOMwR0dsoXkVFxwzBkObottOnfQhN5XN4TdJtCv31q++rsmxz3SlQwNPLkQw872q5BaFbrgaPLbnTuehFTAEIPF6XjvlpnSS5DjJ1e7kdUEdVUDw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=VJlgHG3h; arc=none smtp.client-ip=209.85.208.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f173.google.com with SMTP id 38308e7fff4ca-2fb51e00c05so44419241fa.0
        for <devicetree@vger.kernel.org>; Sat, 26 Oct 2024 07:45:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1729953907; x=1730558707; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=REkz7DRdRtxXTqGgy0w9BmyDW64v9/Nv/dpjM6jmtPU=;
        b=VJlgHG3h6N7pH2KX6QblE6rKXu8CJ/BtWYMOCW3MNatYzP9uH9PVV2XB7Mj0x6uJ2A
         Rv57RmWuQICVirYE5vFAKYqz2IGAz18ta8aIdCSA/EvO1DyeeC3/zFjHkeU6UT8BQuyG
         ba5l/qBpxUAbSjZb422AsgjQ8fIMMBLpuK3tZ8MDcjjmeb/DGzA+q4cCiKxa1CB8OYvI
         gF2Wi0ERZrC4JygmhYFvOHv7o3qM/1A/XMXDrSzS/l8qTGbeq5eQaJP/4A3bAJIyqKV0
         rWWzy+9Hhygxjwru3hsMpHtYN74adrkfeDcQHX6B5brBBgpMHyoja13ZKEo94rHZlCDD
         XRgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729953907; x=1730558707;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=REkz7DRdRtxXTqGgy0w9BmyDW64v9/Nv/dpjM6jmtPU=;
        b=O+Z/yK/TL+7ztpsjvH/7s5YcTC5NBD78BfWfNmL9ZQSFDeI5iWhGKGKWyNcnPMxS01
         E0B6uUYIwb+QCZTfGI14FkB/vqcDDx+a+2d/X14234WQA8qjQxIcZYlNvgfad2X9cqHT
         fppTtwlbVzkdfvPkm1F6fAT13MXTP0O+0ZM+4LVB5vy+3nW9Q4zFnzXIVTbph8PV76eH
         SookjovdUZA3ERuFAMLjQ+0RZlJYtdSjHHDHPRSI6gspjsEKmG10LPeIgkdPkRXVVw8A
         VZ3i780UiqfWLXJaF2wTjPik5jEbP5jg/aPLCsaI06aByDG89JeiGFMIPe7zkk790sQ7
         s6ug==
X-Forwarded-Encrypted: i=1; AJvYcCVV2OLPRE8u9UTXovkWmfpOroC1a6MvKaVhUFcyY/NgY9AAg7SGTBYL6dHcndCBkZ0BFHTmmwun07n+@vger.kernel.org
X-Gm-Message-State: AOJu0Yzct+GhqN5+JtjNabPCF1QwYif6dKFTlsniqMKEnQ4lEl1GnhRE
	viSmcvgv8IV7Co3n+KsYcfXpaSAJmQniYe4rg2/O7Ty6fqm3sg2yKS9waPzFmt8=
X-Google-Smtp-Source: AGHT+IHPWOGIFx2rtlDawJl7JbLkIfvVYS64wBwBCl27j5ZKAZ0b6Wd5JFsRRAEPbMvro9n7y/Sdaw==
X-Received: by 2002:a2e:5119:0:b0:2fb:8c9a:fe3f with SMTP id 38308e7fff4ca-2fcbdfc7509mr16228161fa.22.1729953907276;
        Sat, 26 Oct 2024 07:45:07 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2fcb4507b90sm5698381fa.12.2024.10.26.07.45.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 26 Oct 2024 07:45:05 -0700 (PDT)
Date: Sat, 26 Oct 2024 17:45:03 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Raviteja Laggyshetty <quic_rlaggysh@quicinc.com>
Cc: Georgi Djakov <djakov@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Sibi Sankar <quic_sibis@quicinc.com>, linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH V2 1/3] dt-bindings: interconnect: Add EPSS L3 compatible
 for SA8775P
Message-ID: <7k2vnjop6xyshquqlbe22gm7o5empeluvsohfmq5ulnaas3keb@yzomhzi4w7vf>
References: <20241026123058.28258-1-quic_rlaggysh@quicinc.com>
 <20241026123058.28258-2-quic_rlaggysh@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241026123058.28258-2-quic_rlaggysh@quicinc.com>

On Sat, Oct 26, 2024 at 12:30:56PM +0000, Raviteja Laggyshetty wrote:
> Add Epoch Subsystem (EPSS) L3 interconnect provider binding on
> SA8775P SoCs.
> 
> Signed-off-by: Raviteja Laggyshetty <quic_rlaggysh@quicinc.com>
> ---
>  .../devicetree/bindings/interconnect/qcom,osm-l3.yaml         | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/interconnect/qcom,osm-l3.yaml b/Documentation/devicetree/bindings/interconnect/qcom,osm-l3.yaml
> index 21dae0b92819..042ca44c32ec 100644
> --- a/Documentation/devicetree/bindings/interconnect/qcom,osm-l3.yaml
> +++ b/Documentation/devicetree/bindings/interconnect/qcom,osm-l3.yaml
> @@ -34,6 +34,10 @@ properties:
>                - qcom,sm8250-epss-l3
>                - qcom,sm8350-epss-l3
>            - const: qcom,epss-l3
> +      - items:
> +          - enum:
> +              - qcom,sa8775p-epss-l3
> +          - const: qcom,epss-l3-perf

Why is it -perf? What's so different about it?

>  
>    reg:
>      maxItems: 1
> -- 
> 2.39.2
> 

-- 
With best wishes
Dmitry

