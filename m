Return-Path: <devicetree+bounces-219391-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E102B8A974
	for <lists+devicetree@lfdr.de>; Fri, 19 Sep 2025 18:37:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 51C791C85B52
	for <lists+devicetree@lfdr.de>; Fri, 19 Sep 2025 16:37:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7B4BE263F54;
	Fri, 19 Sep 2025 16:37:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="v3+qTFoG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9546323815B
	for <devicetree@vger.kernel.org>; Fri, 19 Sep 2025 16:37:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758299848; cv=none; b=pI1d5BZt3/gKPaikBaa67AfFImn3VS3WmNnZRS1+c8RL5YCvVQjh55fr4x4I9YSXInmBgavAonVRvcNRRpFTtmEJKloNEGM0XLE9iwYBhEU8e1+4/8KKxFtiS9k5KNmGtjGYVJuz8/UtQe3l/zccFiHC81oY4Y5VU3CZC2AIiIY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758299848; c=relaxed/simple;
	bh=9uoHymsF5pX68JAjo3GeIAUB5sUaex0VrFvZfKwQZ2o=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Yi3Z1PdmsEVKTzmXPpv0MzMK6u5MoHiLDE5KpYmZrkT40s0zrSO5hLMYQW7I1YSy+r8xe93oJfk9qRvRiQbDsYyi33krhCG10zPTLMycV7LmwbMs/JsttyCJnqMHGcn6hcMulCPBhoaUyhyOCvzJmbtrhMiWYd8l2Gzx5tP2FCU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=v3+qTFoG; arc=none smtp.client-ip=209.85.221.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-3ee15505cdeso1382783f8f.0
        for <devicetree@vger.kernel.org>; Fri, 19 Sep 2025 09:37:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1758299845; x=1758904645; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=U/knhkAXouYA6Xl6JtvTXAsRE/iUR0XbPvcQV+3XkA0=;
        b=v3+qTFoGfh7ct5EmaNPLFc/HXb/1CKkEgnWzEM5nU31v3gzmJyQ14VNkJr8UqFnZuv
         hs67aI3JXi00LEwCnlIWeKv99VJigwSQr4GAiVhrABZfNyQ1zp/zWTk5k3WqqcEurU9l
         FHJ08GXmawfr6gpFAdfb/WaqUn6bBdKAgJeCZOYKOWoQ9+w6bzKXEdVRBnljKqIDBTDM
         Fc67CK/6F7aqoT1HXLkS/hldE7TLpKzWenR9AXNwzknbcTKFS+6Vp2Lc03vl2YZMsIMJ
         IivUfXhprRiyJR/oXv4Y6BSCGIxmh75JNBrcpS5s+0cf8xsHG5GJZdNsqCrH+mtpw4qh
         blfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758299845; x=1758904645;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=U/knhkAXouYA6Xl6JtvTXAsRE/iUR0XbPvcQV+3XkA0=;
        b=aRMjIBqboznRtSOF4QCkd8vHJ1eLsJ7CYFxIB2YQEPR2RjaiObJfXb+dnaDgfr15jG
         xM2krke5OGcHvbhWcKtY/da8/mUGGyFE6JwprDGyQGbJ/ck6Bb81Rg7lrWpZ95LTKF6b
         W+wnuyzRYvy7zFKb0+4TvWjOAx/wnlwD/738jBtFu7Gy/2b9JeIOBjkmRmGuMPjVRQFF
         6SsQB6To0dDh/IsvJ6scjrNpYEX9K8s6D0m2l30eAyScTU+Dt2Uce4oswxre8MWND7Im
         Z0ln2LTTDdqehl+Le1bNyKZvzAmUMdXS2ML4WgiWQR6w2lmtURliR82moRQ4mDZ2OPrc
         rPSg==
X-Forwarded-Encrypted: i=1; AJvYcCU+/nGBNz/9il9Iy5bYez3fg1clhpjAYwhaKTkS/4i16Fw2Q8GsOEBy+kGjk+sIJWmfTezrjsyktAqw@vger.kernel.org
X-Gm-Message-State: AOJu0YxgCkstBR98tlqXEOXNHWPO1XXH4Wc9tgz2KU3MG5Nb6zs+9zeb
	5MKeX0HOGTHFBe241ANGtBjFAUTDesClZUCimTGqw4rgSW6+ZJ5YzJ/9GcXKP8pzcus=
X-Gm-Gg: ASbGnctvy8HBZDfNMddQhaEiDDjeZ9mRveX8cjLNwkVoel6ECFToA/8A7fsBoGNqi9b
	hgktG6ZSZT1yEarFuB/vqBF7M2HBKk6ervw29lqXEQJUxo5Qll8CHNMqBeFEzlYAMmZVGKA3OWG
	sy7MeijgcglEJYKniPu5ldkjQjZo24IWeUj9ipCpCBROPowEOBKDwxvek4s40HK0GQenNfC9BjZ
	cvjlxCzzJoVFv2JpgB/LV6mrS52GsQj2i+J+hfd9bFeWAApo4YL+xBbejEx9AIZ9zmMakuQ+ceQ
	2jQAo9qSp2T023sHKAmES1f+yFdzJsDeK0LlKPuSh0uxAVkLMwTAkeNAbAaSzfo1dPfZGCjbTHH
	LUtJcx8bjHbE5Y36tWCHlKl2j0vXbOzBbJdiGhbV5Eq24EBtYVg74sA+N8X34IdbRND96Dfn1j/
	4upQ==
X-Google-Smtp-Source: AGHT+IFLCUqUgGD2nd4xyiWXNaIfWMF8JqHjk07IMJDtnkFYT6wdV7TebvWGMsqzX6eS0i+DvItVtA==
X-Received: by 2002:a05:6000:1ac8:b0:3ec:db87:ff53 with SMTP id ffacd0b85a97d-3ee16600969mr4237445f8f.12.1758299844844;
        Fri, 19 Sep 2025 09:37:24 -0700 (PDT)
Received: from ?IPV6:2a05:6e02:1041:c10:8ffd:205a:6719:49c1? ([2a05:6e02:1041:c10:8ffd:205a:6719:49c1])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-3ee0fbc7478sm8450648f8f.38.2025.09.19.09.37.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 19 Sep 2025 09:37:24 -0700 (PDT)
Message-ID: <71ad53ba-7b72-481f-9b62-1b268cbcd912@linaro.org>
Date: Fri, 19 Sep 2025 18:37:23 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v9 0/4] thermal: renesas: Add support for RZ/G3E
To: John Madieu <john.madieu.xa@bp.renesas.com>, conor+dt@kernel.org,
 geert+renesas@glider.be, krzk+dt@kernel.org, lukasz.luba@arm.com,
 magnus.damm@gmail.com, mturquette@baylibre.com, robh@kernel.org,
 rui.zhang@intel.com, sboyd@kernel.org, will@kernel.org
Cc: biju.das.jz@bp.renesas.com, catalin.marinas@arm.com,
 devicetree@vger.kernel.org, john.madieu@gmail.com,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-pm@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
 p.zabel@pengutronix.de, rafael@kernel.org
References: <20250917170202.197929-1-john.madieu.xa@bp.renesas.com>
Content-Language: en-US
From: Daniel Lezcano <daniel.lezcano@linaro.org>
In-Reply-To: <20250917170202.197929-1-john.madieu.xa@bp.renesas.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 17/09/2025 19:01, John Madieu wrote:
> This series adds support for the temperature sensor unit (TSU) found on the
> Renesas RZ/G3E SoC.
> 
> The initial syscon patch [1] the series depends on has already been accepted.
> 
> Changes:
> 
> v9:
>   * Remove driver-specific read/write indirection and use readl/writel
>   * Use devm_mutex_init()
>   * Switch to syscon_regmap_lookup_by_phandle_args()


Any more comments on the patches ?


-- 
<http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog

