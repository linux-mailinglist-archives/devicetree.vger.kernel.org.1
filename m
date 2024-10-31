Return-Path: <devicetree+bounces-117848-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A39E9B8160
	for <lists+devicetree@lfdr.de>; Thu, 31 Oct 2024 18:38:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 053F2B21008
	for <lists+devicetree@lfdr.de>; Thu, 31 Oct 2024 17:38:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2E3161C2456;
	Thu, 31 Oct 2024 17:37:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="WT74AqwS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com [209.85.167.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E05951BD515
	for <devicetree@vger.kernel.org>; Thu, 31 Oct 2024 17:37:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730396272; cv=none; b=Vs20FthW3eYeYC5Jv+W8+dwFk9D5SNVmnhnZimPQgTRompcd0cm8w4AiEUD9+h7PiPho+cSuPOqR4ztzs4ekikuFqyHKrGRrJZU8ec+Qx6yrUxNZO8ieFg1xzao6rVDOFI4WWYUG9xVZi6gSj6utqZfxqhFu5BwQXjGkSaFgpEg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730396272; c=relaxed/simple;
	bh=4sXu8HvrmNTEWnjIBowrah7u8asTbv+L1Lm8apIdGq8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ZRCe9pCin1jAUNCPIERpVQUaOMtchLIsJF1E1pCrUU6YtUMMPmy5SeN/yiuk6ci8YjRI8YdPYWoba3jCkSN4h6CkUw5OZ5zoij9npv9k6RDzzJrGRAT1+3ntdjdhF4MuThVk+HckcXksj7s5fW1a4XWToq9Ga7ax4jr8eBdHsUk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=WT74AqwS; arc=none smtp.client-ip=209.85.167.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f41.google.com with SMTP id 2adb3069b0e04-539f72c913aso1909672e87.1
        for <devicetree@vger.kernel.org>; Thu, 31 Oct 2024 10:37:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1730396267; x=1731001067; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=wvGN26v9h9TbcjLka9mTWi25+1w0LLwGx8pUqzN3ads=;
        b=WT74AqwSUi9S+t5vgUKUlJDFnhCGqst4KW+esiduxiYDGL+kiKF8fiIVRlP9NR9eSo
         d8tm8LPAevHLM/2W50W9cRiwEyi/6pV4ofYF3QnoUedsQQgTCaqHMpyXr8ljNfMLSs2h
         u/oaEv0rxACtSst3M6lyizvsf3TuykwywhrWdcVKGhkrgvqlAckDpklkm4duaPsZykpx
         sLKA78EcMKQ5tfUhBl59Myunl6Sm6FhiGPdM9K0pNx29oIooX0zhkpzL2dT7IoNcGpIU
         OZ/O2SKRhR6UZYaWLlZ3UeieUq+v415QhLlsLXm30K9E0xnv/JCO8cnY64RVGiZpgeh3
         9K8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730396267; x=1731001067;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wvGN26v9h9TbcjLka9mTWi25+1w0LLwGx8pUqzN3ads=;
        b=EzUj7GxJR4bpb8u96arRFC4Dm4r79moATUA4TLyRkpMUn/tmzBNu7i0KyUSL/6f2vq
         BIkhfRTxTdqfeSdTgB31+UxRusAiocurwYLe8WK9ETISDKAFUPrfYSMG9/CdmGNPunXW
         mPdDdRrxdCBEbA1CtYbJX9RYdgEtZiriKYhen//TP0Qpia1YoCG2LkPbNxXT0wbGQ+Mt
         vNKYMKd5NHLHpE5J+EeHi/2ZAcUkwBTtzBtc9qCyepVeUYxWprwfxTL6AQx9fbe4d2Xj
         UU+KCfsuSQ9UqdjgwLHCq6f2flg0MGqybg815B0NrsvdqYlixmiNi7L16Fuz9o0ws2jt
         uMqA==
X-Forwarded-Encrypted: i=1; AJvYcCWie2vh8uBZk26jKy1VRmT/8XpO9Cd7ZGXmb8mi1ApmA24G6J93/AjsHrV3Y5B0Gr9LiurwTbrbzYOU@vger.kernel.org
X-Gm-Message-State: AOJu0Yx7S5GSQjXjh4lqhuUMcRovG80KBph90xknbFB3jZVCujm2XjpA
	WhSSJSVvFaHnphJzVWSafYyj+7IxNU2mP6YLCWrYwgm5D4JyeT8OG5xs9zczJW8=
X-Google-Smtp-Source: AGHT+IFE9Tc/KwIa08fOm+rRk9qcX0N0CjkqJe28X/XFmYGijFLr3vURwiH/MupERjY9bYlHsddgIA==
X-Received: by 2002:a05:6512:3d94:b0:539:f754:ae15 with SMTP id 2adb3069b0e04-53b34a1908emr11541751e87.41.1730396267059;
        Thu, 31 Oct 2024 10:37:47 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53c7bdcc3b9sm273696e87.223.2024.10.31.10.37.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 31 Oct 2024 10:37:45 -0700 (PDT)
Date: Thu, 31 Oct 2024 19:37:43 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Wesley Cheng <quic_wcheng@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-usb@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: usb: qcom,dwc3: Add SAR2130P compatible
Message-ID: <gohuncowxxud4rilmr23q3zc6rnkoqpbkl6v4puiexegvzr3fm@2zt4olzo64bu>
References: <20241017-sar2130p-usb-v1-1-21e01264b70e@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241017-sar2130p-usb-v1-1-21e01264b70e@linaro.org>

On Thu, Oct 17, 2024 at 09:16:38PM +0300, Dmitry Baryshkov wrote:
> Document compatible for the Synopsys DWC3 USB Controller on SAR2130P
> platform.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
>  Documentation/devicetree/bindings/usb/qcom,dwc3.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 

Gracious ping, the patch has been acked by DT maintainers, but is still
not present in linux-next and got no other reviews.

> diff --git a/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml b/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml
> index f7be056419307069c67b8f2d53bc88417a19b9ce..935e204b607bbd3bc9bfbdcd03519202197c9eb4 100644
> --- a/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml
> +++ b/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml
> @@ -29,6 +29,7 @@ properties:
>            - qcom,qcs8300-dwc3
>            - qcom,qdu1000-dwc3
>            - qcom,sa8775p-dwc3
> +          - qcom,sar2130p-dwc3
>            - qcom,sc7180-dwc3
>            - qcom,sc7280-dwc3
>            - qcom,sc8180x-dwc3
> @@ -340,6 +341,7 @@ allOf:
>            contains:
>              enum:
>                - qcom,qcm2290-dwc3
> +              - qcom,sar2130p-dwc3
>                - qcom,sc8180x-dwc3
>                - qcom,sc8180x-dwc3-mp
>                - qcom,sm6115-dwc3
> 
> ---
> base-commit: 7df1e7189cecb6965ce672e820a5ec6cf499b65b
> change-id: 20241017-sar2130p-usb-0e9ccdef61d6
> 
> Best regards,
> -- 
> Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> 

-- 
With best wishes
Dmitry

