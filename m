Return-Path: <devicetree+bounces-178969-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BD7AABE3B9
	for <lists+devicetree@lfdr.de>; Tue, 20 May 2025 21:30:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 277954A1F44
	for <lists+devicetree@lfdr.de>; Tue, 20 May 2025 19:30:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 619E92459F1;
	Tue, 20 May 2025 19:30:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="nMsYIeeb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E00744C7C
	for <devicetree@vger.kernel.org>; Tue, 20 May 2025 19:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747769436; cv=none; b=Aur964mgD4IsiJBXIJTo6rCcsnq+EZaDHTTr5Qhlfy0APF3p6WNNSYvq3r2Yp5JznQHx0LXFjNxITq+tRYEy40wj8eQ1e6R7KPjX/WR1Nb9bBNROONQXWQbKvN7PmMjNlmR6YLAajculD73nktbK5R6AqB2DhWK05+UNB/kDsSs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747769436; c=relaxed/simple;
	bh=x6AxyMhQqdGqFN1K69xSDMF+wdj9jfMXh15jVfyPOFM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=hSg06ktL5YuUXv5+XCwrIsWfsWGd+kWHiUx+MuJTKoldDftwcqXnIufusYpfbkDoRNvyVOPElasrdSKSvmdeJ8G9gNg99yR/fpH6eHYs7XkHqAEmLur+p6KWBk05aA67LGDIiRoYEXzlCgbBbYeK8wA4UbKoYGvgRZkre8gDU40=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=nMsYIeeb; arc=none smtp.client-ip=209.85.167.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-551fadfb256so270844e87.2
        for <devicetree@vger.kernel.org>; Tue, 20 May 2025 12:30:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1747769432; x=1748374232; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=DJ3p0VWyDXbjKjlLoZSFw2DHo0Iai22UkFrPhJcqj/s=;
        b=nMsYIeeblcIh1Ony7Af43AZXWN6eYaHh5VwH3oLBkQE+/DK/4l8STejhdEvja6AeL9
         HWP9vPQG/6JWMuK5+1tL6JngchNJcDZMtXCN6/OnRKK+NHbUTr3E9b3csIA038npQX6k
         g2NK3c2YuZAmB4zCSC5hwJT0SB4Utl1EV32/im33TRGIBjXGzPv4aaMV+bSiPU0Y1HPr
         AjVW9vT57Z7H6KgELx2bp0HqFJtQ0/fM1CmIceOpnWmZlcvszOCgxXjMynQmiasz/II3
         hi/cAyXLi5DsSrnoLvV9c6hbhqp8Nmq85cnt6au7RkVz0rtQU/UJdHzEj+9d0lZJdXH2
         ksVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747769432; x=1748374232;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=DJ3p0VWyDXbjKjlLoZSFw2DHo0Iai22UkFrPhJcqj/s=;
        b=RQ1tvt1ZFFPId6d9NoNuUCNz/1qbqY5nDGxotX2bk6hwEnheqPj8pt8CoRaW8TWdZS
         NwBS2L/8K7Uelizy2I6lAvrol4pIebZ3oEKLnoz2TxqXUtLFEjw40ie982I9cHH+IRvM
         enT/osx9AaLJLyIEMNfyEHzsF8iSQZUJ3DZK2tUvbMl0kJ+Pv4u0QSMoAfrI+6SpPgI4
         5+Jj9CTI8cMSU1Qw+ZcUhVRwaJmVax0Zdw/H7xOaFtu8utn7vdt8oqSK80wITphz00vC
         UuefoghNEIB+VaiQHrT7CqmHXegmQzzGMwg+sP9vkBMEkyhCdu7+s0y3BUk+kQvtQ283
         tQtg==
X-Forwarded-Encrypted: i=1; AJvYcCU5rIVD1nYPB+LoSNfM3LbrvPjXlj7TYa1TTwgN2wpT6hbPh09FRVXkRVVFheAJdN9TC98163wyGaF6@vger.kernel.org
X-Gm-Message-State: AOJu0YxL6EHJ+b5k3HBY3R/mzw5imAtYr5mRy9/m7mlYumJd/pgAJ5/X
	EnYVu5Yw/WdTVKpu7c5t7XrHY+Y+5QB+l+cB0nrwbEwCSCQGQ4b2U9B4Mbfd56ZX9TY=
X-Gm-Gg: ASbGncvoZd/UGqHMOK2h8uY/wKLYDmrgtch4e1fH1Fg22VsdmY9V8EMXxcMXV4juCA5
	xgkZ7dOP88tUPYtSo2A6sg0gtTRpgB9JZVMf/RPEX3zLMQxPJnbb+HwYz+o4ShN2ZeMbtmSjx3Q
	fa9AD5q8wz9qSTA9fLihnbRGMPnYzNeISu/M7idU+vjO+S5Hm79G9dPZ3ljymtojUW9afBfmaLC
	kkG72Uf6dbbaIahcXQtPbmCYXubH/4q4HipVp33x7UsiFurBOfcyJWgQNEoIHq77lLOFaF3MZmy
	Cspm1YDYS5h6/A64j4Xh6wlDFa/3ZXgah8qFIV4xdbgRqP06Xxsz/Y8DtPw9DyTkZWk52SLc1d0
	afrNguJkJHwkTcCyMu4HpFfXq0vrnoA==
X-Google-Smtp-Source: AGHT+IF36LoL0W1B2tdbhvaX+VoqQRr0ZxEehxaTQy+98wAF5xfwJrfsSoWGXqZoOmJCEe1+CmJLiQ==
X-Received: by 2002:a05:6512:b9b:b0:54f:c2ab:c6be with SMTP id 2adb3069b0e04-550e71cfd72mr1915127e87.7.1747769432371;
        Tue, 20 May 2025 12:30:32 -0700 (PDT)
Received: from [192.168.1.4] (88-112-131-206.elisa-laajakaista.fi. [88.112.131.206])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-550e702dba0sm2442502e87.199.2025.05.20.12.30.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 May 2025 12:30:32 -0700 (PDT)
Message-ID: <ba201739-36ac-4586-99a6-bc96dbf4b0e9@linaro.org>
Date: Tue, 20 May 2025 22:30:30 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/4] arm64: dts: qcom: msm8939: Add camss and cci
Content-Language: ru-RU
To: vincent.knecht@mailoo.org, Robert Foss <rfoss@kernel.org>,
 Todor Tomov <todor.too@gmail.com>,
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-kernel@vger.kernel.org, linux-media@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 =?UTF-8?Q?Andr=C3=A9_Apitzsch?= <git@apitzsch.eu>,
 phone-devel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht
References: <20250520-camss-8x39-vbif-v1-0-a12cd6006af9@mailoo.org>
 <20250520-camss-8x39-vbif-v1-4-a12cd6006af9@mailoo.org>
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <20250520-camss-8x39-vbif-v1-4-a12cd6006af9@mailoo.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hello Vincent.

On 5/20/25 21:39, Vincent Knecht via B4 Relay wrote:
> From: Vincent Knecht <vincent.knecht@mailoo.org>
> 
> Add the camera subsystem and CCI used to interface with cameras on the
> Snapdragon 615.
> 
> Signed-off-by: Vincent Knecht <vincent.knecht@mailoo.org>
> ---
>   arch/arm64/boot/dts/qcom/msm8939-pm8916.dtsi |   4 +
>   arch/arm64/boot/dts/qcom/msm8939.dtsi        | 152 +++++++++++++++++++++++++++

Please split SoC specific changes from the board specific ones into
separate patches.

>   2 files changed, 156 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/msm8939-pm8916.dtsi b/arch/arm64/boot/dts/qcom/msm8939-pm8916.dtsi
> index adb96cd8d643e5fde1ac95c0fc3c9c3c3efb07e8..659d127b1bc3570d137ca986e4eacf600c183e5e 100644
> --- a/arch/arm64/boot/dts/qcom/msm8939-pm8916.dtsi
> +++ b/arch/arm64/boot/dts/qcom/msm8939-pm8916.dtsi
> @@ -11,6 +11,10 @@
>   #include "msm8939.dtsi"
>   #include "pm8916.dtsi"
>   
> +&camss {
> +	vdda-supply = <&pm8916_l2>;
> +};
> +

What is the benefit of enabling CAMSS on a board without any sensors
connected to the SoC? Likely the board specific change has to be removed.

--
Best wishes,
Vladimir

