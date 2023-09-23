Return-Path: <devicetree+bounces-2664-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C0127AC1A7
	for <lists+devicetree@lfdr.de>; Sat, 23 Sep 2023 14:03:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 368EB1C208A8
	for <lists+devicetree@lfdr.de>; Sat, 23 Sep 2023 12:03:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 79B03171D2;
	Sat, 23 Sep 2023 12:03:13 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EFDC63A1
	for <devicetree@vger.kernel.org>; Sat, 23 Sep 2023 12:03:10 +0000 (UTC)
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com [IPv6:2a00:1450:4864:20::12b])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 02DB61B3
	for <devicetree@vger.kernel.org>; Sat, 23 Sep 2023 05:03:08 -0700 (PDT)
Received: by mail-lf1-x12b.google.com with SMTP id 2adb3069b0e04-5043a01ee20so3435681e87.0
        for <devicetree@vger.kernel.org>; Sat, 23 Sep 2023 05:03:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695470587; x=1696075387; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=f55qP7nCVYbXurKDZckzIAMBIRtqowALRh+W0NZh5Nc=;
        b=zbmwnZLmbWrAjWaROPIfiAa8xavQ9/OM6jfWAqBDe1xbJZK4GleV5bSmf4J1NmIl+r
         Y2mFCyJZ8bJ59SE5jbKCwhzB5vwBVQGzJtDQRAR2MhDBjepMPCdplsQicBonxVdeDMK6
         dJB9Fuh9wRUTpRfFTX7nIef4S9pb4HDkUu1aEB9g7hcew1nWVbwmADMEjeMNNzjeNldq
         9js6h7L4i+QhqjgdOc8WZses/xySWMfi9qPX0+N1wJInD246wM4GwuzTiv+iE0jzS2/D
         DXhUJc8mH/SajaShSfy3l1IFtNPBwjG6Deeo7tu6FgtsqzQMsVxbTTnjDOWOQwWo2cyU
         7Kdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695470587; x=1696075387;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=f55qP7nCVYbXurKDZckzIAMBIRtqowALRh+W0NZh5Nc=;
        b=f7Ur6TzW3kTaypBijYVzioB3ARZR81FBSs7rzzFSzs2rmCi93ZgAS88HilTFYUJq2J
         MnZ8+k9vvnXfkeV51mZJAUxX/b32LMQiw3ddIP97ROp+3onzM5/K4cr/DLXnM9wsR2h4
         WeRl8V7smt/EoAv3PrUc6FCo+mzHc8T0cS5NfxMOxxu2ghCTR15sjVRepkqhpNjXUbLC
         Sxl//eA+OdX1v7DrG1YYol9OXNDmFlI2kyHfFVQnZK1FcmvviduxbxD1rAZRysVVz4YK
         MFbNj9u2ZWeYyY4UlT3J7y8I0WM31g8DfUXxfD02blGQ9Mzzyaj6fuEkIYYgQXxOXVhK
         X22g==
X-Gm-Message-State: AOJu0YyYMss3epjJmMhV+8CWG0Jo1AxhIdlR/k/r26toSy37oRsgF1Cv
	QERr/Z+VZSOZ662AaSZRtcFQLA==
X-Google-Smtp-Source: AGHT+IFMHyw3oyV/wPERpsJHswm4pIY5M0fNziIV/0COuSfToqBWfJ3sEzb8zWNZJEh87HB5E+edrQ==
X-Received: by 2002:a05:6512:2812:b0:503:1913:ed8e with SMTP id cf18-20020a056512281200b005031913ed8emr1848786lfb.61.1695470586790;
        Sat, 23 Sep 2023 05:03:06 -0700 (PDT)
Received: from [192.168.1.110] (abyk237.neoplus.adsl.tpnet.pl. [83.9.30.237])
        by smtp.gmail.com with ESMTPSA id s6-20020a19ad46000000b004fe15a2f0f6sm1065533lfd.62.2023.09.23.05.03.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 23 Sep 2023 05:03:06 -0700 (PDT)
Message-ID: <a26911e0-c77b-1eee-5f85-1491b83acd10@linaro.org>
Date: Sat, 23 Sep 2023 14:03:05 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH 0/2] Small style fixes in msm8974.dtsi
To: Luca Weiss <luca@z3ntu.xyz>, ~postmarketos/upstreaming@lists.sr.ht,
 phone-devel@vger.kernel.org, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20230627-msm8974-sort-v1-0-75c5800a2e09@z3ntu.xyz>
 <2899653.e9J7NaK4W3@z3ntu.xyz>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <2899653.e9J7NaK4W3@z3ntu.xyz>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net



On 9/22/23 18:59, Luca Weiss wrote:
> On Dienstag, 27. Juni 2023 21:45:12 CEST Luca Weiss wrote:
>> While making sure the nodes are sorted correctly, I also noticed that
>> some lines are wrongly indented. Fix both.
>>
>> Signed-off-by: Luca Weiss <luca@z3ntu.xyz>
>> ---
>> Luca Weiss (2):
>>        ARM: dts: qcom: msm8974: replace incorrect indentation in interconnect
>> ARM: dts: qcom: msm8974: sort nodes by reg
>>
>>   arch/arm/boot/dts/qcom/qcom-msm8974.dtsi | 80
>> ++++++++++++++++---------------- 1 file changed, 40 insertions(+), 40
>> deletions(-)
>> ---
>> base-commit: 53cdf865f90ba922a854c65ed05b519f9d728424
>> change-id: 20230627-msm8974-sort-e34b28f10a34
>>
>> Best regards,
> 
> Hi Bjorn,
> 
> also ping on this one. I didn't check again if it now conflicts with -next (as
> pointed out by Konrad a while ago), if it does let me know and I'll resend.
git fetch linux-next
git checkout linux-next/master
b4 shazam <msgid>

if retval == 0:
	ping
else
	resend

this only takes a couple seconds and saves you the burden of sending
an email and Bjorn of checking ^^

Konrad

