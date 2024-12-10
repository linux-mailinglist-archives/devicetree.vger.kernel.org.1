Return-Path: <devicetree+bounces-129545-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 9941C9EBF8C
	for <lists+devicetree@lfdr.de>; Wed, 11 Dec 2024 00:46:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3B5C2282BCD
	for <lists+devicetree@lfdr.de>; Tue, 10 Dec 2024 23:46:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D282D22C34A;
	Tue, 10 Dec 2024 23:46:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="BCJC79Av"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18607229149
	for <devicetree@vger.kernel.org>; Tue, 10 Dec 2024 23:46:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733874364; cv=none; b=ety+JoGwxczTECyx3bzLeW6oYPT3gT7aJM9rnhh3zASOxKPX909mH5YwwM6kI6QecBzSmpQl3tTckyY0WXtmH6kfa+bvSVpfz9Z9sgxs1cARTjRV2JQ+Sm4aV/awrQ7gT6u059bcvInSEOIs27AJei2+YL9i6vdRpzhH56iQZg8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733874364; c=relaxed/simple;
	bh=UwRsTVENoKuapuXoJkzI2ldmpDPY5nWtFJ4BVsBVGgQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=DjDpsUiS5iejWEmSHz/hZ0ULRq4tkKvPFXlRf2Pa034+YfZCdj/62rx9mPaYFDEHxpBZyE8IUv0QGdqYVHviuTMd2yozxAc3+R2bBNGLYLza3Upq/m5GFACmrHFcdhfAvAID+1JbOMGuf1W5Z5G8Ztfai3j8peHayHL0n/2ow2Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=BCJC79Av; arc=none smtp.client-ip=209.85.218.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-aa692211331so26243466b.1
        for <devicetree@vger.kernel.org>; Tue, 10 Dec 2024 15:46:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733874361; x=1734479161; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=dUFQtOuHVAdyoBXRcqgtOx+EIFFocH6sZ24cVAKwDzo=;
        b=BCJC79AvvMqQUFklhf1DqqAyi1XfzuqlFU7yIEg0Hc/c2PyewNbGIsybQrnZKgW+1F
         Xd6gC9AwGKsLUNf1V/DtQ28EBvarZMlMmm+JlL0gSr9a5XbNqculYj93/7lcgJD+MjiO
         VtOcTNA3o0cOHwvbzkxGEJBNPEUClQTPD+D9HnA4HRSFlqviRRK8YybJkHgVA6lEoxGK
         dUoj0QuoEwNJazHxLz3mF4E1GIH5GGLQha5hguhKNYFHuC6YksIK9x+0MW1Wa35YrJMG
         tvk8rt8I02/IH4qVHa2lvAc8cYweRTloBsmraiZOEFkCsgpdCysX9bFdsdjfEE45z5xr
         LXvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733874361; x=1734479161;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=dUFQtOuHVAdyoBXRcqgtOx+EIFFocH6sZ24cVAKwDzo=;
        b=WTuzKEdglCXcuFiP7m0bJmH99jrWwB9ausgfOGbn3uuXFDEUPSIcYGUfuHL/gCPwLq
         7i7z1ozYDirNPz/SPDaOX/A6Ok6chfApCX0wvRfi2IA+d3B38krLcqVRU7mstwoukWt3
         ViUIo7yZZHkMiP/Jf7/Oy+UyE86DwBsFUzml9qAp0uI3bUgUU1OLtxPK2WqvylE/hn9e
         H/HWhxoeuQAauWqEBdiB9SPfa7Y+u/8iugdjj2lo7Vd1pD+SknnwT5N+RLELy022v7b2
         csFTK29EHp+Rd1p/W7tReNCepbz65yEDeDnw7G8IMiW25P9E9dQgcS7Qriur+J4NlMbn
         tWPQ==
X-Forwarded-Encrypted: i=1; AJvYcCWvSEiumbP2LIWUDczuA9xO+rzQq03PMplYBWZ0bkcufdXSx4+rv09YKknANxRlsGC0EEJHxX3YL+cb@vger.kernel.org
X-Gm-Message-State: AOJu0YxbWobu1YyPfsq00uWpm7tAXElSgmNLabD3OFwkNllrIBBLynXn
	NZzwE2SPZlfaUy+SRcpj33fncEO9NtGJ0DERj/ahAZaFVbjxzKVzC9KYkcnPjt4=
X-Gm-Gg: ASbGncuFbyVSI+UVKbUGJ95GGhmhbHYCTwml3L4CbKBznGfnhskVsC/+1pNN0ts8J6w
	xzeL3Yok2yk0DdsemB4BUcOsqUoVsJ9/x16JOGBeS6MOk7rUa9Ey5ylFHibcmHv3wjLoaFJexiq
	RzjUtsL3H57N3ryuZwSDM5v67u+0wjJ9Z6RgtYrDxPZ3UAbxH1wUL0etLHlEZuNLN+/FspmfxOm
	kDw4p/JFY+2QiiiCCe8Albqag/oYKiiERjjlaQPnnoIzmVHidcWy/VK7arufa/XGZg=
X-Google-Smtp-Source: AGHT+IH8DOw8jFu20tYWeECEvg3iojml0rDggWVUOXEmQq6TtEKUwAtdydqgImho+auqElK84ZJvfQ==
X-Received: by 2002:a17:906:3111:b0:aa5:1d68:1f43 with SMTP id a640c23a62f3a-aa6b159e292mr58213266b.11.1733874361407;
        Tue, 10 Dec 2024 15:46:01 -0800 (PST)
Received: from [192.168.0.40] ([176.61.106.227])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa62602cf3esm899768866b.97.2024.12.10.15.45.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Dec 2024 15:46:01 -0800 (PST)
Message-ID: <64bfc226-4840-4d0c-859c-b6609d169aea@linaro.org>
Date: Tue, 10 Dec 2024 23:45:59 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 2/5] dt-bindings: media: camss: Add qcom,sdm670-camss
To: Richard Acayan <mailingradian@gmail.com>,
 Bjorn Andersson <andersson@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Robert Foss <rfoss@kernel.org>,
 Todor Tomov <todor.too@gmail.com>, Mauro Carvalho Chehab
 <mchehab@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>,
 linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, linux-media@vger.kernel.org
Cc: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
References: <20241210233534.614520-7-mailingradian@gmail.com>
 <20241210233534.614520-9-mailingradian@gmail.com>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20241210233534.614520-9-mailingradian@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 10/12/2024 23:35, Richard Acayan wrote:
> As found in the Pixel 3a, the Snapdragon 670 has a camera subsystem with
> 3 CSIDs and 3 VFEs (including 1 VFE lite). Add this camera subsystem to
> the bindings.
> 
> Adapted from SC8280XP camera subsystem.
> 
> Signed-off-by: Richard Acayan <mailingradian@gmail.com>
Hi Richard.

Thanks for sticking with the series.

Could you please implement this yaml as per the latest format here:

https://lore.kernel.org/linux-arm-msm/20241206191900.2545069-2-quic_vikramsa@quicinc.com

- Ordering of the description of the nodes should follow
   the example and the example should be in-line with:
   Documentation/devicetree/bindings/dts-coding-style.rst

- Sort regs, clocks, interrupts alphanumerically

---
bod

