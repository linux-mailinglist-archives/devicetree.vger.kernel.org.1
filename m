Return-Path: <devicetree+bounces-121240-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 57EBE9C5E6B
	for <lists+devicetree@lfdr.de>; Tue, 12 Nov 2024 18:10:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 15DE1283E03
	for <lists+devicetree@lfdr.de>; Tue, 12 Nov 2024 17:10:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7C25B216429;
	Tue, 12 Nov 2024 17:05:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Ff0h8z1s"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F113F20D504
	for <devicetree@vger.kernel.org>; Tue, 12 Nov 2024 17:05:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731431135; cv=none; b=Pgtwx+OmWiMSeECdHIMval+oHhVxSH6Kpa6TDPoA1aaEYA3+sJXOiFMMv2ODUM7TkDObsVBDwEPhr9pDi97661e4WGA9nzlele5PNjHSSx5xAbnZo1ae3tT6s0QVQoQA6mdK15QjkXYXLcIy34Ydu22CoiycGHTqqCjRVI2VmFs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731431135; c=relaxed/simple;
	bh=zbJlwKwjpmGDmOG6xUAsiPq7n6gvG1qs07CGKyuQyUc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=KPdgUQdNEnuMJ7vzuJ0V7LlsaiuzgJNOazv+tRkBhWKY/QbBFpqeGbo/dUNyI3H18nuThih9IokuqCKH8xI9m8CozA3zJsmr8HLDun0VwrIM0WyJhy2r+cz5OnWzQXkzCsgVPHhePUp/5SYd/QP29rlolXWuDPUN1YYbweqn2VY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Ff0h8z1s; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-4315e62afe0so56390855e9.1
        for <devicetree@vger.kernel.org>; Tue, 12 Nov 2024 09:05:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1731431131; x=1732035931; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ZA76HvsVqGyFKQBWOeklNEgPCKp4WQaY8k4DOslFroY=;
        b=Ff0h8z1spVOyCkvLhQohl8vuurx+TfC8PtHqFgAEspUkM9S7RNFCWU0Pz/n0POXBzh
         e5oroWTkbExh4Hc32MF4ugiINkCa4gqAqxpviGa2PtRB0dEIN7J3pIQyPUsJVnn0iAEF
         ZFTT3zWxh5CFGTbDBMwP9Z0Nu7XQZaDYnt43LgJhRI3jlRFVhtSwzAz/ggJLadeqqpnC
         XOGLWAGo8woB6VT4MsCso29I8e0QykI+ihT/Uq/L/hjrRoSdGFPjj1gz90FRPFOVZgbH
         ilQ6XKkuS2coz4rl6fQE5M6xX9OxXx8N2poNx/VGUrYrTfPqXDVEGzR3IF+4VgM7vQqw
         Ax9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731431131; x=1732035931;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZA76HvsVqGyFKQBWOeklNEgPCKp4WQaY8k4DOslFroY=;
        b=beohKWyXpxQpG2EqGbqorPj1isRqgtxPJwT+NuDE3HqLhD7WVWTU3r4ohFhqM/svi5
         z/gj1Da9+6+xIE+CJsl+kb3SnvXXUHD3+vmlInXi5b0HxZormlmR6/VKRdYHWwmT5GRb
         o9rAuKjAKRUQJuHoynbRVdSjggTINXkarzabRkHHsQOVVshhiLoquLgMlQ6B8dll0GYH
         /Yh09dgYJ2qHx/YfO2uCbgqGiqg77qWAO83czd/L94GAkoJDYkZZqWBAeDfFRCyyL113
         IZV1hjhNFDhOa7y74hF+IYms4iFvj5RQV1O+7lsMMhvDGD9F5RTejXADJKKEozXdNSkc
         Lsvg==
X-Forwarded-Encrypted: i=1; AJvYcCUVVMXw1GOi6brBhp6Dz5jq1O+EX8o6usnTHyP6icZKgOpdvDnMIiD0mK4M6TliYT7klthUzpCqUKKi@vger.kernel.org
X-Gm-Message-State: AOJu0Yy5xlVUEZDnF3I5oxKe7hCZnLSM+CrO+4PXC2RWUbeHnQM1LV0d
	w3pZPk5ncomaLxjaNIbS5A91JdmHtnEp7j8yMIJpZMOM+ra6gmurEQJWVnFYgec=
X-Google-Smtp-Source: AGHT+IF27nbwJEoFDjdSQfRglRNAF1hMrTs5hW3PeUftsDTpAady6wFHBQXm8zI24xcocfJrzZxOkQ==
X-Received: by 2002:a05:600c:3ca8:b0:42c:c003:edd1 with SMTP id 5b1f17b1804b1-432b7501d59mr149247325e9.10.1731431131236;
        Tue, 12 Nov 2024 09:05:31 -0800 (PST)
Received: from linaro.org ([82.76.168.176])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-381ed9ea4c5sm16147042f8f.76.2024.11.12.09.05.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Nov 2024 09:05:30 -0800 (PST)
Date: Tue, 12 Nov 2024 19:05:29 +0200
From: Abel Vesa <abel.vesa@linaro.org>
To: Heikki Krogerus <heikki.krogerus@linux.intel.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>
Cc: Rajendra Nayak <quic_rjendra@quicinc.com>,
	Sibi Sankar <quic_sibis@quicinc.com>,
	Johan Hovold <johan@kernel.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	Trilok Soni <quic_tsoni@quicinc.com>,
	Christophe JAILLET <christophe.jaillet@wanadoo.fr>,
	linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org,
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v5 4/6] arm64: dts: qcom: x1e80100-crd: Enable external
 DisplayPort support
Message-ID: <ZzOK2Xz1QQvugGnG@linaro.org>
References: <20241112-x1e80100-ps8830-v5-0-4ad83af4d162@linaro.org>
 <20241112-x1e80100-ps8830-v5-4-4ad83af4d162@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241112-x1e80100-ps8830-v5-4-4ad83af4d162@linaro.org>

On 24-11-12 19:01:13, Abel Vesa wrote:
> The X Elite CRD provides external DisplayPort on all 3 USB Type-C ports.
> Each one of this ports is connected to a dedicated DisplayPort
> controller.
> 
> Due to support missing in the USB/DisplayPort combo PHY driver,
> the external DisplayPort is limited to 2 lanes.
> 
> So enable all 3 remaining DisplayPort controllers and limit their data
> lanes number to 2.
> 
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>

Please do not merge this specific patch.

It is provided just for context and testing purposes.

See the cover note for more details.

> ---
>  arch/arm64/boot/dts/qcom/x1e80100-crd.dts | 24 ++++++++++++++++++++++++
>  1 file changed, 24 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/x1e80100-crd.dts b/arch/arm64/boot/dts/qcom/x1e80100-crd.dts
> index 659520404adec33c3551f8d0a5ae3db9e0a18d44..6dc2ebbf6d27fbbf0f224e58cd39ffd33792c6a1 100644
> --- a/arch/arm64/boot/dts/qcom/x1e80100-crd.dts
> +++ b/arch/arm64/boot/dts/qcom/x1e80100-crd.dts
> @@ -1125,6 +1125,30 @@ &mdss {
>  	status = "okay";
>  };
>  
> +&mdss_dp0 {
> +	status = "okay";
> +};
> +
> +&mdss_dp0_out {
> +	data-lanes = <0 1>;
> +};
> +
> +&mdss_dp1 {
> +	status = "okay";
> +};
> +
> +&mdss_dp1_out {
> +	data-lanes = <0 1>;
> +};
> +
> +&mdss_dp2 {
> +	status = "okay";
> +};
> +
> +&mdss_dp2_out {
> +	data-lanes = <0 1>;
> +};
> +
>  &mdss_dp3 {
>  	compatible = "qcom,x1e80100-dp";
>  	/delete-property/ #sound-dai-cells;
> 
> -- 
> 2.34.1
> 

