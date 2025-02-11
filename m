Return-Path: <devicetree+bounces-145357-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E392BA3109E
	for <lists+devicetree@lfdr.de>; Tue, 11 Feb 2025 17:04:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1CC053A37A3
	for <lists+devicetree@lfdr.de>; Tue, 11 Feb 2025 16:04:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2C1AB253B7D;
	Tue, 11 Feb 2025 16:04:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="dLmxfzZN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CD2C253B69
	for <devicetree@vger.kernel.org>; Tue, 11 Feb 2025 16:04:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739289879; cv=none; b=aX+m+gpvK3MaqIz3X2d/p7FbFt2Vlnzt/dahiEVoQbN4AbRe379nWcEvOf2xd3cyZjxFCQk9PLzn5UNmHicdMgCOEPLA/ZCS1Tt9JSeFo5J6HyidQ0m2tgY9a9ewsuhKnr40U5v1sEI4uYLZijT+khK3Z1JreQ0LkNfOOYXf7zA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739289879; c=relaxed/simple;
	bh=JH7ijZNDjNdhRFML1H7hwn6Ylh+jwwnUVby5SKkbOZg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=RkqXLJ/asvBse+xTEodNSzARcQGgeyZuS9t8BK4B3TNzzL32oLz2qJHOwVVWgGxUEJsp048Bbbw7G03gcQj/DdCFMLfQpe4peO4CuYFHRbeUPy2+yZ/+mC4k5UhIidE9wQCTF9I/8e88p4l9TAJ7aIji2taO7ZmV7rRBTRzDc+w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=dLmxfzZN; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-43937cf2131so21047665e9.2
        for <devicetree@vger.kernel.org>; Tue, 11 Feb 2025 08:04:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739289875; x=1739894675; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=jPRSZh3i6FtRdc7ODsguuXOWwzfovZBUq+Z1/sPEyX0=;
        b=dLmxfzZNmUXQZ9Bx69tBjdTbdvcDNY21PN8K1dLjLEWGu9Jv4YMQMCxDU8q9r7U3RX
         MY9viEfz/+hJAvaDBpQzcYJqP3X4c7CgMm3svXyv+cJPtfwW+zZvtZ8JCISlz+Y73nr3
         REI4kkeTc+iXgq9sREILI5BPq0E+0TgUW7uYBeER+zY2A2OoURsIKBBuD/MKBx/MuVy8
         h2/eqaVJk+xNBFEgqcLtWCJb7QRiThBuCylk4pDGNTIiufOO/HeXPHcpgs+VzsXRRTVV
         dufIOtnxwOMJ3O1tI+X/wG0VuW42L+Y6VjaxvZpwdkEUioBqSSd+r4NBFCOAHDEQYIV3
         96CQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739289875; x=1739894675;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=jPRSZh3i6FtRdc7ODsguuXOWwzfovZBUq+Z1/sPEyX0=;
        b=hhK17mCX0YJYLpVDgM0bcX4lPdJJtMdXHkfZjoiFwqR8vLAmrZImah7uI3PNTfQH43
         3/T0WPZAKsRiuvF0qzvqb7uZDSSNbFkMUB6k8VqsQWGmSYNG+2bNybbNX26hF2h5vPVp
         I4SJI6SPJf1Y7mnM2UeukqW9/CAXwoYoTljHXqBne7IlBiLCWufL7NPRWnB9eOu6azEy
         E46YBmRko6pcdV6OIs62BoS4yFDJqcoUBoPdNlf5YlCrOz9mNFPiBCe4+p8oFN5DXyAG
         rEhAIvdYs52gLx69avWXR0cLsY/LAFfoNnMLJbFqGa0t4hfj/QjXGn0du28usernP5YQ
         cx2w==
X-Forwarded-Encrypted: i=1; AJvYcCX7SbTonnYwzK9+8Vlnn80M4H6Nnl9h9T6NWmM9DveHcc54cz/aQ63v6NFpUmaOhRQoeRiSNxMAAUEJ@vger.kernel.org
X-Gm-Message-State: AOJu0YwHCTZkIU5See9U87YMs/CJPE4uli/TqDG94p55nEA7WZkL3UVF
	I80du9aQIzlwZTlyX0UxF1qgLMg8m0EZtW9pTpvA8FJlyZjfoacjStLg/bNBcc0=
X-Gm-Gg: ASbGnct33yoEzFHg3e56/X9wDEhKjXfFppHlHwivnbfVLgisUECLLu49r0UCHS+kLJo
	I6rlvofKH2KGWqZM1hKlr2NZswEkCHgR5szzqsE+xTYfzkoJNMk2Nv5YMSTjy46YYXhqg/Bnxje
	V6YVsIm3XOW3WBecn0BXM+FFQNLA4cjTgXdSlobAWNTvJIZFP9e/Xxee9vOx4m8i9lfpP+d78SZ
	hnxll6WG9rK0z/fR268+/d46tGakIYQELftWInw5REIm//FzxvgzcVIkkjb+pLbDC21Pg3HcUe0
	xYy4Vyt5HLKiG8mINTV6GgjCSP4NMwefKgFyvpNXCK/b8Oickdsu3www1w==
X-Google-Smtp-Source: AGHT+IGZ6rqRtEwePiKwnX4xQSPq4bLPiyPcMlt146MZTNkCKpzb/PK7/r6TdTiPg3VS3vFEj4i9OQ==
X-Received: by 2002:a5d:6daf:0:b0:38d:e149:f863 with SMTP id ffacd0b85a97d-38de419408cmr3758370f8f.24.1739289875146;
        Tue, 11 Feb 2025 08:04:35 -0800 (PST)
Received: from [192.168.0.156] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38dd6080926sm9084581f8f.83.2025.02.11.08.04.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 11 Feb 2025 08:04:34 -0800 (PST)
Message-ID: <a02289bc-fac3-4ea3-b5e1-8557c2b95550@linaro.org>
Date: Tue, 11 Feb 2025 16:04:32 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v10 0/3] Add SDM670 camera subsystem
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
References: <20250205035013.206890-5-mailingradian@gmail.com>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20250205035013.206890-5-mailingradian@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 05/02/2025 03:50, Richard Acayan wrote:
> This adds support for the camera subsystem on the Snapdragon 670.
> 
> Changes since v9 (20241218231729.270137-7-mailingradian@gmail.com):
> - add Reviewed-by from Bryan (2/3)
> - drop applied camcc patches (previously 1/5, 5/5)
> - rebase on media.git branch next and sdm670 dts patches
There's a minor merge splat which I fixed on this tree.

https://git.codelinaro.org/bryan.odonoghue/kernel/-/tree/linux-media-qcom-camss/master?ref_type=heads

Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

