Return-Path: <devicetree+bounces-167843-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 51F04A9073F
	for <lists+devicetree@lfdr.de>; Wed, 16 Apr 2025 17:03:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 69A5D17CA55
	for <lists+devicetree@lfdr.de>; Wed, 16 Apr 2025 15:03:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1F5C11FBEA9;
	Wed, 16 Apr 2025 15:03:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="eqB8TPaV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B27F1B87E2
	for <devicetree@vger.kernel.org>; Wed, 16 Apr 2025 15:03:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744815814; cv=none; b=IA8hR8eOgytA69qoB2X5mCoMNFBD1AQLRYKikpUrn3l1/V6iKxIzI0m/319YexnBmCOKDgQ9OxcHBNslHZn/Hzry9vMeEdIrdK3W9goLjLEsXYV4oXZCTF7AHhkV2Ovog/EEb/Z1Hlq9tOEyOMb9YCuSToMfJUZTba1WiCjoaOo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744815814; c=relaxed/simple;
	bh=kHSfPEdOAablu2/umHYs7gUz3zVv4oy4q52ZGY3brag=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=B6Ox1toEsWeJKtZbpuNSWLYoV/HkjyaY68OT8W5L1KTD3Oz5Qaf1M9AiGsTUVhVjN71jHhM64JjgurLNPhVQaEieLqTvUqmXi8Iuz/c71IVKZLhDGN9nRBNRJiLMOjY/G5Qa1SzSbK5mYLdhcvoVzyo+ngNiB4tQbmv1Y2mwxQw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=eqB8TPaV; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-43cfa7e7f54so6194455e9.1
        for <devicetree@vger.kernel.org>; Wed, 16 Apr 2025 08:03:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1744815810; x=1745420610; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ssHY3+dEnlsEExNuhQ9HefHsurneHKSySj1u60YgUXQ=;
        b=eqB8TPaVjtXsQeJ5F1AOjcfXgwN2pXCt2PpFfN7UJJMWiwgVjNgGsv6JYRqqAN13KF
         5z7b4LvBMzgsCPWbiN6qPNMMJzIFbwCY8WclZ0d93zwZiRYIzfEp5tmlhBI7GPNkXcC3
         w6F0H1uJHDnxLrUEBgqxICaIWuZOAnQ/eRTG30RvbXglx3GSCUMrS4nnYIbUXvPuII+d
         vg6ansSjdJV3etUOopge97JTe+MvCn7BfIm8Qh2VkTNEoKCgQR6PuMSrJIt/VIa5j2Vu
         ADU10jEkeEr/hulrOhFh5aHpGcQGyVkMMv3U5ZVC/T4DIKuKDVwyjrtK/AKFfEYHGHw4
         YYpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744815810; x=1745420610;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ssHY3+dEnlsEExNuhQ9HefHsurneHKSySj1u60YgUXQ=;
        b=Ua9LFR+GieudCfX4CUNSH5Cex74PR0q1hTpymM7SWZQu1I23IyTqo0wxeTZG+75smP
         Sfqfi576sVAeKnjVCg9Y+KMIQjVh1tPCJkqPMy0NOmtYzwsrwvX1chSME2oN2mZIY9aX
         +kjXxIKmo682+KbrCe1lEpjz9HSQTEOJhhbh152KQ86YwKfmKSse7WZ9uuw1RzPTo5Qg
         TCcfxpTDfcxqbMO+EN+ADXvR0QJ/2dOZOGK/VRfO1/awLJvEjx1Kl3PaUSpe4L36jQBN
         1PBiUMD1Ntn2Bkp79uT3RgRlfQpbHex0Q90krLwIs2cjBLoqoAkTs1Lx9pPR1BmMJ6Eu
         azUw==
X-Forwarded-Encrypted: i=1; AJvYcCU5DfpOm4PwM5JlJZhMz2qKPtq4w29/lEjXZtW7d7ul10UJCcoLImGQjaPxIWcu+LVtYmcLZxPtR82h@vger.kernel.org
X-Gm-Message-State: AOJu0Yw+w2r1SNMjcv9FzJDy7jW2XYKPJtgXi+ky66QtJDvsokU9csFN
	IyHI7Q8uaDgrgM/ebKkxqALs0WbxrhHIA76fAMwvCeX78XJLYCrN/J2TezyX/3s=
X-Gm-Gg: ASbGncv9Gr6dgQ3yfnNvoOABxM92fV6ZyG/RhSXA/9Zu4Unkc1HpLmt81o9kDQNcRiB
	718ahI6qq9A4j4rGbLItK4DMcAUBAqd3fLwIM8qykZ4Hl58BEzUt8Bai8Vd0MD0axUkeZZ4tAU4
	/kpjUn0+hn7MaGWnPCUuxgTeQr4LgUtnsIwtK156FVyuKmL+N4iCzSn4v22BaObJsp7p59xPeLC
	aMrQZCEC5p9yVx7SIOTPLw1Kx8rmoBOpAX8gOI4e4mu+uCW0XOw2Qxw1tTW1m9qJ7UfJ/9QaFee
	WrIgGvXaA24uKrWWb7lv76IR/7GmgB5xZ8KI6npRw6RFMgOAGvekASS+1C75P7W0+g2CnUr5EP2
	sxBim6g==
X-Google-Smtp-Source: AGHT+IE3cwf5hpOj2aPXcTsIAKSRPhYCx8GnqPD2BU0dBf37NTxtHVMsyy+iGKWeeJ/KQXpH2Fj4aw==
X-Received: by 2002:a05:600c:1910:b0:43c:f680:5c2e with SMTP id 5b1f17b1804b1-4405d7d31a2mr24342655e9.13.1744815808120;
        Wed, 16 Apr 2025 08:03:28 -0700 (PDT)
Received: from [192.168.0.35] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4405b4f2b72sm23291795e9.19.2025.04.16.08.03.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 16 Apr 2025 08:03:27 -0700 (PDT)
Message-ID: <80a994f6-c46d-40c2-aaec-33d960cd0dac@linaro.org>
Date: Wed, 16 Apr 2025 16:03:26 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 6/6] arm64: dts: qcom: qcm2290: Add CAMSS node
To: Loic Poulain <loic.poulain@oss.qualcomm.com>,
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: rfoss@kernel.org, konradybcio@kernel.org, andersson@kernel.org,
 krzk+dt@kernel.org, robh@kernel.org, linux-arm-msm@vger.kernel.org,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org
References: <20250416120908.206873-1-loic.poulain@oss.qualcomm.com>
 <20250416120908.206873-6-loic.poulain@oss.qualcomm.com>
 <c57084c4-189a-484f-af2f-8e4181f547fb@oss.qualcomm.com>
 <CAFEp6-0tZQowmDrEsHgU1Ncx6jR2f=Lp259vaj3mefc-9BfUbg@mail.gmail.com>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <CAFEp6-0tZQowmDrEsHgU1Ncx6jR2f=Lp259vaj3mefc-9BfUbg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 16/04/2025 16:01, Loic Poulain wrote:
>> @5c6e000
>> (first reg entry)
> Ah right, I reordered reg to be aligned with other camss drivers.
> Should I keep that order (and update node name) or reorder with phy
> lower addresses first (PHYs)?
> 
>>> +                     compatible = "qcom,qcm2290-camss";
>>> +
>>> +                     reg = <0 0x5c6e000 0 0x1000>,
>>> +                           <0 0x5c75000 0 0x1000>,
>>> +                           <0 0x5c52000 0 0x1000>,
>>> +                           <0 0x5c53000 0 0x1000>,
>>> +                           <0 0x5c6f000 0 0x4000>,
>>> +                           <0 0x5c76000 0 0x4000>;
>>> +                     reg-names = "csid0",
>>> +                                 "csid1",
>>> +                                 "csiphy0",
>>> +                                 "csiphy1",
>>> +                                 "vfe0",
>>> +                                 "vfe1";

Please keep consistent with the last committed yaml for CAMSS.

---
bod

