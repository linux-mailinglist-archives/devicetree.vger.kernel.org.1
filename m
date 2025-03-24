Return-Path: <devicetree+bounces-160135-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id D094FA6D931
	for <lists+devicetree@lfdr.de>; Mon, 24 Mar 2025 12:34:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C6819166B38
	for <lists+devicetree@lfdr.de>; Mon, 24 Mar 2025 11:33:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B270C25E467;
	Mon, 24 Mar 2025 11:33:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Rk+6Q2Yy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AEA8D25E463
	for <devicetree@vger.kernel.org>; Mon, 24 Mar 2025 11:33:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742816009; cv=none; b=LeAgn7zoWZmnQW+ywMqSuXU82PgYLhkS/7giNb5nXHjXDA/bslMdJtlJKNb1T6cItRvzpMtG5vpZUlHwgdxC01wlnXsQpmoRBoxmzO8omwEMznK+rGbsD0R1dQdzxjK36HfNbgULTyPaUkYV+sxE8WKgHT8oUSq1Lrr66v2ln+U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742816009; c=relaxed/simple;
	bh=0QhCQHHqNirjdYBN4QdEl9+nTA8hPopgI9hEFzjoWzs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Mmoc34smy0ICey0wSxE1ykP27LqXA/vgDODSWurVlDvy9FC+72d+frEpcpGNqMDT7BA3Lq3Bs9qyb3wDn07YHwz8XmncnAQu+WWMc95yAC4paSjAGDozjXGlRxzlO8SWUV4IO2jN74G6Xq+xwE7PqoAxdMRSAkAoBpGmr5ZsYcw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Rk+6Q2Yy; arc=none smtp.client-ip=209.85.221.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-39149bccb69so3842730f8f.2
        for <devicetree@vger.kernel.org>; Mon, 24 Mar 2025 04:33:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1742816006; x=1743420806; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=RZaqAclEJIkWjFVuVskTZM+5u6eA26Yq4IN8pnm0qc8=;
        b=Rk+6Q2YyZ5mwJEAB4v6YJLWozKyNqVLumD0a1sxc+G6Cqz6C32Zzk//+/wp9wD87qj
         hp1Xk4Ucd67hLMhFK8M+R8Agh9rMNGJTvTlsJ2yWRllyO0w+4zPbPgy4FJ2WoVQ0W1n5
         Mg87q6iSV1oPEM0+fdGq05TPo9jQBiJh50z+Pgd4V2qq1VFc/VamwWwkMbXIy+DBZyyO
         8W9/xL/9UR8rudXN7oJ+wGtZKdrH0VOY896sXrbN3pYDkJ+wNN9LIUUY2Rhw8jIzg0Jr
         t1mUBVhn11HpaD5wAcHSVk4VAL0Ru3Nf3LR21NrJ/OVhfL8OB3DgDBvhOBBdKvjrG+zG
         /AcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742816006; x=1743420806;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=RZaqAclEJIkWjFVuVskTZM+5u6eA26Yq4IN8pnm0qc8=;
        b=Um7+TCs4CpzCAElxqEhTsOLnbTuw0Y0jfBgnkjpQQSq/8Eq2Uuj1hNX7Prbh5mFFTa
         uIKVSLI6SeQ9E7wvAqgzhFuw1jQh0YtnMGpc478Wt65lDR6QV5EE40m6JgiDfS4rKrj3
         DVAJdm4hCu95Oafc5u0fEHtVWefcY8je/ARSEp2/8IeDlReoZNkjMMjWZ2Famp6vqJVk
         IaWwYSsKQvHWfTKFFZHVEGclLQpwyFg67avT20U6WCMIinkwV3ogE2EVArPnWRnqtw5M
         ghg1SeRApzthsVI7CDfPFhpkhSoBWjgMh3ecAqrGluB360BlTFirtmYkBelZFF560BbP
         3Xwg==
X-Forwarded-Encrypted: i=1; AJvYcCXGP3VJYvcxSadSNl0tgs6leNDI//arDApxLoE1XzbSFfdIlbrzXrB3Vv2HoBQB2UElmdAnxprosK7U@vger.kernel.org
X-Gm-Message-State: AOJu0YwoiIqQSaKbrQPdMcjJX4zSz8wDcECzShYOMGrlhvbzwgjlyj9s
	k9eU23TMPO9wX7JUcTO5dwHBFmghK/xfAlTFYhlLWbY833eRblXrQlYuEc9JqUo=
X-Gm-Gg: ASbGncsWhv9WIrCGQ9hGBgF7W1JYsbzoN+tuNuITgMyvtvoVSYPt+po3V4IGzLfDqr0
	nylfAMKYpfow/K5snyucbNqW2bA3u81myk4kfIGaLKtGwJWCwEgpUMqV6wwsU6XajD9aHhz7wXd
	YrlJ8IPR0B8m0Y6i7TmPliurbyAr59Q9ffPn3d/ehe/g7uRvkQ3SFEOSlUDpslhWaJt1rBAyKdv
	2GndZ0bD52ZwzTxq8mI4QpWngwGB6CqmPw3/VBagQ5QPIJwtlsldBHI9K4BywJqZt5JzwKrdj7b
	dbF9YXg7sFocSn95S/81gS4f5WOlNmPTNn4Wyuz7SQDLSapIZ9U4NpOGMm4EuRY=
X-Google-Smtp-Source: AGHT+IFSfs1o8ReuKsDzD9hr5+CF5RuqGwYnwXccjml/f40pB4QQMqmLEg2EktW6960K8d3RhxZUkA==
X-Received: by 2002:a05:6000:186b:b0:391:3768:f448 with SMTP id ffacd0b85a97d-3997f941b0fmr9625633f8f.49.1742816005906;
        Mon, 24 Mar 2025 04:33:25 -0700 (PDT)
Received: from [192.168.68.117] ([5.133.47.210])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-3997f9b517csm10918673f8f.51.2025.03.24.04.33.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Mar 2025 04:33:25 -0700 (PDT)
Message-ID: <4256f8ab-d975-4f5d-8762-50d301ce4dcd@linaro.org>
Date: Mon, 24 Mar 2025 11:33:24 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 4/6] ASoC: dt-bindings: wcd93xx: add bindings for audio
 mux controlling hp
To: Krzysztof Kozlowski <krzk@kernel.org>, peda@axentia.se,
 broonie@kernel.org, andersson@kernel.org, krzk+dt@kernel.org
Cc: ivprusov@salutedevices.com, luca.ceresoli@bootlin.com,
 zhoubinbin@loongson.cn, paulha@opensource.cirrus.com, lgirdwood@gmail.com,
 robh@kernel.org, conor+dt@kernel.org, konradybcio@kernel.org,
 perex@perex.cz, tiwai@suse.com, dmitry.baryshkov@oss.qualcomm.com,
 linux-sound@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 johan+linaro@kernel.org, Christopher Obbard <christopher.obbard@linaro.org>
References: <20250324110606.32001-1-srinivas.kandagatla@linaro.org>
 <20250324110606.32001-5-srinivas.kandagatla@linaro.org>
 <201dc2a7-e031-47d7-9c17-c4275365b477@kernel.org>
Content-Language: en-US
From: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
In-Reply-To: <201dc2a7-e031-47d7-9c17-c4275365b477@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 24/03/2025 11:18, Krzysztof Kozlowski wrote:
> On 24/03/2025 12:06, srinivas.kandagatla@linaro.org wrote:
>> From: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
>>
>> On some platforms to minimise pop and click during switching between
>> CTIA and OMTP headset an additional HiFi mux is used. Most common
>> case is that this switch is switched on by default, but on some
>> platforms this needs a regulator enable.
>>
>> Move to using mux-controls so that both the gpio and regulators can be
>> driven correctly, rather than adding regulator handing in the codec.
>>
>> This patch adds required bindings to add such mux controls.
>>
>> Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
>> Tested-by: Christopher Obbard <christopher.obbard@linaro.org>
> 
> I claim you cannot test a binding in the way we understand Tested-by
> tags. Testing a binding is part of the build process and we do not have
> tested-by for builds...

I see your point, Normally if the tested by is given to series Its 
applied to all the patches in that series, I guess even b4 does that.

Will make a note of this next time and not add tested by to bindings.



Thanks,
Srini

> 
> Anyway,
> 
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> 
> Best regards,
> Krzysztof

