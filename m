Return-Path: <devicetree+bounces-61948-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id F1AE78AF2EB
	for <lists+devicetree@lfdr.de>; Tue, 23 Apr 2024 17:54:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9043B1F24AC2
	for <lists+devicetree@lfdr.de>; Tue, 23 Apr 2024 15:54:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0B3DE13C9D5;
	Tue, 23 Apr 2024 15:54:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="pcM7NGPg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DEA6136652
	for <devicetree@vger.kernel.org>; Tue, 23 Apr 2024 15:54:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713887677; cv=none; b=nKCBI9DdmFH+SxK2viWXNDcfZc5NjKWl8GvXv/LOtTttlXlW3WFsfdTVVbG02xBqnm/+lXioJ/Xx8r0N9zBrQb+Ie/5ddkrf5rcEH9WR3QKiRARB7k71zf1Q2uCOx9HQyyjr13B1nn+UxLGpXN5NUQK3MFUzJhPb+jGlfy02MP0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713887677; c=relaxed/simple;
	bh=zOrR4N6W5yEjumIJlaR4j9bXUXeISdNMznsMzpCn11U=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=mxgCN5bkOKH3CRSu3hHBLgVAS4xVryoo8XKoAQGRdNBPPgGEKnd9E8Ffs1qsFnZcYCk9/JnTpoNG87lAUpjDgO3jKV6Mj3QbCqCmsxfz5VVsGmK8JsjipPvaRhtw8RiUjuwOBVzTLuNvWfYlSwlenICHIFKZCIQE4ey8po15fY0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=pcM7NGPg; arc=none smtp.client-ip=209.85.221.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-34665dd7744so4401981f8f.1
        for <devicetree@vger.kernel.org>; Tue, 23 Apr 2024 08:54:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1713887675; x=1714492475; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=2CEYkFgPQbfSpwnnDo2x7Wyyhx+vsMBr1IYLJirdNPw=;
        b=pcM7NGPgl6t3heodR31q4C67+0MXaF0krE/sfT/wnzAj20Dr5tcdWLlvJMkDdiWVLM
         8PbxuXYUxaBMQCePfN7u+KFuy9MDtEXSQQ4rtrqzbmb7K4P1oN44alh/Ez/vEbFz9DwN
         B5g3fL4gpcMZv28MMtq27hYQnrwn0VyvOsdiGCDsrmEvhmlxE2a5lxiZtiYDPoVTYYv8
         yh+g+NnfM/TEM52XAeU2F7amgdxRmqfE4MDCu6zHqcJUtP2tGQAVa128+BGGhuLUj62o
         McmhZwcz4NQ09eoNSX7jW+A8NOePdPJbCop8VFbgFFXYZYE25MOXsCVZK3nIEe5kICY3
         Ys0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713887675; x=1714492475;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2CEYkFgPQbfSpwnnDo2x7Wyyhx+vsMBr1IYLJirdNPw=;
        b=mweZ/BAB5iTxjNBtyzmTLip5oiUpJcPBw7npemhNDslnergVCfRsmSb7ASy1Ra85OM
         MCbjYES9DnFjeXE9sxEchRccWuU9l6ugVwNcAJXL7BoYuPcvLwSehaYhkJt9e5xLuDGT
         pmEFIpcrMjCbzqikyrjlAzp2cCMwlVOQ2o2v1JV/zgG6Qq1spdBAzavpEyNCQTgsFZ4U
         WQrS0pdm/NOz2j2Bl7yuOrvncryOd9h09T9ThLzSz0HLUD+4EInRQmrurpT6XpyfcFEv
         ru610fM2vmjnuym7sAD9FO6fJ21x1bdejsWAWw0L03VhTaZbmKvQiNL2nVSRDyBB2FO3
         1AqA==
X-Forwarded-Encrypted: i=1; AJvYcCX7PkmYFO4E+9gDaAymqRf6bxqn1jLm2TllT24GJHW0YaR2AsipVO1PzRgNfFbXsMMg/BhVQjGg/s0tPeYQNaxDnYvyDw4AvkM8WQ==
X-Gm-Message-State: AOJu0YyXjI1/iNmbUlmeD4RrfEq5GMa8T7gkLwCgK9h+3Boebxm+TeAa
	uArMRWALHA3PKo09Cqo6z7u7OVGDNwfkVjzkOMYt/r6evFjuejEKNdYZIEqASqkuNwzRQV5Xd4y
	L
X-Google-Smtp-Source: AGHT+IE0M1tVNbSGH6P4H6A7BokfgioaPGrg79dTjBg1s3qdqWoF9FuBSbISRUuyZlebNkOM8fxysw==
X-Received: by 2002:a05:6000:e81:b0:346:c0f6:8b6 with SMTP id dz1-20020a0560000e8100b00346c0f608b6mr9421964wrb.32.1713887674930;
        Tue, 23 Apr 2024 08:54:34 -0700 (PDT)
Received: from [192.168.10.46] (146725694.box.freepro.com. [130.180.211.218])
        by smtp.googlemail.com with ESMTPSA id y5-20020adfe6c5000000b003436cb45f7esm14854289wrm.90.2024.04.23.08.54.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Apr 2024 08:54:33 -0700 (PDT)
Message-ID: <d1bf86bc-b561-47c6-999d-fb5e3c99663e@linaro.org>
Date: Tue, 23 Apr 2024 17:54:33 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 0/4] thermal: loongson2: Add Loongson-2K0500 and
 Loongson-2K2000 thermal support
Content-Language: en-US
To: Binbin Zhou <zhoubinbin@loongson.cn>, Binbin Zhou
 <zhoubb.aaron@gmail.com>, Huacai Chen <chenhuacai@loongson.cn>,
 "Rafael J . Wysocki" <rafael@kernel.org>, Amit Kucheria <amitk@kernel.org>,
 Zhang Rui <rui.zhang@intel.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: Huacai Chen <chenhuacai@kernel.org>, loongson-kernel@lists.loongnix.cn,
 linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
 Yinbo Zhu <zhuyinbo@loongson.cn>, WANG Xuerui <git@xen0n.name>,
 loongarch@lists.linux.dev
References: <cover.1713837379.git.zhoubinbin@loongson.cn>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
In-Reply-To: <cover.1713837379.git.zhoubinbin@loongson.cn>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 23/04/2024 03:58, Binbin Zhou wrote:
> Hi all:
> 
> This patchset introduce the Loongson-2K0500 and Loongson-2K2000
> temperature sensors.
> 
> The temperature sensors of Loongson-2K series CPUs are similar, except
> that the temperature reading method of the Loongson-2K2000 is
> different.
> 
> Specifically, the temperature output register of the Loongson-2K2000 is
> defined in the chip configuration domain. We need to define it in dts
> and calculate it using different calculation methods.
> 
> Thanks.
> 
> ---

Applied, thanks

-- 
<http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog


