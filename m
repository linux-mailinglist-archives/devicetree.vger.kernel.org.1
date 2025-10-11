Return-Path: <devicetree+bounces-225600-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id DB441BCF477
	for <lists+devicetree@lfdr.de>; Sat, 11 Oct 2025 13:31:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E708F1887A3D
	for <lists+devicetree@lfdr.de>; Sat, 11 Oct 2025 11:32:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DE769220F5C;
	Sat, 11 Oct 2025 11:31:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="lNiMk2+L"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F82479CD
	for <devicetree@vger.kernel.org>; Sat, 11 Oct 2025 11:31:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760182298; cv=none; b=cTkLhFlyQOMpF/2IuIXpGlS0Y8lgRS3dhmm0gbTRfrAXWYm9GQtENhcQzzvf5kQD6rhS/D+fmEesIw6AnAqgqvjsh8TZd2vINjT3po00oKC+PePrOBDoHP4CYISyr64GWrvSlhmo3VNbSazDXVGmOB1+cWW39ZrtMvkXUyZckTM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760182298; c=relaxed/simple;
	bh=5RI+zDeyw3XTRljWW1rsNdQl1VRKEKQFrpl8fx9pYt8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=lu9ACQ32a5m70zBmpTscBNmE87K9e+1IzRdVSPleGQG9aDBP3NqbGX2GhOXPDh6juIcaijZeRk2tC0Q/NkezPbtO0fY+JQeHCMKJQxfJ7jcWp5ToVWahNCntTua05/vKAstkgt7eAxI1Af6V7koou6Haz/aqHrh82UYWpCgjpnQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=lNiMk2+L; arc=none smtp.client-ip=209.85.221.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-42557c5cedcso1589187f8f.0
        for <devicetree@vger.kernel.org>; Sat, 11 Oct 2025 04:31:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1760182292; x=1760787092; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=mNTGbfmugn5jBn7rCYmZzAG7du6mX8yV8hZzW+D5Gyc=;
        b=lNiMk2+LNE09jjuUfwBiCAjb+yGdyW1G4D+glgpbl4ggbxVNED30YsEmhQrXmijbLS
         yXfqEJn9QD5slBHBywuCTDA096QY1C6JjoVWcaV7TQBNf0VCUEGKkUP9qBv4QUaxP5Ph
         kEQDsNk+elcUXmYEuaiNsa9Chkv3q+Eb1QJIF3VW54xdMKyAOL8uhNzLYYK91DvQqCrr
         5Cdvg/f3qVi0vgAsYG3Ix3gvlXFi5/Qa5Z8wGYgeusIFvN7EtCo5dw5tapmAJVwUsRKi
         I+xeV3PKrZMAfInLzaxn3lo7py3jmpTnMB8NhFlmVYl1X+FQA9NysyfXgqgr6eUErdEW
         OCmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760182292; x=1760787092;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mNTGbfmugn5jBn7rCYmZzAG7du6mX8yV8hZzW+D5Gyc=;
        b=W0cWPMenYnrQuSQCL+Zjuyw9+lmmcrR8gQtihXVP33eXswHpapckH1c4OHg1jqF8ZD
         rnPJ9alxV6HWaEeQuknn4+EBvRnx9UoXxCGwkMPoq5ReCsVJV1LLXAs42nA+EGyMx6dw
         koYXDae/GBvCtQ6XkdSOZcShJ6vPlKf9l2CX3ea2g7rnEaQAIUWklhfDWfuM1ilN/791
         Yzjo5LzzQFGTOWs5JfRoBIs3ONFhBx65AW9aSRsByB1vMVlA8EeCQFuSGRPgyYwdLN6G
         no7aZatM8DQCnmTQ9+dLV7fF8hku/l8F7pqVNbelCfHY2aIih6Y1MBulXQZH9y5bwxhR
         ourQ==
X-Forwarded-Encrypted: i=1; AJvYcCUYKSjY7/TrA4V2zi3qo2RXEYd5m4UaFVs3qd4XnUWxZ+43p0VYloxBHILRFEXhk1jQM9oIrcJaIfA5@vger.kernel.org
X-Gm-Message-State: AOJu0YzeZl1I1iUPvmqxiYxENhQ4SExyPtjN/ccbAIQaP1tUqGocZJ0S
	8ck5ykQNBwLCWBUJUpGpbqTyixVEGICdjYnYk8gVwF0tfE2sbdD6SZvWdzuzVd/LJjM=
X-Gm-Gg: ASbGncth9U2f9xTZgbV/FVJxhbrFcyiXwipsovlsmrG8FMT3fEhsqh69tNjPf27xHBr
	ROtCbvMPrUlXHlsAY4qCA4cjKwSfT4cgC3IhSmoIEMZffIHkU8n8XJpnijH4MAiKJrKIXYpbdzO
	nWNDBI9kWx7/r6RgvSn1+MBdlj0MNAGSTpVvgMm+4Yt27naSF/JBnLon/It0vXZhgDrwwRmURIX
	GkWVsxGo6U1LFOY9ebk6+bLBvPk1FghRSf4+YK6kqdqkD3FjJMwtfMZ6kqwDQUkw7hUAnAfTIMF
	TfCE+uA2CS9EZCN5x21PFS+MGtMa/K5eWCzjG/XAN23sutQLeLhhsUVICZ9QWU+/Txjrhm/Qin+
	JVwB/4YTt3CGTl97y1z58bngjxaN2VbcA66HuAdFTZQ==
X-Google-Smtp-Source: AGHT+IFCjuGBYnCDqcmxB9IrSM+BqDe9Q2x6ToeA46ZBK1ltHn2SzcZl6eRhCx5sKgenvc7B4y15cw==
X-Received: by 2002:a05:6000:4305:b0:3c8:d236:26bd with SMTP id ffacd0b85a97d-42666ac2ce9mr9301019f8f.11.1760182291588;
        Sat, 11 Oct 2025 04:31:31 -0700 (PDT)
Received: from linaro.org ([86.121.7.169])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-426ce57d4bbsm8686681f8f.2.2025.10.11.04.31.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 11 Oct 2025 04:31:28 -0700 (PDT)
Date: Sat, 11 Oct 2025 14:31:27 +0300
From: Abel Vesa <abel.vesa@linaro.org>
To: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>
Subject: Re: [PATCH 09/24] arm64: dts: qcom: glymur-crd: Add RPMH regulator
 rails
Message-ID: <sean5dkqku4norpl5llaps6wd3qjcxbb5kodjgvh4dshjkqvt2@jtlqhser6hsn>
References: <20250925-v3_glymur_introduction-v1-0-24b601bbecc0@oss.qualcomm.com>
 <20250925-v3_glymur_introduction-v1-9-24b601bbecc0@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250925-v3_glymur_introduction-v1-9-24b601bbecc0@oss.qualcomm.com>

On 25-09-25 12:02:17, Pankaj Patil wrote:
> From: Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>
> 
> Add RPMH regulator rails for Glymur CRD.
> 
> Signed-off-by: Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>
> Signed-off-by: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/glymur-crd.dts | 332 ++++++++++++++++++++++++++++++++
>  1 file changed, 332 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/glymur-crd.dts b/arch/arm64/boot/dts/qcom/glymur-crd.dts
> index 4561c0b87b017cba0a1db8814123a070b37fd434..e89b81dcb4f47b78307fa3ab6831657cf6491c89 100644
> --- a/arch/arm64/boot/dts/qcom/glymur-crd.dts
> +++ b/arch/arm64/boot/dts/qcom/glymur-crd.dts
> @@ -6,6 +6,7 @@
>  /dts-v1/;
>  
>  #include "glymur.dtsi"
> +#include <dt-bindings/regulator/qcom,rpmh-regulator.h>
>  
>  / {
>  	model = "Qualcomm Technologies, Inc. Glymur CRD";
> @@ -66,3 +67,334 @@ chosen {
>  &tlmm {
>  	gpio-reserved-ranges = <4 4>, <10 2>, <44 4>; /*Security SPI (TPM)*/
>  };
> +
> +&apps_rsc {
> +
> +	vph_pwr: vph-pwr-regulator {

dtbs_check gives this:

arch/arm64/boot/dts/qcom/glymur-crd.dtb: rsc@18900000 (qcom,rpmh-rsc): 'vph-pwr-regulator' does not match any of the regexes: '^pinctrl-[0-9]+$', '^regulators(-[0-9])?$'
        from schema $id: http://devicetree.org/schemas/soc/qcom/qcom,rpmh-rsc.yaml#

so node name needs to be regulator-vph-pwr instead.

