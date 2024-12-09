Return-Path: <devicetree+bounces-128687-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 7665D9E942F
	for <lists+devicetree@lfdr.de>; Mon,  9 Dec 2024 13:33:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9F2DB188657E
	for <lists+devicetree@lfdr.de>; Mon,  9 Dec 2024 12:33:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D2CB1227596;
	Mon,  9 Dec 2024 12:32:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="oOMo9384"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD18A22488F
	for <devicetree@vger.kernel.org>; Mon,  9 Dec 2024 12:32:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733747530; cv=none; b=YMRJtDQiSqeqGCnl8HNOu2zu7EWwj+CufZpxrSiTugtUE9GdHfX8KsGNc5pwYK+xjQBPb9ezoGZ6AErY/ry6nyG1nOwUdwIAy6Z6TPnHjJ/wowNKzQHqzPYAWZ1++hwIY7X7AU+YpwdfDg1VxQQNWdcBf93RGkWb1Mrg+8p+IYo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733747530; c=relaxed/simple;
	bh=FGLn2JnnbPgNLHqbV6sAQ+LR5fP9D0IYaul+g1G6DaU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=MMw1duTjCM+LwVQx+lrBI+aXievnyYVC9ryF08bghqEZtnTDAp1WmxbKQoz5zPP9EN6UBQVnKSKW2YG6cXsob0voCt07elHu5xMY7xURXrUghGLBupfdvEABHcnjP6BZwy2m7zOTssWMYLHLzgxtmYfM4HLlw7rnTs/K3pETaJ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=oOMo9384; arc=none smtp.client-ip=209.85.221.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f49.google.com with SMTP id ffacd0b85a97d-385f07cd1a4so2972023f8f.1
        for <devicetree@vger.kernel.org>; Mon, 09 Dec 2024 04:32:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733747526; x=1734352326; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=uViGPV/v+nHuHOrvq6Ruv9ExCngCDQh5fTkCG1Yq1vE=;
        b=oOMo93841/umVk3Qx7QhGPmZQC7QVQ/r+ZRdIL5PckE6esOUP+I5Tt7bnPT4UL24bL
         HeYelRCOeH2Qz2gv70OQaugTMt3tiagT6Mx6OJ/GeP2kTkofLrpvJLFQNLCjrUbL/Pkb
         FlM8lknfYxN7t+l7ZVm7Se/HU05E0suuquA4HA8QSWc1Guxhel6x0rP1dA6uvsZIHqGF
         x41kt36x073fcrpPtXk9ZJ7k3TiJ+AUMY3XpSRkBJ+NV59Jw+1DYcWvDKuYkw3SEAN3k
         5rMeWS6R2E1y5PWJZEjKqEyEdXSryIG/CdSd2XxhhZisTM64XG54z/Fj2Nn9aZ0LGSnR
         FJnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733747526; x=1734352326;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=uViGPV/v+nHuHOrvq6Ruv9ExCngCDQh5fTkCG1Yq1vE=;
        b=PoactZTLobILmn+MRbkAwLAJ1Cr4ob/nw399GrYSUKeOOxGPgkKZA3AJ79Vz+KVs0S
         wroHV/SlJ+xmXdHHtcTfnsk13RmVMO2tWgtxJwCaoLJFnQ1PaV4QSmcv6quT+iLUscjD
         NvH7KZVI383F5M2erzW7gHLFmD48Zysl4GMTwxS/lpHBE5tKdKMiyv93xZAGFlbNhrMt
         JdCCKoa7h/VHLOBmChaOYL4iunQJ2byZCJ0pYql5urWaQRfHZ9gH5PVmjihv/5KfkifG
         8Gn0ea5RJXs5RYDmMDyCnwfbE2Xb57QqMwUTd13pgf4n+kllwNju3cLAZFEQPmifkt7W
         pYPw==
X-Forwarded-Encrypted: i=1; AJvYcCXi8KQqJy4Zms/X5T+3kzwZK5skhZP2VMQcQ9bXpzdAg7LxTEMMqjPBe2PR+1Rbk62z8r8Ak62sAjMm@vger.kernel.org
X-Gm-Message-State: AOJu0YxNL04ND1XTz1DMr262z/rZ0VVXZnczh+O8xD/kL+y5BPDz1IOe
	8xk5DzVJ2AiLsJkhnSX5gGYM2uwSM9K8sh4GXk0rFktP53y7iytmeo+wZFE4lVM=
X-Gm-Gg: ASbGncs1mDg/cJUdy82bq3ACDYJ98+mSsa7SrDt8EjZwNO9PuI0af+o2/qckQgWTnQR
	Mn8eMK3cw06hpeb+yaQcQPQjN5ThFt6CEleY2pa21AQPRaIEwbpRf+ESaPcp2dB6otMkrHnFqBf
	EpzrslcHzX/mwEioGj7c1Rnh3HcnfYkg7gdfASRyHaes6zjSY40dX5EhlpgLSu88A4YmmbGM9Y4
	GIBhyrAtMEGYrKJbx2J5EvVBTRgm0Phdh0x6w+3R3o7kkzpnITikvuIJdb/hx4=
X-Google-Smtp-Source: AGHT+IF0QxPe4hKMnzuRcXAHmSvyPWaavGQlC4qzDsq4v/j6r5ozfzx2v6ivK+DXs+Z/GbfSnPDNuQ==
X-Received: by 2002:a5d:5f8f:0:b0:386:1cd3:8a00 with SMTP id ffacd0b85a97d-3862b3d0963mr7831264f8f.40.1733747526115;
        Mon, 09 Dec 2024 04:32:06 -0800 (PST)
Received: from [192.168.0.40] ([176.61.106.227])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38621909739sm12864233f8f.66.2024.12.09.04.32.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Dec 2024 04:32:05 -0800 (PST)
Message-ID: <9c89e6f4-a9af-4270-b266-537f3464ee32@linaro.org>
Date: Mon, 9 Dec 2024 12:32:04 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] media: qcom: camss: Restrict endpoint bus-type to
 D-PHY
To: Luca Weiss <luca.weiss@fairphone.com>, Robert Foss <rfoss@kernel.org>,
 Todor Tomov <todor.too@gmail.com>, Mauro Carvalho Chehab
 <mchehab@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Barnabas Czeman <barnabas.czeman@mainlining.org>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@somainline.org>,
 Caleb Connolly <caleb.connolly@linaro.org>, David Heidelberg <david@ixit.cz>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20241209-camss-dphy-v1-0-5f1b6f25ed92@fairphone.com>
 <20241209-camss-dphy-v1-2-5f1b6f25ed92@fairphone.com>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20241209-camss-dphy-v1-2-5f1b6f25ed92@fairphone.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 09/12/2024 12:01, Luca Weiss wrote:
> Currently the Qualcomm CAMSS driver only supports D-PHY while the
> hardware on most SoCs also supports C-PHY. Until this support is added,
> check for D-PHY to make it somewhat explicit that C-PHY won't work.
> 
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---
>   drivers/media/platform/qcom/camss/camss.c | 9 +++++++++
>   1 file changed, 9 insertions(+)
> 
> diff --git a/drivers/media/platform/qcom/camss/camss.c b/drivers/media/platform/qcom/camss/camss.c
> index 9fb31f4c18adee886cd0bcf84438a8f27635e07f..b99af35074cdf6fa794a0d2f0d54ecf12ac354d9 100644
> --- a/drivers/media/platform/qcom/camss/camss.c
> +++ b/drivers/media/platform/qcom/camss/camss.c
> @@ -1855,6 +1855,15 @@ static int camss_of_parse_endpoint_node(struct device *dev,
>   	if (ret)
>   		return ret;
>   
> +	/*
> +	 * Most SoCs support both D-PHY and C-PHY standards, but currently only
> +	 * D-PHY is supported in the driver.
> +	 */
> +	if (vep.bus_type != V4L2_MBUS_CSI2_DPHY) {
> +		dev_err(dev, "Unsupported bus type %d\n", vep.bus_type);
> +		return -EINVAL;
> +	}
> +
>   	csd->interface.csiphy_id = vep.base.port;
>   
>   	mipi_csi2 = &vep.bus.mipi_csi2;
> 

Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

