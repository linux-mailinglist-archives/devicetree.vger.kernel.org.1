Return-Path: <devicetree+bounces-189886-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D9A6AE9BF8
	for <lists+devicetree@lfdr.de>; Thu, 26 Jun 2025 12:56:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B47651C421E6
	for <lists+devicetree@lfdr.de>; Thu, 26 Jun 2025 10:57:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 31B1B26B773;
	Thu, 26 Jun 2025 10:56:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="UEYEKqWd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f175.google.com (mail-lj1-f175.google.com [209.85.208.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C14C26B974
	for <devicetree@vger.kernel.org>; Thu, 26 Jun 2025 10:56:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750935409; cv=none; b=flcdARo6WKRav0bPRlBzR1cYEvT4ohQLlNGaFtssZJlAlYD3k7ldvLXXntG+81lmBCpiRGbQa5aV13jef5dCXBQ0JCxINWEONr8TADbDn8lUMYZu8irlh+HrlmLk4hg/MqYtB5Nctpzik8wT7sfQGU5KoWGXOCoHmILKaJGxvTA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750935409; c=relaxed/simple;
	bh=unJVU3Xl3Wm7HDliPBmbf0uw3veqwlYT5BkTyANO19U=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=U0Q5+WKklOibt5oOzzZH0RbCMmSjIGoHGc8Eq/SH7SFRt6dPHdQTn9Earh1yBVV/5RhTArG4+AH0OSd94qWwEF9ejnPQFGwROKXBOVbmqDzOiQ14yE/bvQaMISW+/+uB5NZR4QkwyhP+5qzMmT65opQbcsrNvGtV8TfJQwYc6PY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=UEYEKqWd; arc=none smtp.client-ip=209.85.208.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f175.google.com with SMTP id 38308e7fff4ca-32b4eb13e8cso992841fa.1
        for <devicetree@vger.kernel.org>; Thu, 26 Jun 2025 03:56:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1750935405; x=1751540205; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=RrVEb7SOHXOjIaJsMr6PdsN8zJOeLk7RyAInvGFhJ0Q=;
        b=UEYEKqWdJJgWuMFvBOsD4Q6B/UfuBOrxO0TvlXtnGGFC2fcQgqtvwC5yuFviBretQI
         U5W6hcU9Lskj41m0iWJ59Supnxik4DeJ7Yb96UF9660zRiqfFTjIi0O+jJ0PCY6nq0pD
         J/g4icH0y+p3xlKTqlbS7Nbi0iUcL2jWtfhuBywdLqZF/sdVfVLKrLx3TA3ZG4vo4f4I
         Cn1evGDvVSE0KuJH33zrEmlYpEBQilUQj9ss6a11SUqfEZWnRFMppL4xEGMmBS+FIljU
         wOqop6o9/fznGMq5qtWhULatKz9lDHxXqpV40EZCM2CCkbbr8bUVHK6qORgAhmN6aNZV
         4S8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750935405; x=1751540205;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=RrVEb7SOHXOjIaJsMr6PdsN8zJOeLk7RyAInvGFhJ0Q=;
        b=UNniVwtmEV3FbnbC8Ssgp7CnbqcaaTyzSVFeP4A9VXo8x9ZHEVlGWD/0viU8/dVSkl
         2l8cpz2h2WyO3LYsKspITGkR072gKJ4V5NGEvfI6k0WWuY+Ht4ejuj02IUzW7ZfcMo3B
         8PjHRDFgqlOLnrCN6QeTG6qmjRwQ8O6Le+sQ1bU8rEA+SzGpf3oJ9rv42DKFojyJZKP1
         MMSEaVdtRS44NfvUcNfoszlvrg622m3R2gxPMWDNk1PPpX8F90P1Cc9t7JR2VOGenHqh
         NojCenHj65Uww+VtLIKYl9dgIwdrNET7cuTvwkR9bJj/3HWRJZX4iOy1hxeG7TJAmUQ8
         2Ggw==
X-Forwarded-Encrypted: i=1; AJvYcCXRVo3G5OK49GX7qVPm+O18OjkYT2iKVxaalGr7VocKqqai2/IaiAv+yxLraDWZMIt4JugoiM8wuIJj@vger.kernel.org
X-Gm-Message-State: AOJu0YwnE9JrZSmKmJyAABWLXhBGluX4NhMRwzsTd2Ki77XTcSe1uNt3
	jLApwXmOVsP52irjt3le3kirt32iB+D4lSEBxWmb5NNyREMvxPkSyW+PQQu0ezd9tOs=
X-Gm-Gg: ASbGnct83GFszVg9m6nxCrIQGfDRToE0Uq7ZZQm/HXOf3CSu510Ylxs1xaW6SJ7ZNN5
	hyN0anC8ARDbYIES5am/k3P7pvlMllvGiRhehrwC899yOYBKasxcuMueEyBeHijkA/QtzC9UKGp
	9kltfVlj/EATs5Y0adDUVIIFNNuxQaOnwJX0fTCFYea7SNa6xBdsChmvw7438Sgoei0AZN1qkkk
	A1WxB4PxWQUdNyoQFg96AsKu8xCnfjMFCqxry2LZunGpulWdu8QLwikZimpRjNlDv2/z9vQRZGd
	VQBWfUkN0nDGwsNM5O4+keAylLzNwJpZvWvE7atp8hClmbXW8xFHybQR7Jv1lldriieHLQokMsn
	Wzhke5B/V13eP2Z8sK7XyIpvUUHinJIzw6O1Si0Lf
X-Google-Smtp-Source: AGHT+IH57sZpqtFwHoa4JW0LInHA8kw3WhTt17SJ6Qp+hkH5OY5V3UsY/0SWnVUa5DXSYTbv462qjA==
X-Received: by 2002:a05:6512:234e:b0:554:f74e:9f0a with SMTP id 2adb3069b0e04-554fdd59ee7mr658062e87.14.1750935405424;
        Thu, 26 Jun 2025 03:56:45 -0700 (PDT)
Received: from [192.168.1.4] (88-112-131-206.elisa-laajakaista.fi. [88.112.131.206])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-553e41c2ef7sm2581675e87.144.2025.06.26.03.56.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Jun 2025 03:56:45 -0700 (PDT)
Message-ID: <c4fc49d5-e946-4526-9100-0e891c4a5e4c@linaro.org>
Date: Thu, 26 Jun 2025 13:56:44 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 2/4] media: qcom: camss: Add support for MSM8939
Content-Language: ru-RU
To: vincent.knecht@mailoo.org, Robert Foss <rfoss@kernel.org>,
 Todor Tomov <todor.too@gmail.com>,
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-kernel@vger.kernel.org, linux-media@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 =?UTF-8?Q?Andr=C3=A9_Apitzsch?= <git@apitzsch.eu>,
 phone-devel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht
References: <20250613-camss-8x39-vbif-v5-0-a002301a7730@mailoo.org>
 <20250613-camss-8x39-vbif-v5-2-a002301a7730@mailoo.org>
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <20250613-camss-8x39-vbif-v5-2-a002301a7730@mailoo.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hello Vincent.

On 6/13/25 12:33, Vincent Knecht via B4 Relay wrote:
> From: Vincent Knecht <vincent.knecht@mailoo.org>
> 
> The camera subsystem for the MSM8939 is the same as MSM8916 except with
> 3 CSID instead of 2, and some higher clock rates.
> 
> As a quirk, this SoC needs writing values to 2 VFE VBIF registers
> (see downstream msm8939-camera.dtsi vbif-{regs,settings} properties).
> This fixes black stripes across sensor and garbage in CSID TPG outputs.
> 
> Add support for the MSM8939 camera subsystem.
> 
> Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> Signed-off-by: Vincent Knecht <vincent.knecht@mailoo.org>

I would repeat my ask given previously:

https://lore.kernel.org/all/877a72fa-cdae-4a66-9991-5ea86ef76aac@linaro.org/

<snip>

>   
> +static const struct camss_resources msm8939_resources = {
> +	.version = CAMSS_8x39,
> +	.csiphy_res = csiphy_res_8x39,
> +	.csid_res = csid_res_8x39,
> +	.ispif_res = &ispif_res_8x39,
> +	.vfe_res = vfe_res_8x39,
> +	.csiphy_num = ARRAY_SIZE(csiphy_res_8x39),
> +	.csid_num = ARRAY_SIZE(csid_res_8x39),
> +	.vfe_num = ARRAY_SIZE(vfe_res_8x39),
> +	.link_entities = camss_link_entities

There shall be no more dragging of the .link_entities, it's gone
a bit more than 6 weeks ago.

https://lore.kernel.org/all/20250513142353.2572563-4-vladimir.zapolskiy@linaro.org/

> +};
> +

For sake of simplicty you may include that particular change preserving
all its tags into your MSM8939 changeset, it will help a maintainer
to resolve merge conflicts.

-- 
Best wishes,
Vladimir

