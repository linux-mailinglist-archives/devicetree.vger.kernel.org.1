Return-Path: <devicetree+bounces-53455-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 3334288C555
	for <lists+devicetree@lfdr.de>; Tue, 26 Mar 2024 15:39:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id A9F74B24385
	for <lists+devicetree@lfdr.de>; Tue, 26 Mar 2024 14:39:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 362F413C3E5;
	Tue, 26 Mar 2024 14:39:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="mmJDdAEm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F80613C3DA
	for <devicetree@vger.kernel.org>; Tue, 26 Mar 2024 14:39:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711463973; cv=none; b=db4VrX/TPXezLma4GkY2XOh7W2U5xteM1Syd49ANMde0LAo9csCOJm1gM0xb/djL8CSa8Pbiq9utcuudFD5DkmYf1dL24xz+tkQP6rqKTt1kEH2mX1l/ajMbi2gUgGN4IPCYsyLKNeuPu/4jgUA865wXf0dZdlKpzSiTsbDnJnE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711463973; c=relaxed/simple;
	bh=PVCqUI2IthMT8jtHUQFgN0wk4nd/zHp6x9pGlyM8wjg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=GL1+fAWZBTK8q1hjtnLYpyaI5J7yGIjC/pCDOlRb9g16l27tiNpOWT1u5e+k1Jn6ppxz/m6s7k9j0fe9MdWgM+vxPhwYw5775VyPy8oCJ2lAGvWoJMTLTBGRRSHfu1srbDtl6FC15eYkXLQKtvB0FRIIe/3Mu5NVflnHu+WD9TE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=mmJDdAEm; arc=none smtp.client-ip=209.85.221.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-341cf28e055so1475909f8f.0
        for <devicetree@vger.kernel.org>; Tue, 26 Mar 2024 07:39:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1711463970; x=1712068770; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=cfqyT8DykVWS2FVT06Lc/GB2ETA54ZjApWkcdYSEHgE=;
        b=mmJDdAEmdcbg0XZ0wVIXC76s8wLBrcmWLcyW2MIbty/FPvCRK9LP7CJjR938Ihj7a8
         hwJUY+skNoWBMpMf7kcKKYzZSbfO2Y3u+/UW8XeMpjIVuro0BOAHuYI7ifNGRzvGaXPW
         m2MF339XVJV1sIk5JSmTJA/VdVMmN15NutP3SlOhqjFfFDC11WSPobqNmFntqtCBO5v/
         fRxmaFcks0hg/5B++kL47PfE14q41OfIvIFnqZRokCX8a1WL11e1UMJ/X1/++hwwFdSb
         09hChma3FRfpKFg3P6RRd4WgLFD1dm+oWkFR7M6jp/rMVqxUK+tmS0jPpEWikb05eSy/
         Pcaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711463970; x=1712068770;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=cfqyT8DykVWS2FVT06Lc/GB2ETA54ZjApWkcdYSEHgE=;
        b=IgIOONAPv6iS+Fzd8JY/gBHY6ph5aXRMhFGK2tPtpHWyUbaYNURkBDBvTwthDHCX85
         yXDcNNREcFHQ5TBahd1/MLpZUEW/RWvxdHCMZWW82nb/b6f5b+5LpyH7br6AYYpIyeVR
         tVWIa7Ii7dSwKu0NCtY2j4ryZifri7eUeyGP7WFCRaCyhcIShX6YmIYVZcScP5nlPAOu
         e+k3vWk1IONDpNKcQ5SLFTqK4K//zvi3vKDK5XQpwqgr0Bihct4ujqzu6Ld4onmy140m
         t+SBVTsMSJEwWZ+XzXiYDvzE1IJ7U1KZXmC825JUmL/bEjulcFp2+8s8De09SLfhKW82
         Vs1g==
X-Forwarded-Encrypted: i=1; AJvYcCXh1S+OhZnX8QMdZH8/aLs8PZjTiqq5ieqK1yPeKXHZOmY6w1TazykgkXrwtf5IdU6OSdyIAdrgKnZNrwLuJ2c0Z1PvES6oJhAfCg==
X-Gm-Message-State: AOJu0Yzu7h7Et7cCJAaoKIK6wy2SROQTRdO5MQ+nlIdJewCeSkIug0hu
	Vtc+/Y+zrgymr3lAX1xlKE5mx+TsyafFXoQA2iWno8bFWLb7T0RE67hMXP5p7xQ=
X-Google-Smtp-Source: AGHT+IFMbpIbW88EA8mOGps+QLuXd1FMyYQpvKzji8LKbQ9tVeTRAt7QVs0I2203R8pDGu9n+TxvwA==
X-Received: by 2002:a5d:42c3:0:b0:33e:7650:1297 with SMTP id t3-20020a5d42c3000000b0033e76501297mr7274848wrr.6.1711463969712;
        Tue, 26 Mar 2024 07:39:29 -0700 (PDT)
Received: from [192.168.2.107] ([79.115.63.252])
        by smtp.gmail.com with ESMTPSA id bo4-20020a056000068400b00341b749ab8bsm10004692wrb.69.2024.03.26.07.39.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 26 Mar 2024 07:39:29 -0700 (PDT)
Message-ID: <b80134a2-99b8-489e-860e-7ddb2bda576a@linaro.org>
Date: Tue, 26 Mar 2024 14:39:27 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/4] arm64: dts: exynos: gs101: order pinctrl-* props
 alphabetically
Content-Language: en-US
To: =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>,
 peter.griffin@linaro.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org
Cc: alim.akhtar@samsung.com, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, willmcvicker@google.com,
 kernel-team@android.com
References: <20240326103620.298298-1-tudor.ambarus@linaro.org>
 <20240326103620.298298-3-tudor.ambarus@linaro.org>
 <9f2c715e671de0c083355bfbece703936e14045a.camel@linaro.org>
From: Tudor Ambarus <tudor.ambarus@linaro.org>
In-Reply-To: <9f2c715e671de0c083355bfbece703936e14045a.camel@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit



On 3/26/24 11:13, André Draszik wrote:
> Hi Tudor,
> 
> On Tue, 2024-03-26 at 10:36 +0000, Tudor Ambarus wrote:
>> Reverse pinctrl-* lines, first pinctrl-0 then pinctrl-names. Move the
>> pinctrl-* properties after clocks so that we keep alphabetic order and
>> align with the other similar definitions.
> 
> Krzysztof had requested to change not just the DTSI but all instances for GS101
> here:
> https://lore.kernel.org/all/98810c49-38e6-4402-bd47-05d8cbc99ef3@linaro.org/
> 

ah, yes, makes sense. I saw you had your own patch doing the reverse,
I'll take yours and rebase on top.

