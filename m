Return-Path: <devicetree+bounces-11150-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 29C3D7D4873
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 09:24:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 76174B20D0F
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 07:24:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3881014277;
	Tue, 24 Oct 2023 07:24:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="V2e29NF4"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 876A912B80
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 07:24:33 +0000 (UTC)
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 936FA118
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 00:24:31 -0700 (PDT)
Received: by mail-wm1-x329.google.com with SMTP id 5b1f17b1804b1-4083f61312eso33551935e9.3
        for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 00:24:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698132270; x=1698737070; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=iliiewira5s6u0od+KPCRfeZJlQUlHPYQ7qklYqbVWc=;
        b=V2e29NF42tuh3/s1u+EnTHK+ngqDadkuyIr0FTIrea6gu4PosSnuB559fhwbNQn8pV
         f8NbTBCLM0FgDWWHnetlqFnG5cYZOXpJjkYWP4rpXSuH+cCsSmu/Te/LKRLWb2ADKCNg
         89vyJfwXN9sn0qfhQc0cTFph57hSGuSQvpGk0rHSTok/ppyNwdZtTupT4HpPCjq/nGRd
         s/YNsPHyQ6KERiY1XTu5npeJSjLDbjrQeFe6/FFudWD7cOVHAOrjity/6bfsg06xVR+G
         Xu4GhNMtKos6pehj9jc3IPAQnNWRs+YUnSnmL3R9U/RD19Ew6eoSQOqJ/psUjSs6ndf6
         l4JQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698132270; x=1698737070;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iliiewira5s6u0od+KPCRfeZJlQUlHPYQ7qklYqbVWc=;
        b=C56rjO5CIOnFMpmVSkjrb+CN83bo3UGWKf3JOkauKyh9x6b/a3FK/F2jsV8JpDA124
         6FZQgFupmIijloLP4eh45BptsyOkK3smobmPHYk6Cuh9MzeqtKjMyqCTdNjdYvMybj4l
         pblCRJEx8QpNnVIzvidC1kXqquvfl/ePasQ+Fk9D27RQa4+E9N+qT5wwnRsVfayHE4wE
         EQckLtm2XsUOuWnit60eqxg7mjF9ZYsJb1bAw3edt8nlqbRmVEgi62fZuzGmWjQzdB2v
         GomvP87xuzq5K+rb8EaDfBthemtcowZxqJM1C3TWA60hO3LP93XDfpmclczpCOMFVjBb
         11kw==
X-Gm-Message-State: AOJu0Yzorh0pLfC1GFAl8KZsOwPVtTf5VxlUMKR2fQWJ1INQnuqsnYec
	H8K6q/r5qHgXks2UqwiQOpiTyA==
X-Google-Smtp-Source: AGHT+IFG9DYgdCTsnR1vt2l0tTZi+I1yM1xIvFaOWregRyZrVoVMqH8mq5GTOumheD5M6mF70varQQ==
X-Received: by 2002:a05:600c:1c97:b0:401:d803:6243 with SMTP id k23-20020a05600c1c9700b00401d8036243mr8817710wms.32.1698132269959;
        Tue, 24 Oct 2023 00:24:29 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.218.126])
        by smtp.gmail.com with ESMTPSA id t14-20020a5d534e000000b0032710f5584fsm9264736wrv.25.2023.10.24.00.24.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Oct 2023 00:24:29 -0700 (PDT)
Message-ID: <7240fa39-1a8f-4338-b5ae-b469dfaeb7e1@linaro.org>
Date: Tue, 24 Oct 2023 09:24:26 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v13 6/8] media: dt-bindings: wave5: add Chips&Media 521c
 codec IP support
To: Sebastian Fricke <sebastian.fricke@collabora.com>
Cc: Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 NXP Linux Team <linux-imx@nxp.com>, Conor Dooley <conor+dt@kernel.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Jackson Lee <jackson.lee@chipsnmedia.com>, Hans Verkuil
 <hverkuil@xs4all.nl>, Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>,
 Nas Chung <nas.chung@chipsnmedia.com>, Fabio Estevam <festevam@gmail.com>,
 linux-media@vger.kernel.org, Tomasz Figa <tfiga@chromium.org>,
 linux-kernel@vger.kernel.org,
 Nicolas Dufresne <nicolas.dufresne@collabora.com>, kernel@collabora.com,
 Robert Beckett <bob.beckett@collabora.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Darren Etheridge <detheridge@ti.com>
References: <20230929-wave5_v13_media_master-v13-0-5ac60ccbf2ce@collabora.com>
 <20230929-wave5_v13_media_master-v13-6-5ac60ccbf2ce@collabora.com>
 <b94e3561-f5ef-443f-98c7-9b79a8bbceec@linaro.org>
 <20231016134720.GA2650973-robh@kernel.org>
 <20231021120526.eqe3esyxyi5b3e5d@basti-XPS-13-9310>
 <3d465d3c-386d-467b-87e9-806962464ac5@linaro.org>
 <20231024051745.d663ekj7klrl4yzj@basti-XPS-13-9310>
Content-Language: en-US
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20231024051745.d663ekj7klrl4yzj@basti-XPS-13-9310>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 24/10/2023 07:17, Sebastian Fricke wrote:

>>>> It needs an SoC specific compatible (TI something...) as well (or
>>>> instead). Unless there's a public spec with details on how many
>>>> clocks, resets, interrupts, etc. there are.
>>>
>>> Okay so how about this, a bit similar to the Coda driver supplying both
>>> a general option and a SoC specific version:
>>
>> Can generic compatible be used alone in board designs? If it is licensed
>> block, then most likely you want a fallback.
> 
> Alright, so a fallback seems appropriate, how do you like this?
> 
> properties:
>    compatible:
>      items:
>        - enum:
>            - const: ti,k3-j721sX-wave521c
>        - const: cnm,wave521c
> 
> Providing a fallback and adding a enum which can be extended later on.

This looks almost good. I wonder what is "j721sX" - Google does not find
it. There is thouhg j721se.

Best regards,
Krzysztof


