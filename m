Return-Path: <devicetree+bounces-40215-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EFF284FAAF
	for <lists+devicetree@lfdr.de>; Fri,  9 Feb 2024 18:09:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3E6691F2A2F3
	for <lists+devicetree@lfdr.de>; Fri,  9 Feb 2024 17:09:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ADAC47BAF3;
	Fri,  9 Feb 2024 17:09:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=smile-fr.20230601.gappssmtp.com header.i=@smile-fr.20230601.gappssmtp.com header.b="ayKANL9g"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A1CD96DD18
	for <devicetree@vger.kernel.org>; Fri,  9 Feb 2024 17:09:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707498587; cv=none; b=RXM8GUK289VX4qRoYVkh7cdqwwhZmCn2hLrDvsyVotCvRxGi0eFTf3vo6H7AE6UY+msXD9lqu1gFSkHf1otjdPqgwgA0dpyqdjNq0LDJF/cO01hWqj/X6uFrj/uvazFhup9u8JCN/LzhnPD4EULavMcf79nXEdHf/OlIrAR18wU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707498587; c=relaxed/simple;
	bh=/mZM7kOeydyH3DyBrwRIF79NtTes3EiafP5SxsJdCb4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=EtGp7Ol5wZpX/CRECGHDXNdKFNZZaCGrfjE7g7msnkL0BKLWYHf6Po0s9pvz2Sxm5rU0EuC2B40sqwhgOeJf02UUBwMRjvYid1vnp5HBZdg5DZ57n3veUezZAMhWQnN09LWDNcaSDb0jrQn74/0oz97HzZvl9EGanXdz4zIKYKg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=smile.fr; spf=pass smtp.mailfrom=smile.fr; dkim=pass (2048-bit key) header.d=smile-fr.20230601.gappssmtp.com header.i=@smile-fr.20230601.gappssmtp.com header.b=ayKANL9g; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=smile.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=smile.fr
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-4101fc00832so9974695e9.3
        for <devicetree@vger.kernel.org>; Fri, 09 Feb 2024 09:09:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile-fr.20230601.gappssmtp.com; s=20230601; t=1707498583; x=1708103383; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=qZ+D7kHi8Bz4iYvXGO/+VOikMobPY3Za8u7bXUaQ9Ms=;
        b=ayKANL9gW5XECbQ4AJvBISlIVqNSP4aQhpLAeK09+MKdIk0Yn3v9rRWbq36mE/5T/O
         c7iB3Dz8zshZbNNi2XuyujGSRVfkFCTff3WcQNEHPxbSuZdtRhbqxFkOVjIswJ9q7dh4
         f0lkBXME9LE/eQ7WsiW9OzELylZFFxubPXj5T9vlxUdi3jah0Z+n0kN9eaOnSYR/fUuv
         sb9x+hxlLkoO77IzPqm/CfSlJyYX3aakxMEiiV2nf2Fk4g/y5Go3zAszYw/dGQRTrXiS
         0XB28C/fe6vGVR/Doow4sPstuhiQP5gViahGKgWmxEemEB7Mb5DFafzWP5zYkXKvIFfX
         0fQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707498583; x=1708103383;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=qZ+D7kHi8Bz4iYvXGO/+VOikMobPY3Za8u7bXUaQ9Ms=;
        b=aL2TBqAmbv2ds7TRPUC70uTq4DsHUJlTIQA1CY5JGaW7RyQbHXjB6Uda7aY65jtVIr
         I7tavAZXgNHTk2vhPBGykwppcTm0AZ2bM1jHQ3RajzxNbW0J0DjdHCtEpVTm8RjYs3PW
         WoEVWPnC7W1Z1tvqu7i4FBZRyexJGIZ3XFkFFDMkbp0zjW4dVc3D8eM5XQyh55EgeiX5
         PTFIcAmEWLq2P385CW2vx5SaPIwZ2a3FoHoF907BC64BFp7OxljfeprT4xurYAxF0pg7
         rNrCCuVEEGqc5uON/FoOYykTao01VsZprmZYP61kPu7S+/nbjouMjkzLj7rOjetQ0YoO
         4slA==
X-Forwarded-Encrypted: i=1; AJvYcCXVWB0rpo8amhHBe95ruSIVWBz65u5V2OBEPSx0pPXtJib+IzcKgX7cYxOdUo+WuO7YuI1zhlphIv0sF8GzmyyfIxEXsSl9lLH19w==
X-Gm-Message-State: AOJu0Yzls/bW73cTpoNrjUY6vTbpl6uJazchdIYf2nYJzPGMzTMNWy3a
	u/T0sPoQ4mLsjAl/J9tAkn8z1whdhI3rfGURh7DgxMHpl3IZgbi+Jfx0f1upPgs=
X-Google-Smtp-Source: AGHT+IEp0QVlvo7ZEvKRghApx/6PJy6AQV18rEKqJsvqLKSoyR/4kZ9TDNtXNk+ONjmtpUFG/KeE4g==
X-Received: by 2002:a5d:54c8:0:b0:33b:38ce:b237 with SMTP id x8-20020a5d54c8000000b0033b38ceb237mr1441095wrv.37.1707498582867;
        Fri, 09 Feb 2024 09:09:42 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCUGno5o1g16eGmjm7LZ1OVLPVXGKJ4IJFKjKpmfIhvEpQvKW55DBk6rvM5MUSvBgLAKPhqhDZl4dzLWketTyOCk7o3sytyg9ohCNuPZzwJ5akkus3eYqs9jHzIFN3IIuROXnD7XGglL69iWGl7fInI/xy7kVzH9Jnv6p3h8K8XaTaEC/IJgZxiqem9v4xJiw920uaQJbPS3shX0mok6UiQ1PsS8w/E0B5B3qHWKlYRydUXuE0knZrBs8gVZWsfR79FWth/hQTiMh585E1IZ4mNzNlFkI4iI/DRRrPlsyz5SaiJgC8ark8pXUP0+
Received: from ?IPV6:2a01:cb05:945b:7e00:9bdc:6887:23a2:4f31? (2a01cb05945b7e009bdc688723a24f31.ipv6.abo.wanadoo.fr. [2a01:cb05:945b:7e00:9bdc:6887:23a2:4f31])
        by smtp.gmail.com with ESMTPSA id a10-20020a5d53ca000000b0033b58c43ca8sm2234199wrw.104.2024.02.09.09.09.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Feb 2024 09:09:42 -0800 (PST)
Message-ID: <045d1d74-d369-40d7-ad34-2094afd2c47a@smile.fr>
Date: Fri, 9 Feb 2024 18:09:41 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] arm64: dts: ti: k3-j721e-sk: fix PMIC interrupt
 number
To: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, conor+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org, kristo@kernel.org,
 vigneshr@ti.com, nm@ti.com
Cc: Neha Malcom Francis <n-francis@ti.com>
References: <20240208212422.213693-1-romain.naour@smile.fr>
 <20240208212422.213693-2-romain.naour@smile.fr>
Content-Language: fr
From: Romain Naour <romain.naour@smile.fr>
In-Reply-To: <20240208212422.213693-2-romain.naour@smile.fr>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Hello,

Le 08/02/2024 à 22:24, Romain Naour a écrit :
> The tps659413 node set WKUP_GPIO0_7 (G28) pin as input to be used as
> PMIC interrupt but uses 9 (WKUP_GPIO0_9) as "interrupts" property.
> 
> Replace 9 by 7 after checking in the board schematic [1].
> 
> [1] https://www.ti.com/tool/SK-TDA4VM
> 
> Fixes: b808cef0be46 ("arm64: dts: ti: k3-j721e-sk: Add TPS6594 family PMICs")
> Cc: Neha Malcom Francis <n-francis@ti.com>
> Signed-off-by: Romain Naour <romain.naour@smile.fr>
> ---
>  arch/arm64/boot/dts/ti/k3-j721e-sk.dts | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/ti/k3-j721e-sk.dts b/arch/arm64/boot/dts/ti/k3-j721e-sk.dts
> index 188dfe291a32..6a8866055f77 100644
> --- a/arch/arm64/boot/dts/ti/k3-j721e-sk.dts
> +++ b/arch/arm64/boot/dts/ti/k3-j721e-sk.dts
> @@ -574,7 +574,7 @@ tps659413: pmic@48 {
>  		pinctrl-names = "default";
>  		pinctrl-0 = <&pmic_irq_pins_default>;
>  		interrupt-parent = <&wkup_gpio0>;
> -		interrupts = <9 IRQ_TYPE_EDGE_FALLING>;
> +		interrupts = <7 IRQ_TYPE_EDGE_FALLING>;

We need to do this change for both tps659413 and tps659411 nodes for the
k3-j721e-sk board.

There is only one PMIC on k3-am69-sk.

I'll send a v2.

Best regards,
Romain


>  		gpio-controller;
>  		#gpio-cells = <2>;
>  		ti,primary-pmic;


