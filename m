Return-Path: <devicetree+bounces-65006-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 24E098BC006
	for <lists+devicetree@lfdr.de>; Sun,  5 May 2024 12:23:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4764B1C20C82
	for <lists+devicetree@lfdr.de>; Sun,  5 May 2024 10:23:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9A5C0CA7A;
	Sun,  5 May 2024 10:23:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="swtg70tW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D48E79D8
	for <devicetree@vger.kernel.org>; Sun,  5 May 2024 10:23:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714904615; cv=none; b=tb/ZjToqBbdjDhqTlHXkX39wAF6Ls1P+/4PkUJIwmeI7Uq8hKZZr3xiJURZ10JkJC5WPa37m4O1WIMV1VEJum1Pl9D+lRBfYx+eXch5+4PpyMP6kKZ+krWzwr6/ndhARPTxTUCuOpnSp6RI2SDaEHjWvAnhjJPBIUzAdlZRjmJA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714904615; c=relaxed/simple;
	bh=FS4Q8oZSY5wWF9QVF8HBQN8KSr/cHh2uGVXPASjvb0s=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=A8fV5kgfUXdD/w7ULzehsR4TjehKAxScfI4E+S0eRH5pN1pMjeiE6THwV7ZV5q13ZstOvoMR2ZuyLBjwpwJPc4w5yUKyDiph/J7hiVpUzEYRUFA/0nBnJk+k80Wa3GoBRgYyOE/vKqbs/UoIo4OgSWx6QS1rUHSOOr+Bke2RtTc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=swtg70tW; arc=none smtp.client-ip=209.85.218.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-a5200afe39eso237410966b.1
        for <devicetree@vger.kernel.org>; Sun, 05 May 2024 03:23:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1714904611; x=1715509411; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=G+VqfS0gaJPl0mFJeInohOEm9mx45ofqXd3qqexPO1s=;
        b=swtg70tWJZXv/hsnbLbXvsMJWqm5hjtr7wibujGMM5wZvKz8IIs3aGhLOBS7uXMW0i
         J6tp8uwWMEmdZ2iqBTzel76bMRT6rUZHoIrQQfkf/DKpM9g9zo4Ih1P2yM+HGGJOILCB
         uapOT55zpoYEDCk1hzhROQMlTj9RiLM51tWp3dV5H16l8dLGkLb3rOWyeTtHomwdCvmh
         4ZZJvKuzY+S46XwynhaTlu5+fJ083fHs5S5wkjoiel9YUxjrusThsECAfqyE48qqBGBP
         Fowa0FrrV/7oOwuBczrMTpv8sWEMbSTS4qtegEyiTFEvii7ZlXFP7ZlXUNqN2xiP/p+u
         F59Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714904611; x=1715509411;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=G+VqfS0gaJPl0mFJeInohOEm9mx45ofqXd3qqexPO1s=;
        b=Ytxr7RSMPr5ZS8s+d71FjjyQFMVnej12xHEJPSWfS0BoAM7h7J4MpQQWSHfK+k25gv
         2Xftz54zUqwTLXNh0+EkpjPWywULmP8ckTv05D0UHV7iq0JhTzWOnDU3RNhPcYeAAR/a
         Jcmj/Gcg+vAFiKAz9rNPi//ZYjwqFAt3UjS60zG87w6b6rmNjbRcXn3ZsHNGoIMdOP0M
         e8DlDu8ScgxqBytut+psNP6x8MgfzvFykXrqHNLXXY5AnEA8VY23UvfZ+wXuomQx4rEU
         O8EkpLOYqEKPRV05FL1CvgW3OxootW6vaZxVkQfR9mANx4eNMW4SKrhMSLGmBqh6P4T7
         1w5A==
X-Forwarded-Encrypted: i=1; AJvYcCVUuHj2479ctp/AXx2jRHy6MdgtGttGHUFPk+iMz4KPj/rQFSbJ9M1M9ek/U55Ip5i6iPLziusjPVSQID25AHV92r1qhudrAc5wZQ==
X-Gm-Message-State: AOJu0YxWyRemab8hjEkNUZWP8VRyTGn3+dJzJ9IKT4CGVUYqIJgE8STw
	IVlbW4TbNQihIy47KZqVM8m+hVQnx1VRj7YZxGTced66YSLQlMcmU+NnTsiud6Q=
X-Google-Smtp-Source: AGHT+IGfhzp4LBo/uTi8W9H8sz2Pdqd56qw6vaePUhEJdWURAFpghf9NUiGKyhyRCYt8B0l6aXIV2A==
X-Received: by 2002:a50:f689:0:b0:572:4e6b:958 with SMTP id d9-20020a50f689000000b005724e6b0958mr6792259edn.2.1714904611325;
        Sun, 05 May 2024 03:23:31 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.223.16])
        by smtp.gmail.com with ESMTPSA id l20-20020aa7cad4000000b00572e91cf988sm1103013edt.93.2024.05.05.03.23.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 05 May 2024 03:23:30 -0700 (PDT)
Message-ID: <10c9c895-d877-4aaf-89c4-79d53b00fe50@linaro.org>
Date: Sun, 5 May 2024 12:23:28 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/2] dt-bindings: media: i2c: add galaxycore,gc2145 DVP
 bus support
To: Andrey Skvortsov <andrej.skvortzov@gmail.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Alain Volmat <alain.volmat@foss.st.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, =?UTF-8?Q?Ond=C5=99ej_Jirman?= <megi@xff.cz>,
 Pavel Machek <pavel@ucw.cz>, Arnaud Ferraris <arnaud.ferraris@collabora.com>
References: <20240504164115.64603-1-andrej.skvortzov@gmail.com>
 <20240504164115.64603-2-andrej.skvortzov@gmail.com>
 <2d96a3d4-c361-4aac-b97f-0d408d39ae45@linaro.org>
 <ZjdLohzrTA80sE8M@skv.local>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Language: en-US
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <ZjdLohzrTA80sE8M@skv.local>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 05/05/2024 11:04, Andrey Skvortsov wrote:
> Hi Krzysztof,
> 
> On 24-05-05 10:20, Krzysztof Kozlowski wrote:
>> On 04/05/2024 18:41, Andrey Skvortsov wrote:
>>> Signed-off-by: Andrey Skvortsov <andrej.skvortzov@gmail.com>
>>> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>>
>> Not true. I never acked patch with empty commit and such content.
>>
> Sorry about that. You've acked v1, so I've kept it. I'll remove it in
> v4.

I acked entirely different version. It had even commit msg. Empty commit
would have never been acked.

> 
>> Drop fake tag and send new version with proper commit msg and proper
>> changelog under ---.
> There is changelog in cover letter. Should I include corresponding changelog in each
> patch as well?

It's fine there although nothing explains why you did these changes or
why commit msg is gone.

Best regards,
Krzysztof


