Return-Path: <devicetree+bounces-13543-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CD7D7DED26
	for <lists+devicetree@lfdr.de>; Thu,  2 Nov 2023 08:14:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BE6271C208F8
	for <lists+devicetree@lfdr.de>; Thu,  2 Nov 2023 07:14:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 539545673;
	Thu,  2 Nov 2023 07:14:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="LXgNlZAv"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A68446BF
	for <devicetree@vger.kernel.org>; Thu,  2 Nov 2023 07:14:34 +0000 (UTC)
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com [IPv6:2a00:1450:4864:20::636])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 66CE412C
	for <devicetree@vger.kernel.org>; Thu,  2 Nov 2023 00:14:26 -0700 (PDT)
Received: by mail-ej1-x636.google.com with SMTP id a640c23a62f3a-9c53e8b7cf4so84178466b.1
        for <devicetree@vger.kernel.org>; Thu, 02 Nov 2023 00:14:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698909265; x=1699514065; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=33gbO515Gu0/qLf4bxYYOPeKitrjt7A+LBZxiAjPEmk=;
        b=LXgNlZAvnIbaD0gMzUULiDDm+p3KIaFpBb61LE/Kj7jJbLCl+/67g2aUWOODlyhkOW
         pklV+/K4dBHQCzv5YBM1rrMqHg9tw9R42nYyPQaU2NIhupRBYzVtCLvmaKW3l6LW9XuH
         wpzt+OrFB8dohhlYrG5gbyDrElQHMFYaj05nZrWydbt0GHZV/jeLhiGJIZu7qIqE61l1
         XErVr5MWb5QhvcnPK+J98RTVGDPTxHw4OB/zPLPBSJNJjWTTYRB3m2BFbLobwkkAV/o8
         ZtYEYS/iIlNNUvK0wytqUVjsCBduyA+PI6nsPFeVDiivV7p1ean3l2yaL10NzzDvxcuY
         AGAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698909265; x=1699514065;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=33gbO515Gu0/qLf4bxYYOPeKitrjt7A+LBZxiAjPEmk=;
        b=gQv/AyF7f+E3cD3VwPbQisdp/EHMDIJLkWFoo1eFNuXlmLrV7rbvkRS6TubEk5P6/M
         cfr8wdRJ3DO8lf2eaCI1LNp7DOfOrgnZ3mltUCdi4v567qfn85KfRXFenp1D2xF7wFVH
         8mtacpQ3dK1IHIt04lpahJy/zkOTMhLoBhrSsI0dUbiBMJuPrU8QdtgvAtvdRGuwqGyE
         7wJmgMvaBBjbuzSOjxVqnAz3/xbaUr5Q+9AEcgiU6B7BwXg72ZZKMdu+MQZRAW6KQumo
         7Dzj41wzNJZLL0IAzeiqdx460Qjm4VeJlB5EZST0tTC6o+PHg06mjnFYhzuxCa8C8wtg
         HzMg==
X-Gm-Message-State: AOJu0YxNBQk2168tL0f7BjmsqO9p83qZBC7+wu+U/EW1/rF4C3i0FzT7
	iXb6xO5I6CWKzCA+K5sHFDToJQ==
X-Google-Smtp-Source: AGHT+IHAlrrTLe1/FRZ6aLXPNG81Bku5kkTibZn+xusOvDmVR0C+fM/9d8vWm6DAAEyPj2K5w1Rm+g==
X-Received: by 2002:a17:907:3e89:b0:9be:315d:e607 with SMTP id hs9-20020a1709073e8900b009be315de607mr3457975ejc.28.1698909264657;
        Thu, 02 Nov 2023 00:14:24 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.218.126])
        by smtp.gmail.com with ESMTPSA id o21-20020a17090637d500b0099293cdbc98sm780825ejc.145.2023.11.02.00.14.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 02 Nov 2023 00:14:23 -0700 (PDT)
Message-ID: <8c15d904-bab0-4def-ac9a-db49aa80627a@linaro.org>
Date: Thu, 2 Nov 2023 08:14:21 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V4][4/4] dt-bindings: mmc: Add dt-bindings for realtek mmc
 driver
Content-Language: en-US
To: =?UTF-8?B?SnlhbiBDaG91IFvlkajoirflrold?= <jyanchou@realtek.com>,
 "ulf.hansson@linaro.org" <ulf.hansson@linaro.org>,
 "adrian.hunter@intel.com" <adrian.hunter@intel.com>,
 "jh80.chung@samsung.com" <jh80.chung@samsung.com>,
 "riteshh@codeaurora.org" <riteshh@codeaurora.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "krzysztof.kozlowski+dt@linaro.org" <krzysztof.kozlowski+dt@linaro.org>,
 "conor+dt@kernel.org" <conor+dt@kernel.org>,
 "asutoshd@codeaurora.org" <asutoshd@codeaurora.org>,
 "p.zabel@pengutronix.de" <p.zabel@pengutronix.de>
Cc: "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "arnd@arndb.de" <arnd@arndb.de>,
 "briannorris@chromium.org" <briannorris@chromium.org>,
 "doug@schmorgal.com" <doug@schmorgal.com>,
 "tonyhuang.sunplus@gmail.com" <tonyhuang.sunplus@gmail.com>,
 "abel.vesa@linaro.org" <abel.vesa@linaro.org>,
 "william.qiu@starfivetech.com" <william.qiu@starfivetech.com>
References: <20231030062749.2840-1-jyanchou@realtek.com>
 <20231030062749.2840-5-jyanchou@realtek.com>
 <b116d46f-f28b-4b7c-afd2-0061b523b00d@linaro.org>
 <dcb14bcf79ee4aaebe3ce8acbe8d1dac@realtek.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <dcb14bcf79ee4aaebe3ce8acbe8d1dac@realtek.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 02/11/2023 08:09, Jyan Chou [周芷安] wrote:
> Hi Krzysztof, Rob,
> 
> Thanks for your code review and advice.
> 
>> What? I asked to be the same.
> 
Respond inline, not by copying some pieces out of context to another
part of email. That's not mailing list style response.

Best regards,
Krzysztof


