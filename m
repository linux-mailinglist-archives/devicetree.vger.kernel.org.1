Return-Path: <devicetree+bounces-29719-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C68B82434E
	for <lists+devicetree@lfdr.de>; Thu,  4 Jan 2024 15:10:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 091E6285D63
	for <lists+devicetree@lfdr.de>; Thu,  4 Jan 2024 14:10:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C27C821A0F;
	Thu,  4 Jan 2024 14:10:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="FrMIc0/b"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com [209.85.208.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FE9F224CA
	for <devicetree@vger.kernel.org>; Thu,  4 Jan 2024 14:10:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f178.google.com with SMTP id 38308e7fff4ca-2cd0db24e03so6323151fa.3
        for <devicetree@vger.kernel.org>; Thu, 04 Jan 2024 06:10:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1704377403; x=1704982203; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=QvyBwEaiMbUvG2bcyPLm6XlY6v4Hxt5APwIYm1XSkrE=;
        b=FrMIc0/bg63yGw8pviWosTx9WqTOaB3Yhmamf1wOrXyiwywX8XOqTDNTA1HncN8WtV
         HHe7Efb2devZ/OnYaX4iwXMaDH2pESREbJxKwzofwJvCdbHvoBWrJrGiQz482zRvk8ZW
         nu+wrG7cSBTgUVhYFt04aU7BWFansoknyi+BjJ1rvip0KtzbTNXPDui2cJxgGs5x4BpY
         DnBeoCtgkr128NIq/l9BeUdrtE5OSg3ofKXe6Xj0l4S9CMqBVjy/2ekk3wNiO5GN2NvC
         aSIGRjsg2+lTWNxfGPqzieQk3io79NATZfVRNdrAcSb9bhljlSrZUqplMee7IUZItkZH
         ppfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704377403; x=1704982203;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=QvyBwEaiMbUvG2bcyPLm6XlY6v4Hxt5APwIYm1XSkrE=;
        b=mfru+u6HttVZ1LJwhDETCh1SA0VGUK4rarOs+z3y0xIlTFVj1rWeQyu4COyKCwWzK3
         eGPK9dY51mRRONq4k1Z46YGhIBHBt7DNKVL19ZMiS6nAiewdsGU2ymuAsvLQelRcCxGN
         hZ3NOjdatHi2l4FPVxcBkG9ZI8/ApeGsfa0UAmD+LMM0JPYRy+gtwqphQwSFLBsOq9Ct
         WQ+UobaHrNzqdVck8Wyw+3opfun25yzHR0Gtx1FM2FZIP0MSSNSQW3gC6fIlFX/KM4nP
         PD5T9MHPgzPZcqGl7LHUaz+ZZlDjKcVPQHPLtVBWJ0ObnCXOnYxsTZSX/LKrJI7UTUZQ
         XLdA==
X-Gm-Message-State: AOJu0YwqQ7mKsMMYa9/GMxGGIB2ZKrT5FsrhJQOABfTJxBUtflcwHjkF
	Iv7aJlOR2imu4WUnLSIofDisuyhGMqftWg==
X-Google-Smtp-Source: AGHT+IG0lzZDESK7ygOFl5Ea/ju6snk5+bN5kdUcnPQ8W0V8q1L5nCMWaYuaUq4yiByYpdIAEKbzWw==
X-Received: by 2002:a05:651c:607:b0:2cc:7578:3ce6 with SMTP id k7-20020a05651c060700b002cc75783ce6mr152556lje.10.1704377403284;
        Thu, 04 Jan 2024 06:10:03 -0800 (PST)
Received: from [192.168.100.86] ([37.228.218.3])
        by smtp.gmail.com with ESMTPSA id dr15-20020a5d5f8f000000b003373ece28efsm10611785wrb.29.2024.01.04.06.10.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Jan 2024 06:10:02 -0800 (PST)
Message-ID: <db83302e-0f2a-4611-b8c9-345668d0bbef@linaro.org>
Date: Thu, 4 Jan 2024 14:10:01 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/3] media: dt-bindings: media: camss: Add
 qcom,sc8280xp-camss binding
Content-Language: en-US
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Rob Herring <robh@kernel.org>,
 Bryan O'Donoghue <pure.logic@nexus-software.ie>
Cc: Robert Foss <rfoss@kernel.org>, Todor Tomov <todor.too@gmail.com>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, linux-media@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20240103-linux-next-24-01-02-sc8280xp-camss-core-dtsi-v1-0-abacaa63a961@linaro.org>
 <20240103-linux-next-24-01-02-sc8280xp-camss-core-dtsi-v1-1-abacaa63a961@linaro.org>
 <87bcff40-b5ff-41c9-a33f-95f5e80a2f22@linaro.org>
 <62995a12-e835-40ff-966f-8522f2ab53dc@nexus-software.ie>
 <20240103175424.GA1440392-robh@kernel.org>
 <3627b156-a4e4-458e-9cf0-ca6c62366e7e@linaro.org>
 <36dfbb05-d538-4f83-9e0d-898e3d35f3dc@linaro.org>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <36dfbb05-d538-4f83-9e0d-898e3d35f3dc@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 04/01/2024 12:40, Krzysztof Kozlowski wrote:
>> https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20240103-linux-next-24-01-02-sc8280xp-camss-core-dtsi-v1-1-abacaa63a961@linaro.org/
>>
>> If not - what is the base of the build ?
> master
> 
> Anyway, the base of the build matters less. The main problem is that you
> have dependency which is nowhere explained. This cannot go via media
> tree, because of that dependency.

Obvs my mistake I'd have assumed the dts stuff built against -next, 
clearly not how this works.

I'll ensure I spell out the base dep in v2.

---
bod

