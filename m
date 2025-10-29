Return-Path: <devicetree+bounces-232529-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id C62DDC18BB6
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 08:41:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 407254EABFC
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 07:41:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3E25B30FC3D;
	Wed, 29 Oct 2025 07:41:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ONj8wa1a"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A11F24293C
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 07:40:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761723662; cv=none; b=cEgKWHqYWkDRtG+S+f5St9zFPwlWT4Rn1eYpl+6A89ZHLbcm9xBdI9TSWYE1HnTDujVuGJnixkHkMD1P1B3fW8kRQzT8n0puy5c07fojYMb5caH9hjLiDZBwfhHeYAQYZb30wtMFRUGBnBzxhb6DEx1RdZQDeZw7p/S96GScOxw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761723662; c=relaxed/simple;
	bh=fOAjv7j7SFgxzDGkJ4moXZTVUrxByDzt/RzwZg//8q4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=mSTU60i7/d3lU8K30gxsvEFEZMDGo/OVhGwgskpEpq/GlPij18izh6fh8GOGiUuK9YoeBwkat69UDqTYufAgSMyKPqSQFBySfuWV3urUq2cLTqERgXkVaX5mFscImSYQEIC6vmiSmT5AsJallhKz8wicHR98i9YdO7QiTmtBhI4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ONj8wa1a; arc=none smtp.client-ip=209.85.221.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-4283be7df63so3346371f8f.1
        for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 00:40:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1761723657; x=1762328457; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=AbFme51wo4xn9EeHD5Qfvqgq+jXrkaUfGgQGuVELTCA=;
        b=ONj8wa1a/ZJQWv/vbEWrP5sGVJQz72UbpQTRGg8a2tWA+39MurjVSuTW4Hf/XWM9Yr
         HiJsEPS6T7ueUG2dFBih6GFKV7ZCa4VV3Ehw0pmLGYbgJDwCIKcJY4Ja9z5vGxo7Z4kt
         NNhZRMcNdrNlM7rAUVkLqaquD3SyEzov+PAVc9crdQSsY6DGYVFO4RXja48QgI0/VW/k
         c6vQRuWCIEuaoEswpHXhBSK4/njqe6MD1CSPbxQXAuG99Rl17C92PrESOvmnndO3JPtA
         CySI3mpm+3ZbXLPNZT9hNGNAcHxmZq6cssTRcnjMQL6QvD0s3vIA6V3rhAIixPBjAl/m
         rCcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761723657; x=1762328457;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AbFme51wo4xn9EeHD5Qfvqgq+jXrkaUfGgQGuVELTCA=;
        b=f7HtB6mkCDtdQBkrHDtBy7xVQa6ngBXI6nzjTpqn6osAUCIhT+KkCd5SD+dTBjrCGI
         8cCygEwwD0IUnFftDlKJG2L2MK8+802JmtatcJAcXMMLjqOpKx8A2pi5tS1FkB6M7QX5
         qtDuu2eJB+UAJ8LzwYdcFvsMLLHtNyf+tlv6FYn9S9a8znbA42vHpSJYH+dR/8Ikf7Sh
         hDH7fRPZSj2E8S+9kikMnq2n+tsApsYzPGvyClS99C4hCP8Shqq3rGSrEdu4GhKP2Ym1
         OAoU4Tnx7NREGwzm5YWHlZS7de9JibOq0FSCUPaxThOnz7fK13hsZF7U6wKQjQRniXF/
         pLpw==
X-Forwarded-Encrypted: i=1; AJvYcCXRI5CkyFHGAjhyxVUEsLxYzO33ClZrWKJKQkRYiHnRrKsocb+LrIa/Rxu94SeTMvyMtbrcA/4hf9z4@vger.kernel.org
X-Gm-Message-State: AOJu0Yxj9oI11O5uD+hvnBDcnaG8zBE1oWJ6ldyP62bBnWuyXLtAfrIc
	aFe7FNCW4MVgNh6nOavy7cS4LvwdJAv/YhZfUUwkIHFt4GK10DjzqqWGWkxVOuw1c8MWRJiVnwz
	GCHLW
X-Gm-Gg: ASbGnct8mRuBP6UPChRsQoEIRMHL8xxwmKKQrsRNpjqUJaJOUcTaPGwaqP7H4evlb2h
	1zdsAS/s8E0Q/w+NMFIBRX4QJ1mb7on1f1t1FZpCjDuGcuQrjpXxcIEFha53q8wPWCZEu99qyup
	yUqqA1DvdJMlMri0t5+So0For4Yc8haQlp9KzIZx7btz20lph+xxy1xMA2QoicBKBVqkb2znu0M
	gGxYc8W+2zhmX7ja2xPg5C7zzC9IhR+iP4BW4M6QiCr3KOntrehMhiXz3BqrOdLxNzhTXyUrPOJ
	51WZNBu/ZTpQuoYE7/pxsXFOWrgdBSRDTxPO+F+UGNEVGaoYMndl6sstIv0Ml29rDWyVmWYfXXt
	2hqNR3H7VS19ptUSc6chTxOSjiqDpL00XnD0wSwq6+0rXXJ7rKHW6o2LPwKRa/Izvkd1t090H
X-Google-Smtp-Source: AGHT+IGMnDPTwT/kgdtrsrLOV6KEqnyYwSmrAPqp6vapwMp97UENpV8di+mbWQ4I3pUNNnIxvqWPYg==
X-Received: by 2002:a5d:5c8a:0:b0:3ee:154e:4f9 with SMTP id ffacd0b85a97d-429aef82fe0mr1522824f8f.20.1761723657326;
        Wed, 29 Oct 2025 00:40:57 -0700 (PDT)
Received: from linaro.org ([86.121.7.169])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-429952ca569sm24298194f8f.12.2025.10.29.00.40.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Oct 2025 00:40:56 -0700 (PDT)
Date: Wed, 29 Oct 2025 09:40:55 +0200
From: Abel Vesa <abel.vesa@linaro.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Jessica Zhang <jesszhan@quicinc.com>, Abhinav Kumar <abhinavk@quicinc.com>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH RFC/WIP 1/4] arm64: dts: qcom: sm8750: Add display (MDSS)
 with Display CC
Message-ID: <nwyrhupbrqrh6q5yvk6egtm3whi5h6xslhzio4g7f7l7yjx7c3@atl4bbk5f4vb>
References: <20250424-sm8750-display-dts-v1-0-6fb22ca95f38@linaro.org>
 <20250424-sm8750-display-dts-v1-1-6fb22ca95f38@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250424-sm8750-display-dts-v1-1-6fb22ca95f38@linaro.org>

On 25-04-24 15:04:25, Krzysztof Kozlowski wrote:
> Add device nodes for entire display: MDSS, DPU, DSI, DSI PHYs,
> DisplayPort and Display Clock Controller.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> 
> ---
> 
> Bindings (dtbs_check dependency):
> https://lore.kernel.org/r/20250311-b4-sm8750-display-v4-0-da6b3e959c76@linaro.org/
> ---
>  arch/arm64/boot/dts/qcom/sm8750.dtsi | 415 +++++++++++++++++++++++++++++++++++
>  1 file changed, 415 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm8750.dtsi b/arch/arm64/boot/dts/qcom/sm8750.dtsi
> index 30ee98567b6078e8225142f2e13b25b5f35a3038..753b069cab1de636a3b1108747f300bec0f33980 100644
> --- a/arch/arm64/boot/dts/qcom/sm8750.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm8750.dtsi

[...]

> +			mdss_dp0: displayport-controller@af54000 {
> +				compatible = "qcom,sm8750-dp", "qcom,sm8650-dp";
> +				reg = <0x0 0xaf54000 0x0 0x104>,
> +				      <0x0 0xaf54200 0x0 0xc0>,
> +				      <0x0 0xaf55000 0x0 0x770>,
> +				      <0x0 0xaf56000 0x0 0x9c>,
> +				      <0x0 0xaf57000 0x0 0x9c>;
> +
> +				interrupts-extended = <&mdss 12>;
> +
> +				clocks = <&dispcc DISP_CC_MDSS_AHB_CLK>,
> +					 <&dispcc DISP_CC_MDSS_DPTX0_AUX_CLK>,
> +					 <&dispcc DISP_CC_MDSS_DPTX0_LINK_CLK>,
> +					 <&dispcc DISP_CC_MDSS_DPTX0_LINK_INTF_CLK>,
> +					 <&dispcc DISP_CC_MDSS_DPTX0_PIXEL0_CLK>;

No PIXEL1_CLK ?

