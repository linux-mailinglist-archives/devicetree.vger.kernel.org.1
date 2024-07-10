Return-Path: <devicetree+bounces-84571-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4416192CCC3
	for <lists+devicetree@lfdr.de>; Wed, 10 Jul 2024 10:20:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id EEE042813F8
	for <lists+devicetree@lfdr.de>; Wed, 10 Jul 2024 08:20:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BC9AB85931;
	Wed, 10 Jul 2024 08:20:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Cfw7Gvys"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DC7184E18
	for <devicetree@vger.kernel.org>; Wed, 10 Jul 2024 08:20:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720599651; cv=none; b=nbGcgng6I5iGqJyjCfyqAGFmnbCShRCP5OAyEaqiJ/ivWBHfYq5zEmaNplzUpHSNXa1mVYDrQr26fjWR0lrLhQwku2YI1agihW3YmRIx3Sq724Qe8GiO13Oq6ABpXHz982PW4QVdTU+Oq/CWtN+68Zo3BCA7xOInsEvqEwcWvqM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720599651; c=relaxed/simple;
	bh=Je+DDEL0VG5/HOJTUCWPS+iS7ACCfjrKKm0Py8oNDUU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Vayi+rH1D43JoizDf4gRbIxR2eKlh67EJfhXDYqShTyo1dtmh3r9cWlzrHAjTx70rrH78PiNe1UWf6rPGNfZ39DWLvNgZnSG0enC7TSoe5PoujRHMHb9aVDLZvbrdpmPvVeA45DKor+d+LxyXfao7vZSWkgtDGqfBiy9A0f5Cnk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Cfw7Gvys; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-42793d4abbbso4111695e9.2
        for <devicetree@vger.kernel.org>; Wed, 10 Jul 2024 01:20:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1720599648; x=1721204448; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=E/fps9xeeLcadyxt/ePU2yFN+BHi7qw/s7VlkwnIe8E=;
        b=Cfw7GvysuHVPKtCCzATWNqNUHSerAMeJ6+mlJqe6Jz9z/mCDXnfyaPKrjVm7e3w9hh
         eZ0uTWabfrLeLbBMmi4i27CGWYdmkIM2FlsSf/SeyqGCfBn0eyiafpM7xsFVRcyerVEh
         EB7T4SzmJUoDLHYXsQJH9d4ezLRx5B3wnY0siGIwkitVSpq92y9qX7LBphdwObEWPotn
         6280S6n2Wh9PY1JnEX+a1woQxTKrFflZ690xbXX0I7GtEPeeGY/A7fFt1oDpknviDiHH
         j+BsuG1dFdcSq0926Gqr5Btc3Eg5WrKOIldNsx15mH3uzKbD2/gQxUBMCcAar6ZxUV2v
         c1Dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720599648; x=1721204448;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=E/fps9xeeLcadyxt/ePU2yFN+BHi7qw/s7VlkwnIe8E=;
        b=duX7x2NICimUvrUng4QljT/67dnBfl9lVhIcdEKVfzSYsugVBFYp0lgD5ZOxCXGf8R
         POXFhuJ5f/2JHfxsy1AagyAj8ylZg+l84qXv5ULTp34fTu3tIurMZ5XEitklN8PzOG7/
         12tg71TROBamVzLKSH1FFVF4SggSQjhR6QU51/HMxol7NvbVmbZrsyMdXSpuX1v6Cp5h
         /d7hCqsUdbambZuDZaaxRMsudxd7x31KdmaPSBHwL9E8gUWkrjE7nlhcay6BZF+aFrz/
         Z3KnPASU9nxlaFyNwK+nFTkyDY8VP/KTqYaQVvT2nNOvQcfHSmiPT4NEF/Mm+6mm05HM
         OOVA==
X-Forwarded-Encrypted: i=1; AJvYcCUyLXpS8oBqLSta6xm6c4TqcQVVfVIRxnfpSlK+//f7cRzYX14ExmSeR/eDUs3yxmxhXM6tOn3m+NKU+FZf+h0K4hb/43ZmN5F6+Q==
X-Gm-Message-State: AOJu0YySOHxxqbYHKNsZHIy/CR6YuSnudGJxLJa7GVf7PZeh46ixAiHU
	04anQaHt7ipjT+oR9ITvmBAefoT3jH760oBQEYi4MqFM6fwN0pQ+4frNIgBq8Mw=
X-Google-Smtp-Source: AGHT+IGNEmgQqVrXMH6GciGHOfhLlylIQOsKl1v5RdniUOzNY9s/KvFekBc78QGlsR1LyqnjL5Ma0g==
X-Received: by 2002:a05:600c:2e52:b0:426:6a84:208f with SMTP id 5b1f17b1804b1-426705cf5f9mr31980795e9.7.1720599648356;
        Wed, 10 Jul 2024 01:20:48 -0700 (PDT)
Received: from ?IPV6:2a05:6e02:1041:c10:6932:abde:fac8:217d? ([2a05:6e02:1041:c10:6932:abde:fac8:217d])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-4266d0185d9sm95900845e9.3.2024.07.10.01.20.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 10 Jul 2024 01:20:47 -0700 (PDT)
Message-ID: <db16f1e1-f874-4630-b8c2-3778441fe569@linaro.org>
Date: Wed, 10 Jul 2024 10:20:47 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 05/10] dt-bindings: timer: Add schema for
 realtek,otto-timer
To: Chris Packham <chris.packham@alliedtelesis.co.nz>, tglx@linutronix.de,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 tsbogend@alpha.franken.de, paulburton@kernel.org, peterz@infradead.org,
 mail@birger-koblitz.de, bert@biot.com, john@phrozen.org, sander@svanheule.net
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 linux-mips@vger.kernel.org, kabel@kernel.org, ericwouds@gmail.com
References: <20240710043524.1535151-1-chris.packham@alliedtelesis.co.nz>
 <20240710043524.1535151-6-chris.packham@alliedtelesis.co.nz>
Content-Language: en-US
From: Daniel Lezcano <daniel.lezcano@linaro.org>
In-Reply-To: <20240710043524.1535151-6-chris.packham@alliedtelesis.co.nz>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 10/07/2024 06:35, Chris Packham wrote:
> Add the devicetree schema for the realtek,otto-timer present on a number
> of Realtek SoCs.
> 
> Signed-off-by: Chris Packham <chris.packham@alliedtelesis.co.nz>
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---

Applied, thanks

-- 
<http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog


