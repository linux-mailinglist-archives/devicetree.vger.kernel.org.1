Return-Path: <devicetree+bounces-58307-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 309468A1564
	for <lists+devicetree@lfdr.de>; Thu, 11 Apr 2024 15:20:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2D8691C21983
	for <lists+devicetree@lfdr.de>; Thu, 11 Apr 2024 13:20:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B75E114C58E;
	Thu, 11 Apr 2024 13:20:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="DYvdEcPG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com [209.85.167.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4EAF145FFA
	for <devicetree@vger.kernel.org>; Thu, 11 Apr 2024 13:20:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712841621; cv=none; b=evG/5Sf3pDUcF12svJ63z/mviMrEkGa0V5P3SRcfN4nteIXv9JpGqQyDmu3j//srDyV4gBD9g4t40yYwJwZMG9EndKzobFDpj49+LMqGslxqf8s5UXsKvPX6wLrVbYbHv5NrysBkTnaQf+ugroVcg196lKyFewwCi/f7T+vwLAA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712841621; c=relaxed/simple;
	bh=9z04wVL9tppcKJeZoKAWtIM01AbCDsyFEgTUPxH/qXc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Z+Tui+1RmphOkfeVyqNBYcT7jvzt+1r8ZyEIzThotfN74NWtUHfmlfje+dJDQ6APwgA43AmpToH6h+90d8gDw23tCSMKojXzjdCKQdtqRyCFjT+sQO7AocVnTnsCb/46ivqa5JhLi/uob+SFt9PSQG6+y/APxetyLp9mTK/RRds=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=DYvdEcPG; arc=none smtp.client-ip=209.85.167.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f41.google.com with SMTP id 2adb3069b0e04-516e3103d92so1930578e87.0
        for <devicetree@vger.kernel.org>; Thu, 11 Apr 2024 06:20:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712841618; x=1713446418; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=E/2JztZMHjEIr9EicsVsYGYpbmPzpQz07gVhGfxQaCM=;
        b=DYvdEcPGQY+3VcUj3/zaUS/Zo8wwYLq35F0dTbvFVAzSd8xw1UOqIXLMp6uakcL9Wt
         iaOJJQHo9eT6oJ7+Lbn9T+gZtxmb0soilLSiB/JkmRiLtqFYdEb0HocIbCIMer967GbE
         /btAZ38JdvKFCpoFicyS0wkZBQvDBCpy6LctmN4Y5tyJUrXz70qWTMKY3QCCim8QZiul
         rg/k175jQHad27mmKjXgnZpXZPIZS27ddCa8gVXxz9/RzaxClFKVefmgNDevRofpTLFd
         7WnxnC17wdssEUWJVWJ29uYAraaKPy92TqAb1QW5oYlMY6jj2GQQBAi2PeM3pNJLgJKe
         Fu6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712841618; x=1713446418;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=E/2JztZMHjEIr9EicsVsYGYpbmPzpQz07gVhGfxQaCM=;
        b=QpggHWoHrt2ZB33upqUHIiiD+kU4ZHD/ymw957OM/IwXNh+WR9w40elFVrWUJ98jqt
         i0OlPfJHlQvarwEj5YJY8p7G3oUEfil4KDrAY2yrMZT8qVA3fvpMXD6KIAdhDgAHQUSy
         O1J3GJpJswuKcpBMdzGWbQhzDJ4QxRj9eznfLs3g/+XCjrai3DUsnxDvlYNCzrUR4oO9
         8PI33S39Mmg9fPpFlbFStzXewQ5pdwH9X3dF7k8hkuZ0XMwsJvrTozQCZkCYrZrLhJp/
         eM+P+co/SDbbmBisS/+lZLx5BFFEm0cXEbjpk1YIvgMoEBk+96dBvTrkY/QQNcnLFNv7
         1i5A==
X-Forwarded-Encrypted: i=1; AJvYcCVRe8snAverbbYj5n8/ULbMpa+XiadAR05qDKS+kL9nF+PcWNhjaTwaxmvDJ9il4smJN7QLlNGB6pP+M655Dg5Gf4AjCg5iApd+oA==
X-Gm-Message-State: AOJu0YzYuMKddtWUbM/fEAQ7qyK1PtDMvvyhapbb8tCqFRbEHV+SPgiU
	Mr+PVgW0yizIsqPe3Fp7x9tvcRNEM/0szVpPK8NWmnx8KAztPWXX+1k/S4uYg5s=
X-Google-Smtp-Source: AGHT+IFVyUhiXus9FVTX8ZN/sHtpMGqqRTkn4BphmYGWveolk57GO4n0qOZ8W7wgaAJVKNsG093law==
X-Received: by 2002:a19:ca4d:0:b0:516:c7e0:6493 with SMTP id h13-20020a19ca4d000000b00516c7e06493mr3702588lfj.6.1712841617822;
        Thu, 11 Apr 2024 06:20:17 -0700 (PDT)
Received: from [192.168.1.102] (88-112-131-206.elisa-laajakaista.fi. [88.112.131.206])
        by smtp.gmail.com with ESMTPSA id v26-20020ac2593a000000b005158558022bsm208834lfi.288.2024.04.11.06.20.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 11 Apr 2024 06:20:17 -0700 (PDT)
Message-ID: <173ee402-0e8e-453d-bf3c-a78a5e027aa9@linaro.org>
Date: Thu, 11 Apr 2024 16:20:16 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] Revert "Revert "dt-bindings: i2c: qcom-cci: Document
 sc8280xp compatible""
Content-Language: en-US
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Bjorn Andersson <andersson@kernel.org>, Robert Foss <rfoss@kernel.org>,
 Loic Poulain <loic.poulain@linaro.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Wolfram Sang <wsa@kernel.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, linux-i2c@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
References: <20240411085218.450237-1-vladimir.zapolskiy@linaro.org>
 <0b810e39-b82f-4cca-87b0-6e586690b242@linaro.org>
 <7098c454-6a1d-46ae-aef9-63bb9ee82c6a@linaro.org>
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <7098c454-6a1d-46ae-aef9-63bb9ee82c6a@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi Bryan,

On 4/11/24 15:21, Bryan O'Donoghue wrote:
> On 11/04/2024 13:03, Krzysztof Kozlowski wrote:
>> On 11/04/2024 10:52, Vladimir Zapolskiy wrote:
>>> This reverts commit 3e383dce513f426b7d79c0e6f8afe5d22a581f58.
>>>
>>> The commit ae2a1f0f2cb5 ("dt-bindings: i2c: qcom-cci: Document sc8280xp compatible")
>>> was correct apparently, it is required to describe the sc8280xp-cci
>>> controller properly, as well it eliminates dtbs_check warnings.
>>>
>>> Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
>>
>> Subject:
>> dt-bindings: i2c: Revert ....
>>
>> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>>
>> Best regards,
>> Krzysztof
> 
> Reversion is not the right fix.
> 
> I'll send a proper fix asap.

Thank you for review of this change related to "sc8280xp-cci" compatible
and the expressed desire to sort the mess out, I will be waiting for your
new change impatiently, since afterwards it will let me send my update
to the "sm8650-cci" related change.

--
Best wishes,
Vladimir

