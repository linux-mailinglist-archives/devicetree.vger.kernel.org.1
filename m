Return-Path: <devicetree+bounces-14451-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3869D7E4B24
	for <lists+devicetree@lfdr.de>; Tue,  7 Nov 2023 22:51:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C8DD9B20E99
	for <lists+devicetree@lfdr.de>; Tue,  7 Nov 2023 21:51:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 472672F855;
	Tue,  7 Nov 2023 21:51:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="bhg+0g8b"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AEBC22F853
	for <devicetree@vger.kernel.org>; Tue,  7 Nov 2023 21:51:17 +0000 (UTC)
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com [IPv6:2a00:1450:4864:20::130])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C034D10D1
	for <devicetree@vger.kernel.org>; Tue,  7 Nov 2023 13:51:16 -0800 (PST)
Received: by mail-lf1-x130.google.com with SMTP id 2adb3069b0e04-507973f3b65so8378492e87.3
        for <devicetree@vger.kernel.org>; Tue, 07 Nov 2023 13:51:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1699393875; x=1699998675; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=eXEudwC4e4v42G7sB/UW3Gaod9nR5BKGa01YVNLPp/4=;
        b=bhg+0g8b/Urh7yAaNQCzN41u+ry2CPK+Ll2/4bZDkzPDKz/hr6v9SrfHCxtVCQ697h
         fvGy5x94zHKBYdza1LCsL4j2C72vqkPqnPgkqieDJdk0tfNLwPOCC9+TbSk2HEfrgBlY
         AfB9sCIdzVa/ImrwfjE4wJ/+A9yy7eWFK3ntugC97ycbZI+KpwAwoxGv3qaggRbo7icg
         EJJhjGTYR0/tbwWmp9OmWPaRncS5ahTuF5baPkyCcswZ8ckPZl0+MeUJvb9v9joJVPbt
         Q6ojVGS0/O90bMKQXJy8/vFFgh6yGeMvUFmAT7m8BRUhdmG05bkCW8DjRTft65r3NyAx
         UlHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699393875; x=1699998675;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=eXEudwC4e4v42G7sB/UW3Gaod9nR5BKGa01YVNLPp/4=;
        b=P964Z2HIEZLk5LST0YYG49jYnfVwOCUyHrw2CpUylI5+jnzGfk0CdFToVWhFr4c8qJ
         GUfUi+QTfROId0j2y0XtD7OSdtxbjZTffqO9jx4BQne6q6UOxIOYwI/VJA+em/tGadiI
         UbfNZHHzY4sZyAAJ9/iUBSPY1kkYflmDCowv3OhA+paa+OcpSsvvtZliQqBbjB7VlhKL
         a7lkPYsbyrNZ70a73oH3gEXGYWHgywwHCKJUZupC1gQrdLlTSmCVhSApwXRPHneIgBd1
         Eyz9jHhhvqXY0lPnik5u3fr3DQZ9g8HQXQk5nbPEr4kW1j6kk7hAzoKXPREh68PzxJQT
         jUFw==
X-Gm-Message-State: AOJu0YzX7rzPwQLhj6QxXZ8iLfAqqfHZO62RaUOjaxaLw5T6TDCgklp8
	ey5AjOxSdyICcFF4mlxTuulzWA==
X-Google-Smtp-Source: AGHT+IFd8x0H8zGsLYtjNJ4aBzqtjI2jt2gS0R+OAV0KCKVrV6mSYXB837yeQV1UuybSdPNilJa6ig==
X-Received: by 2002:a05:6512:201c:b0:508:266a:e85f with SMTP id a28-20020a056512201c00b00508266ae85fmr25003406lfb.1.1699393875014;
        Tue, 07 Nov 2023 13:51:15 -0800 (PST)
Received: from [172.30.205.109] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id i27-20020a0565123e1b00b00507d219596dsm465396lfv.268.2023.11.07.13.51.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 07 Nov 2023 13:51:14 -0800 (PST)
Message-ID: <bdf6be0b-c137-48ce-8a3f-ab74bced6f87@linaro.org>
Date: Tue, 7 Nov 2023 22:51:12 +0100
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
 <ef377506-4132-4805-a76e-18f241afe319@linaro.org>
 <CAOX2RU4K67evm10giQvF1rcfqTfR+e--KQT3ZePoHQoqASv_fg@mail.gmail.com>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <CAOX2RU4K67evm10giQvF1rcfqTfR+e--KQT3ZePoHQoqASv_fg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 10/31/23 10:01, Robert Marko wrote:
> On Mon, 30 Oct 2023 at 22:12, Konrad Dybcio <konrad.dybcio@linaro.org> wrote:
>>
>> On 30.10.2023 21:37, Robert Marko wrote:
>>> On Mon, 30 Oct 2023 at 20:37, Konrad Dybcio <konrad.dybcio@linaro.org> wrote:
>>>>
>>>> On 29.10.2023 12:04, Robert Marko wrote:
>>>>> On Wed, 25 Oct 2023 at 12:45, Robert Marko <robimarko@gmail.com> wrote:
>>>>>>
>>>>>> IPQ6018 has GDSC-s for each of the USB ports, so lets define them as such
>>>>>> and drop the curent code that is de-asserting the USB GDSC-s as part of
>>>>>> the GCC probe.
>>>>>>
>>>>>> Signed-off-by: Robert Marko <robimarko@gmail.com>
>>>>>
>>>>> Unfortunately, after testing on multiple devices I hit the same GDSC
>>>>> issue I had a long time ago
>>>>> that was the reason I did not send this upstream.
>>>>> It seems that USB3 port GDSC (USB0 GDSC in code) works just fine,
>>>>> however the USB2 one
>>>>> (USB1 GDSC in code) it is stuck off and USB2 port will fail due to this:
>>>>>      1.607531] ------------[ cut here ]------------
>>>>> [    1.607559] usb1_gdsc status stuck at 'off'
>>>>> [    1.607592] WARNING: CPU: 0 PID: 35 at gdsc_toggle_logic+0x16c/0x174
>>>>> [    1.615120] Modules linked in:
>>>> Can you dump GDSCR (the entire 32-bit register) at boot and when toggling?
>>>
>>> Sure, here it is:
>>> [    0.023760] qcom,gcc-ipq6018 1800000.gcc: reg: 0x3e078 val: 0x8222004 init
>>> [    0.023782] qcom,gcc-ipq6018 1800000.gcc: reg: 0x3f078 val: 0x8222004 init
>>> [    0.988626] qcom,gcc-ipq6018 1800000.gcc: reg: 0x3f078 val:
>>> 0x8282000 before toggle
>>> [    1.202506] qcom,gcc-ipq6018 1800000.gcc: reg: 0x3f078 val:
>>> 0x8282000 after toggle
>>> [    1.207208] qcom,gcc-ipq6018 1800000.gcc: reg: 0x3e078 val:
>>> 0xa0282000 before toggle
>> Any chance
>>
>> .en_few_wait_val = 0x2
>>
>> (turning BIT(19) into BIT(17))
>>
>> will make a difference?
> 
> Sadly, it makes no difference and GDSC status bit newer comes up which is
> rather weird as USB0 one seems to work just fine.
What if you add clk_ignore_unused?

Konrad

