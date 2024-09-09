Return-Path: <devicetree+bounces-101340-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EC2D9715EA
	for <lists+devicetree@lfdr.de>; Mon,  9 Sep 2024 13:00:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5AEBF1C22CDC
	for <lists+devicetree@lfdr.de>; Mon,  9 Sep 2024 11:00:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A83BB1B0104;
	Mon,  9 Sep 2024 11:00:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="HACmMaWR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9F9414A09E
	for <devicetree@vger.kernel.org>; Mon,  9 Sep 2024 11:00:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725879639; cv=none; b=Nj6IZEcZC9CF9WKVM3h2rBhV9jjx6W9ALhZ7Q7hg2Z6Rqbkls+tNXWC06xFrwTdkIDJH8RO4y5wRbv/VvT9NR+/PM0rMTi4LKDuPfPsoA0z+4f8oGWgCa6ue8UF5S55aM4R0bTESHq3wGVO6iSA9IPI58qm/SoHRfEpDCY/CZJs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725879639; c=relaxed/simple;
	bh=rhjdZESyPbnoEGFTozGxVtPljNvsXOUZcQ7npHRG4yY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=BIYhYMYtdSDTkTT4xAbRLGCh0ozgFdgNt38AoCxeRqs8VtIrBb7+PDN4CjNFiZJjKvbKRlR3lwUL/luHXxN5SbrIzZxlj92us0Wy+1v81nMkwRLqxlrrB2SbfS6JwGHmAOErNCN+z8EaRZE8ul9qKjewU2HBfR8Re4jcjUdXexE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=HACmMaWR; arc=none smtp.client-ip=209.85.167.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-5365928acd0so3405121e87.2
        for <devicetree@vger.kernel.org>; Mon, 09 Sep 2024 04:00:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1725879636; x=1726484436; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=QryQQYMcf5nlV444ZLB6Z8wN7xIF3K24tduKGQQTFPc=;
        b=HACmMaWRJWcfg6Z+16LzxEdP+n8hFFx5h796+Bk4v5MCbw4YOtBEbY16pD80T6NDeN
         zRXrW0LqmbDMdmP4gwIJaOL079IPne3670aqx10gr5XJXUpOMqlFSl4ktqAcrnoH+h+h
         Y1P4D3vtV6gv15X1JF22gnt4jTFoPJ0rm9oRVxJaqtcXqQGvgT2nq74B6Oc0moHfcwQG
         JLHVZlEZpGNxNpeqSKKPALwdCXSydLHffYubjsYc3cQWIcnldAH+lKPCHlmAHAifKP+G
         0+qR21nKeo9liU8Z9+xWz4BTxACykePWS5Q/YBkjYn9mGXzMeSs8GNK2X2UegdDXHP/X
         jdPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725879636; x=1726484436;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=QryQQYMcf5nlV444ZLB6Z8wN7xIF3K24tduKGQQTFPc=;
        b=APzSkffbA9MSE9+v/juwyUp50oIsmNWfdADHCiEiJHy0fDqCQe4jYc+1QNW3VjOGLe
         RzPcYfZd+fL+BtIMSBA0Mm2ySLI8NhbwUszIwYvSJeya2xq2ZHStA3PQ6FnpYQoIrf9e
         hCv74iYbv2BPSLb+Z5ws3NoQxa0DRjEsLp3DBos5JF2LTWCB0moqkhwn2X7tisIaVmn2
         l+VEx6nmSa5W0Snz7UKMKp6GW7Iz2DUXVQTuJRrrW17F8UAOEirZ6xiH1xjqFNdDgAVn
         j0LRrfII49U514j4qIMRXrdKrj+0CGU5u0HHbxeXGGwtfG96FSGZ9an2bfX/PnAa6tyM
         x+Vw==
X-Forwarded-Encrypted: i=1; AJvYcCUSzIh1sngkID8vsSB9PEWGpra4W6STHGQGWGdia6E3BUYfSBo1n1JVty1HJFDYBSjb+QdWEBqkgQhd@vger.kernel.org
X-Gm-Message-State: AOJu0Yz3eXjxXQkOb3wa6LXjn74hlK4za+TYcV491dMqt8nhi4Bd7UCQ
	IkYphPjLoFSMCV2ArhYla7l8niUtXUVuhr7fsaadzuF0Mb+GnoFoPHlUeFaaqvs=
X-Google-Smtp-Source: AGHT+IFpnNdEwL/mWLHVFvrgHmCqsvFKvaduKWsA/kVPdUwZfhYUnUDbP/spk10mNuXR3nsRdQ4BOQ==
X-Received: by 2002:a05:6512:3d8d:b0:52c:d626:77aa with SMTP id 2adb3069b0e04-53658816644mr7676796e87.58.1725879635728;
        Mon, 09 Sep 2024 04:00:35 -0700 (PDT)
Received: from ?IPV6:2a02:8109:aa0d:be00::8db? ([2a02:8109:aa0d:be00::8db])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a8d25835a76sm324544866b.39.2024.09.09.04.00.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Sep 2024 04:00:35 -0700 (PDT)
Message-ID: <98222e56-d382-409c-9c17-a99cab08ec94@linaro.org>
Date: Mon, 9 Sep 2024 13:00:34 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Betterbird (Linux)
Subject: Re: [PATCH 3/3] arm64: dts: qcom: qcs6490-rb3gen2: describe secondary
 USB port
Content-Language: en-US
To: Krzysztof Kozlowski <krzk@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, cros-qcom-dts-watchers@chromium.org,
 Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
References: <20240904-b4-rb3gen2-usb2-v1-0-b858e681195e@linaro.org>
 <20240904-b4-rb3gen2-usb2-v1-3-b858e681195e@linaro.org>
 <01ec1a78-4fe9-42d9-9ed2-8f6b8cb2e8fa@kernel.org>
 <7f98c987-0f9a-4ff5-9296-c6fdfc37e4c1@kernel.org>
From: Caleb Connolly <caleb.connolly@linaro.org>
In-Reply-To: <7f98c987-0f9a-4ff5-9296-c6fdfc37e4c1@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 05/09/2024 14:11, Krzysztof Kozlowski wrote:
> On 05/09/2024 14:05, Konrad Dybcio wrote:
>> On 4.09.2024 1:16 PM, Caleb Connolly wrote:
>>> The secondary USB controller on the rb3gen2 is routed directly to a
>>> mico-USB port where it can be used for EUD debugging or in OTG mode.
>>>
>>> Configure the controller to prefer peripheral mode (as this is almost
>>> always more useful) and describe the connector, vbus supply, and ID pin.
>>>
>>> OTG/Host mode is untested as I don't have micro-USB OTG cables to hand.
>>>
>>> Signed-off-by: Caleb Connolly <caleb.connolly@linaro.org>
>>> ---
>>>  arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts | 69 ++++++++++++++++++++++++++++
>>>  1 file changed, 69 insertions(+)
>>>
>>> diff --git a/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts b/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
>>> index 513d5265bb13..fe66f589cb5b 100644
>>> --- a/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
>>> +++ b/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
>>> @@ -62,8 +62,30 @@ hdmi_con: endpoint {
>>>  			};
>>>  		};
>>>  	};
>>>  
>>> +	connector-usb2 {
>>> +		compatible = "gpio-usb-b-connector";
>>> +		vbus-gpio = <&pm7325_gpios 9 GPIO_ACTIVE_HIGH>;
>>> +		id-gpio = <&tlmm 61 GPIO_ACTIVE_HIGH>;
>>
>> I don't think this is right, what's the revision of the board you have?

Still don't have schematics, this is based on downstream Qualcomm Linux.
> 
> For sure any 'gpio' property is NAK and there is no way this passed
> checks...

ahh, gpios not gpio right?

sorry, should have caught this.
> 
> Best regards,
> Krzysztof
> 

-- 
// Caleb (they/them)

