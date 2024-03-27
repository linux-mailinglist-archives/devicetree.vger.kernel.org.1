Return-Path: <devicetree+bounces-53955-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 1074688F0B4
	for <lists+devicetree@lfdr.de>; Wed, 27 Mar 2024 22:14:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 691F5B20F05
	for <lists+devicetree@lfdr.de>; Wed, 27 Mar 2024 21:14:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3342A15356D;
	Wed, 27 Mar 2024 21:14:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="BJhJrezr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com [209.85.208.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 746B914F9F6
	for <devicetree@vger.kernel.org>; Wed, 27 Mar 2024 21:14:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711574058; cv=none; b=gCeAYHmU+b/HS3rH75m6TNdTNnAtejhgmFORvTQ2ALpzrUVUBcaUujP+qNrWoVQVk7a3Cz50dErY1EbALTDUPdFOvWNbTy7r87TDgQFCzG5owJiyvLLsS0j8mOL9T4yJzXbX7SUvVSsML41Peo43Oc5JG9EsPT7lKdzUun0Vgvk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711574058; c=relaxed/simple;
	bh=n2ZUulc3Eq3AAzZI8Ftjfz81QNys3b1pF4B57iF/n3g=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=lZuBaH/uVPA1H1VQBwEv/8GGRnepBitQcbFTzzRw3561SWTVcKXgCQGazaH9jzVrdmt1nUI+Sqhimp5z5F6rz1H0POqcNJ2RMiF4tCdwBoTuAqIvDppIjbeFJNhsjh+hybzMfmfme3rHykZCLNmoIBRHTxPe13NuykI9yN3hIws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=BJhJrezr; arc=none smtp.client-ip=209.85.208.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f45.google.com with SMTP id 4fb4d7f45d1cf-5684db9147dso274968a12.2
        for <devicetree@vger.kernel.org>; Wed, 27 Mar 2024 14:14:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1711574055; x=1712178855; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=n2ZUulc3Eq3AAzZI8Ftjfz81QNys3b1pF4B57iF/n3g=;
        b=BJhJrezrdYYS1OO2DMwhrRK0/VCOK1243JgX+gqNqXK8guKqK9TuGPaRcuQGsE05oj
         WOBpJkVf7//Hwx2famwzgYvzP85CgibefbVg01Pwf59VJDiKrhbzkszVy81LLbDWehQd
         4TmSMXBwk+y+CNvxY/7cxM+K8m90YEnP+Oa7+Q5jPJPL54u4wwOnYKw/k2kFy9xuYDcS
         vp5u98XUE1KD1EihEIoe99v41Hln716ZF7XmjlJm5jWhOAcvYhyPox6p56rvWQl2mw8X
         BBDWHhIiPRTSzbsNtDkFcomvOkn66pLxDCNhhDYRoRg2WfsaCjTyIdpbD5oCNL1S0Ekn
         Lq5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711574055; x=1712178855;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=n2ZUulc3Eq3AAzZI8Ftjfz81QNys3b1pF4B57iF/n3g=;
        b=e1W9MdQUsxt92eP8WE1JqFucmNWBLsgIi09y0SUZNi2nxLb0mOs6j47G5vTYLalP0l
         6QKK+bWk4FQH2lg/gv83tIqj9U1VCv3W72+VGVVv8gt+Un9R7PNVWzyMknb2W/1j8B80
         5iLqbdVysSRZtlOWgwXIWMXU/wa0BlzP1yusBthUyC7ZS67u9a921BGGxUpZrtSFlQZ+
         jybzvYJeSsMsSWzGdJnZXmlpBsI3k5Xv2aPhVP1Uh8qfi4G1Krk/7N8PqrHgQ6oaQoxa
         RIUZaIIYneaQSHxIu0YZi6YzFjHWbD9x0eucB2OZse6InqSQ+AoR6f259hJrSvWcJrT+
         gL4w==
X-Forwarded-Encrypted: i=1; AJvYcCUE2VL4XZo/Aq16Lw2yPyPyxEf/dSDnELhBsTGbGtuGLFb1wzzhsOAWOFXgrS9SXUX+vWlGriMeWNj1YIFicTUFNFi5w5XH0fquUg==
X-Gm-Message-State: AOJu0YyaQCJd4frjUDi+Q1Fmg6BwplJtKyDlEhX0bQc9kbq/r6gveMN5
	BfZop10eoT4dsH8cK6gSldIRbMoWvC/7h1v0kkMUjMupe8lq7idHfi7EfGcOtpc=
X-Google-Smtp-Source: AGHT+IE0ljPxnm4x1rpfPXYtNekRJT6Hwophjp4u4vEIGusaxfBHvkBco+v+6ad0FZuyCp//Ec9HNA==
X-Received: by 2002:a50:cd04:0:b0:56b:9ef8:f630 with SMTP id z4-20020a50cd04000000b0056b9ef8f630mr733887edi.2.1711574054667;
        Wed, 27 Mar 2024 14:14:14 -0700 (PDT)
Received: from [192.168.92.47] (078088045141.garwolin.vectranet.pl. [78.88.45.141])
        by smtp.gmail.com with ESMTPSA id j17-20020aa7de91000000b0056bfb7004basm16259edv.90.2024.03.27.14.14.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 27 Mar 2024 14:14:14 -0700 (PDT)
Message-ID: <c16777bd-9f17-4d13-bba5-110e6626afb4@linaro.org>
Date: Wed, 27 Mar 2024 22:14:11 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/7] clk: qcom: gcc-sm7150: Make clk_init_data const
 and various fixes
To: Danila Tikhonov <danila@jiaxyga.com>, andersson@kernel.org,
 mturquette@baylibre.com, sboyd@kernel.org, robh@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 david@mainlining.org, adrian@travitia.xyz
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20240321202814.59835-1-danila@jiaxyga.com>
 <20240321202814.59835-2-danila@jiaxyga.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Autocrypt: addr=konrad.dybcio@linaro.org; keydata=
 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
 izWDgYvmBE8=
In-Reply-To: <20240321202814.59835-2-danila@jiaxyga.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 21.03.2024 9:28 PM, Danila Tikhonov wrote:
> - The clk_init_data structures are never modified, make
> them const.
> - Add missing comma

Highly debatable given you're not expecting to enlarge this enum

> - Add dependencies on "ARM64 or COMPILE_TEST"

Please split this up into two patches (or if you really care about
that comma, I won't snitch on you if you squash it together with adding
const specifiers)

Konrad

