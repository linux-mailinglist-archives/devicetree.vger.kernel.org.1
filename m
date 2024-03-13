Return-Path: <devicetree+bounces-50262-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BF2687A803
	for <lists+devicetree@lfdr.de>; Wed, 13 Mar 2024 14:04:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 16DA128509A
	for <lists+devicetree@lfdr.de>; Wed, 13 Mar 2024 13:04:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9486B3F9C7;
	Wed, 13 Mar 2024 13:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="fz23TvUh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B7B91CF9C
	for <devicetree@vger.kernel.org>; Wed, 13 Mar 2024 13:04:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710335093; cv=none; b=U/VNnWdYEVBI0ip6Ot6TEsbnI2wCB0nL15eOOk+wv+DMXQKTq4zXWXgACyjqL8YWK7n2WibA3MNTGBhWlzNfx3xI5+Fx2m7LlNHu3OM4KzM9wCfLHn1NE1C8LGVT0GmtN8lKyjLxw5P/fnVhwhMCkwvNkc8n+9e3S42QhKfawrw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710335093; c=relaxed/simple;
	bh=cPb6aWHRDkLi3pF34FYMNCWWbW/mtHb5wfMHj72JXjI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=XzYwjyVQ9bmuUq2P9LmLJkLBpuDxkVc8MDJ2NZboxq9CiD//Nn0imH0i5b3suwV+voGLHRKwgUKYlTJLHwiJ8Wuau5M1ZVP6m5L2tJAhOItnp7GbF+LFQwZRWFdHWuwYbV3YFjArNo+iV6uZt6jxWwrstBbwGO67MNhdiboto20=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=fz23TvUh; arc=none smtp.client-ip=209.85.167.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f54.google.com with SMTP id 2adb3069b0e04-5131a9b3d5bso6508452e87.0
        for <devicetree@vger.kernel.org>; Wed, 13 Mar 2024 06:04:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1710335090; x=1710939890; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=9FU5agIWz15a0TJSBH1eaNDyAuqkkAX4jU+14eaehE4=;
        b=fz23TvUhZ9/TSufQMJDsdsuHA9OnoiyHnNlrjKsofaEcwstkn7oMe/v+y1VeVd46gn
         irxeekTJRzoRJB05UjSpCV4E97YsKiAo64mRgHdBjwvrrtKRFIEfi/UvGZp/v4eCiR9p
         /Yb1afGkBzuqp3LUmBrmyqB92E2wsfvehvSVueqHurmLv4BZC+X2Ask6okPiO8bhK1mL
         8neLye0+1LtKUXMc7/A+pncV9Hi5jCbr9jQxlMUj9GBu7xT+E6jH7zhnRHDBO17FRUXZ
         ptMi+dIcnf4Cy3D9KZDdpZHajCWWNLiL88FelmXZAk/+YFbjj3HZJVxuSzqfn4wfbFpI
         olUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710335090; x=1710939890;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9FU5agIWz15a0TJSBH1eaNDyAuqkkAX4jU+14eaehE4=;
        b=IYW/4I4P2hujLgP0kgGQJUWslf6jOvKjPucXOCaQgo8vlneirJh1sQPtPSqaXN2u7n
         pc0x9qASpjTHhkksv91zrdcPtmLP9D/A27LzBFtR/up8ue3BKqinmJOWtOFDJ7SMoQXN
         xBInf8hxVF650ztgx6hlFTxW1rHiDVc4VXx1qBEtsPP7x+eCcIdUI6uvyk0vcreXGkmj
         IMWh2/FaxF3QgxikgcctZIuYouauJhDs12UfxAmOyLRLRQ8/T8jXo/ism7ko20joPVMg
         MSbTQQGzNNXgiL2d8Z6lgy190OyTwXZM5uV37AQxJpVITr8sZdTczZdVu4IWpfrLoCrq
         aXkg==
X-Forwarded-Encrypted: i=1; AJvYcCX866iSyvI4I6SGAwtKOypuZa9EhFFbURjnpseJWvsNPJ0Pyi0wYO6lz4Mqs+992P/k+VdXgWWE6KAhNkpsLIaeRCv25vRPxPeulw==
X-Gm-Message-State: AOJu0YwuRV3F+CdHG7564Tx6NsnirhqNJ8P4lygnQ5oMaOYDVH4puaAm
	sB9YdUpf0Kz26jhYZD4EEtniYFeKoFD+K1IVipkbzohqyZasutYZAt0HgsWJ/cw=
X-Google-Smtp-Source: AGHT+IH37biRIx/8f46c1IJ8Q/uHnOIjI+D5S5pSlQ/LWCm0zMtHMjyeRe0IWzG5vO056lEWEfk0jQ==
X-Received: by 2002:a05:6512:a92:b0:513:444c:8a7e with SMTP id m18-20020a0565120a9200b00513444c8a7emr2679593lfu.56.1710335089816;
        Wed, 13 Mar 2024 06:04:49 -0700 (PDT)
Received: from [172.30.204.6] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id k9-20020ac24f09000000b00513af268d04sm831415lfr.154.2024.03.13.06.04.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 13 Mar 2024 06:04:49 -0700 (PDT)
Message-ID: <c0e10cbf-c6f3-4b0c-8616-983da2a40236@linaro.org>
Date: Wed, 13 Mar 2024 14:04:45 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/3] arm64: dts: qcom: apq8016: Add Schneider HMIBSC
 board DTS
Content-Language: en-US
To: Sumit Garg <sumit.garg@linaro.org>, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org
Cc: andersson@kernel.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, stephan@gerhold.net,
 caleb.connolly@linaro.org, neil.armstrong@linaro.org,
 laetitia.mariottini@se.com, pascal.eberhard@se.com, abdou.saker@se.com,
 jimmy.lalande@se.com, benjamin.missey@non.se.com,
 daniel.thompson@linaro.org, linux-kernel@vger.kernel.org,
 Jagdish Gediya <jagdish.gediya@linaro.org>
References: <20240313123017.362570-1-sumit.garg@linaro.org>
 <20240313123017.362570-4-sumit.garg@linaro.org>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20240313123017.362570-4-sumit.garg@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 3/13/24 13:30, Sumit Garg wrote:
> Add Schneider Electric HMIBSC board DTS. The HMIBSC board is an IIoT Edge
> Box Core board based on the Qualcomm APQ8016E SoC.
> 
> Support for Schneider Electric HMIBSC. Features:
> - Qualcomm Snapdragon 410C SoC - APQ8016 (4xCortex A53, Adreno 306)
> - 1GiB RAM
> - 8GiB eMMC, SD slot
> - WiFi and Bluetooth
> - 2x Host, 1x Device USB port
> - HDMI
> - Discrete TPM2 chip over SPI
> - USB ethernet adaptors (soldered)
> 
> Co-developed-by: Jagdish Gediya <jagdish.gediya@linaro.org>
> Signed-off-by: Jagdish Gediya <jagdish.gediya@linaro.org>
> Signed-off-by: Sumit Garg <sumit.garg@linaro.org>
> ---

[...]

> +	memory@80000000 {
> +		reg = <0 0x80000000 0 0x40000000>;
> +	};

I'm not sure the entirety of DRAM is accessible..

This override should be unnecessary, as bootloaders generally update
the size field anyway.

> +
> +	reserved-memory {
> +		ramoops@bff00000 {
> +			compatible = "ramoops";
> +			reg = <0x0 0xbff00000 0x0 0x100000>;
> +
> +			record-size = <0x20000>;
> +			console-size = <0x20000>;
> +			ftrace-size = <0x20000>;

No ecc?

> +		};
> +	};
> +
> +	usb2513 {

Please use a generic node name, like usb-hub and keep the nodes
sorted.

> +		compatible = "smsc,usb3503";
> +		reset-gpios = <&pm8916_gpios 1 GPIO_ACTIVE_LOW>;
> +		initial-mode = <1>;
> +	};
> +
> +	usb_id: usb-id {
> +		compatible = "linux,extcon-usb-gpio";
> +		id-gpios = <&tlmm 110 GPIO_ACTIVE_HIGH>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&usb_id_default>;

property-n
property-names

[...]

> +		led@5 {
> +			reg = <5>;
> +			label = "apq8016-hmibsc:green:wlan";

These names look overly complicated.. s/apq8016-hmibsc://g?


> +
> +&blsp_i2c3 {
> +	status = "okay";
> +
> +	eeprom@50 {
> +		compatible = "atmel,24c32";
> +		reg = <0x50>;
> +	};
> +};
> +
> +&blsp_i2c4 {
> +	status = "okay";
> +
> +	adv_bridge: bridge@39 {
> +		status = "okay";

???

> +
> +		compatible = "adi,adv7533";
> +		reg = <0x39>;
> +
> +		interrupt-parent = <&tlmm>;
> +		interrupts = <31 IRQ_TYPE_EDGE_FALLING>;

interrupts-extended

Konrad

