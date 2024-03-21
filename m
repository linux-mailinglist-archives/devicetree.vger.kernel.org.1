Return-Path: <devicetree+bounces-52246-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A220885F6F
	for <lists+devicetree@lfdr.de>; Thu, 21 Mar 2024 18:16:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id E9BDBB2397E
	for <lists+devicetree@lfdr.de>; Thu, 21 Mar 2024 17:16:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AB97E20DE5;
	Thu, 21 Mar 2024 17:16:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="rOctEU41"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f169.google.com (mail-lj1-f169.google.com [209.85.208.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0443012B70
	for <devicetree@vger.kernel.org>; Thu, 21 Mar 2024 17:16:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711041375; cv=none; b=kdoH1k1NT3k6Dm0jOsfpIujHnAyiO9v4bwnqP3FLy9XX07shDiMWX3mOl6DY2ANf2lhXu4E/IZKJRzhe7u4W/TqSBlIoeB4azIagbmsruxR04PS3WfyvjMrtF18jZL1Ol3VTjPTrtnBGrcKoxjUofHIAvLx6C7uEtE2ALbg+jLg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711041375; c=relaxed/simple;
	bh=RUsWaSGEGyzJkXmAa/BIHP71etV0BQXLfjmPcNLZps8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=R4aZPSqX9/B9GfT4+k1suelCTjdzMo0ur5QqJA90pgws9Ns6XwTKrLCrniHunwcpJPw4rGC2tgpSynq0OdvS3ymwUbivfbbwFqwxuFVg9sgi4ew+j/gTzCXx0EH567+TMTD03kbnwjxy+ojs+3xK6nBrLcHZpG/CtxfPPI8syMQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=rOctEU41; arc=none smtp.client-ip=209.85.208.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f169.google.com with SMTP id 38308e7fff4ca-2d4360ab3daso21384441fa.3
        for <devicetree@vger.kernel.org>; Thu, 21 Mar 2024 10:16:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1711041372; x=1711646172; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=FBA7Y36AMw0KTupRrw+PnBU6PO+JQCp7HzJLhSmsbvQ=;
        b=rOctEU41ksX2XVMCUcrsRmWO6kNfoqXJ4z/t+hVWJdVVyfW/5+FtCxa9Quxc6kiPE2
         /lSXGM4JmHy0L3diLkWAzU5z5DN+asJTr9ZJkrZSjcyMsaWpCrezd4OckMDrblSMyuYF
         jMfw3XuxMShzCLypHQrpyY2j0ZG4Mho8ypSph5EnIO6A+S7kIFfDnFhuum3ovuXlt1AC
         UM6z9zfPKlh2xWF0g/yIVntihzDjTJJW7vZN8fQ8y9heEeoAnqZ8r4IT7vlNpiOTtKsT
         L7C4neCUETKTZKn+lTRpetRmp+0v32H10w12aEYjyGilCd4+ieJDUEb71fNK88DEWA1L
         7D8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711041372; x=1711646172;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=FBA7Y36AMw0KTupRrw+PnBU6PO+JQCp7HzJLhSmsbvQ=;
        b=YARO8bi/zUkY21C+M8jGpA86zUDQwP2fzxYdnmCnkyXeSBFLZIuGdfUDNLyE6d+zCg
         izfWkLM9/i9KdteWNC3KAJOMUq6HbTC/kX+KhatqnvqCl5h88ph7eA61rNKTiRMHZ7Ym
         dTXRxFtwsDx2TKDxh9Oi/Xcn7et86lXQXF7Zg12OHvfXZBQsKKBoKXa4O4QGsGo/2Cva
         +7e3zak3YSCs/tgT+jG6SzXZ93UETD6ZWHvPmK4Z6YuKIZES67cxJC5sAjs3UWm+6yGs
         ksZ4L7w7F77WJICWZZqcOYBPrArJPo28kFV29vLFB8yujQIRzOMDI3pHvkYfINkra3+X
         Z1kQ==
X-Forwarded-Encrypted: i=1; AJvYcCUFwulRoimTtNlvyqLVrQAF0HFajbjq2oEkdEA4mR0h/2nY/b6rV/HX1xyf2Hcx8FFHtKEuuLbejgBPff37Hj04kydlVWuqN5Gepw==
X-Gm-Message-State: AOJu0YysVsKtc86uJAxd6fBos7f/Rpgn6ftmHt+rjEAW3nnubqvBRvvC
	RlFalaIR6mLsqOujnbs+nx9cwXpcD33sqKEvyDGTevQpZWCoZPHXD1oSdjO8l5OxlcuIEOpO8Rc
	O
X-Google-Smtp-Source: AGHT+IGkJlWYDvk6fZNaztZrSC12byEOQoxXY+/V0L13JjfECs9/v6X2OntqmmM+6UAK1rUT7dwbiA==
X-Received: by 2002:a2e:a415:0:b0:2d4:a6aa:39b3 with SMTP id p21-20020a2ea415000000b002d4a6aa39b3mr97037ljn.31.1711041372139;
        Thu, 21 Mar 2024 10:16:12 -0700 (PDT)
Received: from [192.168.10.46] (146725694.box.freepro.com. [130.180.211.218])
        by smtp.googlemail.com with ESMTPSA id v9-20020a05600c470900b0041409db0349sm333276wmo.48.2024.03.21.10.16.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 Mar 2024 10:16:11 -0700 (PDT)
Message-ID: <6df3c39e-5a03-46d7-921b-d53d75447aaf@linaro.org>
Date: Thu, 21 Mar 2024 18:16:11 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/2] dt-bindings: thermal: convert st,stih407-thermal
 to DT schema
Content-Language: en-US
To: Raphael Gallais-Pou <rgallaispou@gmail.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>, Zhang Rui <rui.zhang@intel.com>,
 Lukasz Luba <lukasz.luba@arm.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Patrice Chotard <patrice.chotard@foss.st.com>, Lee Jones <lee@kernel.org>
Cc: linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20240320-thermal-v3-0-700296694c4a@gmail.com>
 <20240320-thermal-v3-1-700296694c4a@gmail.com>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
In-Reply-To: <20240320-thermal-v3-1-700296694c4a@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 20/03/2024 22:33, Raphael Gallais-Pou wrote:
> 'st,passive_colling_temp' does not appear in the device-tree, 'reg' and
> '#thermal-sensor-cells' are also missing in the device description.
> 
> Convert st,stih407-thermal binding to DT schema format in order to clean
> unused 'st,passive_cooling_temp' and add missing properties.
> 
> Signed-off-by: Raphael Gallais-Pou <rgallaispou@gmail.com>
> ---
> Changes in v3:
>    - Specify const value for '#thermal-sensor-cells'
>    - Add 'maxItems' for 'interrupts' property
>    - Change commit log accordingly
> 
> Changes in v2:
>    - Change commit log to use imperative
>    - Drop description
>    - Drop 'clocks' description
>    - Add 'reg' property
>    - Add '#thermal-sensor-cells'
>    - Make node name generic in example
>    - Fix YAML style
> ---
>   .../bindings/thermal/st,stih407-thermal.yaml       | 58 ++++++++++++++++++++++
>   .../devicetree/bindings/thermal/st-thermal.txt     | 32 ------------
>   2 files changed, 58 insertions(+), 32 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/thermal/st,stih407-thermal.yaml b/Documentation/devicetree/bindings/thermal/st,stih407-thermal.yaml
> new file mode 100644
> index 000000000000..9f6fc5c95c55
> --- /dev/null

Applied, thanks

-- 
<http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog


