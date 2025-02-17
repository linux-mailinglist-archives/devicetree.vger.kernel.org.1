Return-Path: <devicetree+bounces-147272-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id D8FB3A37CDC
	for <lists+devicetree@lfdr.de>; Mon, 17 Feb 2025 09:14:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id F180716A8B3
	for <lists+devicetree@lfdr.de>; Mon, 17 Feb 2025 08:14:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C80AF1A2381;
	Mon, 17 Feb 2025 08:13:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="nUCzRn9l"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com [209.85.208.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D3901A2380
	for <devicetree@vger.kernel.org>; Mon, 17 Feb 2025 08:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739780035; cv=none; b=bMdWhVXj1ikMTTPriOGL+kxGM04sBPM7xxzY9g7HhDIRFisrwvJfeGyJyy+pp0DvvMLKyo09uYpNTYo5Kx1oFPNh9q6lwcJHXcXgQBdnlXzvpan6GX00zCJrxOgj/CYGxYg7PMISOXaHalh3zxlu7IpRJDiJF1hwZ0LN6Hbzpro=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739780035; c=relaxed/simple;
	bh=QozSNP8neCUurbs0daW9m3IirCFvksJs5+R34IzwLRE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=JiIdw3iu+C/dLQcO7gKfHK00fLd44WS3uVKDQNt2A7jUskfSGEY2zIrQewERP0jRY9Jk3LKrvQp6CViHbaz8wjGQKD1e1lu92TCjpJ/CMCnJ0xmsF+OsdlzIYW8qSTvqD4zQoo31+fheQpMIrDU292X9YjfLPe9xHb7UD1Hf5ro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=nUCzRn9l; arc=none smtp.client-ip=209.85.208.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f54.google.com with SMTP id 4fb4d7f45d1cf-5e0505275b7so1491230a12.3
        for <devicetree@vger.kernel.org>; Mon, 17 Feb 2025 00:13:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1739780032; x=1740384832; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Ed0dltqBzdC5HZEa2Ds04Fdf98U466s3nHyR/nqOJbA=;
        b=nUCzRn9lzUud2igLCvx5M/30QQ4CeMDAmnXwsz1QK0B5NH6CnnvPS7Q3yKFT6LoLkn
         X8jXCoeleZH58CEmtGP3Upw3hvWbx2LPtJSwzXfqA59It1xnMMzj+01u3hCCACG3h/cR
         DnSNvuOSlrLcNYCy4qMNB60pEYcj94tPHYus7ZwguqIJr8yq9vtF/GoJ6YCTrMubcZ56
         I0TnDT/K0fDnx87xzYqINCNOjqcrSl17VQfFOEE24yVpTyPs+K3EEWDnIVpqfKE8M3mD
         YA/IWCgwGR1QW8kESqf7hdNefJ0cceDJAmUsvB9ni1JMufeJtIfkHzTQvVss3kw/lirj
         FCoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739780032; x=1740384832;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Ed0dltqBzdC5HZEa2Ds04Fdf98U466s3nHyR/nqOJbA=;
        b=ljVLdJ8a7XJrVyL8tra7GBydg5j90YhLUMzccyRD3Kea5ptpWDSO8CrFBut7HdhEF2
         csu9B3UFGjSegp915deL+9jvFbux48taLUD+mGNKqcr5uKT5jPnYenYSM4sFEc1NWNrL
         KcX34I1NaA3PDrt6Pn2J1YjH2J8FW+8j/xLITOykYhWEbB2Io0nM80nsmXc+XFG3HWHp
         84LwABfjZ/y8cyICJEifgKEa9nkabVK4lK9pu0VbLKVQlpZ33QW7n7yPN5lx/xWAztnH
         gPKglVjUdLF5lBvPLbHvV7Xjqqur37+7BVG1WIbpnBZypLez88i/rLc4/xgSUswJG/99
         sCqw==
X-Forwarded-Encrypted: i=1; AJvYcCX/rnw3roGzhAQloCWiKnacUzo4M88s/fO4iqUqmO8wvqQD+6NGpdHrYtpjqjb2YW3NBP2mVfpC1Bhu@vger.kernel.org
X-Gm-Message-State: AOJu0YzOM3YLVfX9lS3XV3gHFdIcjn/2XFUtMMdzkbpQ00QiRSNX/AG1
	Qz924zcr5/ugy9ePjodA0nmhuWlkbx6mJbx03+STomkfh32eJhRJ
X-Gm-Gg: ASbGncuKkjehvttv4miD4oC3pnNH/0sZk/m490NSSyvcLM2kPOylFUx/xkzwgKrcxca
	rT7u1JMvlROjw/ejcT1jpWKXxPEt/5xklLQpW5BlonHm5UtQY7+SfgEHRlzZKQlaAvZBaQqa8cf
	txsWIp99Kl3T9diUUSzz1niROdC6wdoote56xZY2Cfm+21Oz+BA7Tn8qdrE2dgkMEZVat09mSsY
	fIgBCYlGWoYUTrGzjnKWv2I1S0cF5LEMP9LBC1eEP06lUz3Tu1J5+HyfUGUdAcCgZIeAO3ZMbBI
	2tNiISFkWro2xcrrKZIsMFaW2b2uJjZ0w0bOl0vVtT4kQ048u9E0M/2qKCrZUarpsQ==
X-Google-Smtp-Source: AGHT+IH9hASZetg0pomp/3PLBU1jTDpvzjle4RrQcRZBFNibluAmBZRivSYjX4BTIAIbbRumPxxbPA==
X-Received: by 2002:a05:6402:2548:b0:5dc:8ed9:6bc3 with SMTP id 4fb4d7f45d1cf-5e036217ca2mr7647503a12.26.1739780032077;
        Mon, 17 Feb 2025 00:13:52 -0800 (PST)
Received: from [10.13.13.3] (146.10-240-81.adsl-dyn.isp.belgacom.be. [81.240.10.146])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5dece1b4e53sm6846077a12.9.2025.02.17.00.13.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 Feb 2025 00:13:51 -0800 (PST)
Message-ID: <603e7d61-71ab-4ec8-8c37-133dd9847aca@gmail.com>
Date: Mon, 17 Feb 2025 09:13:50 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 8/8] arm64: dts: allwinner: rg35xx: Add GPIO backlight
 control
To: Ryan Walklin <ryan@testtoast.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Jernej Skrabec <jernej.skrabec@gmail.com>,
 Samuel Holland <samuel@sholland.org>
Cc: Andre Przywara <andre.przywara@arm.com>,
 Chris Morgan <macroalpha82@gmail.com>,
 Hironori KIKUCHI <kikuchan98@gmail.com>, linux-sunxi@lists.linux.dev,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20250216092827.15444-1-ryan@testtoast.com>
 <20250216092827.15444-9-ryan@testtoast.com>
Content-Language: en-US
From: Philippe Simons <simons.philippe@gmail.com>
In-Reply-To: <20250216092827.15444-9-ryan@testtoast.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Tested on RG355XX-H

Tested-by: Philippe Simons <simons.philippe@gmail.com>

On 16/02/2025 10:27, Ryan Walklin wrote:
> The LCD backlight for this device can be exposed as a simple GPIO-
> controlled device. It would be more accurately modelled using PWM to
> enable brightness control, however the PWM driver design for the H616 is
> not yet upstreamed.
>
> Add a GPIO backlight node to the DTS.
>
> Signed-off-by: Ryan Walklin <ryan@testtoast.com>
> ---
>   .../boot/dts/allwinner/sun50i-h700-anbernic-rg35xx-2024.dts | 6 ++++++
>   1 file changed, 6 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h700-anbernic-rg35xx-2024.dts b/arch/arm64/boot/dts/allwinner/sun50i-h700-anbernic-rg35xx-2024.dts
> index 388487d4720e2..29d1144fc3987 100644
> --- a/arch/arm64/boot/dts/allwinner/sun50i-h700-anbernic-rg35xx-2024.dts
> +++ b/arch/arm64/boot/dts/allwinner/sun50i-h700-anbernic-rg35xx-2024.dts
> @@ -21,6 +21,12 @@ aliases {
>   		serial0 = &uart0;
>   	};
>   
> +	backlight: backlight {
> +		compatible = "gpio-backlight";
> +		gpios = <&pio 3 28 GPIO_ACTIVE_HIGH>; // PD28
> +		default-on;
> +	};
> +	
>   	battery: battery {
>   		compatible = "simple-battery";
>   		constant-charge-current-max-microamp = <1024000>;

