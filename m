Return-Path: <devicetree+bounces-144879-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C010A2F9B4
	for <lists+devicetree@lfdr.de>; Mon, 10 Feb 2025 21:06:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C93591885670
	for <lists+devicetree@lfdr.de>; Mon, 10 Feb 2025 20:06:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D863F24C673;
	Mon, 10 Feb 2025 20:06:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="b9lowbss"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03D5B25C6EE
	for <devicetree@vger.kernel.org>; Mon, 10 Feb 2025 20:06:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739217963; cv=none; b=gJ1swe+e2ZzvtWzxBP66tE3k7dAsws6prWPrFtBXWUNnam0g4EX7G2G5lPzsB8xK010Lv8ASrL5Agl8WslU4e0LMyMZUr7Y+/mLdn53HXGI4Ib1If60T0nfaSei9Dxho5mQzsZse58kMyDMSI87flN9xQC2ZWmjB9wpj3fKyzaM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739217963; c=relaxed/simple;
	bh=1C6majvuXTRgQpweqGpWVKF1omfml9tT/vnejXHKCSs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=lrLD/XsfaM2k+4MzZB9PL8/VU+m7CtgoyKaOIfODX+ECD8FAZjwLke2FYmtZ5dleZ3F1XLYgyFcApCdYowr4tzBBWpV60V5wGZ1YdNuPJ0f8ZglYg0F4Qnnm5fgp4R8GXMKi5b6/nhcOK7Jg2PnLaTHiIGtWSnk0pkr9/DlCuWI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=b9lowbss; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-4362f61757fso47779095e9.2
        for <devicetree@vger.kernel.org>; Mon, 10 Feb 2025 12:06:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739217960; x=1739822760; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=qZge85fGuKAUE9Mz0cTsJLS+63ffaGNjx2RI84r0q6Q=;
        b=b9lowbssvfiQIeoS1HImtjG43vnAJ5RwLZMfgVfRGlgiPeNdd3hnqPN3sd1xhFcm4/
         Fq2ZI/qTuRHVc0qbNDhLGCXROiua1GXocpi5XEmaL76ijPOqVGZngqv+rAvLHyroqt78
         ACNDtNVOjsrq0hbyRGqHNP+u9iPshn7YDQ4wuvqqbQtoDzLML0TYnAx8F4iKjU8qMsR1
         BU/7VVdTI+p9Dl1m3GWQl+BpY4GcrEPQVoG07NoNBbd4TrnE063dcULgcGo27QHJTzDH
         foszrIJY8wHK0lQ0cXzkRak/IkVye9PWJ7JN/Kia46sOSYX2JBGB8ZByt7wxf5Z8Ml2O
         bDoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739217960; x=1739822760;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=qZge85fGuKAUE9Mz0cTsJLS+63ffaGNjx2RI84r0q6Q=;
        b=B1dE2ftkC2bhBnO3BetU0GJ9hNQZLYgxK8yJoySXGVrp5OAR3qCtogYPlSzYfEVYgd
         zjB6e8hLB+uB/9rwDV9JGE/5jgiaqvG2LiKpvfgeqj4wRmrHnQvghNVaydSSbUnOUL1c
         rDeq0m9ydLE1tOzGCZq6JEsrx2D/7ugu5bfQT6tVa931Qzef1Dxx6N3e8/BQChLtBz9G
         eHwraYtKNOn82TbR+VF1Nghzih3XYFC8UIJx1lb5S2SNCkmxnAjmX/yEG30Iqwcj9RLa
         VQG2zjbmKdti08G6R8bP3FE5RVLX8NfPYHUKudU9K+2pLXzDirKgS267Z0H2m37q804N
         dQGg==
X-Forwarded-Encrypted: i=1; AJvYcCUH8WOMzaX8fIwXSmMFoWxdoh0RRmJQIYgiH307AeBDeMrb0NWbGmxOERekgEEIBMobd9VvYT1wVDif@vger.kernel.org
X-Gm-Message-State: AOJu0YwSbMT0nVo5OXjMmfZyUUtfxy9jUhPU0N1MFowbjFlG6KcLF5CW
	YalKjzOChHNRQKeEfadeCIHFMupbvWSAkdg1AK58jt4HNZ9cvDj6FbPyKHB8nhs=
X-Gm-Gg: ASbGnctun2MjoGQDOiX6QGDns46XF3VRRGhrZla7jprVgbaC4QadupKD7Dl3coUtarA
	9uI3HuNR6TLluuII6vGHoed5yjQsyzY12BLDyIw7Sn3JVs1gs3TBMet97+P8QqP9f45VLBRewL/
	5267h/L4jPgpy2IQvDxYQV/jdDKqBdC/vV6DdnM9XvkGLUJvOki47ZJX03Hu3WbyrPFaCtmgke6
	R51bT4foiMM74nUG4Ii1cenabxwfaiJBCToNYVJtfxQQ58gAQLCpBjXih2+dt7LX/iI5Mr8crYK
	AYtEDOIOdzKzsYhJEp/PeP+mgzFZsxx1cTOeXj46YW+Kp1WIeR5OkTpwbiWGvsCYC0abVhsT
X-Google-Smtp-Source: AGHT+IENZNLlzbHZChxxzkAVFaxoHPFPpaDAe1DrFLA3eP/pNGLyNj0uGx+/p7g39WeC2q/Q0BDnJg==
X-Received: by 2002:a05:600c:a16:b0:439:31e0:d9ab with SMTP id 5b1f17b1804b1-43931e0e01dmr88923185e9.0.1739217960152;
        Mon, 10 Feb 2025 12:06:00 -0800 (PST)
Received: from ?IPV6:2a0a:ef40:1d11:ab01:7693:a594:d8cc:16e9? ([2a0a:ef40:1d11:ab01:7693:a594:d8cc:16e9])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4390db110dfsm194277315e9.36.2025.02.10.12.05.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 10 Feb 2025 12:05:59 -0800 (PST)
Message-ID: <22b42e2a-55f9-40c5-93a2-bd18a5ac3af9@linaro.org>
Date: Mon, 10 Feb 2025 20:05:58 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: sdm845-oneplus: use guard pages
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
 Bjorn Andersson <andersson@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Rob Herring <robh@kernel.org>
Cc: "Dr. Git" <drgitx@gmail.com>, devicetree@vger.kernel.org,
 linux-arm-msm@vger.kernel.org
References: <20250207151706.45031-1-caleb.connolly@linaro.org>
 <85c31e1f-20bc-4e48-b179-e44ee8e1f816@oss.qualcomm.com>
 <a22afa6d-18de-4b83-ab08-6b23b9a1d927@linaro.org>
 <3dc16129-6f1a-469a-a4fa-ecbfbeff53cf@oss.qualcomm.com>
Content-Language: en-US
From: Caleb Connolly <caleb.connolly@linaro.org>
In-Reply-To: <3dc16129-6f1a-469a-a4fa-ecbfbeff53cf@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 2/10/25 18:14, Konrad Dybcio wrote:
> On 8.02.2025 12:49 AM, Caleb Connolly wrote:
>> (resending from not a mobile client, oops)
>>
>> On 2/7/25 21:20, Konrad Dybcio wrote:
>>> On 7.02.2025 4:17 PM, Caleb Connolly wrote:
>>>> From: "Dr. Git" <drgitx@gmail.com>
>>>>
>>>> Rather than manually define the guard pages, use the
>>>> "qcom,use-guard-pages" property for rmtfs.
>>>>
>>>> Signed-off-by: "Dr. Git" <drgitx@gmail.com>
>>>
>>> I'm not sure this ID is acceptable
>>
>>
>> Linus & Greg explicitly allowed for aliases previously. Patches by "Asahi Lina" and others have been merged.
> 
> Correct, however the trust is put into the maintainer. Marcan et al. accepted
> patches by ""Asahi Lina"", as they had enough confidence to put their name
> behind said contributor not being e.g. on the sanctioned lists.

Right, well please let me know your decision and how you'd like to 
proceed if this patch is unacceptable.

Kind regards,
> 
> Konrad
> 
>> Ive spoken with the author several time about this in the previous years and they aren't interested in publicising their legal name. So the only alternative here is that plagiarise these patches which I didn't write, or i have to carry them forever downstream...
> 
> 

-- 
Caleb (they/them)


