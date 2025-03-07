Return-Path: <devicetree+bounces-155273-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 38D4BA56156
	for <lists+devicetree@lfdr.de>; Fri,  7 Mar 2025 08:01:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 64358170837
	for <lists+devicetree@lfdr.de>; Fri,  7 Mar 2025 07:01:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2960719E7E2;
	Fri,  7 Mar 2025 07:01:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="U8pgzZNS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FF8A191461
	for <devicetree@vger.kernel.org>; Fri,  7 Mar 2025 07:01:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741330869; cv=none; b=MsthC6VZA41ZA3nldn8cEmJJoZJfR+IwsUrVi5hMbBFvgiktOX+UpxUGKDPAxStkarOn87ATjnS7weaL1/k4WBE7Crp55RJlJHrWPPbXVpZ1jlqAYIN/6V9cM6WkLTSgxqmFjd8fgddP2sYIkW/B5chGDBO7FHVS8eKj0NR+vIE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741330869; c=relaxed/simple;
	bh=X/1WIt4m62AnsW9clW0kmKnhiadtF9DhwD0siHnB6AU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=DTZu1ZjFzVrpe7cBcyfCfBMQNM9ItRfyT+GrbrG+vcxpn4lj50u+btdWZinhn3aMCptl4i/M+vdXr8UV/tUVA5C66tjnKq4SCzYOY7eBjgX3uK7G+1p/qYLzG6VxHz6LfZ19XSKbB6qwFMSiDkTgjdH49tIPPd9Xu3S5OHHwVW0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=U8pgzZNS; arc=none smtp.client-ip=209.85.218.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f52.google.com with SMTP id a640c23a62f3a-abf675756b8so22494266b.0
        for <devicetree@vger.kernel.org>; Thu, 06 Mar 2025 23:01:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741330865; x=1741935665; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=Nj3ICwfsh5ahAZoKIfoUbUTllZ0ZuMzKTnzon9oJUZs=;
        b=U8pgzZNSvOhhxEqM/14iJjFE5UvwTJCZTY2ki3ZzW/+JeeduRyL1n0QcOQ2hfTADI4
         lG36cGRK8/nSJG8XMSSGrrAx8ZQJa0Mj5wQ7MgSNlZWLBf7ba7zk3c5hfEOAT6iaQvnU
         jIvwCZwt2bdkmJq7cPNENvESQvsuJbCEalr7KSfh/Jjih+rGToj6+GAFvEwgqYQ/lvnR
         eqWAxWtmK4dm6jIvzBaSnfvyxTv/GI+vx+bnQlYexS0qOKAK9a58EzB0qJqv2teWaQkq
         BUZZb1hJmLAFEVt1Fbv9bgVWKk47D4ljbzlIsb6eUa5wdyAFfg+75s8zVpK2TRfybDqn
         1JHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741330865; x=1741935665;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Nj3ICwfsh5ahAZoKIfoUbUTllZ0ZuMzKTnzon9oJUZs=;
        b=Z3DqUZBQ7JgLX0m2vNajNOraf6S12ExrwlKmtEY4KbtSGw6t/Mqsi3uuXyou78IDFe
         UggWHY3PkGqoEL2329b9cXx+7jAHu+0GDwnianufmk0gSVFqQyWz5phLjgVgMzwU8yzB
         C6ymJK9mZNVCjVbyXSBVgYPyQ1W3sZ7TlJllJzjsG7h6t/yftekOswJbgyx3UkFJM1ND
         TAgXTxUwa738r23ivRSbs7q34MP+5f1rB0IUu1XnasyBbnvGBRk5QhHpRguuvZTl4Ymk
         an9KfFd64J8pndNx7NGXzHYmCg9KBXLerKaLglZdAD+M4jybdD7llPbXNMYfclseRDN5
         z6tA==
X-Forwarded-Encrypted: i=1; AJvYcCVgU4Y2uD7hp6Z+oR/5qnqtNZgcpdFG8OXdFOTHOC9fMg9d5xEnOjPzrF7LSM1TtSbEfaQFh8grvZ2V@vger.kernel.org
X-Gm-Message-State: AOJu0YwlgHlrTZKfgV8gmB6NFx13A4CdVCeYJqmOBKZXS2aKwWlHja6L
	LLE1MUCL0z6LFAj4JtGdggJO8MT6J6YtoMybTrT/0ncvpfGekkkYCvq3Pkc4Y+KAIAMERdv0KvV
	v6iU=
X-Gm-Gg: ASbGncuHOC1k4IMqDiUuEt10Q7oIGN2D1KTEc7XQh/GuEBFPAJ3QmaT2fC/rNBybf27
	WRkRVeGlFU44Brq/Ul9NYe4YQnAJkDAbG81+VFcWoJ4PLlCDsNhvnEEb4+Csjek0A4+uLUyeFIz
	gDUWU76St9iuZrGjNA0ZUMfxeXRB+1Sk3bPRDYf6V/AUu/1158v7p+b+qo+BbsAJcI/GBLziHHw
	X5+UO+0iMMQHz8esKPlcdDH+Wv5zJJsuYvi8MIG8jtybQriEFyfUTl17/QJfuJBjgtJFOzhimQI
	MjhcQ51ZI4WyocprumfPHNydRuCVib42Ah2OchMBI2x2Ep0urU71QE3+b/GU6QJL
X-Google-Smtp-Source: AGHT+IF+M/xZPpIeRG9RDSy5qax/tGXYxnvtE8mW0s2b/f4NLMlUiRZ4R5LHomszFoqRKC1ASyqiOA==
X-Received: by 2002:a17:907:9691:b0:abf:5d56:7a50 with SMTP id a640c23a62f3a-ac252b9d9d3mr86747866b.10.1741330865519;
        Thu, 06 Mar 2025 23:01:05 -0800 (PST)
Received: from [192.168.1.20] ([178.197.206.225])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ac239439a7csm226025266b.6.2025.03.06.23.01.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 06 Mar 2025 23:01:04 -0800 (PST)
Message-ID: <c5ac8c5f-1654-41ad-9a0c-d4af5f1c0859@linaro.org>
Date: Fri, 7 Mar 2025 08:01:03 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] dt-bindings: usb: qcom,dwc3: Synchronize minItems for
 interrupts and -names
To: Konrad Dybcio <konradybcio@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Wesley Cheng <quic_wcheng@quicinc.com>
Cc: Marijn Suijten <marijn.suijten@somainline.org>,
 linux-arm-msm@vger.kernel.org, linux-usb@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
References: <20250306-topic-dt_bindings_fixes_usb-v1-1-e1e6a5bde871@oss.qualcomm.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Language: en-US
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20250306-topic-dt_bindings_fixes_usb-v1-1-e1e6a5bde871@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 06/03/2025 19:10, Konrad Dybcio wrote:
> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> 
> It makes sense that ARRAY_SIZE(prop) should == ARRAY_SIZE(prop-names),
> so allow that to happen with interrupts.
> 
> Fixes bogus warnings such as:
> usb@c2f8800: interrupt-names: ['pwr_event', 'qusb2_phy', 'hs_phy_irq'] is too short
> 
> Fixes: 7db25e95589e ("dt-bindings: usb: qcom,dwc3: Fix SDM660 clock description")


I don't see this commit causing it. It touched only clocks.

Best regards,
Krzysztof

