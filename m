Return-Path: <devicetree+bounces-247078-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 13BFACC454F
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 17:36:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 82B0130894A4
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 16:29:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 70719364043;
	Tue, 16 Dec 2025 15:23:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="JtM7/pmv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65394364038
	for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 15:23:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765898639; cv=none; b=MOYczwwJjl7Z2MGRGlog7Hmf6q5Cv+m6uH+wATY9Xs/vbqxT4GeFn7NmH25EaI2inuGMW00P4QOxojigse+geN1pq+S9wPWqU4QDP33LHaLRLQVXafWGSqCOv1wRR3NL7LXIHjl7HnU52D6x43NC5DHSVEAV27EtKBngf3lfqYI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765898639; c=relaxed/simple;
	bh=vAIUzpoHMjytN7Rz/48aH/uHNy/JzgqzYyhfXala8SY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=opafyIqfZu8jXpveY4RYfPyfE5TkHBItR7R09vNWyZFbg97iF12Se6NnGZRMH9OgCXK4S7k4/2ZPQLQEc3kxN3xP6PnBmY8CMIOYuu5eQUg0Ip72mFhWLRHpqzV837eUmPUtLFQiiiXQQWzxfbTAEavZvmEylDVuVDFZuaZTyy4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=JtM7/pmv; arc=none smtp.client-ip=209.85.167.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-597c366f2feso510067e87.3
        for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 07:23:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1765898635; x=1766503435; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=i2J5a4QLlp1gIHPWSsgnLzMZagpwihm0V+U4IQ8hkHA=;
        b=JtM7/pmv4UcY9jganGs9Y13EyL7i08fV8rQzKsmUPCfnQdDOkQyDZl05qpkzCv77TN
         eCtH2/hrSqMiiYf/UBtJScf3Ey0DhUP+8rO4/ScQOF+R0xzLi8OD0J7ijWbk4aKwFt7n
         WipjFgBy+I/DCdTrnA6qRlgx2sK2YmcfLpiMrmvlNEko4tIvH132pcZ+6I31EDWWcehv
         s2YWAnG9EXEAoUtnciSontVikcqUJJYdMi18nrZiIO0bENoW6t+sIJw8inbN+kULFw6B
         Vz2e5tLkl8raiid9BW8HnaqL0iMGUTUWvr+uvBchI1EWdYAFCoVU0TKe0e662QhGYRt0
         rEmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765898635; x=1766503435;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=i2J5a4QLlp1gIHPWSsgnLzMZagpwihm0V+U4IQ8hkHA=;
        b=FELiZggtlgOiIxhKGCnpzGGzbW2xsoLKcSpIPvPXmsmkJHovM5cemma7PDebhQxSIe
         4oT/xtA7RtGVx2pTyHi99bbnnodsKW+qUV2mGFwwazcDF7D0bOftCXsBzVNxfDsk6C1i
         7BIcUyzQqDzEXBGCG3Ph1E7FtoQbEAJgqZai036kMb2ljXr6UhwLwajw43ve4GcxAfww
         /vdQo90cVaFQ72hqSb4lWDAviKLb82jS3tykpvEstTZBPkTfYEmpqCRbXkIEYzsSPUxd
         Rzajvn67ooh11ALmjxQo+88elpLQVkDbHFZgtALVSRTc+eee/dSag3JQ7APYSyUFK15d
         1X8A==
X-Forwarded-Encrypted: i=1; AJvYcCUxq02hipsjWJrl+wlogKnlijN7MtJsLPQ4jb4xaH9nL+CO4vgEtSeqACHP2k55AnrGwfk/d+KFoBGD@vger.kernel.org
X-Gm-Message-State: AOJu0YxDkMhqyxA8G1AxTwToB1BRM9fahjkeTmffFCVtCKW7IEPIQqfg
	b8h8duVNEEyDlYYkv3PwkyeFJm07uA1EhQdWlSwoobg+OgkS3dWl06GEwoPhlpJldHk=
X-Gm-Gg: AY/fxX6AfP18OOUld1UTlJzUsCmahlWT4lMrTJDKcFyiqGNPkmVI/T5Hvblf8Phbe/d
	x4WDNNR7d2MPDlLL/xe/F/OOH0oxO9EFiTZex8Lb0yeyldUaj6VKIAgF2hAtX6pZJbaqhtchHA1
	QgiNBHvV+Im8zSeNXc19M5wHrc2qwEGlR608nPCH2k+pXm2+1Yv/sHtnEU3EzNyrDWweeUDTPKi
	A2x3kX6sszgwea4btDfLS1I4TWA1wX5U83u5RG9/HE+1k2WW3Rg4QKukXkq8LKrCTiMNRCisOV4
	W/DKz8XMynGjPC+jAgmvFRRuQ8kKjDMRAOaOUgVgsnHKTF5rmzl20FrOMfFzC+nPWVo64BCK0uJ
	wKaEeej+JrECkAzaPC02z6qu0lltD2DJcgKVGXpUPsS0LWNCpcIkJRKX3d1g8TRBSw8R4uTERBT
	3HVrzTF6uUaK6YiWcOLM7bccvX+JAAMejys+DRdAs5TjtA+Z7X9pnNg/L8b90plKqb3RcH7N5Fs
	20g
X-Google-Smtp-Source: AGHT+IHUqZ8MlsWcdLXjMndrMOISBhO6vzgQ33SdrvAjwJowVkeUJIKabKJZh0y+vSHN1OThLLU0NQ==
X-Received: by 2002:a05:6512:e86:b0:595:834a:b1ed with SMTP id 2adb3069b0e04-598faaa6ddfmr3212199e87.7.1765898635326;
        Tue, 16 Dec 2025 07:23:55 -0800 (PST)
Received: from [192.168.1.100] (91-159-24-186.elisa-laajakaista.fi. [91.159.24.186])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5990da1a743sm964416e87.41.2025.12.16.07.23.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 16 Dec 2025 07:23:54 -0800 (PST)
Message-ID: <fa131841-ae9e-49ee-a7c6-728b4a6a4b60@linaro.org>
Date: Tue, 16 Dec 2025 17:23:53 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 5/5] arm64: dts: qcom: sdm670-google-sargo: add imx355
 front camera
Content-Language: ru-RU
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
 Richard Acayan <mailingradian@gmail.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Sakari Ailus <sakari.ailus@linux.intel.com>,
 Tianshu Qiu <tian.shu.qiu@intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-media@vger.kernel.org,
 Robert Mader <robert.mader@collabora.com>
References: <20251211014846.16602-1-mailingradian@gmail.com>
 <20251211014846.16602-6-mailingradian@gmail.com>
 <wwpqaecvz42jopgaboasbh353ieelctpvgo3yj6y5tnxoem5oz@j5sbx3yxntot>
 <aTtkwQb2gOeWAFuv@rdacayan>
 <d7jcawzugobqern6zlo5jwcnximtsroxywix53v2yp2isvzo5r@ymxicmgfjmzq>
 <341012f3-18bd-4f96-98c1-f964d1fedb8f@oss.qualcomm.com>
 <1d830282-a778-44aa-918b-5ab3e1516c0d@linaro.org>
 <4c4e8e5b-66b1-4227-86ee-756eca945972@oss.qualcomm.com>
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <4c4e8e5b-66b1-4227-86ee-756eca945972@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 12/16/25 16:41, Konrad Dybcio wrote:
> On 12/16/25 3:31 PM, Vladimir Zapolskiy wrote:
>> On 12/16/25 15:56, Konrad Dybcio wrote:
>>> On 12/12/25 8:22 PM, Dmitry Baryshkov wrote:
>>>> On Thu, Dec 11, 2025 at 07:41:37PM -0500, Richard Acayan wrote:
>>>>> On Thu, Dec 11, 2025 at 07:16:30AM +0200, Dmitry Baryshkov wrote:
>>>>>> On Wed, Dec 10, 2025 at 08:48:46PM -0500, Richard Acayan wrote:
>>>>>>> The Sony IMX355 is the front camera on the Pixel 3a, mounted in portrait
>>>>>>> mode. It is connected to CSIPHY1 and CCI I2C1, and uses MCLK2. Add
>>>>>>> support for it.
>>>>>>>
>>>>>>> Co-developed-by: Robert Mader <robert.mader@collabora.com>
>>>>>>> Signed-off-by: Robert Mader <robert.mader@collabora.com>
>>>>>>> Signed-off-by: Richard Acayan <mailingradian@gmail.com>
>>>>>>> ---
>>>>>>>    .../boot/dts/qcom/sdm670-google-sargo.dts     | 107 ++++++++++++++++++
>>>>>>>    1 file changed, 107 insertions(+)
>>>>>>>
>>>>>>> @@ -392,6 +420,64 @@ vreg_bob: bob {
>>>>>>>        };
>>>>>>>    };
>>>>>>>    +&camss {
>>>>>>> +    vdda-phy-supply = <&vreg_l1a_1p225>;
>>>>>>> +    vdda-pll-supply = <&vreg_s6a_0p87>;
>>>>>>> +
>>>>>>> +    status = "okay";
>>>>>>> +
>>>>>>> +    ports {
>>>>>>> +        port@1 {
>>>>>>> +            camss_endpoint1: endpoint {
>>>>>>> +                clock-lanes = <7>;
>>>>>>> +                data-lanes = <0 1 2 3>;
>>>>>>> +                remote-endpoint = <&cam_front_endpoint>;
>>>>>>> +            };
>>>>>>> +        };
>>>>>>> +    };
>>>>>>
>>>>>> This would be much better:
>>>>>>
>>>>>>     &camss_endpoint1: {
>>>>>>         clock-lanes, data-lanes, remote-endpoint here
>>>>>>     };
>>>>>
>>>>> I'm not sure what you mean, there might be some typo.
>>>>
>>>> My point is that you are duplicating `ports { port@1 {.... }; };` from
>>>> the base DTSI here.  We usually try to avoid this kind of path
>>>> duplication. If you can't have an empty endpoint in the base DTSI, I
>>>> suggest adding necessary labels to port@N nodes and then extending those
>>>> nodes in the board DTSI.
>>>>
>>>>> If this is about using the commonly-defined endpoints, Vladimir broke it
>>>>> in commit dcf6fb89e6f7 ("media: qcom: camss: remove a check for
>>>>> unavailable CAMSS endpoint"). If I do this again and go full circle, I'm
>>>>> afraid this could break a second time before even making it to
>>>>> linux-next.
>>>
>>> Quite frankly I don't think that commit was valid, given it's conceivable
>>> that an endpoint could be unconnected..
>>>
>>
>> Endpoint is not a device, status property is the property of devices and
>> not a property of anything else as the Devicetree Specification v0.4 and
>> earlier ones define. Dangling endpoints are fine, there is no need to
>> add another property to determine, if an endpoint is connected or not.
>>
>> There should be no status properties inside endpoint device tree nodes.
> 
> The spec doesn't actually define what a "device" is. Funnily enough, it refers
> to "endpoint" as a device:
> 
> 2.2.2 Generic Names Recommendation
> The name of a node should be somewhat generic, reflecting the function of the
> _device_ and not its precise programming model. If appropriate, the name should
> be one of the following choices:
> 
> [...]
> 
> * endpoint
> 
> 
> Plus an OF node is opaque in its purpose.. The top node, a firmware node, a
> node representing a physical IP block and a config.ini-style blurb are all
> "device nodes"

It sounds like somebody of DT maintainers should clarify the matter and update
the spec to be less ambiguous, if it happens that "device" term is undefined.

> 
> But coming back to the real world, the ports/endpoints represent the physical
> connections to CAMSS and it makes sense to have them defined in one place,
> especially since there's a predictable number of them that should not be left
> up to each board to define.. That quite obviously implies that not all boards
> are going to utilize all interfaces and the commit of yours that was mentioned
> above seems to only be valid on the basis of semantics, which I above mentioned
> are not *really* a valid point..

For whatever reason CAMSS on SDM670 is very special, because IIRC there is no
other platform with preset status poperties of endpoints. This exclusive SDM670
specifics shall be analysed and eliminated, since it hasn't been done during
patch review time, it's time to do it right now then.

-- 
Best wishes,
Vladimir

