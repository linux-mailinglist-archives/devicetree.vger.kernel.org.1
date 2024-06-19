Return-Path: <devicetree+bounces-77621-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E32B90F6D6
	for <lists+devicetree@lfdr.de>; Wed, 19 Jun 2024 21:17:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9C2A11C23C28
	for <lists+devicetree@lfdr.de>; Wed, 19 Jun 2024 19:17:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 62721158D7D;
	Wed, 19 Jun 2024 19:17:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="DzL1LY7q"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB584158D66
	for <devicetree@vger.kernel.org>; Wed, 19 Jun 2024 19:17:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718824668; cv=none; b=QchtMhP9T5CexqOT7T0jRO9hFhGFqzcpZSp3WUjz2XbJDxSmGGqjuVdx2CdUr5MBcjPHXz4YZsxKCi470/TAGIv3+aqzi8+9KNorQjr3R6hSy9NndcmJGTY4mM/iWISSFmsX3psBn/OhVEFqmG1hpkMG/aAEDQY+szKtjB5qNB0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718824668; c=relaxed/simple;
	bh=1f6nJxwFba9DqcGw62muYo8R6CFQWJeLoHkZBBpzB8Q=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=aIYuxkSh4nHYP1QOXvQgSt6n6s2jRh0AFgNFvEdB17jZa6qetB/VYcOBVocjQ8j03EOaZeTbrIvk6qaz9R19VLGLYzbrvwXI7fTz6L7ECeOxd3uT24hDcKdH3c5cXfO7wimeYBRtXrArZfRhjKOIozpdcVOLf2SERrQPJCPYd+g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=DzL1LY7q; arc=none smtp.client-ip=209.85.208.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f52.google.com with SMTP id 4fb4d7f45d1cf-57cbc66a0a6so265051a12.1
        for <devicetree@vger.kernel.org>; Wed, 19 Jun 2024 12:17:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1718824665; x=1719429465; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=S6lEiYCUbYz4T/jCjzT/Chkny3UAUAGhEY6ZMmlWnJc=;
        b=DzL1LY7qjPs8m6/PcadyIjV6RD78Nm/DkzHMeCV7kxbZCr04Zyc0VzOl5HS2r8umCQ
         y1qyRV8sc4IbyNnsGAvmIBYSqTHJeQjJEvT0vMis8J4h5F8q76si9/zWso6+KmmD79Vl
         mmneABNZahSw/eFEKazksGFzB8kZX6yBrlmhg6NwsTsBBbCihLrJBtaSL1TC7BicTExg
         y2bN8K1lZp8Y9YOGQxfrABGB/yKcMIfnSLl3T1GOQxG+SbWHowZBmVBE2+PUojs6MSHq
         EJWa17nXJ6gxSxuI5F09GEypM7Zy1oHTWRpiostTklgrpvnCrSiXaOvpCVYMktgUIUVC
         8T2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718824665; x=1719429465;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=S6lEiYCUbYz4T/jCjzT/Chkny3UAUAGhEY6ZMmlWnJc=;
        b=GZ6dZckRzYpTMAdIWiX1kD3gukpOLHC71Bldldaigr1Llu2IA3uA59+9Npsn0PHUrf
         7+Ce/pi9JDqof+O3QUubEaUSou94EGeJOb9qJQgrFcOfgvrMyF7L6DjBx3/K+LnSISQ6
         ZA70qMhC8BCP9beNq77J/+E0A0PQ7he4d16QfvYiRtsL56ZYKn7Nku76HiKwryaEQhdy
         Ex3QHcKlstOKVgR4p8bHzj0tR9tTJJc2jJe6O2P5BE/BL+cZ3g27Itwknhl8FVCQBwAh
         AIo+K8kOu9Gxc8l60UTambAHKGY6bAHQFlpyCpwZyQg3D/yMPh6Ey40ikSymA6efqUbi
         M1OA==
X-Forwarded-Encrypted: i=1; AJvYcCW1GnEqCY/L1KjsYeSbCgELH81L5eGCfOaxa0cIlirKs7yKjU39qS3FDCmtJmrqOxP+qQbUJ2Cf965Z0wc1X2zA4y90OXrgHDxQJw==
X-Gm-Message-State: AOJu0YwinL3TQGoH5FgRrADTKqHXff0XK2QmW8dTSyZgvGmJj2tJfUft
	VeFiGv9qQqLr2PyW6IoFeG+zCLaMEIH3M9K9f76nB9uGaeeCzpPzF1os3hp8GBgf9O0FA6EWg15
	ZWNY=
X-Google-Smtp-Source: AGHT+IGj6k332wSqup8rGDwTMoa0gt8RHUTehGLRGJ1I1Zn1p3Ya0Wruu5YmLmNeQVUfoZf3JBxyuQ==
X-Received: by 2002:a50:9f6c:0:b0:57c:57af:6e88 with SMTP id 4fb4d7f45d1cf-57d06a1a6aemr2498410a12.9.1718824664686;
        Wed, 19 Jun 2024 12:17:44 -0700 (PDT)
Received: from ?IPV6:2a00:f41:9028:9df3:4dba:9578:7545:6874? ([2a00:f41:9028:9df3:4dba:9578:7545:6874])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-57cb743adf1sm8651050a12.93.2024.06.19.12.17.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 19 Jun 2024 12:17:44 -0700 (PDT)
Message-ID: <7f6434e1-8a7e-4e03-8932-c8ae7a04aa91@linaro.org>
Date: Wed, 19 Jun 2024 21:17:41 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/5] Use mboxes in smsm node for all dtsi where possible
To: Luca Weiss <luca@lucaweiss.eu>, ~postmarketos/upstreaming@lists.sr.ht,
 phone-devel@vger.kernel.org, Bjorn Andersson <andersson@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20240619-smsm-mbox-dts-v1-0-268ab7eef779@lucaweiss.eu>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20240619-smsm-mbox-dts-v1-0-268ab7eef779@lucaweiss.eu>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 6/19/24 18:42, Luca Weiss wrote:
> With the binding and driver patches queued for 6.11[0][1], it's time to
> update the dtsi files to use the new binding.
> 
> [0] https://lore.kernel.org/linux-arm-msm/171840533352.102487.9576671528001022676.b4-ty@kernel.org/
> [1] https://git.kernel.org/pub/scm/linux/kernel/git/qcom/linux.git/log/?h=drivers-for-6.11
> 
> @Bjorn: I think this makes sense to only apply these patches for 6.12 so
> that also in the arm64 tree the driver will exist already, so git bisect
> is not impeded by that.
> 
> Patches are just compile-tested.
> 
> Signed-off-by: Luca Weiss <luca@lucaweiss.eu>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

