Return-Path: <devicetree+bounces-1425-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D36B17A632C
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 14:38:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8BF06281E39
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 12:38:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 932C2180;
	Tue, 19 Sep 2023 12:38:02 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 526F01FA1
	for <devicetree@vger.kernel.org>; Tue, 19 Sep 2023 12:38:00 +0000 (UTC)
Received: from mail-ej1-x633.google.com (mail-ej1-x633.google.com [IPv6:2a00:1450:4864:20::633])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5DDB0F9
	for <devicetree@vger.kernel.org>; Tue, 19 Sep 2023 05:37:59 -0700 (PDT)
Received: by mail-ej1-x633.google.com with SMTP id a640c23a62f3a-9ada609bb62so721033066b.2
        for <devicetree@vger.kernel.org>; Tue, 19 Sep 2023 05:37:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695127078; x=1695731878; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ElFl2P9I49dKgc5GPio4ojq866f2cNZ+vD/OQLMGKro=;
        b=QCUlzv6R3rLQKKKVaSdV5L7V0i20DHFDDz855oS0zFmKvifyo7+LGtVNjS8MHaoJLI
         hABKXjwTS94H44hjD20Iy8Htabheo2p4XSH0L4+4RXIvWPblkj1Qn4DHxBKHfm9T+A6f
         NZnKtPgi0Z77hpIpIOLXHgy1n8lqQxSiyEFW3Vx3YAZglTPF17S0Swoc42juYfuDsegI
         FS0BPjKftJi+3cfJn90PuA9RmVekZSo4gJMH8j3+7Bh0Yaoe9/q1N74FK/DwxR8DwFtW
         ID5Wx5iSBnYIRKVDx/dBVF/fHuueY9xTWAHI9rbqVX+WZgtc4Q6TvCl70rz0Y2w/4tii
         s4+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695127078; x=1695731878;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ElFl2P9I49dKgc5GPio4ojq866f2cNZ+vD/OQLMGKro=;
        b=XP2UAdiGD2eny+gJencU0RcwkLbT4X1mswGgjoX4/t+RmjEWcp/VGiD37DOrJ/snbC
         0T7gOfICN/cESmpRZVo2QvERxg9nmmCSURxYLtltR5fymaLxo5qckLgXicq758JUNCQv
         8lYsQdzg9TyxIdqzUqq+Q+5xzCw5a4hdGLmusbhV6Q5PUtNwvzMoUEuinsOJ2LnX1z5S
         M5OBYqh+l6iQ1YTO0MOm4Pbfh4u+rjjfeZtBRYSTjZhHiqeMGHufNKO0ArbBe8YyqTMV
         /EpEn/2zogNpFyhBPSy65134UiIr+4c25Q5FGlGL8vfo1Jr8dRBz4vZCz6Rdtg71o4L2
         ACcw==
X-Gm-Message-State: AOJu0YzoYl4N9KyHWqxT+J5bOmsx5PkaP4VpZi6yciu9UMQiP1X+QgWX
	y0ni1XUwcqsmLBOgTv2Y284RLw==
X-Google-Smtp-Source: AGHT+IHF+mK3Ru/oqZskjsjpAcam/b3opFYlTzcYXoOk56BMQtkD/TfxpO/C1DxDPxuKm7003vykSg==
X-Received: by 2002:a17:906:73c4:b0:9ad:bffb:2e2c with SMTP id n4-20020a17090673c400b009adbffb2e2cmr10789397ejl.39.1695127077803;
        Tue, 19 Sep 2023 05:37:57 -0700 (PDT)
Received: from [172.20.24.238] (static-212-193-78-212.thenetworkfactory.nl. [212.78.193.212])
        by smtp.gmail.com with ESMTPSA id jx10-20020a170906ca4a00b009ae3e6c342asm106371ejb.111.2023.09.19.05.37.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 19 Sep 2023 05:37:57 -0700 (PDT)
Message-ID: <463923fe-7938-ad1b-fd79-6491329289af@linaro.org>
Date: Tue, 19 Sep 2023 14:37:56 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH V2 4/4] arm64: dts: qcom: ipq5018: Add tsens node
Content-Language: en-US
To: Sricharan Ramabadhran <quic_srichara@quicinc.com>, agross@kernel.org,
 andersson@kernel.org, konrad.dybcio@linaro.org,
 srinivas.kandagatla@linaro.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 thara.gopinath@gmail.com, rafael@kernel.org, daniel.lezcano@linaro.org,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org,
 dmitry.baryshkov@linaro.org
References: <20230915121504.806672-1-quic_srichara@quicinc.com>
 <20230915121504.806672-5-quic_srichara@quicinc.com>
 <b0fe17e4-e4d8-02af-4e09-06b3930b38fe@linaro.org>
 <b40c6439-ab73-d796-589e-ffee21cedfc9@quicinc.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <b40c6439-ab73-d796-589e-ffee21cedfc9@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 19/09/2023 09:28, Sricharan Ramabadhran wrote:
> 
> 
> On 9/15/2023 6:16 PM, Krzysztof Kozlowski wrote:
>> On 15/09/2023 14:15, Sricharan Ramabadhran wrote:
>>> IPQ5018 has tsens V1.0 IP with 4 sensors.
>>> There is no RPM, so tsens has to be manually enabled. Adding the tsens
>>> and nvmem node and IPQ5018 has 4 thermal sensors (zones). With the
>>> critical temperature being 120'C and action is to reboot. Adding all
>>> the 4 zones here.
>>>
>>> Signed-off-by: Sricharan Ramabadhran <quic_srichara@quicinc.com>
>>> ---
>>>   [v2] Fixed node names, order and added qfprom cells for points
>>>        seperately to use the calibrate_common and squashed thermal_zone
>>>        nodes here
>>>
>>>   arch/arm64/boot/dts/qcom/ipq5018.dtsi | 169 ++++++++++++++++++++++++++
>>>   1 file changed, 169 insertions(+)
>>>
>>> diff --git a/arch/arm64/boot/dts/qcom/ipq5018.dtsi b/arch/arm64/boot/dts/qcom/ipq5018.dtsi
>>> index 9f13d2dcdfd5..d53aea5342e2 100644
>>> --- a/arch/arm64/boot/dts/qcom/ipq5018.dtsi
>>> +++ b/arch/arm64/boot/dts/qcom/ipq5018.dtsi
>>> @@ -93,6 +93,117 @@ soc: soc@0 {
>>>   		#size-cells = <1>;
>>>   		ranges = <0 0 0 0xffffffff>;
>>>   
>>> +		qfprom: qfprom@a0000 {
>>> +			#address-cells = <1>;
>>> +			#size-cells = <1>;
>>> +			compatible = "qcom,ipq5018-qfprom", "qcom,qfprom";
>>
>> This is a friendly reminder during the review process.
>>
>> It seems my previous comments were not fully addressed. Maybe my
>> feedback got lost between the quotes, maybe you just forgot to apply it.
>> Please go back to the previous discussion and either implement all
>> requested changes or keep discussing them.
>>
> 
>   oops, moved the compatible to first, but missed it on posting version.
>   Will fix it in V3.

What do you mean by "posting version"? If it is not the same as your Git
version, then your process is buggy. You must work on mainline tree and
send patches from that tree. Not edit patches and edit Git separately...

Best regards,
Krzysztof


