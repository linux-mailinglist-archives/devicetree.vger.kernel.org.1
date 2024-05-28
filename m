Return-Path: <devicetree+bounces-69853-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DF988D1BC0
	for <lists+devicetree@lfdr.de>; Tue, 28 May 2024 14:54:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 150651F22B2E
	for <lists+devicetree@lfdr.de>; Tue, 28 May 2024 12:54:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3DC3816D9DC;
	Tue, 28 May 2024 12:54:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="UJ9tn6zT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com [209.85.167.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9527C16D9B3
	for <devicetree@vger.kernel.org>; Tue, 28 May 2024 12:54:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716900880; cv=none; b=FeAxgvb6WtWrR6EDLLFOAr2lR9GVHeScu0qX6F5UZ6DMcPfv9pTtCK2hN0oFo//3Se0nqfUdfPAJ0k5T6rtWbfkKmmydSVzdndKqalnYp+PDcZoq72AenrhXXW0iUEw/IyJfBEATfDayR+rSbPJ7BHP3HQYYBO23X3+9r8eKbxU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716900880; c=relaxed/simple;
	bh=WHYs4O7Fu2CjoBdYG4P4R2/1sEZnwQQz0IAl+4b3tVU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Gn1DI30RAx+zsgyFa8N1Kw/drDp7ZEhvye6dHFr7l1GmgJIk1KZdI5hlaMamvcEyS4lk3t6IpYfK2IMo6UzX1ZGJmVR3xvfUzs/Qnns/cuIrzMhRo295HHvcCcbjNnDXrjDNfbx4o9JTZUjedt/seGX1IdeW6P1kxiLd702rLAA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=UJ9tn6zT; arc=none smtp.client-ip=209.85.167.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f43.google.com with SMTP id 2adb3069b0e04-523b017a5c6so1125380e87.1
        for <devicetree@vger.kernel.org>; Tue, 28 May 2024 05:54:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716900877; x=1717505677; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=aSTrlh2SCKUUASbHMjU/dT8MYXK+NpaxB9pLENdcjzo=;
        b=UJ9tn6zTZtjtDDJVKJOZNoN5vJLiF6HgDNi2dXGKtoh3QBCjF+mASVELB1MTDaM9Fy
         kGgoeNJL95gXpwYTUTJvwCwTY1bebAYN+7IZHiVa5wltBwQJh6wpl2uoSVCppVpZizOk
         cmW/1GS7YJD1eQJ8C16uehKC/akUI3L+R0tMniPIIG/UhDpmP44Um1GJZosCU7CqmD/v
         +/YxlEZJRnIStyjyqACRCxuX3BjQEIMHZIfjO7NA+4YKKBaO2ssIth3nbau3Zd1pL7GW
         bFZxBoUIRuFXkYvJOSh0XWCuwQAOG16/HSVVK3EEkL1L8c5j/NcLNcsnaR8SNsLDKyZ6
         QcWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716900877; x=1717505677;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=aSTrlh2SCKUUASbHMjU/dT8MYXK+NpaxB9pLENdcjzo=;
        b=KNKiyF8+ue+HLJebJeV4APFlUTkkZbxJWPHFFMTJ+YTNJLdogSAb78rKl7zQOtCbCY
         vtMWQzeRHKEYCY5/CuRdSNZ4tJHCzO4EgiNh8QHN3DvIoiJkMxmwnh1dVwzplmzikjUR
         xFhDOWttlRCReuKBaMa25xzRjsf9WvP4FSZ6UMg1y8NDjhvkqzkOWDStpCLY35k7H7eD
         KPaldbNnBoY9tADE2MSYrbh9hmxeJ/T6gGlDHTGvyFQXd3zdeYn9gmSo2yQaoorFQjHv
         EloOV6FDMKTC2HFIfHbdt08MAOaSUW92H+lEM0CQBE7MKqf7VbDDxM3aAQ6TsR4gPuAo
         mMZw==
X-Forwarded-Encrypted: i=1; AJvYcCVt5C1uTRdPOGHOSC7DCVY7twA9QRB+1mukyrUSek9ix9m6N7+4zYuepliVPV3btykw4eLQFFxtFBtd44Ao+6qZVedNQpJ4xu5cvw==
X-Gm-Message-State: AOJu0YwXb90hjFv2yE0/ScaGsbAPE40E2fZ5zUyZvmCMrWSxHvyPC1mU
	4QckGH+PD4BHOvTJFk5ibmeio3TqDc5ywfgO7CKPDB1BjIUFoZTN6cjwT+C8YSM=
X-Google-Smtp-Source: AGHT+IGKzu2XIOmakywBVvQVCXPjCqQFFHQbzz7rGWhc+7VQYk4Q9VgfwbtHKoxlTZxsKpchLq1WnA==
X-Received: by 2002:a19:ad07:0:b0:524:3ce:d4ca with SMTP id 2adb3069b0e04-52966005aadmr9313303e87.37.1716900876850;
        Tue, 28 May 2024 05:54:36 -0700 (PDT)
Received: from ?IPV6:2a00:f41:c97:23a9:35bc:df2e:d894:2c76? ([2a00:f41:c97:23a9:35bc:df2e:d894:2c76])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5296e8877a3sm952106e87.36.2024.05.28.05.54.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 May 2024 05:54:35 -0700 (PDT)
Message-ID: <68593878-fd39-4961-b7c2-cc33553d6fca@linaro.org>
Date: Tue, 28 May 2024 14:54:32 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 09/10] arm64: dts: qcom: sc8180x-primus: Enable the two MP
 USB ports
To: Bjorn Andersson <andersson@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Wesley Cheng <quic_wcheng@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-usb@vger.kernel.org,
 Bjorn Andersson <quic_bjorande@quicinc.com>
References: <20240525-sc8180x-usb-mp-v1-0-60a904392438@quicinc.com>
 <20240525-sc8180x-usb-mp-v1-9-60a904392438@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20240525-sc8180x-usb-mp-v1-9-60a904392438@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 5/25/24 20:04, Bjorn Andersson wrote:
> From: Bjorn Andersson <quic_bjorande@quicinc.com>
> 
> The SC8180X Primus comes with an AUX card with two USB ports, fed by the
> two multiport ports.
> 
> Enable the involved nodes and define two always-on regulators to enable
> VBUS for these ports.
> 
> Signed-off-by: Bjorn Andersson <quic_bjorande@quicinc.com>
> ---

[...]

> +		gpio = <&pmc8180_1_gpios 9 0>;

GPIO_ACTIVE_HIGH?

> +		enable-active-high;
> +
> +		regulator-always-on;
> +	};
> +
> +	vreg_usb3_host_en: regulator-usb3-host-en {
> +		compatible = "regulator-fixed";
> +		regulator-name = "usb3_host_en";
> +
> +		regulator-min-microvolt = <5000000>;
> +		regulator-max-microvolt = <5000000>;
> +
> +		gpio = <&pmc8180_2_gpios 9 0>;

GPIO_ACTIVE_HIGH

with that:

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

