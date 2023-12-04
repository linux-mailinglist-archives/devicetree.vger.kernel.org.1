Return-Path: <devicetree+bounces-21230-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1448E802D86
	for <lists+devicetree@lfdr.de>; Mon,  4 Dec 2023 09:49:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 324D6B20992
	for <lists+devicetree@lfdr.de>; Mon,  4 Dec 2023 08:49:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3B041F9FE;
	Mon,  4 Dec 2023 08:48:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Nh487HWx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-x534.google.com (mail-pg1-x534.google.com [IPv6:2607:f8b0:4864:20::534])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6C13FA4;
	Mon,  4 Dec 2023 00:48:54 -0800 (PST)
Received: by mail-pg1-x534.google.com with SMTP id 41be03b00d2f7-517ab9a4a13so2223192a12.1;
        Mon, 04 Dec 2023 00:48:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1701679734; x=1702284534; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=ST2h/PONfnZyu/0urr3vsm15K/qMqFc6bAJOz5sjZGk=;
        b=Nh487HWxZUe0V8piH/6NUCYPy5Kpo2TZ+i+xPkH9zByf2DfataNHfLwMr3gwXN/mL8
         TBEeVu2+uXBIHENyXyBY701g4w0A9BD6+7fpdnfBzscHNLoHmw+QVWMrvFopo6isf77K
         03cla3tdgks4MkzLXkBDsHfQtWxT1O+X/CV4zSF9cpY2ldT0+F/53SUr9UJh9NYj7HYF
         CqdVy5/XPx86wdcimYKKgSTCVAXi22BIDzWzxi3Ve3KFWKx2+0qcamPLNa8SC90EwUig
         Z5yh6YTaiAMwES/6lHhTSqpVc/ZadHfndmYukVidHiyHgkqyb1dBA/dBUZreOEzlK1nJ
         hEcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701679734; x=1702284534;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ST2h/PONfnZyu/0urr3vsm15K/qMqFc6bAJOz5sjZGk=;
        b=IXpJD69djRe54eZpLe/mlMLQCHhXtLooStxA6/vVAIGguIpRzV7yQdNw6U/TrdRXan
         Q8qFke8Yu2ccYu381rqpgtQSzGMklISRFgOgiYjpwGN9SVcjDPDUMHMop0wEvItDGrQT
         s5rP5KrIr8+jXAMeUiYcMLYuhq89f/+5mVs0ZWii9LxfwY+V0LmoaflxzYKI3sa5PPL8
         Nrtt1VJ1OEia+0Pun5YxR9P3hOUIqiXkxX0QJQc+n7EvO9WbT9MaksQTQ/wVTlspvGP3
         SifMjOK/pqyZkr2KBIzVPl4tzFAy6HQ4jwkFgj4EyFjx3SzTYr/bo7GtpUDoAmRygAH3
         6zFA==
X-Gm-Message-State: AOJu0YyjBeJT0bmvLuiCwcQjyLbKA/VDr2ciwyjrkglIVJg+GR+HfATa
	Kl4WRLm+DEQgbq4FdRT/OH4=
X-Google-Smtp-Source: AGHT+IFn9+aaDvJQIaTTT9fhCQOFpYf2DG2sHOPojRJV8T11hDylXF7KIzTFFXItytXtfbP6QIHFjw==
X-Received: by 2002:a05:6a21:1cb0:b0:18f:97c:8a3a with SMTP id sf48-20020a056a211cb000b0018f097c8a3amr3614507pzb.101.1701679733801;
        Mon, 04 Dec 2023 00:48:53 -0800 (PST)
Received: from [10.10.14.80] (1-34-21-66.hinet-ip.hinet.net. [1.34.21.66])
        by smtp.gmail.com with ESMTPSA id v4-20020a634644000000b0058901200bbbsm7186819pgk.40.2023.12.04.00.48.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 Dec 2023 00:48:53 -0800 (PST)
Message-ID: <3ff5dcd7-69a3-4098-92c6-ed1e8f0bd8f9@gmail.com>
Date: Mon, 4 Dec 2023 16:46:41 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 0/2] Add Facebook Minerva Harma (AST2600) BMC
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, patrick@stwcx.xyz,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>,
 Andrew Jeffery <andrew@aj.id.au>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-aspeed@lists.ozlabs.org,
 linux-kernel@vger.kernel.org
References: <20231204081029.2272626-1-peteryin.openbmc@gmail.com>
 <fddcbad4-5368-4c2a-ba87-f4c4326a8385@linaro.org>
Content-Language: en-US
From: PeterYin <peteryin.openbmc@gmail.com>
In-Reply-To: <fddcbad4-5368-4c2a-ba87-f4c4326a8385@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit


Krzysztof Kozlowski 於 12/4/23 16:20 寫道:
> On 04/12/2023 09:10, Peter Yin wrote:
>> Summary:
>> Add linux device tree entry related to Minerva Harma
>> specific devices connected to BMC SoC.
>>
>> v4:https://lore.kernel.org/all/20231204054131.1845775-3-peter.yin@quantatw.com/
>> v3:https://lore.kernel.org/all/20231123050415.3441429-3-peteryin.openbmc@gmail.com/
>> v2:https://lore.kernel.org/all/cdbc75b9-3be1-4017-9bee-c8f161b6843c@linaro.org/
>> v1:https://lore.kernel.org/all/20231024082404.735843-3-peteryin.openbmc@gmail.com/
>>
>> Change log
>> v4 -> v5
>>    - Rename document and file from minerva-harma to harma.
> 
> You must explain that you dropped people's review for some reason.
> 
> Best regards,
> Krzysztof
> 
Due to changes in the project name and content, please assist in 
reviewing it.

Thanks,
Peter.

