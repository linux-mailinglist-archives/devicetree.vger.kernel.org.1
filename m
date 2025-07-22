Return-Path: <devicetree+bounces-198572-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id BF6AEB0D6BD
	for <lists+devicetree@lfdr.de>; Tue, 22 Jul 2025 12:04:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 210B67AE0F0
	for <lists+devicetree@lfdr.de>; Tue, 22 Jul 2025 10:01:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 811402E6118;
	Tue, 22 Jul 2025 10:00:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="F274qOZ5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 759102DCF4F
	for <devicetree@vger.kernel.org>; Tue, 22 Jul 2025 10:00:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753178404; cv=none; b=ZR0MJc81HlMuah+KmSRmnmgPprRm9BsIvyUaqTiBQvoJAcSiaexDBQ/p4YIbIIDU5I8KgUSgrvhyTjU7sbaeoWnbYaVovSGeeqYPBrZoHllJne6NT1m6JRbSRQkq4t3HIbkzrkqOU5N0jg9CsLUzICAbR9jy0ZtGza7NgGITyg8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753178404; c=relaxed/simple;
	bh=l9j2EV2tpH6xu+YOscGGd1tAx9tRjSTtnP2IboucQDk=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=ns7JURp6Vnc/08P8Fbl5eM929/WgWEMyQcY/WwSW3I684BnoHWsjqiY2Ra9pB+r1LCk8h2Dbduntjzic9NZ8IEGPJI2LEGeqLtnZuYdWdkMaWOSBACLEUuZ+NmA3nU4A5RXLO78cwG6dJKoC6yRJlWMYq/hN5yU/dBB4O1yoC70=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=F274qOZ5; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-45622a1829eso16489195e9.1
        for <devicetree@vger.kernel.org>; Tue, 22 Jul 2025 03:00:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1753178401; x=1753783201; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=B9mVbnLu7a1SKXyW78ldUvJa6+GK0T8z2V8R3kTNrD4=;
        b=F274qOZ5agzEmzUN7yQ8cFkFMCdb65/i3OlE2Cqe/K81aZQPq4bsEADh9BMesOEQYD
         IHV9tS82OFkQGqjEPCDUwryjMglTgw2w2WwREREAiCIFm0NtStNHmjMACdH56DBGdKQN
         6tiok5z4R8gR+1UyVQTXd+uWYncS0lJ5qViXemn/N7Bb07q7I7gmGX7D/InNVNxuraVs
         sTqLi4kGPPGwmFs2GoXuJbT820vpMpSCnTspHaP0D+0TNCrSThZrZz5PMubiFNCFOMv9
         qm97iFQ8evKPh+J3mccoxx+WOpepkdbU3ORdnQb3fqinbV/7nWIJlMtIZnDbs848hqsD
         UuFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753178401; x=1753783201;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=B9mVbnLu7a1SKXyW78ldUvJa6+GK0T8z2V8R3kTNrD4=;
        b=k2YmOFJmueQWBqeuvi3oulMdz/dno/w/SKaRZLkk4tomJN2TqfOkObPlU1pV412QiG
         iYW90kenbmThPIuwtQizXQaM3B3F8RAYDD1Ystx6qxDRUYeztPLDOOcTEl8dg/HS0PJJ
         pXEKDcjUmsQ2Dav2sVp2916LvJzMrL1R6sutIEkyzuA5tB0wfOlqIk6h4cH+l+d04+eE
         MaJvCUeIb5abGXK9yuJygvcb9rYcyLfKS5rECHOnLpQ7XzaEpnr0CM0gIfCT24o4HKpn
         4Ol6kUzfnupkZ8+RvZms95VmwdRce8207omlKWyJWn5bi1zHexn9Px/dVMSBO/uRrfOn
         0Stg==
X-Forwarded-Encrypted: i=1; AJvYcCV7F8eDlFSuoeIAhGNvNTt+1DN6hAU/T3Sw4pNc3v9+bx8Y48hXAiOmwugOF0A4G1Fkk5AbrfJCPIEA@vger.kernel.org
X-Gm-Message-State: AOJu0YwkSy6aC/jyTrV4BJXTbFE9kbcWSpr57J0KvGOk+gI0ryJvDLun
	OZGcoQw9wqVPL/r27PiUSDVo5vSMWXew4FnRsnWAjaqbZplr7VEn6X0hT6a/dx0dT7M=
X-Gm-Gg: ASbGncuKSJBumyOf2Jv/A/ULY4Z6bUEwMev/qhY15IhHfYogrHVY1ne1sJ9EvQ5WpBr
	EXKCgz9/jKvv6VPlVDe4DkMzLyUZA4ZeD7NGILtikxDv6YIgOBjHE3K0KqxPqt9Q90Gh8roOZts
	Nn6rZbagmnWP5Tb7a2QDiD3UqTGl+pAV6vsYoAqSubO2fbqCeWJiVrpSL1yjz9n1Me5S/+hCt6h
	WMTSXDgKFBdauJgsVtwG+4x+W/Kil5OhOysIbjb5G9EHkpTtBe86hCy7LqVhrdNDRV51kt44qJ0
	9643TYrD9ExZ090QFZ/WD1ERb9qnVkKZQ0PNWyz3KvSsZAtn0G5zT4MYQisQ328Kx+AMeeUbdFl
	CX+gdtht7XDvdgGkz0KKaMQg0ju1Nh0PRTgtIl+U83XECqfmppw4hLE6TjS0KlBgs723d6r2fwS
	k=
X-Google-Smtp-Source: AGHT+IGcJyJZcZl6JmFdEcmEQZt5L5wILaf0S4QQxyjYW5ekrqujhnwASeqFRVCxYUAXxFw93P/L3A==
X-Received: by 2002:a05:6000:4b09:b0:3b5:f168:5e60 with SMTP id ffacd0b85a97d-3b61b0f1eadmr11797144f8f.19.1753178400603;
        Tue, 22 Jul 2025 03:00:00 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:3d9:2080:bce4:725d:6922:d1ba? ([2a01:e0a:3d9:2080:bce4:725d:6922:d1ba])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4562e88476csm189714485e9.21.2025.07.22.02.59.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 22 Jul 2025 03:00:00 -0700 (PDT)
Message-ID: <84eea632-02d8-4b7f-a4ca-36ce7159a170@linaro.org>
Date: Tue, 22 Jul 2025 11:59:59 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH 2/2] phy: qcom-mipi-csi2: Add a CSI2 MIPI D-PHY driver
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20250710-x1e-csi2-phy-v1-0-74acbb5b162b@linaro.org>
 <20250710-x1e-csi2-phy-v1-2-74acbb5b162b@linaro.org>
 <11b573d5-ce4d-476c-b94c-216d427cd838@linaro.org>
 <08261aa4-689b-4d6b-bfd2-221c1976d254@linaro.org>
 <a7f64b31-4767-4281-b452-a2bc5351d745@mleia.com>
 <c93624bb-ee7b-45ac-8b53-b5391f11c9c9@linaro.org>
 <eac3a877-a4aa-4789-9013-ab8b6c91e0f3@linaro.org>
 <0a12879f-dc4a-47fb-87a0-ac4b8bcd4d75@linaro.org>
 <53a19b1d-5665-4937-a07c-5dd1fcde06c5@linaro.org>
 <3b760685-97db-46e3-80a3-7fad69ad31cd@oss.qualcomm.com>
 <94b75177-9401-4e0c-966b-5847a29cb6f7@linaro.org>
 <427548c0-b0e3-4462-a15e-bd7843f00c7f@oss.qualcomm.com>
 <3UXVZ6ANM9mDjVdMV4SXsiIx_pT3S1lp3RC_Q7mh_o7jF2dpYsni1Sl2TAWv6OCMCRTFmi9aE6BxDquGkOnwEg==@protonmail.internalid>
 <8b908a20-0bf3-447d-82ea-a5ecee1bf54c@linaro.org>
 <57501e81-7e9c-4cb1-9a37-18307d1e06ca@linaro.org>
 <33d76d7f-ab14-4e76-8ffb-eb370901a046@linaro.org>
 <4edefe21-27b6-4884-befa-ddb451bb9376@linaro.org>
Content-Language: en-US, fr
Autocrypt: addr=neil.armstrong@linaro.org; keydata=
 xsBNBE1ZBs8BCAD78xVLsXPwV/2qQx2FaO/7mhWL0Qodw8UcQJnkrWmgTFRobtTWxuRx8WWP
 GTjuhvbleoQ5Cxjr+v+1ARGCH46MxFP5DwauzPekwJUD5QKZlaw/bURTLmS2id5wWi3lqVH4
 BVF2WzvGyyeV1o4RTCYDnZ9VLLylJ9bneEaIs/7cjCEbipGGFlfIML3sfqnIvMAxIMZrvcl9
 qPV2k+KQ7q+aXavU5W+yLNn7QtXUB530Zlk/d2ETgzQ5FLYYnUDAaRl+8JUTjc0CNOTpCeik
 80TZcE6f8M76Xa6yU8VcNko94Ck7iB4vj70q76P/J7kt98hklrr85/3NU3oti3nrIHmHABEB
 AAHNKk5laWwgQXJtc3Ryb25nIDxuZWlsLmFybXN0cm9uZ0BsaW5hcm8ub3JnPsLAkQQTAQoA
 OwIbIwULCQgHAwUVCgkICwUWAgMBAAIeAQIXgBYhBInsPQWERiF0UPIoSBaat7Gkz/iuBQJk
 Q5wSAhkBAAoJEBaat7Gkz/iuyhMIANiD94qDtUTJRfEW6GwXmtKWwl/mvqQtaTtZID2dos04
 YqBbshiJbejgVJjy+HODcNUIKBB3PSLaln4ltdsV73SBcwUNdzebfKspAQunCM22Mn6FBIxQ
 GizsMLcP/0FX4en9NaKGfK6ZdKK6kN1GR9YffMJd2P08EO8mHowmSRe/ExAODhAs9W7XXExw
 UNCY4pVJyRPpEhv373vvff60bHxc1k/FF9WaPscMt7hlkbFLUs85kHtQAmr8pV5Hy9ezsSRa
 GzJmiVclkPc2BY592IGBXRDQ38urXeM4nfhhvqA50b/nAEXc6FzqgXqDkEIwR66/Gbp0t3+r
 yQzpKRyQif3OwE0ETVkGzwEIALyKDN/OGURaHBVzwjgYq+ZtifvekdrSNl8TIDH8g1xicBYp
 QTbPn6bbSZbdvfeQPNCcD4/EhXZuhQXMcoJsQQQnO4vwVULmPGgtGf8PVc7dxKOeta+qUh6+
 SRh3vIcAUFHDT3f/Zdspz+e2E0hPV2hiSvICLk11qO6cyJE13zeNFoeY3ggrKY+IzbFomIZY
 4yG6xI99NIPEVE9lNBXBKIlewIyVlkOaYvJWSV+p5gdJXOvScNN1epm5YHmf9aE2ZjnqZGoM
 Mtsyw18YoX9BqMFInxqYQQ3j/HpVgTSvmo5ea5qQDDUaCsaTf8UeDcwYOtgI8iL4oHcsGtUX
 oUk33HEAEQEAAcLAXwQYAQIACQUCTVkGzwIbDAAKCRAWmrexpM/4rrXiB/sGbkQ6itMrAIfn
 M7IbRuiSZS1unlySUVYu3SD6YBYnNi3G5EpbwfBNuT3H8//rVvtOFK4OD8cRYkxXRQmTvqa3
 3eDIHu/zr1HMKErm+2SD6PO9umRef8V82o2oaCLvf4WeIssFjwB0b6a12opuRP7yo3E3gTCS
 KmbUuLv1CtxKQF+fUV1cVaTPMyT25Od+RC1K+iOR0F54oUJvJeq7fUzbn/KdlhA8XPGzwGRy
 4zcsPWvwnXgfe5tk680fEKZVwOZKIEuJC3v+/yZpQzDvGYJvbyix0lHnrCzq43WefRHI5XTT
 QbM0WUIBIcGmq38+OgUsMYu4NzLu7uZFAcmp6h8g
Organization: Linaro
In-Reply-To: <4edefe21-27b6-4884-befa-ddb451bb9376@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 22/07/2025 11:08, Bryan O'Donoghue wrote:
> On 22/07/2025 09:32, Neil Armstrong wrote:
>> The whole key point here is the combo mode, as I understood the combo mode feature
>> makes the PHY lanes available as 2 separate streams, like if you got 2 "controllers"
>> attached to the same PHY. So in fact, the PHY should have a single node, but 2 PHY
>> interfaces in combo mode.
>>
>> This makes all this controller/phy model very complex to handle and add a lot of
>> logic in the camss side. Moving the "csiphy" as an independent media device that
>> can declare up to 2 endpoints in combo mode makes things much simpler, and allows
>> us to attach each "csiphy" stream to any "controller" side of camss.
> 
> I think there should be a generic extension to PHY/linux-media to support that instead of something Qualcomm specific.

Can you point out what's missing ? AFAIK it's more a matter of proper representation of all
the CAMSS components with a proper ports/endpoint graph design that adding new kernel APIs.

Neil

> 
> The first task is qcom/CAMSS specific which is separate the CSIPHYs out from the CAMSS block - done in this series and do so in a way that doesn't break the existing ABI - done in the context of adding Hamoa/x1e.
> 
> The second step should be to extend the existing linux-media and PHY API to support multiple sensors on the same CSIPHY in a generic way.
> 
> If you want to ship me some hardware, I'll help.
> 
> ---
> bod


