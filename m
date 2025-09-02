Return-Path: <devicetree+bounces-211735-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EE204B4060E
	for <lists+devicetree@lfdr.de>; Tue,  2 Sep 2025 16:05:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id AB0FF1713DE
	for <lists+devicetree@lfdr.de>; Tue,  2 Sep 2025 13:59:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0A0E32820B6;
	Tue,  2 Sep 2025 13:59:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="jUyK9yB1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A05020B1F5
	for <devicetree@vger.kernel.org>; Tue,  2 Sep 2025 13:59:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756821590; cv=none; b=GRLElB3H+d3b8fgtIk+cYrDe1L1aSy2AAilHE8EDVsNbeTlGaxsYocjv1MjLThTjaSpPNXSeDPzru8tFUXTzUpTINasrxU9LIgxVQFUAk8lWGzOtmz+qUP5G8WKAyAJHwJpnc2aQz69R7CEwXdxRQo/Wt2zW7il8O1FR1f9Q9+w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756821590; c=relaxed/simple;
	bh=XkCe7+Zu1bMGwKD0Ggjxa0jQLFqEowFTaTX3+Lirq9w=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=FObBfYaRlcA0QvqnKmqOKkinlUTnyIW5/IWzivPr2SmjAZR6bPIe8rsFV0rBEVDiUO3YiL25K5Newj9IidfW6g7Qo+BO2F6GyHA1zvBV5hImfSp0i+FM2IkDMF5GyGIAfXD9cnJdhG1y5poJipHd9hJbWSagzk4PnKIPOYURUgI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=jUyK9yB1; arc=none smtp.client-ip=209.85.218.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-b0419ea6241so17568366b.3
        for <devicetree@vger.kernel.org>; Tue, 02 Sep 2025 06:59:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1756821587; x=1757426387; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=RPJXlck5eoKTbALptaBMSZyJz7sZGAJjQHWiJ1GetyA=;
        b=jUyK9yB14gUGdWqU105YOATg7Xh6sXKyNZWVDGk1MvDb/zwcEwd76l+4ep6Seg+RxQ
         GVkwOfoSy6zCYoYYhy9r9RR8W9YKF1fldvXPzUW1zxLvuRpfmP/pZObUlMRXlfyKlFLu
         YVh2O8qbF6BL1sPNoogBPSMGhHRQuZ0O2ThAIvcu4e261IRYY6NFbt9zToShKlzpAoXh
         qx6Wnu81h0RwfOOziMxakaNnzz0U59HEWVQWnH6MhxR3M53gRLuz+higWNmPiCI23Kk2
         NxmQra4sjUPrnRfkFE6rdRyG65sIFmS18bv6Pkbrii+5zHttR3dAa0umnQH/kTpQpq7m
         bbug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756821587; x=1757426387;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=RPJXlck5eoKTbALptaBMSZyJz7sZGAJjQHWiJ1GetyA=;
        b=r+5qQqbrdOlMAAinXlaXlQIct0WsqsvHK/jJyCXGvu+fwZGHzWxeNO4qdUlcua/8OR
         A6Z5rkVUCSMm245IM1LMSN+uh2NcDtux8U8iI79r3UDtgwt+hpFxBv4Z5p5ezUqGmXS+
         cOZ8Y9PkmfNqH7DYyaZZsA87THGHps4c/egzXvnbQi25s5wWXdWC26wTo8vXg7EV2I/U
         1weiWWm/JsPEbwARr9g56RYFJIVt97UDfoeOSivd0kUgykb4cpdp0FnyjDZAFq/MZ8+E
         cDaTYSOe4gVBSzWezYV474dUrauQcR6CY3WuIMhfHbNDG1b+lQAu0K1WJGIY1BHTvzQ9
         VYfA==
X-Forwarded-Encrypted: i=1; AJvYcCVJDVMOLpmeGs3EJBEM4LwgTmLrJV3JEgFx2c5y/7FGQ9XABMREW9qEM54ymnjfVgEvz3lz/T+MGZKU@vger.kernel.org
X-Gm-Message-State: AOJu0YzaR+yDjnp8J1GxJ1NdwG35grDl25RkEndYqwcuff40ruTEnL7u
	x3F+riFXzqhDnjtESclvZI0uzoRRXPa5fcpQr2+wCAeXliAOqSVRX+/tjk4QVDf4BSk=
X-Gm-Gg: ASbGncvK3WTED6eq/uvz2sivs3YOa2BQBkn6xqvAPaUW97VGKp8ymPuOCrk3aKOP/ot
	zIQrTTTswgwcaLwPakA5T21K0rkwdbUBOyyFmu2+FmZnwnNjm6xvO/Zn7XEQDCCYQWgWaeS5zLP
	GRKeig+bkQJtUp3U/0I8yA7MxUx2PaXmt/0xuujxOk2dyr0GetgExWMehRaQ3FYwJwC0OUev4bW
	5qRsbhRuL+vHkQup5F/mp/ycZ1bSBWUHw1E7DnEtysTmvXhgTj0ULb9QwfRNR1+gAIqIEZ+9y+a
	tGSc2secGhI5Pmd2PFje9C4PSJCJrEWMsrOYrV3u2++yZZLKIVqc+wyp1XmyDkjUYOvLj5AXLD+
	k1+JFGDdqrmIxxH7dgTHy0Eq7CshDfHpyvHI5+b5G32WfdHQjX5xK/w==
X-Google-Smtp-Source: AGHT+IFXCkxy4FCb1+t0q3rdarr1oaEaEFjPJsYXmjZnz6ziFw45SyQomdO888aAzfhkEI6b3JHONw==
X-Received: by 2002:a17:907:94ca:b0:afe:dbfb:b113 with SMTP id a640c23a62f3a-aff0f191c5bmr756427866b.10.1756821587286;
        Tue, 02 Sep 2025 06:59:47 -0700 (PDT)
Received: from [192.168.1.29] ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b0421939da1sm573368666b.27.2025.09.02.06.59.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 02 Sep 2025 06:59:46 -0700 (PDT)
Message-ID: <174fa915-7aed-41b6-9725-2ba5d006d66b@linaro.org>
Date: Tue, 2 Sep 2025 15:59:45 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: sm8750-mtp: Add WiFi and Bluetooth
To: Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250902135835.246713-2-krzysztof.kozlowski@linaro.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Language: en-US
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 2+47PN9NZAOyb771QoVr8A==
In-Reply-To: <20250902135835.246713-2-krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 02/09/2025 15:58, Krzysztof Kozlowski wrote:
> MTP8750 rev 2.0 (power grid v8) boards come as two different variants
> with different WiFi chips: WCN7850 and WCN786x.  WCN7850 is already
> supported by the kernel, but WCN786x is not.  Both of the board variants
> are considered newest revisions and the difference is only in MCN
> numbers and internal codenames.
> 
> Add WCN7850 WiFi and Bluetooth to the MTP8750, stating that this DTS
> represents the WCN7850 variant.  The S4D and S5F regulators should
> operate at 0.85 V, thus adjust lower constraint and regulator name.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> 
> ---
> 
> Changes in v3:
> 1. Add also PCIe nodes, because they were not planned to be sent
>    separately.
> 2. Drop pieces of comments as discussed with Dmitry.
> v2: https://lore.kernel.org/all/20250811131055.154233-2-krzysztof.kozlowski@linaro.org/
> 

Forgot to mark v3 in the subject, eh. I will resend this.

Best regards,
Krzysztof

