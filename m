Return-Path: <devicetree+bounces-236677-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 919FBC4668A
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 12:57:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 096151883BE4
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 11:57:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1C0CA30C61B;
	Mon, 10 Nov 2025 11:56:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="yZ8sbvzu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1318F30C37D
	for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 11:56:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762775816; cv=none; b=h5N1xWvKl2rDN+On0zx4yvL/sOXT45XeVxlWAFjhWBZOHoIXIp+IHfHCpibUAGJkCJyKMszmxLxLUMOys00L77ajaTR6SGC0JZRxBvqXFhrlLa8rWcEQxP16u3MRAhWH9XaIvxaDFiOMOPen49dTIRC927vu+BJ/09C/9gsSSqc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762775816; c=relaxed/simple;
	bh=oUgierYSU3dRBhCJGCsjS3J9M3HkXvV59r1SNiAzvk0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=kwXPk6y5wSU3De5GIJrEwborM9yxv48KeiGJV0T4iUDX/CgXZwB0YI3fDuaZzaX1UJEVeVCLRy/SkxwEYOkuvYTAvoSTVmbx70pTkPZbxekyOv4kqqmYkAnJmgxvMnRtiKD0MTUPyqshRnAjVDQlGIyFO4juCVCLrMr7DVBZbd4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=yZ8sbvzu; arc=none smtp.client-ip=209.85.221.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f46.google.com with SMTP id ffacd0b85a97d-42b3ad51fecso676980f8f.1
        for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 03:56:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1762775812; x=1763380612; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=4g2z/CUdSCaQjy9LxpwOngAggO4WOQO9SBX2pApcNyk=;
        b=yZ8sbvzuAGCw2mrF/znpax5qC41Ec7OITzSh/dmx2az4dedT5WWB6bpqwtSq1I4Nlr
         oIpLrJxktDxHg06jbPw7jL2jKcc+0jSEAQd3c+S4v1KeOvQi/QSH90zJ/r6OyfXi506r
         hmTKfE/X0/sdzVMa9BE+0dwJJQdEftjpNt6jt1tHT6/j6tfYT6HVn/algXMNXZKO3VB+
         dRSM/3B6u/fUySKFFntvkD2WpNch/ElHnxg6XbZjgr8WjqdfdMpnrFgmL2piHu4dwSty
         M8OWYVWlLYbBk3RJ3adi7uPuosp/yzM+ERCRJasi1lgQxCnJnXtKfsoEfV5hkEUCGeMw
         hsWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762775812; x=1763380612;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4g2z/CUdSCaQjy9LxpwOngAggO4WOQO9SBX2pApcNyk=;
        b=cSXDVggmOVl8Ci9Ly5cg7slhDbZ0gXXC/6VQOmokaFqGWAy/scoXFKMOaqpii8NUv5
         dZ9jouyL7YDTN02E7q1b/bMZ8IZ2ZE+ItnEY51GcpPG0pinIbKIIAIwsEQsQ3MKrKAHg
         p0MQpMKEfeGtaoMW0k6cp0Li64nScI36ouhkE40gsB2CQztHDoX471bnXRIB3HiCaBcx
         DYTIv5ClFYg8YcdHvxrT6Cu5Aeg2VyLb0KJLK/YTu7NAByzrusLwtKP+slM4mWp0/j5f
         LhJigGvm0HLy52rOVuzwk/znhcZD7+uGo/JUv+P8oJoLIUz1MesJnd06erUjfvHhpfx9
         ksOA==
X-Forwarded-Encrypted: i=1; AJvYcCX5WkdDHh/qePdhD1YlVbUftcbVwve1G53tQEsmS01gStS6I0cxJmewvXEQbANvSa4nXLGcdKUaqdUg@vger.kernel.org
X-Gm-Message-State: AOJu0YzSZolGzzlX70rGy3riJ9bvihsFcCdu+MSGapZ7FjHCAzJp8fq0
	Ztqof8z1M4J7KV0ChWW2Sf32Y5rBxzpcRd2VOUgIQCxy8tDEjXA3c1TU0CkrK25YhDg=
X-Gm-Gg: ASbGncvfxRW1TO2KJ/BufgD6hb1t/EH1Gnw/OrOr/PGmDlfOylFMZWN116r+gzYFXDY
	aip88NWEitMA3aF2eDR6zpSSofL33qLzH8EdeGmhOzMsttFBUR+op276mML8W27Ss/ymmOPOPzB
	0eNfCslSJviMcsyCu5x+w+eDjdC30T/PKL3E876DKFvBACjcMe4nqUFHsdECFc4wIpkUizh8AMF
	LuFGnfjJ9jIaDOxw4Y0DYqMQ0Eo37s06tveT11veJ6NHPgMwR956WMF75PzTTRBFRZkeAUh52VB
	PFC7EHmEHITPE84Z7Fy0DC3Mo+CvwtXptMzPw9Ehf971o8sSZnvmIdxishKhj7nuMYlCKqeXSnp
	pLsej7CXESTDA7KMB9dWy4vuvXR2r2M5g56oQ6ovnfsUfIBj4UlhK+0H+edYE9gCNrHSizVHUEU
	lNp8jfmA6JoN4bFMX4wVXEafQiHi0YeOitI3C/RWYl4ZNdkmgb59RHWRQ=
X-Google-Smtp-Source: AGHT+IFbcw4K9ivqGLQddDZa5CrYY9iwv64S3IIlLZWbi+XRwqAEU+75TumzHzlJ4CnXK9gTK1CTaA==
X-Received: by 2002:a5d:5f42:0:b0:429:bca4:6b44 with SMTP id ffacd0b85a97d-42b2dc1f4e9mr6741662f8f.13.1762775812360;
        Mon, 10 Nov 2025 03:56:52 -0800 (PST)
Received: from ?IPV6:2a05:6e02:1041:c10:2b20:d700:6e9c:533c? ([2a05:6e02:1041:c10:2b20:d700:6e9c:533c])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-42ac679c5dcsm24735244f8f.44.2025.11.10.03.56.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 10 Nov 2025 03:56:51 -0800 (PST)
Message-ID: <d36f89d7-2d18-4c24-840c-243d4fa10de0@linaro.org>
Date: Mon, 10 Nov 2025 12:56:50 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/3] dt-bindings: thermal: r9a09g047-tsu: Document
 RZ/V2H TSU
To: Ovidiu Panait <ovidiu.panait.rb@renesas.com>,
 john.madieu.xa@bp.renesas.com, rafael@kernel.org, rui.zhang@intel.com,
 lukasz.luba@arm.com, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, geert+renesas@glider.be, magnus.damm@gmail.com,
 mturquette@baylibre.com, sboyd@kernel.org
Cc: linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
 linux-clk@vger.kernel.org
References: <20251020143107.13974-1-ovidiu.panait.rb@renesas.com>
 <20251020143107.13974-3-ovidiu.panait.rb@renesas.com>
Content-Language: en-US
From: Daniel Lezcano <daniel.lezcano@linaro.org>
In-Reply-To: <20251020143107.13974-3-ovidiu.panait.rb@renesas.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 10/20/25 16:31, Ovidiu Panait wrote:
> The Renesas RZ/V2H SoC includes a Thermal Sensor Unit (TSU) block designed
> to measure the junction temperature. The device provides real-time
> temperature measurements for thermal management, utilizing two dedicated
> channels for temperature sensing.
> 
> The Renesas RZ/V2H SoC is using the same TSU IP found on the RZ/G3E SoC,
> the only difference being that it has two channels instead of one.
> 
> Add new compatible string "renesas,r9a09g057-tsu" for RZ/V2H and use
> "renesas,r9a09g047-tsu" as a fallback compatible to indicate hardware
> compatibility with the RZ/G3E implementation.
> 
> Signed-off-by: Ovidiu Panait <ovidiu.panait.rb@renesas.com>
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---

Applied patch 2/3

Thanks


-- 
<http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog

