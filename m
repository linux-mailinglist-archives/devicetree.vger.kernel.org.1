Return-Path: <devicetree+bounces-43390-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 9759885A3BB
	for <lists+devicetree@lfdr.de>; Mon, 19 Feb 2024 13:46:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 384EAB2625D
	for <lists+devicetree@lfdr.de>; Mon, 19 Feb 2024 12:46:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 418352E644;
	Mon, 19 Feb 2024 12:46:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="IC+jxoSq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A905D32C8C
	for <devicetree@vger.kernel.org>; Mon, 19 Feb 2024 12:46:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708346767; cv=none; b=A40TkqdC0MNHTr40qBhyqe344wZ6VU+76NC4K9J/yHzMEt2GUJt4CewLjIR6srIJND4KSv1pw6ahaVyf5c+EvQO11KeIepL0R+3zREuroMd7Z9ts+QaqvPA9ux1qX1kOlXQMNKQo0jVb1uVtoDfjjFEfzKH0jLcjGCKFScrDD8Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708346767; c=relaxed/simple;
	bh=jeL2ZOTlUeIkpCeDAH2lKJE2fPvqlCgKNxot3hrmlgY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=umJcVazmzbJJOqN0NjAj0EIiGIVAfZ4H/9Xom/0nYLxaCEtliNVEKTbSW8BUXy9/QxyBArEKPz1cjND5DCX+1B66+jFLvkx2jZoKrxCpF9DXn7gw+iVvJiYPCpuHFju1XCf2oMwGSdaQIFwDptHNBG/uRzglZU4DstzBgdZvvsM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=IC+jxoSq; arc=none smtp.client-ip=209.85.221.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-3392b12dd21so2485870f8f.0
        for <devicetree@vger.kernel.org>; Mon, 19 Feb 2024 04:46:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708346762; x=1708951562; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=mJMfx43L94xYRUCQwWnL1D6+lJ5hrssrm8cUpjHuNMI=;
        b=IC+jxoSqksGm9VAsG7FalQGokyE5+Ob5qcOSZLSaNgmLhVolCWLm3tR6HreZQGkDg7
         QxzJ2gpkbTf08G2ha6/CJZCiahCIb5HzN4IsD1fO90q4gBvtCF1wTLxknnNDjNK9ciD5
         Y7m+Mi6777bPv5aE/Pl4WrD0wxDJ8zu8rl/tQyiMmMn8rLRnCcuo+AScsTwSkTzyswEJ
         RPuOKes/GGnO+l6tACbALJnVYazoRvt9txHSNGSxhP2DfsSpjODb6zURp7AHR/oyZw66
         YmzBR8qkkOXYoJ1t5tNKLJt6LnV40rmcGGhSSVCs42bWTFAwjBqBCjPL9esxsDcy1pLC
         9QeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708346762; x=1708951562;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=mJMfx43L94xYRUCQwWnL1D6+lJ5hrssrm8cUpjHuNMI=;
        b=PPkpz+VNzS5W4lwCY7uLZpiW36CKoaVsBWeHnTh3MLjzgqUPvF458bWvG5B/v1vpXL
         Z7to6XilKgcOfniwo9as4qnl9hYQIzdCdmBDUv0MN5H6ow7WRTmG9gE1+FBGLloy5AN3
         kL769f4YNGsCI5u0mqpDx8/bYsGSBm4RRnKvU4TvnJXoN78M+EW7fm89PkQC+YCeWyPf
         Ox2CytFL7cZZm2IEFFZL2u93JrZi3hakjizp5+V75RBC1gTbZ30Nci/mkUAJzbs3w/b0
         ZKXtV1QRgokCgjFCPrOyQHzJVX9z+m3QjORZKMG0yV8remLrFGhHVH0yfeuA6WfnLOSW
         qcsw==
X-Forwarded-Encrypted: i=1; AJvYcCUb4tvsx1hGXkQJMK08l2Jr1Xp4ejeQgFKK/dRWGazcda8xayV43P4OIdiL81FuUQfnDbY/O1PL2NCm9eqD+vBJocPjezWK/HhzUg==
X-Gm-Message-State: AOJu0YyKjWB4mWJ6rLGjDzmVGOqEiO93BzAL4Nw7h2MuY0Xae5PrM1yx
	ShcRqYTTYwun8ht3DDGs+Qx0jQPNLJT50yo3quDHLwDLYfw/JVm8wiGvKUGDxoM=
X-Google-Smtp-Source: AGHT+IFmwKmBJosde5SFt1ZVVqtpb+4xKhpxMkZOV+tdkL6MRFevW+di1bXhPz8+mCClAXO6HquHvw==
X-Received: by 2002:a05:6000:1787:b0:33d:56a0:88e7 with SMTP id e7-20020a056000178700b0033d56a088e7mr1560869wrg.46.1708346762093;
        Mon, 19 Feb 2024 04:46:02 -0800 (PST)
Received: from [192.168.10.46] (146725694.box.freepro.com. [130.180.211.218])
        by smtp.googlemail.com with ESMTPSA id x11-20020a5d444b000000b0033b7ce8b496sm10362458wrr.108.2024.02.19.04.46.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Feb 2024 04:46:01 -0800 (PST)
Message-ID: <f74159ee-d01c-44f0-95dc-aa9ee579d45d@linaro.org>
Date: Mon, 19 Feb 2024 13:46:01 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4] dt-bindings: thermal: qoriq-thermal: Adjust
 fsl,tmu-range min/maxItems
Content-Language: en-US
To: Fabio Estevam <festevam@gmail.com>
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 conor+dt@kernel.org, linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
 Fabio Estevam <festevam@denx.de>
References: <20240104124952.1975160-1-festevam@gmail.com>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
In-Reply-To: <20240104124952.1975160-1-festevam@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 04/01/2024 13:49, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@denx.de>
> 
> The number of fsl,tmu-range entries vary among the several NXP SoCs.
> 
> - lx2160a has two fsl,tmu-range entries  (fsl,qoriq-tmu compatible)
> - imx8mq has four fsl,tmu-range entries. (fsl,imx8mq-tmu compatible)
> - imx93 has seven fsl,tmu-range entries. (fsl,qoriq-tmu compatible)
> 
> Change minItems and maxItems accordingly.
> 
> This fixes the following schema warning:
> 
> imx93-11x11-evk.dtb: tmu@44482000: fsl,tmu-range: 'oneOf' conditional failed, one must be fixed:
>          [2147483866, 2147483881, 2147483906, 2147483946, 2147484006, 2147484071, 2147484086] is too long
> 
> Signed-off-by: Fabio Estevam <festevam@denx.de>
> ---

Applied, thanks

-- 
<http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog


