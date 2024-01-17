Return-Path: <devicetree+bounces-32823-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E885A830BDD
	for <lists+devicetree@lfdr.de>; Wed, 17 Jan 2024 18:23:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7B3592825C2
	for <lists+devicetree@lfdr.de>; Wed, 17 Jan 2024 17:23:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 24C9422609;
	Wed, 17 Jan 2024 17:23:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="X/6PgKE7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7FB3C21A0E
	for <devicetree@vger.kernel.org>; Wed, 17 Jan 2024 17:23:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705512208; cv=none; b=t5Rb9QBYkyIit17OW+cAV9v/8gXv06ZNubU34Hqko7bA5H3c5HPULQzeZFnsZEe8EqyMLjWrfr+asIbbWcOMNNIELhEuk5lmrxF1x439V0lAbXEsQlNFW60JJ6ArhQGYMEBbpCEVp3iPhxcNW2CglbAyzCoMevzrgu9uivEUvSo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705512208; c=relaxed/simple;
	bh=ksNwOf1AW+zd0/noaPs2Oap2P6xZdOxTfhNySTwR4Fw=;
	h=Received:DKIM-Signature:X-Google-DKIM-Signature:
	 X-Gm-Message-State:X-Google-Smtp-Source:X-Received:Received:
	 Message-ID:Date:MIME-Version:User-Agent:Subject:Content-Language:
	 To:Cc:References:From:In-Reply-To:Content-Type:
	 Content-Transfer-Encoding; b=T1OPWWlks1hUD1Om262ztevf76YZ44z0WnMWme4q2/HYKT0dI3hD9nTaiA9CZfkRB2ObCMUtK/3iX5tV2KAmNmvmpY14/BMxh2lTgf+indYNDxtJ6aCuK1g7nZIJ1OatNpnIJU7OSSX89dgsFHkjQQq8ZHsttNnfyiXhgq0JGns=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=X/6PgKE7; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-40e8d3b32eeso5038105e9.1
        for <devicetree@vger.kernel.org>; Wed, 17 Jan 2024 09:23:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1705512204; x=1706117004; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=nTCtMquQwSHvUe3rlom2viCrA/hRn2YuWQ9TWaWnJ4g=;
        b=X/6PgKE7eQrsnbVdcagsXJOdE5QtjMgic8EgXMQe8O8pkDTpq3UhoFaySNclm3Ks9k
         C1jX3uawqKbWRBKfkFvJaRG9Wo2BeoO5tL+TlRdOy/Ztq6+kvu8C4YUwZOMLRAnDusKc
         Fn9egyUrNtavCyKvYBtNvKkjVNQHWf/kcC/Y6AnLPLjiv3M6441g6mGrrj14AexsXVdl
         UJHy72xqDq295SduBDY5i0/cIV3/z4Lkri/tPyTngLouS9WVtVkAxnpd6ZaNNLGkrYXq
         Wl10OppT3NTw6xvA7aJ7VdVdWGDXcs1ln+qJ+VCf3nxkxQQNiw2OtLaNNOqjfIHMMj+5
         feyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705512204; x=1706117004;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=nTCtMquQwSHvUe3rlom2viCrA/hRn2YuWQ9TWaWnJ4g=;
        b=a4nkcgWosXF3k0noxyTexNs91l+I9E5K0pBkp+y4r/KNTDYFLfxtBRrbvVeG0kltS5
         QBham8q9bRCeXo4+4r/N6DRD2h+uk0frW5xjeKStMEuQI+aLmZiBIjz3Vi3w+uoST+YK
         Tcb/1baorxceRzLqPErWuMvqZ8e6OGw6Zt5a1jSpTCbqsUSXv/q8heXX7ztk03Wb1Z+t
         NnqbjHvLTL+chdD0v1mEJCef9V5W9nFEmsSNCyWiFI54QgkgMBOafA9K1/xDHU22mPhd
         WYeWwCUG4N7saefc+ni1KQMKosdgTKvh21TbMnjtKEZn0890IGlxFcD4BMkzVaw8hs1J
         rHTg==
X-Gm-Message-State: AOJu0YyVcjTkMFQZAealftNjs2IstKxpxSX/od/M6C97wUzuhOT4J9wD
	vJJrpWcFYjO9apSHR6Ycid92VzHK0CWakw==
X-Google-Smtp-Source: AGHT+IFFlacrehhEntQ4bUfUJOL0yxIor5gjgggfLwRY9ubluouFJBmzUtYn1rnyZRRNO+pA4e2wvw==
X-Received: by 2002:a05:600c:4d1f:b0:40e:76a3:6e2d with SMTP id u31-20020a05600c4d1f00b0040e76a36e2dmr2960527wmp.4.1705512203552;
        Wed, 17 Jan 2024 09:23:23 -0800 (PST)
Received: from [192.168.100.86] ([37.228.218.3])
        by smtp.gmail.com with ESMTPSA id v21-20020a05600c445500b0040e3bdff98asm26761374wmn.23.2024.01.17.09.23.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 17 Jan 2024 09:23:23 -0800 (PST)
Message-ID: <28e019ce-7612-4b10-8068-17c3fef4dba8@linaro.org>
Date: Wed, 17 Jan 2024 17:23:22 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 13/15] arm64: dts: qcom: pmi632: define USB-C related
 blocks
Content-Language: en-US
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Wesley Cheng <quic_wcheng@quicinc.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Guenter Roeck <linux@roeck-us.net>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-phy@lists.infradead.org
References: <20240113-pmi632-typec-v2-0-182d9aa0a5b3@linaro.org>
 <20240113-pmi632-typec-v2-13-182d9aa0a5b3@linaro.org>
 <1d0d325d-d15e-4e86-b8e3-9f91b99e78bf@linaro.org>
 <CAA8EJpo7qH43FyvO-N9vFH=6K3rMdPpnGp9w6pGW2cz4bMK+0g@mail.gmail.com>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <CAA8EJpo7qH43FyvO-N9vFH=6K3rMdPpnGp9w6pGW2cz4bMK+0g@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 15/01/2024 10:43, Dmitry Baryshkov wrote:
> On Mon, 15 Jan 2024 at 12:00, Konrad Dybcio <konrad.dybcio@linaro.org> wrote:
>>
>> On 13.01.2024 21:55, Dmitry Baryshkov wrote:
>>> Define VBUS regulator and the Type-C handling block as present on the
>>> Quacomm PMI632 PMIC.
>>>
>>> Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
>>> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
>>> ---
>>>   arch/arm64/boot/dts/qcom/pmi632.dtsi | 30 ++++++++++++++++++++++++++++++
>>>   1 file changed, 30 insertions(+)
>>>
>>> diff --git a/arch/arm64/boot/dts/qcom/pmi632.dtsi b/arch/arm64/boot/dts/qcom/pmi632.dtsi
>>> index 4eb79e0ce40a..d6832f0b7b80 100644
>>> --- a/arch/arm64/boot/dts/qcom/pmi632.dtsi
>>> +++ b/arch/arm64/boot/dts/qcom/pmi632.dtsi
>>> @@ -45,6 +45,36 @@ pmic@2 {
>>>                #address-cells = <1>;
>>>                #size-cells = <0>;
>>>
>>> +             pmi632_vbus: usb-vbus-regulator@1100 {
>>> +                     compatible = "qcom,pmi632-vbus-reg", "qcom,pm8150b-vbus-reg";
>>> +                     reg = <0x1100>;
>>> +                     status = "disabled";
>>> +             };
>>> +
>>> +             pmi632_typec: typec@1500 {
>>> +                     compatible = "qcom,pmi632-typec";
>>> +                     reg = <0x1500>;
>>> +                     interrupts = <0x2 0x15 0x00 IRQ_TYPE_EDGE_RISING>,
>>> +                                  <0x2 0x15 0x01 IRQ_TYPE_EDGE_BOTH>,
>>> +                                  <0x2 0x15 0x02 IRQ_TYPE_EDGE_RISING>,
>>> +                                  <0x2 0x15 0x03 IRQ_TYPE_EDGE_BOTH>,
>>> +                                  <0x2 0x15 0x04 IRQ_TYPE_EDGE_RISING>,
>>> +                                  <0x2 0x15 0x05 IRQ_TYPE_EDGE_RISING>,
>>> +                                  <0x2 0x15 0x06 IRQ_TYPE_EDGE_BOTH>,
>>> +                                  <0x2 0x15 0x07 IRQ_TYPE_EDGE_RISING>;
>> This differs from the downstream irq types:
>>
>> <0x2 0x15 0x0 IRQ_TYPE_EDGE_BOTH>,
>> <0x2 0x15 0x1 IRQ_TYPE_EDGE_BOTH>,
>> <0x2 0x15 0x2 IRQ_TYPE_EDGE_RISING>,
>> <0x2 0x15 0x3 IRQ_TYPE_EDGE_RISING>,
>> <0x2 0x15 0x4 IRQ_TYPE_EDGE_BOTH>,
>> <0x2 0x15 0x5 IRQ_TYPE_EDGE_RISING>,
>> <0x2 0x15 0x6 IRQ_TYPE_EDGE_RISING>,
>> <0x2 0x15 0x7 IRQ_TYPE_EDGE_RISING>;
> 
> I must admit, I copied the IRQs from the pm8150b rather than from the
> vendor kernel.
> 
> Bryan, any idea which set of flags is more correct?

My € says 1:1 with the downstream pmi632.dtsi

qcom,typec@1500 {
     reg = <0x1500 0x100>;
     interrupts = <0x2 0x15 0x0 IRQ_TYPE_EDGE_BOTH>,
                  <0x2 0x15 0x1 IRQ_TYPE_EDGE_BOTH>,
                  <0x2 0x15 0x2 IRQ_TYPE_EDGE_RISING>,
                  <0x2 0x15 0x3 IRQ_TYPE_EDGE_RISING>,
                  <0x2 0x15 0x4 IRQ_TYPE_EDGE_BOTH>,
                  <0x2 0x15 0x5 IRQ_TYPE_EDGE_RISING>,
                  <0x2 0x15 0x6 IRQ_TYPE_EDGE_RISING>,
                  <0x2 0x15 0x7 IRQ_TYPE_EDGE_RISING>;

     interrupt-names = "typec-or-rid-detect-change",
                       "typec-vpd-detect",
                       "typec-cc-state-change",
                       "typec-vconn-oc",
                       "typec-vbus-change",
                       "typec-attach-detach",
                       "typec-legacy-cable-detect",
                       "typec-try-snk-src-detect";
};



