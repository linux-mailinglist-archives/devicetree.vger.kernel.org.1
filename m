Return-Path: <devicetree+bounces-214229-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E3169B48740
	for <lists+devicetree@lfdr.de>; Mon,  8 Sep 2025 10:33:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 97425164C8D
	for <lists+devicetree@lfdr.de>; Mon,  8 Sep 2025 08:33:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 255F71CAB3;
	Mon,  8 Sep 2025 08:33:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ORT7pil0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70BC954262
	for <devicetree@vger.kernel.org>; Mon,  8 Sep 2025 08:33:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757320400; cv=none; b=OxCpHPCi6UlozsdcePCgAvDz6bUWJjxV81Y6/uI5prqHZzPSBp8C85PRM2XK8eKJLJRMawzX1U8dWzJqTf89gkQGLjr2eXmcxgToOx1RQXBaOspwz4nsHqhKzBYalD7WKxue+1soOs/6qaGyTU/KlxP3I9uMmoDKTs3vtqSuAVs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757320400; c=relaxed/simple;
	bh=Z7S/1aekr1neAh4VHiWsp7E7Xdz6qSbaNR17Ap2tBPg=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=ZhYsGlPNLBT9lAlcOxSdp3316LhCb6/wLoQGCgRj1aVVwRD/XIuVhxtKU1XFP9eKW5w5vS9Ou85R/OUvNd0tHmcnGbEePKZSUy5njtwfEKiSsH4iozQx49DhPL05JXgZ5RIsqYqQYoWAX1CZDd6kQrxVUdrb5GvHekV+P2Yf8wk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ORT7pil0; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-45ddfe0b66dso2755345e9.3
        for <devicetree@vger.kernel.org>; Mon, 08 Sep 2025 01:33:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1757320397; x=1757925197; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=OnheC95OnlOK53+zTXpXKRnAp4x3wTw5BQINyn47l04=;
        b=ORT7pil0A2ciNThVKRPSB2trLIdRqNtDFnnWTm0q2GJemtCSiJlXTAtfHgAcJXcFJ/
         dN6ShDSaWcm6mkMYGQeiwaW001V35MEZ8TS4lswzyMH8jqX4rBKN73dhOt12PsUQcEVD
         4jy7DnYbfJymHv54Y0sguWlBKv/4DDfA7sHojNjZC5CM3zlO9dKX6oRl/lkF8KK533JP
         AX6zTKeuSUFFaSHZ6iH+v3EyBDaY1eBXXcexe8Omr4Om6dLVHKqTN4mxWOi9skzCMseu
         HpObGOmd3YS+V1I5JkcGuPTQCSK33bxXQZf6FJ351lXIjvboOhrTTE6li30ZAsPt5x2I
         AScA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757320397; x=1757925197;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=OnheC95OnlOK53+zTXpXKRnAp4x3wTw5BQINyn47l04=;
        b=Jqy8qOk2EMfjWMamuRW5cazAxKDV67TOYajy4Fl+TcBM42j/B7IXlw8uhQ/fBuzOi7
         tDfnGM5XaHkTlWqmh8GkYxDMges2O/YgGGHfDFUDv0CtUcfioY5OfBOWUHTMSKQ5Zsoe
         QfDtlRfBw8+AY3Dk9nRzV8JvL7u4G+E7XH+7TxDDI9czHTB40jDu3V/DSG8c1D6kEvQ/
         2c0iHB5ATVnFKmWspN8GEibTzt6kK1no0bJ0i+xQVQFTZYlq1l6LS3vPe6D1MuiUOv0V
         C/uSPw/i2Ks3BGAIiCWw5OPruTY4b7sRDsSc6BHumdQKLQ4dxfu3eZgiHy59XYHKJnLl
         XdgA==
X-Forwarded-Encrypted: i=1; AJvYcCVp2vDxaG7Ut77pDgES6hK4VU0zO1PNDwrRV1PLRw5G51zVnjyKyn7GvcrUR/5RqdfACbH88k0yzHDN@vger.kernel.org
X-Gm-Message-State: AOJu0Ywq14B1kgdtzODa64+PxR6eGg69KTyoAraMOdzaL1l9ml0SnToo
	e04+rbLZ5481iGXmejOkgP+kc3YXfcwQVzLgtSwaWyDDBNTTUZfbXEc2d4nRhT1tB1H7xh7gLEn
	TumD7
X-Gm-Gg: ASbGnctNrg/GbATfMtuky1BpEdm5XpokjGV07A3ZA59+lvzwp6mu+3ijrSM1BcOB2oc
	R04waeRl3clj0i2VBJvrnTrdhm5BpvDy6ojU9IJae8Mt7ih6bCDY0Tuvw7dqM+zyu4gvyEXzbmn
	xRsTcelvd8nmF5dxczsEarf05UnStC/gJ9RQ1MIy1MA9ukoVOiVrOy3ZbA/poIoZXuKHkegwAJg
	vbXHuQVEeIAnbhp0QaMDfjlH2PHoOpMsVY2ZxKiNfWXlktX7AqrWbmU7KTwNupqEpsiXTq9MQF3
	NN1V05xKbvU898IfBdxKs66p7K7pLCjlnms46ElHRbIASP4YJXUCYJpQTKPj+SkdsoSl8832dnX
	E0rkOBxZPuAwAXjpc4jisiYGlSe4ZJkmNGTIOYp0FD7c=
X-Google-Smtp-Source: AGHT+IF3IHsUtnMOb2fNM3kMxfaLehZjxi1GSv7m3gsG/U/1y0GT/M9yaGFm21AR1MEaf6IaBggJsA==
X-Received: by 2002:a05:600c:8b0d:b0:45d:dbf0:4826 with SMTP id 5b1f17b1804b1-45dddee3af1mr26294325e9.6.1757320396822;
        Mon, 08 Sep 2025 01:33:16 -0700 (PDT)
Received: from [192.168.1.29] ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45dda6da5casm129753735e9.7.2025.09.08.01.33.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 08 Sep 2025 01:33:16 -0700 (PDT)
Message-ID: <b266b190-1c6b-4899-85bc-d3e4083410b5@linaro.org>
Date: Mon, 8 Sep 2025 10:33:14 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: sm8750-mtp: Enable PMIC RTC
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250905095353.150100-2-krzysztof.kozlowski@linaro.org>
 <a54442d0-a22e-42f9-889c-4bec128b3b58@oss.qualcomm.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Language: en-US
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 2+47PN9NZAOyb771QoVr8A==
In-Reply-To: <a54442d0-a22e-42f9-889c-4bec128b3b58@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 05/09/2025 14:28, Konrad Dybcio wrote:
> On 9/5/25 11:53 AM, Krzysztof Kozlowski wrote:
>> Enable the Real Time Clock on PMK8550 RTC.
>>
>> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>> ---
> 
> I think it makes more sense to enable it by default instead

Fair enough. I will send a v2.

Best regards,
Krzysztof

