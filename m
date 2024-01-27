Return-Path: <devicetree+bounces-35786-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id A502883ECF0
	for <lists+devicetree@lfdr.de>; Sat, 27 Jan 2024 12:42:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 356181F23103
	for <lists+devicetree@lfdr.de>; Sat, 27 Jan 2024 11:42:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4E30E1EB3C;
	Sat, 27 Jan 2024 11:42:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="F1hdQGvm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70B5F1E869
	for <devicetree@vger.kernel.org>; Sat, 27 Jan 2024 11:42:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706355771; cv=none; b=ahEEKoj0iTgkSbY3xzstIHq5PdM8VkIwbItzmobw8GYuRjrwfEoDxIhVa7rtDsOsYr61mpCGgWHsaDtpekOL84zz2/QPhk944sZJxrqkrZbY1rb74/+39if3NdFPXiA2g1NIb93kR/U4BT9gs//GFAH4opdJCaHhOugGIq6SHiA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706355771; c=relaxed/simple;
	bh=gphE6KtpJp0SS/gUsvyjJw1AIv6vc2kTCCKETaQz+sE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Dk2HwMwDl6MarVe3VAN/E6MlEWUcAciSLlWZydFdNQ5PxbHlN9Gvi0F09xYwlqgiPi2/A2bcMX8hjjGxXj+qdS8MaKZBqNiXnyG5M/1KMhvdJe3q847U9cLbm733gZylTTPlwJpTAtCEaZ1R3JYjQN4G2cO/m/jVPkQNmy79uTw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=F1hdQGvm; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-40e76109cdeso23890975e9.0
        for <devicetree@vger.kernel.org>; Sat, 27 Jan 2024 03:42:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706355767; x=1706960567; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=gKlN+/xPsuXncTUWFKl/kH0EocLsgwa6HWly4O5Ss1Q=;
        b=F1hdQGvm8kzZEo4B6/sICZBuBJjGmHR4Ril+GKLjdMzLr0WAdCcBTDsLsaLaQkCXvx
         2A+oPcQC49pGa1zD1ytvfIdEz4t8zrZkTYZgmwDeFnpuM/80luOSq/09w/lVoLQ+BYXL
         RrIqe4ex+wFleJUZCqz0XVymrXINRmeNLuSBk4LrW0Q6r0bPmditGBU6OYM3MgprKTss
         BJVg2ktwbh8exWE95ZR1iD5ofNPvsNOCYGCxgeC59WwmilTiNPYlv8263UNQnalejdnZ
         jux0dy4mmQ53FvGkeLzunwEtVeFQO3fouPA42lM9pNPnWd4u5KPaXhKVK/8U4y5pvUPI
         qAzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706355767; x=1706960567;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=gKlN+/xPsuXncTUWFKl/kH0EocLsgwa6HWly4O5Ss1Q=;
        b=PMmqk2kV129jP1OlX/p30MTaMgCjYLRsuz+WOXOirPLvqv4lvxKOkSWOpcxyXWRJgw
         MiYrCVuqHWduL/MIXhoNF243ibrfli8oHZnbEr1g35uApqGGgKmz0/w/fukx4aPYcdF6
         6mr0tehP1ohGlk4Ok94DK8kIMWSwwgsvmYiTD3w4Ofxhq+z0GmL7QpnVsAaPWt6d6Yfu
         W0ZwjLymzoD3bUsfoZmKQ1x8XuAfI1DcS+MCZqXW9+0FF7T0jOAP1ugLUxyAqYIMRlE6
         h4ARajgK90gpTZeEDyFIUqvb4/w8wGroE2Evckbj/sDk1FW+vv5Ulf8x38tnYeUo50xC
         1RLQ==
X-Gm-Message-State: AOJu0YyY5/5K9xQVX5sCUsJ76EMfAMEpN9PLkIiJxiksQW+9zFYOgqnH
	ZdgaoB7PNRcOLLzhU1EaSSC1Y3NSeO49NAVpqJFGsxerY/zbaxhFTuif+HuKhEs=
X-Google-Smtp-Source: AGHT+IH+IPMKD7Xl/uiHGvvX+my9GQMpKgrmcobSElG/11xqhLIMWldAaucRKFHZpqja9dd363l2Uw==
X-Received: by 2002:a05:600c:3502:b0:40d:88f9:1488 with SMTP id h2-20020a05600c350200b0040d88f91488mr1168653wmq.11.1706355766702;
        Sat, 27 Jan 2024 03:42:46 -0800 (PST)
Received: from [172.20.10.4] (82-132-215-85.dab.02.net. [82.132.215.85])
        by smtp.googlemail.com with ESMTPSA id f19-20020a05600c155300b0040e541ddcb1sm4488632wmg.33.2024.01.27.03.42.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 27 Jan 2024 03:42:46 -0800 (PST)
Message-ID: <4a659435-f3a9-464c-8744-5acc0b728161@linaro.org>
Date: Sat, 27 Jan 2024 11:42:43 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V3 3/3] nvmem: zynqmp_nvmem: Add support to access efuse
Content-Language: en-US
To: Praveen Teja Kundanala <praveen.teja.kundanala@amd.com>,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 michal.simek@amd.com, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Cc: linux-kernel@vger.kernel.org-, praveent@amd.com
References: <20240108052617.32510-1-praveen.teja.kundanala@amd.com>
 <20240108052617.32510-4-praveen.teja.kundanala@amd.com>
From: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
In-Reply-To: <20240108052617.32510-4-praveen.teja.kundanala@amd.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Thanks Praveen for the patch few minor comments.

On 08/01/2024 05:26, Praveen Teja Kundanala wrote:
> Add support to read/write efuse memory map of ZynqMP.
> Below are the offsets of ZynqMP efuse memory map
> 	0 - SOC version(read only)
> 	0xC - 0xFC -ZynqMP specific purpose efuses
> 	0x100 - 0x17F - Physical Unclonable Function(PUF)
>                  efuses repurposed as user efuses
> 
> Signed-off-by: Praveen Teja Kundanala <praveen.teja.kundanala@amd.com>
> ---
>   MAINTAINERS                  |   8 ++

Consider spliting changes to MAINTAINERS as seperate patch so that its 
easy to fix conflicts.

>   drivers/nvmem/zynqmp_nvmem.c | 215 ++++++++++++++++++++++++++++++-----

This patch also contains some cleanup, these should go in another patch.

--srini

>   2 files changed, 192 insertions(+), 31 deletions(-)
> 

