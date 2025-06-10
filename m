Return-Path: <devicetree+bounces-184478-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 10BE5AD426A
	for <lists+devicetree@lfdr.de>; Tue, 10 Jun 2025 21:02:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 946A27A4E28
	for <lists+devicetree@lfdr.de>; Tue, 10 Jun 2025 19:01:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D89A025F79A;
	Tue, 10 Jun 2025 19:02:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="tkNyE+SH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D37D25DAE8
	for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 19:02:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749582168; cv=none; b=L3j0DKXVuWHW1kNeR3+Kmk4GF+tX/dY+iOYFjOcxis3WoWkXX8WQ70obrjOXaAx6xgB2uZBDCi7U5d/A+2gLQrtAt6OiuYZeq3cCPpKs+AG7kYwGLefy3g9VQlYwpvTFra+El7mFdppJyx9a3vjQncihmpy32jru7OLgQb36tj0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749582168; c=relaxed/simple;
	bh=rVgCB7d7YXT7wIutQuTOIOcSHXIfRaLciYLBxJ/BQ+g=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=rohkWTk9IrnUjUV3Ws95QRVK4yaRvZKYYUlQvHk1my1L+U2n7MKRHzawu1yv7pK9W8e13Xyz2ERTeBmRqDTfKo2wQRAAi7Sa3+zkP5NCbGhzENpPiAt+gKy2Fb02C9ttjNEeDHV3rGQNzdWXCI8ksl1Mss3F6Stw3Ys46hWuQvk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=tkNyE+SH; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-450d668c2a1so1147825e9.0
        for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 12:02:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1749582165; x=1750186965; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=G0B62z85gJOzviEKEobgsDAJxP79FoIq671m5PuGPz8=;
        b=tkNyE+SHO/Fhy64hJhu5/hPcHaFrMEYeizRhKYv0ev/fqpw4zW9kVf61EFaX8SZuJ4
         bdiial7zjsftKx5H0ygPk2lVicILHo+DV0lRaeV1kYfIrmO8sTcGXg13AM/yGCLv0DME
         DFLXrWJ2zy8iZjlnqkjk2K7DU0D9uR1fZi+/uArnBhW8FDPo5mHGTJTp6yyrrBgvUgu7
         1v6N1QkM4cVZyz7SJ4KsEVng0lxxfzF48F6HB+xlecVg8Gt8uJk6gDYvtUwyRkR0QHQe
         0RbwhEvLW9siuXaIf/HeoYJQUx3WEPYlLIzokSlc9V1h06I0epzd/bz7o02NRoAjZeBR
         PEQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749582165; x=1750186965;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=G0B62z85gJOzviEKEobgsDAJxP79FoIq671m5PuGPz8=;
        b=W5YJR3S4BawjbjJlrh2sxdIO05gcpL2GApFguvjWwCC3+cenxaXctRSG810kpxrP34
         Zqi/iN5qNABfJffxbd9sLsz4lL53c6BQncwAJM1jGbl86bwiaSFJE25RgLFzP6MJBKHX
         FmayFThD70kjY+IYJFHvXvoFL04tD1nbMf8PEfmgolLKBhtieFz7Lw4DM1ieZHRuM6Kx
         Y3ugmn0v1Y7eJUZJIqSC6q4L27ktw/6oSoev90s1wQzI3yzOdMDE3UQB5RSk2+nltGw6
         rgeSY1sz2kI8qca/5JFKsMymgVCLrDz9HNlbYjqI/rFSn48N3O0BiVGm5NLkHqRJ25fg
         pajw==
X-Forwarded-Encrypted: i=1; AJvYcCWK/s7XT415kmSvtIKrnGeKmvu4JCDL0uOlqnQ8YD4SQe7OVGm1lKps1RX9q73Q5u7mSW+yoQENma44@vger.kernel.org
X-Gm-Message-State: AOJu0YzH7CFAza2IuU9pw0b+wR09FfTdmydWOc64+mLekO2oekWpr6Aq
	XIbQDs8tNfgOpAP+vtAiPehNN0FOap6D/t2v5HtGRr3FcMqxSUCyEyJ3rhABvzzBiK0=
X-Gm-Gg: ASbGncsoftcbzDeYA5SCbVs5pyFxyAwb7HUwHsssC1sXucRjvpNVHt0cS4+iM9Eh5SI
	uYgtl3a5U4G/GGVrc6iu24Jjxx9GjOYVDSIW0urkLGc16Vsl6wahrhXhyvOZSl1hSEQYnXyghBh
	jCFCstQiNUPNjskBAvYoMpuXUOlCCbJK28eg21Q02wSlka9wckIWtUPMd82SWLxxef3PLrb8BpO
	uALZYNsTXK9ysb0mvcpMipKI6esw4yM8AbjAga/IBGJns0KsExyhMH+1Iuw3GWLdlzAuk35VtLt
	P3MAXnoiItoAJMUBQ3i7z2AWZvX6CnWILQJ41NLo5O/Atr90sE1oQ76Y6DzTgfkAA7FBzJhf8UX
	HYtCOCyBXxJ9YcJqZl38lbdkJBBA=
X-Google-Smtp-Source: AGHT+IFwHj1Ai6p+bfN7fWQ4SsvEeoKINwwWMCKycaDl0KtYSEyjI42LVgjGupK18UiLTuO2p2Q3dg==
X-Received: by 2002:a05:600c:c494:b0:439:8878:5029 with SMTP id 5b1f17b1804b1-4532426d53bmr4645735e9.2.1749582165343;
        Tue, 10 Jun 2025 12:02:45 -0700 (PDT)
Received: from [192.168.0.34] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45209ce1afasm151989555e9.10.2025.06.10.12.02.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Jun 2025 12:02:44 -0700 (PDT)
Message-ID: <dc82457e-de2b-43ec-a50c-08f7d8bdeff1@linaro.org>
Date: Tue, 10 Jun 2025 20:02:43 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RESEND] arm64: dts: qcom: sm8550: Add support for camss
To: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Wenmeng Liu <quic_wenmliu@quicinc.com>, rfoss@kernel.org,
 todor.too@gmail.com, andersson@kernel.org, konradybcio@kernel.org,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-media@vger.kernel.org,
 quic_depengs@quicinc.com
References: <20250516072707.388332-1-quic_wenmliu@quicinc.com>
 <0367d5bd-a42e-4b6c-b841-ba20190b3127@linaro.org>
 <dc4720a8-2f15-44aa-9a52-8440c7518328@linaro.org>
 <739bad1b-f26d-44a6-9cc1-eee28023474f@linaro.org>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <739bad1b-f26d-44a6-9cc1-eee28023474f@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 10/06/2025 13:49, Vladimir Zapolskiy wrote:
>>
>> List feedback from DT people is isp@ is the correct prefix.
>>
> 
> My bad, but I don't understand this comment, it seems irrelevant...
> 
> The expressed concern is about the novel label name.

I mean to say the feedback from Krzysztof was that we should use isp@ 
not camss@ and I agree.

---
bod

