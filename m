Return-Path: <devicetree+bounces-155250-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id BA07DA56058
	for <lists+devicetree@lfdr.de>; Fri,  7 Mar 2025 06:50:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D005818888DA
	for <lists+devicetree@lfdr.de>; Fri,  7 Mar 2025 05:50:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4E6AD192B9D;
	Fri,  7 Mar 2025 05:49:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="T/55rvlU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f176.google.com (mail-lj1-f176.google.com [209.85.208.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 839F128E3F
	for <devicetree@vger.kernel.org>; Fri,  7 Mar 2025 05:49:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741326592; cv=none; b=D5Gn2xFEOJvLrPvHg0r9S9HYi6JVXnWICAQhDdU0Whd5WiEwDCO6CAZKmps4Bek0/d8xL6Lu6xMkYxokhDh4AduNNTDLTcNr6QubzCdgayiccICp5FHaphEe7I8chA8PjTWa3k/6V6Lb8RAqOEZLspEC7A6gUvDcjR9SK05J/ME=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741326592; c=relaxed/simple;
	bh=jmPY4fuI4EYqhmDWogqXXGjUVpVNhWMCq4sELYHNKNA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=KMrb/0dQBY12flAxeMTIT/GnvMAnkbk/ohnGWo4OdP4Ry1csevglIIjTrl0nb5o2RadOa70Kym1rouyrBFWUtlre7uMAdvLYyxfp3Wt7fPKVOqYNNPjGrAcRb+0PoKTlTWOuOY1Fy3AMekKphy3HJHetTGZzphwVN/An4yQ39lg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=T/55rvlU; arc=none smtp.client-ip=209.85.208.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f176.google.com with SMTP id 38308e7fff4ca-30762598511so16219431fa.0
        for <devicetree@vger.kernel.org>; Thu, 06 Mar 2025 21:49:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741326589; x=1741931389; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=jN6ZIl4heduOl3aV1Xlhy1GPaNYpaPeTUI2tGOU7POw=;
        b=T/55rvlUh25RsVHscYadgioQaRtNAUtwIxuxn5AloVvgZGmmHiubDcW613Wzrdlnpy
         ZjS6q8cJRxq9fgMTrSs1JEFJj2xnc9t33N6lN+zv3w6lYV482sGwnPB//JcuUGhRRFnL
         0fQ0GQND4GJxmXh37EmwSqyOO7xS6dfeyh1M2svWHchxQ0489vOqTGEehbek/z4NbZxW
         1BCgLIm2Bmv6KPc5sb/9uCSW3GuR5XJqrIZcTQzJX3JdLrp9IxLfLmrgTsGecY3kTPjA
         5AOFq23KS7GKTq/eUF83lPpov8KWtaYdppiBEZ4mdwex+qgCghKsXxAoykhH8OjP5XW2
         lDHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741326589; x=1741931389;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jN6ZIl4heduOl3aV1Xlhy1GPaNYpaPeTUI2tGOU7POw=;
        b=VNdDKvxvGXp+blxVAaPqfwOHQLUgbC6z3BwMFXRBf2tWyHhm8RTpPw0dHS4BtxPkbw
         mX/VBoRM9p6z5Jg/U26MQzRcjRPIK37enzzmIhAKpDueBvwiALIhDqazj99tFIh+UwZT
         GWmudDUn9AXzems4h5K6X2d38beGfwIRwkbanCpAI+OJkcfBJrpj86ZTK9cvoWj7vFmV
         NBwS4aD+IwYuB8wdA+u7PR8nnAyYCjIZvPtcwzHM64lAFDXTplwhc9BTUk06usJEinyi
         jFsZFPjHNZ/JuhGuiNQUoHZqJkc4xXmqv6beafqIjmV1fSl0wTiFs20YpWypcxtCBBSP
         mssg==
X-Forwarded-Encrypted: i=1; AJvYcCUymzy7q9uywMImjIU2bsB/xRx9x6vyLJXfQplySlG7yi/fgZ3pGcPEklnzZniag7LbIomgB+/B/RZ6@vger.kernel.org
X-Gm-Message-State: AOJu0Yx1yUWzfaZ1NgMr7eneN3Sk+yaizMKT/jgpfmuX6u448RPHCYcK
	97yyuq4zxtzTN5hGzRWusHy/OtPfUbI8eZ5fpWzVAw3hE4tKT8aL56jMyO5WMfs=
X-Gm-Gg: ASbGncug2cwuHgQcLjdhvvQT3AfG0kllnWvu+sQleOlrXJRHKC3XRpzZpnOeVCLgq8d
	a2GbJcWWnbdKOn88YhZ3T+OP+m6CuLdxsqCysvgtGgqFLldhlVUN+V1Xj4KFtxu38CTmB1YSK/w
	8bLIj2zMze+xpoMxFl+JIrt0wK7Dct28xdviO4Eed4MnEeavMGAdG9sqFkmOxXEJlPA9m+sLyk0
	lbkEasPBPYLLMxzdi5TQLpPE6V5UdFYzAvi5dvbqUn9FlPwnYwUBDdarpIbfy90feT4EUOD61P4
	o1ghhBMJUI6Ds2iz9GG9hsrL8K1ba0cuyb6Leud3+5tzx/i7uzBygYcvzLyB1QISkb9zsyQueWH
	EdDe0nO/7AhdHf68ArgS+kAds
X-Google-Smtp-Source: AGHT+IGP9JChyCLN8oP+7KejrIg47v5OBKkR88FiJPVHk9F4HcqJxHQhiZKSP3fE87nRAiAkngPRQA==
X-Received: by 2002:a05:6512:2804:b0:545:2871:7cd5 with SMTP id 2adb3069b0e04-54990e3ed57mr611055e87.15.1741326588773;
        Thu, 06 Mar 2025 21:49:48 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5498b1b2d66sm382417e87.153.2025.03.06.21.49.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Mar 2025 21:49:47 -0800 (PST)
Date: Fri, 7 Mar 2025 07:49:44 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Konrad Dybcio <konradybcio@kernel.org>
Cc: Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, 
	Robin Murphy <robin.murphy@arm.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Rob Clark <robdclark@gmail.com>, Abhinav Kumar <quic_abhinavk@quicinc.com>, 
	Sean Paul <sean@poorly.run>, David Airlie <airlied@gmail.com>, 
	Simona Vetter <simona@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	Robert Foss <rfoss@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Wesley Cheng <quic_wcheng@quicinc.com>, Christian Marangi <ansuelsmth@gmail.com>, 
	Bjorn Andersson <andersson@kernel.org>, Rohit Agarwal <quic_rohiagar@quicinc.com>, 
	Kyle Deng <quic_chunkaid@quicinc.com>, Vinod Koul <vkoul@kernel.org>, 
	Marijn Suijten <marijn.suijten@somainline.org>, linux-arm-msm@vger.kernel.org, iommu@lists.linux.dev, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	freedreno@lists.freedesktop.org, Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
	linux-usb@vger.kernel.org, Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH 10/11] arm64: dts: qcom: x1e80100-romulus: Drop
 clock-names from PS8830
Message-ID: <737cuybby2fsp5hl2c75q4dajax2keymfe7ka4w2b7omw5b4yx@elprmcldts5r>
References: <20250306-topic-dt_bindings_fixups-v1-0-0c84aceb0ef9@oss.qualcomm.com>
 <20250306-topic-dt_bindings_fixups-v1-10-0c84aceb0ef9@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250306-topic-dt_bindings_fixups-v1-10-0c84aceb0ef9@oss.qualcomm.com>

On Thu, Mar 06, 2025 at 07:11:22PM +0100, Konrad Dybcio wrote:
> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> 
> The preemptively-merged node contains a property absent from the final
> bindings. Remove it.
> 
> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/x1e80100-microsoft-romulus.dtsi | 2 --
>  1 file changed, 2 deletions(-)
> 

Fixes: b16ee3d0cda4 ("arm64: dts: qcom: x1e80100-romulus: Set up PS8830s")
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


-- 
With best wishes
Dmitry

