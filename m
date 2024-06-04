Return-Path: <devicetree+bounces-72191-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 619408FB191
	for <lists+devicetree@lfdr.de>; Tue,  4 Jun 2024 13:58:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1A19A281B8D
	for <lists+devicetree@lfdr.de>; Tue,  4 Jun 2024 11:58:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 90674145B24;
	Tue,  4 Jun 2024 11:58:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ltt3rWqP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com [209.85.208.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCEB4145B0A
	for <devicetree@vger.kernel.org>; Tue,  4 Jun 2024 11:57:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717502281; cv=none; b=D4rr187E5/KqORRpM+9p6FsNO9TfSxi9kw20cs96JK2C/meKBgkD9tB6gAD7vtDCunWyg0YuQb2GHBafptWO+KdzRoIZxMxbQfTsYM23mbl4jMOa3MPKbXCwHi6K+Y8H2UDlVA5hz/hBAfFg65pv3HHSZ2nzA0726gnWe5TNY8g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717502281; c=relaxed/simple;
	bh=LuwgEB5a3kXQNdLEh/pE8qVHaYw/nNGMKFNOSKLHroc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=DmnIglut76p4ysQiU1Zw7puI7chGnMz0uwn2H4PwZlJWvjNKLl9K0K9+/x1vi/PKDhYK6GuLGaWmD5j7KA1CZ2ofYtLpd5IhPwSJ+NuQ68+9ZSOEiwoCC/vDbkE47r2KK1Hyu+dqkgz73efQriboMBMk8X6Rl4VOYp5Ub0Hsul8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ltt3rWqP; arc=none smtp.client-ip=209.85.208.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f50.google.com with SMTP id 4fb4d7f45d1cf-57a2f032007so5539933a12.0
        for <devicetree@vger.kernel.org>; Tue, 04 Jun 2024 04:57:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1717502278; x=1718107078; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=OQkcalWFB/tO1n36hfQeFTDEbW22ReDZ8opgR36JZAk=;
        b=ltt3rWqPxJsl7EQ9qPMphtffZpvZDCX6py/oCC+FnOjDXZYffrbxvfXfLA1iZ/Mh/V
         rCIk+gYDVY2s9GoGwnIRJXGRaKfFtA2VL1DTNLAkqXKR69ONxpGTqN1s6rCKQdaLZCXN
         ga6NDHXKTlzN1S99gopp7jV5/+cyYdv9wSCwqOY2U1D/W9KiOoUm71xRsA8mRXksh3zC
         TABDGtfSviq0XauItLXtEgO2/81P0QRyBSa1BwrXM2wE30rFBsL4ygxRDnLqIJpXmbhp
         QzZPstRcx25xeIQ1CtcFJlw9QfNQYNebbyb/jdeto+fmP2oaDVVxH7EIdlyWcr8hYmfH
         m1GA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717502278; x=1718107078;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=OQkcalWFB/tO1n36hfQeFTDEbW22ReDZ8opgR36JZAk=;
        b=TeBwtaGBtf4CESakgDIZ85GxF9GqPeEH/SCvEKL7FYeqFb6cPjQK6FUsTQnjozdGIs
         Wrr+nO6DgredJ5cua6tVHSPn5vnmBWGRhkRzOyWFFN4IVAX3eTZJ+0mFjJJaTpMtGtcE
         KW0/qfLD3KIvyePnH3VkHuj1khF/rGjK3wnyCXQOmM5JJJgTom8IAtW48vh0UKyzf/ss
         IBMfCCQFdLYoYKaY6dJr5Ua6na0JULtzB01zi8SYhYEii4Q4WM4bP3By3Gj1/iPMQg7/
         wjYOZLCIJfsY+JEk6ygQxAwwMExO07CtbSGH3a76LiQ+X1oeGvXmVQ8jBpZBaTsg/M8m
         pQRQ==
X-Forwarded-Encrypted: i=1; AJvYcCUfmisWm4lGcIVitceZzTminqCAyCMlGYrqYlEh0mzEEcmPDY5TAOn6z1CsEjStYNVW7v9PUZkyxFUcmZu8MHerxZ/m/H9Cqa6KCQ==
X-Gm-Message-State: AOJu0YxhoHaNQSHSK8HmNG4MsSkk73OTkov29fAKxJI8gdj8nYJwMcJc
	7BhUwwZQ6QU4EUvXiGF0jIKL3YMC6PsuNQj7OK0M1JC7w7rRRd5WtMGQHl9VJtQ=
X-Google-Smtp-Source: AGHT+IFAVJky5swX6mJN/qK/exrK+BQ+9UDGMdrBsNovaqAZWpEAU+TBu0YcDuQGHG37JOyW5PVX6g==
X-Received: by 2002:a50:cd59:0:b0:578:5e09:98f5 with SMTP id 4fb4d7f45d1cf-57a364abc46mr8067367a12.41.1717502278225;
        Tue, 04 Jun 2024 04:57:58 -0700 (PDT)
Received: from ?IPV6:2a00:f41:909a:a11e:a035:2af2:8d85:1f72? ([2a00:f41:909a:a11e:a035:2af2:8d85:1f72])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-57a7f1a4d7esm1384634a12.68.2024.06.04.04.57.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 04 Jun 2024 04:57:57 -0700 (PDT)
Message-ID: <4064c207-bf98-4bb9-b3bb-e291f2e95f8d@linaro.org>
Date: Tue, 4 Jun 2024 13:57:50 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: sa8775p: Correct IRQ number of EL2
 non-secure physical timer
To: Cong Zhang <quic_congzhan@quicinc.com>,
 Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, kernel@quicinc.com
References: <20240604085929.49227-1-quic_congzhan@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20240604085929.49227-1-quic_congzhan@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 6/4/24 10:59, Cong Zhang wrote:
> The INTID of EL2 non-secure physical timer is 26. In linux, the IRQ
> number has a fixed 16 offset for PPIs. Therefore, the linux IRQ number
> of EL2 non-secure physical timer should be 10 (26 - 16).
> 
> Fixes: 603f96d4c9d0 ("arm64: dts: qcom: add initial support for qcom sa8775p-ride")
> Signed-off-by: Cong Zhang <quic_congzhan@quicinc.com>
> ---

Seems to match other qcom platforms of the timeframe too..

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

