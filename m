Return-Path: <devicetree+bounces-76455-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id B5AE590A9F8
	for <lists+devicetree@lfdr.de>; Mon, 17 Jun 2024 11:40:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id E06DEB2D52D
	for <lists+devicetree@lfdr.de>; Mon, 17 Jun 2024 09:33:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 930A71922EF;
	Mon, 17 Jun 2024 09:33:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="k29iR5bS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com [209.85.167.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6D18161320
	for <devicetree@vger.kernel.org>; Mon, 17 Jun 2024 09:32:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718616780; cv=none; b=K+7KjLKGa8OC400uKlrVVUUcCQAbB02lnEsgnud0O9hVQvXQg+ON4c7gQYCUYjWw+YegVx23VwAAwjlBBywyvQ0/Xcp7FfQ6qa5u/+YqBcVL3ZvWBieCxQ0UcauRYyUxaZe07j393IAdo7+jC49dv8URlciLQZV+CcTZ0cbDvGQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718616780; c=relaxed/simple;
	bh=90EEYM5lX6TrnFkNQUuXvDKTQnTRsJ7IvRd7zGe9k9w=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=hh5v+4k/2DznKBu4ZGaAdhgLct6DmsHFXgcNJXw/VdPCl7QGUnZok9JvRzp8Q8XSoVCvhOCCnc/Hpouc6ZUtnd/v25i/Eom/l24y4BFhYpOHVhuZyoQfUZ5t9tzcBoNIE+eWe1hYjLQw843UfVt8BHjIfsvMWfmEuyRApxJQgL4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=k29iR5bS; arc=none smtp.client-ip=209.85.167.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f51.google.com with SMTP id 2adb3069b0e04-52c9034860dso5154657e87.2
        for <devicetree@vger.kernel.org>; Mon, 17 Jun 2024 02:32:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1718616777; x=1719221577; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=V2tSIulfQ3VPc0Vxc7eUpTkVfS5QrdmZJwbCCL4IUjs=;
        b=k29iR5bSi09tdaJ2I+71i+xpjvAwSCdRSK1Yb2PUWwjkpRFCKppVGUrj9Obwa5V9EX
         lrGHHxJlJ2v2x221/bauaeI1KCAh+FloDOSeKOrNpDFGZPMySybKV3ZAQ0ASLrYHeveS
         1bT6EVX0A68g0RASnTveIX2QHQO9IJjrI6K5W0ZYkBNAYYUGwZaTYGMO39QGEIcYs5P6
         KN1B9/N9I9qdf2g/KN+eXt3IyJwue/AkAmAUU+wxIWr0m3lpSiTicufy1nVXBMQwJQlp
         +AuDI5GfdjDu8/9+7wsequDJLnMtJHcIHrqVw2ILTiMWj5kI24UcxtwaqyQTwZQbZjNs
         6Vzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718616777; x=1719221577;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=V2tSIulfQ3VPc0Vxc7eUpTkVfS5QrdmZJwbCCL4IUjs=;
        b=U5dpIJwylcEQKDnn7vy3GfVjvQqOwd+62g2IiR4e/yMc0CYNpeGgb2JMbxoXI+7mxq
         g6Lj5KwdSapja6SMs/+N4d9ofzbxRzxShrd3ZiG33EVVMd9TvEkxDRAFEqcSkR7dZYDo
         9n2mzqYmZTjx/SRy0/a2SsJ77Gse6OJRbOP9ZxVZnAX3eIdYfpU62F11uY77rozcI+0X
         tgWr/Mx25+Eym06cc+Mi1MOsMYSDQqaEbjz2o0pKt9GEJKpYwnTky0vyW0iHl0YZOYrd
         40NBOcFrOBBNzD6K7Q9wzC0xT7rqducSMdmQlDRQcO8BStGOhYyy8vkaRtwG34SXnuXu
         vGkA==
X-Forwarded-Encrypted: i=1; AJvYcCX2NefIHdrSgNbNf6MYYf0lADCUMrLRXwUL17Bnpfa0mOgpfLloOraioHWmB8NE3Z1e6M3KgnCHti6ajgjmpijTWoQU78VogdbsWw==
X-Gm-Message-State: AOJu0YzwQJYA9nnPeNINT75z+kSSaSSTk+n3YKAtNby+E3Jl/NI22P0S
	FlX0MRIWa8bH1yDMRpaFlMDJrkxPCK6ed+/OyGXR/lmTGY8bw2W9xKI/Gb+MB4w=
X-Google-Smtp-Source: AGHT+IFGDOxz4MRAnf0R1ne10CyalMCg7L1It9gMFaVleUN7Lna53Yza3KApyi6aV7u0UhvfcuqLLg==
X-Received: by 2002:a05:6512:1285:b0:52c:8811:42f7 with SMTP id 2adb3069b0e04-52ca6e67145mr9180415e87.19.1718616777147;
        Mon, 17 Jun 2024 02:32:57 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyybrhy-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52ca2888c2esm1195860e87.300.2024.06.17.02.32.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Jun 2024 02:32:56 -0700 (PDT)
Date: Mon, 17 Jun 2024 12:32:55 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Bartosz Golaszewski <brgl@bgdev.pl>
Cc: Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Amit Pundir <amit.pundir@linaro.org>
Subject: Re: [PATCH v9 1/4] arm64: dts: qcom: sm8550-qrd: add the Wifi node
Message-ID: <m2ocalmjfiitgr2ziqtegll4gzs5l5hykgx57fzz2n7u45szje@faa2xxfmksm4>
References: <20240605122729.24283-1-brgl@bgdev.pl>
 <20240605122729.24283-2-brgl@bgdev.pl>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240605122729.24283-2-brgl@bgdev.pl>

On Wed, Jun 05, 2024 at 02:27:26PM GMT, Bartosz Golaszewski wrote:
> From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> 
> Describe the ath12k WLAN on-board the WCN7850 module present on the
> board.
> 
> [Neil: authored the initial version of the change]
> 
> Co-developed-by: Neil Armstrong <neil.armstrong@linaro.org>
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> Tested-by: Amit Pundir <amit.pundir@linaro.org>
> Tested-by: Neil Armstrong <neil.armstrong@linaro.org> # on SM8550-QRD
> Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/sm8550-qrd.dts | 97 +++++++++++++++++++++++++
>  arch/arm64/boot/dts/qcom/sm8550.dtsi    |  2 +-
>  2 files changed, 98 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm8550.dtsi b/arch/arm64/boot/dts/qcom/sm8550.dtsi
> index c55a818af935..c9d3c0549ab5 100644
> --- a/arch/arm64/boot/dts/qcom/sm8550.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm8550.dtsi
> @@ -1784,7 +1784,7 @@ pcie0: pcie@1c00000 {
>  
>  			status = "disabled";
>  
> -			pcie@0 {
> +			pcieport0: pcie@0 {

Ideally this should come as a separate commit, with proper Fixes tag,
changing all pcie ports at once.

>  				device_type = "pci";
>  				reg = <0x0 0x0 0x0 0x0 0x0>;
>  				bus-range = <0x01 0xff>;
> -- 
> 2.40.1
> 

-- 
With best wishes
Dmitry

