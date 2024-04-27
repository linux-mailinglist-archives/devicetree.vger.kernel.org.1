Return-Path: <devicetree+bounces-63265-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A6CD8B435D
	for <lists+devicetree@lfdr.de>; Sat, 27 Apr 2024 02:49:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0EF7C283430
	for <lists+devicetree@lfdr.de>; Sat, 27 Apr 2024 00:49:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 71AD52D03B;
	Sat, 27 Apr 2024 00:49:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="WZGSb2s9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30FAA29424
	for <devicetree@vger.kernel.org>; Sat, 27 Apr 2024 00:49:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714178979; cv=none; b=Ewm+7yLiep2e184HluVL4pKoBaNNsJOhQh1S9LG9JyBdIFhp+n8mmQSfm0Xx41jmFNklPLnOX98A6y4UBhw1+QEplH1Lv78sgbUvnqzNFpEH82EEZ+9v9DxiP++AGArzFI9AYKURmEwJ6LtvV+BTQ0a8R/Ye5JbpVvzTInCvBGU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714178979; c=relaxed/simple;
	bh=xchrYfJwip6YVEpMpp+uuBcHGuBhAL7aH0kR2YjiNyo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=bSRMpFirlDPhLjmLDMo3eGkPOr16Cle6VDzqGvWR4TzOucSwagv2vS8wi/xCAB9sOIJwnr6zuVYr9jerZNqFagEvDqccKs2ddeFg2sLCbD4xBnfI/PLzueD6cfHNQQ7QwUIOJVVIsjUT5qR3yvkKqXJbO6qFgIiCKOLOTrOVjG4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=WZGSb2s9; arc=none smtp.client-ip=209.85.218.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-a52223e004dso308039066b.2
        for <devicetree@vger.kernel.org>; Fri, 26 Apr 2024 17:49:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1714178975; x=1714783775; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=1Hfk5Lgn1DirmZkPJkY/TiDi3hTkVLp/UYvhKwzYAAk=;
        b=WZGSb2s9TNnm9gjGqFMfFg5yVhU/1ea9Ng/biqllnVMsuTghVa35pnD1lxWLKmdVdH
         6kMoXGqOELZ0S4zH4otyWEkUdppVj1Myrn81ygaYaODIeqClldXx8e/95vf2KR23jnEe
         ceBR46WV3+ICzdhrWq4lQ+K9b/vG5XFSeQCh0s5v/3JbRNLeaNBX7KfTI7CEY5eU06w1
         GV2Y+HmAK9I8Lg0GaWiLK7sr2uORB6VcxbIgehL1uejyZM2L6XPTv4NYfAKmFjvSE5jp
         eBBDEwsH0MCzQHphnnEQat+7XqQehjPNfwUzLLKpefSgSOon6OLKtyTG2p80AsuCCrT/
         A6zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714178975; x=1714783775;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1Hfk5Lgn1DirmZkPJkY/TiDi3hTkVLp/UYvhKwzYAAk=;
        b=Pr3AErSQWvA0v68MN1wMtAr1iinfW9xzrO53kEq0maC2lG4BGkVzF9FzELLy8c8i44
         6oyQtbk4gl6iyH1eJSMwcipGl4nZH6nnj6EbLS1tbvkjzTPagstOoNbeWZOfTMcGe9n9
         jYPBUl6sSFz1bQHZ1gfKmhlk3Y4UWp/i9jnzCnRVp4SwRXumLhXYGKMzFeCX2rh1xFcF
         psAhlBiYn8rzMdUgFZFFA3EnfQ5t0CC0H5m9Ct2Hd5HHd/YXgXoVWwck8NvYInuO4V/z
         8UdQTxNrxu3tJMlKqqfO/cbFLqmRb4uae7vvpGY/aq47eAyi4hWJIaf+7zZj3wEQmEje
         ex/g==
X-Forwarded-Encrypted: i=1; AJvYcCWJZBRkHlYmgqIaP8bq1t/igNvz3gAaUYAOQtM6L59IFiuaJyu9leJ1YqD2kQk4s529FdVhoqYMe9mygTPNs68hhQf1g920IS5HSg==
X-Gm-Message-State: AOJu0YwWiiz/TEk8GCp2MOJQMgARBUgjZcc5qQjC/B+ki3pmPOj1HiQv
	Zmkm3bLa09rF14dv2VSpjDzimcTJohsTIz4RT3NW2kv11q2PY3qv5rA8dNnlg88=
X-Google-Smtp-Source: AGHT+IGhr/VQ02mbP3CYR2JEQQwDhJDCLDSoBb7WVXMCvAnaQ/wnkMUCJHKejxGuAlVxpARrvG3c2A==
X-Received: by 2002:a17:906:68c6:b0:a52:6e66:dca4 with SMTP id y6-20020a17090668c600b00a526e66dca4mr3609625ejr.32.1714178975419;
        Fri, 26 Apr 2024 17:49:35 -0700 (PDT)
Received: from [192.168.114.15] (078088045141.garwolin.vectranet.pl. [78.88.45.141])
        by smtp.gmail.com with ESMTPSA id q21-20020a170906771500b00a51d408d446sm11136759ejm.26.2024.04.26.17.49.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 26 Apr 2024 17:49:35 -0700 (PDT)
Message-ID: <e3b8b0fc-af35-47db-bd67-84fdf2492c30@linaro.org>
Date: Sat, 27 Apr 2024 02:49:33 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: msm8916-samsung-fortuna/rossa: Add
 connector for MUIC
To: Raymond Hackley <raymondhackley@protonmail.com>,
 linux-kernel@vger.kernel.org
Cc: Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Jakob Hauser <jahau@rocketmail.com>,
 Stephan Gerhold <stephan@gerhold.net>, Nikita Travkin <nikita@trvn.ru>,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 ~postmarketos/upstreaming@lists.sr.ht
References: <20240424144922.28189-1-raymondhackley@protonmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Autocrypt: addr=konrad.dybcio@linaro.org; keydata=
 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
 izWDgYvmBE8=
In-Reply-To: <20240424144922.28189-1-raymondhackley@protonmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 24.04.2024 4:49 PM, Raymond Hackley wrote:
> Add subnode usb_con: extcon for SM5502 / SM5504 MUIC, which will be used
> for RT5033 charger.
> 
> Signed-off-by: Raymond Hackley <raymondhackley@protonmail.com>
> ---

I'd rather see these together, but I suppose adding a connector to
a micro USB controller does make sense..

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

