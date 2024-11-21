Return-Path: <devicetree+bounces-123566-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CA96C9D5292
	for <lists+devicetree@lfdr.de>; Thu, 21 Nov 2024 19:32:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 90CBE28109F
	for <lists+devicetree@lfdr.de>; Thu, 21 Nov 2024 18:32:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EA0011A0BF2;
	Thu, 21 Nov 2024 18:32:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="MtAvh/zq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f171.google.com (mail-lj1-f171.google.com [209.85.208.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33C8B7F477
	for <devicetree@vger.kernel.org>; Thu, 21 Nov 2024 18:32:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732213941; cv=none; b=O4jl8t0kLav5jUH07l+SxYgAlq/ZVAOnlst4YIXqTLJNY/p61E1SHKBkYOu/aSbZ1M3arvyt5828IGhpC4tXecOfpQlj/tdbWVrnFigzxghOMBGXgnQd0phNoWBMUvmHo/ES9dKQZG6tbxW76nCw1G6csy06ut7wbrQVVvqmssU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732213941; c=relaxed/simple;
	bh=NxoNhqN7/s5UCLJhRwnlQc5AL67LK0A9EbK6QoZWtGA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=aDZ6hBp0YRzEy61SzMiCWxGv5Sb2qsASlmaztBZESLyX6puZlc15rwmD0T/+LNwLVvSX1iqZteu4pJ2zksvC1/wrFLLwya+UYnf1dXR9ODWv5kOUaLY2zlMNPnIn4sq7q/xCEy4in1WbYXI5BvZWZjTOj0/M1xRBLhQQ+UBqVm4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=MtAvh/zq; arc=none smtp.client-ip=209.85.208.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f171.google.com with SMTP id 38308e7fff4ca-2ff550d37a6so15168241fa.0
        for <devicetree@vger.kernel.org>; Thu, 21 Nov 2024 10:32:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732213938; x=1732818738; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=7YR6bunkgbvINXjPaA3POQemx6H3ADSr2/yDH9XACR0=;
        b=MtAvh/zqiMK9xbyH573mWvVr4JTnprBhRRFLeSnzBAB82CQgGtIdzrjI5ayDtXKH0K
         y3x6+vWsUph2H/+dbfdWwalioy4JSAdEFvcaBMTOTf591i2c2fod7BWS0YqlQgPiIm3S
         qDZquELaAtlCad+vpEFBETVFieWKxJPnBIydDB5POk3ByMm0bO70pomPXe3lp2f0dDxV
         Z0iW+vi1wHoZ2+RQHIrdeHhf66/aKHst1qPtC4t3o1ahmv6efaAvP7KKBCnKQkKpgEsx
         d886u8vrFI+zM7BsNN1PIZKBZYyxvLlbH/mZyX2psissjP6eVWQm/DzKvcD8Ex9U/72l
         SFiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732213938; x=1732818738;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7YR6bunkgbvINXjPaA3POQemx6H3ADSr2/yDH9XACR0=;
        b=S95RXcGdSs9jhHiplQN/svrV2Ag/TkeHYU5xhoiWe/XFCYtKr+uDBtOosJe0N4QwEY
         Zuzq7QahN8zb2+1CPoOiiylYP3zUPooOWvA6JJge4TnCKNpYL7W151Jy7+bmAH4mJYqI
         8pGr29CUsCDGDwJZIjPbrAZ2K3gfZLbpaQd5GpPm6k5wE/0BcOFpRbPHaYYxNs8slvE7
         G/pZy+aSUYyWchLZyOf0dwpS2nuBUzoCc4oS89ZvBtgW3QqJQJccCEyfmOl9FfcNQlMJ
         SARz3iX5JigApwZHRRNNXGeueqd77Tg76flZp2yWQIkCLzGFK3P9FowDlUzNMAcplt4U
         fG9Q==
X-Forwarded-Encrypted: i=1; AJvYcCWbH9goEwMyv4kL5Y/0A/2HSyvTcbQJju3ZAiGZJnITSvXgZqCkdB/hN+CV8kxhpFfaCsFICMr9/Xn9@vger.kernel.org
X-Gm-Message-State: AOJu0YwALbtRdqv29YXl8YcE25+o7xjfiUQINEa0Z5hEN/G1cWeR4cMZ
	aLD6ZtCDR158VEKT11XQbA7HExZg1nSL4wOaTN1esYkhGBs9qcBjVh6Y3iaXgX0=
X-Gm-Gg: ASbGncuEKNFvWWyHDpqiEz2f0e/9651TXu8DrN5k6o+IWtq16A/+oW/me3AxUkwOPjj
	QEdE0PaTXoctpXILcQn5lY2NaWe9wKm8rmL6KQMjnXDnBUnMxgUU7Pyho6d+h7hnyPjIRlVyAD1
	G1TclCFFxRmPWCP/BITGNT39sM9twpTpg83QShj26p4a2U4Phs2DvXgsf2EiBMFbWbkbWB2WzHD
	A80wooRLvhXdI1ReX9KlaJafSfa5N/a1isIIXfs6JIZvx+jdCv2qt3+FEtwd5XRL9RIYTPz4As9
	YTSCa26SDUve2tPZYwbIRXbT7O3yDA==
X-Google-Smtp-Source: AGHT+IFCTWJ72tvI1EYO6Sxeh0nyQQvqWPBwgJgPQ0V5L1GVWbKh7Z5LWaJvnlK5PXvdh7Kz0Y69uA==
X-Received: by 2002:a05:651c:547:b0:2ff:a3c0:a878 with SMTP id 38308e7fff4ca-2ffa3c0aa4emr6655951fa.4.1732213938371;
        Thu, 21 Nov 2024 10:32:18 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2ffa4d57be7sm143411fa.62.2024.11.21.10.32.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Nov 2024 10:32:17 -0800 (PST)
Date: Thu, 21 Nov 2024 20:32:14 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Varadarajan Narayanan <quic_varada@quicinc.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, conor@kernel.org, 
	robh@kernel.org, krzk+dt@kernel.org, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 2/3] soc: qcom: llcc: Update configuration data for
 IPQ5424
Message-ID: <y52pqmnj2bftfkoz5txmsl7wzjpfv3t7x5mtvrucupdubioxdl@dcflltnxnpdm>
References: <20241121051935.1055222-1-quic_varada@quicinc.com>
 <20241121051935.1055222-3-quic_varada@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241121051935.1055222-3-quic_varada@quicinc.com>

On Thu, Nov 21, 2024 at 10:49:34AM +0530, Varadarajan Narayanan wrote:
> The 'broadcast' register space is present only in chipsets that
> have multiple instances of LLCC IP. Since IPQ5424 has only one
> instance, both the LLCC and LLCC_BROADCAST points to the same
> register space.
> 
> Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
> ---
> v4: Fix ipq5424-llcc placement according to the sort order
> 
> v3: Rebase to ToT
>     Remove 'need_llcc_cfg = true'
> 
> v2: Use 'true/false' instead of '1/0' for boolean variables.
>     Add 'no_broadcast_register' to qcom_llcc_config structure
>     to identify SoC without LLCC_BROADCAST register space instead
>     of using 'num_banks'.
> ---
>  drivers/soc/qcom/llcc-qcom.c | 57 ++++++++++++++++++++++++++++++++++--
>  1 file changed, 55 insertions(+), 2 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

