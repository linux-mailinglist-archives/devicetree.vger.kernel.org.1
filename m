Return-Path: <devicetree+bounces-224556-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id D36B9BC53C6
	for <lists+devicetree@lfdr.de>; Wed, 08 Oct 2025 15:37:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D24B919E1C02
	for <lists+devicetree@lfdr.de>; Wed,  8 Oct 2025 13:37:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6DF32285C95;
	Wed,  8 Oct 2025 13:37:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="cxkkNTGN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 916E028506F
	for <devicetree@vger.kernel.org>; Wed,  8 Oct 2025 13:37:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759930627; cv=none; b=gDsXWuR4feYiGhqU8De9Mx3yJjSBTxQTmjjH1zZ8T1yix2LMqCySJjW6Yeu1EMxt0LOcrTRYeTF2EpQ0z8umLbFudTBn/r6su4TIPtnd+6M80kgXfSBtDXA7a/SHGq24CehVtoiV2Wuofj0ygtMYThslr+REFhrTz1x+RMuW3WY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759930627; c=relaxed/simple;
	bh=wVHBPwpVk3DUd7kZR0axYvRZ4099szWxpx3XB/i9yAs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=lcxLpfjqKuLVYBm8+2/2xu9tzy4ZH0r3S2KjiPoM9LfarRPKw0DGR5C6JA+WTXZt0jeynhqASCPa3vanLfZywV1s7pKeWgUK759PvHOM48WlMdGr+3B1LYD7JEEYTuVi0EHoat7ndiwi/00arLcaET7RxoCYF8uyZc21NHgqLsA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=cxkkNTGN; arc=none smtp.client-ip=209.85.221.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f48.google.com with SMTP id ffacd0b85a97d-42568669606so4121480f8f.2
        for <devicetree@vger.kernel.org>; Wed, 08 Oct 2025 06:37:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1759930624; x=1760535424; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=bERJWZGdKctqPmQLMomr/DAHLC2om0vQYmyzBO9BTrM=;
        b=cxkkNTGNf1w5d2Yb752ESNYfLG0NXLkRO2TK6dlkFSk5btEfFsC6F4Mlb23LoOoGhC
         IY6W3M9H+mKkvWAzKShsCoiiKyML/axM0tXwhPdMVhfnK5PYHVr2ILh2L73Arby7JDdK
         PaYUwcRNY8FioLFF04pjtrHl+HvqbhV49lnjtA6efwu3fD1Sd3cTvolNznzNUsWBoqgv
         VzPKMSRYgmIJIMwO/f8fyZLRXx7ozA8Db7OBljDE7UrprhQLhzkO7BszAGM1sKXeR/ME
         Erb7wopDQZecGP7XJ4SmWI0HaiiZmcM+4Rm1BCGDdhJ0sZ8HOWhV74oF5C4x3LIG8gVa
         XF0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759930624; x=1760535424;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bERJWZGdKctqPmQLMomr/DAHLC2om0vQYmyzBO9BTrM=;
        b=xIjZJrhoWBQpd6XZeIPlMSSNnWQ7esaiuOfhW3aOjc1/jVAH3e8t5vQOPFXqWxq5y4
         RiWaVyUbbD6UPnRBf2OWPZGX9jNEm6o7QpA8O9+NiSRA2HOjsnbKzfcxF2CRQFjmdLde
         NBI6TyX2v04bYRaoCCOXvF0nRa0UQELC5h0LpuyBds+Yg+kutLW3YDZG0YUkvLcc6fla
         kJCMRQgfFHAi1bxSngP91BNkWgiMj9evV0x5F9dwn2XtYztvwj37oxE/h7Yc7GPdiTP9
         uXk2P9akKSwyFfeeWIYBsJb6iTjySGtbnCd8rLJeT9wD3jGrA0FhjKGW6vG+bZT67+TO
         xD2g==
X-Forwarded-Encrypted: i=1; AJvYcCU+o3KcS8N6WuLEtoyff96EZJl4WOZfkVT0W+VfpGCVu3aH2uBc7QkNK6Y8+z7yVKBia7l1XidD4ZSC@vger.kernel.org
X-Gm-Message-State: AOJu0YwTpjCW0XIRUdo97zbGqbjYVtMyXsBdUQYIgkpqbJlpAOl2EiEf
	I0m6E4uQXYJ4Y3M9SvRk2XNyRouHeGzahlsDcbV+T5ROwehVqrIoO/uWgZfE9aT7FiQ=
X-Gm-Gg: ASbGncuyjrf3JA41cBvtpTCc/r2p9So8jli3bD+RlLrpQWf28WStOvM+xvShi/nlSQP
	o74TQeXy7TpLEJWNxtXp+Okv6RlQStPvQ5fjzvp6f3JiLSWxiVb19aD8n2h/rwtN/9o1A970zzx
	+7jLNSGspunrSM0lQ8IJLi9caDOdofabjqRv+uso2E15op3ZK+RYS+XftWy8uNp0MObXpJX3BYH
	aWei6IaTFwsXLCuEoJixAfHovh70JzIcD2qm5H28LL6NSxk5RTPhm6K0UVjvV0nLe4b4piTfZ3z
	82Y739mCyxt7OdrRww/0HewOLA3IeCvo+yQclrUHKqZekkQxIkdV4GFUP3IVrK6D59+PwglDSoq
	FFxBzkDPxvETBjLurKrRRmTFsTzD7GFHTalxyHvXu1pnPVdcPW87Q6BYJQA==
X-Google-Smtp-Source: AGHT+IGKQqQuzGZb6jiAzLLCrkmUpSwJGngkOf/csBaLSBCsDn//kcndB3Pgpj86O8bJQcTWuM+30A==
X-Received: by 2002:a05:6000:2401:b0:3e7:46bf:f89d with SMTP id ffacd0b85a97d-4266e8de2c2mr2452043f8f.44.1759930623657;
        Wed, 08 Oct 2025 06:37:03 -0700 (PDT)
Received: from linaro.org ([86.121.7.169])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4255d8a6c54sm30366116f8f.11.2025.10.08.06.37.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Oct 2025 06:37:01 -0700 (PDT)
Date: Wed, 8 Oct 2025 16:36:59 +0300
From: Abel Vesa <abel.vesa@linaro.org>
To: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Prudhvi Yarlagadda <quic_pyarlaga@quicinc.com>, Qiang Yu <qiang.yu@oss.qualcomm.com>
Subject: Re: [PATCH 19/24] arm64: dts: qcom: glymur: Add support for PCIe5
Message-ID: <da2vvejbqdteaszzwyktczqivjblyawzh2k2giyoxdxlxcdrcb@fkuqivjmaggf>
References: <20250925-v3_glymur_introduction-v1-0-24b601bbecc0@oss.qualcomm.com>
 <20250925-v3_glymur_introduction-v1-19-24b601bbecc0@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250925-v3_glymur_introduction-v1-19-24b601bbecc0@oss.qualcomm.com>

On 25-09-25 12:02:27, Pankaj Patil wrote:
> From: Prudhvi Yarlagadda <quic_pyarlaga@quicinc.com>
> 
> Describe PCIe5 controller and PHY. Also add required system resources like
> regulators, clocks, interrupts and registers configuration for PCIe5.
> 
> Signed-off-by: Prudhvi Yarlagadda <quic_pyarlaga@quicinc.com>
> Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
> Signed-off-by: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/glymur.dtsi | 208 ++++++++++++++++++++++++++++++++++-
>  1 file changed, 207 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/glymur.dtsi b/arch/arm64/boot/dts/qcom/glymur.dtsi
> index e6e001485747785fd29c606773cba7793bbd2a5c..17a07d33b9396dba00e61a3b4260fa1a535600f2 100644
> --- a/arch/arm64/boot/dts/qcom/glymur.dtsi
> +++ b/arch/arm64/boot/dts/qcom/glymur.dtsi
> @@ -951,7 +951,7 @@ gcc: clock-controller@100000 {
>  				 <0>,
>  				 <0>,
>  				 <0>,
> -				 <0>;
> +				 <&pcie5_phy>;
>  			#clock-cells = <1>;
>  			#reset-cells = <1>;
>  			#power-domain-cells = <1>;
> @@ -2511,6 +2511,212 @@ pcie_west_slv_noc: interconnect@1920000 {
>  			#interconnect-cells = <2>;
>  		};
>  
> +		pcie5: pci@1b40000 {
> +			device_type = "pci";
> +			compatible = "qcom,glymur-pcie", "qcom,pcie-x1e80100";

The first compatible is definitely "qcom,pcie-glymur".

