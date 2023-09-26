Return-Path: <devicetree+bounces-3565-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 635537AF486
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 21:56:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 690471C203B2
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 19:56:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D76B84998A;
	Tue, 26 Sep 2023 19:56:22 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3278F41E2A
	for <devicetree@vger.kernel.org>; Tue, 26 Sep 2023 19:56:21 +0000 (UTC)
Received: from mail-lj1-x230.google.com (mail-lj1-x230.google.com [IPv6:2a00:1450:4864:20::230])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 872F2121
	for <devicetree@vger.kernel.org>; Tue, 26 Sep 2023 12:56:16 -0700 (PDT)
Received: by mail-lj1-x230.google.com with SMTP id 38308e7fff4ca-2c012232792so163556421fa.0
        for <devicetree@vger.kernel.org>; Tue, 26 Sep 2023 12:56:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695758175; x=1696362975; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ZWwru9Tps9HZuVOzGRrxWEvHqJ8rz14pCmAeXDoZTt4=;
        b=oyDlSWxP4l/wAIekY45zNBEVZHyh5loCfQv/ZLOSlUft4Hd6DjG+VcmwafNx4Jt4Gb
         j0TnwWEzESAqxQfDG10WLsiY3WQEcjkthdol7FVC2mmHB4pF/DUhMPNK1vzXC7l2AayG
         kAhD02GonUCSTAL6jLQKjzgJJSwjRjT7vZBgr6uOwal/cJuMhzeCAKPnvRKVi8ys5fdF
         VrVwodsz7V1B825eZsjivVMkRN/JVOUDkB1rgYJ10nNeZ67UkUVmh/IYWH+3aESmMRS1
         ZjL6w9UH6MqzxUSRoc5BuXWRS5zugvbhgZ/n48Fz8jRpPzUBs0H0BwbBERjdjqZQ5NAn
         ImrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695758175; x=1696362975;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ZWwru9Tps9HZuVOzGRrxWEvHqJ8rz14pCmAeXDoZTt4=;
        b=frmDD8KMku9UzruXrI2Bh7CmG8wR8/F3Cez89GbdbPayfuWMds7fSfPgntvNERX2CA
         K9sCU3P2WPkb/V1eWd49ZMxg5VVRNN/v4pEPWirC18nFLLjftf0OKNHo24CNWlw7ZFRP
         FwGIX3FtHppoYajc7yjrUcnJCA+Xe5lZLxM9BK6bkqWWztbrBD7SgIj7M2yIKEjIAvdd
         f6Zg6nF1Qd0on96xbiRim/ddFkGf8zjRXm2QDcf4zIOlwprFag+PF28lqLklY0AXMrOO
         Qpu8rAkpHYEbOeW+pJBoUHwPuiJHedgX0J62MnRhpFFaZ+LmTSlcm3is28yrrNkJ45/O
         z2bg==
X-Gm-Message-State: AOJu0Ywzf6Yd5kq5agKzASACgIWcPDJ6+ORd5/cMxGEECetIVJXniKBl
	Q7+a64j3Byd0szVQavyKgjuRgw==
X-Google-Smtp-Source: AGHT+IF/n55V2ruGDazD2dr+p7at0YbpTrosrtedX3N1FGnJ0vXRFBHWAZ/JMeQtlsUVSoG4I8QUEg==
X-Received: by 2002:a2e:8256:0:b0:2c0:158f:8133 with SMTP id j22-20020a2e8256000000b002c0158f8133mr39125ljh.28.1695758174694;
        Tue, 26 Sep 2023 12:56:14 -0700 (PDT)
Received: from [192.168.33.189] (178235177023.dynamic-4-waw-k-1-1-0.vectranet.pl. [178.235.177.23])
        by smtp.gmail.com with ESMTPSA id v6-20020a170906380600b0099c53c4407dsm8109693ejc.78.2023.09.26.12.56.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 26 Sep 2023 12:56:14 -0700 (PDT)
Message-ID: <278ac134-992e-460a-b37a-60a746eab107@linaro.org>
Date: Tue, 26 Sep 2023 21:56:12 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 04/13] arm64: dts: qcom: msm8916-samsung-a2015: Add sound
 and modem
Content-Language: en-US
To: Stephan Gerhold <stephan@gerhold.net>
Cc: Bjorn Andersson <andersson@kernel.org>, Andy Gross <agross@kernel.org>,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, phone-devel@vger.kernel.org,
 ~postmarketos/upstreaming@lists.sr.ht,
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 "Lin, Meng-Bo" <linmengbo0689@protonmail.com>
References: <20230926-msm8916-modem-v1-0-398eec74bac9@gerhold.net>
 <20230926-msm8916-modem-v1-4-398eec74bac9@gerhold.net>
 <2c9eda54-a90e-483a-abc2-865d82854b80@linaro.org>
 <ZRMwdRo9hAm4BO5E@gerhold.net>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Autocrypt: addr=konrad.dybcio@linaro.org; keydata=
 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
 izWDgYvmBE8=
In-Reply-To: <ZRMwdRo9hAm4BO5E@gerhold.net>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

[...]

>>> +
>>>  &blsp_i2c2 {
>>>  	status = "okay";
>>>  
>>> @@ -243,6 +258,13 @@ &gpu {
>>>  	status = "okay";
>>>  };
>>>  
>>> +&lpass {
>>> +	dai-link@3 {
>>> +		reg = <MI2S_QUATERNARY>;
>>> +		qcom,playback-sd-lines = <1>;
>>> +	};
>>> +};
>> Is that not status = reserved?
>>
> 
> Correct. This is here to simplify switching to the modem-bypass audio
> routing if someone does not need (or want) the modem. The direct audio
> path with the LPASS drivers tends to be more reliable and configurable
> (especially wrt bit formats, sampling rates, latency, channels etc).
> I know that at some point this helped someone who tried to use an old
> phone as some kind of portable musical instrument / synthesizer.
> 
> It's not too obvious that these definitions would be needed when making
> those changes (because devices using the standard SD lines (i.e <0>) do
> not need it). If you forget about this you get non-functional audio with
> no error or any hint what could be wrong.
> 
> To simplify switching between the different audio routing options, the
> lk2nd bootloader actually has an option to do this transformation in the
> DTB automagically during boot. It's sort of like a DTB overlay that
> disables the QDSP6 audio path and enables this node instead. The DAI
> links are also adjusted where necessary.
> 
> Do you think a comment would help here?
I'd say a comment would be necessary here :D

While I understand this use-case, I believe this is better suited
for an actual DTBO or something entirely kept inside lk2nd.
Otherwise this looks very confusing to an outside reader.

Konrad

