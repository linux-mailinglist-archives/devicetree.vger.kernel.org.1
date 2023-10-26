Return-Path: <devicetree+bounces-12241-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5982A7D8897
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 20:54:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id D68FDB210A5
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 18:54:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E3BDC3AC02;
	Thu, 26 Oct 2023 18:54:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="FfBPuK+L"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85BD21D68D
	for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 18:54:05 +0000 (UTC)
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com [IPv6:2a00:1450:4864:20::131])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1FE8E1A5
	for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 11:54:04 -0700 (PDT)
Received: by mail-lf1-x131.google.com with SMTP id 2adb3069b0e04-507f1c29f25so1771384e87.1
        for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 11:54:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698346442; x=1698951242; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=YN4RVHkxUHXpdD2Tu1w8w0WncGzqflUXO4856b5/210=;
        b=FfBPuK+LEbFxll/KM9UaifqudMjDEYkvInRkTT0BW7Mf0s5xRQPqNkINswjREV9jdw
         C9Y+Ks88ZL1DEJFiHHEFMmqapItWOban9DMCTaBlzLA7s/kDlI4+UqeySlYtR/bvunvQ
         yPzsbtFRi2k15XtSNRoAL3NqD64Lhrk4dBFHWX6kwfUPi/DFn0FP+rYwNfKjEnqTwK9W
         ICczBIODum5fW4q264eMYDGJAKs5HtyhVRYetsf3MbB++Pg6s/lrnmGhrn8DH+mgf4Tx
         ygARfQEvO7Et4cNrYK+WOilo9lS99B1ndc1mGdrki2YD7FAcFEc1etSjTjgZhVO8eU4d
         6y+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698346442; x=1698951242;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=YN4RVHkxUHXpdD2Tu1w8w0WncGzqflUXO4856b5/210=;
        b=wgxgFjM+5ZRoIU0p2uUJ3rhfmzmUPzzJ/ytqt3cLlTrMNfMY0+dgIZSx1MgdCM5snD
         TwnnsKJaGAxDAKqQ9RVhu3ZsONh/wXQJpyUO/MvDwVXX1zMOX4yDFTrKNkkbtYuAc/Gt
         ybmypUTzt5Fn3FqP2Ty5Ld5T5RZx+YSX1YNxK9nyebMOOvZwb8eGWnOpdmy7cnCLSmtk
         r4oZHsA2Zgj6zPRVsbD5koJ07LUvh4POGzlcN/cG5KCHZYqoqkBIwb7R6BaufuketRGt
         55WIpehJrcVfRQD+HFv7lxWpVzjWDXBLYX0oK1Y5N35P9kfLHXXDTkMy1HBjy/0lZ2jv
         DLdA==
X-Gm-Message-State: AOJu0YzCC9JoYpEDAgL5gdmGs1w1dH4E0669KDk/klIhjNYMBq6QtHXz
	duiej8KH6Y/jI+M5mq5uPq2WbIiVbTz4O7SabdSmiw==
X-Google-Smtp-Source: AGHT+IElLwSk+F6Ttzd0DDTOv89uu1+MwsSejU2BrdRUTggcph0gtzc9myGEzhEVaMOVzTGyNim/5A==
X-Received: by 2002:a19:434d:0:b0:503:655:12e7 with SMTP id m13-20020a19434d000000b00503065512e7mr170306lfj.62.1698346442358;
        Thu, 26 Oct 2023 11:54:02 -0700 (PDT)
Received: from [172.30.205.8] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id h28-20020a0565123c9c00b00507a96d17b3sm3057580lfv.237.2023.10.26.11.54.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Oct 2023 11:54:01 -0700 (PDT)
Message-ID: <f3c215a3-579a-4b4f-92bf-092c91234180@linaro.org>
Date: Thu, 26 Oct 2023 20:54:00 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/3] arm64: dts: qcom: pm8916: Add BMS and charger
Content-Language: en-US
To: Nikita Travkin <nikita@trvn.ru>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Lee Jones <lee@kernel.org>,
 Stephen Boyd <sboyd@kernel.org>, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 ~postmarketos/upstreaming@lists.sr.ht
References: <20231023-pm8916-dtsi-bms-lbc-v2-0-343e3dbf423e@trvn.ru>
 <20231023-pm8916-dtsi-bms-lbc-v2-2-343e3dbf423e@trvn.ru>
 <3dff444b-c439-4c40-9d21-1e390f449840@linaro.org>
 <b9c7f8662e4c02a4f9f275d27469f3be@trvn.ru>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <b9c7f8662e4c02a4f9f275d27469f3be@trvn.ru>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit



On 10/24/23 11:29, Nikita Travkin wrote:
> Konrad Dybcio писал(а) 24.10.2023 13:34:
>> On 10/23/23 08:20, Nikita Travkin wrote:
>>> pm8916 contains some hardware blocks for battery powered devices:
>>>
>>> - VM-BMS: Battery voltage monitoring block.
>>> - LBC: Linear battery charger.
>>>
>>> Add them to the pmic dtsi so the devices that make use of those blocks
>>> can enable them.
>>>
>>> Signed-off-by: Nikita Travkin <nikita@trvn.ru>
>>> ---
>>>    arch/arm64/boot/dts/qcom/pm8916.dtsi | 48 ++++++++++++++++++++++++++++++++++++
>>>    1 file changed, 48 insertions(+)
>>>
>>> diff --git a/arch/arm64/boot/dts/qcom/pm8916.dtsi b/arch/arm64/boot/dts/qcom/pm8916.dtsi
>>> index f4de86787743..4b2e8fb47d2d 100644
>>> --- a/arch/arm64/boot/dts/qcom/pm8916.dtsi
>>> +++ b/arch/arm64/boot/dts/qcom/pm8916.dtsi
>>> @@ -41,6 +41,35 @@ watchdog {
>>>    			};
>>>    		};
>>>    +		pm8916_charger: charger@1000 {
>>> +			compatible = "qcom,pm8916-lbc";
>>> +			reg = <0x1000>, <0x1200>, <0x1300>, <0x1600>;
>>> +			reg-names = "chgr", "bat_if", "usb", "misc";
>>> +
>>> +			interrupts = <0x0 0x10 0 IRQ_TYPE_EDGE_BOTH>,
>>> +				     <0x0 0x10 5 IRQ_TYPE_EDGE_BOTH>,
>>> +				     <0x0 0x10 6 IRQ_TYPE_EDGE_BOTH>,
>>> +				     <0x0 0x10 7 IRQ_TYPE_EDGE_BOTH>,
>>> +				     <0x0 0x12 0 IRQ_TYPE_EDGE_BOTH>,
>>> +				     <0x0 0x12 1 IRQ_TYPE_EDGE_BOTH>,
>>> +				     <0x0 0x13 0 IRQ_TYPE_EDGE_BOTH>,
>>> +				     <0x0 0x13 1 IRQ_TYPE_EDGE_BOTH>,
>>> +				     <0x0 0x13 2 IRQ_TYPE_EDGE_BOTH>,
>>> +				     <0x0 0x13 4 IRQ_TYPE_EDGE_BOTH>;
>>> +			interrupt-names = "vbat_det",
>>> +					  "fast_chg",
>>> +					  "chg_fail",
>>> +					  "chg_done",
>>> +					  "bat_pres",
>>> +					  "temp_ok",
>>> +					  "coarse_det",
>>> +					  "usb_vbus",
>> So, both the charger and the USBIN driver use the same irq? :/
>>
> 
> AFAIU the usbin extcon driver pretty much just tracks the state
> of the IRQ to report extcon. It happens to assume the same part
> of the pmic though, yes, which also means there will be no user
> that would enable both charger and vbus extcon, since charger
> driver provides this functionality as well.
So, should USBIN be removed from PM8916 dt since it's essentially
a part of the charger block?

Konrad

