Return-Path: <devicetree+bounces-233113-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id CA96CC1F215
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 09:55:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 751C734C89E
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 08:55:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AD478338918;
	Thu, 30 Oct 2025 08:55:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="KPK/RhRK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C326D23C4FD
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 08:55:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761814514; cv=none; b=A3vI6JzOXunUIb9FDOQdJQJI/PJTfeCNxmquw7UeQTn3kY8W2pHghYfAVa8VMEBUyMGZNCnhRLvuwQjRmVUmT0S5FC30qeZDQqQuWFVHE4CE/HlSuKwigtEPuu0UMn9VYQBnUso0syzLs6kAkAVfM3uade6XH4OEK8+oE6PaMiU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761814514; c=relaxed/simple;
	bh=gCe206Sd+n4icVwxXqzoKWpmtTKswWt6dHVdlGTXLL4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=nXKHITAHlI8nb6i8l2EconweQvF+jPN/X013FyA24qOdFg6eZV0+GJNmBwexM+SLcRc4x7kiLnA32nHZ9bw//MPG4/edz5F8HUGX5vASFzV0rvQUdkgww33t0J3Vxg2UvcdDnpRCoq+hdDKfnKTQMQf8U0FPbdXtzubyXE35+J4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=KPK/RhRK; arc=none smtp.client-ip=209.85.167.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-592f29e273bso711569e87.0
        for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 01:55:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761814509; x=1762419309; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=lz2wxKaeXnztSBPHZVxZj1ui+100tXbJd+q75YbpezI=;
        b=KPK/RhRK0x83sAIcfz0EM6H0+ohjc14NdkO58r6e7PfZZLFePhIbo7kyfCsHz+cqnN
         dUVbemeR3N5Wr9Z0+knr/qBwkA3N3MaRCGuI8Q/zpc/Jms5ekavF3a4yymL/VWGUb9S4
         IsjMA7pPtIicTNBqmo7xJlFRxkgBZCaWqmHKZ0at22xXg+aLe/uj6Jj2hN3rYN1D1iOM
         2qcqSP8kGdhudH+PANjovIQ8lK7M7eDDItjjEtlDeNR80CSM8f4xTDGyacZ5ZvfOp1Rd
         DOkquk67gQtvjkIas2rSrPwM746LBUKSN8Tp9QbTowoBvNnJo3m4+fUZIrPdobPQreQr
         d1zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761814509; x=1762419309;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=lz2wxKaeXnztSBPHZVxZj1ui+100tXbJd+q75YbpezI=;
        b=jOZA2ksk/e1uDWOeaISQmel11iroVgytKpGAxShB7M9Ntl25w4UXAydX4fPhtqAikU
         ObP5INyaaZwsYu2ltfVlFgi8emtbpPaIvlPtXUxV9XcDGppNePy49VwB/wXLicwJHkpX
         Eg3Hu/KSPGSUsRIqE1489TqUA5Yas34b0Fk+4dAS3k3whLGI/gnih5nNoGdq0V2DTca6
         nChT/worS6/ZeCLBUZQ69Ac/TCt1PZzh0blPD1nguWVca32YOw7IwiK+cLs/3kJtYLOR
         Mqpc5pnQWXvZ5kOdGxGNSOQjYcz6jYJ/u9D0YP8uAbYOb9dK7GfXVjSDEYNRFCZ48qI2
         9Wvg==
X-Gm-Message-State: AOJu0Yx1wtyoYs1cXyikVRCUDOmDA7kq8VEiS3vNrs9PsT9NDePIAtmF
	/DdVPKNx3AyBC35F4MeiFXzE8CafO5ytM3HJqsC8OC5bTKblJaOXh2ti
X-Gm-Gg: ASbGncuJ9kHmuWs6j/BSEhNw9g3sTtokKPUsHjnKE01lWr2MbdeIk5ZukQ/mrxBTaxP
	bUWJ4VLGaKWW+eJVNH/BvOwk0V7QjEsYddDPBHKW4n0DUfv4h7Cktnn0cnsLllucVFKDhWRGL3z
	ih+jIVywtJIy/yrk6aDTJQjFrF4kDLKJhaHsUe4RwiI6Xrxqu9OS4ID2ZDeXUIHaBOCWvrfdH0Y
	fe8qaF3emKKv2Ue4PrWBTXbIiHdV8x8BOhf2r4eef9GDDUIVafnhU+iAw3aUPS/6nZ7D+jJEueQ
	C4mUCitKWAP8lc+2/9ixMLwk5XwkmXnhYnJOesSCx9Ho5hpNDiEhKD+Si8X9aytBE2L5tqiawdj
	2/D+k+TPskcqVqdulWO53XrZUq9/ff3p1BwnU8I1KLg1Fnp47hhH55FJFLm1uETK6ZNleYz0wwD
	Qvj/zki4QY7OBqYMfRf7GFFV/SI6CRZwhicNO06Y0qhP+Xy9z01++CC59hWg==
X-Google-Smtp-Source: AGHT+IGxefDaDMkvXf+C6MInrLdPPOS2BAZ41RZb8shvZ6Cg4IwpRXpVQvrD4g2MHSCgteFU4nxUAQ==
X-Received: by 2002:a05:6512:b8c:b0:584:2746:c6d8 with SMTP id 2adb3069b0e04-59412c424b5mr1969364e87.29.1761814509186;
        Thu, 30 Oct 2025 01:55:09 -0700 (PDT)
Received: from ?IPV6:2a10:a5c0:800d:dd00:8fdf:935a:2c85:d703? ([2a10:a5c0:800d:dd00:8fdf:935a:2c85:d703])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5941566452esm866246e87.8.2025.10.30.01.55.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 30 Oct 2025 01:55:08 -0700 (PDT)
Message-ID: <8fb5a1a0-96a5-4830-a9f5-4e624ac806cc@gmail.com>
Date: Thu, 30 Oct 2025 10:55:07 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/6] regulator: bd718x7: Fix voltages scaled by
 resistor divider
To: maudspierings@gocontroll.com, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, Liam Girdwood <lgirdwood@gmail.com>,
 Mark Brown <broonie@kernel.org>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org
References: <20251030-mini_iv-v3-0-ef56c4d9f219@gocontroll.com>
 <20251030-mini_iv-v3-2-ef56c4d9f219@gocontroll.com>
Content-Language: en-US, en-AU, en-GB, en-BW
From: Matti Vaittinen <mazziesaccount@gmail.com>
In-Reply-To: <20251030-mini_iv-v3-2-ef56c4d9f219@gocontroll.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 30/10/2025 08:35, Maud Spierings via B4 Relay wrote:
> From: Maud Spierings <maudspierings@gocontroll.com>
> 
> The .min_sel and .max_sel fields remained uninitialized in the new
> linear_range, causing an error further down the line. Copy the old
> values of these fields to the new one as they represent the range of
> register values, which does not change.
> 
> Fixes: d2ad981151b3a ("regulator: bd718x7: Support external connection to scale voltages")
> Signed-off-by: Maud Spierings <maudspierings@gocontroll.com>
> ---
>   drivers/regulator/bd718x7-regulator.c | 2 ++
>   1 file changed, 2 insertions(+)
> 
> diff --git a/drivers/regulator/bd718x7-regulator.c b/drivers/regulator/bd718x7-regulator.c
> index 022d98f3c32a2..ea9c4058ee6a5 100644
> --- a/drivers/regulator/bd718x7-regulator.c
> +++ b/drivers/regulator/bd718x7-regulator.c
> @@ -1613,6 +1613,8 @@ static int setup_feedback_loop(struct device *dev, struct device_node *np,
>   				step /= r1;
>   
>   				new[j].min = min;
> +				new[j].min_sel = desc->linear_ranges[j].min_sel;
> +				new[j].max_sel = desc->linear_ranges[j].max_sel;
>   				new[j].step = step;
>   
>   				dev_dbg(dev, "%s: old range min %d, step %d\n",
> 

Thanks a ton for fixing this! Very much appreciated :)

Reviewed-by: Matti Vaittinen <mazziesaccount@gmail.com>

-- 
Matti Vaittinen
Linux kernel developer at ROHM Semiconductors
Oulu Finland

~~ When things go utterly wrong vim users can always type :help! ~~

