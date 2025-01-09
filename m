Return-Path: <devicetree+bounces-136883-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DAC1A06BC5
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 04:01:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 783DC7A1A0C
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 03:01:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 149F713AD1C;
	Thu,  9 Jan 2025 03:01:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ieee.org header.i=@ieee.org header.b="eycMJDfP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-io1-f45.google.com (mail-io1-f45.google.com [209.85.166.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DD5C42A8C
	for <devicetree@vger.kernel.org>; Thu,  9 Jan 2025 03:01:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736391680; cv=none; b=hP0x6qKbwLLDerMkDJ52Qq4eZmZzQFyQeEg+f7Up4jolVWhneQExw0t9rcQw2wm5PkEXD7hSNNPULnllUFZ/CDdeXMeAoQm5boQ43Bis19uq/lqPAMWWxC7DM8WOIiBOje9kT8GAEZ/fpf4CpFucZ3elUmI2hQaj5rz/bCrf1/A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736391680; c=relaxed/simple;
	bh=styal6a10fBSjAdXfS/03k5/+K6pkiyNCbLjLqDpKJI=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=P+RlOLpyfJDE5C2PECw0Gj0l+YLP31AMzra5dygHt1HFfuE80HGm0WJwTfE60cLomDWT6Txr05Bg8xO9ZHxfP9v1iNfxRbNuRPHiNqRZGTWCJQfFv7It4ezMh2NbbXkjlL8sg8r5iKfguKqY1mkdxtYs6U6etJ6Z+Dqpj+tiISU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ieee.org; spf=pass smtp.mailfrom=ieee.org; dkim=pass (1024-bit key) header.d=ieee.org header.i=@ieee.org header.b=eycMJDfP; arc=none smtp.client-ip=209.85.166.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ieee.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ieee.org
Received: by mail-io1-f45.google.com with SMTP id ca18e2360f4ac-844e6d1283aso50828239f.1
        for <devicetree@vger.kernel.org>; Wed, 08 Jan 2025 19:01:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ieee.org; s=google; t=1736391676; x=1736996476; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=chLFunAF/6a+8neQ/O4A300WGPV8Q4UnrjtHUfVgGHY=;
        b=eycMJDfP6/cPe5uB6nhiFej8YK+SSUMNnoqiGbGMWBqnP4MjvMLqe/eDN9U1ouJeDh
         dMZXCvyAoOrmEk13KXmjLxNxqrxAhTxcAihykCE3YdMRqPoS8JHJI/6MdMpcgXJyKZig
         cT/IJOduplB9DOqEjqlyid/Kgm6nJ3ZKMbJZY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736391676; x=1736996476;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=chLFunAF/6a+8neQ/O4A300WGPV8Q4UnrjtHUfVgGHY=;
        b=kyfefI+iKKajMMfnSkiKs+VrQ+gyD+gVv4Xf6FdbOm6zg6c4xWgFxmp+A7wtKAqy5u
         ILvSK9DEvdKM+D86J/dGI2vB6Libz9JGsuKHs2YsDAaOYdhSTOhjl9CSWWSeLO0j4zTi
         79LApsUWNw4ALpV1j+OMmgPvOPUOp9qut3Lg4JZuAwu4l3SpHNaKKnZpRCMGGrd3xved
         VHWe3TX7iFcKrRz1YsBDpnVBxWfwAgdNe924BWn1I1ivYeqyjPGzydGTDU9SIgPZgkJI
         dpzxs8GbW+El0HHAkGbZQ1UEZLsthQsJHo9PrSF2HB3yShtg5uvFpMteDkpZi8eAOM15
         t2QA==
X-Forwarded-Encrypted: i=1; AJvYcCUxy6HP4XIFw1PWu1Ww8aPfgl6iLJKHMrl/Yc8Fi2bw3B/4CxMW+08cFPeIYibNZUghjJJdTUBz520b@vger.kernel.org
X-Gm-Message-State: AOJu0YwBe4zdM/fO18yuvE0UjNr+/GkUJpblPh3L0w2o3DVPDJfZQNL8
	MSNkH30s48/VbCLWUkPD9mMCHXHLU699Qqac7qrghM5BnJYMt1UPgL1vXTPMjg==
X-Gm-Gg: ASbGncsGVoL1WybDpPjaAS/TpJZkcfX2aCi3wIUwaEtB3VcpBu21A1dstc1GegeIOYw
	5ElkGh51Dvv5FKbmfN99MSKl85w0zMUEltld7vGXUH7cIxl3JeQqcDb4BcemwKprxznH9564121
	UV1uslPTFvZ0ZTt5Os3WMDnjkX7yzbKXKScOrAZKHGcwR11nHKykD0ivMMqY32aXqhjdjOklBGz
	XOxjSeheD054GIfWlMCNV/BWB3yhTn0qnLuKYDQ4q2uSD75OfRceD9D5zGUHO/kO0hmrbtHOsCb
	jUEufm542LhwvmE95LeBiLgY
X-Google-Smtp-Source: AGHT+IEmu7TPSTXMcXWqBPqzgGP992fYz6d0NlpSB4pe0TArY/5e/MlCpviUh6kU6qxRmMV/w50qsQ==
X-Received: by 2002:a05:6e02:1a8a:b0:3cd:d14c:be69 with SMTP id e9e14a558f8ab-3ce4b212f1dmr5019645ab.11.1736391676216;
        Wed, 08 Jan 2025 19:01:16 -0800 (PST)
Received: from [10.211.55.5] (c-73-228-159-35.hsd1.mn.comcast.net. [73.228.159.35])
        by smtp.googlemail.com with ESMTPSA id e9e14a558f8ab-3ce4adbc838sm1149235ab.30.2025.01.08.19.01.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Jan 2025 19:01:14 -0800 (PST)
Message-ID: <9b7a7b9a-7f70-4ba2-b948-ffa1a7ae8f53@ieee.org>
Date: Wed, 8 Jan 2025 21:01:12 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH net-next] dt-bindings: net: qcom,ipa: Use recommended MBN
 firmware format in DTS example
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Alex Elder <elder@kernel.org>,
 linux-arm-msm@vger.kernel.org, netdev@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250108120242.156201-1-krzysztof.kozlowski@linaro.org>
Content-Language: en-US
From: Alex Elder <elder@ieee.org>
In-Reply-To: <20250108120242.156201-1-krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 1/8/25 6:02 AM, Krzysztof Kozlowski wrote:
> All Qualcomm firmwares uploaded to linux-firmware are in MBN format,
> instead of split MDT.  No functional changes, just correct the DTS
> example so people will not rely on unaccepted files.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Looks good.  I don't see SC7180 modem firmware there right
now but this seems like a good change.  Thanks Krzysztof.

Reviewed-by: Alex Elder <elder@kernel.org>

> ---
>   Documentation/devicetree/bindings/net/qcom,ipa.yaml | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/net/qcom,ipa.yaml b/Documentation/devicetree/bindings/net/qcom,ipa.yaml
> index 53cae71d9957..1a46d80a66e8 100644
> --- a/Documentation/devicetree/bindings/net/qcom,ipa.yaml
> +++ b/Documentation/devicetree/bindings/net/qcom,ipa.yaml
> @@ -239,7 +239,7 @@ examples:
>   
>                   qcom,gsi-loader = "self";
>                   memory-region = <&ipa_fw_mem>;
> -                firmware-name = "qcom/sc7180-trogdor/modem/modem.mdt";
> +                firmware-name = "qcom/sc7180-trogdor/modem/modem.mbn";
>   
>                   iommus = <&apps_smmu 0x440 0x0>,
>                            <&apps_smmu 0x442 0x0>;


