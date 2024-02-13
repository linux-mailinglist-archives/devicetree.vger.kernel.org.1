Return-Path: <devicetree+bounces-41279-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 0623F852FE2
	for <lists+devicetree@lfdr.de>; Tue, 13 Feb 2024 12:52:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6EFA91F2122F
	for <lists+devicetree@lfdr.de>; Tue, 13 Feb 2024 11:52:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 28F01383B4;
	Tue, 13 Feb 2024 11:52:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="I03ADmPr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CCB43B79E
	for <devicetree@vger.kernel.org>; Tue, 13 Feb 2024 11:52:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707825149; cv=none; b=LEVzTaewzyISr5paGCsdNwH1YiyFn8nUW8CchjIvkFxD244bc9sOyZlf0Nn+IluRzVVCr9VjEHdTjoFsM4dntTAfRolnqhZIfZsGASHeQd2Rtmp1hE87j3xVpnSjww3h4kV9aVha6gALlx0eCmf2lNsDwIRvet/6BTxeocVpk5Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707825149; c=relaxed/simple;
	bh=Ebh4tdcvcJhtr8M+f0pcD8eSMkT1STjJ1vOCICY0ll4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ccSjMyuf5/FgfSSdQmBqVSkEwsdDeFl5K4Bf3eyinDJTX5i6ZhJN0cBDgPqpP4RYQU4Z4kp9ouRoVHgvJ49OxdgjYnd5Q0TtJZRnUDaH6oSxu9zE8SAbrODP+VopIiChH16yQxSu5GncUBHJpEK6aeY1E8A3M0Nru5YuTunfvlQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=I03ADmPr; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-410db155e57so13466885e9.1
        for <devicetree@vger.kernel.org>; Tue, 13 Feb 2024 03:52:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707825144; x=1708429944; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=5d3Z/NF6a7ZPQfF9qbF966oZ0kG4Ex+JXd6p8X8s4Fo=;
        b=I03ADmPrZaZM6Spkb1DebKOrpDR2m/nz6ds9KLsNtYYiMWL7wSbKsJianspAM9Z7QU
         L/TRZlzKYy2orM5ngHu2HpRSKIRW6tMvSZI4/2iy76nmuH4HBC0tr7P7iyMJ7bCBZasz
         Qt9GI8uYRD+E5IFrutAAf5xXxOKMYEZq2dkuefD0PeXsIyTjCIdfWn5xkfkvBaahXDd4
         hllEb4SPgd/WXtUgivvxYHHcqs0UUZOJoabi5uvXu/kskkbH5e7pv0MIOqbmtxxSbHki
         jBkokuMtgaByUb4tSbIw8sVg7lLw7CaptSxqxehoDzCoQg3L6E3aHofqezzp9yTsYeGc
         V9Ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707825144; x=1708429944;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=5d3Z/NF6a7ZPQfF9qbF966oZ0kG4Ex+JXd6p8X8s4Fo=;
        b=ln8PWsJTeTgQpM3Cyw/qE+YdktBhYrMmp7JWitaf5CvE/dYhMyBAd5GrkH4TlY1eNN
         YK84NN38V6AWJlcVyn5Dl3eQuTJQSjAEsh0HD29SqAJV6ZDGgOca9sbn1V0eUX+t1izC
         ffr9FTFNhlEoEuxznTqMOK1EvQz5/yvbaogr3wrFJXely1n26KcBEKDRTxDRWXRRGRXF
         PiAygVByZ/BEMecnuBSOXwUmTRUcfQuVtbpXfyMwPvMrmOB1pW2O880y99//+wVi9ulA
         gU/BgQMp7bucJmjgw4dLKVOsBGg4gY/Z5jT8dWDPXI37/rNdh+XBDhXAlknltlabIEiD
         Fe4Q==
X-Gm-Message-State: AOJu0YygOVDuYpWpozguXq5T0DztZk2GSYVbf6o7ktBFf6HznkPsEZg3
	YY8r24jhcPlXIL2ShJNiPS1XposbSJO12QJq79tTewGr1eu/bq4aWfPuXzeOhn0=
X-Google-Smtp-Source: AGHT+IH1dvPhAF1Xt3/TWhNxmonPxt9a1r+G7hgR3bKZsuaAkpwAgTvfN0Kf34ArTknAa1l9pZSQGQ==
X-Received: by 2002:a05:600c:3503:b0:40f:ddc8:f804 with SMTP id h3-20020a05600c350300b0040fddc8f804mr8193229wmq.17.1707825144512;
        Tue, 13 Feb 2024 03:52:24 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCXChUvc/75NNUW6EN33sG4iwtLsk0ZiYXD+6BjO/sA3gZr7XERA51BtWD3sdapR0sVAMGwjRBdj4KcByp8Hvs1m3jxQ+vLLzRvwVFH41SPlDUK2Q5AEfEl4e7dEledSTM5bUrRfHyhL6rbqC2I0kfWhgmy08M5Mky0bkg8nj7glhBfyc2h3V0Ik1ZMLpd56EVVEzNES8qvYNTux0ZHclFJeEbgdbBWPg0aM5Du2IzmmXp12mfvMlQuoN280U0RFKiv6tMYO8ZBqumuKsjyxifh+etP9YYLrCR0tgOUjB0qf6c76kkgTJu1gTcH40dSMBgj/fjfxnr7XO7DSHcyMqs6O69eSvws/MBkRuGnuokUl435sHPLr+P50N6DbmPC4NWFPW1xJ2GaGTQyEDSlaAbik9hmUXyGcCh7Efn4tSbRQJCF66HtY7oThePcwIpzwNi/NgeiiPIUMPfLqsRQWTYW5lQM7vBt50MTdEvCQpgfduW3rLjsQw18MFwiV+d6rm09g0KjXnoKMyEbV8fL6wCPTWADgo0COCY0/cAQNYfnmZdtWL5l8sva7LJJCQNTrtQf1FQh7O1LPgacYtwyEOR3Te8z3antuM8HcH4GS64Bh
Received: from [192.168.1.20] ([178.197.223.6])
        by smtp.gmail.com with ESMTPSA id ce9-20020a5d5e09000000b0033cddadde6esm1090631wrb.80.2024.02.13.03.52.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Feb 2024 03:52:24 -0800 (PST)
Message-ID: <b1653331-2ccf-4d0b-bc1d-a5b39e6d9a9a@linaro.org>
Date: Tue, 13 Feb 2024 12:52:22 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 6/7] dt-bindings: arm: rockchip: Add Powkiddy RGB10MAX3
Content-Language: en-US
To: Chris Morgan <macroalpha82@gmail.com>, linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
 tzimmermann@suse.de, mripard@kernel.org, maarten.lankhorst@linux.intel.com,
 daniel@ffwll.ch, airlied@gmail.com, sam@ravnborg.org,
 quic_jesszhan@quicinc.com, neil.armstrong@linaro.org, megi@xff.cz,
 kernel@puri.sm, agx@sigxcpu.org, heiko@sntech.de, conor+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
 Chris Morgan <macromorgan@hotmail.com>
References: <20240212184950.52210-1-macroalpha82@gmail.com>
 <20240212184950.52210-7-macroalpha82@gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20240212184950.52210-7-macroalpha82@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 12/02/2024 19:49, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> The Powkiddy RGB10MAX3 is a handheld gaming device made by Powkiddy and
> powered by the Rockchip RK3566 SoC.
> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> ---

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


