Return-Path: <devicetree+bounces-13137-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id C9E0C7DCAF5
	for <lists+devicetree@lfdr.de>; Tue, 31 Oct 2023 11:33:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 30D55B20DE7
	for <lists+devicetree@lfdr.de>; Tue, 31 Oct 2023 10:32:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 88F88199A0;
	Tue, 31 Oct 2023 10:32:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="BXwyC3mq"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDBAE11C97
	for <devicetree@vger.kernel.org>; Tue, 31 Oct 2023 10:32:55 +0000 (UTC)
Received: from mail-lj1-x22e.google.com (mail-lj1-x22e.google.com [IPv6:2a00:1450:4864:20::22e])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E364C102
	for <devicetree@vger.kernel.org>; Tue, 31 Oct 2023 03:32:51 -0700 (PDT)
Received: by mail-lj1-x22e.google.com with SMTP id 38308e7fff4ca-2c4fe37f166so75622621fa.1
        for <devicetree@vger.kernel.org>; Tue, 31 Oct 2023 03:32:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698748370; x=1699353170; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=s3jZcIFTiVk4U0mut9NfuVk6TuKC3aBgUlhNnAyeUbk=;
        b=BXwyC3mqgpHmGV9yKlzuKjoVrlUF6y+gjyWa2NsA2RiFD9XaByIZFYdCRjhpdlCWhC
         X+6JAE97mVrV8EeXJmusBzScQbj2fKmj3SzqFP6eqIF/nEspX+lvwjGDvANdFLIngOqZ
         2zaR2GEhqGHDKrztpU5qDe10Cu6l1OV/o6qf1VoTJ9iQmkfhqrTGkSmPTip+eyHiImVT
         EV0fF6zV9xgoere+zmUJxjwCuO5pABZIuQ2r91kbAwUkLAQJLnOBD6wotjaUXYoqa5gT
         NnSBRbYYqHrxu0P5jFryLfdRtiPceN3P5xR2w0+/qaGHXTZm1Y6zAC72R2UoXDhWhAh0
         1IAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698748370; x=1699353170;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=s3jZcIFTiVk4U0mut9NfuVk6TuKC3aBgUlhNnAyeUbk=;
        b=F3bIkyT9VaidShvHySfa4klfdtU74b3Yp4vsMHpe61MJ/Cbw03rDTIBHb6LZHPmqAn
         HA72Utpt4KOumFeIx0t7gaR43k3iQhLaNAqNjc5ntxtQgthZVQ7aK+mt6rqF0vC7awrg
         tD5cKciDp9gxz8N86IzaaC7CAX5y9wLOSk8lfL26UiZuScp8vQVB42CQACLgC/VDOEQ/
         aWkL4zkj+1OzKy19rx4F28dp1azSllC1QXyJQaQMEPUiBhSbf0DAqcpaVcAGjLR3LHQ7
         ev/S/FgXYRQdZp3V37myBtBcLSxhnlNpuZAWJVuetBD/JTZ56Rgt0/SST23pFBr8JSUo
         0T2Q==
X-Gm-Message-State: AOJu0Yw7gqfVWE7U6N4cVvu3VO7LuuBW4quFkXJdCm3dkjGsB7VOtNTW
	vefkOvFPSF7RODHwAuw3TwcQRA==
X-Google-Smtp-Source: AGHT+IGYiz90pguWoGGaSdBCFbG/4dYJRngJQLv7txueRvqIizz9yqUyAYSoit2OEkg4jAPhxhKkxA==
X-Received: by 2002:a05:6512:2525:b0:507:b7b7:e740 with SMTP id be37-20020a056512252500b00507b7b7e740mr15070366lfb.43.1698748370001;
        Tue, 31 Oct 2023 03:32:50 -0700 (PDT)
Received: from [192.168.143.96] (178235177091.dynamic-4-waw-k-1-1-0.vectranet.pl. [178.235.177.91])
        by smtp.gmail.com with ESMTPSA id b17-20020a056512219100b0050422588213sm171574lft.209.2023.10.31.03.32.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 31 Oct 2023 03:32:49 -0700 (PDT)
Message-ID: <ea46c1ed-401f-465d-8c5a-2628fdf79cf3@linaro.org>
Date: Tue, 31 Oct 2023 11:32:46 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 9/9] arm64: dts: qcom: qcm6490-fairphone-fp5: Enable WiFi
Content-Language: en-US
To: Luca Weiss <luca.weiss@fairphone.com>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Manivannan Sadhasivam <mani@kernel.org>,
 cros-qcom-dts-watchers@chromium.org
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Rob Herring <robh@kernel.org>, =?UTF-8?Q?Matti_Lehtim=C3=A4ki?=
 <matti.lehtimaki@gmail.com>, linux-arm-msm@vger.kernel.org,
 linux-remoteproc@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20231027-sc7280-remoteprocs-v1-0-05ce95d9315a@fairphone.com>
 <20231027-sc7280-remoteprocs-v1-9-05ce95d9315a@fairphone.com>
 <12ea48bd-5022-4820-815a-89ef23ec9385@linaro.org>
 <CWMK0AQRL87L.1F9MIDVQ4J439@fairphone.com>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Autocrypt: addr=konrad.dybcio@linaro.org; keydata=
 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
 izWDgYvmBE8=
In-Reply-To: <CWMK0AQRL87L.1F9MIDVQ4J439@fairphone.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 31.10.2023 11:31, Luca Weiss wrote:
> On Mon Oct 30, 2023 at 8:26 PM CET, Konrad Dybcio wrote:
>> On 27.10.2023 16:20, Luca Weiss wrote:
>>> Now that the WPSS remoteproc is enabled, enable wifi so we can use it.
>>>
>>> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
>>> ---
>>>  arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts | 4 ++++
>>>  1 file changed, 4 insertions(+)
>>>
>>> diff --git a/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts b/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts
>>> index d65eef30091b..e7e20f73cbe6 100644
>>> --- a/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts
>>> +++ b/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts
>>> @@ -713,3 +713,7 @@ &venus {
>>>  	firmware-name = "qcom/qcm6490/fairphone5/venus.mbn";
>>>  	status = "okay";
>>>  };
>>> +
>>> +&wifi {
>>> +	status = "okay";
>> qcom,ath11k-calibration-variant?
> 
> What value would I put there for my device? Based on existing usages
> (mostly for ath10k) I'd say "Fairphone_5"?
> 
> And you mean I should add this property in dts before even looking into
> the firmware/calibration side of it?
This is basically a "compatible" for the board file, I think Fairphone_5
makes sense here, perhaps Dmitry can confirm

Konrad

