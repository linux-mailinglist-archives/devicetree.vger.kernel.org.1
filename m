Return-Path: <devicetree+bounces-148210-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 55AA1A3B1E5
	for <lists+devicetree@lfdr.de>; Wed, 19 Feb 2025 08:00:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 91DDA3AEC49
	for <lists+devicetree@lfdr.de>; Wed, 19 Feb 2025 07:00:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 154F71C07C6;
	Wed, 19 Feb 2025 07:00:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="CyL8xfXL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 304881BEF7A
	for <devicetree@vger.kernel.org>; Wed, 19 Feb 2025 07:00:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739948432; cv=none; b=GvfevE1eKCHYkMAvo9knaVGxjz+eVWEObtxzeAbQnZM1LAGKZH/zIAgGna7bhyeX/WJUkBM0dYh2uKCgh13JhazSPf8tjiizENVhJgjbp8mPP+2Xj1P7jtKlPBPMDAhjge8SAtvtlB5cdK1+2uIe0TWldSRU9qX3hj1uyu8VZLg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739948432; c=relaxed/simple;
	bh=uL9V65RrvzaO8QKxlRnOlh5JtJT0OS+u+SyoZslI2Y8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=cdM+36VgKCceI9z5tmLNlO8C4D0okQ5y8u2fcq/VQDGj1el15Ux+CNRRvorD3POe9UOr5w/yxyJwsVbkLZWXtbx3x/bxtl68MWrMc8itJqNBdgkdKc2dWnzmIh5MIhWNpUj5GMzKg/ZulNpRfaBt2dlDla5AQ0bVbr30LqqQdvI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=CyL8xfXL; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-43987d046caso3701385e9.0
        for <devicetree@vger.kernel.org>; Tue, 18 Feb 2025 23:00:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739948428; x=1740553228; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=sXqpspg2oyFM2qJRChCX03UIqMSUFVh2w86v8nO3Jzc=;
        b=CyL8xfXLPnlMpgO+TWZa+ECoOuMbCRbiEkmXNLX1EyalG1MqWNYrqG5pRGsuXHYa2S
         wzz+8HkN8uQZTjeUXlRTbUfasi6xwFGP41x3uwLOaOFeZBe0UfpMlkmI2geaLVpWqEb4
         TbCnZTBWky6faPUGKyVy/q3xfqeSWGoXoxim43GBixK6LZySp1mAATIT+5JWvbA+/urC
         ofJIpMDtg1NkWVoAYjYIzqtON14niDoFjctgIvPUafgV2Gz/vwxDy1yf7h1BDxZoJSlB
         vhxeJnHO6Vixv9tGOL0P1xcPlr6TP9/TdzTE7hdnxpr57icJdQuU20lL5ErAVr19B0dc
         3msQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739948428; x=1740553228;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=sXqpspg2oyFM2qJRChCX03UIqMSUFVh2w86v8nO3Jzc=;
        b=XBJmZ2do42hZ4dcP3wy6/q07Wi405r+2rJero5lJMY2AyMAYw9g2XiAi3zr1wdaTrM
         Y1v0U2o30x5wmrtLDia9cQOyLuhLl1/7sc/w3XOMhDo7SwbUkoUZ/vVXP2NPsB6x3laN
         38mSEsdJrQ7cKuAFRTf8bbIJY2+b/stMpK67N5acplmp8zjtXpf+nUDsEa8v9mtLZ5zV
         MiR6GeEHhXnFaPAOcJUDEd8ubyfXr18wpSXLFUZR1i6TzsD7nuckzFpAXgHALl5lAgfw
         YYJj8A6zBzVSEoupMzZloSRflD5XoOvJ9kuHCaSaznVrtzllT6OO7iwJ2aMf2pCWF1Ua
         fL2g==
X-Forwarded-Encrypted: i=1; AJvYcCXXPVm5GITl6FUfNJ1FY7GCbNA02PhbiNvpIRqFmH3v+afwXpzZUcjBznPKgoZKxu6Tm3xgOT570aOs@vger.kernel.org
X-Gm-Message-State: AOJu0Yy44UreEhJC0xsjTsE56505syi8YV1NcZhzG0Bj2ApmzS13ZFRn
	Bzd5wmZvSF2TeLSZczYczvbaZWbYBuCQDidAhptcqrxL4sM4qgwnG/xCk5nwLPs=
X-Gm-Gg: ASbGncvcZOVTOYO2U+OHnLtj/TjJaThtu40xmnEGiXCDveL6PzVAhxlTrJZTK2sswG+
	6kFDgDTDt/atAbH1MkM6J68wsKPYzlxPjYkKAIJUMQNmIKOq6DPKYlJK1juuhbn0VXH+m23mbjO
	nadEq/RyzxeI8p+4XmzjM4VY86YN2ylTzsV3FCpU2Jhvro8F/x4ib87C8sBU3tlSkx6hz9S5aCs
	BtbXFIvNL1kHp41YfO8Ua7hurNrKSVAGsxALL9ONaedaKict7u9679ZsJq6dckrVLB3zN4zPbF8
	QxjxPPz6k+kmR9jU6K6+o0WLvP+Asftcy5A=
X-Google-Smtp-Source: AGHT+IE47nw5xYxzEaB3Enx4NCsdF8Nyu4IfJL37yvgW3Oid/E4yN/fP4q4eRoW55FrgGJ3+PEkGCQ==
X-Received: by 2002:a05:600c:354b:b0:439:9ec5:dfa with SMTP id 5b1f17b1804b1-4399ec50ea5mr733495e9.7.1739948428448;
        Tue, 18 Feb 2025 23:00:28 -0800 (PST)
Received: from [192.168.1.20] ([178.197.206.225])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4398e84efb9sm54460205e9.10.2025.02.18.23.00.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Feb 2025 23:00:27 -0800 (PST)
Message-ID: <dac33c2d-3bba-4ea6-8a20-12ff9b6ebbb3@linaro.org>
Date: Wed, 19 Feb 2025 08:00:25 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/3] i2c: qup: Vote for interconnect bandwidth to DRAM
To: Andi Shyti <andi.shyti@kernel.org>,
 Stephan Gerhold <stephan.gerhold@kernkonzept.com>
Cc: Wolfram Sang <wsa@kernel.org>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
 linux-i2c@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20231128-i2c-qup-dvfs-v1-0-59a0e3039111@kernkonzept.com>
 <20231128-i2c-qup-dvfs-v1-3-59a0e3039111@kernkonzept.com>
 <5dr5ps4vb57xj2mfelgsxgoyrr3gg4ggwqggqchff6pda3ffsn@thxpg4h6kgel>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Language: en-US
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <5dr5ps4vb57xj2mfelgsxgoyrr3gg4ggwqggqchff6pda3ffsn@thxpg4h6kgel>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 19/02/2025 00:02, Andi Shyti wrote:
> Hi Stephen,
> 
> sorry for the very late reply here. Just one question.
> 
> ...
> 
>> downstream/vendor driver [1]. Due to lack of documentation about the
>> interconnect setup/behavior I cannot say exactly if this is right.
>> Unfortunately, this is not implemented very consistently downstream...
> 
> Can we have someone from Qualcomm or Linaro taking a peak here?

You replied to some old email, not in my inbox anymore, but your quote
lacks standard quote-template, like:

	On 19/02/2025 00:02, Andi Shyti wrote:

so I really don't know when was it sent. For sure more than a month ago,
maybe more? This has to be resent if you want anything done here.

Best regards,
Krzysztof

