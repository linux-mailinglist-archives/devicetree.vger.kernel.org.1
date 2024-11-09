Return-Path: <devicetree+bounces-120490-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id A4D5E9C2EB9
	for <lists+devicetree@lfdr.de>; Sat,  9 Nov 2024 18:22:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 4BCA1B2199B
	for <lists+devicetree@lfdr.de>; Sat,  9 Nov 2024 17:22:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3C70319E836;
	Sat,  9 Nov 2024 17:22:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="oM+ZguEX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39F6E19D8B4
	for <devicetree@vger.kernel.org>; Sat,  9 Nov 2024 17:22:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731172933; cv=none; b=c5KRzi7Ng6a/mToNX29zNG8x8c9bp1EBYXewIhFAi+29WVAwg2PytBb0vxndRhtZ8stvBo2q/Nsw3iBZVgggw71q9PxY3e/m5nT8z29BFyJekHI+zeRc2y3iQVPowiDbktN65mmo61LCWzF0IDgwnqzBkCE2uIOEH35aXaQY4aU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731172933; c=relaxed/simple;
	bh=pgL8gsiXuEpe78oaOwjEtqdG8Xlsm054EJXb7d6pd7Q=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ESZPcRuMcrCQjNBlWsItjS/KW5EDl2GcGqRy7HHBEpUID1nq/rghUDju3rMKx+m/nQ/wKCSI1qldKm91cv0SKg+sAnVylM5B9bXAdxLvFyhX+RQ13z/kLEvZRpovsTmgJl+KdAPlDbLKyTr+XHXW8pAV2VM8dBsZYj1woAU69r8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=oM+ZguEX; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-43193678216so30132895e9.0
        for <devicetree@vger.kernel.org>; Sat, 09 Nov 2024 09:22:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1731172928; x=1731777728; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=5H+n8hKwMU/rFaCD0qvnq17NXDKqhdH26m0nFiBdOLY=;
        b=oM+ZguEXfwzEOX3QoaBZ5AcZCNo3KI6oNA5P44mMKID10EwP9JZbM25g8mpw0Pge3m
         xmz4TT4ncIYvgiKY9m/YnaJXaVXEc1aRf6/OnZZ28agEBr4iWdXXCzek21ODu6mXvDWV
         bxTHhDfQHkuOUS1ejUnQpYvXxkEphxXk7IO5U81BKczVK2B43aRP3EeR+iQHhqnDMll+
         anMkN6tqyqtnHugdP+h9EGdk0tu6uoJc8kpBiOP+PjxkyR+OEvtyIAlvpiEofuL5xcFy
         +qj9REtU4d4J1NsHQfuMfTYNSg0eavkLLd2TcINy3UcFW+WXp0MoodbD0mkcIJOBBCFz
         Casg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731172928; x=1731777728;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=5H+n8hKwMU/rFaCD0qvnq17NXDKqhdH26m0nFiBdOLY=;
        b=Pmkwds3ncyEhr3SqgaCUuQAt7BzCks6qG3FXnn1ZWqKXSWdGqDUHZhxpYRzSWhMuZ6
         pFqLbEZc611wQdONdiBey2QilDAA1IrPWH8FnINWs6KN/BHx7iBz0fykZndzn04Ux0SP
         2xxp4cY7YAw7wF/NrVKFT2rnEUjQnjwRYY6mubl37mDWRwCN1+r9F6QZ0kmDqGgZzkvY
         fXqHtANRadBiZrpc5jIufnmiGGnZKKjeJ/OjhUq7tAL0nAuhXLY3+KMf4fxvtJj3X6oj
         vg9qBh/w1sau+pHcJsjdUgm43bCj12khF1Cj9SVfhoM0dcceu76Hw1tGy8GTjH16cMZK
         baJw==
X-Forwarded-Encrypted: i=1; AJvYcCWi9ECrMa5lFKm0LsUiULBcmwxCM0MhpW9i/KETRBBo96Z72+pUqE52BCBQpO3V6FsvKhp6JIOvPU3R@vger.kernel.org
X-Gm-Message-State: AOJu0YxQ3Bo81tDlXqQYacDdqGZid/U3QGBPioyWO5lb126L20SQ1+UO
	J0FTL7jByBly9lEk3/tcT5PPENCRojLAo1KartGFw0L8jrTe9+bx1K61/Zry1uo=
X-Google-Smtp-Source: AGHT+IE1RYOVGklIyE1IORLaNjLIY04lZliu8TKuSyMeu3g+/8dlg1C+LHnaQGhacvYdKXljs5Yrzg==
X-Received: by 2002:a05:6000:418a:b0:374:cd3e:7d98 with SMTP id ffacd0b85a97d-381f186d1a8mr4237152f8f.19.1731172928458;
        Sat, 09 Nov 2024 09:22:08 -0800 (PST)
Received: from [192.168.0.48] ([176.61.106.227])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-381ed997320sm8285603f8f.47.2024.11.09.09.22.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 09 Nov 2024 09:22:07 -0800 (PST)
Message-ID: <d4afdd01-3147-4cfc-820a-f6004637e6bf@linaro.org>
Date: Sat, 9 Nov 2024 17:22:06 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 10/11] clk: qcom: videocc-qcs615: Add QCS615 video
 clock controller driver
To: Taniya Das <quic_tdas@quicinc.com>, Bjorn Andersson
 <andersson@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, Abhishek Sahu <absahu@codeaurora.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Catalin Marinas
 <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Cc: Ajit Pandey <quic_ajipan@quicinc.com>,
 Imran Shaik <quic_imrashai@quicinc.com>,
 Jagadeesh Kona <quic_jkona@quicinc.com>, linux-arm-msm@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20241108-qcs615-mm-clockcontroller-v3-0-7d3b2d235fdf@quicinc.com>
 <20241108-qcs615-mm-clockcontroller-v3-10-7d3b2d235fdf@quicinc.com>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20241108-qcs615-mm-clockcontroller-v3-10-7d3b2d235fdf@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 08/11/2024 04:09, Taniya Das wrote:
> +static struct gdsc vcodec0_gdsc = {
> +	.gdscr = 0x874,
> +	.en_rest_wait_val = 0x2,
> +	.en_few_wait_val = 0x2,
> +	.clk_dis_wait_val = 0x6,
> +	.pd = {
> +		.name = "vcodec0_gdsc",
> +	},
> +	.pwrsts = PWRSTS_OFF_ON,
> +	.flags = HW_CTRL_TRIGGER | POLL_CFG_GDSCR,
> +};
> +
> +static struct gdsc venus_gdsc = {
> +	.gdscr = 0x814,
> +	.en_rest_wait_val = 0x2,
> +	.en_few_wait_val = 0x2,
> +	.clk_dis_wait_val = 0x6,
> +	.pd = {
> +		.name = "venus_gdsc",
> +	},
> +	.pwrsts = PWRSTS_OFF_ON,
> +	.flags = POLL_CFG_GDSCR,
> +};
> +

This looks good to me, except; could you please check if venus gdsc 
should be the parent of vcodec0.

If so, please add it in, otherwise.

Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

