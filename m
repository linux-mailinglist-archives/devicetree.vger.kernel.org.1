Return-Path: <devicetree+bounces-12983-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D5E97DC1A4
	for <lists+devicetree@lfdr.de>; Mon, 30 Oct 2023 22:12:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2190B2815CA
	for <lists+devicetree@lfdr.de>; Mon, 30 Oct 2023 21:12:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9E5771C299;
	Mon, 30 Oct 2023 21:12:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="d5VXwZWb"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B7C3199D9
	for <devicetree@vger.kernel.org>; Mon, 30 Oct 2023 21:12:09 +0000 (UTC)
Received: from mail-lj1-x231.google.com (mail-lj1-x231.google.com [IPv6:2a00:1450:4864:20::231])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 88C67F7
	for <devicetree@vger.kernel.org>; Mon, 30 Oct 2023 14:12:07 -0700 (PDT)
Received: by mail-lj1-x231.google.com with SMTP id 38308e7fff4ca-2c5720a321aso65385611fa.1
        for <devicetree@vger.kernel.org>; Mon, 30 Oct 2023 14:12:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698700326; x=1699305126; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Yvz7j0aXwqHtGtC2njMkTn9rIFOlYhohzHXfNXUViPE=;
        b=d5VXwZWbSgGSTUyYSrZIthmO+UpD7rbH6yFErYn/B9/CAn56iLKVXf5rwIENLy80dV
         LoqJrK/pdTEmC+VBcJcYTitmGRCqGWPwptjzBfTmMtRJTGLvuxrx3JgcmWBJDwIBeWUe
         ZwvPkLjYUMvC/w1MqNCD17kIoQeYFmTnx+vTCw1c95bY3jhps065yCI1lfuka0/31xku
         k9ljy+UmINUA8VXWSxOTBWsjuXcdCObWa/kCxp6H5wgs+1dcIjQ383V9kdwdrjV1ie9e
         igr694XbS58xiDXxUK39aQl2tdUhR16wAEF7nPG+fzXIlqRqJXAHIhxEG5MmNEr25Dfp
         7DhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698700326; x=1699305126;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Yvz7j0aXwqHtGtC2njMkTn9rIFOlYhohzHXfNXUViPE=;
        b=CFGWiti9JZ5C4ocq5ez4GaHBmeFQrQZt81wYqpz4mb9yIRRQttYvRQjy/JkLaHgGRn
         ftxekGTqFejdkRwcaW7vHboaoYiTZ1hoxrgHQ/Pm09z5gHUjaoraK7yRH64W0cvzoTvP
         503zxBCYsgjiYU6AkUUv6DSpWvWGjPd/kYAwgiq6iNVmTBPzdrR2fYkHHKNVwV1vkC4v
         cQNA2A3XOBbS+1KbVA9vkGHdwcx1a/7dGGd2RjcQZTT9OrOktNbso6xl1h9VOkCnGgL9
         jIceEi92258nMHoemVNqvaMY/wzvyxQos09Wxp9wXtDXg7+83KcGl5+Xwiby1iSrwlwN
         DV2w==
X-Gm-Message-State: AOJu0Yw/M5Eh22Z4ItG/Bk5LAooQF7Mns6jSfXg3laoN/t4omFOXllw8
	qmdQe8CmTBYE8boU+VCE9dCcGQ==
X-Google-Smtp-Source: AGHT+IEFbR+mfA4lDi7HYqrqs0Modr8JJ8FBQsQt31RkeWuPoQM8n7kICsNoPWw23UhK+fBo8ALDfQ==
X-Received: by 2002:a05:651c:333:b0:2c5:1542:57e4 with SMTP id b19-20020a05651c033300b002c5154257e4mr8145853ljp.31.1698700325178;
        Mon, 30 Oct 2023 14:12:05 -0700 (PDT)
Received: from [192.168.133.160] (178235177091.dynamic-4-waw-k-1-1-0.vectranet.pl. [178.235.177.91])
        by smtp.gmail.com with ESMTPSA id z4-20020a2eb524000000b002c5a1d45e95sm1432930ljm.0.2023.10.30.14.12.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 30 Oct 2023 14:12:04 -0700 (PDT)
Message-ID: <ef377506-4132-4805-a76e-18f241afe319@linaro.org>
Date: Mon, 30 Oct 2023 22:12:02 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/3] clk: qcom: ipq6018: add USB GDSCs
Content-Language: en-US
To: Robert Marko <robimarko@gmail.com>
Cc: agross@kernel.org, andersson@kernel.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 mturquette@baylibre.com, sboyd@kernel.org, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-clk@vger.kernel.org,
 Kathiravan Thirumoorthy <quic_kathirav@quicinc.com>
References: <20231025104457.628109-1-robimarko@gmail.com>
 <20231025104457.628109-2-robimarko@gmail.com>
 <CAOX2RU4MBvDZZ767RPS9XKj0U2L3gviVG5cyR8NKyO4LD+sfYQ@mail.gmail.com>
 <20c8cfde-3f55-45c5-bc23-21979ac9680d@linaro.org>
 <CAOX2RU5-XFZhGzjigNtu-qFnPWDd2XkpGpY=HXWigRa5SXw4TA@mail.gmail.com>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Autocrypt: addr=konrad.dybcio@linaro.org; keydata=
 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
 izWDgYvmBE8=
In-Reply-To: <CAOX2RU5-XFZhGzjigNtu-qFnPWDd2XkpGpY=HXWigRa5SXw4TA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 30.10.2023 21:37, Robert Marko wrote:
> On Mon, 30 Oct 2023 at 20:37, Konrad Dybcio <konrad.dybcio@linaro.org> wrote:
>>
>> On 29.10.2023 12:04, Robert Marko wrote:
>>> On Wed, 25 Oct 2023 at 12:45, Robert Marko <robimarko@gmail.com> wrote:
>>>>
>>>> IPQ6018 has GDSC-s for each of the USB ports, so lets define them as such
>>>> and drop the curent code that is de-asserting the USB GDSC-s as part of
>>>> the GCC probe.
>>>>
>>>> Signed-off-by: Robert Marko <robimarko@gmail.com>
>>>
>>> Unfortunately, after testing on multiple devices I hit the same GDSC
>>> issue I had a long time ago
>>> that was the reason I did not send this upstream.
>>> It seems that USB3 port GDSC (USB0 GDSC in code) works just fine,
>>> however the USB2 one
>>> (USB1 GDSC in code) it is stuck off and USB2 port will fail due to this:
>>>     1.607531] ------------[ cut here ]------------
>>> [    1.607559] usb1_gdsc status stuck at 'off'
>>> [    1.607592] WARNING: CPU: 0 PID: 35 at gdsc_toggle_logic+0x16c/0x174
>>> [    1.615120] Modules linked in:
>> Can you dump GDSCR (the entire 32-bit register) at boot and when toggling?
> 
> Sure, here it is:
> [    0.023760] qcom,gcc-ipq6018 1800000.gcc: reg: 0x3e078 val: 0x8222004 init
> [    0.023782] qcom,gcc-ipq6018 1800000.gcc: reg: 0x3f078 val: 0x8222004 init
> [    0.988626] qcom,gcc-ipq6018 1800000.gcc: reg: 0x3f078 val:
> 0x8282000 before toggle
> [    1.202506] qcom,gcc-ipq6018 1800000.gcc: reg: 0x3f078 val:
> 0x8282000 after toggle
> [    1.207208] qcom,gcc-ipq6018 1800000.gcc: reg: 0x3e078 val:
> 0xa0282000 before toggle
Any chance

.en_few_wait_val = 0x2

(turning BIT(19) into BIT(17))

will make a difference?

Konrad

