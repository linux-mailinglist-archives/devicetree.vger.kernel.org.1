Return-Path: <devicetree+bounces-209351-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id CDCF7B35F22
	for <lists+devicetree@lfdr.de>; Tue, 26 Aug 2025 14:30:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8162F366AC3
	for <lists+devicetree@lfdr.de>; Tue, 26 Aug 2025 12:30:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C912432A3C8;
	Tue, 26 Aug 2025 12:30:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="eUJDouHc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com [209.85.208.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C84C31C1F0C
	for <devicetree@vger.kernel.org>; Tue, 26 Aug 2025 12:30:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756211449; cv=none; b=FlojdrrgbLuQKuPqN4sl8AWby64jJoSu0B7KemXGsosRpMvrRWVwvXxoVkBLcAatrZSlHK+lAfFkNZLmCPiso1pvO+fUMeZW1f+pd6oeXERmA+rkgPpXnOaYJTmA3thbuRG5n+h1Sh16CG9uBVDjfKGTZSWdvJuIc3deX1p2Gyw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756211449; c=relaxed/simple;
	bh=ma5t6YXeVJpIipfm5/CG8lKCSELEwhRTnwbTvkULl+I=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=bAqi0pUqMfnx/QuCJ+dB9o9O4RUNpvsJHJmXSM0nsdXpcmfmlcrX8Sk093bCIBjLTSLTcPXjjlgZqwEwB37pgU0DKnqkT+H/YWI2CUDA14OOJnBYWTfjaXWnr4QsQbAvt14FZtOu8hZp/vhPXGmwnoiMScrDym2CmIoyvKt/1wQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=eUJDouHc; arc=none smtp.client-ip=209.85.208.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f54.google.com with SMTP id 4fb4d7f45d1cf-61c26f3cf6fso7929216a12.1
        for <devicetree@vger.kernel.org>; Tue, 26 Aug 2025 05:30:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1756211445; x=1756816245; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=pkoS1mgQUsuKKrSkoR2eKBjtP1PvOwI34/oZkFfI/4w=;
        b=eUJDouHc+6pKfunKmb2yl59eCyT5uiPyLf10a8OP59YkRIz5YsPcDq8ijoVD34+UNA
         iOz4HP5YwiVxCVltnDLrUwIPgr++iogxRWNcgGSAaKT6GRtq7t/Q1PcNXtrTS5q3E08A
         pI6qo9UhBpTrZ1NNt3Cks7MLqQuSp+jWa1vx3huxgfp7gasrKP07VuAZbfVII5hqC6OJ
         lzatrkgirbOx9nvF8t7orj8LhKTrq2BylRP5wG9zYNfpRx4sQlCvgE6Wki44PBgb43+s
         8BMfmSYMYPfY8ltThU5/j2rZZBa5HS9A3VeEQAEfU3x6FM4t8xg5aA8jWGb/Md0WiVhV
         3Y2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756211445; x=1756816245;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=pkoS1mgQUsuKKrSkoR2eKBjtP1PvOwI34/oZkFfI/4w=;
        b=vdpiB6QQZRPoIhx2tRj0bIz0G2P60xAi7Wzhf6AhZooB7e4B2PcMMsiZx77PM4PYAc
         RqvBO9pdaPgh/Sx3rff9BNguDVv+yoCRPaEpRcqGa/zo7rA6XPiFsL2855kg6l6V8uq4
         efi5zdu79x/RTN/DyVyCdiqKAtgXn7IObPD+bOMYQAX/1mGG5v7ij7oVCPv2ZaimCRWC
         JobwLk0dV3jT9vh9MHmgd+tKLj1PSorPSVpRA4ZYr2/gAVK89KXbPgonGPHCBTEy9Kzg
         H3YsDM0MLD0SdRuCOMsu4TyZgyIhMgwIueKj0fZ5RSKQszzpRvQzGYdxBSCx4LfRBNxX
         gwBA==
X-Forwarded-Encrypted: i=1; AJvYcCUrRcdu7prhAPKkM+5O/YlEQ3WcYZGVjxuFT6ZSLTbMonaN94zrmdMO0UDGfP80mhuFqs02uAKv9uOb@vger.kernel.org
X-Gm-Message-State: AOJu0YxwkPR0oOsiaBTRDhitJ1LvsK6alhYZTWf5B491guG5Zfl+UPTN
	e7kxa9+Hu2OdGRCZ1/N3BW/MklhxZD7gr/YLDx3pbX1TEDnDZxWPdTNccICQbtb89mA=
X-Gm-Gg: ASbGncvuHD57PvfqJN4aPsV47tWct6XdNPNKiJNg8h+VjBcd3bkA9mMrolf+zlI/eGg
	Y0XeL3y/DG1MCTjcbAbtfRvBtRqfGU9Zx4dSyJ51HNDpw9rpJeMOmm7WhTfAhu494VzBBGOvjQJ
	LkDbnXJ+z5O+R8rX4bza3nLsQx4gGonWCeHlT5qvXWJs6sSKJ9jiFvcJd+zoT9cdlYQGTfwzuHr
	sgg1lZmj6ON/SkKFWYQpJDEfHM6b8MdY2XEeUIceArPX2SVuylvjI69kKVZWoWF49Yc1RTRz0q4
	pTtvF4a9aqGlIwUVJ0iWdQ4L1dI5YREk0IelH13NQ5l0tTvw+o9YZisw96P7x2SXWyPhRaexggk
	3a9fBlCUyEAGAxPUP5ZnhBkugDLKx2aKfdZa/eOUbvdAFGsDDFPj9J500NBXGiS0JyU1lLKo588
	XmvjCJv5IjCVKtuDAWYN+DGlgVA4PJFBirviO59vUCUQ==
X-Google-Smtp-Source: AGHT+IFoNo4sUuPVz97d4PkLZSbI/f1UFt/iMJnmEAyKXCStBHMmMzr2bqFoTjxJ9/MLfPPKQLWMCg==
X-Received: by 2002:a05:6402:40c4:b0:61c:9cd7:e5b3 with SMTP id 4fb4d7f45d1cf-61c9cd7e885mr392714a12.28.1756211444652;
        Tue, 26 Aug 2025 05:30:44 -0700 (PDT)
Received: from [172.31.14.217] (static-243-216-117-93.thenetworkfactory.nl. [93.117.216.243])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-61c3172ef02sm7148078a12.39.2025.08.26.05.30.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 26 Aug 2025 05:30:44 -0700 (PDT)
Message-ID: <d828855f-1371-4a0d-a636-b04de47376a7@linaro.org>
Date: Tue, 26 Aug 2025 14:30:42 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 7/8] serial: qcom-geni: Enable PM runtime for serial
 driver
To: Praveen Talari <quic_ptalari@quicinc.com>,
 Krzysztof Kozlowski <krzk@kernel.org>,
 Alexey Klimov <alexey.klimov@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
 linux-serial@vger.kernel.org, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 dmitry.baryshkov@oss.qualcomm.com, psodagud@quicinc.com, djaggi@quicinc.com,
 quic_msavaliy@quicinc.com, quic_vtanuku@quicinc.com,
 quic_arandive@quicinc.com, quic_cchiluve@quicinc.com,
 quic_shazhuss@quicinc.com, Jiri Slaby <jirislaby@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
 neil.armstrong@linaro.org, srini@kernel.org
References: <20250721174532.14022-1-quic_ptalari@quicinc.com>
 <20250721174532.14022-8-quic_ptalari@quicinc.com>
 <DC0D53ZTNOBU.E8LSD5E5Z8TX@linaro.org>
 <577d05d4-789b-4556-a2d2-d0ad15b2c213@quicinc.com>
 <dcad137d-8ac9-4a0b-9b64-de799536fd32@kernel.org>
 <DCC8WLEKNS8W.9GAJHQGYPZIY@linaro.org>
 <8689a8b4-75cb-4f01-ad6c-0a8367851257@kernel.org>
 <DCC9B5C7SSU2.GRI1UY0VUDHF@linaro.org>
 <890ede8a-c049-4332-8f62-5dce2fa0f77b@kernel.org>
 <5ae730f4-5337-49f8-8bec-8605a2495f37@quicinc.com>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-US
In-Reply-To: <5ae730f4-5337-49f8-8bec-8605a2495f37@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 26/08/2025 11:29, Praveen Talari wrote:
> Hi Alexey/Krzysztof,
> 
> 
> On 8/26/2025 3:36 PM, Krzysztof Kozlowski wrote:
>> On 26/08/2025 11:37, Alexey Klimov wrote:
>>> On Tue Aug 26, 2025 at 10:21 AM BST, Krzysztof Kozlowski wrote:
>>>> On 26/08/2025 11:18, Alexey Klimov wrote:
>>>>>>> May i know what is testcase which you are running on target?
>>>>>>
>>>>>> Boot the board?
>>>>>>
>>>>>>> what is target?
>>>>>>
>>>>>> It is written in original report. Did you even read it?
>>>>>>
>>>>>>> Which usecase is this issue occurring in?
>>>>>>
>>>>>> Boot?
>>>>>
>>>>> FWIW, what said above by Krzysztof is correct, there is no usecase, 
>>>>> just booting the board.
>>>>>
>>>> 12 days and nothing improved, right? if this was not dropped now,
>>>> Alexey, can you send a revert? Author clearly approches stability 
>>>> with a
>>>> very relaxed way and is just happy that patch was thrown over the wall
>>>> and job is done.
>>>>
>>>>
>>>> If you do not want to send revert, let me know, I will do it.
>>>
>>> I am okay with sending revert, just trying to see if there is any 
>>> interest
>>> in fixing this.
>>
>> Any interest should have happened after 1 day of reporting linux-next
>> breakage. It has been like what? 12 days?
>>
>> That's typical throw the patch over the wall. Revert.
> 
> Really sorry for the delay.
> 
> I forgot to mention earlier that I’ve been actively investigating this
> issue across different platform SoCs. I was able to reproduce the
> problem on the SC7280.
> 
> Here’s a summary of the observed behavior:
> 
> The issue appears to originate from the qcom_geni_serial driver during
> device runtime resume. It results in a blocked IRQ thread, which in turn
> causes system instability.
> 
> The call trace suggests a deadlock scenario where the IRQ
> thread—responsible for handling wake-up events—becomes unresponsive
> while interacting with the pinctrl subsystem.
> 
> Specifically, the msm_pinmux_set_mux function attempts to invoke
> disable_irq, which is problematic when called from an IRQ thread context.
> Since the IRQ itself is a wake-up source, this leads to contention or a
> self-deadlock situation.
> 
> I have verified below diff and about to post it
> 
> diff --git a/drivers/tty/serial/qcom_geni_serial.c b/drivers/tty/serial/ 
> qcom_geni_serial.c
> index c9c52c52a98d..cb3b4febd8c2 100644
> --- a/drivers/tty/serial/qcom_geni_serial.c
> +++ b/drivers/tty/serial/qcom_geni_serial.c
> @@ -1848,16 +1848,36 @@ static int __maybe_unused 
> qcom_geni_serial_runtime_suspend(struct device *dev)
>   {
>          struct qcom_geni_serial_port *port = dev_get_drvdata(dev);
>          struct uart_port *uport = &port->uport;
> +       int ret;
> +
> +       ret = geni_serial_resources_off(uport);
> +       if(ret) {
> +               if (device_may_wakeup(dev))
> +                       disable_irq_wake(port->wakeup_irq);
> +       }
> 
> -       return geni_serial_resources_off(uport);
> +       if (device_may_wakeup(dev))
> +               enable_irq_wake(port->wakeup_irq);
> +
> +       return ret;
>   }
> 
>   static int __maybe_unused qcom_geni_serial_runtime_resume(struct 
> device *dev)
>   {
>          struct qcom_geni_serial_port *port = dev_get_drvdata(dev);
>          struct uart_port *uport = &port->uport;
> +       int ret;
> +
> +       if (device_may_wakeup(dev))
> +               disable_irq_wake(port->wakeup_irq);
> 
> -       return geni_serial_resources_on(uport);
> +       ret = geni_serial_resources_on(uport);
> +       if(ret) {
> +               if (device_may_wakeup(dev))
> +                       enable_irq_wake(port->wakeup_irq);
> +       }
> +
> +       return ret;
>   }
> 
> Thanks,
> Praveen Talari
> 
>> Best regards,
>> Krzysztof

Don't forget to include a Fixes: tag for this change.

---
bod

