Return-Path: <devicetree+bounces-153470-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 09409A4CA27
	for <lists+devicetree@lfdr.de>; Mon,  3 Mar 2025 18:47:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 565347ACFC1
	for <lists+devicetree@lfdr.de>; Mon,  3 Mar 2025 17:43:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7BC7A22FDEF;
	Mon,  3 Mar 2025 17:40:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="S3P/E8i9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B1EE214A8E
	for <devicetree@vger.kernel.org>; Mon,  3 Mar 2025 17:40:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741023611; cv=none; b=RuD44MUfEEtT1GFAgNan1oUzA1DKE8kpw8Km26T5AojZGu3Usr4/6R1RCb5QXD5WiPRtpshG3Qu6Jq1pecWN6V2Sr2esPXgGTgzt38T+9Fu94NYaPqFEU2VTHM9fGytr092TpetVTWB4CcrDpkIk6WPCx0TBmO+YPFXDRQKnskM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741023611; c=relaxed/simple;
	bh=OZ/+BibrPbvcJjAgUEG3HZQiC7vhM2PDww3ixfWrmOc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=JrIGNb4KLUDHjBqUs4QT6gazHKJBGS4wYKjiBTd7iLvMuDJmLHGmT2KKyK5VWdGPAbSRCVExbWbu0/7ApPEv4TVnkSJWCiQgCrSFtcNb176lHlfAnyn/K0DCHX3dwzrGaJg4AA9H9HmC1BsZ775abaEFWmQ0YoedQsKb/vSIPEo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=S3P/E8i9; arc=none smtp.client-ip=209.85.218.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-ab7c4350826so96244466b.3
        for <devicetree@vger.kernel.org>; Mon, 03 Mar 2025 09:40:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741023606; x=1741628406; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=bY1INkJRTc/2R9FJOEVsQP3Q/BCm79THUKLzwVYzR+w=;
        b=S3P/E8i9jtJ4cyzuMM6chI1BpxI+7xYm7m6dmKpHukFHPVsSFP8YbZ2q5vmNlGc3Mk
         XehAOPXqcGgSX91B6ohoE1yj8Sy0WQQIomwE5x/e02/MUZsMWJ/kF790d308pTKjZTry
         ud5ATKbXv9JIfM9+ZnZFlY8X2WKHeJLL5N9EiNCenIwyrMFMiFrM1qRRfU1sEJmDWKRb
         ToHq+Zs2ufj6lZj36P3pFJSejqS+/6xqIed2mWJmhQOvo98SqbkCmVaaavlbpdFwleS8
         Px3W06D086V5DSKMVIonrqnPHaXo8H8hpkVUd9UaPLk5U4/8LbsFss/uRiQxhrB30kLt
         izAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741023606; x=1741628406;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bY1INkJRTc/2R9FJOEVsQP3Q/BCm79THUKLzwVYzR+w=;
        b=IEUyRWokhqMppeZkibHM8typiKi/WZc0OKzBfT1Od2EKlpsdaddf4n8Z4pno5QTQoU
         2E34JKOQoA3JMJjwRV1xfwoiha8TByU2/j2Xkejc1u4gFip7fdMnobJUr1Y4iOaPE5d1
         iCKd9xDH8iqRnjzsE1KK6usGFfX+LWCWYjLPZs4YwbIL20Yu5XS5boXc0KCL89Oh2x45
         L4qFrqA+mEFjoMDqacbexyvayln5IL9cAwqhpruXAHlq46SFRbYJzFg0ph9Bk3sCNpmb
         vY1Jdk7oE+BjJs2+z2KncBNZ6Hpl6yaFGxZuAGnK7DpWzUXjKrVsZRvUA6WL7c2cQZT7
         syWw==
X-Gm-Message-State: AOJu0YzVGFZKzmq77EnjT5glzH7Kiuil0Im60TQrtbokasA5UZAjSBQ4
	Y/niAK1fwqsDvBYzaxfS7ehNGJMpy8R3n5xrKQFbnftikEMYlRdioSUO7RWq+CA=
X-Gm-Gg: ASbGnctD9e643ASq9HGn/lUhsl0F4RD8JCtE+4NT56A54HQYNE2fug3EfE3jXZc6NDJ
	Jvdc35usrS8KPsoCFNk7dCWo+8IZYBR5VE34d9UcZJ7iWrQLKxd+of+PfNE7kA3+V6bnEJOCeoc
	Q9+o0GFy+GWUGJVwskBF4gRzgSUL+ehkLujQF+/WDxML6Z1H4b/9cxP0bbnH0HO9U1Eyi/y4wGu
	oIZmpkWTCHckWH8c89OeKgmazThC04Lp6DCrvFWH/Fbcdc1l29RDmdjSBOOdDGzlspwbJboc3oG
	GMXas72oCEIVq/8XQQqSTO8Eaoy1XZSJbNrdE3wSFXTT4UW2Idci45nF9XwBrV+w
X-Google-Smtp-Source: AGHT+IHpeVlrcUtVUth02suIUMzYsU56kNHf/LXRlk26c8Va4zNhV007iePhzArjqkydQYxfkehsqQ==
X-Received: by 2002:a17:907:3d87:b0:abf:6f87:6730 with SMTP id a640c23a62f3a-abf6f876ab2mr246490166b.5.1741023606382;
        Mon, 03 Mar 2025 09:40:06 -0800 (PST)
Received: from [192.168.1.20] ([178.197.206.225])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-abf0c0dc240sm839048766b.59.2025.03.03.09.40.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 03 Mar 2025 09:40:05 -0800 (PST)
Message-ID: <e3ed8f9f-834c-4641-84ba-7cb729cc1b10@linaro.org>
Date: Mon, 3 Mar 2025 18:40:04 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 1/2] dt-bindings: reset: Add T-HEAD TH1520 SoC Reset
 Controller
To: Michal Wilczynski <m.wilczynski@samsung.com>, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, drew@pdp7.com, guoren@kernel.org,
 wefu@redhat.com, p.zabel@pengutronix.de, m.szyprowski@samsung.com
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250303152511.494405-1-m.wilczynski@samsung.com>
 <CGME20250303152521eucas1p26c54c5b15c024d749cf004b66345d2e0@eucas1p2.samsung.com>
 <20250303152511.494405-2-m.wilczynski@samsung.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Language: en-US
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20250303152511.494405-2-m.wilczynski@samsung.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 03/03/2025 16:25, Michal Wilczynski wrote:
> Add a YAML schema for the T-HEAD TH1520 SoC reset controller. This
> controller manages resets for subsystems such as the GPU within the
> TH1520 SoC.
> 
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

You cannot get my review on v1, I never give review tags out of lists.

This is vN, like I suggested when I asked about splitting the patchset.

Best regards,
Krzysztof

