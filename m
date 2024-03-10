Return-Path: <devicetree+bounces-49732-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id CFC18877871
	for <lists+devicetree@lfdr.de>; Sun, 10 Mar 2024 21:26:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 456F01F21238
	for <lists+devicetree@lfdr.de>; Sun, 10 Mar 2024 20:26:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1BA9B3A1C9;
	Sun, 10 Mar 2024 20:25:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="OZLyaMJz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 239B83A1A1
	for <devicetree@vger.kernel.org>; Sun, 10 Mar 2024 20:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710102356; cv=none; b=R8scTu7JUKO6mZoz8Sjsa7Hnzxb2eJkWJvhjnKxfp1fLjx8SXN0X7WUJVAwIfC5Y+V2KZfRGHKPwdvRSHccRk3fJM7t57PjvHj0oJ4NLU0CjPUjAXIjHu7APA/PVQGMUSEZdcSuXrlZrnLYshEThSAwZSVokr8ZpvgI6W2Tez10=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710102356; c=relaxed/simple;
	bh=EYjGNNG8efHsMEdoHDZT6FK9wsbSPSnLAW4TfAbv0fA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=KsnRvuO8E6MVjNTjPwU+BtXqXjQ7E8wn3Ik3fdaY1iuDR/qzOmPyZD0uMIQCD/XNPgVGHb7YiFgpC9619Varfer4076cz0HPpsEqDuB6cPHbjQvKMk+5Gp+9kRQvC8c6/i90+bfCMgVi4PhMMEthoz9LH/Kv6OWgZBGqTGXsIOI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=OZLyaMJz; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-4131ad76f05so15504465e9.0
        for <devicetree@vger.kernel.org>; Sun, 10 Mar 2024 13:25:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1710102352; x=1710707152; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=EYjGNNG8efHsMEdoHDZT6FK9wsbSPSnLAW4TfAbv0fA=;
        b=OZLyaMJz8QX5LSj+DykDQ5tgRwsKFiSoK2qbzTyB0hlAuKsWIs6dBA9nphuVdtHF9y
         Gut2wx2yJOQBU4kqj41hu1Woc7alIHLYdn/9L449KRUIZ4mamB9D6IIIf+XGnUog3NSc
         APQppyQhVbha66s+IQnWUTNAZupEdVb+r/WLpiAlF9eo5U+5/Dhq9ub7c8VIkXOpluQz
         RUnyRop/FreEkWlblfRJGlWRO3tsyr/NdUWIfBc88E8Cq+tK+1OIiKke29u03GOo9q6U
         wTUb7/tqsquRujdtd8MfzV6fkxe2G5zk+uqhHxzpPR5oGJJgqvqahxUN+FmwTQmZMxVi
         sAJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710102352; x=1710707152;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=EYjGNNG8efHsMEdoHDZT6FK9wsbSPSnLAW4TfAbv0fA=;
        b=orh6hK1NnF6NEhDkv1k3t6+irA7uSai6C6I6+DrtLa+pphY3AhN1VNvEMor2r6xU/7
         bkfefjrAV8Uzm23v4hsfuEstWMd5YM5+Mfhj6Wg8ltRE+8zkfKGoxhEpXFCDkEIuHOHt
         YfyKRpEJOYnEYP0MuQqNpcwnOrhUn995xqZvsRTtRZ0R1bYPd39kZt9ergpDwhF7XjzQ
         XdT4admtJZobnSuSMAVNVtIejFUTRNIEGkbnDkZS/G9v7eCJKzNG2WBjhdGKsFLHvBTb
         FZFdZHLvJzoUewESyUtC3Kou0KHy1ptLaSVxPhWxUEXrGXNkmDKI3ACP1oHaeFOSsNpT
         kYeg==
X-Forwarded-Encrypted: i=1; AJvYcCX+JMzQxEf8f0TOigYvHtfuzCnAaPWRE6yAgG5nctbgUJiNs/f65NN6gD8qWOnPnJ0BgKertW3Dl2DXl7OXlX8938PpLNekVpPwnw==
X-Gm-Message-State: AOJu0YwnS+qTB3rFJXmp2OKxhmou33cqeszakgyXXw1OKnSIwh3wjH3T
	X403nVRuNSInEUdRCQzqwUqsPxwlQcG5qEEN8PMUC72KZ6AlCpIcwomS/hz7NpA=
X-Google-Smtp-Source: AGHT+IFGrgq6LscZC8VYgp6hL5B+n1n+xj7P5oW/LKOqa2kOw9GOFPl1TOg/HdruezS77OMunL1OZQ==
X-Received: by 2002:a05:600c:4515:b0:413:1319:a37 with SMTP id t21-20020a05600c451500b0041313190a37mr4485706wmo.41.1710102352225;
        Sun, 10 Mar 2024 13:25:52 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.222.97])
        by smtp.gmail.com with ESMTPSA id v9-20020a05600c470900b0041312e8ef2bsm6745898wmo.26.2024.03.10.13.25.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 10 Mar 2024 13:25:51 -0700 (PDT)
Message-ID: <ba834984-d0d7-4b46-81f6-5a2df8e74944@linaro.org>
Date: Sun, 10 Mar 2024 21:25:49 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5] dt-bindings: imx-pata: Convert to dtschema
Content-Language: en-US
To: Animesh Agarwal <animeshagarwal28@gmail.com>
Cc: Damien Le Moal <dlemoal@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 linux-ide@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20240310171958.96388-1-animeshagarwal28@gmail.com>
 <2b939f61-c8b9-4b41-a319-3bf7be42ba3e@linaro.org>
 <CAE3Oz82coV5RgcRE=Lj5mm2kjdzh3iFJGpMBBw_OfZppfWAHfg@mail.gmail.com>
 <d609c172-2bb3-479a-b5f2-841aed455bff@linaro.org>
 <CAE3Oz80zrnLvpo=YdBA-3PAtJFP8KK4LGHpEpQaMCacFFG13Qg@mail.gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <CAE3Oz80zrnLvpo=YdBA-3PAtJFP8KK4LGHpEpQaMCacFFG13Qg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 10/03/2024 18:51, Animesh Agarwal wrote:
> On Sun, Mar 10, 2024 at 11:08 PM Krzysztof Kozlowski
> <krzysztof.kozlowski@linaro.org> wrote:
>> I did not say about subject, but about commit message.
> Ok, I'll add commit message above the change log.

What changelog? Read carefully what I asked you few versions ago:

"Please explain the differences done during conversion in the commit
msg. There was no imx51 compatible in the binding before."


The differences from conversion. There was some binding in TXT and you
convert to different format. You introduce changes beyond pure
conversion, so this must be explained. Again: explain what changes are
you making *to the binding*, which are not pure conversion, and why you
are making them.

Best regards,
Krzysztof


