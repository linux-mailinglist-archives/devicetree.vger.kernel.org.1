Return-Path: <devicetree+bounces-83350-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BF9592824E
	for <lists+devicetree@lfdr.de>; Fri,  5 Jul 2024 08:50:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0BC551F22D09
	for <lists+devicetree@lfdr.de>; Fri,  5 Jul 2024 06:50:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 610981369B6;
	Fri,  5 Jul 2024 06:49:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="HX5vU1Fq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8DF6E481CE
	for <devicetree@vger.kernel.org>; Fri,  5 Jul 2024 06:49:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720162194; cv=none; b=TBk5rDVMzuEeSIvw5S6JwYNGYg5BN/TvU9T4+urwwBG4O9BqbPcaXwaasNa1zNYCMo+1SVaY2xSJbFI325IqDyLf2npsosAXef2MbPJjB70XdCE+Wj0LQPSy2lajYKr1YHJm2hoXYB4kTd5t8upio3Fvr9kx1z8vpezeY9TSVLI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720162194; c=relaxed/simple;
	bh=o1DdgZ0EQ7OY4c/UkadWtlFAVNcUAsrV0b6yjM1MD+o=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=j9UkST4AZlODEmIprp8qfeEcRnD9x6SB5f8jA3KybGtr41aEYFqxBowHtnmqYws+FyKZafNP9If3fXJDizTcQYsPlaBDniIfjwDEqKOPyne3tdVBrSysELk3vDXrHY0L1s6LSM1RFngQuuofxPVlznvBugKfjprg0zFEiQPWCOU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=HX5vU1Fq; arc=none smtp.client-ip=209.85.221.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f47.google.com with SMTP id ffacd0b85a97d-36799a67d9cso1109601f8f.0
        for <devicetree@vger.kernel.org>; Thu, 04 Jul 2024 23:49:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1720162191; x=1720766991; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=bZPTqVBjKZLx6ScDTOX8Zjeb919/InL+7BVEViyNcUQ=;
        b=HX5vU1Fq79KN/2nQpuycUtj9/XnQjWW2M+QDQJT7LzTTrslRRMr1cnITEDIdS8d22j
         jSw5IJW4j+3qcjf89k467dcW0lhCPW/sSJ6n4k9EgV2WxTrU2vFMKX8IZRFsfvoVlwWY
         xMpmocbnIuvxmc3b6rt5j5rfMCPHZs1kNTsGlYOCeQHqxZYJsl6MJLJLb1mvQoTAnP9D
         2haE30x8KMHkyq8HvT47ZgRDJ7yxyP+JwpmdLbUlMhTg9OgFh1UW707SCXDiuwMXBWXQ
         SM++Z1tGSyaOm4smySD9C47eUbRUOGR8scR+7JaUcK6YkD0YaCOBuSb7226cmkAC+OUe
         7S0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720162191; x=1720766991;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bZPTqVBjKZLx6ScDTOX8Zjeb919/InL+7BVEViyNcUQ=;
        b=IQjqutnvaEenRNQbjl4RnkURxTSYlZ7wXTzNhGfAmkN1/YanA2uq28wYYPJGv9LJgg
         1a7gTtWYZ4AgxcSOGv9YHjOVzETpls439sBkI0LJNEcVh9Y+U4Elih/zsqAzwzAh/rKn
         Gi+oYh5yq4skEnyzpIiEk6NiY/MjijYzIqbdUqOz6SmKwki/oajmA+mVw1RagoDh8f30
         LzEYCMOny1LIanwpvwnhLQAhQ2YgzAgv+KEhDRBv/07lvrgbv23bSib231dcGvs5/tq3
         2l3ANi258oWqqzSdWfVOvOgHCJmP0Xjd3hhdd6/Kz3cwod/IYxGtwOThkjBbZsGfaHYS
         q6mw==
X-Forwarded-Encrypted: i=1; AJvYcCW90D0h2mJAtZMSISKcRn/qHWa5QaZy93h4LmeXHJBZ2iJM4AtpJEc2m06X+gAf6hh4CyCKK59Dx6B3NT4PhZcXxvr7RnP49B1xig==
X-Gm-Message-State: AOJu0YyTk6B++mox3x33MVBrbSMnDEd4dQVZDLGE7bgEeRX0an69BWX3
	z7dsxhEH0LQuPf9Z0Q06Faoz2KSu0t/aexngzCVi+dM9dQ5mqN1+vazAskqGEX4NqP1REAzFmbR
	7
X-Google-Smtp-Source: AGHT+IEzFmY8dPHpN/aOg/8K6x2uVrWR/wG0y9C3H+CcBt0Mcsixqw1+TalcZXQLFhwOZPcLI9S9aQ==
X-Received: by 2002:a5d:56ce:0:b0:366:ed80:d052 with SMTP id ffacd0b85a97d-3679dd65911mr3693877f8f.52.1720162170053;
        Thu, 04 Jul 2024 23:49:30 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.137])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-367938a6e97sm5760723f8f.109.2024.07.04.23.49.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Jul 2024 23:49:29 -0700 (PDT)
Message-ID: <b4b94938-903a-40ba-baf3-d04226dc9f90@linaro.org>
Date: Fri, 5 Jul 2024 08:49:27 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 0/8] msm8937/msm8976/qcs404 icc patches
To: Adam Skladowski <a39.skl@gmail.com>
Cc: phone-devel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht,
 Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Georgi Djakov <djakov@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
 linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20240704200327.8583-1-a39.skl@gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Language: en-US
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20240704200327.8583-1-a39.skl@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 04/07/2024 22:02, Adam Skladowski wrote:
> This series introduce new ICC drivers for some legacy socs
> while at it also updates a bit of qcs404 driver which seems
> to not receive much attention lately.
> Please take in consideration i do not own any qcs404 board
> so i cannot test anything else than if it compiles.
> 
> Changes since v1
> ================
> 1. Reworded commit messages
> 2. Adjusted yamls.
> 3. Adjusted examples.

Adjusted to what? This is supposed to be specific.

BTW, you use here odd email address, so:

<form letter>
Please use scripts/get_maintainers.pl to get a list of necessary people
and lists to CC (and consider --no-git-fallback argument). It might
happen, that command when run on an older kernel, gives you outdated
entries. Therefore please be sure you base your patches on recent Linux
kernel.

Tools like b4 or scripts/get_maintainer.pl provide you proper list of
people, so fix your workflow. Tools might also fail if you work on some
ancient tree (don't, instead use mainline) or work on fork of kernel
(don't, instead use mainline). Just use b4 and everything should be
fine, although remember about `b4 prep --auto-to-cc` if you added new
patches to the patchset.
</form letter>

Best regards,
Krzysztof


